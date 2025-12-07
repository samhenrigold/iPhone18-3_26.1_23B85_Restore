BOOL re::ecs2::RemoteEffectsStateStore::removeStyle(re::ecs2::RemoteEffectsStateStore *this, unint64_t a2)
{
  v5 = a2;
  hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(this, a2);
  if (hasCachedStyles)
  {
    re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this, &v5);
  }

  return hasCachedStyles;
}

BOOL re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

BOOL re::ecs2::RemoteEffectsStateStore::removeState(re::ecs2::RemoteEffectsStateStore *a1, unint64_t a2, unsigned int a3)
{
  v8 = a2;
  v7 = a3;
  v4 = re::ecs2::RemoteEffectsStateStore::stateExists(a1, a2, a3);
  if (v4)
  {
    v5 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v8);
    re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::remove(v5, &v7);
    if (!*(re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v8) + 28))
    {
      re::ecs2::RemoteEffectsStateStore::removeStyle(a1, v8);
    }
  }

  return v4;
}

BOOL re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::remove(uint64_t a1, unsigned __int8 *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::findEntry<re::ecs2::RemoteEffectHitTestSource>(a1, a2, v3 ^ (v3 >> 31), v5);
  return re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::removeInternal(a1, v5);
}

void re::ecs2::RemoteEffectsStateStore::forEachEntry(re::ecs2::RemoteEffectsStateStore *a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v10 = 1;
  v11 = 0;
  v12 = 0;
  v8 = a3;
  v9 = 0;
  re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(&v8, 0);
  v10 += 2;
  re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(a1, v5, &v8);
  if (v10)
  {
    v6 = &v11;
  }

  else
  {
    v6 = v12;
  }

  if (v9)
  {
    v7 = &v6[2 * v9];
    do
    {
      re::ecs2::RemoteEffectsStateStore::removeState(a1, *v6, *(v6 + 8));
      v6 += 2;
    }

    while (v6 != v7);
  }

  if (v8 && (v10 & 1) == 0)
  {
    (*(*v8 + 40))();
  }
}

void re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 18;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  while (v6 != v5)
  {
    v9 = *(a1 + 16) + 72 * v6;
    if (!re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(v9 + 16, *(v9 + 8), v11, a3))
    {
      break;
    }

    v10 = *(a1 + 32);
    if (v10 <= v6 + 1)
    {
      v10 = v6 + 1;
    }

    while (v10 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a1 + 16) + 72 * v6) & 0x80000000) != 0)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = v10;
LABEL_15:
    ;
  }
}

uint64_t re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 16);
    while (1)
    {
      v11 = *v10;
      v10 += 6;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 != v8)
  {
    v13 = *(a1 + 16);
    v14 = (a4 + 24);
    while (1)
    {
      v15 = v13 + 24 * v9;
      v32 = 0;
      v16 = *(v15 + 8);
      v31 = v16;
      if (v16)
      {
        v17 = (v16 + 8);
      }

      v18 = v7[2](v7, &v31, &v32 + 1, &v32);
      if (v31)
      {

        v31 = 0;
      }

      if (HIBYTE(v32) == 1)
      {
        break;
      }

LABEL_31:
      if ((v32 & 1) == 0)
      {
        v29 = *(a1 + 32) <= (v9 + 1) ? v9 + 1 : *(a1 + 32);
        v13 = *(a1 + 16);
        while (v29 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(v13 + 24 * v9) & 0x80000000) != 0)
          {
            goto LABEL_40;
          }
        }

        LODWORD(v9) = v29;
LABEL_40:
        if (v9 != v8)
        {
          continue;
        }
      }

      v12 = v32 ^ 1u;
      goto LABEL_42;
    }

    v19 = *(v15 + 4);
    if (*a4)
    {
      v20 = *(a4 + 8);
      v21 = *(a4 + 16);
      if (v21)
      {
        if (v20 - 8 < 0xFFFFFFFFFFFFFFF7)
        {
          v23 = v20 + 1;
          v24 = 16;
          goto LABEL_23;
        }
      }

      else
      {
        v22 = *v14;
        if (v20 >= *v14)
        {
          v23 = v20 + 1;
          if (v22 < v23)
          {
            v24 = 2 * v22;
LABEL_23:
            if (v24 <= v23)
            {
              v26 = v23;
            }

            else
            {
              v26 = v24;
            }

            re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(a4, v26);
            v21 = *(a4 + 16);
          }
        }
      }
    }

    else
    {
      v25 = *(a4 + 8);
      re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(a4, v25 + 1);
      v21 = *(a4 + 16) + 2;
      *(a4 + 16) = v21;
    }

    if (v21)
    {
      v27 = a4 + 24;
    }

    else
    {
      v27 = *(a4 + 32);
    }

    v28 = (v27 + 16 * *(a4 + 8));
    *v28 = a2;
    v28[1] = v19;
    ++*(a4 + 8);
    *(a4 + 16) += 2;
    goto LABEL_31;
  }

  v12 = 1;
LABEL_42:

  return v12;
}

void re::ecs2::RemoteEffectShaderData::~RemoteEffectShaderData(re::ecs2::RemoteEffectShaderData *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::EntityComponentCollection::get((*(this + 98) + 48), re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    v3 = v2;
    MurmurHash3_x64_128("EnableGlow", 0xAuLL, 0, v5);
    v5[0] ^= v5[1] + (v5[0] << 6) + (v5[0] >> 2) - 0x61C8864680B583E9;
    re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove((v3 + 4), v5);
    re::ecs2::Component::markDirty(v3);
  }

  v4 = *(this + 98);
  if (v4)
  {

    *(this + 98) = 0;
  }
}

void re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 832 * v12);
    v7 = *v6 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
    }

    else
    {
      *(v5 + 832 * v13) = *(v5 + 832 * v13) & 0x80000000 | v7;
    }

    v8 = *v6;
    if (*v6 < 0)
    {
      *v6 = v8 & 0x7FFFFFFF;
      re::ecs2::RemoteEffectShaderData::~RemoteEffectShaderData((v6 + 4));
      v5 = *(a1 + 16);
      v8 = *(v5 + 832 * v4);
    }

    v9 = *(a1 + 40);
    *(v5 + 832 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v9 + 1;
  }
}

void re::ecs2::RemoteEffectHoverState::~RemoteEffectHoverState(re::ecs2::RemoteEffectHoverState *this)
{
  *this = &unk_1F5CF4AC8;
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 16))(v2, this);
  }

  re::AssetHandle::~AssetHandle((this + 720));
  v3 = *(this + 40);
  if (v3)
  {

    *(this + 40) = 0;
  }

  v4 = *(this + 35);
  if (v4)
  {

    *(this + 35) = 0;
  }

  v5 = *(this + 29);
  if (v5)
  {

    *(this + 29) = 0;
  }

  re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(this + 64);
  re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::RemoteEffectHoverState::~RemoteEffectHoverState(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::RemoteEffectsService::RemoteEffectsService(uint64_t a1, re::StringID *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x7FFFFFFFLL;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 220) = 0x7FFFFFFFLL;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 268) = 0x7FFFFFFFLL;
  *(a1 + 312) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 316) = 0x7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 364) = 0x7FFFFFFFLL;
  *(a1 + 408) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 412) = 0x7FFFFFFFLL;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 460) = 0x7FFFFFFFLL;
  *(a1 + 504) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 508) = 0x7FFFFFFFLL;
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 556) = 0x7FFFFFFFLL;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  *(a1 + 576) = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  return a1;
}

BOOL re::ecs2::RemoteEffectsService::updateAnimationNode(re::ecs2::RemoteEffectsService *a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 24);
  if (v5)
  {
    updated = re::ecs2::RemoteEffectsService::updateAnimationNode(a1, v5, a3);
    v8 = *(a2 + 24);
    *(a2 + 56) = *(v8 + 80);
    if (!updated)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v8);
      v9 = *(a2 + 24);
      if (v9)
      {

        *(a2 + 24) = 0;
      }
    }
  }

  v10 = a3 - *(a2 + 32) - *(a2 + 40);
  v11 = *(a2 + 48);
  if (v10 > v11)
  {
    v13 = *(a2 + 64);
  }

  else
  {
    v12 = v10 / v11;
    if (v11 <= 0.0)
    {
      v12 = 0.0;
    }

    v13 = *(a2 + 64);
    if (v12 < 1.0)
    {
      v14 = *(a2 + 56);
      if (v12 <= 0.0)
      {
        v13 = *(a2 + 56);
      }

      else
      {
        v15 = re::internal::evaluateCubicBezierEase<double>(**(a2 + 72), *(*(a2 + 72) + 8), *(*(a2 + 72) + 16), *(*(a2 + 72) + 24), v12, 0.00001);
        v13 = v13 * v15 + v14 * (1.0 - v15);
      }
    }
  }

  result = v10 <= v11;
  *(a2 + 80) = v13;
  return result;
}

void re::ecs2::RemoteEffectsService::updateAnimator(re::ecs2::RemoteEffectsService *a1, double *a2, double a3)
{
  v4 = *a2;
  if (v4)
  {
    updated = re::ecs2::RemoteEffectsService::updateAnimationNode(a1, v4, a3);
    v4 = *a2;
    a2[2] = a2[3] + *(*a2 + 80) - a2[1];
    if (!updated)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v4);
      if (*a2)
      {

        *a2 = 0.0;
      }

      v4 = 0;
      a2[1] = 0.0;
    }
  }

  else
  {
    a2[2] = a2[3];
  }

  *(a2 + 32) = v4 != 0;
}

void re::ecs2::RemoteEffectsService::updateAutoFade(uint64_t result, uint64_t a2, int a3, unint64_t *a4, double a5)
{
  if (*(a2 + 225) != a3)
  {
    v7 = a3;
    re::HashSetBase<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::Hash<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::EqualTo<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,true,false>::add(result + 48, a4);
    *(*a4 + 32) = a5;
    re::ecs2::addAnimation(a4, a2 + 232, (*(a2 + 225) ^ 1u), *(a2 + 225));
    *(a2 + 225) = v7;
  }
}

void ___ZNK2re4ecs220RemoteEffectsService25spotlightAnimationEnabledEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::BOOLValue(&var2, "RemoteEffectsSpotlightAnimationEnabled", a2);
  if (var2)
  {
    v2 = BYTE1(var2);
  }

  else
  {
    v2 = 1;
  }

  byte_1EE1AC0C9 = v2;
}

void re::ecs2::RemoteEffectsService::recursivelyClearAnimationNodes(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *(v4 + 24);
  if (v5)
  {
    v9 = *(v4 + 24);
    v6 = (v5 + 8);
    re::ecs2::RemoteEffectsService::recursivelyClearAnimationNodes(a1, &v9);

    v4 = *a2;
  }

  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v4);
  v7 = *a2;
  v8 = *(v7 + 24);
  if (v8)
  {

    *(v7 + 24) = 0;
  }
}

uint64_t re::ecs2::RemoteEffectsPinchStateStore::getPinchStates(re::ecs2::RemoteEffectsPinchStateStore *this, unint64_t a2)
{
  v4 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this, a2);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 48, a2);
  if (v6)
  {
    v5 = *v6;
  }

  v7 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 96, a2);
  if (v7)
  {
    v8 = *v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 144, a2);
  if (v9)
  {
    v8 = *v9;
  }

  return v5 | (v8 << 8);
}

void re::HashSetBase<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::Hash<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::EqualTo<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,true,false>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(a1 + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return;
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
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = *(a1 + 36);
  if (v11 == 0x7FFFFFFF)
  {
    v11 = *(a1 + 32);
    v12 = v11;
    if (v11 == v7)
    {
      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      LODWORD(v8) = v6 % *(a1 + 24);
      v12 = *(a1 + 32);
      v4 = *a2;
    }

    *(a1 + 32) = v12 + 1;
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
    *(a1 + 36) = v14 & 0x7FFFFFFF;
  }

  *(v13 + 24 * v11 + 8) = v14 | 0x80000000;
  v15 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v11 + 8) = *(*(a1 + 16) + 24 * v11 + 8) & 0x80000000 | *(v15 + 4 * v8);
  *(*(a1 + 16) + 24 * v11) = v6;
  *(*(a1 + 16) + 24 * v11 + 16) = v4;
  if (v4)
  {
    v16 = (v4 + 8);
    v15 = *(a1 + 8);
  }

  *(v15 + 4 * v8) = v11;
  ++*(a1 + 28);
  ++*(a1 + 40);
}

void re::ecs2::addAnimation(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v7 = a4 - a3 + *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *a1;
  *(v8 + 64) = v7;
  *(v8 + 56) = 0;
  *(v8 + 80) = 0;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v8 + 24), *a2);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a2, *a1);
  *(a2 + 24) = a4;
  *(a2 + 32) = *a2 != 0;
}

void ___ZN2re4ecs220RemoteEffectsService6updateENS0_6System13UpdateContextE_block_invoke(_BOOL8 a1, uint64_t *a2, _BYTE *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v5 = *re::remoteEffectsLogObjects(a1);
    a1 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      v6 = *a2;
      v7 = *(*a2 + 624);
      if (v7)
      {
        v7 = *(v7 + 312);
      }

      v8 = *(v6 + 612);
      buf.columns[0].i32[0] = 134218496;
      *(buf.columns[0].i64 + 4) = v6;
      buf.columns[0].i16[6] = 2048;
      *(&buf.columns[0].i64[1] + 6) = v7;
      buf.columns[1].i16[3] = 1024;
      buf.columns[1].i32[2] = v8;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "HoverState %p - updating for entity %llu - hitTestData.valid: %d", &buf, 0x1Cu);
    }
  }

  v9 = *a2;
  v10 = *(v4 + 584);
  v11 = *(*a2 + 152);
  v12 = *(*a2 + 176);
  v13 = *(*a2 + 184);
  if (!*(*a2 + 176))
  {
    v13 = 0.0;
  }

  if (v10 - (v11 + v13) > 3600.0)
  {
    *(v9 + 152) = v10;
    v11 = v10;
  }

  v14 = *(v9 + 612);
  v15 = v14;
  if (*(v9 + 144) != v14)
  {
    if (!*(v9 + 612))
    {
      v15 = 0;
      v16 = 0;
      *(v9 + 160) = v10;
      *(v9 + 144) = 0;
      v17 = (v9 + 496);
      v18 = (v9 + 765);
      v19 = *(v9 + 765);
      goto LABEL_22;
    }

    *(v9 + 152) = v10;
    v15 = 1;
    v11 = v10;
  }

  v16 = 0;
  *(v9 + 144) = v14;
  v17 = (v9 + 496);
  v18 = (v9 + 765);
  v19 = *(v9 + 765);
  if (!v15 || (v19 & 1) != 0 || (v16 = 0, !v12) || (*(v9 + 168) & 1) != 0)
  {
LABEL_22:
    if (v19 != v15 && *(v9 + 416) == 1 && (*(v9 + 312) & 1) == 0)
    {
      re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(&buf);
      re::HashSetBase<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::Hash<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::EqualTo<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,true,false>::add(v4 + 48, &buf);
      v20 = buf.columns[0].i64[0];
      v21 = 432;
      if (v15)
      {
        v21 = 424;
      }

      v22 = *(v9 + v21);
      if (v15)
      {
        if (*(v9 + 360) == 1)
        {
          v22 = *(v9 + 368);
        }
      }

      else
      {
        if (*(v9 + 376))
        {
          v22 = *(v9 + 384);
        }

        if (*(v9 + 777) == 1)
        {
          v24 = *(v9 + 184);
          if (!*(v9 + 176))
          {
            v24 = 0.0;
          }

          v22 = v22 + (*(v9 + 160) - (*(v9 + 152) + v24)) * *(v9 + 780);
        }
      }

      *(buf.columns[0].i64[0] + 48) = v22;
      *(v20 + 72) = v23;
      *(v20 + 32) = v10;
      if (v16)
      {
        v25 = *(v9 + 184);
        if (!*(v9 + 176))
        {
          v25 = 0.0;
        }

        *(v20 + 32) = *(v9 + 152) + v25;
      }

      re::ecs2::addAnimation(&buf, v9 + 320, *(v9 + 765), (*(v9 + 765) ^ 1u));
      *(v9 + 768) = v10;
      if (v15)
      {
        re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(&v54);
        v26 = v54;
        v54[6] = *(v20 + 48);
        v26[9] = *(v20 + 72);
        v26[4] = *(v20 + 32);
        re::ecs2::RemoteEffectsService::updateAutoFade(v4, v9, 0, &v54, v10);
      }
    }

    re::ecs2::RemoteEffectsService::updateAudioPlaybackDataIsActive(v4, v9, v15);
    if (qword_1EE1AC0E0 != -1)
    {
      dispatch_once(&qword_1EE1AC0E0, &__block_literal_global_22_0);
    }

    if (byte_1EE1AC0C9 != 1 || *(v9 + 272) != 1)
    {
      goto LABEL_78;
    }

    v27 = *(*(v9 + 624) + 312);
    PinchStates = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((v4 + 376), v27);
    if ((PinchStates & 0xFE00) == 0x200 || (PinchStates & 0xFE) == 2)
    {
      goto LABEL_78;
    }

    v30 = *(v9 + 608);
    if (v30 == 2)
    {
      v31 = (re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((v4 + 376), v27) & 0xFF00) == 256;
    }

    else
    {
      if (v30 != 1)
      {
        v35 = 0;
        if (!v15)
        {
LABEL_78:
          *v18 = v15;
          goto LABEL_79;
        }

LABEL_70:
        if ((v30 - 3) >= 0xFFFFFFFE && (*(v9 + 312) & 1) == 0 && ((v35 ^ 1) & 1) == 0)
        {
          re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(&v54);
          re::HashSetBase<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::Hash<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::EqualTo<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,true,false>::add(v4 + 48, &v54);
          v36 = v54;
          v54[6] = 0x3FC3333333333333;
          *(v36 + 32) = v10;
          re::ecs2::addAnimation(&v54, v9 + 280, 0.0, 1.0);
          v37 = *(v9 + 320);
          if (v37)
          {
            buf.columns[0].i64[0] = *(v9 + 320);
            v38 = (v37 + 8);
            re::ecs2::RemoteEffectsService::recursivelyClearAnimationNodes(v4, &buf);

            v39 = *(v9 + 320);
            if (v39)
            {

              *(v9 + 320) = 0;
            }

            *(v9 + 328) = 0;
            *(v9 + 352) = 0;
            *(v9 + 336) = *(v9 + 344);
          }
        }

        goto LABEL_78;
      }

      v31 = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((v4 + 376), v27) == 1;
    }

    v35 = v31;
    if (!v15)
    {
      goto LABEL_78;
    }

    goto LABEL_70;
  }

  if (v13 + v11 < v10)
  {
    v16 = 1;
    *(v9 + 168) = 1;
    goto LABEL_22;
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v32 = *re::remoteEffectsLogObjects(a1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(v9 + 184);
      if (!*(v9 + 176))
      {
        v33 = 0.0;
      }

      v34 = *(v9 + 152) + v33 - v10;
      buf.columns[0].i32[0] = 134218240;
      *(buf.columns[0].i64 + 4) = v9;
      buf.columns[0].i16[6] = 2048;
      *(&buf.columns[0].i64[1] + 6) = v34;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "HoverState %p - delayed activation counting down: %f", &buf, 0x16u);
    }
  }

LABEL_79:
  if (*v18 == 1 && (*(v9 + 225) & 1) == 0 && *(v9 + 224) == 1 && v10 - *(v9 + 768) >= 0.5)
  {
    re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(&buf);
    v40 = buf.columns[0].i64[0];
    *(buf.columns[0].i64[0] + 48) = 0x3FF8000000000000;
    re::ecs2::RemoteEffectsService::updateAutoFade(v4, v9, 1, &buf, v10);
    *(v9 + 226) = 1;
  }

  re::ecs2::RemoteEffectsService::updateAnimator(v4, (v9 + 320), v10);
  re::ecs2::RemoteEffectsService::updateAnimator(v4, (v9 + 232), v10);
  re::ecs2::RemoteEffectsService::updateAnimator(v4, (v9 + 280), v10);
  if (*(v9 + 352) == 1 || (*(v9 + 264) & 1) != 0 || (*(v9 + 312) & 1) != 0)
  {
    v42 = 1.0;
    if (*(v9 + 312))
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  if (*v18 & 1) != 0 || (*(v9 + 144))
  {
LABEL_91:
    v42 = *(v9 + 336);
LABEL_92:
    *(v9 + 208) = v42;
    if (*(v9 + 226) == 1)
    {
      *(v9 + 208) = v42 * *(v9 + 248);
    }

    if (*(v9 + 612) == 1)
    {
      if (*(v9 + 764))
      {
        re::TransformService::worldMatrix(*(v4 + 576), *(v9 + 624), 0, &buf);
        v57 = __invert_f4(buf);
        v57.columns[0] = vaddq_f32(v57.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57.columns[0], COERCE_FLOAT(*(v9 + 496))), v57.columns[1], *(v9 + 496), 1), v57.columns[2], *(v9 + 496), 2));
        v57.columns[0].i64[0] = vdivq_f32(v57.columns[0], vdupq_laneq_s32(v57.columns[0], 3)).u64[0];
        v57.columns[0] = vaddq_f32(buf.columns[3], vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(buf.columns[0], v57.columns[0].f32[0]), buf.columns[1], *v57.columns[0].f32, 1), 0, buf.columns[2]));
        v43 = vdivq_f32(v57.columns[0], vdupq_laneq_s32(v57.columns[0], 3));
      }

      else
      {
        v43 = *v17;
      }

      *(v9 + 128) = v43;
    }

    if (*(v9 + 216) == 1)
    {
      *(v9 + 192) = *(v9 + 128);
      *(v9 + 216) = 0;
    }

    else
    {
      *(v9 + 192) = vmlaq_n_f32(vmulq_n_f32(*(v9 + 128), *(v9 + 468)), *(v9 + 192), 1.0 - *(v9 + 468));
    }

    v44 = 1;
    goto LABEL_103;
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled != 1)
  {
    v44 = 0;
    goto LABEL_105;
  }

  v52 = *re::remoteEffectsLogObjects(v41);
  v41 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
  v44 = 0;
  if (v41)
  {
    buf.columns[0].i32[0] = 134217984;
    *(buf.columns[0].i64 + 4) = v9;
    _os_log_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEFAULT, "HoverState %p - updateGlowState returning false", &buf, 0xCu);
    v44 = 0;
  }

LABEL_103:
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

LABEL_105:
  if (v44)
  {
    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled)
    {
      v45 = *re::remoteEffectsLogObjects(v41);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *a2;
        v47 = *(*a2 + 208);
        buf.columns[0].i32[0] = 134218240;
        *(buf.columns[0].i64 + 4) = v46;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v47;
        _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "HoverState %p - progress: %f", &buf, 0x16u);
      }
    }

    v48 = *(*a2 + 96);
    if (v48)
    {
      (*(*v48 + 16))(v48);
    }
  }

  else
  {
    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled)
    {
      v49 = *re::remoteEffectsLogObjects(v41);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *a2;
        v51 = *(*a2 + 624);
        if (v51)
        {
          v51 = *(v51 + 312);
        }

        buf.columns[0].i32[0] = 134218240;
        *(buf.columns[0].i64 + 4) = v50;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v51;
        _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, "HoverState %p - Removing for entity %llu", &buf, 0x16u);
      }
    }

    *a3 = 1;
  }
}

re::ecs2::Component *___ZN2re4ecs220RemoteEffectsService6updateENS0_6System13UpdateContextE_block_invoke_25(re::ecs2::Component *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a3 + 792))
  {
    v5 = *(result + 4);
    v6 = *(a3 + 784);
    v7 = *(v6 + 192);
    v8 = re::CAREUtil::GetOrAddCAREComponent(v6, re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0, 0, 0);
    result = re::CAREUtil::GetOrAddCAREComponent(*(a3 + 784), re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0, 0, 0);
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && result != 0)
    {
      v11 = result;
      MurmurHash3_x64_128("EnableGlow", 0xAuLL, 0, &v20);
      v19 = (v21 + (v20 << 6) + (v20 >> 2) - 0x61C8864680B583E9) ^ v20;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v11 + 32, &v19, v12 ^ (v12 >> 31), &v20);
      v13 = HIDWORD(v21);
      if (HIDWORD(v21) == 0x7FFFFFFF)
      {
        v14 = re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v11 + 32, v21, v20);
        *(v14 + 8) = v19;
        *(v14 + 16) = 1;
        ++*(v11 + 18);
      }

      else
      {
        ++*(v11 + 18);
        *(*(v11 + 6) + 32 * v13 + 16) = 1;
      }

      v15 = *(v7 + 72);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          if (i >= *(v8 + 11) || (v17 = *(*(v8 + 13) + 8 * i)) == 0)
          {
            re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>((v5 + 568), &v19);
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((v8 + 72), &v19);
            v17 = v19;
            if (v19)
            {
            }
          }

          v18 = 0x299360323197E82;
          re::MaterialParameterBlock::setBufferWithBytes(v17, &v18, a3, 784, &v20);
          v20 = 0;
          v18 = 0;
        }
      }

      return re::ecs2::Component::markDirty(v8);
    }
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

void re::ecs2::RemoteEffectsService::setUpShaderData(re::ecs2::RemoteEffectsService *this, re::ecs2::RemoteEffectHoverState *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 26);
  v3 = (*(a2 + 105) + v2 * (1.0 - *(a2 + 105))) * *(a2 + 110);
  if (*(a2 + 312))
  {
    v4 = *(a2 + 37) * 0.399999976 + 1.0;
    v3 = v4 * v3;
    v5 = *(a2 + 116) * v3;
    v6 = (1.0 - 1.0 / v4) * v3;
  }

  else
  {
    v5 = *(a2 + 116) * v3;
    v6 = 0.0;
  }

  v7 = *(a2 + 12);
  v8 = v2;
  v9 = *(a2 + 190);
  v10 = vmulq_n_f32(vmulq_n_f32(*(a2 + 25), v8), v9);
  v11 = *(a2 + 115);
  v12 = *(a2 + 23);
  if (*(a2 + 312))
  {
    v13 = *(a2 + 37);
    v5 = (v13 * 0.399999976 + 1.0) * v5;
    v14 = 1.0 - v13;
    v15 = (1.0 - v13) * 0.219999999;
    *&v14 = v14;
    v10 = vmulq_n_f32(v10, *&v14);
  }

  else
  {
    v15 = 0.22;
  }

  if (!*(a2 + 176))
  {
    v12 = 0.0;
  }

  v16 = fmax(*(this + 73) - (*(a2 + 19) + v12), 0.0);
  v17 = *(a2 + 161);
  v18 = *(a2 + 30);
  v19 = *(a2 + 776);
  v20 = *(a2 + 78);
  v25[0] = MEMORY[0x1E69E9820];
  v21 = v2 * v9;
  v25[1] = 3221225472;
  v25[2] = ___ZN2re4ecs220RemoteEffectsService15setUpShaderDataERNS0_22RemoteEffectHoverStateE_block_invoke;
  v25[3] = &__block_descriptor_144_e46_v32__0_v8_B16__TraversedEntityDebugInfo_QCB_24l;
  v22 = v21 * 0.1;
  v38 = this;
  v39 = a2;
  if (v17 != 2)
  {
    v22 = 0.0;
  }

  v23 = v19 == 1;
  v26 = v7;
  v27 = v10;
  if (v19 == 2)
  {
    v23 = 2;
  }

  v28 = v3;
  v29 = v15;
  v30 = v11;
  v31 = v5;
  v32 = v21;
  v33 = v16;
  v34 = v18;
  v35 = v22;
  v36 = v23;
  v37 = v6;
  v24 = 0;
  re::ecs2::entityAndDescendantsRecurse(v20, &v24, v25);
}

void ___ZN2re4ecs220RemoteEffectsService15setUpShaderDataERNS0_22RemoteEffectHoverStateE_block_invoke(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 128);
  v9 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v9)
  {
    goto LABEL_55;
  }

  v10 = *(v9 + 56);
  if (v10)
  {
    v11 = (*(v9 + 72) + 112);
    v12 = v10 << 7;
    while (1)
    {
      v13 = *v11;
      v11 += 16;
      if (v13)
      {
        break;
      }

      v12 -= 128;
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    *a3 = 1;
  }

LABEL_8:
  if (*a3 != 1 || *(*(*(a1 + 136) + 624) + 312) == a2[39])
  {
LABEL_55:
    v14 = *(a4 + 8);
    *(a4 + 8) = v14 + 1;
    if (a2[24])
    {
      *(a4 + 8) = v14 + 2;
      v15 = a2 + 1;
      v16 = a2[39];
      v62 = 0uLL;
      *&v63 = 0;
      v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v62, v8 + 96, v16, v17 ^ (v17 >> 31));
      if (HIDWORD(v62) == 0x7FFFFFFF)
      {
        v18 = re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry((v8 + 96), DWORD2(v62), v62);
        v18[1] = v16;
        v19 = (v18 + 2);
        bzero(v18 + 2, 0x320uLL);
        *(v18 + 4) = -1;
        v20 = v18 + 15;
        v21 = 768;
        __asm { FMOV            V1.4S, #1.0 }

        do
        {
          *(v20 - 14) = xmmword_1E3090E80;
          *(v20 - 5) = 0;
          *(v20 - 6) = _Q1;
          *(v20 - 2) = 0;
          *(v20 - 4) = 0;
          *v20 = 0;
          v20 += 24;
          v21 -= 96;
        }

        while (v21);
        v18[100] = 0;
        ++*(v8 + 136);
      }

      else
      {
        v19 = *(v8 + 112) + 832 * HIDWORD(v62) + 16;
      }

      ++*(a4 + 8);
      v27 = a2 + 1;
      v28 = *(v19 + 784);
      *(v19 + 784) = a2;
      if (v28)
      {
      }

      if (*(v19 + 792))
      {
        if (*(v19 + 4) > 7)
        {
          goto LABEL_50;
        }
      }

      else
      {
        *v19 = 0xFFFFFFFFLL;
      }

      v29 = *(a4 + 8);
      *(a4 + 8) = v29 + 1;
      v30 = *(*(a1 + 136) + 644);
      if (v30 == 1 && *v19 != -1)
      {
LABEL_50:

        return;
      }

      *(a4 + 8) = v29 + 2;
      v31 = *(v19 + 4);
      if (v30 == 1)
      {
        *v19 = v31;
      }

      v32 = v19 + 16;
      *(v19 + 4) = v31 + 1;
      v33 = (v19 + 16 + 96 * v31);
      v34 = *(a1 + 48);
      *v33 = *(a1 + 32);
      v33[1] = v34;
      v35 = *(a1 + 64);
      v36 = *(a1 + 80);
      v37 = *(a1 + 96);
      *(v33 + 76) = *(a1 + 108);
      v33[3] = v36;
      v33[4] = v37;
      v33[2] = v35;
      if (qword_1EE1AC0D0 != -1)
      {
        dispatch_once(&qword_1EE1AC0D0, &__block_literal_global_7_0);
      }

      if (_MergedGlobals_310 != 1)
      {
LABEL_43:
        if (qword_1EE1AC0D8 != -1)
        {
          dispatch_once(&qword_1EE1AC0D8, &__block_literal_global_10_2);
        }

        if (*&dword_1EE1AC0CC > 0.0)
        {
          v48 = *(a1 + 48);
          v49 = *(a1 + 68);
          v61 = *(a1 + 80);
          v62 = *(a1 + 32);
          v50 = *(a1 + 112);
          v59 = *(a1 + 117);
          v51 = dword_1EE1AC0CC;
          v52 = dword_1EE1AC0CC;
          __asm { FMOV            V4.4S, #10.0 }

          v54 = vmulq_f32(v48, _Q4);
          v55 = *(v19 + 4);
          _NF = -v55 < 0;
          v56 = -v55 & 7;
          v57 = v55 & 7;
          if (!_NF)
          {
            v57 = -v56;
          }

          *(v19 + 4) = v57 + 1;
          v58 = v32 + 96 * v57;
          *v58 = v62;
          *(v58 + 16) = v54;
          *(v58 + 32) = v51;
          *(v58 + 36) = v49;
          *(v58 + 44) = v52;
          *(v58 + 48) = v61;
          *(v58 + 64) = xmmword_1E3047670;
          *(v58 + 80) = v50;
          *(v58 + 84) = 0;
          *(v58 + 85) = v59;
          *(v58 + 88) = *(&v59 + 3);
        }

        *(v19 + 792) = 1;
        goto LABEL_50;
      }

      v38 = *(a1 + 48);
      v62 = *(a1 + 32);
      v63 = v38;
      v39 = *(a1 + 80);
      v64 = *(a1 + 64);
      v65 = v39;
      v60 = *(a1 + 117);
      v40 = *(*(a1 + 136) + 608);
      if (v40 > 1)
      {
        if (v40 == 2)
        {
          _Q0 = xmmword_1E3090EA0;
          goto LABEL_40;
        }

        if (v40 == 3)
        {
          _Q0 = xmmword_1E3090E90;
          goto LABEL_40;
        }
      }

      else
      {
        if (!*(*(a1 + 136) + 608))
        {
          _Q0 = xmmword_1E3047680;
          goto LABEL_40;
        }

        if (v40 == 1)
        {
          _Q0 = xmmword_1E3090EB0;
LABEL_40:
          v42 = *(v19 + 4);
          _NF = -v42 < 0;
          v43 = -v42 & 7;
          v44 = v42 & 7;
          if (!_NF)
          {
            v44 = -v43;
          }

          *(v19 + 4) = v44 + 1;
          v45 = v32 + 96 * v44;
          v46 = v63;
          *v45 = v62;
          *(v45 + 16) = v46;
          v47 = v65;
          *(v45 + 32) = v64;
          *(v45 + 48) = v47;
          *(v45 + 64) = _Q0;
          *(v45 + 80) = 1092616192;
          *(v45 + 84) = 0;
          *(v45 + 85) = v60;
          *(v45 + 88) = *(&v60 + 3);
          goto LABEL_43;
        }
      }

      __asm { FMOV            V0.4S, #1.0 }

      goto LABEL_40;
    }
  }
}

void re::ecs2::RemoteEffectsService::updateHoverStateFromStyle(re *a1, uint64_t a2, uint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 644) == *(a3 + 3))
  {
    *(a2 + 760) = *(a3 + 10);
    *(a2 + 764) = *(a3 + 17);
    *(a2 + 776) = *(a3 + 16);
    v6 = a3[4];
    *(a2 + 480) = a3[3];
    *(a2 + 488) = v6;
    *(a2 + 492) = BYTE4(v6);
    *(a2 + 777) = *(a3 + 19);
    *(a2 + 780) = *(a3 + 11);
    v7 = *(a3 + 6);
    if (v7 <= 0.0)
    {
      if (*(a2 + 176))
      {
        *(a2 + 176) = 0;
      }
    }

    else
    {
      if ((*(a2 + 176) & 1) == 0)
      {
        *(a2 + 176) = 1;
      }

      *(a2 + 184) = v7;
    }

    *(a2 + 168) = 0;
    *(a2 + 272) = *(a3 + 21);
    if (*(a3 + 3) == 3)
    {
      v21 = re::globalAllocators(a1)[2];
      v12 = (*(*v21 + 32))(v21, 32, 0);
      *v12 = &unk_1F5CF4BE0;
      v12[1] = a1;
      v12[2] = re::ecs2::RemoteEffectsService::audioHoverStateTeardown;
      v12[3] = 0;
      v22 = v12;
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(a2 + 24, &v17);
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(&v17);
      v21 = 0;
      v22 = 0;
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(a2 + 64, &v17);
    }

    else
    {
      v21 = 0;
      v22 = 0;
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(a2 + 24, &v17);
      v13 = re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(&v17);
      v21 = re::globalAllocators(v13)[2];
      v14 = (*(*v21 + 32))(v21, 32, 0);
      *v14 = &unk_1F5CF4BE0;
      v14[1] = a1;
      v14[2] = re::ecs2::RemoteEffectsService::setUpShaderData;
      v14[3] = 0;
      v22 = v14;
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(a2 + 64, &v17);
    }

    re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(&v17);
    *(a2 + 224) = *(a3 + 18);
    if (*(a3 + 56) == 1)
    {
      v15 = a3[8];
      if ((*(a2 + 360) & 1) == 0)
      {
        *(a2 + 360) = 1;
      }

      *(a2 + 368) = v15;
    }

    else if (*(a2 + 360) == 1)
    {
      *(a2 + 360) = 0;
    }

    if (*(a3 + 72) == 1)
    {
      v16 = a3[10];
      if ((*(a2 + 376) & 1) == 0)
      {
        *(a2 + 376) = 1;
      }

      *(a2 + 384) = v16;
    }

    else if (*(a2 + 376) == 1)
    {
      *(a2 + 376) = 0;
    }
  }

  else
  {
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
    {
      v8 = *re::remoteEffectsLogObjects(a1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = *(a2 + 632);
        v11 = *a3;
        v17 = 134218240;
        v18 = v10;
        v19 = 2048;
        v20 = v11;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "updateHoverStateFromStyle called on state and style that do not match! state: %llu, style: %llu", &v17, 0x16u);
      }
    }
  }
}

void re::ecs2::RemoteEffectsService::applyHitTestData(void *a1, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (!v2)
  {
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled != 1)
    {
      return;
    }

    v55 = *re::remoteEffectsLogObjects(a1);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v56 = "applyHitTestData() early out - targetEntity is null";
LABEL_107:
    _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 2u);
    return;
  }

  v5 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v7 = *re::remoteEffectsLogObjects(v5);
    v5 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v8 = v7;
      v9 = *(v6 + 152);
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "applyHitTestData() - component version: %d", buf, 8u);
    }
  }

  if (!*(v6 + 152))
  {
LABEL_11:
    v11 = *(a2 + 16);
    if (v11)
    {
      v10 = 0;
      while (1)
      {
        v5 = re::ecs2::EntityComponentCollection::get((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v5)
        {
          if (*(v5 + 82))
          {
            v10 = v11;
          }

          if (*(v5 + 152) && v10 != 0)
          {
            goto LABEL_24;
          }
        }

        v11 = *(v11 + 32);
        if (!v11 || (*(v11 + 304) & 0x80) != 0)
        {
          goto LABEL_23;
        }
      }
    }

    goto LABEL_97;
  }

  if ((*(v6 + 82) & 1) == 0)
  {
    goto LABEL_97;
  }

  v10 = *(a2 + 16);
LABEL_23:
  if (!v10)
  {
LABEL_97:
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled != 1)
    {
      return;
    }

    v55 = *re::remoteEffectsLogObjects(v5);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v56 = "applyHitTestData() early out - did not find activeEntity";
    goto LABEL_107;
  }

LABEL_24:
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v13 = *re::remoteEffectsLogObjects(v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v10 + 312);
      v15 = *a2;
      v16 = *(a2 + 4);
      v17 = *(a2 + 8);
      *buf = 134218752;
      *&buf[4] = v14;
      *v63 = 2048;
      *&v63[2] = v15;
      v64 = 2048;
      v65 = v16;
      v66 = 2048;
      v67 = v17;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "applyHitTestData() - found activeEntity %llu - position: %f, %f, %f", buf, 0x2Au);
    }
  }

  v18 = re::ecs2::EntityComponentCollection::get((v10 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v18)
  {
    return;
  }

  v19 = v18;
  PinchStates = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((a1 + 47), *(v10 + 312));
  if ((PinchStates & 0xFE00) == 0x200 || (PinchStates & 0xFE) == 2)
  {
    return;
  }

  v22 = *(v19 + 56);
  if (!v22)
  {
    return;
  }

  v23 = *(v19 + 72);
  v61 = v23 + (v22 << 7);
  while (1)
  {
    v24 = *(a2 + 112);
    if (v24 == 3 || v24 == 0)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if ((v26 & *(v23 + 8)) == 0)
    {
      goto LABEL_65;
    }

    v27 = *(v23 + 112);
    if (!v27)
    {
LABEL_64:
      re::ecs2::RemoteEffectsService::findOrCreateHoverStateAndUpdateHitTestData(a1, v23, a2);
      goto LABEL_65;
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, (a1 + 29), *(v23 + 112), *(v23 + 112));
    if (*v63 == 0x7FFFFFFF)
    {
      break;
    }

    v28 = re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, (a1 + 29), v27, v27);
    v29 = a1[31] + 72 * *v63;
    v30 = *(v29 + 48);
    if (v30)
    {
      v31 = 0;
      v32 = (*(v29 + 32) + 8);
      do
      {
        v33 = *v32;
        v32 += 6;
        if (v33 < 0)
        {
          goto LABEL_61;
        }

        ++v31;
      }

      while (v30 != v31);
      LODWORD(v31) = *(v29 + 48);
    }

    else
    {
      LODWORD(v31) = 0;
    }

LABEL_61:
    while (v31 != v30)
    {
      re::ecs2::RemoteEffectsStyleIdCache::getEntity(buf, (a1 + 35), *(*(v29 + 32) + 24 * v31 + 16));
      v34 = *buf;
      v35 = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((a1 + 47), *(*buf + 312));
      v36 = v35 & 0xFE;
      v37 = v35 & 0xFE00;

      if (v37 == 512 || v36 == 2)
      {
        return;
      }

      v39 = *(v29 + 48);
      if (v39 <= v31 + 1)
      {
        v39 = v31 + 1;
      }

      while (v39 - 1 != v31)
      {
        LODWORD(v31) = v31 + 1;
        if ((*(*(v29 + 32) + 24 * v31 + 8) & 0x80000000) != 0)
        {
          goto LABEL_61;
        }
      }

      LODWORD(v31) = v39;
    }

    v27 = *(v23 + 112);
    if (!v27 || *(v23 + 120))
    {
      goto LABEL_64;
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
    {
      v40 = *re::remoteEffectsLogObjects(v28);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        *buf = 134217984;
        *&buf[4] = v27;
        _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "Applying hit test to to group with groupID: %llu", buf, 0xCu);
      }
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, (a1 + 29), v27, v27);
    if (*v63 == 0x7FFFFFFF)
    {
      goto LABEL_110;
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, (a1 + 29), v27, v27);
    v42 = a1[31] + 72 * *v63;
    v43 = *(v42 + 48);
    if (v43)
    {
      v44 = 0;
      v45 = (*(v42 + 32) + 8);
      while (1)
      {
        v46 = *v45;
        v45 += 6;
        if (v46 < 0)
        {
          break;
        }

        if (v43 == ++v44)
        {
          LODWORD(v44) = *(v42 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v44) = 0;
    }

LABEL_95:
    while (v44 != v43)
    {
      v47 = *(v42 + 32) + 24 * v44;
      re::ecs2::RemoteEffectsStyleIdCache::getEntity(buf, (a1 + 35), *(v47 + 16));
      v48 = *buf;
      v49 = re::ecs2::EntityComponentCollection::get((*buf + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v50 = *(v47 + 16);
      if (v50)
      {
        v51 = *(v49 + 56);
        if (v51)
        {
          v52 = *(v49 + 72);
          v53 = v51 << 7;
          while (*v52 != v50)
          {
            v52 += 128;
            v53 -= 128;
            if (!v53)
            {
              goto LABEL_87;
            }
          }

          if (*(v52 + 120) != 2)
          {
            re::ecs2::RemoteEffectsService::findOrCreateHoverStateAndUpdateHitTestData(a1, v52, a2);
          }
        }
      }

LABEL_87:
      if (v48)
      {
      }

      v54 = *(v42 + 48);
      if (v54 <= v44 + 1)
      {
        v54 = v44 + 1;
      }

      while (v54 - 1 != v44)
      {
        LODWORD(v44) = v44 + 1;
        if ((*(*(v42 + 32) + 24 * v44 + 8) & 0x80000000) != 0)
        {
          goto LABEL_95;
        }
      }

      LODWORD(v44) = v54;
    }

LABEL_65:
    v23 += 128;
    if (v23 == v61)
    {
      return;
    }
  }

  re::ecs2::RemoteEffectsService::dumpGroups(a1);
  re::internal::assertLog(5, v57, "assertion failure: '%s' (%s:line %i) Found groupID: %llu, but no matching group!", "false", "areGroupEffectsDisabled", 1601, v27);
  _os_crash("assertion failure: (false) Found groupID: %llu, but no matching group!", v59);
  __break(1u);
LABEL_110:
  re::ecs2::RemoteEffectsService::dumpGroups(a1);
  re::internal::assertLog(5, v58, "assertion failure: '%s' (%s:line %i) Found groupID: %llu, but no matching group!", "false", "applyHitTestDataToGroup", 1577, v27);
  _os_crash("assertion failure: (false) Found groupID: %llu, but no matching group!", v60);
  __break(1u);
}

void re::ecs2::RemoteEffectsService::findOrCreateHoverStateAndUpdateHitTestData(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  if (*(a2 + 22))
  {
    v7 = *(a3 + 112);
  }

  else
  {
    v7 = 4;
  }

  *buf = *a2;
  if (re::ecs2::RemoteEffectsStateStore::stateExists(a1, *buf, v7))
  {
    v8 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, buf);
    v9 = 0x7FFFFFFFLL;
    if (*v8)
    {
      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v7) ^ ((0xBF58476D1CE4E5B9 * v7) >> 27));
      v11 = *(*(v8 + 8) + 4 * ((v10 ^ (v10 >> 31)) % *(v8 + 24)));
      if (v11 != 0x7FFFFFFF)
      {
        v12 = *(v8 + 16);
        v9 = 0x7FFFFFFFLL;
        while (*(v12 + 24 * v11 + 4) != v7)
        {
          v11 = *(v12 + 24 * v11) & 0x7FFFFFFF;
          if (v11 == 0x7FFFFFFF)
          {
            goto LABEL_12;
          }
        }

        v9 = v11;
      }
    }

LABEL_12:
    v13 = *(*(v8 + 16) + 24 * v9 + 8);
    if (v13)
    {
      v14 = (v13 + 8);
      if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
      {
        dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
      }

      if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
      {
        v15 = *re::remoteEffectsLogObjects(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = *a2;
          *buf = 134217984;
          *&buf[4] = v17;
          _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "findOrCreateHoverStateAndUpdateHitTestData() - found existing state for styleId: %llu", buf, 0xCu);
        }
      }

      goto LABEL_49;
    }
  }

  v13 = *a2;
  v61 = v13;
  v60 = v7;
  if (!re::ecs2::RemoteEffectsStateStore::stateExists(a1, v13, v7))
  {
    v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
    v20 = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, &v61, v19 ^ (v19 >> 31), buf);
    if (*&buf[12] == 0x7FFFFFFF)
    {
      memset(buf, 0, 48);
      *&buf[36] = 0x7FFFFFFF;
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, &v61, v21 ^ (v21 >> 31), &v62);
      if (HIDWORD(v63) == 0x7FFFFFFF)
      {
        v22 = re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v63, v62);
        v23 = v61;
        *(v22 + 16) = 0u;
        v24 = v22 + 16;
        *(v22 + 8) = v23;
        *buf = 0u;
        *(v22 + 32) = 0;
        *&buf[16] = 0;
        *(v22 + 40) = xmmword_1E3058120;
        *&buf[24] = xmmword_1E3058120;
        *(v22 + 56) = 1;
        ++*(a1 + 40);
      }

      else
      {
        v24 = *(a1 + 16) + 72 * HIDWORD(v63) + 16;
      }

      re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit(buf);
    }

    else
    {
      v24 = *(a1 + 16) + 72 * *&buf[12] + 16;
    }

    v25 = re::globalAllocators(v20);
    v26 = (*(*v25[2] + 32))(v25[2], 800, 16);
    bzero(v26, 0x320uLL);
    ArcSharedObject::ArcSharedObject(v26, 0);
    *v26 = &unk_1F5CF4AC8;
    v29 = re::globalAllocators(v28);
    v26[6] = v29[2];
    v26[7] = 0;
    v26[11] = re::globalAllocators(v29)[2];
    v26[12] = 0;
    *(v26 + 176) = 0;
    *(v26 + 144) = 0;
    v26[16] = 0;
    v26[17] = 0;
    *(v26 + 168) = 0;
    v26[19] = 0;
    v26[20] = 0;
    *(v26 + 12) = 0u;
    *(v26 + 112) = 0;
    *(v26 + 226) = 0;
    v26[29] = 0;
    *(v26 + 264) = 0;
    *(v26 + 272) = 0;
    v26[35] = 0;
    *(v26 + 312) = 0;
    v26[40] = 0;
    *(v26 + 352) = 0;
    *(v26 + 360) = 0;
    *(v26 + 376) = 0;
    *(v26 + 473) = 0;
    *(v26 + 485) = 0;
    v26[60] = 0;
    *(v26 + 31) = 0u;
    *(v26 + 601) = 0;
    *(v26 + 152) = 67372293;
    *(v26 + 612) = 0;
    v26[79] = 0;
    v26[80] = 3;
    *(v26 + 162) = 256;
    *(v26 + 326) = 1;
    *(v26 + 654) = 1;
    __asm { FMOV            V8.2S, #1.0 }

    v26[82] = _D8;
    *(v26 + 166) = 1065353216;
    *(v26 + 668) = 0;
    v26[84] = _D8;
    v26[85] = 0;
    *(v26 + 688) = 0;
    *(v26 + 704) = 0;
    *(v26 + 188) = 0;
    v35 = 0xBF58476D1CE4E5B9 * v60;
    *(v26 + 45) = 0u;
    *(v26 + 46) = 0u;
    memset(buf, 0, 24);
    re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::findEntry<re::ecs2::RemoteEffectHitTestSource>(v24, &v60, (0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) ^ ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31), buf);
    if (*&buf[12] == 0x7FFFFFFF)
    {
      v36 = re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::allocEntry(v24, *&buf[8], *buf);
      *(v36 + 8) = v26;
      v37 = (v36 + 8);
      *(v37 - 4) = v60;
      ++*(v24 + 40);
      v26 = 0;
    }

    else
    {
      v37 = (*(v24 + 16) + 24 * *&buf[12] + 8);
    }

    v13 = *v37;
    if (*v37)
    {
      v38 = (v13 + 8);
    }

    if (v26)
    {
    }

    re::ecs2::RemoteEffectsStyleIdCache::getEntity(&v62, (a1 + 280), *a2);
    v3 = v62;
    v39 = *a2;
    v40 = *(a2 + 1);
    v41 = *(a2 + 2);
    *(v13 + 680) = a2[6];
    *(v13 + 648) = v40;
    *(v13 + 664) = v41;
    *(v13 + 632) = v39;
    if (*(v13 + 688))
    {
      if ((a2[7] & 1) == 0)
      {
        *(v13 + 688) = 0;
        goto LABEL_38;
      }
    }

    else
    {
      if ((a2[7] & 1) == 0)
      {
        goto LABEL_38;
      }

      *(v13 + 688) = 1;
    }

    *(v13 + 696) = a2[8];
LABEL_38:
    if (*(v13 + 704))
    {
      if ((a2[9] & 1) == 0)
      {
        *(v13 + 704) = 0;
        goto LABEL_44;
      }
    }

    else
    {
      if ((a2[9] & 1) == 0)
      {
        goto LABEL_44;
      }

      *(v13 + 704) = 1;
    }

    *(v13 + 712) = a2[10];
LABEL_44:
    re::AssetHandle::operator=(v13 + 720, a2 + 11);
    v42 = a2[14];
    *(v13 + 752) = *(a2 + 30);
    *(v13 + 744) = v42;
    *(v13 + 624) = v3;
    *(v13 + 784) = v7;
    *(v13 + 216) = 1;
    *(v13 + 225) = 0;
    *(v13 + 336) = 0;
    *(v13 + 344) = 0;
    *(v13 + 480) = _D8;
    *(v13 + 488) = 1065353216;
    *(v13 + 492) = 0;
    re::ecs2::RemoteEffectsService::updateHoverStateFromStyle(a1, v13, a2);
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_51;
  }

  re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Tried to create RemoteEffectHoverState for %llu with source: %d,but state already exists", "!stateExists(styleId, source)", "createState", 319, v13, v7);
  _os_crash("assertion failure: (!stateExists(styleId, source)) Tried to create RemoteEffectHoverState for %llu with source: %d,but state already exists", v58, v59);
  __break(1u);
LABEL_51:
  dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
LABEL_45:
  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v44 = *re::remoteEffectsLogObjects(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(v3 + 312);
      v46 = *(a3 + 112);
      *buf = 134218496;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v45;
      *&buf[22] = 1024;
      *&buf[24] = v46;
      _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "findOrCreateHoverStateAndUpdateHitTestData() - initializing new state %p for entity: %llu; source: %d", buf, 0x1Cu);
    }
  }

LABEL_49:
  v47 = *(v13 + 608);
  v48 = *(v13 + 610);
  v50 = a3[5];
  v49 = a3[6];
  v51 = a3[4];
  *(v13 + 605) = *(a3 + 109);
  v52 = *a3;
  v53 = a3[1];
  v54 = a3[3];
  *(v13 + 528) = a3[2];
  *(v13 + 544) = v54;
  *(v13 + 496) = v52;
  *(v13 + 512) = v53;
  *(v13 + 576) = v50;
  *(v13 + 592) = v49;
  *(v13 + 560) = v51;
  *(v13 + 609) = v47;
  *(v13 + 611) = v48;
  *(v13 + 612) = 1;
  *(v13 + 400) = a3[2];
  v55 = a3[3];
  v56 = a3[4];
  v57 = a3[5];
  *(v13 + 458) = *(a3 + 90);
  *(v13 + 432) = v56;
  *(v13 + 448) = v57;
  *(v13 + 416) = v55;
}

void re::ecs2::RemoteEffectsService::updateGroupsForStyle(re::ecs2::RemoteEffectsService *this, unint64_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2[14];
  if (v4)
  {
    v5 = *a2;
    re::ecs2::RemoteEffectsService::findGroupForStyle(&v17, this, *a2);
    if (v4 == v17)
    {
      return;
    }

    re::ecs2::RemoteEffectsService::removeStyleFromGroup(this, v17, v5);
    v7 = *a2;
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
    {
      v8 = *re::remoteEffectsLogObjects(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        *buf = 134218240;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = v4;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "addEntityToGroup - adding style %llu to group %llu", buf, 0x16u);
      }
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, this + 232, v4, v4);
    if (*&buf[12] == 0x7FFFFFFF)
    {
      memset(buf, 0, 48);
      *&buf[36] = 0x7FFFFFFF;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v18, this + 232, v4, v4);
      if (HIDWORD(v19) == 0x7FFFFFFF)
      {
        v10 = re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(this + 232, v19, v18);
        *(v10 + 8) = v4;
        *(v10 + 56) = 0;
        *(v10 + 16) = 0u;
        *buf = 0u;
        *(v10 + 32) = 0;
        *&buf[16] = 0;
        *(v10 + 40) = xmmword_1E3058120;
        *&buf[24] = xmmword_1E3058120;
        ++*(this + 68);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, this + 232, v4, v4);
    v11 = *(this + 31) + 72 * *&buf[12];
    *buf = v7;
    v12 = *(v11 + 40);
    if (v12)
    {
      v13 = v7 % v12;
      v14 = *(*(v11 + 24) + 4 * (v7 % v12));
      if (v14 != 0x7FFFFFFF)
      {
        v15 = *(v11 + 32);
        if (*(v15 + 24 * v14 + 16) == v7)
        {
          return;
        }

        while (1)
        {
          LODWORD(v14) = *(v15 + 24 * v14 + 8) & 0x7FFFFFFF;
          if (v14 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v15 + 24 * v14 + 16) == v7)
          {
            return;
          }
        }
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    re::HashSetBase<re::ecs2::RemoteEffectsGroupEntry,re::ecs2::RemoteEffectsGroupEntry,re::internal::ValueAsKey<re::ecs2::RemoteEffectsGroupEntry>,re::Hash<re::ecs2::RemoteEffectsGroupEntry>,re::EqualTo<re::ecs2::RemoteEffectsGroupEntry>,true,false>::addAsMove(v11 + 16, v13, v7, buf);
    ++*(v11 + 56);
  }

  else
  {
    v16 = *a2;

    re::ecs2::RemoteEffectsService::removeStyleFromGroups(this, v16);
  }
}

void re::ecs2::RemoteEffectsService::removeStyleFromGroups(re::ecs2::RemoteEffectsService *this, unint64_t a2)
{
  re::ecs2::RemoteEffectsService::findGroupForStyle(&v5, this, a2);
  v4 = v5;
  if (v5)
  {

    re::ecs2::RemoteEffectsService::removeStyleFromGroup(this, v4, a2);
  }
}

void *re::ecs2::RemoteEffectsService::findGroupForStyle(void *this, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 264);
  if (v3)
  {
    v4 = 0;
    v5 = *(a2 + 248);
    while (1)
    {
      v6 = *v5;
      v5 += 18;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a2 + 264);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 == v3)
  {
LABEL_8:
    v7 = 0;
  }

  else
  {
    v8 = *(a2 + 248);
    while (1)
    {
      v9 = v8 + 72 * v4;
      v10 = *(v9 + 40);
      if (v10)
      {
        v11 = *(*(v9 + 24) + 4 * (a3 % v10));
        if (v11 != 0x7FFFFFFF)
        {
          break;
        }
      }

LABEL_15:
      if (v3 <= v4 + 1)
      {
        v13 = v4 + 1;
      }

      else
      {
        v13 = *(a2 + 264);
      }

      while (v13 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v8 + 72 * v4) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v4) = v13;
LABEL_22:
      if (v4 == v3)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v9 + 32);
    while (*(v12 + 24 * v11 + 16) != a3)
    {
      LODWORD(v11) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_15;
      }
    }

    v7 = *(v8 + 72 * v4 + 8);
  }

  *this = v7;
  return this;
}

void re::ecs2::RemoteEffectsService::removeStyleFromGroup(uint64_t a1, unint64_t a2, unint64_t a3)
{
  re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, a1 + 232, a2, a2);
  if (v26 != 0x7FFFFFFF)
  {
    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, a1 + 232, a2, a2);
    v6 = *(a1 + 248);
    v7 = v6 + 72 * v26;
    v8 = *(v7 + 40);
    if (v8)
    {
      v9 = a3 % v8;
      v10 = *(v7 + 24);
      v11 = *(v10 + 4 * (a3 % v8));
      if (v11 != 0x7FFFFFFF)
      {
        v12 = *(v7 + 32);
        if (*(v12 + 24 * v11 + 16) == a3)
        {
          *(v10 + 4 * v9) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
LABEL_9:
          v14 = *(v7 + 32);
          v15 = v14 + 24 * v11;
          v18 = *(v15 + 8);
          v17 = (v15 + 8);
          v16 = v18;
          if (v18 < 0)
          {
            *v17 = v16 & 0x7FFFFFFF;
            v14 = *(v7 + 32);
            v16 = *(v14 + 24 * v11 + 8);
          }

          *(v14 + 24 * v11 + 8) = *(v7 + 52) | v16 & 0x80000000;
          --*(v7 + 44);
          v19 = *(v7 + 56) + 1;
          *(v7 + 52) = v11;
          *(v7 + 56) = v19;
        }

        else
        {
          while (1)
          {
            v13 = v11;
            LODWORD(v11) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
            if (v11 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v12 + 24 * v11 + 16) == a3)
            {
              *(v12 + 24 * v13 + 8) = *(v12 + 24 * v13 + 8) & 0x80000000 | *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
              goto LABEL_9;
            }
          }
        }
      }
    }

    if (!*(v7 + 44))
    {
      re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, a1 + 232, a2, a2);
      v20 = v26;
      if (v26 != 0x7FFFFFFF)
      {
        v21 = (v6 + 72 * v26);
        v22 = *v21 & 0x7FFFFFFF;
        if (v27 == 0x7FFFFFFF)
        {
          *(*(a1 + 240) + 4 * v25) = v22;
        }

        else
        {
          *(v6 + 72 * v27) = *(v6 + 72 * v27) & 0x80000000 | v22;
        }

        v23 = *v21;
        if ((*v21 & 0x80000000) != 0)
        {
          *v21 = v23 & 0x7FFFFFFF;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v21 + 2);
          v6 = *(a1 + 248);
          v23 = *(v6 + 72 * v20);
        }

        *(v6 + 72 * v20) = *(a1 + 268) | v23 & 0x80000000;
        *(a1 + 268) = v20;
        --*(a1 + 260);
        ++*(a1 + 272);
      }
    }
  }
}

void re::ecs2::RemoteEffectsService::dumpGroups(_BOOL8 this)
{
  v1 = this;
  v23 = *MEMORY[0x1E69E9840];
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v2 = *re::remoteEffectsLogObjects(this);
    this = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "RemoteEffectsGroup Dump Begin", buf, 2u);
    }
  }

  v20 = *(v1 + 264);
  if (v20)
  {
    v3 = 0;
    v4 = *(v1 + 248);
    while (1)
    {
      v5 = *v4;
      v4 += 18;
      if (v5 < 0)
      {
        break;
      }

      if (v20 == ++v3)
      {
        LODWORD(v3) = *(v1 + 264);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v20)
  {
    v7 = *(v1 + 248);
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    v8 = v7 + 72 * v3;
    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
    {
      v9 = *re::remoteEffectsLogObjects(this);
      this = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (this)
      {
        v10 = v9;
        v11 = *(v8 + 8);
        *buf = 134217984;
        v22 = v11;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "====\nGroup %llu", buf, 0xCu);
      }
    }

    v12 = *(v8 + 48);
    if (v12)
    {
      v13 = 0;
      v14 = (*(v8 + 32) + 8);
      while (1)
      {
        v15 = *v14;
        v14 += 6;
        if (v15 < 0)
        {
          break;
        }

        if (v12 == ++v13)
        {
          LODWORD(v13) = *(v8 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

LABEL_30:
    while (v13 != v12)
    {
      v16 = *(*(v8 + 32) + 24 * v13 + 16);
      if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
      {
        dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
      }

      if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
      {
        v17 = *re::remoteEffectsLogObjects(this);
        this = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          *buf = 134217984;
          v22 = v16;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "StyleId: %llu", buf, 0xCu);
        }
      }

      v18 = *(v8 + 48);
      if (v18 <= v13 + 1)
      {
        v18 = v13 + 1;
      }

      while (v18 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if ((*(*(v8 + 32) + 24 * v13 + 8) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v13) = v18;
    }

    v19 = *(v1 + 264);
    if (v19 <= v3 + 1)
    {
      v19 = v3 + 1;
    }

    while (v19 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(v1 + 248) + 72 * v3) & 0x80000000) != 0)
      {
        goto LABEL_48;
      }
    }

    LODWORD(v3) = v19;
LABEL_48:
    ;
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled)
  {
    v6 = *re::remoteEffectsLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "RemoteEffectsGroup Dump End", buf, 2u);
    }
  }
}

uint64_t re::ecs2::RemoteEffectsService::onComponentChanged(re::RenderManager **a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a3 + 8) == re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        v57 = a2;
        v58 = v5;
        v6 = *(v5 + 56);
        if (v6)
        {
          v7 = *(v5 + 72);
          v8 = &v7[16 * v6];
          v9 = MEMORY[0x1E69E9820];
          do
          {
            v10 = *v7;
            v68[0] = v9;
            v68[1] = 3221225472;
            v68[2] = ___ZN2re4ecs220RemoteEffectsService18onComponentChangedEPNS0_6EntityERK25REComponentDidChangeEvent_block_invoke;
            v68[3] = &__block_descriptor_48_e86_v32__0_SharedPtr_re::ecs2::RemoteEffectHoverState____RemoteEffectHoverState__8_B16_B24l;
            v68[4] = a1;
            v68[5] = v7;
            v11 = re::RenderManager::perFrameAllocator(a1[71]);
            *&v64 = v10;
            v12 = v68;
            if (re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, v10))
            {
              *&buf[16] = 1;
              v73 = 0;
              *v74 = 0;
              *buf = v11;
              *&buf[8] = 0;
              re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(buf, 0);
              *&buf[16] += 2;
              v13 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v64);
              re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(v13, v64, v12, buf);
              if (buf[16])
              {
                v14 = &v73;
              }

              else
              {
                v14 = *v74;
              }

              if (*&buf[8])
              {
                v15 = &v14[2 * *&buf[8]];
                do
                {
                  re::ecs2::RemoteEffectsStateStore::removeState(a1, *v14, *(v14 + 8));
                  v14 += 2;
                }

                while (v14 != v15);
              }

              if (*buf && (buf[16] & 1) == 0)
              {
                (*(**buf + 40))();
              }
            }

            v7 += 16;
          }

          while (v7 != v8);
        }

        v66 = 0;
        v64 = 0u;
        v65 = 0u;
        v67 = 0x7FFFFFFFLL;
        v62 = 0;
        memset(v61, 0, sizeof(v61));
        v63 = 0x7FFFFFFFLL;
        v60 = a2;
        v16 = (a2 + 8);
        updated = re::ecs2::RemoteEffectsStyleIdCache::updateStyles((a1 + 35), &v60, v61, &v64);

        v60 = 0;
        if (updated)
        {
          v18 = v66;
          if (v66)
          {
            v19 = 0;
            v20 = (v65 + 8);
            while (1)
            {
              v21 = *v20;
              v20 += 6;
              if (v21 < 0)
              {
                break;
              }

              if (v66 == ++v19)
              {
                LODWORD(v19) = v66;
                break;
              }
            }
          }

          else
          {
            LODWORD(v19) = 0;
          }

          if (v19 != v66)
          {
            v22 = v65;
            do
            {
              v23 = *(v22 + 24 * v19 + 16);
              re::ecs2::RemoteEffectsService::removeStyleFromGroups(a1, v23);
              re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(a1, v23, 1);
              re::ecs2::RemoteEffectsStateStore::removeStyle(a1, v23);
              v22 = v65;
              if (v66 <= v19 + 1)
              {
                v24 = v19 + 1;
              }

              else
              {
                v24 = v66;
              }

              while (v24 - 1 != v19)
              {
                LODWORD(v19) = v19 + 1;
                if ((*(v65 + 24 * v19 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_33;
                }
              }

              LODWORD(v19) = v24;
LABEL_33:
              ;
            }

            while (v19 != v18);
          }
        }

        v25 = (v57 + 8);
        hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles((a1 + 35), *(v57 + 312));

        if (hasCachedStyles)
        {
          v59 = v57;
          v27 = (v57 + 8);
          Styles = re::ecs2::RemoteEffectsStyleIdCache::getStyles((a1 + 35), &v59);

          v29 = *(Styles + 32);
          if (v29)
          {
            v30 = 0;
            v31 = (*(Styles + 16) + 8);
            while (1)
            {
              v32 = *v31;
              v31 += 6;
              if (v32 < 0)
              {
                break;
              }

              if (v29 == ++v30)
              {
                LODWORD(v30) = *(Styles + 32);
                break;
              }
            }
          }

          else
          {
            LODWORD(v30) = 0;
          }

          if (v30 != v29)
          {
            v33 = *(Styles + 16);
            do
            {
              v34 = *(v33 + 24 * v30 + 16);
              v35 = *(v58 + 72);
              for (i = *v35; i != v34; i = v37)
              {
                v37 = v35[16];
                v35 += 16;
              }

              re::ecs2::RemoteEffectsService::updateAudioPlaybackDataFromStyle(a1, v57, v35);
              re::ecs2::RemoteEffectsService::updateGroupsForStyle(a1, v35);
              v38 = *(Styles + 32);
              v33 = *(Styles + 16);
              if (v38 <= v30 + 1)
              {
                v38 = v30 + 1;
              }

              while (v38 - 1 != v30)
              {
                LODWORD(v30) = v30 + 1;
                if ((*(v33 + 24 * v30 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_52;
                }
              }

              LODWORD(v30) = v38;
LABEL_52:
              ;
            }

            while (v30 != v29);
          }
        }

        v39 = *(*(v58 + 16) + 312);
        PinchStates = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((a1 + 47), v39);
        NextPinchStateForComponentUpdate = re::ecs2::getNextPinchStateForComponentUpdate(*(v58 + 87), PinchStates);
        v42 = re::ecs2::getNextPinchStateForComponentUpdate(*(v58 + 86), HIBYTE(PinchStates));
        v43 = NextPinchStateForComponentUpdate == PinchStates && v42 == HIBYTE(PinchStates);
        if (v43)
        {
          goto LABEL_97;
        }

        v44 = v42;
        v70 = NextPinchStateForComponentUpdate | (v42 << 8);
        v69 = v39;
        if (NextPinchStateForComponentUpdate != PinchStates || HIBYTE(PinchStates) != v42)
        {
          if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
          {
            dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
          }

          if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
          {
            v46 = *re::remoteEffectsLogObjects(v42);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              if ((PinchStates - 1) > 2u)
              {
                v47 = "kNoPinch";
              }

              else
              {
                v47 = off_1E871E1E0[(PinchStates - 1)];
              }

              if ((NextPinchStateForComponentUpdate - 1) > 2)
              {
                v48 = "kNoPinch";
              }

              else
              {
                v48 = off_1E871E1E0[(NextPinchStateForComponentUpdate - 1)];
              }

              if ((HIBYTE(PinchStates) - 1) > 2u)
              {
                v49 = "kNoPinch";
              }

              else
              {
                v49 = off_1E871E1E0[(HIBYTE(PinchStates) - 1)];
              }

              if ((v44 - 1) > 2)
              {
                v50 = "kNoPinch";
              }

              else
              {
                v50 = off_1E871E1E0[(v44 - 1)];
              }

              *buf = 134219010;
              *&buf[4] = v39;
              *&buf[12] = 2080;
              *&buf[14] = v47;
              v72 = 2080;
              v73 = v48;
              *v74 = 2080;
              *&v74[2] = v49;
              v75 = 2080;
              v76 = v50;
              _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_DEFAULT, "setPinchStates for Entity: %llu, prev left: %s, new left: %s, prev right: %s, new right: %s", buf, 0x34u);
            }
          }
        }

        if (PinchStates)
        {
          v51 = 1;
        }

        else
        {
          v51 = NextPinchStateForComponentUpdate == 0;
        }

        v52 = a1 + 47;
        if (v51)
        {
          if (NextPinchStateForComponentUpdate == PinchStates)
          {
            goto LABEL_86;
          }

          v52 = a1 + 53;
        }

        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(v52, &v69, &v70);
LABEL_86:
        v54 = PinchStates > 0xFFu || v44 == 0;
        if (v44 != HIBYTE(PinchStates) || !v54)
        {
          v43 = !v54;
          v55 = 12;
          if (!v43)
          {
            v55 = 18;
          }

          re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(&a1[v55 + 47], &v69, &v70 + 1);
        }

LABEL_97:
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v61);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v64);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::RemoteEffectsService::onComponentAdded(re::ecs2::RemoteEffectsService *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a3 + 8) == re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        v6 = v5;
        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v27 = 0x7FFFFFFFLL;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v24 = 0x7FFFFFFFLL;
        v20 = a2;
        v7 = (a2 + 8);
        updated = re::ecs2::RemoteEffectsStyleIdCache::updateStyles(a1 + 280, &v20, &v21, v25);

        v20 = 0;
        if (updated)
        {
          v9 = v23;
          if (v23)
          {
            v10 = 0;
            v11 = (v22 + 8);
            while (1)
            {
              v12 = *v11;
              v11 += 6;
              if (v12 < 0)
              {
                break;
              }

              if (v23 == ++v10)
              {
                LODWORD(v10) = v23;
                break;
              }
            }
          }

          else
          {
            LODWORD(v10) = 0;
          }

          if (v10 != v23)
          {
            v13 = v22;
            do
            {
              v14 = *(v13 + 24 * v10 + 16);
              v15 = *(v6 + 72);
              for (i = *v15; i != v14; i = v17)
              {
                v17 = *(v15 + 128);
                v15 += 128;
              }

              if (*(v15 + 12) == 3)
              {
                re::ecs2::RemoteEffectsService::setUpAudioPlaybackData(a1, a2, v15);
              }

              re::ecs2::RemoteEffectsService::updateGroupsForStyle(a1, v15);
              v13 = v22;
              if (v23 <= v10 + 1)
              {
                v18 = v10 + 1;
              }

              else
              {
                v18 = v23;
              }

              while (v18 - 1 != v10)
              {
                LODWORD(v10) = v10 + 1;
                if ((*(v22 + 24 * v10 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }
              }

              LODWORD(v10) = v18;
LABEL_25:
              ;
            }

            while (v10 != v9);
          }
        }

        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v21);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v25);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::RemoteEffectsService::onComponentRemoved(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (a2 && *(a3 + 8) == re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    v5 = a2 + 1;
    v6 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v7 = *(v6 + 56);
    if (v7)
    {
      v8 = *(v6 + 72);
      v9 = v7 << 7;
      do
      {
        re::ecs2::RemoteEffectsStateStore::removeStyle(a1, *v8);
        v10 = *v8;
        v8 += 16;
        re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(a1, v10, 1);
        v9 -= 128;
      }

      while (v9);
    }

    re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 96, a2[39]);
    v11 = a2 + 1;
    hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1 + 280, a2[39]);

    if (hasCachedStyles)
    {
      v24 = a2;
      v13 = a2 + 1;
      Styles = re::ecs2::RemoteEffectsStyleIdCache::getStyles((a1 + 280), &v24);

      v15 = *(Styles + 32);
      if (v15)
      {
        v16 = 0;
        v17 = (*(Styles + 16) + 8);
        while (1)
        {
          v18 = *v17;
          v17 += 6;
          if (v18 < 0)
          {
            break;
          }

          if (v15 == ++v16)
          {
            LODWORD(v16) = *(Styles + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
      }

      if (v16 != v15)
      {
        v19 = *(Styles + 16);
        do
        {
          re::ecs2::RemoteEffectsService::removeStyleFromGroups(a1, *(v19 + 24 * v16 + 16));
          v20 = *(Styles + 32);
          v19 = *(Styles + 16);
          if (v20 <= v16 + 1)
          {
            v20 = v16 + 1;
          }

          while (v20 - 1 != v16)
          {
            LODWORD(v16) = v16 + 1;
            if ((*(v19 + 24 * v16 + 8) & 0x80000000) != 0)
            {
              goto LABEL_21;
            }
          }

          LODWORD(v16) = v20;
LABEL_21:
          ;
        }

        while (v16 != v15);
      }

      v23 = a2;
      v21 = a2 + 1;
      re::ecs2::RemoteEffectsStyleIdCache::removeEntity(a1 + 280, &v23);
    }
  }

  return 0;
}

uint64_t re::ecs2::RemoteEffectsService::onEntityRemoved(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 98);
    if (*(a2 + 98))
    {
      v5 = (re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
      v6 = *(a2 + 104);
      v7 = vld1q_dup_s16(v5);
      for (i = 1; ; i -= 8)
      {
        v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
        v9.i16[0] = vmaxvq_u16(v9);
        if (v9.i32[0])
        {
          break;
        }

        ++v6;
        if (!--v3)
        {
          return 0;
        }
      }

      if (v9.u16[0] - i < *(a2 + 96))
      {
        v10 = (a2 + 8);
        v11 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v12 = *(v11 + 56);
        if (v12)
        {
          v13 = *(v11 + 72);
          v14 = v12 << 7;
          do
          {
            re::ecs2::RemoteEffectsStateStore::removeStyle(a1, *v13);
            v15 = *v13;
            v13 += 16;
            re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(a1, v15, 1);
            v14 -= 128;
          }

          while (v14);
        }

        re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 96, *(a2 + 312));
        v16 = (a2 + 8);
        hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1 + 280, *(a2 + 312));

        if (hasCachedStyles)
        {
          v30 = a2;
          v18 = (a2 + 8);
          Styles = re::ecs2::RemoteEffectsStyleIdCache::getStyles((a1 + 280), &v30);

          v20 = *(Styles + 32);
          if (v20)
          {
            v21 = 0;
            v22 = (*(Styles + 16) + 8);
            while (1)
            {
              v23 = *v22;
              v22 += 6;
              if (v23 < 0)
              {
                break;
              }

              if (v20 == ++v21)
              {
                LODWORD(v21) = *(Styles + 32);
                break;
              }
            }
          }

          else
          {
            LODWORD(v21) = 0;
          }

          if (v21 != v20)
          {
            v24 = *(Styles + 16);
            do
            {
              re::ecs2::RemoteEffectsService::removeStyleFromGroups(a1, *(v24 + 24 * v21 + 16));
              v25 = *(Styles + 32);
              v24 = *(Styles + 16);
              if (v25 <= v21 + 1)
              {
                v25 = v21 + 1;
              }

              while (v25 - 1 != v21)
              {
                LODWORD(v21) = v21 + 1;
                if ((*(v24 + 24 * v21 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }
              }

              LODWORD(v21) = v25;
LABEL_26:
              ;
            }

            while (v21 != v20);
          }

          v29 = a2;
          v26 = (a2 + 8);
          re::ecs2::RemoteEffectsStyleIdCache::removeEntity(a1 + 280, &v29);
        }

        v27 = *(a2 + 312);
        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 424, v27);
        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 376, v27);
        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 520, v27);
        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 472, v27);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::getNextPinchStateForComponentUpdate(int a1, unsigned int a2)
{
  if (a1)
  {
    if (a2 < 4)
    {
      return (0x1020101u >> (8 * (a2 & 0x1F)));
    }

    return a2;
  }

  if (a2 - 1 < 2)
  {
    LOBYTE(a2) = 3;
    return a2;
  }

  v2 = 0;
  if (a2 && a2 != 3)
  {
    return a2;
  }

  return v2;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  v8 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 32 * v12);
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + 32 * v13) = *(v6 + 32 * v13) & 0x80000000 | v8;
    }

    v9 = *(a1 + 40);
    *v7 = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

uint64_t re::ecs2::RemoteEffectsPinchStateStore::updatePinchData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = 0;
  v30[1] = 0;
  v31 = 0;
  v32 = 0;
  v30[0] = a3;
  re::DynamicArray<float *>::setCapacity(v30, 0);
  ++v32;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a1 + 32);
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
    v9 = *(a1 + 16);
    do
    {
      v10 = v9 + 32 * v6;
      if (*(v10 + 16) - 1 > 1)
      {
        re::DynamicArray<re::TransitionCondition *>::add(v30, (v10 + 8));
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v11 = *(v10 + 8);
        v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v34, a1, v11, v12 ^ (v12 >> 31));
        v13 = HIDWORD(v35);
        if (HIDWORD(v35) == 0x7FFFFFFF)
        {
          v14 = re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v35, v34);
          *(v14 + 8) = *(v10 + 8);
          *(v14 + 16) = 2;
          ++*(a1 + 40);
        }

        else
        {
          ++*(a1 + 40);
          *(v9 + 32 * v13 + 16) = 2;
        }
      }

      v15 = *(a1 + 32);
      if (v15 <= v6 + 1)
      {
        v15 = v6 + 1;
      }

      v9 = *(a1 + 16);
      while (v15 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(v9 + 32 * v6) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v6) = v15;
LABEL_22:
      ;
    }

    while (v6 != v5);
  }

  if (v31)
  {
    v16 = v33;
    v17 = 8 * v31;
    do
    {
      v18 = *v16++;
      re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1, v18);
      v17 -= 8;
    }

    while (v17);
  }

  v19 = *(a2 + 32);
  if (v19)
  {
    v20 = 0;
    v21 = *(a2 + 16);
    while (1)
    {
      v22 = *v21;
      v21 += 8;
      if (v22 < 0)
      {
        break;
      }

      if (v19 == ++v20)
      {
        LODWORD(v20) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

  LODWORD(v23) = *(a2 + 32);
  if (v20 != v19)
  {
    v24 = *(a2 + 16);
    do
    {
      re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, (v24 + 32 * v20 + 8), (v24 + 32 * v20 + 16));
      LODWORD(v23) = *(a2 + 32);
      if (v23 <= v20 + 1)
      {
        v25 = v20 + 1;
      }

      else
      {
        v25 = *(a2 + 32);
      }

      v24 = *(a2 + 16);
      while (v25 - 1 != v20)
      {
        LODWORD(v20) = v20 + 1;
        if ((*(v24 + 32 * v20) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v20) = v25;
LABEL_43:
      ;
    }

    while (v20 != v19);
  }

  if (*(a2 + 28))
  {
    v26 = *(a2 + 24);
    if (v26)
    {
      memset_pattern16(*(a2 + 8), &unk_1E304C660, 4 * v26);
      LODWORD(v23) = *(a2 + 32);
    }

    if (v23)
    {
      v27 = *(a2 + 16);
      v23 = v23;
      do
      {
        if ((*v27 & 0x80000000) != 0)
        {
          *v27 &= ~0x80000000;
        }

        v27 += 8;
        --v23;
      }

      while (v23);
    }

    *(a2 + 28) = 0;
    *(a2 + 32) = 0;
    v28 = *(a2 + 40) + 1;
    *(a2 + 36) = 0x7FFFFFFF;
    *(a2 + 40) = v28;
  }

  result = v30[0];
  if (v30[0])
  {
    if (v33)
    {
      return (*(*v30[0] + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::RemoteEffectsSystem::willAddSystemToECSService(re::ecs2::RemoteEffectsSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::RemoteEffectsService>(v2);
  *(this + 28) = result;
  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::RemoteEffectsService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::RemoteEffectsService>(BOOL)::info = re::internal::getOrCreateInfo("RemoteEffectsService", re::ecs2::allocInfo_RemoteEffectsService, re::ecs2::initInfo_RemoteEffectsService, &re::internal::introspectionInfoStorage<re::ecs2::RemoteEffectsService>, 0);
  }

  v2 = re::introspect<re::ecs2::RemoteEffectsService>(BOOL)::info;
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

void re::ecs2::RemoteEffectsSystem::willRemoveSystemFromECSService(re::ecs2::RemoteEffectsSystem *this)
{
  v1 = *(this + 28);
  if (v1)
  {
    if (*(v1 + 124))
    {
      v3 = *(v1 + 120);
      if (v3)
      {
        memset_pattern16(*(v1 + 104), &unk_1E304C660, 4 * v3);
      }

      v4 = *(v1 + 128);
      if (v4)
      {
        v5 = 0;
        for (i = 0; i < v4; ++i)
        {
          v7 = *(v1 + 112);
          v8 = *(v7 + v5);
          if (v8 < 0)
          {
            *(v7 + v5) = v8 & 0x7FFFFFFF;
            re::ecs2::RemoteEffectShaderData::~RemoteEffectShaderData((v7 + v5 + 16));
            v4 = *(v1 + 128);
          }

          v5 += 832;
        }
      }

      *(v1 + 124) = 0;
      *(v1 + 128) = 0;
      v9 = *(v1 + 136) + 1;
      *(v1 + 132) = 0x7FFFFFFF;
      *(v1 + 136) = v9;
    }

    if (*(v1 + 168))
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::__deallocate_node(v1 + 144, *(v1 + 160));
      *(v1 + 160) = 0;
      v10 = *(v1 + 152);
      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          *(*(v1 + 144) + 8 * j) = 0;
        }
      }

      *(v1 + 168) = 0;
    }

    if (*(v1 + 28))
    {
      v12 = *(v1 + 24);
      if (v12)
      {
        memset_pattern16(*(v1 + 8), &unk_1E304C660, 4 * v12);
      }

      v13 = *(v1 + 32);
      if (v13)
      {
        v14 = 0;
        for (k = 0; k < v13; ++k)
        {
          v16 = *(v1 + 16);
          v17 = *(v16 + v14);
          if (v17 < 0)
          {
            *(v16 + v14) = v17 & 0x7FFFFFFF;
            re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit((v16 + v14 + 16));
            v13 = *(v1 + 32);
          }

          v14 += 72;
        }
      }

      *(v1 + 28) = 0;
      *(v1 + 32) = 0;
      v18 = *(v1 + 40) + 1;
      *(v1 + 36) = 0x7FFFFFFF;
      *(v1 + 40) = v18;
    }

    if (*(v1 + 76))
    {
      v19 = *(v1 + 72);
      if (v19)
      {
        memset_pattern16(*(v1 + 56), &unk_1E304C660, 4 * v19);
      }

      v20 = *(v1 + 80);
      if (v20)
      {
        v21 = 0;
        for (m = 0; m < v20; ++m)
        {
          v23 = *(v1 + 64) + v21;
          v24 = *(v23 + 8);
          if (v24 < 0)
          {
            *(v23 + 8) = v24 & 0x7FFFFFFF;
            v25 = *(v23 + 16);
            if (v25)
            {

              *(v23 + 16) = 0;
              v20 = *(v1 + 80);
            }
          }

          v21 += 24;
        }
      }

      *(v1 + 76) = 0;
      *(v1 + 80) = 0;
      v26 = *(v1 + 88) + 1;
      *(v1 + 84) = 0x7FFFFFFF;
      *(v1 + 88) = v26;
    }

    *(this + 28) = 0;
  }
}

_anonymous_namespace_ *re::ecs2::RemoteEffectsSystem::willAddSceneToECSService(_anonymous_namespace_ *this, re::EventBus **a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(this + 28);
  if (v2)
  {
    v19 = 0;
    v20 = a2;
    v3 = a2[36];
    v17[1] = 0;
    v17[2] = 0;
    v18 = 0;
    v4 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v17, 8uLL);
    ++v18;
    v31 = re::globalAllocators(v4)[2];
    v5 = (*(*v31 + 32))(v31, 32, 0);
    *v5 = &unk_1F5CF4C48;
    v5[1] = v2;
    v5[2] = re::ecs2::RemoteEffectsService::onEntityRemoved;
    v5[3] = 0;
    v32 = v5;
    v27.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v3, v30, 0, 0);
    v27.n128_u64[1] = v6;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v27);
    v7 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v30);
    v28 = re::globalAllocators(v7)[2];
    v8 = (*(*v28 + 32))(v28, 32, 0);
    *v8 = &unk_1F5CF4CA0;
    v8[1] = v2;
    v8[2] = re::ecs2::RemoteEffectsService::onComponentChanged;
    v8[3] = 0;
    v29 = v8;
    v24.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v3, &v27, re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v24.n128_u64[1] = v9;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v24);
    v10 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(&v27);
    v25 = re::globalAllocators(v10)[2];
    v11 = (*(*v25 + 32))(v25, 32, 0);
    *v11 = &unk_1F5CF4CF8;
    v11[1] = v2;
    v11[2] = re::ecs2::RemoteEffectsService::onComponentAdded;
    v11[3] = 0;
    v26 = v11;
    v21.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v3, &v24, re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v21.n128_u64[1] = v12;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v21);
    v13 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(&v24);
    v22 = re::globalAllocators(v13)[2];
    v14 = (*(*v22 + 32))(v22, 32, 0);
    *v14 = &unk_1F5CF4D50;
    v14[1] = v2;
    v14[2] = re::ecs2::RemoteEffectsService::onComponentRemoved;
    v14[3] = 0;
    v23 = v14;
    v16.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, &v21, re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v16.n128_u64[1] = v15;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v16);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(&v21);
    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(v2 + 184, &v20, v17);
    this = v17[0];
    if (v17[0])
    {
      if (v19)
      {
        return (*(*v17[0] + 40))();
      }
    }
  }

  return this;
}

void *re::ecs2::RemoteEffectsSystem::willRemoveSceneFromECSService(void *this, re::ecs2::Scene *a2)
{
  v2 = this[28];
  if (v2)
  {
    v9 = a2;
    v3 = *(a2 + 36);
    this = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(v2 + 184, &v9);
    if (this)
    {
      v4 = this[2];
      if (v4)
      {
        v5 = this[4];
        v6 = &v5[2 * v4];
        do
        {
          v7 = *v5;
          v8 = v5[1];
          v5 += 2;
          re::EventBus::unsubscribe(v3, v7, v8);
        }

        while (v5 != v6);
      }

      return re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v2 + 184, &v9);
    }
  }

  return this;
}

re::RenderManager *re::ecs2::RemoteEffectsSystem::update(re::RenderManager *result, int a2)
{
  v2 = *(result + 28);
  if (v2)
  {
    result = *(v2 + 568);
    if (result)
    {
      *(v2 + 584) = *(v2 + 584) + *&a2;
      v3 = *(v2 + 128);
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 112);
        while ((*v5 & 0x80000000) == 0)
        {
          v5 += 208;
          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 128);
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
        v6 = *(v2 + 112);
        do
        {
          *(v6 + 832 * v4 + 808) = 0;
          if (v3 <= v4 + 1)
          {
            v7 = v4 + 1;
          }

          else
          {
            v7 = v3;
          }

          while (v7 - 1 != v4)
          {
            LODWORD(v4) = v4 + 1;
            if ((*(v6 + 832 * v4) & 0x80000000) != 0)
            {
              goto LABEL_18;
            }
          }

          LODWORD(v4) = v7;
LABEL_18:
          ;
        }

        while (v4 != v3);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___ZN2re4ecs220RemoteEffectsService6updateENS0_6System13UpdateContextE_block_invoke;
      v26[3] = &__block_descriptor_40_e86_v32__0_SharedPtr_re::ecs2::RemoteEffectHoverState____RemoteEffectHoverState__8_B16_B24l;
      v26[4] = v2;
      v8 = re::RenderManager::perFrameAllocator(result);
      re::ecs2::RemoteEffectsStateStore::forEachEntry(v2, v26, v8);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v23 = ___ZN2re4ecs220RemoteEffectsService6updateENS0_6System13UpdateContextE_block_invoke_25;
      v24 = &__block_descriptor_40_e16_v32__0Q8_v16_B24l;
      v25 = v2;
      v9 = re::RenderManager::perFrameAllocator(*(v2 + 568));
      v10 = v22;
      v31 = 0;
      v28[1] = 0;
      v29 = 0;
      v30 = 0;
      v28[0] = v9;
      re::DynamicArray<float *>::setCapacity(v28, 0);
      ++v30;
      v11 = *(v2 + 128);
      if (v11)
      {
        v12 = 0;
        v13 = *(v2 + 112);
        while ((*v13 & 0x80000000) == 0)
        {
          v13 += 208;
          if (v11 == ++v12)
          {
            LODWORD(v12) = *(v2 + 128);
            break;
          }
        }
      }

      else
      {
        LODWORD(v12) = 0;
      }

      while (v12 != v11)
      {
        v14 = *(v2 + 112) + 832 * v12;
        v16 = *(v14 + 8);
        v15 = (v14 + 8);
        v27 = 0;
        v23(v10, v16, (v15 + 1), &v27);
        if (v27 == 1)
        {
          re::DynamicArray<re::TransitionCondition *>::add(v28, v15);
        }

        v17 = *(v2 + 128);
        if (v17 <= v12 + 1)
        {
          v17 = v12 + 1;
        }

        while (v17 - 1 != v12)
        {
          LODWORD(v12) = v12 + 1;
          if ((*(*(v2 + 112) + 832 * v12) & 0x80000000) != 0)
          {
            goto LABEL_34;
          }
        }

        LODWORD(v12) = v17;
LABEL_34:
        ;
      }

      if (v29)
      {
        v18 = v31;
        v19 = 8 * v29;
        do
        {
          v20 = *v18++;
          re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v2 + 96, v20);
          v19 -= 8;
        }

        while (v19);
      }

      if (v28[0])
      {
        if (v31)
        {
          (*(*v28[0] + 40))(v28[0], v31);
        }
      }

      v21 = re::RenderManager::perFrameAllocator(*(v2 + 568));
      re::ecs2::RemoteEffectsPinchStateStore::updatePinchData(v2 + 424, v2 + 376, v21);
      return re::ecs2::RemoteEffectsPinchStateStore::updatePinchData(v2 + 520, v2 + 472, v21);
    }
  }

  return result;
}

void *re::ecs2::allocInfo_RemoteEffectsService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC0E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC0F8, "RemoteEffectsService");
    __cxa_guard_release(&qword_1EE1AC0E8);
  }

  return &unk_1EE1AC0F8;
}

void re::ecs2::initInfo_RemoteEffectsService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x1E3DEFFD1D104AB2;
  v8[1] = "RemoteEffectsService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x25000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_RemoteEffectsService(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RemoteEffectsService>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RemoteEffectsService>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RemoteEffectsService>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RemoteEffectsService>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultDestruct<re::ecs2::RemoteEffectsService>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 65);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 59);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 53);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 47);
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 41);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 35);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 29);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a3 + 23);
  std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::~__hash_table((a3 + 18));
  re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 12);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(a3 + 6);

  return re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3);
}

double re::internal::defaultDestructV2<re::ecs2::RemoteEffectsService>(uint64_t *a1)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 65);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 59);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 53);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 47);
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 41);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 35);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 29);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1 + 23);
  std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::~__hash_table((a1 + 18));
  re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 12);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(a1 + 6);

  return re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);
}

void *re::ecs2::allocInfo_RemoteEffectsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC0F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC188, "RemoteEffectsSystem");
    __cxa_guard_release(&qword_1EE1AC0F0);
  }

  return &unk_1EE1AC188;
}

void re::ecs2::initInfo_RemoteEffectsSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x4B4C52106E7F5E16;
  v8[1] = "RemoteEffectsSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_RemoteEffectsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RemoteEffectsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RemoteEffectsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::RemoteEffectsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::RemoteEffectsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RemoteEffectsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RemoteEffectsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::RemoteEffectsSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1, 1);
  *result = &unk_1F5CF4B38;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::RemoteEffectsSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1, 1);
  *result = &unk_1F5CF4B38;
  result[28] = 0;
  return result;
}

void re::ecs2::RemoteEffectsSystem::~RemoteEffectsSystem(re::ecs2::RemoteEffectsSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t (***re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void re::ecs2::entityAndDescendantsRecurse(void *a1, unint64_t *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v18 = a1[39];
    v19 = 0;
    HIBYTE(v17) = 0;
    (*(v5 + 2))(v5, a1, &v17 + 7, &v18);
    v7 = *a2 + 1;
    *a2 = v7;
    if ((v17 & 0x100000000000000) == 0 && v7 <= 0x80)
    {
      v8 = a1[43];
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = a1[43];
          if (v10 <= i)
          {
            v20 = 0;
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

            v24 = 797;
            v25 = 2048;
            v26 = i;
            v27 = 2048;
            v28 = v10;
            _os_log_send_and_compose_impl(v16, &v20, v29, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v17, v18);
            _os_crash_msg();
            __break(1u);
          }

          v11 = *(a1[45] + 8 * i);
          if (v11)
          {
            v12 = v11 + 1;
            re::ecs2::entityAndDescendantsRecurse(v11, a2, v6);
            v13 = *a2;

            if (v13 > 0x7F)
            {
              break;
            }
          }

          else
          {

            if (*a2 >= 0x80)
            {
              break;
            }
          }
        }
      }
    }
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,void (re::ecs2::RemoteEffectsService::*)(re::ecs2::RemoteEffectHoverState &),void ()(re::ecs2::RemoteEffectHoverState &)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,void (re::ecs2::RemoteEffectsService::*)(re::ecs2::RemoteEffectHoverState &),void ()(re::ecs2::RemoteEffectHoverState &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4BE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,void (re::ecs2::RemoteEffectsService::*)(re::ecs2::RemoteEffectHoverState &),void ()(re::ecs2::RemoteEffectHoverState &)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4BE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4C48;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4C48;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4CA0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4CA0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4CF8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4CF8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4D50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4D50;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

BOOL re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 72 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 72 * v5) = *(v6 + 72 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 72 * v8);
    v11 = *v10;
    if ((*v10 & 0x80000000) != 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v10 + 2);
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 72 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 72 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 6), *(v7 + v5 + 64));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(v8 + 16) = 0u;
        v8 += 16;
        *(v8 - 8) = v10;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v8, (v9 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v26, v9, v8);
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
                v18 = re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24), *(v13 + 64));
                v19 = *(v13 + 8);
                *(v18 + 16) = 0u;
                v18 += 16;
                *(v18 - 8) = v19;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v18, (v13 + 16));
              }

              ++v17;
              v13 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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
    v21 = *(v20 + 72 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 72 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 72 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 64) = a3;
  ++*(a1 + 28);
  return v20 + 72 * v5;
}

uint64_t re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::findEntry<re::ecs2::RemoteEffectHitTestSource>@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v8 = *a2;
  if (*(v7 + 24 * v6 + 4) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v9 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 24 * v9 + 4) == v8)
      {
        break;
      }

      v9 = *(v7 + 24 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_6;
      }
    }

    v5 = v9;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v26, v9, v8);
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
            v18 = (v13 + 8);
            do
            {
              if ((*(v18 - 1) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24), v18[1]);
                *(v19 + 4) = *(v18 - 4);
                *(v19 + 8) = *v18;
                *v18 = 0;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit(v26);
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
    v21 = *(v20 + 24 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 24 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 16) = a3;
  ++*(a1 + 28);
  return v20 + 24 * v5;
}

BOOL re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 72 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 72 * v5) = *(v6 + 72 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 72 * v8);
    v11 = *v10;
    if ((*v10 & 0x80000000) != 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit(v10 + 2);
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 72 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 72 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 24 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 24 * v5) = *(v6 + 24 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 24 * v9) = *(*(a1 + 16) + 24 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

_OWORD *re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(void *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v14 = a1 + 3;
        if (v7)
        {
          v15 = (a1 + 3);
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = 16 * v9;
          do
          {
            v17 = *v15++;
            *v14++ = v17;
            v16 -= 16;
          }

          while (v16);
          result = *a1;
        }

        result = (*(*result + 40))(result);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 60)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 16, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v22, v24);
        __break(1u);
      }

      else
      {
        v2 = 16 * a2;
        result = (*(*result + 32))(result, 16 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = (a1 + 3);
          }

          else
          {
            v13 = a1[4];
          }

          v18 = a1[1];
          if (v18)
          {
            v19 = 16 * v18;
            v20 = result;
            do
            {
              v21 = *v13++;
              *v20++ = v21;
              v19 -= 16;
            }

            while (v19);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash("assertion failure: (newData) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", v23, v25);
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 832 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 832 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 832 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 832 * v8) & 0x7FFFFFFF;
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = a1[2];
          *&v27[16] = v13;
          a1[2] = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 3);
          v14 = *&v27[32];
          *(a1 + 3) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 816) % *(a1 + 6), *(v13 + 816));
                *(v18 + 8) = *(v13 + 8);
                memcpy((v18 + 16), (v13 + 16), 0x310uLL);
                v19 = *(v13 + 800);
                *(v18 + 800) = v19;
                if (v19)
                {
                  v20 = (v19 + 8);
                }

                *(v18 + 808) = *(v13 + 808);
              }

              ++v17;
              v13 += 832;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v21 = a1[2];
    v22 = *(v21 + 832 * v5);
  }

  else
  {
    v21 = a1[2];
    v22 = *(v21 + 832 * v5);
    *(a1 + 9) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 832 * v5;
  *v24 = v22 | 0x80000000;
  v25 = a1[1];
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 816) = a3;
  ++*(a1 + 7);
  return v21 + 832 * v5;
}

void re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 832 * v10, 16);
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

void re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 88, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF4DA8;
  *a1 = v3;
}

void re::ecs2::RemoteEffectAnimationNode::~RemoteEffectAnimationNode(re::ecs2::RemoteEffectAnimationNode *this)
{
  *this = &unk_1F5CF4DA8;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF4DA8;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::HashSetBase<re::ecs2::RemoteEffectsGroupEntry,re::ecs2::RemoteEffectsGroupEntry,re::internal::ValueAsKey<re::ecs2::RemoteEffectsGroupEntry>,re::Hash<re::ecs2::RemoteEffectsGroupEntry>,re::EqualTo<re::ecs2::RemoteEffectsGroupEntry>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, void *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v7 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v25, v11, v10);
          v13 = *v25;
          *v25 = *a1;
          *a1 = v13;
          v14 = *&v25[16];
          v15 = *(a1 + 16);
          *&v25[16] = v15;
          *(a1 + 16) = v14;
          v17 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v16 = *&v25[32];
          *(a1 + 24) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = 0;
            v20 = (v15 + 16);
            do
            {
              if ((*(v20 - 1) & 0x80000000) != 0)
              {
                re::HashSetBase<re::ecs2::RemoteEffectsGroupEntry,re::ecs2::RemoteEffectsGroupEntry,re::internal::ValueAsKey<re::ecs2::RemoteEffectsGroupEntry>,re::Hash<re::ecs2::RemoteEffectsGroupEntry>,re::EqualTo<re::ecs2::RemoteEffectsGroupEntry>,true,false>::addAsMove(a1, *(v20 - 2) % *(a1 + 24), *(v20 - 2), v20);
              }

              ++v19;
              v20 += 3;
            }

            while (v19 < v18);
          }

          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v10)
        {
          v23 = v10;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v7 + 8);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v7 + 8);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  *(v21 + 24 * v7 + 8) = v22 | 0x80000000;
  v24 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v7 + 8) = *(*(a1 + 16) + 24 * v7 + 8) & 0x80000000 | *(v24 + 4 * a2);
  *(*(a1 + 16) + 24 * v7) = a3;
  *(*(a1 + 16) + 24 * v7 + 16) = *a4;
  *(v24 + 4 * a2) = v7;
  ++*(a1 + 28);
}

uint64_t re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 8) % *(a1 + 24), *(v18 + 8));
                *(v19 + 8) = *(v18 - 8);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 32;
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

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

double re::ecs2::RemoteEffectsService::RemoteEffectsService(re::ecs2::RemoteEffectsService *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 36) = 0x7FFFFFFFLL;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 84) = 0x7FFFFFFFLL;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 132) = 0x7FFFFFFFLL;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 44) = 1065353216;
  *(this + 54) = 0;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 220) = 0x7FFFFFFFLL;
  *(this + 66) = 0;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 268) = 0x7FFFFFFFLL;
  *(this + 78) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 316) = 0x7FFFFFFFLL;
  *(this + 90) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 364) = 0x7FFFFFFFLL;
  *(this + 102) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 412) = 0x7FFFFFFFLL;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 114) = 0;
  *(this + 460) = 0x7FFFFFFFLL;
  *(this + 126) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 508) = 0x7FFFFFFFLL;
  *(this + 138) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 556) = 0x7FFFFFFFLL;
  *(this + 73) = 0;
  *(this + 568) = 0u;
  return result;
}

void *re::ecs2::allocInfo_DeferredActivationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_311, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_311))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC230, "DeferredActivationComponent");
    __cxa_guard_release(&_MergedGlobals_311);
  }

  return &unk_1EE1AC230;
}

void re::ecs2::initInfo_DeferredActivationComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x1A4B35CD4BE33410;
  v16[1] = "DeferredActivationComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AC228, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC228))
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
    qword_1EE1AC220 = v14;
    __cxa_guard_release(&qword_1EE1AC228);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AC220;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DeferredActivationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DeferredActivationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DeferredActivationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DeferredActivationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227DeferredActivationComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void re::internal::defaultConstruct<re::ecs2::DeferredActivationComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE4ED0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::DeferredActivationComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE4ED0;
  *(v1 + 32) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227DeferredActivationComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_RayCastSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_312, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_312))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC2C8, "RayCastSystem");
    __cxa_guard_release(&_MergedGlobals_312);
  }

  return &unk_1EE1AC2C8;
}

void re::ecs2::initInfo_RayCastSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x47E5E3E009048BF0;
  v8[1] = "RayCastSystem";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0xF000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_RayCastSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RayCastSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RayCastSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::RayCastSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::RayCastSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RayCastSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RayCastSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::internal::defaultConstruct<re::ecs2::RayCastSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CF4DF0;
  result[28] = 0;
  result[29] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::RayCastSystem>(_OWORD *a1)
{
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CF4DF0;
  result[28] = 0;
  result[29] = 0;
  return result;
}

_anonymous_namespace_ *re::ecs2::RayCastSystem::willAddSystemToECSService(re::ecs2::RayCastSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(v3);
  *(this + 29) = result;
  return result;
}

uint64_t re::ecs2::RayCastSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

void *re::ecs2::RayCastSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = *MEMORY[0x1E69E9840];
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v83);
  if (*(a1 + 224))
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v72 = &v6[v5];
      v7 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v73 = a1;
      while (1)
      {
        v75 = *v6;
        v8 = re::ecs2::SceneComponentTable::get((*v6 + 200), v7[68]);
        v74 = v6;
        v9 = v8 ? *(v8 + 384) : 0;
        v10 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v96, 3049, a1, v9, 0, 0);
        v11 = re::ecs2::SceneComponentTable::get((v75 + 200), v7[68]);
        if (v11)
        {
          v14 = *(v11 + 384);
          if (v14)
          {
            break;
          }
        }

LABEL_59:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v96, v12, v13);
        v6 = v74 + 1;
        v7 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        if (v74 + 1 == v72)
        {
          return re::ProfilerTimeGuard<(re::ProfilerStatistic)121>::end(v83);
        }
      }

      v15 = *(v11 + 400);
      v16 = &v15[v14];
      v76 = v16;
      while (1)
      {
        v17 = *v15;
        v18 = (*v15)[1].i64[0];
        if (*(v18 + 304))
        {
          if (v17[5].i32[0])
          {
            break;
          }
        }

LABEL_58:
        if (++v15 == v16)
        {
          goto LABEL_59;
        }
      }

      re::TransformService::worldMatrix(*(a1 + 232), (*v15)[1].i64[0], 0, &v92);
      v19 = v17[2];
      v20 = vaddq_f32(v95, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v19.f32[0]), v93, *v19.f32, 1), v94, v19, 2));
      v82 = vdivq_f32(v20, vdupq_laneq_s32(v20, 3));
      v21 = vaddq_f32(v19, vmulq_n_f32(v17[3], v17[4].f32[0]));
      v22 = vaddq_f32(v95, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, v21.f32[0]), v93, *v21.f32, 1), v94, v21, 2));
      v81 = vdivq_f32(v22, vdupq_laneq_s32(v22, 3));
      v86[0] = 0;
      v86[1] = 0;
      v87 = 1;
      v89 = 0;
      v90 = 0;
      v88 = 0;
      v91 = 0;
      v23 = vsubq_f32(v81, v82);
      v24 = vmulq_f32(v23, v23);
      if (fabsf(v24.f32[2] + vaddv_f32(*v24.f32)) >= 0.00001)
      {
        v25 = (*(**(a1 + 224) + 32))(*(a1 + 224), v75);
        if (v25)
        {
          v26 = v25;
          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v99, v25, 0);
          v27 = v99;
          v84 = v99;
          v85 = DWORD2(v99);
          v28 = WORD4(v99);
          v29 = HIWORD(DWORD2(v99));
          if (v26 != v99 || WORD4(v99) != 0xFFFF || v29 != 0xFFFF)
          {
            v79 = vdupq_laneq_s32(v82, 2);
            v80 = vdupq_lane_s32(*v82.f32, 1);
            v77 = vdupq_laneq_s32(v81, 2);
            v78 = vdupq_lane_s32(*v81.f32, 1);
            do
            {
              v32 = v29;
              v33 = *(v27 + 16);
              if (v33 <= v29)
              {
                v97 = 0;
                v102 = 0u;
                v103 = 0u;
                v100 = 0u;
                v101 = 0u;
                v99 = 0u;
                v68 = MEMORY[0x1E69E9C10];
                v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v98 = 136315906;
                *&v98[4] = "operator[]";
                *&v98[12] = 1024;
                if (v69)
                {
                  v70 = 3;
                }

                else
                {
                  v70 = 2;
                }

                *&v98[14] = 797;
                *&v98[18] = 2048;
                *&v98[20] = v32;
                *&v98[28] = 2048;
                *&v98[30] = v33;
                _os_log_send_and_compose_impl(v70, &v97, &v99, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v98, 38, v71, v72);
                _os_crash_msg();
                __break(1u);
              }

              v34 = *(*(v27 + 32) + 16 * v29) + 272 * v28;
              if (*(v34 + 16))
              {
                v35 = *(v34 + 176);
                v36 = *(v34 + 192);
                v37 = *(v34 + 208);
                v38 = *(v34 + 224);
                v39 = vaddq_f32(v38, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v35, v82.f32[0]), v80, v36), v79, v37));
                v40 = vdivq_f32(v39, vdupq_laneq_s32(v39, 3));
                v41 = vaddq_f32(v38, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v35, v81.f32[0]), v78, v36), v77, v37));
                v42 = vsubq_f32(vdivq_f32(v41, vdupq_laneq_s32(v41, 3)), v40);
                v43 = vmulq_f32(v42, v42);
                v43.f32[0] = v43.f32[2] + vaddv_f32(*v43.f32);
                *v38.f32 = vrsqrte_f32(v43.u32[0]);
                *v38.f32 = vmul_f32(*v38.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v38.f32, *v38.f32)));
                *v98 = v40;
                *&v98[16] = vmulq_n_f32(v42, vmul_f32(*v38.f32, vrsqrts_f32(v43.u32[0], vmul_f32(*v38.f32, *v38.f32))).f32[0]);
                *&v98[32] = sqrtf(v43.f32[0]);
                v99 = 0uLL;
                LODWORD(v100) = 1;
                v101 = 0uLL;
                *(&v100 + 1) = 0;
                LODWORD(v102) = 0;
                (*(**(*(v34 + 16) + 56) + 56))(*(*(v34 + 16) + 56), v98, v17 + 6, &v99);
                v44 = *(&v101 + 1);
                if (*(&v101 + 1))
                {
                  v45 = 0;
                  do
                  {
                    v46 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](&v99, v45);
                    v47 = vaddq_f32(*(v34 + 160), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(v34 + 112), COERCE_FLOAT(*(v46 + 16))), *(v34 + 128), *(v46 + 16), 1), *(v34 + 144), *(v46 + 16), 2));
                    *(v46 + 16) = vdivq_f32(v47, vdupq_laneq_s32(v47, 3));
                    v105 = __invert_f3(*(v34 + 112));
                    v48 = vzip2q_s32(v105.columns[0], v105.columns[2]);
                    v49 = vzip1q_s32(vzip1q_s32(v105.columns[0], v105.columns[2]), v105.columns[1]);
                    v105.columns[0] = vtrn2q_s32(v105.columns[0], v105.columns[1]);
                    v105.columns[0].i32[2] = v105.columns[2].i32[1];
                    *(v46 + 32) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49, COERCE_FLOAT(*(v46 + 32))), v105.columns[0], *(v46 + 32), 1), vzip1q_s32(v48, vdupq_laneq_s32(v105.columns[1], 2)), *(v46 + 32), 2);
                    v50 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(v86);
                    *v50 = *v46;
                    v51 = *(v46 + 64);
                    v53 = *(v46 + 16);
                    v52 = *(v46 + 32);
                    v50[3] = *(v46 + 48);
                    v50[4] = v51;
                    v50[1] = v53;
                    v50[2] = v52;
                    ++v45;
                  }

                  while (v44 != v45);
                }

                re::BucketArray<re::CollisionCastHit,10ul>::deinit(&v99);
                if (v99 && (v100 & 1) == 0)
                {
                  (*(*v99 + 40))();
                }
              }

              re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v84);
              v27 = v84;
              v28 = v85;
              v29 = HIWORD(v85);
            }

            while (v84 != v26 || v85 != 0xFFFF || HIWORD(v85) != 0xFFFF);
          }

          a1 = v73;
        }
      }

      v54 = re::ecs2::EntityComponentCollection::getOrAdd((v18 + 48), re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      v55 = v54;
      if (v90)
      {
        v56 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](v86, 0);
        v57 = *(*v56 + 40);
        v58 = vmvnq_s8(vceqq_f32(v55[2], *(v56 + 16)));
        v58.i32[3] = v58.i32[2];
        v59 = vmaxvq_u32(v58);
        if ((v59 & 0x80000000) != 0)
        {
          v55[2] = *(v56 + 16);
        }

        v61 = *(v56 + 32);
        v60 = (v56 + 32);
        v62 = vmvnq_s8(vceqq_f32(v55[3], v61));
        v62.i32[3] = v62.i32[2];
        if ((vmaxvq_u32(v62) & 0x80000000) != 0)
        {
          v55[3] = *v60;
          v63 = 1;
        }

        else
        {
          v63 = v59 >> 31;
        }

        v64 = v55[4].i64[0];
        if (v64)
        {
          v65 = v57 + 8;
          if (!v57)
          {
            v65 = 0;
          }

          if (v64 == v65)
          {
            goto LABEL_48;
          }
        }

        re::ecs2::EntityHandle::operator=(&v55[4], v57);
      }

      else
      {
        *(v54 + 32) = 0x7FC000007FC00000;
        *(v54 + 40) = 2143289344;
        *(v54 + 48) = 0x7FC000007FC00000;
        *(v54 + 56) = 2143289344;
        v63 = 1;
        if (re::ecs2::EntityHandle::isNull((v54 + 64)))
        {
          goto LABEL_48;
        }

        re::ecs2::EntityHandle::reset(&v55[4]);
        objc_destroyWeak(&v55[4]);
        v55[4].i64[0] = 0;
      }

      v63 = 1;
LABEL_48:
      v66 = *(v18 + 216);
      if (v63 && v66)
      {
        re::ecs2::NetworkComponent::markDirty(v66, v55);
      }

      if (v17[5].i32[0] == 1)
      {
        v17[5].i32[0] = 0;
        if (v66)
        {
          re::ecs2::NetworkComponent::markDirty(v66, v55);
        }
      }

      re::BucketArray<re::CollisionCastHit,10ul>::deinit(v86);
      if (v86[0] && (v87 & 1) == 0)
      {
        (*(*v86[0] + 40))();
      }

      v16 = v76;
      goto LABEL_58;
    }
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)121>::end(v83);
}

void re::ecs2::RayCastSystem::~RayCastSystem(re::ecs2::RayCastSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ImagePresentationTextureProcessor *re::ImagePresentationTextureProcessor::ImagePresentationTextureProcessor(re::ImagePresentationTextureProcessor *this, uint64_t a2)
{
  *this = 0;
  v3 = re::ImagePresentationTextureProcessor::initializeSession(this, a2);
  if (v3)
  {
    v4 = *re::imagePresentationLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Unable to initialize ImagePresentationTextureProcessorMetalSession", v6, 2u);
    }
  }

  return this;
}

BOOL re::ImagePresentationTextureProcessor::initializeSession(re::ImagePresentationTextureProcessor *this, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "alloc and init: ImagePresentationTextureProcessorMetalSession (shaders: %d)", v9, 8u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [[TextureProcessorMetalSession alloc] initWithLoadingBundlePipelines:a2];
  *this = v6;
  v7 = v6 == 0;
  objc_autoreleasePoolPop(v5);
  return v7;
}

void *re::ImagePresentationTextureProcessor::generateSpatialPhotoMixedLightSpillTexture(id *this, const re::TextureAsset *a2)
{
  v3 = this;
  if (!*this)
  {
    this = re::ImagePresentationTextureProcessor::initializeSession(this, 1);
    if (this)
    {
      v12 = *re::imagePresentationLogObjects(this);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Unable to initialize ImagePresentationTextureProcessorMetalSession. Abort light spill texture generation.", v16, 2u);
      }

      return 0;
    }
  }

  v4 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Begins to generate a spatial photo light spill texture.", v16, 2u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *v3;
  if (!*(a2 + 30))
  {
    v8 = v6;
    LODWORD(v7) = 4.0;
    v9 = [v6 makeSpatialPhotoMixedLightSpillTextureFrom:*(a2 + 14) blurSigma:64 resolution:v7];
    v10 = v9;
    v24 = v9;
    v25 = 0;
    if (v9)
    {
    }

    *v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0u;
    memset(v21, 0, 28);
    v22 = 0;
    v23 = 0;
    TextureAsset = re::TextureAsset::makeTextureAsset(&v24, v16, 3, 0);
    if (*&v21[0])
    {
      if (v22)
      {
        (*(**&v21[0] + 40))();
      }

      v22 = 0;
      memset(v21, 0, 24);
      ++DWORD2(v21[1]);
    }

    if (v20)
    {
    }

    if (v25 != -1)
    {
      (off_1F5CF4E70[v25])(v16, &v24);
    }

    objc_autoreleasePoolPop(v5);
    return TextureAsset;
  }

  v14 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::ImagePresentationTextureProcessor::generateAlchemistAnimationLoadingTexture(v14, v15);
}

void *re::ImagePresentationTextureProcessor::generateAlchemistAnimationLoadingTexture(re::ImagePresentationTextureProcessor *this, const re::TextureAsset *a2)
{
  if (!*this)
  {
    v18 = re::ImagePresentationTextureProcessor::initializeSession(this, 1);
    if (v18)
    {
      v19 = *re::imagePresentationLogObjects(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25[0]) = 0;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Unable to initialize ImagePresentationTextureProcessorMetalSession. Abort Alchemist animation blur texture generation.", v25, 2u);
      }

      return 0;
    }
  }

  re::Defaults::intValue(v25, "ipc.mxi.enableOverrides", a2);
  v6 = 256;
  if (LOBYTE(v25[0]) != 1 || HIDWORD(v25[0]) == 0)
  {
    v8 = 3.0;
  }

  else
  {
    re::Defaults::floatValue(v25, "ipc.mxi.generation.loadingTextureBlurSigma", v5);
    if (LOBYTE(v25[0]))
    {
      v8 = *(v25 + 1);
    }

    else
    {
      v8 = 3.0;
    }

    re::Defaults::intValue(v25, "ipc.mxi.generation.loadingTextureResolution", v9);
    if (LOBYTE(v25[0]))
    {
      v6 = HIDWORD(v25[0]);
    }

    else
    {
      v6 = 256;
    }
  }

  v10 = *re::imagePresentationLogObjects(v4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25[0]) = 0;
    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Begins to generate the blur texture for Alchemist animation.", v25, 2u);
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *this;
  if (!*(a2 + 30))
  {
    v14 = v12;
    *&v13 = v8;
    v15 = [v12 makeAlchemistAnimationLoadingTextureFrom:*(a2 + 14) blurSigma:v6 resolution:v13];
    v16 = v15;
    v30 = v15;
    v31 = 0;
    if (v15)
    {
    }

    LOWORD(v25[0]) = 0;
    memset(&v25[1], 0, 24);
    v26 = 0u;
    memset(v27, 0, 28);
    v28 = 0;
    v29 = 0;
    TextureAsset = re::TextureAsset::makeTextureAsset(&v30, v25, 3, 0);
    if (*&v27[0])
    {
      if (v28)
      {
        (*(**&v27[0] + 40))();
      }

      v28 = 0;
      memset(v27, 0, 24);
      ++DWORD2(v27[1]);
    }

    if (v26)
    {
    }

    if (v31 != -1)
    {
      (off_1F5CF4E70[v31])(v25, &v30);
    }

    objc_autoreleasePoolPop(v11);
    return TextureAsset;
  }

  v21 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::ImagePresentationTextureProcessor::generateMXIGlowrayBackingTexture(v21, v22, v23, v24);
}

void *re::ImagePresentationTextureProcessor::generateMXIGlowrayBackingTexture(id *this, const re::TextureAsset *a2, float a3, float a4)
{
  v7 = this;
  if (!*this)
  {
    this = re::ImagePresentationTextureProcessor::initializeSession(this, 1);
    if (this)
    {
      v17 = *re::imagePresentationLogObjects(this);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Unable to initialize ImagePresentationTextureProcessorMetalSession. Abort glowray texture generation.", v20, 2u);
      }

      return 0;
    }
  }

  v8 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Begins to generate the glowray texture for Alchemist.", v20, 2u);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *v7;
  if (!*(a2 + 30))
  {
    v13 = v10;
    *&v11 = a3;
    *&v12 = a4;
    v14 = [v10 makeAlchemistGlowrayTextureFrom:*(a2 + 14) insetSamplePercent:v11 cornerRadius:v12];
    v15 = v14;
    v28 = v14;
    v29 = 0;
    if (v14)
    {
    }

    *v20 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v24 = 0u;
    memset(v25, 0, 28);
    v26 = 0;
    v27 = 0;
    TextureAsset = re::TextureAsset::makeTextureAsset(&v28, v20, 3, 0);
    if (*&v25[0])
    {
      if (v26)
      {
        (*(**&v25[0] + 40))();
      }

      v26 = 0;
      memset(v25, 0, 24);
      ++DWORD2(v25[1]);
    }

    if (v24)
    {
    }

    if (v29 != -1)
    {
      (off_1F5CF4E70[v29])(v20, &v28);
    }

    objc_autoreleasePoolPop(v9);
    return TextureAsset;
  }

  v19 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::ecs2::allocInfo_AudioLibraryComponent(v19);
}

void *re::ecs2::allocInfo_AudioLibraryComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC360))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC3D8, "AudioLibraryComponent");
    __cxa_guard_release(&qword_1EE1AC360);
  }

  return &unk_1EE1AC3D8;
}

void re::ecs2::initInfo_AudioLibraryComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v19[0] = 0xFBB6D340A487FCB0;
  v19[1] = "AudioLibraryComponent";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&qword_1EE1AC368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC368))
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
    qword_1EE1AC378 = v14;
    v15 = re::introspectionAllocator();
    re::IntrospectionInfo<re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v15, v16);
    v17 = (*(*v15 + 32))(v15, 72, 8);
    *v17 = 1;
    *(v17 + 8) = "resources";
    *(v17 + 16) = &qword_1EE1AC388;
    *(v17 + 24) = 0;
    *(v17 + 32) = 0x2000000001;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0;
    *(v17 + 64) = 0;
    qword_1EE1AC380 = v17;
    __cxa_guard_release(&qword_1EE1AC368);
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AC378;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioLibraryComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioLibraryComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioLibraryComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioLibraryComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AudioLibraryComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v18 = v20;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AC370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC370))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AC388);
    qword_1EE1AC388 = &unk_1F5CF4E90;
    __cxa_guard_release(&qword_1EE1AC370);
  }

  if ((_MergedGlobals_313 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::introspect_AssetHandle(1, v3);
    if ((_MergedGlobals_313 & 1) == 0)
    {
      v5 = v4;
      _MergedGlobals_313 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AC388, 0);
      qword_1EE1AC398 = 0x3000000007;
      dword_1EE1AC3A0 = v6;
      word_1EE1AC3A4 = 0;
      *&xmmword_1EE1AC3A8 = 0;
      *(&xmmword_1EE1AC3A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AC3B8 = v2;
      unk_1EE1AC3C0 = 0;
      qword_1EE1AC3C8 = v5;
      unk_1EE1AC3D0 = 0;
      qword_1EE1AC388 = &unk_1F5CF4E90;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&v23, &qword_1EE1AC388);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AC3A8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::AudioLibraryComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDA3B0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioLibraryComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDA3B0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  return result;
}

void re::ecs2::AudioLibraryComponent::registerAudioAsset(uint64_t a1, const re::AssetHandle *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1 + 32, a3, a2);
  v7 = *re::audioLogObjects(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = re::AssetHandle::assetInfo(a2);
    v10 = v9[18];
    if ((v9[17] & 1) == 0)
    {
      v10 = v9 + 137;
    }

    if (*(a3 + 8))
    {
      v11 = *(a3 + 16);
    }

    else
    {
      v11 = a3 + 9;
    }

    v12 = *(*(a1 + 16) + 312);
    v13 = 136315650;
    v14 = v10;
    v15 = 2080;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "[CoreRE] [AudioLibraryComponent] registered asset='%s' with name %s (entityID=%llu).", &v13, 0x20u);
  }
}

void re::ecs2::AudioLibraryComponent::unregisterAudioAsset(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 32, a2);
  v5 = *re::audioLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 8))
    {
      v6 = *(a2 + 16);
    }

    else
    {
      v6 = a2 + 9;
    }

    v7 = *(*(a1 + 16) + 312);
    v8 = 136315394;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "[CoreRE] [AudioLibraryComponent] unregistered asset with name %s (entityID=%llu).", &v8, 0x16u);
  }
}

const re::AssetHandle *re::ecs2::AudioLibraryComponent::getAsset@<X0>(uint64_t a1@<X0>, void *a2@<X1>, re::AssetHandle *a3@<X8>)
{
  result = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 32, a2);
  if (result)
  {
    result = re::AssetHandle::AssetHandle(a3, result);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 24) = v5;
  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  memset(v10, 0, sizeof(v10));
  v8 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v10);
  re::AssetHandle::~AssetHandle(v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 18;
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

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 72 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 72 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 72;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t *re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v20, a2);
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v17);
  v7 = HIDWORD(v18);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v18, v17);
    re::DynamicString::DynamicString((v8 + 1), a2);
    v8[5] = 0;
    v8[6] = 0;
    v9 = v8 + 5;
    v9[2] = 0;
    v9[1] = a3[1];
    a3[1] = 0;
    v10 = *v9;
    *v9 = 0;
    *v9 = *a3;
    *a3 = v10;
    v11 = v9[2];
    v9[2] = a3[2];
    a3[2] = v11;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v12 = *(a1 + 16) + 72 * v7;
    v13 = *(v12 + 48);
    *(v12 + 48) = a3[1];
    a3[1] = v13;
    v14 = *(v12 + 40);
    v9 = (v12 + 40);
    *v9 = 0;
    *v9 = *a3;
    *a3 = v14;
    v15 = v9[2];
    v9[2] = a3[2];
    a3[2] = v15;
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(a1, a3, 3);
  }
}

uint64_t *re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 72 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 18;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 72 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 72 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
    __break(1u);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221AudioLibraryComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_SpatialSceneClassificationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC470))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC490, "SpatialSceneClassificationComponent");
    __cxa_guard_release(&qword_1EE1AC470);
  }

  return &unk_1EE1AC490;
}

void re::ecs2::initInfo_SpatialSceneClassificationComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x70160EC3AACD711ELL;
  v24[1] = "SpatialSceneClassificationComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&_MergedGlobals_314, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_314))
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
    qword_1EE1AC478 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_SpatialSceneClassificationType(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_spatialSceneClassification";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000002;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1AC480 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::IntrospectionInfo<unsigned char [16]>::get(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "m_spatialSceneRoomIdentifier";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000003;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1AC488 = v22;
    __cxa_guard_release(&_MergedGlobals_314);
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AC478;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialSceneClassificationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialSceneClassificationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialSceneClassificationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialSceneClassificationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs235SpatialSceneClassificationComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

void re::internal::defaultConstruct<re::ecs2::SpatialSceneClassificationComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF4F30;
  *(v3 + 33) = 0;
  *(v3 + 25) = 0;
  *(v3 + 40) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SpatialSceneClassificationComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF4F30;
  *(v1 + 33) = 0;
  *(v1 + 25) = 0;
  *(v1 + 40) = 0;
}

void re::ecs2::SpatialSceneClassificationComponent::setSpatialSceneClassification(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 25);
    v5[0] = 67109376;
    v5[1] = v4;
    v6 = 1024;
    v7 = a2;
    _os_log_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RE/ECS] [SpatialScene] SpatialSceneClassificationComponent: Classification changed from [%hhu] -> [%hhu].", v5, 0xEu);
  }

  *(a1 + 25) = a2;
  *(a1 + 42) = 0;
}

void re::ecs2::SpatialSceneClassificationComponent::setSpatialSceneRoomIdentifier(re::ecs2::SpatialSceneClassificationComponent *this, const unsigned __int8 *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(out, 0, 37);
  uuid_unparse(this + 26, out);
  *(this + 26) = *a2;
  memset(v8, 0, 37);
  uuid_unparse(this + 26, v8);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = out;
    v6 = 2080;
    v7 = v8;
    _os_log_impl(&dword_1E1C61000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RE/ECS] [SpatialScene] SpatialSceneClassificationComponent: Room UUID changed from [%s] -> [%s]", &v4, 0x16u);
  }

  *(this + 43) = 0;
}

void re::ecs2::SpatialSceneClassificationComponent::~SpatialSceneClassificationComponent(re::ecs2::SpatialSceneClassificationComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs235SpatialSceneClassificationComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

double re::ecs2::MeshOffsetsAttributes::add(re::ecs2::MeshOffsetsAttributes *this, const re::MeshAsset *a2, unsigned int a3, unsigned int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 79);
  if (v4)
  {
    v5 = a3;
    v6 = *(a2 + 71);
    if (v6 <= a3)
    {
      v26 = 0;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      v14 = MEMORY[0x1E69E9C10];
      v27 = 136315906;
      v28 = "operator[]";
      v29 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      v30 = 797;
      v31 = 2048;
      v32 = v5;
      v33 = 2048;
      v34 = v6;
      _os_log_send_and_compose_impl(v15, &v26, &v35, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v7 = *(*(a2 + 73) + 8 * a3);
      v5 = WORD1(v7);
      v6 = v4[11];
      if (v6 > WORD1(v7))
      {
        v8 = *(*(v4[13] + 16 * WORD1(v7)) + 144 * v7 + 16);
        v5 = WORD1(v8);
        v6 = v4[3];
        if (v6 > WORD1(v8))
        {
          v9 = *(v4[5] + 16 * WORD1(v8)) + 864 * v8;
          v5 = a4;
          v6 = *(v9 + 56);
          if (v6 > a4)
          {
            v11 = *(*(v9 + 64) + 544 * a4 + 452);
            re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(this, *(this + 2) + 1);
            v12 = *(this + 4) + 192 * *(this + 2);
            re::DynamicArray<float>::resize(v12 - 192, (3 * v11));
            *(v12 - 16) = 0;
            *&result = 1065353216;
            *(v12 - 144) = xmmword_1E3047670;
            *(v12 - 128) = xmmword_1E3047680;
            *(v12 - 112) = xmmword_1E30476A0;
            *(v12 - 96) = xmmword_1E30474D0;
            *(v12 - 80) = xmmword_1E3047670;
            *(v12 - 64) = xmmword_1E3047680;
            *(v12 - 48) = xmmword_1E30476A0;
            *(v12 - 32) = xmmword_1E30474D0;
            return result;
          }

LABEL_20:
          v26 = 0;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v35 = 0u;
          v22 = MEMORY[0x1E69E9C10];
          v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v27 = 136315906;
          v28 = "operator[]";
          v29 = 1024;
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          v30 = 476;
          v31 = 2048;
          v32 = v5;
          v33 = 2048;
          v34 = v6;
          _os_log_send_and_compose_impl(v24, &v26, &v35, 80, &dword_1E1C61000, v22, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
          _os_crash_msg();
          __break(1u);
        }

LABEL_16:
        v26 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        v19 = MEMORY[0x1E69E9C10];
        v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        if (v20)
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v30 = 797;
        v31 = 2048;
        v32 = v5;
        v33 = 2048;
        v34 = v6;
        _os_log_send_and_compose_impl(v21, &v26, &v35, 80, &dword_1E1C61000, v19, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
        _os_crash_msg();
        __break(1u);
        goto LABEL_20;
      }
    }

    v26 = 0;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v35 = 0u;
    v16 = MEMORY[0x1E69E9C10];
    v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    if (v17)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v30 = 797;
    v31 = 2048;
    v32 = v5;
    v33 = 2048;
    v34 = v6;
    _os_log_send_and_compose_impl(v18, &v26, &v35, 80, &dword_1E1C61000, v16, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v27, 38, v25);
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

void *re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 192 * a2;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 192;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 192 * v4 + 176;
      do
      {
        v7 = (v3[4] + v6);
        *(v7 - 18) = 0;
        *(v7 - 21) = 0;
        *(v7 - 20) = 0;
        *(v7 - 22) = 0;
        *(v7 - 38) = 0;
        *(v7 - 8) = xmmword_1E3047670;
        *(v7 - 7) = xmmword_1E3047680;
        *(v7 - 6) = xmmword_1E30476A0;
        *(v7 - 5) = xmmword_1E30474D0;
        *(v7 - 4) = xmmword_1E3047670;
        *(v7 - 3) = xmmword_1E3047680;
        *(v7 - 2) = xmmword_1E30476A0;
        *(v7 - 1) = xmmword_1E30474D0;
        v6 += 192;
        *v7 = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>(re::AssetHandle *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
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

void re::ecs2::MeshOffsetsComponent::resetDeformerInputs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v14[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  inited = objc_initWeak(&location, v9);
  memset(v14, 0, 24);
  v14[3] = re::globalAllocators(inited)[2];
  v14[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshOffsetsComponent::OffsetsDeformerInputs,re::FrameManager>::reset((a1 + 160), &location, a3, v14);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v14);
  objc_destroyWeak(&location);
  if (a5)
  {
    v11 = 168 * a5;
    v12 = (a4 + 96);
    do
    {
      ++*(v12 - 87);
      *v12 = 0;
      v12 += 21;
      v11 -= 168;
    }

    while (v11);
  }
}

re::ecs2::MeshOffsetsComponentStateImpl *re::ecs2::MeshOffsetsComponentStateImpl::MeshOffsetsComponentStateImpl(re::ecs2::MeshOffsetsComponentStateImpl *this)
{
  v6[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF4FB8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 7) = 0;
  *(this + 40) = 0u;
  v2 = (this + 40);
  v6[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v6[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v6[2] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[0] = v6;
  v5[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::FixedArray(v4, v5);
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=(v2, v4);
  if (v4[0] && v4[1])
  {
    (*(*v4[0] + 40))();
  }

  return this;
}

BOOL re::ecs2::MeshOffsetsComponentStateImpl::processDirtyComponents(re::ProfilerConfig *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v10 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v11 = re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v12 = v11 ? *(v11 + 384) : 0;
    v13 = *(v10 + 152);
    if (v13)
    {
      v14 = v13[912].u64[0];
      if (v14 >= v12)
      {
        v14 = v12;
      }

      v13[912].i64[0] = v14;
      v15 = v13[912].u64[1];
      if (v15 <= v12)
      {
        v15 = v12;
      }

      v13[912].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v12;
      v13[913] = vaddq_s64(v13[913], v16);
      *(v10 + 184) = 0;
    }
  }

  v17 = re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v17)
  {
    v18 = *(v17 + 384);
  }

  else
  {
    v18 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v54, 3069, a1, v18, 0, 0);
  v19 = *(a1 + 4);
  if (v19)
  {
    v20 = (*(*v19 + 104))(v19);
  }

  else
  {
    v20 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v51, a5, 0);
  v24 = v51;
  v23 = v52;
  v51 = a4;
  v52 = v24;
  v53 = v23;
  if (v24 != a5 || v23 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v25 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v51);
      v26 = v25;
      v27 = *(v25 + 2);
      v28 = *(v27 + 200);
      v29 = *(v25 + 21);
      if (v29)
      {
        if (v28)
        {
          v30 = *(v28 + 248) != *v29 || v20 == 0;
          if (!v30 && v29[1] == v20)
          {
            goto LABEL_42;
          }

          v31 = *(v28 + 392);
          v33 = *(v31 + 88);
          v32 = *(v31 + 96);
        }

        else
        {
          v33 = 0;
          v32 = 0;
        }

        re::ecs2::MeshOffsetsComponent::resetDeformerInputs(v25, *(*(a1 + 2) + 144), 0, v32, v33);
      }

      v34 = *(v27 + 192);
      v35 = !v34 || v28 == 0;
      if (v35 || !*(v34 + 40))
      {
        break;
      }

      if (!*(v26 + 10) && *(a1 + 3))
      {
        v36 = re::globalAllocators(v25);
        v37 = (*(*v36[2] + 32))(v36[2], 40, 8);
        *v37 = 0u;
        *(v37 + 16) = 0u;
        *(v37 + 32) = 0;
        re::DynamicArray<re::MeshIdentifierAsset>::setCapacity(v37, 0);
        ++*(v37 + 24);
        v38 = *(a1 + 3);
        v39 = re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>::assetType();
        (*(*v38 + 424))(&v49, v38, v37, v39, 0, 0, 0);
        v40 = *(v26 + 72);
        *(v26 + 72) = v49;
        v49 = v40;
        v41 = *(v26 + 11);
        *(v26 + 11) = v50;
        v50 = v41;
        re::AssetHandle::~AssetHandle(&v49);
      }

      v42 = *(a1 + 2);
      v43 = v51;
      v44 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v52);
      v45 = a3[2];
      if (!v42)
      {
        goto LABEL_40;
      }

      v46 = a3[5];
LABEL_41:
      re::ecs2::ComponentBucketsBase::moveComponent(v45, v43, v44, v46);
LABEL_42:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v52);
      if (v52 == a5 && v53 == 0xFFFF && HIWORD(v53) == 0xFFFF)
      {
        goto LABEL_45;
      }
    }

    v43 = v51;
    v44 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v52);
    v45 = a3[2];
LABEL_40:
    v46 = a3[4];
    goto LABEL_41;
  }

LABEL_45:
  v47 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v54, v21, v22);
  return v47;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::MeshOffsetsComponentStateImpl::processPreparingComponents(re::ProfilerConfig *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v183 = *MEMORY[0x1E69E9840];
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v10 = re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v11 = v10 ? *(v10 + 384) : 0;
    v12 = *(v5 + 152);
    if (v12)
    {
      v13 = v12[912].u64[0];
      if (v13 >= v11)
      {
        v13 = v11;
      }

      v12[912].i64[0] = v13;
      v14 = v12[912].u64[1];
      if (v14 <= v11)
      {
        v14 = v11;
      }

      v12[912].i64[1] = v14;
      v15 = vdupq_n_s64(1uLL);
      v15.i64[0] = v11;
      v12[913] = vaddq_s64(v12[913], v15);
      *(v5 + 184) = 0;
    }
  }

  v16 = re::ecs2::SceneComponentTable::get((a3[1] + 200), re::ecs2::ComponentImpl<re::ecs2::MeshOffsetsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v16)
  {
    v17 = *(v16 + 384);
  }

  else
  {
    v17 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v157, 3069, a1, v17, 0, 0);
  v148 = *(a1 + 2);
  v18 = *(a1 + 4);
  v140 = a1;
  v141 = a3;
  if (v18)
  {
    v139 = (*(*v18 + 104))(v18);
  }

  else
  {
    v139 = 0;
  }

  v19 = buf;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v154 = a4;
  v155 = *buf;
  v156 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    do
    {
      v22 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v154);
      v23 = v22;
      v145 = v22[2];
      if (v22[10])
      {
        v24 = re::AssetHandle::blockUntilLoaded<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>((v22 + 9));
        if (v24)
        {
          v25 = v23[2];
          if (v25)
          {
            v26 = *(v25 + 192);
            if (v26)
            {
              v27 = v24;
              v28 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v26 + 32));
              if (v28)
              {
                v29 = v28;
                if (v28[79])
                {
                  v30 = v28[73];
                  v31 = v28[71];
                  v32 = re::ecs2::EntityComponentCollection::get((v25 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                  if (v32)
                  {
                    v33 = v32 + 216;
                    v30 = *(v32 + 208);
                    v31 = *(v32 + 192);
                  }

                  else
                  {
                    v33 = (v29 + 80);
                  }

                  v34 = *(v27 + 16);
                  v146 = v33;
                  if (v34)
                  {
                    LODWORD(v35) = 0;
                    v36 = *(v27 + 32);
                    v25 = 40 * v34;
                    do
                    {
                      re::MeshNameMap::meshInstancePartsForIdentifier(buf, v33, v36);
                      v35 = (v35 + *buf);
                      re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&buf[8]);
                      v33 = v146;
                      v36 += 40;
                      v25 -= 40;
                    }

                    while (v25);
                  }

                  else
                  {
                    v35 = 0;
                  }

                  re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>::resize(v23 + 4, v35);
                  v37 = *(v27 + 16);
                  if (v37)
                  {
                    v38 = *(v27 + 32);
                    v39 = 0;
                    v142 = &v38[40 * v37];
                    while (1)
                    {
                      v143 = v38;
                      re::MeshNameMap::meshInstancePartsForIdentifier(&v170, v146, v38);
                      if (v170)
                      {
                        break;
                      }

LABEL_41:
                      re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v171);
                      v38 = v143 + 40;
                      v19 = buf;
                      if (v143 + 40 == v142)
                      {
                        goto LABEL_42;
                      }
                    }

                    v40 = 0;
                    while (1)
                    {
                      *buf = v40;
                      v41 = (*(*v175 + 16))(v175, buf);
                      v43 = v41;
                      if (v31 <= v41)
                      {
                        goto LABEL_111;
                      }

                      v44 = re::DataArray<re::MeshInstance>::tryGet(v29[79] + 72, *(v30 + 8 * v41));
                      v45 = re::DataArray<re::MeshModel>::tryGet(v29[79] + 8, *(v44 + 16));
                      v5 = v39;
                      v25 = v23[6];
                      if (v25 <= v39)
                      {
                        goto LABEL_112;
                      }

                      v35 = v45;
                      v46 = v29;
                      v29 = v31;
                      v31 = v30;
                      v47 = v23[8];
                      *buf = v40;
                      v48 = ((*(*v175 + 16))(v175, buf) >> 32);
                      v25 = *(v35 + 56);
                      if (v25 <= v48)
                      {
                        goto LABEL_116;
                      }

                      re::DynamicArray<float>::resize(v47 + 192 * v39++, (3 * *(*(v35 + 64) + 544 * v48 + 452)));
                      ++v40;
                      v30 = v31;
                      v31 = v29;
                      v29 = v46;
                      if (v40 == v170)
                      {
                        goto LABEL_41;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_42:
      v49 = re::AssetHandle::loadedAsset<re::BasicAsset<re::AssignedMeshDeformation,&re::kAssignedMeshDeformationAssetName,&re::kAssignedMeshDeformationAssetExtension>>((v23 + 9));
      if (!v49)
      {
        re::AssetHandle::loadAsync((v23 + 9));
        goto LABEL_103;
      }

      v29 = v49;
      v50 = v145;
      v51 = *(v145 + 192);
      v52 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v51 + 4)) + 640;
      v53 = re::ecs2::EntityComponentCollection::get((v145 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v53)
      {
        v5 = (v53 + 27);
      }

      else
      {
        v5 = v52;
      }

      v147 = v51;
      v54 = v51[5];
      if (v54)
      {
        v55 = *(v54 + 792);
      }

      else
      {
        v55 = 0;
      }

      v31 = buf;
      v56 = v23[10];
      if (v56)
      {
        v57 = *(v56 + 792);
      }

      else
      {
        v57 = 0;
      }

      v58 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v54 ^ (v54 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v54 ^ (v54 >> 30))) >> 27));
      v59 = v55 ^ (v58 >> 31) ^ v58;
      v60 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v56 ^ (v56 >> 30))) >> 27));
      v61 = ((v59 << 6) - 0x61C8864680B583E9 + (v59 >> 2) + ((*(v5 + 8) - 0x61C8864680B583E9 + ((v57 ^ (v60 >> 31) ^ v60) << 6) + ((v57 ^ (v60 >> 31) ^ v60) >> 2)) ^ v57 ^ (v60 >> 31) ^ v60)) ^ v59;
      if (v23[13] != v61)
      {
        v23[13] = -1;
        re::FixedArray<CoreIKTransform>::deinit(v23 + 14);
        v62 = re::FixedArray<CoreIKTransform>::deinit(v23 + 17);
        v63 = v23[12];
        if (!v63)
        {
          v23[13] = -1;
        }

        re::FixedArray<int>::init<>(v23 + 17, v63, *(v5 + 216));
        if (*(v5 + 216))
        {
          v64 = 0;
          v35 = 0;
          do
          {
            v19 = v23[18];
            if (v19 <= v35)
            {
              goto LABEL_120;
            }

            *(v23[19] + 4 * v35) = v64;
            v64 += re::MeshNameMap::meshPartInstanceCount(v5, v35++);
          }

          while (v35 < *(v5 + 216));
        }

        v65 = *(v5 + 336);
        if (v65)
        {
          v66 = *(*(v5 + 344) + 4 * v65 - 4);
        }

        else
        {
          v66 = 0;
        }

        v67 = v23[12];
        *buf = -1;
        v53 = re::FixedArray<unsigned int>::init<int>(v23 + 14, v67, v66, buf);
        if (v29[2])
        {
          v68 = 0;
          v31 = 0;
          while (1)
          {
            re::MeshNameMap::meshInstancePartsForIdentifier(&v170, v5, (v29[4] + 40 * v31));
            if (v170)
            {
              break;
            }

            v73 = v68;
LABEL_71:
            v53 = re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(v171);
            ++v31;
            v68 = v73;
            if (v31 >= v29[2])
            {
              goto LABEL_72;
            }
          }

          v69 = 0;
          while (1)
          {
            *buf = v69;
            v70 = (*(*v175 + 16))(v175, buf);
            started = re::MeshNameMap::meshPartStartIndexForInstance(v5, v70);
            *buf = v69;
            v35 = started + ((*(*v175 + 16))(v175, buf) >> 32);
            v72 = v23[15];
            if (v72 <= v35)
            {
              break;
            }

            v73 = (v68 + 1);
            *(v23[16] + 4 * v35) = v68;
            ++v69;
            LODWORD(v68) = v68 + 1;
            if (v69 == v170)
            {
              goto LABEL_71;
            }
          }

          v149 = 0;
          v161 = 0u;
          v162 = 0u;
          v160 = 0u;
          memset(buf, 0, sizeof(buf));
          v25 = MEMORY[0x1E69E9C10];
          v116 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v176 = 136315906;
          *&v176[4] = "operator[]";
          v177 = 1024;
          if (v116)
          {
            v117 = 3;
          }

          else
          {
            v117 = 2;
          }

          v178 = 468;
          v179 = 2048;
          v180 = v35;
          v181 = 2048;
          v182 = v72;
          _os_log_send_and_compose_impl(v117, &v149, buf, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v137, v138);
          _os_crash_msg();
          __break(1u);
LABEL_111:
          re::internal::assertLog(6, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v43, v31);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v131, v134);
          __break(1u);
LABEL_112:
          v149 = 0;
          v161 = 0u;
          v162 = 0u;
          v160 = 0u;
          memset(buf, 0, sizeof(buf));
          v118 = MEMORY[0x1E69E9C10];
          v119 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v176 = 136315906;
          *&v176[4] = "operator[]";
          v177 = 1024;
          if (v119)
          {
            v120 = 3;
          }

          else
          {
            v120 = 2;
          }

          v178 = 789;
          v179 = 2048;
          v180 = v5;
          v181 = 2048;
          v182 = v25;
          _os_log_send_and_compose_impl(v120, &v149, buf, 80, &dword_1E1C61000, v118, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v137, v138);
          _os_crash_msg();
          __break(1u);
LABEL_116:
          v149 = 0;
          v161 = 0u;
          v162 = 0u;
          v160 = 0u;
          memset(buf, 0, sizeof(buf));
          v61 = MEMORY[0x1E69E9C10];
          v19 = v48;
          v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v176 = 136315906;
          *&v176[4] = "operator[]";
          v177 = 1024;
          if (v121)
          {
            v122 = 3;
          }

          else
          {
            v122 = 2;
          }

          v178 = 476;
          v179 = 2048;
          v180 = v19;
          v181 = 2048;
          v182 = v25;
          _os_log_send_and_compose_impl(v122, &v149, buf, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v137, v138);
          _os_crash_msg();
          __break(1u);
LABEL_120:
          *v176 = 0;
          *(v31 + 48) = 0u;
          *(v31 + 64) = 0u;
          v160 = 0u;
          memset(buf, 0, sizeof(buf));
          v123 = MEMORY[0x1E69E9C10];
          v124 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v170) = 136315906;
          *(v31 + 180) = "operator[]";
          v172 = 1024;
          if (v124)
          {
            v125 = 3;
          }

          else
          {
            v125 = 2;
          }

          *(v31 + 190) = 468;
          v173 = 2048;
          *(v31 + 196) = v35;
          v174 = 2048;
          *(v31 + 206) = v19;
          _os_log_send_and_compose_impl(v125, v176, buf, 80, &dword_1E1C61000, v123, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v170, 38, v137, v138);
          _os_crash_msg();
          __break(1u);
LABEL_124:
          re::internal::assertLog(6, v95, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v61, v29);
          _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v132, v135);
          __break(1u);
LABEL_125:
          v158 = 0;
          *(v31 + 224) = 0u;
          *(v31 + 240) = 0u;
          *(v31 + 192) = 0u;
          *(v31 + 208) = 0u;
          *(v31 + 176) = 0u;
          v126 = MEMORY[0x1E69E9C10];
          v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v176 = 136315906;
          *&v176[4] = "operator[]";
          v177 = 1024;
          if (v127)
          {
            v128 = 3;
          }

          else
          {
            v128 = 2;
          }

          v178 = 468;
          v179 = 2048;
          v180 = v61;
          v181 = 2048;
          v182 = v19;
          _os_log_send_and_compose_impl(v128, &v158, &v170, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v176, 38, v137, v138);
          _os_crash_msg();
          __break(1u);
LABEL_129:
          *v176 = 0;
          *(v31 + 48) = 0u;
          *(v31 + 64) = 0u;
          v160 = 0u;
          memset(buf, 0, sizeof(buf));
          v85 = MEMORY[0x1E69E9C10];
          v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v170) = 136315906;
          *(v31 + 180) = "operator[]";
          v172 = 1024;
          if (v129)
          {
            v130 = 3;
          }

          else
          {
            v130 = 2;
          }

          *(v31 + 190) = 468;
          v173 = 2048;
          *(v31 + 196) = v61;
          v174 = 2048;
          *(v31 + 206) = v19;
          _os_log_send_and_compose_impl(v130, v176, buf, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v170, 38, v137, v138);
          _os_crash_msg();
          __break(1u);
LABEL_133:
          re::internal::assertLog(6, v87, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 176, v85);
          _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v133, v136);
          __break(1u);
LABEL_134:
          re::internal::assertLog(4, v89, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
        }

LABEL_72:
        v23[13] = v61;
        v19 = buf;
        v50 = v145;
      }

      v74 = *(v50 + 200);
      if (*(v74 + 30))
      {
        if (!v23[6])
        {
          v76 = v154;
          v77 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v155);
          v78 = v141[2];
          v79 = v141[4];
          goto LABEL_102;
        }

        v75 = v23[21];
        if (!v75 || *v75 != *(v74 + 31))
        {
          v80 = *(v74 + 49);
          v29 = *(v80 + 88);
          v5 = *(v80 + 96);
          v81 = *(v140 + 2);
          v82 = re::globalAllocators(v53);
          v83 = (*(*v82[2] + 32))(v82[2], 40, 8);
          *v83 = *(v74 + 31);
          v83[1] = v139;
          v83[3] = 0;
          v83[4] = 0;
          v83[2] = 0;
          re::ecs2::MeshOffsetsComponent::resetDeformerInputs(v23, *(v81 + 144), v83, v5, v29);
          v84 = v23[21];
          v85 = *(v74 + 32);
          v84[3] = v85;
          if (v85)
          {
            if (v85 >= 0x1745D1745D1745ELL)
            {
              goto LABEL_133;
            }

            v84[4] = v88;
            if (!v88)
            {
              goto LABEL_134;
            }

            v90 = v85 - 1;
            if (v85 != 1)
            {
              do
              {
                *(v88 + 128) = 0;
                *(v88 + 96) = 0uLL;
                *(v88 + 112) = 0uLL;
                *(v88 + 64) = 0uLL;
                *(v88 + 80) = 0uLL;
                *(v88 + 32) = 0uLL;
                *(v88 + 48) = 0uLL;
                *v88 = 0uLL;
                *(v88 + 16) = 0uLL;
                *(v88 + 136) = 0uLL;
                *(v88 + 152) = 0uLL;
                *(v88 + 168) = 0;
                v88 += 176;
                --v90;
              }

              while (v90);
            }

            *(v88 + 128) = 0;
            *(v88 + 96) = 0uLL;
            *(v88 + 112) = 0uLL;
            *(v88 + 64) = 0uLL;
            *(v88 + 80) = 0uLL;
            *(v88 + 32) = 0uLL;
            *(v88 + 48) = 0uLL;
            *v88 = 0uLL;
            *(v88 + 16) = 0uLL;
            *(v88 + 136) = 0uLL;
            *(v88 + 152) = 0uLL;
            *(v88 + 168) = 0;
          }

          v152 = (v74 + 232);
          v153 = 9;
          v149 = (v74 + 232);
          v150 = 9;
          v151 = 0;
          while (1)
          {
            re::MeshDeformationRuntimeData::MeshDeformationIteration::end(buf, &v152);
            if (HIDWORD(v150) == *&buf[12] && v151 == *&buf[16])
            {
              break;
            }

            v91 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(&v149);
            v92 = re::DeformedMeshAssetsMap::deformedIndex((v23 + 12), v91, WORD2(v91));
            if (v92 != -1)
            {
              v93 = v92;
              v94 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(&v149);
              v61 = v94;
              if (v29 <= v94)
              {
                goto LABEL_124;
              }

              if (v23[6] <= v93)
              {
                v31 = *re::graphicsLogObjects(v94);
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  v113 = v23[6];
                  *buf = 67109376;
                  *&buf[4] = v93;
                  *&buf[8] = 2048;
                  *&buf[10] = v113;
                  _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "Missing attributes for some parts of assigned mesh (deformed index %u, but only %zu attributes have been added). Skipping.", buf, 0x12u);
                }
              }

              else
              {
                v96 = v23[8] + 192 * v93;
                v97 = *(v96 + 48);
                v98 = *(v96 + 64);
                v99 = *(v96 + 80);
                v31 = buf;
                v161 = *(v96 + 96);
                *&buf[16] = v98;
                v160 = v99;
                *buf = v97;
                v100 = *(v96 + 112);
                v101 = *(v96 + 128);
                v102 = *(v96 + 160);
                v164 = *(v96 + 144);
                v165 = v102;
                v162 = v100;
                v163 = v101;
                v166 = *(v96 + 176);
                v103 = [*(v148 + 208) newBufferWithBytes:*(v96 + 32) length:4 * *(v96 + 16) options:0];
                v167[0] = v103;
                v168 = 0;
                LODWORD(v169) = 0;
                HIDWORD(v169) = [v103 length];
                v19 = v84[3];
                if (v19 <= v61)
                {
                  goto LABEL_125;
                }

                v104 = v84[4] + 176 * v61;
                *v104 = *buf;
                v105 = *&buf[16];
                v106 = v160;
                v107 = v162;
                *(v104 + 48) = v161;
                *(v104 + 64) = v107;
                *(v104 + 16) = v105;
                *(v104 + 32) = v106;
                v108 = v163;
                v109 = v164;
                v110 = v165;
                *(v104 + 128) = v166;
                *(v104 + 96) = v109;
                *(v104 + 112) = v110;
                *(v104 + 80) = v108;
                std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v104 + 136, v167);
                *(v104 + 168) = v169;
                if (v168 != -1)
                {
                  (off_1F5CF50A0[v168])(&v170, v167);
                }

                v168 = -1;
                if (v103)
                {
                }

                v19 = v84[3];
                if (v19 <= v61)
                {
                  goto LABEL_129;
                }

                v111 = v5 + 168 * v61;
                v112 = v84[4] + 176 * v61;
                ++*(v111 + 9);
                *(v111 + 96) = v112;
                v19 = buf;
              }
            }

            re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v149);
          }
        }

        if (re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(v74, v147))
        {
          v76 = v154;
          v77 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v155);
          v78 = v141[2];
          v79 = v141[6];
LABEL_102:
          re::ecs2::ComponentBucketsBase::moveComponent(v78, v76, v77, v79);
        }
      }

LABEL_103:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v155);
    }

    while (v155 != a5 || v156 != 0xFFFF || HIWORD(v156) != 0xFFFF);
  }

  v114 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v157, v20, v21);
  return v114;
}

void *re::ecs2::MeshOffsetsSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
  re::StackScratchAllocator::StackScratchAllocator(v44);
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v38 = v44;
  v39 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
  v40 += 2;
  v5 = a1[58];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v43 = a1[58];
  v33[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v38, v6, v33);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v33[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 39, v33);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[40] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 53));
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v33[0] = v44;
  v33[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
  v34 += 2;
  v12 = a1[58];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v37 = a1[58];
  v45 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 53), &v38);
  v14 = v42;
  if (v40)
  {
    v14 = &v41;
  }

  v15 = v39;
  if ((v39 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v16 = 0;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v16 -= 64;
      if (!--v15)
      {
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 32), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v32, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v32, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v32, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 53), v33);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 32));
  if (v33[0] && (v34 & 1) == 0)
  {
    (*(*v33[0] + 40))();
  }

  if (v38 && (v40 & 1) == 0)
  {
    (*(*v38 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v44);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v31);
}

_anonymous_namespace_ *re::ecs2::MeshOffsetsSystem::willAddSystemToECSService(re::ecs2::MeshOffsetsSystem *this)
{
  re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v4);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  v7 = re::ServiceLocator::serviceOrNull<re::AssetService>(v6);
  v8 = (*(**(this + 5) + 32))(*(this + 5));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v8);
  *(this + 63) = v3;
  *(this + 64) = v5;
  *(this + 65) = v7;
  *(this + 66) = v9;
  v12 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 376), 0);
  *(this + 98) += 2;
  *(this + 52) = 0;
  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 424), 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  *(this + 59) = this;
  *(this + 60) = this + 496;
  *(this + 488) = 1;
  return result;
}

double re::ecs2::MeshOffsetsSystem::willRemoveSystemFromECSService(re::ecs2::MeshOffsetsSystem *this)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 256);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 312);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 376);
  *(this + 52) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 424);
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 60) = 0;
  result = 0.0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

unint64_t re::ecs2::MeshOffsetsSystem::willAddSceneToECSService(re::ecs2::MeshOffsetsSystem *this, re::ecs2::Scene *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v52 = a2;
  v4 = *(this + 48);
  v5 = *(this + 98);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 400);
    }

    else
    {
      v6 = *(this + 51);
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
    v7 = (this + 400);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 51);
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
    *&v44 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 376, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, v44);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::init(v12, this + 256, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 39, &v52, &v44);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 376, v44);
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
  v14 = *(this + 37);
  *&v51 = 0;
  v15 = *(this + 33);
  DWORD2(v51) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>,4ul>::setBucketsCapacity((this + 256), (v14 + 4) >> 2);
    v15 = *(this + 33);
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

  if (*(this + 272))
  {
    v16 = this + 280;
  }

  else
  {
    v16 = *(this + 36);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 37);
  ++*(this + 76);
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
  v23 = *(this + 37);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshOffsetsComponent>::init(v24, this + 256, v52);
  *&v62[0] = *(this + 37) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 39, &v52, v62);
  v25 = *(this + 37);
  v26 = *(this + 52);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 52) = v25;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 376), v27, &v44);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 52) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 392))
    {
      v30 = this + 400;
    }

    else
    {
      v30 = *(this + 51);
    }

    *&v30[8 * *(this + 48) - 8] &= v28;
  }

  v31 = *(this + 37);
  v32 = *(this + 58);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 58) = v31;
  *&v44 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 424), v33, &v44);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 58) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 440))
    {
      v36 = this + 448;
    }

    else
    {
      v36 = *(this + 57);
    }

    *&v36[8 * *(this + 54) - 8] &= v34;
  }

  v13 = *&v62[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 424, v13);
  if (*(this + 488) == 1)
  {
    v38 = *(this + 59);
    v39 = *(v52 + 47);
    LOWORD(v44) = 257;
    DWORD1(v44) = 1023969417;
    BYTE8(v44) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v44);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 256);
  }

  return result;
}

uint64_t re::ecs2::MeshOffsetsSystem::willRemoveSceneFromECSService(re::ecs2::MeshOffsetsSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 39, &v15);
  if (result != -1)
  {
    v4 = *(this + 40) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 376, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 424, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 256, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 312, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_AssignedMeshOffsetsAttributes(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC528))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC5F8, "AssignedMeshOffsetsAttributes");
    __cxa_guard_release(&qword_1EE1AC528);
  }

  return &unk_1EE1AC5F8;
}

void re::ecs2::initInfo_AssignedMeshOffsetsAttributes(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v22[0] = 0x8D01A139E5A607F8;
  v22[1] = "AssignedMeshOffsetsAttributes";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1AC530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC530))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "offsets";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1AC598 = v10;
    v11 = re::introspectionAllocator();
    v12 = re::introspect_Matrix4x4F(1);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "preTransform";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x3000000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1AC5A0 = v13;
    v14 = re::introspectionAllocator();
    v15 = re::introspect_Matrix4x4F(1);
    v16 = (*(*v14 + 32))(v14, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "postTransform";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0x7000000003;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE1AC5A8 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_REMeshOffsetsBlendingMode(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "blendingMode";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0xB000000004;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE1AC5B0 = v20;
    __cxa_guard_release(&qword_1EE1AC530);
  }

  *(this + 2) = 0xC000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AC598;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AssignedMeshOffsetsAttributes>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AssignedMeshOffsetsAttributes>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AssignedMeshOffsetsAttributes>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AssignedMeshOffsetsAttributes>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v21 = v23;
}

double re::internal::defaultConstruct<re::ecs2::AssignedMeshOffsetsAttributes>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 32) = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *(a3 + 24) = 0;
  *&result = 1065353216;
  *(a3 + 48) = xmmword_1E3047670;
  *(a3 + 64) = xmmword_1E3047680;
  *(a3 + 80) = xmmword_1E30476A0;
  *(a3 + 96) = xmmword_1E30474D0;
  *(a3 + 112) = xmmword_1E3047670;
  *(a3 + 128) = xmmword_1E3047680;
  *(a3 + 144) = xmmword_1E30476A0;
  *(a3 + 160) = xmmword_1E30474D0;
  *(a3 + 176) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AssignedMeshOffsetsAttributes>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *&result = 1065353216;
  *(a1 + 48) = xmmword_1E3047670;
  *(a1 + 64) = xmmword_1E3047680;
  *(a1 + 80) = xmmword_1E30476A0;
  *(a1 + 96) = xmmword_1E30474D0;
  *(a1 + 112) = xmmword_1E3047670;
  *(a1 + 128) = xmmword_1E3047680;
  *(a1 + 144) = xmmword_1E30476A0;
  *(a1 + 160) = xmmword_1E30474D0;
  *(a1 + 176) = 0;
  return result;
}

void *re::ecs2::allocInfo_MeshOffsetsAttributes(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC540))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC688, "MeshOffsetsAttributes");
    __cxa_guard_release(&qword_1EE1AC540);
  }

  return &unk_1EE1AC688;
}

void re::ecs2::initInfo_MeshOffsetsAttributes(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v10[0] = 0x594BC986F85AAA54;
  v10[1] = "MeshOffsetsAttributes";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AC550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC550))
  {
    v7 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>>::get(v7);
    v8 = (*(*v7 + 32))(v7, 72, 8);
    *v8 = 1;
    *(v8 + 8) = "perAssignedMeshAttributes";
    *(v8 + 16) = &qword_1EE1AC5B8;
    *(v8 + 24) = 0;
    *(v8 + 32) = 1;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    qword_1EE1AC548 = v8;
    __cxa_guard_release(&qword_1EE1AC550);
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AC548;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshOffsetsAttributes>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshOffsetsAttributes>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshOffsetsAttributes>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshOffsetsAttributes>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v9 = v11;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1AC578, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1AC578);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AC5B8);
      qword_1EE1AC5B8 = &unk_1F5CF5220;
      __cxa_guard_release(&qword_1EE1AC578);
    }
  }

  if ((_MergedGlobals_315 & 1) == 0)
  {
    v1 = qword_1EE1AC538;
    if (qword_1EE1AC538 || (v1 = re::ecs2::allocInfo_AssignedMeshOffsetsAttributes(a1), qword_1EE1AC538 = v1, re::ecs2::initInfo_AssignedMeshOffsetsAttributes(v1, v2, v3, v4), (_MergedGlobals_315 & 1) == 0))
    {
      _MergedGlobals_315 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AC5B8, 0);
      qword_1EE1AC5C8 = 0x2800000003;
      dword_1EE1AC5D0 = v5;
      word_1EE1AC5D4 = 0;
      *&xmmword_1EE1AC5D8 = 0;
      *(&xmmword_1EE1AC5D8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AC5E8 = v1;
      unk_1EE1AC5F0 = 0;
      qword_1EE1AC5B8 = &unk_1F5CF5220;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1AC5B8);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AssignedMeshOffsetsAttributes>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1AC5D8 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}