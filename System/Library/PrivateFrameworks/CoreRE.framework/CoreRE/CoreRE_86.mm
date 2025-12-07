uint64_t re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 16;
  }
}

uint64_t re::ecs2::CAMeshSortGroup::remove(re::ecs2::CAMeshSortGroup *this, re::ecs2::Entity *a2)
{
  v4 = a2;
  if (re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 272, &v4))
  {
    *(this + 208) = 1;
  }

  return re::DynamicArray<unsigned long long>::remove(this + 320, &v4);
}

void re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v11, a1, a2, v3 ^ (v3 >> 31));
  v4 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 32 * v13);
    v7 = *v6 & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v7;
    }

    else
    {
      *(v5 + 32 * v14) = *(v5 + 32 * v14) & 0x80000000 | v7;
    }

    v8 = *v6;
    if (*v6 < 0)
    {
      v8 &= ~0x80000000;
      *v6 = v8;
      v9 = *(v6 + 2);
      if (v9)
      {

        *(v6 + 2) = 0;
        v5 = *(a1 + 16);
        v8 = *(v5 + 32 * v4);
      }
    }

    v10 = *(a1 + 40);
    *(v5 + 32 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v10 + 1;
  }
}

void re::ecs2::CAMeshCodirectionalGroup::checkEntityAgainstSortGroups(re::ecs2::CAMeshSortGroup **a1, uint64_t a2, re::ecs2::Entity *a3, uint64_t a4, uint64_t a5, re::Allocator *a6)
{
  v31 = a3;
  *a1 = 0;
  v8 = *(a4 + 32);
  if (v8)
  {
    v9 = 0;
    v10 = (*(a4 + 16) + 8);
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
        LODWORD(v9) = *(a4 + 32);
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
    v12 = *(a4 + 16);
    do
    {
      v13 = v12 + 24 * v9;
      v16 = *(v13 + 16);
      v14 = (v13 + 16);
      v15 = v16;
      if ((v16[13].i8[1] & 1) == 0)
      {
        if (v15[13].i8[0] == 1)
        {
          re::ecs2::CAMeshSortGroup::recomputeTransform(v15, a6);
        }

        v18 = v15[13].f32[1];
        v17 = v15[13].f32[2];
        v19 = v15[19].u32[0];
        if (v19)
        {
          v20 = 0;
          v21 = (v15[18].i64[0] + 8);
          do
          {
            v22 = *v21;
            v21 += 6;
            if (v22 < 0)
            {
              goto LABEL_18;
            }

            ++v20;
          }

          while (v19 != v20);
          LODWORD(v20) = v15[19].i32[0];
        }

        else
        {
          LODWORD(v20) = 0;
        }

        while (1)
        {
LABEL_18:
          if (v20 == v19)
          {
            v25 = 0;
            goto LABEL_28;
          }

          v23 = re::ecs2::EntityComponentCollection::get((*(v15[18].i64[0] + 24 * v20 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v23)
          {
            if (*(v23 + 94))
            {
              break;
            }
          }

          v24 = v15[19].u32[0];
          if (v24 <= v20 + 1)
          {
            v24 = v20 + 1;
          }

          while (v24 - 1 != v20)
          {
            LODWORD(v20) = v20 + 1;
            if ((*(v15[18].i64[0] + 24 * v20 + 8) & 0x80000000) != 0)
            {
              goto LABEL_18;
            }
          }

          LODWORD(v20) = v24;
        }

        v25 = 1;
LABEL_28:
        {
          if (*a1)
          {
            re::ecs2::CAMeshCodirectionalGroup::mergeSortGroups(a2, a1, v14, a5);
          }

          else
          {
            re::ecs2::CAMeshSortGroup::add(*v14, a3);
            re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a2 + 152, &v31, v14);
            re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(a2 + 296, v14);
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1, *v14);
          }
        }
      }

      v26 = *(a4 + 32);
      v12 = *(a4 + 16);
      if (v26 <= v9 + 1)
      {
        v26 = v9 + 1;
      }

      while (v26 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*(v12 + 24 * v9 + 8) & 0x80000000) != 0)
        {
          goto LABEL_39;
        }
      }

      LODWORD(v9) = v26;
LABEL_39:
      ;
    }

    while (v9 != v8);
  }
}

void re::ecs2::CAMeshCodirectionalGroup::checkEntitiesForSorting(uint64_t a1, re::ecs2::Entity *a2, re::ecs2::Entity *a3, _anonymous_namespace_ *a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v27 = a2;
  v12 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 152, a2);
  v13 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 152, a3);
  v14 = v13;
  if (v12 && v13)
  {
    v15 = *v12;
    if (*v12 == *v13)
    {
      return;
    }

LABEL_7:
    v25 = v15;
    if (v15)
    {
      v16 = v15 + 8;
    }

    if (v14)
    {
      goto LABEL_10;
    }

LABEL_13:
    v24 = 0;
    goto LABEL_14;
  }

  if (v12)
  {
    v15 = *v12;
    goto LABEL_7;
  }

  v15 = 0;
  v25 = 0;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_10:
  v14 = *v14;
  v24 = v14;
  if (v14)
  {
    v17 = (v14 + 8);
  }

LABEL_14:
  if (v18)
  {
    if (v15)
    {
      if (!v14)
      {
        re::ecs2::CAMeshSortGroup::add(v15, a3);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v26, &v25);
        re::DynamicArray<re::TransitionCondition *>::add(a4, &v26);
        ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
        goto LABEL_26;
      }

      re::ecs2::CAMeshCodirectionalGroup::mergeSortGroups(a1, v12, &v24, a5);
    }

    else
    {
      if (!v14)
      {
        v20 = re::globalAllocators(v18);
        v21 = (*(*v20[2] + 32))(v20[2], 368, 16);
        ArcSharedObject::ArcSharedObject(v21, 0);
        *v22 = &unk_1F5CD2358;
        *(v22 + 212) = 0;
        *(v22 + 216) = 0;
        *(v22 + 16) = 0u;
        *(v22 + 32) = 0u;
        *(v22 + 48) = 0u;
        *(v22 + 64) = 0;
        *(v22 + 80) = 0u;
        *(v22 + 96) = 0u;
        *(v22 + 112) = 0u;
        *(v22 + 128) = 0u;
        *(v22 + 144) = 0u;
        *(v22 + 160) = 0u;
        *(v22 + 176) = 0u;
        *(v22 + 192) = 0u;
        *(v22 + 208) = 0;
        *(v21 + 256) = 0;
        *(v21 + 232) = 0;
        *(v21 + 240) = 0;
        *(v21 + 248) = 0;
        re::DynamicArray<re::RigNodeConstraint>::setCapacity((v21 + 224), 0x10uLL);
        ++*(v21 + 248);
        *(v21 + 264) = a1;
        *(v21 + 272) = 0u;
        *(v21 + 288) = 0u;
        *(v21 + 304) = 0;
        *(v21 + 308) = 0x7FFFFFFFLL;
        *(v21 + 352) = 0;
        *(v21 + 328) = 0;
        *(v21 + 336) = 0;
        *(v21 + 320) = 0;
        *(v21 + 344) = 0;
        v23 = v21;
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(a1 + 200, &v23);
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(a1 + 296, &v23);
        re::ecs2::CAMeshSortGroup::add(v21, v27);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v27, &v23);
        re::DynamicArray<re::TransitionCondition *>::add(a4, &v27);
        re::ecs2::CAMeshSortGroup::add(v21, v26);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v26, &v23);
        re::DynamicArray<re::TransitionCondition *>::add(a4, &v26);
        re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups += 2;
        v19 = (v21 + 8);
        goto LABEL_27;
      }

      re::ecs2::CAMeshSortGroup::add(v14, a2);
      re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v27, &v24);
      re::DynamicArray<re::TransitionCondition *>::add(a4, &v27);
      ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
    }
  }

  else if (!v14)
  {
    if (!v15)
    {
      return;
    }

    goto LABEL_26;
  }

  v15 = v25;
  if (v25)
  {
LABEL_26:
    v19 = v15 + 8;
LABEL_27:
  }
}

__n128 *re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(__n128 *this, uint64_t a2, BOOL *a3)
{
  v3 = this[15].n128_u64[0];
  if (v3)
  {
    v4 = this;
    v5 = 16 * v3;
    v6 = (this[16].n128_u64[0] + 8);
    do
    {
      v9 = 0;
      v8 = v7;
      v7[19].i8[0] = 1;
      if ((v9 & 1) != 0 || *v6 != v7[10].i32[0] || (this = re::ecs2::MeshSortGroupToken::doesConfigurationMatch(&v4[5], v7 + 11), !this) || v4[5].n128_u64[0] != v8[11].n128_u64[0])
      {
        re::ecs2::MeshSortGroupToken::operator=(v8 + 11, v4 + 5);
        v8[10].n128_u32[0] = *v6;
        this = re::ecs2::Component::markDirty(v8);
      }

      v6 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  return this;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::setCapacity(v3, v10 + 1);
    v5 = *(v3 + 4) + 2;
    *(v3 + 4) = v5;
    goto LABEL_15;
  }

  v4 = *(result + 1);
  v5 = *(result + 4);
  if (v5)
  {
    if (v4 - 128 >= 0xFFFFFFFFFFFFFF7FLL)
    {
      goto LABEL_15;
    }

    v7 = v4 + 1;
    v9 = 256;
    goto LABEL_11;
  }

  v6 = *(result + 3);
  v8 = v4 >= v6;
  v7 = v4 + 1;
  v8 = !v8 || v6 >= v7;
  if (!v8)
  {
    v9 = 2 * v6;
LABEL_11:
    if (v9 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    result = re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::setCapacity(result, v11);
    v5 = *(v3 + 4);
  }

LABEL_15:
  if (v5)
  {
    v12 = v3 + 24;
  }

  else
  {
    v12 = *(v3 + 4);
  }

  v13 = *(v3 + 1);
  *&v12[8 * v13] = *a2;
  *(v3 + 1) = v13 + 1;
  *(v3 + 4) += 2;
  return result;
}

float32x4_t *re::ecs2::CAMeshSortGroup::updateGroupToken(float32x4_t *this)
{
  v1 = this;
  v27 = *MEMORY[0x1E69E9840];
  v2 = this[16].i64[1];
  v3 = *(v2 + 112);
  v4 = *(v2 + 128);
  v5 = vmulq_f32(v3, vsubq_f32(this[2], v4));
  v6 = vmulq_n_f32(v3, v5.f32[2] + vaddv_f32(*v5.f32));
  if (this[21].i64[0])
  {
    v14 = v6;
    v15 = *(v2 + 128);
    v7 = *this[22].i64[0];
    v8 = *(v2 + 432);
    this = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (this && this[6].i8[0] == 1 && (this = re::ecs2::CARESortingManager::optionalSortingPlaneFrom(v24, v7, v8), (v24[0].i8[0] & 1) != 0))
    {
      v25 = v24[1];
      v26 = v24[2];
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v6 = v14;
    v4 = v15;
  }

  else
  {
    v9 = 0;
  }

  v10 = vaddq_f32(v4, v6);
  if (*(v1 + 80))
  {
    if ((*(v1 + 96) & 1) == 0)
    {
      *(v1 + 96) = 1;
    }

    *(v1 + 112) = v10;
    v12 = *(v1 + 16);
    v11 = *(v1 + 24);
    if ((*(v1 + 128) & 1) == 0)
    {
      *(v1 + 128) = 1;
    }

    *(v1 + 144) = v12;
    *(v1 + 152) = v11;
    if (v9)
    {
      if ((*(v1 + 160) & 1) == 0)
      {
        *(v1 + 160) = 1;
      }

      v13 = v26;
      *(v1 + 176) = v25;
      *(v1 + 192) = v13;
    }

    else if (*(v1 + 160) == 1)
    {
      *(v1 + 160) = 0;
    }
  }

  else
  {
    v16[0] = 261;
    v17 = 1;
    v18 = v10;
    v19 = 1;
    v20 = *(v1 + 16);
    v21 = v9;
    if (v9)
    {
      v22 = v25;
      v23 = v26;
    }

    re::ecs2::MeshSortGroupToken::createNewToken(v16, v24);
    return re::ecs2::MeshSortGroupToken::operator=(v1 + 80, v24);
  }

  return this;
}

uint64_t anonymous namespace::getOrAddMeshSortingComponent(_anonymous_namespace_ *this, re::ecs2::Entity *a2, BOOL *a3)
{
  v5 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v5)
  {
    v6 = v5;
    v7 = (v5 + 8);
    if (*(v6 + 25) != 5)
    {
      *(v6 + 25) = 5;
      *a2 = 1;
    }
  }

  else
  {
    v6 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 496, 0);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
    *(v6 + 80) = 0u;
    *(v6 + 96) = 0u;
    *(v6 + 112) = 0u;
    *(v6 + 128) = 0u;
    *(v6 + 144) = 0u;
    *(v6 + 160) = 0u;
    *(v6 + 176) = 0u;
    *(v6 + 192) = 0u;
    *(v6 + 208) = 0u;
    *(v6 + 224) = 0u;
    *(v6 + 240) = 0u;
    *(v6 + 256) = 0u;
    *(v6 + 272) = 0u;
    *(v6 + 288) = 0u;
    *(v6 + 304) = 0u;
    *(v6 + 320) = 0u;
    *(v6 + 336) = 0u;
    *(v6 + 352) = 0u;
    *(v6 + 368) = 0u;
    *(v6 + 384) = 0u;
    *(v6 + 400) = 0u;
    *(v6 + 416) = 0u;
    *(v6 + 432) = 0u;
    *(v6 + 448) = 0u;
    *(v6 + 464) = 0u;
    *(v6 + 480) = 0u;
    ArcSharedObject::ArcSharedObject(v6, 0);
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *v8 = &unk_1F5CD27E0;
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = 0;
    *(v8 + 80) = 0;
    *(v8 + 112) = 0;
    *(v8 + 160) = -NAN;
    *(v8 + 168) = 0;
    *(v8 + 176) = 0;
    *(v8 + 184) = 0;
    *(v8 + 192) = 0;
    *(v8 + 224) = 0;
    *(v8 + 256) = 0;
    *(v8 + 304) = 0;
    *(v8 + 408) = 0;
    *(v8 + 416) = 0;
    *(v8 + 432) = 0;
    *(v8 + 480) = 0;
    *(v6 + 348) = 0u;
    *(v8 + 320) = 0u;
    *(v8 + 336) = 0u;
    *(v8 + 368) = 0u;
    *(v8 + 384) = 0u;
    *(v8 + 400) = 0;
    *(v8 + 25) = 5;
    v9 = *(this + 27);
    if (v9)
    {
      re::ecs2::NetworkComponent::disableSyncForComponent(v9, v6);
    }

    v12 = v6;
    v10 = (v6 + 8);
    re::ecs2::EntityComponentCollection::add(this + 48, &v12, 1);
    if (v12)
    {

      v12 = 0;
    }
  }

  return v6;
}

_anonymous_namespace_ *re::ecs2::CAMeshSortGroup::add(re::ecs2::CAMeshSortGroup *this, re::ecs2::Entity *a2)
{
  v4 = a2;
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 272, &v4);
  *(this + 208) = 1;
  result = re::ecs2::EntityComponentCollection::get((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    if (*(result + 96) == 1)
    {
      return re::DynamicArray<re::TransitionCondition *>::add((this + 320), &v4);
    }
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = v10;
    v9 = v11;

    return re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addInternal<re::ecs2::Entity const* const&,re::SharedPtr<re::ecs2::CAMeshSortGroup> const&>(a1, v8, v9, a2, a3);
  }

  return result;
}

void re::ecs2::CAMeshCodirectionalGroup::mergeSortGroups(uint64_t a1, re::ecs2::CAMeshSortGroup **a2, unint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v8 = *a3;
  v9 = *(*a3 + 304);
  if (v9)
  {
    v10 = 0;
    v11 = (*(v8 + 288) + 8);
    while (1)
    {
      v12 = *v11;
      v11 += 6;
      if (v12 < 0)
      {
        break;
      }

      if (v9 == ++v10)
      {
        LODWORD(v10) = *(*a3 + 304);
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 != v9)
  {
    do
    {
      v13 = *(*(v8 + 288) + 24 * v10 + 16);
      v19 = v13;
      re::ecs2::CAMeshSortGroup::add(*a2, v13);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v20, a1 + 152, v13, v14 ^ (v14 >> 31));
      v15 = HIDWORD(v21);
      if (HIDWORD(v21) == 0x7FFFFFFF)
      {
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addInternal<re::ecs2::Entity const* const&,re::SharedPtr<re::ecs2::CAMeshSortGroup> const&>(a1 + 152, v20, v21, &v19, a2);
      }

      else
      {
        ++*(a1 + 192);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(a1 + 168) + 32 * v15 + 16), *a2);
      }

      v16 = *(v8 + 304);
      if (v16 <= v10 + 1)
      {
        v16 = v10 + 1;
      }

      while (v16 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(*(v8 + 288) + 24 * v10 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v10) = v16;
LABEL_17:
      ;
    }

    while (v10 != v9);
    v4 = a4;
    v5 = a3;
    v8 = *a3;
  }

  *(v8 + 208) = *(v8 + 300) != 0;
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v8 + 272);
  *(v8 + 336) = 0;
  ++*(v8 + 344);
  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::add(v4, v5);
  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 296, *v5);
  *(*v5 + 209) = 1;
}

BOOL anonymous namespace::doEntitiesOverlap(uint64_t a1, uint64_t a2, re::ecs2::SortingTransformCache *a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v57 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = 0;
  v49 = 0;
  re::FixedArray<re::Vector3<float>>::init<>(&v47, a4, 4uLL);
  v10 = re::ecs2::SortingTransformCache::getOrRecomputeWorldMatrixAndInverse(a3, a1);
  v43 = *v10;
  v44 = v10[1];
  v45 = v10[3];
  v46 = v10[2];
  v11 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v11)
  {
    goto LABEL_9;
  }

  v13 = v11[3];
  v12 = v11[4];
  v14 = vcgtq_f32(v13, v12);
  v14.i32[3] = v14.i32[2];
  if ((vmaxvq_u32(v14) & 0x80000000) != 0)
  {
    v12 = v11[2];
    v15 = 0xBF000000BF000000;
    v13.i64[1] = 0xBF000000BF000000;
    v13.i64[0] = vmulq_f32(v12, v13).u64[0];
    v16.i64[0] = 0x3F0000003F000000;
    v16.i64[1] = 0x3F0000003F000000;
    v12.i64[0] = vmulq_f32(v12, v16).u64[0];
  }

  if (!v48)
  {
    v50 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v31 = MEMORY[0x1E69E9C10];
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v51 = 136315906;
    *&v51[4] = "operator[]";
    *&v51[12] = 1024;
    if (v32)
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    *&v51[14] = 468;
    *&v51[18] = 2048;
    *&v51[20] = 0;
    *&v51[28] = 2048;
    *&v51[30] = 0;
    _os_log_send_and_compose_impl(v33, &v50, &v52, 80, &dword_1E1C61000, v31, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v51, 38, v43.u64[0], v43.u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v17 = vmulq_n_f32(v43, v13.f32[0]);
  v18 = 0uLL;
  v19 = vaddq_f32(v45, vmlaq_f32(vmlaq_lane_f32(v17, v44, *v13.f32, 1), 0, v46));
  *v49 = vdivq_f32(v19, vdupq_laneq_s32(v19, 3));
  v5 = v48;
  if (v48 <= 1)
  {
LABEL_20:
    v50 = 0;
    v55 = v18;
    v56 = v18;
    v53 = v18;
    v54 = v18;
    v52 = v18;
    v34 = MEMORY[0x1E69E9C10];
    v35 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v51 = 136315906;
    *&v51[4] = "operator[]";
    *&v51[12] = 1024;
    if (v35)
    {
      v36 = 3;
    }

    else
    {
      v36 = 2;
    }

    *&v51[14] = 468;
    *&v51[18] = 2048;
    *&v51[20] = 1;
    *&v51[28] = 2048;
    *&v51[30] = v5;
    _os_log_send_and_compose_impl(v36, &v50, &v52, 80, &dword_1E1C61000, v34, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v51, 38, v43.u64[0], v43.u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v20 = vaddq_f32(v45, vmlaq_f32(vmlaq_lane_f32(v17, v44, *v12.f32, 1), 0, v46));
  v49[1] = vdivq_f32(v20, vdupq_laneq_s32(v20, 3));
  if (v5 == 2)
  {
LABEL_24:
    v50 = 0;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    v37 = MEMORY[0x1E69E9C10];
    v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v51 = 136315906;
    *&v51[4] = "operator[]";
    *&v51[12] = 1024;
    if (v38)
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    *&v51[14] = 468;
    *&v51[18] = 2048;
    *&v51[20] = 2;
    *&v51[28] = 2048;
    *&v51[30] = 2;
    _os_log_send_and_compose_impl(v39, &v50, &v52, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v51, 38, v43.u64[0], v43.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v50 = 0;
    v55 = v23;
    v56 = v23;
    v53 = v23;
    v54 = v23;
    v52 = v23;
    v40 = MEMORY[0x1E69E9C10];
    v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v51 = 136315906;
    *&v51[4] = "operator[]";
    *&v51[12] = 1024;
    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 2;
    }

    *&v51[14] = 468;
    *&v51[18] = 2048;
    *&v51[20] = 3;
    *&v51[28] = 2048;
    *&v51[30] = 3;
    _os_log_send_and_compose_impl(v42, &v50, &v52, 80, &dword_1E1C61000, v40, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v51, 38, v43.u64[0], v43.u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v21 = vmulq_n_f32(v43, v12.f32[0]);
  v22 = vmlaq_f32(v21, vdupq_lane_s32(*v13.f32, 1), v44);
  v23 = 0uLL;
  v24 = vaddq_f32(v45, vmlaq_f32(v22, 0, v46));
  v25 = v49;
  v49[2] = vdivq_f32(v24, vdupq_laneq_s32(v24, 3));
  if (v5 <= 3)
  {
    goto LABEL_28;
  }

  v26 = vaddq_f32(v45, vmlaq_f32(vmlaq_f32(v21, vdupq_lane_s32(*v12.f32, 1), v44), 0, v46));
  v25[3] = vdivq_f32(v26, vdupq_laneq_s32(v26, 3));
LABEL_9:
  re::ecs2::CARESortingManager::optionalSortingPlaneFrom(&v52, a1, a3);
  *v51 = v53;
  *&v51[16] = v54;
  v27 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v27)
  {
    v28 = *(v27 + 94);
  }

  else
  {
    v28 = 0;
  }

  if (v47 && v48)
  {
    (*(*v47 + 40))();
  }

  return doesEntityOverlapBox;
}

void re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v5 = (v4 ^ (v4 >> 31)) % v2;
    v6 = *(a1 + 8);
    v7 = *(v6 + 4 * v5);
    if (v7 != 0x7FFFFFFF)
    {
      v8 = *(a1 + 16);
      if (*(v8 + 24 * v7 + 16) == a2)
      {
        *(v6 + 4 * v5) = *(v8 + 24 * v7 + 8) & 0x7FFFFFFF;
LABEL_8:
        v11 = *(a1 + 16) + 24 * v7;
        v12 = *(v11 + 8);
        if (v12 < 0)
        {
          *(v11 + 8) = v12 & 0x7FFFFFFF;
          v13 = *(v11 + 16);
          if (v13)
          {

            *(v11 + 16) = 0;
          }
        }

        v14 = *(a1 + 16) + 24 * v7;
        v15 = *(a1 + 40);
        *(v14 + 8) = *(v14 + 8) & 0x80000000 | *(a1 + 36);
        --*(a1 + 28);
        *(a1 + 36) = v7;
        *(a1 + 40) = v15 + 1;
      }

      else
      {
        while (1)
        {
          v9 = v7;
          v10 = *(v8 + 24 * v7 + 8);
          v7 = v10 & 0x7FFFFFFF;
          if ((v10 & 0x7FFFFFFF) == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v8 + 24 * v7 + 16) == a2)
          {
            *(v8 + 24 * v9 + 8) = *(v8 + 24 * v9 + 8) & 0x80000000 | *(v8 + 24 * v7 + 8) & 0x7FFFFFFF;
            goto LABEL_8;
          }
        }
      }
    }
  }
}

void re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_129, 4 * v10);
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

void re::ecs2::CAMeshSortGroup::recomputeTransform(re::ecs2::CAMeshSortGroup *this, re::Allocator *a2)
{
  v85 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v4 = re::FixedArray<CoreIKTransform>::deinit(this + 6);
  v5 = (4 * *(this + 75));
  v6 = *(this + 75);
  v69 = 0;
  v70 = 0;
  v68 = 0;
  re::FixedArray<re::SortingPlane>::init<>(&v68, a2, v6);
  v8 = *(this + 76);
  if (v8)
  {
    v9 = 0;
    v10 = (*(this + 36) + 8);
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
        LODWORD(v9) = *(this + 76);
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
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = *(*(this + 36) + 24 * v9 + 16);
      re::ecs2::CARESortingManager::optionalSortingPlaneFrom(&v80, v14, *(*(this + 33) + 432));
      v66 = v81;
      v67 = v82;
      v15 = v13;
      v16 = v69;
      if (v69 <= v13)
      {
        break;
      }

      v17 = &v70[2 * v13];
      *v17 = v66;
      v17[1] = v67;
      v18 = *(this + 2);
      *(this + 1) = vaddq_f32(*(this + 1), *v17);
      *(this + 2) = vaddq_f32(v18, v17[1]);
      v19 = re::ecs2::SortingTransformCache::getOrRecomputeWorldMatrixAndInverse(*(*(this + 33) + 432), v14);
      v62 = *v19;
      v63 = v19[1];
      v64 = v19[3];
      v65 = v19[2];
      v20 = re::ecs2::EntityComponentCollection::get((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v20)
      {
        v22 = v20[3];
        v21 = v20[4];
        v23 = vcgtq_f32(v22, v21);
        v23.i32[3] = v23.i32[2];
        if ((vmaxvq_u32(v23) & 0x80000000) != 0)
        {
          v21 = v20[2];
          v24 = 0xBF000000BF000000;
          v22.i64[1] = 0xBF000000BF000000;
          v22.i64[0] = vmulq_f32(v21, v22).u64[0];
          v25.i64[0] = 0x3F0000003F000000;
          v25.i64[1] = 0x3F0000003F000000;
          v21.i64[0] = vmulq_f32(v21, v25).u64[0];
        }

        v14 = *(this + 7);
        if (v14 <= v12)
        {
          goto LABEL_44;
        }

        v13 = v12 + 1;
        v26 = vmulq_n_f32(v62, v22.f32[0]);
        v27 = vaddq_f32(v64, vmlaq_f32(vmlaq_lane_f32(v26, v63, *v22.f32, 1), 0, v65));
        *(*(this + 8) + 16 * v12) = vdivq_f32(v27, vdupq_laneq_s32(v27, 3));
        v14 = *(this + 7);
        if (v14 <= v12 + 1)
        {
          goto LABEL_48;
        }

        v14 = v12 + 2;
        v28 = vaddq_f32(v64, vmlaq_f32(vmlaq_lane_f32(v26, v63, *v21.f32, 1), 0, v65));
        *(*(this + 8) + 16 * v13) = vdivq_f32(v28, vdupq_laneq_s32(v28, 3));
        v16 = *(this + 7);
        if (v16 <= v12 + 2)
        {
          goto LABEL_52;
        }

        v29 = vdupq_lane_s32(*v22.f32, 1);
        v13 = v12 + 3;
        v30 = vmulq_n_f32(v62, v21.f32[0]);
        v31 = vaddq_f32(v64, vmlaq_f32(vmlaq_f32(v30, v29, v63), 0, v65));
        *(*(this + 8) + 16 * v14) = vdivq_f32(v31, vdupq_laneq_s32(v31, 3));
        v14 = *(this + 7);
        if (v14 <= v12 + 3)
        {
          goto LABEL_56;
        }

        v12 += 4;
        v32 = vaddq_f32(v64, vmlaq_f32(vmlaq_f32(v30, vdupq_lane_s32(*v21.f32, 1), v63), 0, v65));
        v7 = vdivq_f32(v32, vdupq_laneq_s32(v32, 3));
        *(*(this + 8) + 16 * v13) = v7;
      }

      v13 = (v15 + 1);
      v33 = *(this + 76);
      if (v33 <= v9 + 1)
      {
        v33 = v9 + 1;
      }

      while (v33 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*(*(this + 36) + 24 * v9 + 8) & 0x80000000) != 0)
        {
          goto LABEL_24;
        }
      }

      LODWORD(v9) = v33;
LABEL_24:
      if (v9 == v8)
      {
        goto LABEL_25;
      }
    }

    v71 = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v47 = MEMORY[0x1E69E9C10];
    v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v48)
    {
      v49 = 3;
    }

    else
    {
      v49 = 2;
    }

    v75 = 468;
    v76 = 2048;
    v77 = v13;
    v78 = 2048;
    v79 = v16;
    _os_log_send_and_compose_impl(v49, &v71, &v80, 80, &dword_1E1C61000, v47, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v62.u64[0], v62.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v66.i64[0] = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v50 = MEMORY[0x1E69E9C10];
    v51 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v51)
    {
      v52 = 3;
    }

    else
    {
      v52 = 2;
    }

    v75 = 468;
    v76 = 2048;
    v77 = v12;
    v78 = 2048;
    v79 = v14;
    _os_log_send_and_compose_impl(v52, &v66, &v80, 80, &dword_1E1C61000, v50, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v62.u64[0], v62.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_48:
    v66.i64[0] = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v53 = MEMORY[0x1E69E9C10];
    v54 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v54)
    {
      v55 = 3;
    }

    else
    {
      v55 = 2;
    }

    v75 = 468;
    v76 = 2048;
    v77 = v13;
    v78 = 2048;
    v79 = v14;
    _os_log_send_and_compose_impl(v55, &v66, &v80, 80, &dword_1E1C61000, v53, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v62.u64[0], v62.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_52:
    v66.i64[0] = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v57)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v75 = 468;
    v76 = 2048;
    v77 = v14;
    v78 = 2048;
    v79 = v16;
    _os_log_send_and_compose_impl(v58, &v66, &v80, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v62.u64[0], v62.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_56:
    v66.i64[0] = 0;
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    v59 = MEMORY[0x1E69E9C10];
    v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v72 = 136315906;
    v73 = "operator[]";
    v74 = 1024;
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 2;
    }

    v75 = 468;
    v76 = 2048;
    v77 = v13;
    v78 = 2048;
    v79 = v14;
    _os_log_send_and_compose_impl(v61, &v66, &v80, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v72, 38, v62.u64[0], v62.u64[1]);
    _os_crash_msg();
    __break(1u);
  }

LABEL_25:
  v7.f32[0] = *(this + 75);
  v34 = *(this + 1);
  v35 = vdivq_f32(*(this + 2), vdupq_lane_s32(*v7.f32, 0));
  v36 = vmulq_f32(v34, v34);
  *&v37 = v36.f32[2] + vaddv_f32(*v36.f32);
  *v36.f32 = vrsqrte_f32(v37);
  *v36.f32 = vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32)));
  v38 = vmulq_n_f32(v34, vmul_f32(*v36.f32, vrsqrts_f32(v37, vmul_f32(*v36.f32, *v36.f32))).f32[0]);
  *(this + 1) = v38;
  *(this + 2) = v35;
  *(this + 53) = 0;
  *(this + 54) = 0;
  if (v69)
  {
    v39 = 32 * v69;
    v40 = v70 + 1;
    v41 = 0.0;
    v42 = 0.0;
    do
    {
      v43 = vmulq_f32(v38, vsubq_f32(*v40, v35));
      v44 = vaddv_f32(*v43.f32);
      v46 = vmulq_f32(v40[-1], vsubq_f32(v35, *v40));
      v45 = vaddv_f32(*v46.f32);
      v46.f32[0] = -(v46.f32[2] + v45);
      if (v42 < (v43.f32[2] + v44))
      {
        v42 = v43.f32[2] + v44;
      }

      if (v42 < v46.f32[0])
      {
        v42 = -(v46.f32[2] + v45);
      }

      if ((v43.f32[2] + v44) < v41)
      {
        v41 = v43.f32[2] + v44;
      }

      if (v41 > v46.f32[0])
      {
        v41 = -(v46.f32[2] + v45);
      }

      *(this + 53) = v41;
      *(this + 54) = v42;
      v40 += 2;
      v39 -= 32;
    }

    while (v39);
    *(this + 53) = fabsf(v41);
    *(this + 208) = 0;
    if (v68)
    {
      (*(*v68 + 40))(v68);
    }
  }

  else
  {
    *(this + 208) = 0;
  }
}

BOOL anonymous namespace::doesEntityOverlapBox(float32x4_t *a1, uint64_t a2, int a3, uint64_t a4, re::ecs2::SortingTransformCache *a5, int a6, float a7, float a8)
{
  re::ecs2::CARESortingManager::optionalSortingPlaneFrom(&v88, a4, a5);
  v16 = vmulq_f32(v89, *a1);
  if ((1.0 - (v16.f32[2] + vaddv_f32(*v16.f32))) > *&dword_1EE19E35C)
  {
    return 0;
  }

  if (!a6)
  {
    v18 = a1[1];
    v19 = vmulq_f32(*a1, vsubq_f32(v90, v18));
    v20 = vmulq_f32(v89, vsubq_f32(v18, v90));
    v21 = vadd_f32(vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v20.i8, *v19.i8), vzip2_s32(*v20.i8, *v19.i8)));
    v22 = vabs_f32(v21);
    if (v22.f32[0] >= v22.f32[1])
    {
      v22.f32[0] = v22.f32[1];
    }

    v23 = v21.f32[1] <= 0.0 ? a8 : a7;
    if ((v22.f32[0] - v23) > *&dword_1EE19E360)
    {
      return 0;
    }
  }

  v24 = re::ecs2::EntityComponentCollection::get((a4 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (a3 && v24 && (*(v24 + 94) & 1) != 0)
  {
    return 1;
  }

  v25 = re::ecs2::SortingTransformCache::getOrRecomputeWorldMatrixAndInverse(a5, a4);
  v26 = MEMORY[0x1E695F050];
  v27 = *MEMORY[0x1E695F050];
  v28 = *(MEMORY[0x1E695F050] + 16);
  v29 = *(MEMORY[0x1E695F050] + 24);
  v30 = *(a2 + 8);
  if (v30)
  {
    v31 = v25;
    v32 = *(a2 + 16);
    v33 = 16 * v30;
    v34 = MEMORY[0x1E695F060];
    v35.f64[0] = *(MEMORY[0x1E695F050] + 16);
    v36 = *(MEMORY[0x1E695F050] + 24);
    do
    {
      v80 = v35.f64[0];
      rect = v27;
      v37 = vaddq_f32(v31[7], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31[4], COERCE_FLOAT(*v32->f32)), v31[5], *v32, 1), v31[6], *v32->f32, 2));
      rect_16 = vdivq_f32(v37, vdupq_laneq_s32(v37, 3)).u64[0];
      v38 = v27.f64[1];
      v39 = v27;
      v40 = v36;
      if (CGRectIsNull(*(&v35 - 1)))
      {
        v35 = *v34;
        v41 = rect_16;
      }

      else
      {
        v42.f32[0] = rect.f64[0] + v80;
        v43 = v38 + v36;
        v42.f32[1] = v43;
        v44 = vminnm_f32(rect_16, vcvt_f32_f64(rect));
        v35 = vcvtq_f64_f32(vsub_f32(vmaxnm_f32(rect_16, v42), v44));
        v41 = v44;
      }

      v27 = vcvtq_f64_f32(v41);
      v32 += 2;
      v36 = v35.f64[1];
      v33 -= 16;
    }

    while (v33);
    v45 = v27.f64[1];
    v46 = v27.f64[0];
    v47 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    v81 = v35.f64[0];
    recta = *v26;
  }

  else
  {
    v47 = *(MEMORY[0x1E695F050] + 8);
    v36 = *(MEMORY[0x1E695F050] + 24);
    v81 = *(MEMORY[0x1E695F050] + 16);
    v45 = v47;
    recta = *MEMORY[0x1E695F050];
    v46 = *MEMORY[0x1E695F050];
  }

  v48 = re::ecs2::EntityComponentCollection::get((a4 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v48)
  {
    v50 = v48[3];
    v49 = v48[4];
    v51 = vcgtq_f32(v50, v49);
    v51.i32[3] = v51.i32[2];
    if ((vmaxvq_u32(v51) & 0x80000000) != 0)
    {
      v52 = v48[2];
      v53.i64[0] = 0xBF000000BF000000;
      v53.i64[1] = 0xBF000000BF000000;
      v50.i64[0] = vmulq_f32(v52, v53).u64[0];
      v53.i64[0] = 0x3F0000003F000000;
      v49.i64[1] = 0x3F0000003F000000;
      v49.i64[0] = vmulq_f32(v52, v49).u64[0];
    }

    rect_16a = *v50.f32;
    v79 = *v49.f32;
    v92.origin.x = recta;
    v92.origin.y = v47;
    v92.size.width = v28;
    v92.size.height = v29;
    if (CGRectIsNull(v92))
    {
      v54 = *MEMORY[0x1E695F060];
      v55 = rect_16a;
    }

    else
    {
      v56.f32[0] = recta;
      v57 = v47;
      v56.f32[1] = v57;
      v58.f32[0] = v28 + recta;
      v59 = v29 + v47;
      v58.f32[1] = v59;
      v55 = vminnm_f32(rect_16a, v56);
      v54 = vcvtq_f64_f32(vsub_f32(vmaxnm_f32(rect_16a, v58), v55));
    }

    rectb = v54;
    rect_16b = v55;
    v60 = vcvtq_f64_f32(v55);
    v61 = v60.f64[1];
    v62 = v54.f64[1];
    v78 = v60;
    if (CGRectIsNull(*(&v54 - 1)))
    {
      v47 = v79.f32[1];
      recta = v79.f32[0];
      v28 = *MEMORY[0x1E695F060];
      v29 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      v63 = vminnm_f32(v79, rect_16b);
      v64 = vmaxnm_f32(v79, vcvt_f32_f64(vaddq_f64(rectb, v78)));
      recta = v63.f32[0];
      v47 = v63.f32[1];
      v65 = vsub_f32(v64, v63);
      v28 = v65.f32[0];
      v29 = v65.f32[1];
    }
  }

  v93.size.width = v81;
  v93.origin.x = v46;
  v93.origin.y = v45;
  v93.size.height = v36;
  v94 = CGRectInset(v93, 0.00000011920929, 0.00000011920929);
  x = v94.origin.x;
  y = v94.origin.y;
  width = v94.size.width;
  height = v94.size.height;
  v94.origin.x = recta;
  v94.origin.y = v47;
  v94.size.width = v28;
  v94.size.height = v29;
  v95 = CGRectInset(v94, 0.00000011920929, 0.00000011920929);
  v70 = v95.origin.x;
  v71 = v95.origin.y;
  v72 = v95.size.width;
  v73 = v95.size.height;
  v74 = x;
  v75 = y;
  v76 = width;
  v77 = height;

  return CGRectIntersectsRect(*&v74, *&v70);
}

uint64_t re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(re::ecs2::CAMeshSortGroup *this, const re::ecs2::Entity *a2, const re::ecs2::Entity *a3, re::ecs2::CAMeshCodirectionalGroup *a4)
{
  v6 = *(a3 + 54);
  re::ecs2::CARESortingManager::optionalSortingPlaneFrom(v13, this, v6);
  v12 = v14;
  re::ecs2::CARESortingManager::optionalSortingPlaneFrom(v13, a2, v6);
  v8 = *(a3 + 7);
  v7 = *(a3 + 8);
  v9 = vmulq_f32(vsubq_f32(v12, v7), v8);
  v10 = vmulq_f32(vsubq_f32(v14, v7), v8);
  *v10.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8)));
  return *&vcgt_f32(vdup_lane_s32(*v10.i8, 1), *v10.i8) & 1;
}

uint64_t re::ecs2::MeshSortGroupToken::doesConfigurationMatch(float32x4_t *a1, float32x4_t *a2)
{
  if (a1->u8[8] != a2->u8[8] || a1->u8[9] != a2->u8[9])
  {
    return 0;
  }

  if (a1[1].i8[0] != 1)
  {
    if ((a2[1].i8[0] & 1) == 0)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if ((a2[1].i8[0] & 1) == 0)
  {
    return 0;
  }

  v2 = vceqq_f32(a1[2], a2[2]);
  v2.i32[3] = v2.i32[2];
  if ((vminvq_u32(v2) & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_8:
  if (a1[3].i8[0] == 1)
  {
    if (a2[3].i8[0])
    {
      v3 = vceqq_f32(a1[4], a2[4]);
      v3.i32[3] = v3.i32[2];
      return vminvq_u32(v3) >> 31;
    }

    return 0;
  }

  return a2[3].u8[0] ^ 1u;
}

__n128 re::ecs2::MeshSortGroupToken::operator=(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[0];
  a1->n128_u16[4] = a2->n128_u16[4];
  a1->n128_u64[0] = v2;
  if (a1[1].n128_u8[0])
  {
    if ((a2[1].n128_u8[0] & 1) == 0)
    {
      a1[1].n128_u8[0] = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((a2[1].n128_u8[0] & 1) == 0)
    {
      goto LABEL_7;
    }

    a1[1].n128_u8[0] = 1;
  }

  result = a2[2];
  a1[2] = result;
LABEL_7:
  if (a1[3].n128_u8[0])
  {
    if ((a2[3].n128_u8[0] & 1) == 0)
    {
      a1[3].n128_u8[0] = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((a2[3].n128_u8[0] & 1) == 0)
    {
      goto LABEL_13;
    }

    a1[3].n128_u8[0] = 1;
  }

  result = a2[4];
  a1[4] = result;
LABEL_13:
  if (a1[5].n128_u8[0])
  {
    if ((a2[5].n128_u8[0] & 1) == 0)
    {
      a1[5].n128_u8[0] = 0;
      return result;
    }

LABEL_19:
    result = a2[6];
    v4 = a2[7];
    a1[6] = result;
    a1[7] = v4;
    return result;
  }

  if (a2[5].n128_u8[0])
  {
    a1[5].n128_u8[0] = 1;
    goto LABEL_19;
  }

  return result;
}

uint64_t re::ecs2::CARESortingManager::registerScene(re::ecs2::CARESortingManager *this, re::EventBus **a2)
{
  v187[3] = *MEMORY[0x1E69E9840];
  v129 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track mesh sorting changes.", "eventBus", "registerScene", 2163);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track mesh sorting changes.");
    __break(1u);
  }

  v123[0] = 0;
  v123[1] = 0;
  v124 = 1;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v128 = 0;
  v5 = 0;
  v187[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v187[1] = re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v187[2] = re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  do
  {
    v6 = v187[v5];
    v185 = re::globalAllocators(v4)[2];
    v186 = 0;
    v7 = (*(*v185 + 32))(v185, 32, 0);
    *v7 = &unk_1F5CD1F50;
    v7[1] = this;
    v7[2] = re::ecs2::CARESortingManager::invalidateEntityEventHandler<REComponentDidChangeEvent>;
    v7[3] = 0;
    v186 = v7;
    v8 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v184, v6, 0);
    v10 = v9;
    v11 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
    *v11 = v8;
    v11[1] = v10;
    v12 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v184);
    v182 = re::globalAllocators(v12)[2];
    v183 = 0;
    v13 = (*(*v182 + 32))(v182, 32, 0);
    *v13 = &unk_1F5CD1FA8;
    v13[1] = this;
    v13[2] = re::ecs2::CARESortingManager::invalidateEntityEventHandler<REComponentDidAddEvent>;
    v13[3] = 0;
    v183 = v13;
    v14 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v181, v6, 0);
    v16 = v15;
    v17 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
    *v17 = v14;
    v17[1] = v16;
    v18 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v181);
    v179 = re::globalAllocators(v18)[2];
    v180 = 0;
    v19 = (*(*v179 + 32))(v179, 32, 0);
    *v19 = &unk_1F5CD2000;
    v19[1] = this;
    v19[2] = re::ecs2::CARESortingManager::invalidateEntityEventHandler<REComponentWillRemoveEvent>;
    v19[3] = 0;
    v180 = v19;
    v20 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v178, v6, 0);
    v22 = v21;
    v23 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
    *v23 = v20;
    v23[1] = v22;
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v178);
    ++v5;
  }

  while (v5 != 3);
  v24 = re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v176 = re::globalAllocators(v4)[2];
  v25 = (*(*v176 + 32))(v176, 32, 0);
  *v25 = &unk_1F5CD1F50;
  v25[1] = this;
  v25[2] = re::ecs2::CARESortingManager::invalidateTransformEventHandler<REComponentDidChangeEvent>;
  v25[3] = 0;
  v177 = v25;
  v26 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v175, v24, 0);
  v28 = v27;
  v29 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v29 = v26;
  v29[1] = v28;
  v30 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v175);
  v173 = re::globalAllocators(v30)[2];
  v31 = (*(*v173 + 32))(v173, 32, 0);
  *v31 = &unk_1F5CD1FA8;
  v31[1] = this;
  v31[2] = re::ecs2::CARESortingManager::invalidateTransformEventHandler<REComponentDidAddEvent>;
  v31[3] = 0;
  v174 = v31;
  v32 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v172, v24, 0);
  v34 = v33;
  v35 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v35 = v32;
  v35[1] = v34;
  v36 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v172);
  v170 = re::globalAllocators(v36)[2];
  v37 = (*(*v170 + 32))(v170, 32, 0);
  *v37 = &unk_1F5CD2000;
  v37[1] = this;
  v37[2] = re::ecs2::CARESortingManager::invalidateTransformEventHandler<REComponentWillRemoveEvent>;
  v37[3] = 0;
  v171 = v37;
  v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v169, v24, 0);
  v40 = v39;
  v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v41 = v38;
  v41[1] = v40;
  v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v169);
  v167 = re::globalAllocators(v42)[2];
  v43 = (*(*v167 + 32))(v167, 32, 0);
  *v43 = &unk_1F5CD2058;
  v43[1] = this;
  v43[2] = re::ecs2::CARESortingManager::invalidateTransformEventHandler<REBillboardTransformChangedEvent>;
  v43[3] = 0;
  v168 = v43;
  v44 = re::EventBus::subscribe<re::ecs2::Entity,REBillboardTransformChangedEvent>(v2, v166, 0, 0);
  v46 = v45;
  v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v47 = v44;
  v47[1] = v46;
  v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable(v166);
  v49 = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v164 = re::globalAllocators(v48)[2];
  v50 = (*(*v164 + 32))(v164, 32, 0);
  *v50 = &unk_1F5CD1F50;
  v50[1] = this;
  v50[2] = re::ecs2::CARESortingManager::invalidateAnchorEventHandler<REComponentDidChangeEvent>;
  v50[3] = 0;
  v165 = v50;
  v51 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v163, v49, 0);
  v53 = v52;
  v54 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v54 = v51;
  v54[1] = v53;
  v55 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v163);
  v161 = re::globalAllocators(v55)[2];
  v56 = (*(*v161 + 32))(v161, 32, 0);
  *v56 = &unk_1F5CD1FA8;
  v56[1] = this;
  v56[2] = re::ecs2::CARESortingManager::invalidateAnchorEventHandler<REComponentDidAddEvent>;
  v56[3] = 0;
  v162 = v56;
  v57 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v160, v49, 0);
  v59 = v58;
  v60 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v60 = v57;
  v60[1] = v59;
  v61 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v160);
  v158 = re::globalAllocators(v61)[2];
  v62 = (*(*v158 + 32))(v158, 32, 0);
  *v62 = &unk_1F5CD2000;
  v62[1] = this;
  v62[2] = re::ecs2::CARESortingManager::invalidateAnchorEventHandler<REComponentWillRemoveEvent>;
  v62[3] = 0;
  v159 = v62;
  v63 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v157, v49, 0);
  v65 = v64;
  v66 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v66 = v63;
  v66[1] = v65;
  v67 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v157);
  v68 = re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v155 = re::globalAllocators(v67)[2];
  v69 = (*(*v155 + 32))(v155, 32, 0);
  *v69 = &unk_1F5CD1FA8;
  v69[1] = this;
  v69[2] = re::ecs2::CARESortingManager::meshSortingComponentAddedEventHandler;
  v69[3] = 0;
  v156 = v69;
  v70 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v154, v68, 0);
  v72 = v71;
  v73 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v73 = v70;
  v73[1] = v72;
  v74 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v154);
  v152 = re::globalAllocators(v74)[2];
  v75 = (*(*v152 + 32))(v152, 32, 0);
  *v75 = &unk_1F5CD2000;
  v75[1] = this;
  v75[2] = re::ecs2::CARESortingManager::invalidateEntityEventHandler<REComponentWillRemoveEvent>;
  v75[3] = 0;
  v153 = v75;
  v76 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v151, v68, 0);
  v78 = v77;
  v79 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v79 = v76;
  v79[1] = v78;
  v80 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v151);
  v149 = re::globalAllocators(v80)[2];
  v81 = (*(*v149 + 32))(v149, 32, 0);
  *v81 = &unk_1F5CD20C0;
  v81[1] = this;
  v81[2] = re::ecs2::CARESortingManager::didChangeUISortingCASortOrderEventHandler;
  v81[3] = 0;
  v150 = v81;
  v82 = re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(v2, v148, 0, 0);
  v84 = v83;
  v85 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v85 = v82;
  v85[1] = v84;
  v86 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable(v148);
  v146 = re::globalAllocators(v86)[2];
  v87 = (*(*v146 + 32))(v146, 32, 0);
  *v87 = &unk_1F5CD2128;
  v87[1] = this;
  v87[2] = re::ecs2::CARESortingManager::invalidateEntityEventHandler<re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>;
  v87[3] = 0;
  v147 = v87;
  v88 = re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(v2, v145, 0, 0);
  v90 = v89;
  v91 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v91 = v88;
  v91[1] = v90;
  v92 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable(v145);
  v143 = re::globalAllocators(v92)[2];
  v93 = (*(*v143 + 32))(v143, 32, 0);
  *v93 = &unk_1F5CD2190;
  v93[1] = this;
  v93[2] = re::ecs2::CARESortingManager::invalidateEntityEventHandler<re::ecs2::UISortingComponentDidChangeIsPlatterEvent>;
  v93[3] = 0;
  v144 = v93;
  v94 = re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(v2, v142, 0, 0);
  v96 = v95;
  v97 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v97 = v94;
  v97[1] = v96;
  v98 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable(v142);
  v140 = re::globalAllocators(v98)[2];
  v99 = (*(*v140 + 32))(v140, 32, 0);
  *v99 = &unk_1F5CD21F8;
  v99[1] = this;
  v99[2] = re::ecs2::CARESortingManager::invalidateEntityEventHandler<RESceneEntityDidReparentEvent>;
  v99[3] = 0;
  v141 = v99;
  v100 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v139, 0, 0);
  v102 = v101;
  v103 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v103 = v100;
  v103[1] = v102;
  v104 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v139);
  v137 = re::globalAllocators(v104)[2];
  v105 = (*(*v137 + 32))(v137, 32, 0);
  *v105 = &unk_1F5CD2250;
  v105[1] = this;
  v105[2] = re::ecs2::CARESortingManager::activateEntityEventHandler;
  v105[3] = 0;
  v138 = v105;
  v106 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v136, 0, 0);
  v108 = v107;
  v109 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v109 = v106;
  v109[1] = v108;
  v110 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v136);
  v134 = re::globalAllocators(v110)[2];
  v111 = (*(*v134 + 32))(v134, 32, 0);
  *v111 = &unk_1F5CD22A8;
  v111[1] = this;
  v111[2] = re::ecs2::CARESortingManager::deactivateOrRemoveEntityEventHandler<RESceneEntityWillDeactivateEvent>;
  v111[3] = 0;
  v135 = v111;
  v112 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v133, 0, 0);
  v114 = v113;
  v115 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v115 = v112;
  v115[1] = v114;
  v116 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v133);
  v131 = re::globalAllocators(v116)[2];
  v117 = (*(*v131 + 32))(v131, 32, 0);
  *v117 = &unk_1F5CD2300;
  v117[1] = this;
  v117[2] = re::ecs2::CARESortingManager::deactivateOrRemoveEntityEventHandler<RESceneEntityWillRemoveEvent>;
  v117[3] = 0;
  v132 = v117;
  v118 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v2, v130, 0, 0);
  v120 = v119;
  v121 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v123);
  *v121 = v118;
  v121[1] = v120;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v130);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 8, &v129, v123);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v123);
  result = v123[0];
  if (v123[0])
  {
    if ((v124 & 1) == 0)
    {
      return (*(*v123[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::CARESortingManager::invalidateEntityEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 152, &v4);
  }

  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::CARESortingManager::invalidateEntityEventHandler<REComponentDidAddEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 152, &v4);
  }

  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::CARESortingManager::invalidateEntityEventHandler<REComponentWillRemoveEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 152, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManager::invalidateTransformEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManager::invalidateTransformEventHandler<REComponentDidAddEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManager::invalidateTransformEventHandler<REComponentWillRemoveEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v4);
  }

  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REBillboardTransformChangedEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REBillboardTransformChangedEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::CARESortingManager::invalidateTransformEventHandler<REBillboardTransformChangedEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManager::invalidateAnchorEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 296, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 296, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManager::invalidateAnchorEventHandler<REComponentDidAddEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 296, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 296, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManager::invalidateAnchorEventHandler<REComponentWillRemoveEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 296, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 296, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManager::meshSortingComponentAddedEventHandler(re::ecs2::CARESortingManager *a1, uint64_t a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v4 && *(v4 + 25) != 5 && (*(v4 + 168) & 1) == 0)
  {
    re::ecs2::CARESortingManager::removeEntityFromTracking(a1, a2);
  }

  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCASortOrderEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::CARESortingManager::didChangeUISortingCASortOrderEventHandler(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 344, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 344, &v4);
  }

  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::CARESortingManager::invalidateEntityEventHandler<re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 152, &v4);
  }

  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::CARESortingManager::invalidateEntityEventHandler<re::ecs2::UISortingComponentDidChangeIsPlatterEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 152, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManager::invalidateEntityEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 152, &v4) && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 152, &v4);
  }

  return 0;
}

uint64_t re::ecs2::CARESortingManager::activateEntityEventHandler(uint64_t a1, unint64_t a2)
{
  v10 = a2;
  ++re::ecs2::CARESortingDebugging::m_entitiesActivated;
  v3 = *(a2 + 98);
  if (*(a2 + 98))
  {
    v4 = (re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v5 = *(a2 + 104);
    v6 = vld1q_dup_s16(v4);
    v7 = 1;
    while (1)
    {
      v8 = vandq_s8(vceqq_s16(v6, *v5), xmmword_1E306AC00);
      v8.i16[0] = vmaxvq_u16(v8);
      if (v8.i32[0])
      {
        break;
      }

      v7 -= 8;
      ++v5;
      if (!--v3)
      {
        goto LABEL_8;
      }
    }

    if (v8.u16[0] - v7 < *(a2 + 96))
    {
      ++re::ecs2::CARESortingDebugging::m_uiSortingComponentActivated;
    }
  }

LABEL_8:
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 152, &v10);
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v10);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 200, &v10);
  return 0;
}

uint64_t re::ecs2::CARESortingManager::deactivateOrRemoveEntityEventHandler<RESceneEntityWillDeactivateEvent>(re::ecs2::CARESortingManager *a1, uint64_t a2)
{
  ++re::ecs2::CARESortingDebugging::m_entitiesDeactivated;
  v2 = *(a2 + 98);
  if (*(a2 + 98))
  {
    v3 = (re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v4 = *(a2 + 104);
    v5 = vld1q_dup_s16(v3);
    v6 = 1;
    while (1)
    {
      v7 = vandq_s8(vceqq_s16(v5, *v4), xmmword_1E306AC00);
      v7.i16[0] = vmaxvq_u16(v7);
      if (v7.i32[0])
      {
        break;
      }

      v6 -= 8;
      ++v4;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    if (v7.u16[0] - v6 < *(a2 + 96))
    {
      ++re::ecs2::CARESortingDebugging::m_uiSortingComponentDeactivated;
    }
  }

LABEL_8:
  re::ecs2::CARESortingManager::removeEntityFromTracking(a1, a2);
  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::CARESortingManager::deactivateOrRemoveEntityEventHandler<RESceneEntityWillRemoveEvent>(re::ecs2::CARESortingManager *a1, uint64_t a2)
{
  ++re::ecs2::CARESortingDebugging::m_entitiesDeactivated;
  v2 = *(a2 + 98);
  if (*(a2 + 98))
  {
    v3 = (re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
    v4 = *(a2 + 104);
    v5 = vld1q_dup_s16(v3);
    v6 = 1;
    while (1)
    {
      v7 = vandq_s8(vceqq_s16(v5, *v4), xmmword_1E306AC00);
      v7.i16[0] = vmaxvq_u16(v7);
      if (v7.i32[0])
      {
        break;
      }

      v6 -= 8;
      ++v4;
      if (!--v2)
      {
        goto LABEL_8;
      }
    }

    if (v7.u16[0] - v6 < *(a2 + 96))
    {
      ++re::ecs2::CARESortingDebugging::m_uiSortingComponentDeactivated;
    }
  }

LABEL_8:
  re::ecs2::CARESortingManager::removeEntityFromTracking(a1, a2);
  return 0;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addInternal<re::ecs2::Scene * const&,re::BucketArray<RESubscriptionHandle,8ul>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v9) + 16;
  }
}

uint64_t re::ecs2::CARESortingManager::unregisterScene(re::ecs2::CARESortingManager *this, re::ecs2::Entity ***a2)
{
  v13 = a2;
  v3 = a2[16];
  if (v3)
  {
    v4 = a2[18];
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      re::ecs2::CARESortingManager::removeEntityFromTracking(this, v6);
      v5 -= 8;
    }

    while (v5);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 8, &v13);
  if (result)
  {
    v8 = v13[36];
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

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 8, &v13);
  }

  return result;
}

uint64_t re::ecs2::CARESortingManager::removeEntityFromTracking(re::ecs2::CARESortingManager *this, re::ecs2::Entity *a2)
{
  v10 = a2;
  v3 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 104, &v10);
  if (v3)
  {
    v4 = re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 56, v3);
    if (v4)
    {
      re::ecs2::WorldSortingState::removeEntityFromTracking(v4, v10);
    }

    re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 104, &v10);
  }

  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 152, &v10);
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 200, &v10);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 248, &v10);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 296, &v10);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 344, &v10);
  v11 = v10;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(this + 448, &v11, v5 ^ (v5 >> 31), &v12);
  v6 = v14;
  if (v14 != 0x7FFFFFFF)
  {
    v7 = *(this + 58);
    v8 = *(v7 + 160 * v14) & 0x7FFFFFFF;
    if (v15 == 0x7FFFFFFF)
    {
      *(*(this + 57) + 4 * v13) = v8;
      v6 = v14;
    }

    else
    {
      *(v7 + 160 * v15) = *(v7 + 160 * v15) & 0x80000000 | v8;
    }

    *(v7 + 160 * v6) = *(this + 121);
    *(this + 121) = v6;
    --*(this + 119);
    ++*(this + 122);
  }

  return re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 392, &v10);
}

void re::ecs2::CARESortingManager::entitiesSortedBackToFront(re::ecs2::CARESortingManager *this@<X0>, re::ecs2::Entity *a2@<X1>, re::Allocator *a3@<X2>, uint64_t a4@<X8>)
{
  re::ecs2::CARESortingManager::tryGetCodirectionalGroupForEntity(&v11, this, a2);
  v6 = v11;
  if (v11)
  {
    v7 = v11[51];
    *(a4 + 32) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *a4 = a3;
    re::DynamicArray<float *>::setCapacity(a4, v7);
    ++*(a4 + 24);
    v8 = v6[51];
    if (v8)
    {
      v9 = v6[53];
      v10 = 16 * v8;
      do
      {
        re::DynamicArray<re::TransitionCondition *>::add(a4, v9);
        v9 += 2;
        v10 -= 16;
      }

      while (v10);
    }
  }

  else
  {
    *(a4 + 32) = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    *(a4 + 24) = 0;
  }
}

uint64_t *re::ecs2::CARESortingManager::tryGetCodirectionalGroupForEntity@<X0>(uint64_t *__return_ptr a1@<X8>, re::ecs2::CARESortingManager *this@<X0>, const re::ecs2::Entity *a3@<X1>)
{
  v6 = a3;
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 104, &v6);
  if (result)
  {
    result = re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 56, result);
    if (result)
    {
      return re::ecs2::WorldSortingState::tryGetCodirectionalGroupForEntity(result, v6, a1);
    }
  }

  *a1 = 0;
  return result;
}

uint64_t *re::ecs2::WorldSortingState::tryGetCodirectionalGroupForEntity@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a2;
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 96, &v6);
  if (result)
  {
    v5 = *result;
    *a3 = *result;
    if (v5)
    {
      return (v5 + 8);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void re::ecs2::CARESortingManager::~CARESortingManager(re::ecs2::CARESortingManager *this)
{
  re::ecs2::CARESortingManager::~CARESortingManager(this);

  JUMPOUT(0x1E6906520);
}

{
  re::AssetHandle::~AssetHandle((this + 536));
  re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 56);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 49);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 43);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 37);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 25);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 19);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 13);
  re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 7);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 1);
}

void re::ecs2::CAMeshCodirectionalGroup::~CAMeshCodirectionalGroup(re::ecs2::CAMeshCodirectionalGroup *this)
{
  *this = &unk_1F5CD1EE0;
  v2 = (this + 24);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 43);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 37);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 31);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 25);
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD1EE0;
  v2 = (this + 24);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 43);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 37);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 31);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 25);
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 160 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_129, 4 * v10);
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

void re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16) + v6;
      if ((*(v8 + 8) & 0x80000000) != 0)
      {
        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

void re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::setCapacity(__int128 *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 6) != a2 && *(a1 + 7) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v22, v4, a2);
      v5 = *a1;
      *a1 = *v22;
      v6 = *(a1 + 2);
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 8) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 24);
      v8 = *&v22[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = DWORD1(v9);
        v12 = v7;
        v13 = (v6 + 16);
        do
        {
          if ((*(v13 - 1) & 0x80000000) != 0)
          {
            v14 = *(v13 - 2);
            v15 = *(a1 + 6);
            v16 = v14 % v15;
            v17 = *(a1 + 9);
            if (v17 == 0x7FFFFFFF)
            {
              v17 = *(a1 + 8);
              v18 = v17;
              if (v17 == v15)
              {
                re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::setCapacity(a1, 2 * v11);
                v16 = v14 % *(a1 + 6);
                v18 = *(a1 + 8);
                v12 = *(a1 + 1);
              }

              *(a1 + 8) = v18 + 1;
              v19 = *(a1 + 2);
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = *(a1 + 2);
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 9) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(*(a1 + 2) + 24 * v17 + 8) = *(*(a1 + 2) + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(*(a1 + 2) + 24 * v17) = v14;
            *(*(a1 + 2) + 24 * v17 + 16) = *v13;
            *v13 = 0;
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 7) + 1;
            *(a1 + 7) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (a2)
    {
      v21 = a2;
    }

    else
    {
      v21 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t *a4)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  v13 = *a4;
  *(*(a1 + 16) + 24 * v8 + 16) = *a4;
  if (v13)
  {
    v14 = (v13 + 8);
    v12 = *(a1 + 8);
  }

  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::ecs2::MeshSortingComponent::~MeshSortingComponent(re::ecs2::MeshSortingComponent *this)
{
  *this = &unk_1F5CD27E0;
  re::DynamicArray<unsigned long>::deinit(this + 376);
  re::DynamicArray<unsigned long>::deinit(this + 336);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD27E0;
  re::DynamicArray<unsigned long>::deinit(this + 376);
  re::DynamicArray<unsigned long>::deinit(this + 336);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::HashSetBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(a1, v4, v5);
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16) + v6;
      if ((*(v8 + 8) & 0x80000000) != 0)
      {
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

void re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD1F50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD1F50;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD1FA8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD1FA8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2000;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2000;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2058;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,REBillboardTransformChangedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2058;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REBillboardTransformChangedEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD20C0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD20C0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCASortOrderEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2128;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2128;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeCALayerNeedsMeshEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2190;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2190;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::ecs2::UISortingComponentDidChangeIsPlatterEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD21F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD21F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2250;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2250;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD22A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD22A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD2300;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::CARESortingManager,REEventHandlerResult (re::ecs2::CARESortingManager::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD2300;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 160 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 160 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 160 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 160 * v8) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

double re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1[2], v3++);
      }

      while (v3 < *(a1 + 8));
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

double re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 184 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v2 + 112));
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit((v2 + 64));

    return re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit((v2 + 16));
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v30, v9, v8);
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
                v17 = re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v13 + 144) % *(a1 + 24), *(v13 + 144));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 80);
                v19 = *(v13 + 96);
                v20 = *(v13 + 128);
                *(v17 + 112) = *(v13 + 112);
                *(v17 + 128) = v20;
                *(v17 + 80) = v18;
                *(v17 + 96) = v19;
                v21 = *(v13 + 16);
                v22 = *(v13 + 32);
                v23 = *(v13 + 64);
                *(v17 + 48) = *(v13 + 48);
                *(v17 + 64) = v23;
                *(v17 + 16) = v21;
                *(v17 + 32) = v22;
              }

              v13 += 160;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v30);
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
    v25 = *(v24 + 160 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 160 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 160 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 144) = a3;
  ++*(a1 + 28);
  return v24 + 160 * v5;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 184 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 184 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 184 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 184 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          v34 = a3;
          memset(v35, 0, 36);
          *&v35[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v35, v9, v8);
          v11 = *v35;
          *v35 = *a1;
          *a1 = v11;
          v12 = *&v35[16];
          v13 = *(a1 + 16);
          *&v35[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v35[24];
          *&v35[24] = *(a1 + 24);
          v14 = *&v35[32];
          *(a1 + 24) = v15;
          ++*&v35[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*(v13 + 184 * v17) & 0x80000000) != 0)
              {
                v18 = v13 + 184 * v17;
                v19 = re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 176) % *(a1 + 24), *(v18 + 176));
                *(v19 + 8) = *(v18 + 8);
                re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::HashSetBase(v19 + 16, v18 + 16);
                re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::HashSetBase(v19 + 64, v18 + 64);
                *(v19 + 112) = 0u;
                *(v19 + 144) = 0;
                *(v19 + 128) = 0u;
                *(v19 + 148) = 0x7FFFFFFFLL;
                v20 = *(v18 + 112);
                if (v20)
                {
                  v21 = *(v18 + 140) <= 3u ? 3 : *(v18 + 140);
                  re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v19 + 112, v20, v21);
                  if (*(v18 + 144))
                  {
                    v22 = 0;
                    v23 = 0;
                    do
                    {
                      v24 = *(v18 + 128);
                      if ((*(v24 + v22) & 0x80000000) != 0)
                      {
                        v25 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v19 + 112, *(v24 + v22 + 24) % *(v19 + 136), *(v24 + v22 + 24));
                        *(v25 + 8) = *(*(v18 + 128) + v22 + 8);
                        v26 = *(*(v18 + 128) + v22 + 16);
                        *(v25 + 16) = v26;
                        if (v26)
                        {
                          v27 = (v26 + 8);
                        }
                      }

                      ++v23;
                      v22 += 32;
                    }

                    while (v23 < *(v18 + 144));
                  }
                }

                *(v19 + 160) = *(v18 + 160);
              }

              ++v17;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::ecs2::WorldSortingState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v35);
          a3 = v34;
        }
      }

      else
      {
        if (v8)
        {
          v30 = 2 * v7;
        }

        else
        {
          v30 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v28 = *(a1 + 16);
    v29 = *(v28 + 184 * v5);
  }

  else
  {
    v28 = *(a1 + 16);
    v29 = *(v28 + 184 * v5);
    *(a1 + 36) = v29 & 0x7FFFFFFF;
  }

  v31 = v28 + 184 * v5;
  *v31 = v29 | 0x80000000;
  v32 = *(a1 + 8);
  *v31 = *(v32 + 4 * a2) | 0x80000000;
  *(v32 + 4 * a2) = v5;
  *(v31 + 176) = a3;
  ++*(a1 + 28);
  return v28 + 184 * v5;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::HashSetBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(a1, v4, v5);
    re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>>,true,false>::clear(a1);
    v6 = *(a2 + 28);
    if (*(a1 + 24) < v6)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::setCapacity(a1, v6);
    }

    v7 = *(a2 + 32);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i < v7; ++i)
      {
        v10 = *(a2 + 16) + v8;
        if ((*(v10 + 8) & 0x80000000) != 0)
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::addAsCopy(a1, *v10 % *(a1 + 24), *v10, (v10 + 16));
          v7 = *(a2 + 32);
        }

        v8 += 24;
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v25, v9, v8);
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
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                *(v18 + 8) = *(v17 - 1);
                *(v18 + 16) = *v17;
                *v17 = 0;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
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
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,5ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 5;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<unsigned long long,5ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,5ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 5)
    {
      return result;
    }

    v5 = 10;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(result, a2);
}

void re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 72 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_129, 4 * v10);
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

void re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
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

uint64_t *re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 6), *(v7 + v5 + 64));
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

uint64_t re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

uint64_t re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 72 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
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
      if (*(v7 + 72 * v8 + 8) == a3)
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
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
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
  *(v9 + 48) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

void re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::setCapacity(_anonymous_namespace_ *result, uint64_t a2)
{
  v2 = a2;
  v4 = *result;
  if (*result)
  {
    if (v2 && *(result + 6) != v2 && *(result + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *result;
      *result = v5;
      v6 = *&v9[16];
      *&v9[16] = *(result + 2);
      *(result + 2) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(result + 24);
      *(result + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::move(result, v9);
      re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (v2)
    {
      v8 = v2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 32);
        *(result + 16) = *(v8 + 16);
        *(result + 32) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

void re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_129, 4 * v10);
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

double re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::deinit(uint64_t *a1)
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

        v4 += 16;
        --v3;
      }

      while (v3);
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

_anonymous_namespace_ *re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::ecs2::Entity *,128ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 128;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 0x80 || (v7 & 1) == 0))
    {
      if (a2 < 0x81)
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

__n128 std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[2];
        if (result.n128_f32[0] < v12->n128_f32[2])
        {
          v124 = *v12;
          *v12 = a2[-1];
          result = v124;
          a2[-1] = v124;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v59 = v12[1].n128_f32[2];
      v60 = v12[2].n128_f32[2];
      if (v59 >= v12->n128_f32[2])
      {
        if (v60 < v59)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_f32[2] < v12->n128_f32[2])
          {
            v128 = *v12;
            *v12 = v12[1];
            result = v128;
            v12[1] = v128;
          }
        }
      }

      else
      {
        if (v60 < v59)
        {
          v126 = *v12;
          *v12 = v12[2];
          result = v126;
          goto LABEL_183;
        }

        v130 = *v12;
        *v12 = v12[1];
        v12[1] = v130;
        if (v60 < v12[1].n128_f32[2])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_183:
          v12[2] = result;
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[2];
      if (result.n128_f32[0] >= v12[2].n128_f32[2])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v9;
      *v9 = result;
      result.n128_u32[0] = v12[2].n128_u32[2];
      if (result.n128_f32[0] >= v12[1].n128_f32[2])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_187:
      result.n128_u32[0] = v12[1].n128_u32[2];
      if (result.n128_f32[0] < v12->n128_f32[2])
      {
        v131 = *v12;
        *v12 = v12[1];
        result = v131;
        v12[1] = v131;
      }

      return result;
    }

    if (v13 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v61 = v12 + 1;
      v63 = v12 == a2 || v61 == a2;
      if (a4)
      {
        if (!v63)
        {
          v64 = 0;
          v65 = v12;
          do
          {
            v66 = v61;
            result.n128_u32[0] = v65[1].n128_u32[2];
            if (result.n128_f32[0] < v65->n128_f32[2])
            {
              v67 = v61->n128_u64[0];
              v68 = v65[1].n128_u32[3];
              v69 = v64;
              while (1)
              {
                *(v12 + v69 + 16) = *(v12 + v69);
                if (!v69)
                {
                  break;
                }

                v70 = *(&v12->n128_f32[-2] + v69);
                v69 -= 16;
                if (result.n128_f32[0] >= v70)
                {
                  v71 = &v12[1] + v69;
                  goto LABEL_130;
                }
              }

              v71 = v12;
LABEL_130:
              *v71 = v67;
              *(v71 + 8) = result.n128_u32[0];
              *(v71 + 12) = v68;
            }

            v61 = v66 + 1;
            v64 += 16;
            v65 = v66;
          }

          while (&v66[1] != a2);
        }
      }

      else if (!v63)
      {
        do
        {
          v100 = v61;
          result.n128_u32[0] = a1[1].n128_u32[2];
          if (result.n128_f32[0] < a1->n128_f32[2])
          {
            v101 = v61->n128_u64[0];
            v102 = a1[1].n128_u32[3];
            v103 = v100;
            do
            {
              *v103 = v103[-1];
              v104 = v103[-2].n128_f32[2];
              --v103;
            }

            while (result.n128_f32[0] < v104);
            v103->n128_u64[0] = v101;
            v103->n128_u32[2] = result.n128_u32[0];
            v103->n128_u32[3] = v102;
          }

          v61 = v100 + 1;
          a1 = v100;
        }

        while (&v100[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v72 = (v13 - 2) >> 1;
        v73 = v72;
        do
        {
          v74 = v73;
          if (v72 >= v73)
          {
            v75 = (2 * v73) | 1;
            v76 = &v12[v75];
            if (2 * v74 + 2 < v13 && v76->n128_f32[2] < v76[1].n128_f32[2])
            {
              ++v76;
              v75 = 2 * v74 + 2;
            }

            v77 = &v12[v74];
            v78 = v77->n128_f32[2];
            if (v76->n128_f32[2] >= v78)
            {
              v79 = v77->n128_u64[0];
              v80 = v77->n128_u32[3];
              do
              {
                v81 = v77;
                v77 = v76;
                *v81 = *v76;
                if (v72 < v75)
                {
                  break;
                }

                v82 = 2 * v75;
                v75 = (2 * v75) | 1;
                v76 = &v12[v75];
                v83 = v82 + 2;
                if (v83 < v13 && v76->n128_f32[2] < v76[1].n128_f32[2])
                {
                  ++v76;
                  v75 = v83;
                }
              }

              while (v76->n128_f32[2] >= v78);
              v77->n128_u64[0] = v79;
              v77->n128_f32[2] = v78;
              v77->n128_u32[3] = v80;
            }
          }

          v73 = v74 - 1;
        }

        while (v74);
        do
        {
          v84 = 0;
          v127 = *v12;
          v85 = v12;
          do
          {
            v86 = &v85[v84];
            v87 = v86 + 1;
            v88 = (2 * v84) | 1;
            v84 = 2 * v84 + 2;
            if (v84 >= v13)
            {
              v84 = v88;
            }

            else
            {
              v89 = v86[1].n128_f32[2];
              v90 = v86[2].n128_f32[2];
              v91 = v86 + 2;
              if (v89 >= v90)
              {
                v84 = v88;
              }

              else
              {
                v87 = v91;
              }
            }

            *v85 = *v87;
            v85 = v87;
          }

          while (v84 <= ((v13 - 2) >> 1));
          if (v87 == --a2)
          {
            result = v127;
            *v87 = v127;
          }

          else
          {
            *v87 = *a2;
            result = v127;
            *a2 = v127;
            v92 = (v87 - v12 + 16) >> 4;
            v93 = v92 < 2;
            v94 = v92 - 2;
            if (!v93)
            {
              v95 = v94 >> 1;
              v96 = &v12[v95];
              result.n128_u32[0] = v87->n128_u32[2];
              if (v96->n128_f32[2] < result.n128_f32[0])
              {
                v97 = v87->n128_u64[0];
                v98 = v87->n128_u32[3];
                do
                {
                  v99 = v87;
                  v87 = v96;
                  *v99 = *v96;
                  if (!v95)
                  {
                    break;
                  }

                  v95 = (v95 - 1) >> 1;
                  v96 = &v12[v95];
                }

                while (v96->n128_f32[2] < result.n128_f32[0]);
                v87->n128_u64[0] = v97;
                v87->n128_u32[2] = result.n128_u32[0];
                v87->n128_u32[3] = v98;
              }
            }
          }

          v93 = v13-- <= 2;
        }

        while (!v93);
      }

      return result;
    }

    v14 = &v12[v13 >> 1];
    v15 = a2[-1].n128_f32[2];
    if (v13 >= 0x81)
    {
      v16 = v14->n128_f32[2];
      if (v16 >= v12->n128_f32[2])
      {
        if (v15 < v16)
        {
          v107 = *v14;
          *v14 = *v9;
          *v9 = v107;
          if (v14->n128_f32[2] < v12->n128_f32[2])
          {
            v108 = *v12;
            *v12 = *v14;
            *v14 = v108;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          v105 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v111 = *v12;
        *v12 = *v14;
        *v14 = v111;
        if (a2[-1].n128_f32[2] < v14->n128_f32[2])
        {
          v105 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v105;
        }
      }

      v18 = v14 - 1;
      v19 = v14[-1].n128_f32[2];
      v20 = a2[-2].n128_f32[2];
      if (v19 >= v12[1].n128_f32[2])
      {
        if (v20 < v19)
        {
          v112 = *v18;
          *v18 = *v10;
          *v10 = v112;
          if (v14[-1].n128_f32[2] < v12[1].n128_f32[2])
          {
            v22 = v12[1];
            v12[1] = *v18;
            *v18 = v22;
          }
        }
      }

      else
      {
        if (v20 < v19)
        {
          v21 = v12[1];
          v12[1] = *v10;
          goto LABEL_38;
        }

        v23 = v12[1];
        v12[1] = *v18;
        *v18 = v23;
        if (a2[-2].n128_f32[2] < v14[-1].n128_f32[2])
        {
          v114 = *v18;
          *v18 = *v10;
          v21 = v114;
LABEL_38:
          *v10 = v21;
        }
      }

      v24 = v14 + 1;
      v25 = v14[1].n128_f32[2];
      v26 = a2[-3].n128_f32[2];
      if (v25 >= v12[2].n128_f32[2])
      {
        if (v26 < v25)
        {
          v115 = *v24;
          *v24 = *v11;
          *v11 = v115;
          if (v14[1].n128_f32[2] < v12[2].n128_f32[2])
          {
            v28 = v12[2];
            v12[2] = *v24;
            *v24 = v28;
          }
        }
      }

      else
      {
        if (v26 < v25)
        {
          v27 = v12[2];
          v12[2] = *v11;
          goto LABEL_47;
        }

        v29 = v12[2];
        v12[2] = *v24;
        *v24 = v29;
        if (a2[-3].n128_f32[2] < v14[1].n128_f32[2])
        {
          v116 = *v24;
          *v24 = *v11;
          v27 = v116;
LABEL_47:
          *v11 = v27;
        }
      }

      v30 = v14->n128_f32[2];
      v31 = v14[1].n128_f32[2];
      if (v30 >= v14[-1].n128_f32[2])
      {
        if (v31 < v30)
        {
          v118 = *v14;
          *v14 = *v24;
          *v24 = v118;
          if (v14->n128_f32[2] < v14[-1].n128_f32[2])
          {
            v119 = *v18;
            *v18 = *v14;
            *v14 = v119;
          }
        }
      }

      else
      {
        if (v31 < v30)
        {
          v117 = *v18;
          *v18 = *v24;
          goto LABEL_56;
        }

        v120 = *v18;
        *v18 = *v14;
        *v14 = v120;
        if (v14[1].n128_f32[2] < v14->n128_f32[2])
        {
          v117 = *v14;
          *v14 = *v24;
LABEL_56:
          *v24 = v117;
        }
      }

      v121 = *v12;
      *v12 = *v14;
      result = v121;
      *v14 = v121;
      goto LABEL_58;
    }

    v17 = v12->n128_f32[2];
    if (v17 >= v14->n128_f32[2])
    {
      if (v15 < v17)
      {
        v109 = *v12;
        *v12 = *v9;
        result = v109;
        *v9 = v109;
        if (v12->n128_f32[2] < v14->n128_f32[2])
        {
          v110 = *v14;
          *v14 = *v12;
          result = v110;
          *v12 = v110;
        }
      }

      goto LABEL_58;
    }

    if (v15 < v17)
    {
      v106 = *v14;
      *v14 = *v9;
LABEL_35:
      result = v106;
      *v9 = v106;
      goto LABEL_58;
    }

    v113 = *v14;
    *v14 = *v12;
    result = v113;
    *v12 = v113;
    if (a2[-1].n128_f32[2] < v12->n128_f32[2])
    {
      v106 = *v12;
      *v12 = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      result.n128_u32[0] = v12->n128_u32[2];
LABEL_61:
      v32 = 0;
      v33 = v12->n128_u64[0];
      v34 = v12->n128_u32[3];
      do
      {
        v35 = v12[++v32].n128_f32[2];
      }

      while (v35 < result.n128_f32[0]);
      v36 = &v12[v32];
      v37 = a2;
      if (v32 == 1)
      {
        v40 = a2;
        while (v36 < v40)
        {
          v38 = v40 - 1;
          v41 = v40[-1].n128_f32[2];
          --v40;
          if (v41 < result.n128_f32[0])
          {
            goto LABEL_71;
          }
        }

        v38 = v40;
      }

      else
      {
        do
        {
          v38 = v37 - 1;
          v39 = v37[-1].n128_f32[2];
          --v37;
        }

        while (v39 >= result.n128_f32[0]);
      }

LABEL_71:
      v12 = v36;
      if (v36 < v38)
      {
        v42 = v38;
        do
        {
          v122 = *v12;
          *v12 = *v42;
          *v42 = v122;
          do
          {
            v43 = v12[1].n128_f32[2];
            ++v12;
          }

          while (v43 < result.n128_f32[0]);
          do
          {
            v44 = v42[-1].n128_f32[2];
            --v42;
          }

          while (v44 >= result.n128_f32[0]);
        }

        while (v12 < v42);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      v12[-1].n128_u64[0] = v33;
      v12[-1].n128_u32[2] = result.n128_u32[0];
      v12[-1].n128_u32[3] = v34;
      if (v36 < v38)
      {
        goto LABEL_82;
      }

      v45 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *>(a1, v12 - 1, result);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *>(v12, a2, v46))
      {
        a2 = v12 - 1;
        if (!v45)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v45)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *,false>(a1, v12 - 1, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      result.n128_u32[0] = v12->n128_u32[2];
      if (v12[-1].n128_f32[2] < result.n128_f32[0])
      {
        goto LABEL_61;
      }

      if (result.n128_f32[0] >= a2[-1].n128_f32[2])
      {
        n128_u64 = v12[1].n128_u64;
        do
        {
          v12 = n128_u64;
          if (n128_u64 >= a2)
          {
            break;
          }

          v50 = *(n128_u64 + 8);
          n128_u64 += 16;
        }

        while (result.n128_f32[0] >= v50);
      }

      else
      {
        v47 = v12;
        do
        {
          v12 = v47 + 1;
          v48 = v47[1].n128_f32[2];
          ++v47;
        }

        while (result.n128_f32[0] >= v48);
      }

      v51 = a2;
      if (v12 < a2)
      {
        v52 = a2;
        do
        {
          v51 = v52 - 1;
          v53 = v52[-1].n128_f32[2];
          --v52;
        }

        while (result.n128_f32[0] < v53);
      }

      v54 = a1->n128_u64[0];
      v55 = a1->n128_u32[3];
      while (v12 < v51)
      {
        v123 = *v12;
        *v12 = *v51;
        *v51 = v123;
        do
        {
          v56 = v12[1].n128_f32[2];
          ++v12;
        }

        while (result.n128_f32[0] >= v56);
        do
        {
          v57 = v51[-1].n128_f32[2];
          --v51;
        }

        while (result.n128_f32[0] < v57);
      }

      if (&v12[-1] != a1)
      {
        *a1 = v12[-1];
      }

      a4 = 0;
      v12[-1].n128_u64[0] = v54;
      v12[-1].n128_u32[2] = result.n128_u32[0];
      v12[-1].n128_u32[3] = v55;
    }
  }

  result.n128_u32[0] = v12[1].n128_u32[2];
  v58 = a2[-1].n128_f32[2];
  if (result.n128_f32[0] >= v12->n128_f32[2])
  {
    if (v58 >= result.n128_f32[0])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v9;
    *v9 = result;
    goto LABEL_187;
  }

  if (v58 >= result.n128_f32[0])
  {
    v129 = *v12;
    *v12 = v12[1];
    result = v129;
    v12[1] = v129;
    result.n128_u32[0] = a2[-1].n128_u32[2];
    if (result.n128_f32[0] >= v12[1].n128_f32[2])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v9;
  }

  else
  {
    v125 = *v12;
    *v12 = *v9;
    result = v125;
  }

  *v9 = result;
  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f32[2];
  v7 = a3->n128_f32[2];
  if (v6 >= a1->n128_f32[2])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[2] < a1->n128_f32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f32[2] < a2->n128_f32[2])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[2] < a3->n128_f32[2])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f32[2] < a2->n128_f32[2])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[2] < a1->n128_f32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[2];
  if (result.n128_f32[0] < a4->n128_f32[2])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = a4->n128_u32[2];
    if (result.n128_f32[0] < a3->n128_f32[2])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u32[0] = a3->n128_u32[2];
      if (result.n128_f32[0] < a2->n128_f32[2])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u32[0] = a2->n128_u32[2];
        if (result.n128_f32[0] < a1->n128_f32[2])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_f32[2];
      v7 = a2[-1].n128_f32[2];
      if (v6 < a1->n128_f32[2])
      {
        if (v7 >= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_f32[2] >= a1[1].n128_f32[2])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_f32[2] < a1->n128_f32[2])
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_f32[2];
    v15 = a1->n128_f32[2];
    v16 = a1[2].n128_f32[2];
    if (v14 >= v15)
    {
      if (v16 < v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_f32[2] < v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 >= v14)
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v16 >= a1[1].n128_f32[2])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_f32[2] >= a1[2].n128_f32[2])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_f32[2] >= a1[1].n128_f32[2])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[2] < a1->n128_f32[2])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_f32[2];
  v11 = a1->n128_f32[2];
  v12 = a1[2].n128_f32[2];
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_f32[2] < v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 >= a1[1].n128_f32[2])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_f32[2];
    if (v28 < v9->n128_f32[2])
    {
      v29 = v25->n128_u64[0];
      v30 = v25->n128_u32[3];
      v31 = v26;
      while (1)
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v32 = *(&a1[1].n128_f32[2] + v31);
        v31 -= 16;
        if (v28 >= v32)
        {
          v33 = (a1 + v31 + 48);
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      v33->n128_u64[0] = v29;
      v33->n128_f32[2] = v28;
      v33->n128_u32[3] = v30;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addInternal<re::ecs2::Entity const* const&,re::SharedPtr<re::ecs2::CAMeshSortGroup> const&>(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t *a5)
{
  v8 = re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::CAMeshCodirectionalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, a3, a2);
  *(v8 + 8) = *a4;
  v9 = *a5;
  *(v8 + 16) = *a5;
  v10 = v8 + 16;
  if (v9)
  {
    v11 = (v9 + 8);
  }

  ++*(a1 + 40);
  return v10;
}

void re::ecs2::CAMeshSortGroup::~CAMeshSortGroup(re::ecs2::CAMeshSortGroup *this)
{
  *this = &unk_1F5CD2358;
  v2 = (this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 34);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD2358;
  v2 = (this + 48);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 34);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::FixedArray<re::SortingPlane>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 32 * a3;
  v6 = (*(*a2 + 32))(a2, 32 * a3, 16);
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
    bzero(v6, v5 - 32);
    v8 = (v8 + v5 - 32);
  }

  *v8 = 0u;
  v8[1] = 0u;
}

void std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,false>(unint64_t result, re::ecs2::CAMeshSortGroup **a2, re::ecs2::CAMeshCodirectionalGroup *a3, re::ecs2::CAMeshCodirectionalGroup *a4, char a5)
{
  v5 = a4;
  while (2)
  {
    v92 = a2 - 2;
    v9 = result;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          result = v9;
          v10 = (a2 - v9) >> 4;
          v11 = v10 - 2;
          if (v10 > 2)
          {
            switch(v10)
            {
              case 3:

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(result, (result + 16), v92, a3);
                return;
              case 4:
                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(result, (result + 16), (result + 32), a3);
                v40 = *(a2 - 2);
                v39 = a2 - 2;
                if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v40, *(result + 32), *(*a3 + 264), v41))
                {
                  v43 = *(result + 32);
                  *(result + 32) = *v39;
                  *v39 = v43;
                  if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*(result + 32), *(result + 16), *(*a3 + 264), v42))
                  {
                    v45 = *(result + 16);
                    *(result + 16) = *(result + 32);
                    *(result + 32) = v45;
                    if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*(result + 16), *result, *(*a3 + 264), v44))
                    {
                      v99 = *result;
                      *result = *(result + 16);
                      *(result + 16) = v99;
                    }
                  }
                }

                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(result, (result + 16), (result + 32), (result + 48), v92, a3);
                return;
            }
          }

          else
          {
            if (v10 < 2)
            {
              return;
            }

            if (v10 == 2)
            {
              v37 = *(a2 - 2);
              v36 = a2 - 2;
              if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v37, *result, *(*a3 + 264), a4))
              {
                v98 = *result;
                *result = *v36;
                *v36 = v98;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v46 = (result + 16);
            v48 = result == a2 || v46 == a2;
            if (a5)
            {
              if (!v48)
              {
                v49 = 0;
                v50 = result;
                do
                {
                  v51 = v46;
                  if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*(v50 + 16), *v50, *(*a3 + 264), a4))
                  {
                    v52 = *v51;
                    v53 = *(v50 + 24);
                    v54 = v49;
                    while (1)
                    {
                      v55 = result + v54;
                      *(result + v54 + 16) = *(result + v54);
                      if (!v54)
                      {
                        break;
                      }

                      v54 -= 16;
                      if ((re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v52, *(v55 - 16), *(*a3 + 264), a4) & 1) == 0)
                      {
                        v56 = (result + v54 + 16);
                        goto LABEL_84;
                      }
                    }

                    v56 = result;
LABEL_84:
                    *v56 = v52;
                    v56[1] = v53;
                  }

                  v46 = v51 + 2;
                  v49 += 16;
                  v50 = v51;
                }

                while (v51 + 2 != a2);
              }
            }

            else if (!v48)
            {
              do
              {
                v85 = v46;
                if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*(result + 16), *result, *(*a3 + 264), a4))
                {
                  v86 = *v85;
                  v87 = *(result + 24);
                  v88 = v85;
                  do
                  {
                    v89 = v88 - 2;
                    *v88 = *(v88 - 1);
                    v90 = re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v86, *(v88 - 4), *(*a3 + 264), a4);
                    v88 = v89;
                  }

                  while ((v90 & 1) != 0);
                  *v89 = v86;
                  v89[1] = v87;
                }

                v46 = (v85 + 16);
                result = v85;
              }

              while ((v85 + 16) != a2);
            }

            return;
          }

          if (!v5)
          {
            if (result != a2)
            {
              v91 = a2;
              v57 = v11 >> 1;
              v58 = v11 >> 1;
              do
              {
                v59 = v58;
                if (v57 >= v58)
                {
                  v60 = (2 * v58) | 1;
                  v61 = (result + 16 * v60);
                  if (2 * v58 + 2 < v10 && re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*v61, v61[2], *(*a3 + 264), a4))
                  {
                    v61 += 2;
                    v60 = 2 * v59 + 2;
                  }

                  v62 = (result + 16 * v59);
                  if ((re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*v61, *v62, *(*a3 + 264), a4) & 1) == 0)
                  {
                    v63 = *v62;
                    v93 = v62[1];
                    do
                    {
                      v64 = v62;
                      v62 = v61;
                      *v64 = *v61;
                      if (v57 < v60)
                      {
                        break;
                      }

                      v65 = (2 * v60) | 1;
                      v61 = (result + 16 * v65);
                      v66 = 2 * v60 + 2;
                      if (v66 < v10 && re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*v61, v61[2], *(*a3 + 264), a4))
                      {
                        v61 += 2;
                        v65 = v66;
                      }

                      v60 = v65;
                    }

                    while (!re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*v61, v63, *(*a3 + 264), a4));
                    *v62 = v63;
                    v62[1] = v93;
                  }
                }

                v58 = v59 - 1;
              }

              while (v59);
              v67 = v91;
              do
              {
                v68 = v67;
                v69 = 0;
                v100 = *result;
                v70 = result;
                do
                {
                  v71 = &v70[v69];
                  v72 = (v71 + 1);
                  v73 = (2 * v69) | 1;
                  v74 = 2 * v69 + 2;
                  if (v74 >= v10)
                  {
                    v69 = (2 * v69) | 1;
                  }

                  else
                  {
                    v76 = *(v71 + 4);
                    v75 = (v71 + 2);
                    if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*(v75 - 2), v76, *(*a3 + 264), a4))
                    {
                      v72 = v75;
                      v69 = v74;
                    }

                    else
                    {
                      v69 = v73;
                    }
                  }

                  *v70 = *v72;
                  v70 = v72;
                }

                while (v69 <= ((v10 - 2) >> 1));
                v67 = v68 - 2;
                if (v72 == v68 - 2)
                {
                  *v72 = v100;
                }

                else
                {
                  *v72 = *v67;
                  *v67 = v100;
                  v77 = (v72 - result + 16) >> 4;
                  v78 = v77 < 2;
                  v79 = v77 - 2;
                  if (!v78)
                  {
                    v80 = v79 >> 1;
                    v81 = (result + 16 * (v79 >> 1));
                    if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*v81, *v72, *(*a3 + 264), a4))
                    {
                      v82 = *v72;
                      v83 = v72[1];
                      do
                      {
                        v84 = v72;
                        v72 = v81;
                        *v84 = *v81;
                        if (!v80)
                        {
                          break;
                        }

                        v80 = (v80 - 1) >> 1;
                        v81 = (result + 16 * v80);
                      }

                      while ((re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*v81, v82, *(*a3 + 264), a4) & 1) != 0);
                      *v72 = v82;
                      v72[1] = v83;
                    }
                  }
                }

                v78 = v10-- <= 2;
              }

              while (!v78);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = (result + 16 * (v10 >> 1));
          if (v10 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>((result + 16 * (v10 >> 1)), result, v92, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(result, (result + 16 * (v10 >> 1)), v92, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>((result + 16), v13 - 2, a2 - 4, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>((result + 32), (result + 16 + 16 * v12), a2 - 6, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(v13 - 2, (result + 16 * (v10 >> 1)), (result + 16 + 16 * v12), a3);
            v95 = *result;
            *result = *v13;
            *v13 = v95;
          }

          v5 = (v5 - 1);
          if (a5 & 1) != 0 || (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*(result - 16), *result, *(*a3 + 264), v14))
          {
            break;
          }

          v29 = *result;
          v28 = *(result + 8);
          if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*result, *v92, *(*a3 + 264), v14))
          {
            v9 = result;
            do
            {
              v30 = *(v9 + 16);
              v9 += 16;
            }

            while ((re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v29, v30, *(*a3 + 264), a4) & 1) == 0);
          }

          else
          {
            v31 = result + 16;
            do
            {
              v9 = v31;
              if (v31 >= a2)
              {
                break;
              }

              v31 += 16;
            }

            while (!re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v29, *v9, *(*a3 + 264), a4));
          }

          v32 = a2;
          if (v9 < a2)
          {
            v32 = a2;
            do
            {
              v33 = *(v32 - 2);
              v32 -= 2;
            }

            while ((re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v29, v33, *(*a3 + 264), a4) & 1) != 0);
          }

          while (v9 < v32)
          {
            v97 = *v9;
            *v9 = *v32;
            *v32 = v97;
            do
            {
              v34 = *(v9 + 16);
              v9 += 16;
            }

            while (!re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v29, v34, *(*a3 + 264), a4));
            do
            {
              v35 = *(v32 - 2);
              v32 -= 2;
            }

            while ((re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v29, v35, *(*a3 + 264), a4) & 1) != 0);
          }

          if (v9 - 16 != result)
          {
            *result = *(v9 - 16);
          }

          a5 = 0;
          *(v9 - 16) = v29;
          *(v9 - 8) = v28;
        }

        v15 = 0;
        v17 = *result;
        v16 = *(result + 8);
        do
        {
          v18 = re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*(result + v15 + 16), v17, *(*a3 + 264), v14);
          v15 += 16;
        }

        while ((v18 & 1) != 0);
        v19 = result + v15;
        v20 = a2;
        if (v15 == 16)
        {
          v20 = a2;
          do
          {
            if (v19 >= v20)
            {
              break;
            }

            v22 = *(v20 - 2);
            v20 -= 2;
          }

          while ((re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v22, v17, *(*a3 + 264), v14) & 1) == 0);
        }

        else
        {
          do
          {
            v21 = *(v20 - 2);
            v20 -= 2;
          }

          while (!re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v21, v17, *(*a3 + 264), v14));
        }

        v9 = result + v15;
        if (v19 < v20)
        {
          v23 = v20;
          do
          {
            v96 = *v9;
            *v9 = *v23;
            *v23 = v96;
            do
            {
              v24 = *(v9 + 16);
              v9 += 16;
            }

            while ((re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v24, v17, *(*a3 + 264), v14) & 1) != 0);
            do
            {
              v25 = *(v23 - 2);
              v23 -= 2;
            }

            while (!re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v25, v17, *(*a3 + 264), v14));
          }

          while (v9 < v23);
        }

        if (v9 - 16 != result)
        {
          *result = *(v9 - 16);
        }

        *(v9 - 16) = v17;
        *(v9 - 8) = v16;
        if (v19 >= v20)
        {
          break;
        }

LABEL_36:
        std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,false>(result, (v9 - 16), a3, v5, a5 & 1);
        a5 = 0;
      }

      v26 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *>(result, (v9 - 16), a3, v14);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *>(v9, a2, a3, v27))
      {
        break;
      }

      if (!v26)
      {
        goto LABEL_36;
      }
    }

    a2 = (v9 - 16);
    if (!v26)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(const re::ecs2::Entity **a1, re::ecs2::CAMeshSortGroup **a2, re::ecs2::CAMeshSortGroup **a3, re::ecs2::CAMeshCodirectionalGroup *a4)
{
  v8 = re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a2, *a1, *(*a4 + 264), a4);
  result = re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a3, *a2, *(*a4 + 264), v9);
  if (v8)
  {
    if (result)
    {
      v12 = *a1;
      *a1 = *a3;
    }

    else
    {
      v15 = *a1;
      *a1 = *a2;
      *a2 = v15;
      result = re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a3, *a2, *(*a4 + 264), v11);
      if (!result)
      {
        return result;
      }

      v12 = *a2;
      *a2 = *a3;
    }

    *a3 = v12;
  }

  else if (result)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    result = re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a2, *a1, *(*a4 + 264), v11);
    if (result)
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(const re::ecs2::Entity **a1, re::ecs2::CAMeshSortGroup **a2, re::ecs2::CAMeshSortGroup **a3, re::ecs2::CAMeshSortGroup **a4, re::ecs2::CAMeshSortGroup **a5, re::ecs2::CAMeshCodirectionalGroup *a6)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(a1, a2, a3, a6);
  if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a4, *a3, *(*a6 + 264), v12))
  {
    v14 = *a3;
    *a3 = *a4;
    *a4 = v14;
    if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a3, *a2, *(*a6 + 264), v13))
    {
      v15 = *a2;
      *a2 = *a3;
      *a3 = v15;
      if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a2, *a1, *(*a6 + 264), v13))
      {
        v16 = *a1;
        *a1 = *a2;
        *a2 = v16;
      }
    }
  }

  if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a5, *a4, *(*a6 + 264), v13))
  {
    v19 = *a4;
    *a4 = *a5;
    *a5 = v19;
    if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a4, *a3, *(*a6 + 264), v17))
    {
      v21 = *a3;
      *a3 = *a4;
      *a4 = v21;
      if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a3, *a2, *(*a6 + 264), v20))
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*a2, *a1, *(*a6 + 264), v22))
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *>(const re::ecs2::Entity **a1, const re::ecs2::Entity **a2, re::ecs2::CAMeshCodirectionalGroup *a3, re::ecs2::CAMeshCodirectionalGroup *a4)
{
  v7 = (a2 - a1) >> 4;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(a1, a1 + 2, a2 - 2, a3);
        break;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a3);
        v21 = *(a2 - 2);
        v20 = a2 - 2;
        if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v21, a1[4], *(*a3 + 264), v22))
        {
          v24 = *(a1 + 2);
          *(a1 + 2) = *v20;
          *v20 = v24;
          if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(a1[4], a1[2], *(*a3 + 264), v23))
          {
            v26 = *(a1 + 1);
            *(a1 + 1) = *(a1 + 2);
            *(a1 + 2) = v26;
            if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(a1[2], *a1, *(*a3 + 264), v25))
            {
              v27 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v27;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v7 < 2)
  {
    return 1;
  }

  if (v7 == 2)
  {
    v8 = a2 - 2;
    if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*(a2 - 2), *a1, *(*a3 + 264), a4))
    {
      v9 = *a1;
      *a1 = *v8;
      *v8 = v9;
    }

    return 1;
  }

LABEL_11:
  v10 = a1 + 4;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::CAMeshSortGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a3);
  v12 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v13 = 0;
  v14 = 0;
  while (1)
  {
    if (re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(*v12, *v10, *(*a3 + 264), v11))
    {
      v15 = *v12;
      v16 = v12[1];
      v17 = v13;
      while (1)
      {
        v18 = (a1 + v17);
        *(a1 + v17 + 48) = *(a1 + v17 + 32);
        if (v17 == -32)
        {
          break;
        }

        v17 -= 16;
        if ((re::ecs2::CAMeshSortGroup::compareEntitiesByCodirDisplacement(v15, v18[2], *(*a3 + 264), v11) & 1) == 0)
        {
          v19 = (a1 + v17 + 48);
          goto LABEL_19;
        }
      }

      v19 = a1;
LABEL_19:
      *v19 = v15;
      v19[1] = v16;
      if (++v14 == 8)
      {
        return v12 + 2 == a2;
      }
    }

    v10 = v12;
    v13 += 16;
    v12 += 2;
    if (v12 == a2)
    {
      return 1;
    }
  }
}

void *re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(void *result, unint64_t a2)
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

        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 64);
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
            memcpy(v7, v5[4], v5[2] << 6);
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
        result = re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,false>(unint64_t n128_u64, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned __int8 a7, uint64_t a8, __n128 a13, __n128 a14, __n128 a15, __n128 a16, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a17, __n128 a19, __n128 arg40, __n128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a24 = *MEMORY[0x1E69E9840];
LABEL_2:
  v488 = a2 - 128;
  v489 = a2 - 64;
  v487 = a2 - 192;
  v33 = (a2 - 40);
  v34 = a2 - 104;
  v35 = a2 - 168;
LABEL_3:
  HIDWORD(v490) = a4;
  while (1)
  {
    v36 = n128_u64;
    v37 = (a2 - n128_u64) >> 6;
    if (v37 <= 2)
    {
      if (v37 < 2)
      {
        return a13;
      }

      if (v37 == 2)
      {
        v336 = 0;
        while (1)
        {
          v337 = v33[v336];
          v338 = *(n128_u64 + v336 * 8 + 24);
          if (v337 != v338)
          {
            break;
          }

          if (--v336 == -4)
          {
            return a13;
          }
        }

        if (v337 >= v338)
        {
          return a13;
        }

        goto LABEL_401;
      }

      goto LABEL_11;
    }

    if (v37 == 3)
    {
      v333 = 0;
      while (1)
      {
        v334 = *(n128_u64 + v333 + 88);
        v335 = *(n128_u64 + v333 + 24);
        if (v334 != v335)
        {
          break;
        }

        v333 -= 8;
        if (v333 == -32)
        {
          goto LABEL_387;
        }
      }

      LOBYTE(v24) = v334 < v335;
LABEL_387:
      v424 = (v334 != v335) & v24;
      v425 = 11;
      v426 = (a2 - 40);
      while (1)
      {
        v428 = *v426--;
        v427 = v428;
        v429 = *(n128_u64 + 8 * v425);
        v430 = v428 >= v429;
        if (v428 != v429)
        {
          break;
        }

        if (--v425 == 7)
        {
          goto LABEL_394;
        }
      }

      LOBYTE(v26) = !v430;
LABEL_394:
      if ((v424 & 1) == 0)
      {
        if (((v427 != v429) & v26) != 0)
        {
          v444 = 0;
          v445 = *(n128_u64 + 112);
          arg40 = *(n128_u64 + 96);
          a20 = v445;
          a13 = *(n128_u64 + 80);
          a17 = *(n128_u64 + 64);
          v446 = a17;
          a19 = a13;
          v448 = *v489;
          v447 = *(v489 + 16);
          *(n128_u64 + 96) = *(v489 + 32);
          *(n128_u64 + 64) = v448;
          *(n128_u64 + 80) = v447;
          *(v489 + 32) = arg40.n128_u32[0];
          *v489 = v446;
          *(v489 + 16) = a13;
          while (1)
          {
            v449 = *(n128_u64 + v444 + 88);
            v450 = *(n128_u64 + v444 + 24);
            if (v449 != v450)
            {
              break;
            }

            v444 -= 8;
            if (v444 == -32)
            {
              return a13;
            }
          }

          if (v449 < v450)
          {
            goto LABEL_437;
          }
        }

        return a13;
      }

      if (((v427 != v429) & v26) == 0)
      {
        v431 = 0;
        v432 = *(n128_u64 + 16);
        v433 = *(n128_u64 + 48);
        v434 = *(n128_u64 + 64);
        arg40 = *(n128_u64 + 32);
        a20 = v433;
        a19 = v432;
        a17 = *n128_u64;
        *(n128_u64 + 32) = *(n128_u64 + 96);
        v435 = *(n128_u64 + 80);
        *n128_u64 = v434;
        *(n128_u64 + 16) = v435;
        a13 = a17;
        v436 = a19;
        *(n128_u64 + 96) = arg40.n128_u32[0];
        *(n128_u64 + 64) = a13;
        *(n128_u64 + 80) = v436;
        while (1)
        {
          v437 = v33[v431];
          v438 = *(n128_u64 + 88 + v431 * 8);
          if (v437 != v438)
          {
            break;
          }

          if (--v431 == -4)
          {
            return a13;
          }
        }

        if (v437 < v438)
        {
          v469 = *(n128_u64 + 112);
          arg40 = *(n128_u64 + 96);
          a20 = v469;
          a13 = *(n128_u64 + 80);
          a17 = *(n128_u64 + 64);
          v470 = a17;
          a19 = a13;
          v472 = *v489;
          v471 = *(v489 + 16);
          *(n128_u64 + 96) = *(v489 + 32);
          *(n128_u64 + 64) = v472;
          *(n128_u64 + 80) = v471;
          v473 = arg40.n128_u32[0];
          *v489 = v470;
          *(v489 + 16) = a13;
          *(v489 + 32) = v473;
        }

        return a13;
      }

LABEL_401:
      v439 = *(n128_u64 + 16);
      v440 = *(n128_u64 + 48);
      arg40 = *(n128_u64 + 32);
      a20 = v440;
      a19 = v439;
      a17 = *n128_u64;
      v441 = *(v489 + 32);
      v442 = *(v489 + 16);
      *n128_u64 = *v489;
      *(n128_u64 + 16) = v442;
      *(n128_u64 + 32) = v441;
      v443 = a17;
      a13 = a19;
      *(v489 + 32) = arg40.n128_u32[0];
      *v489 = v443;
      *(v489 + 16) = a13;
      return a13;
    }

    if (v37 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,0>(n128_u64, (n128_u64 + 64), (n128_u64 + 128), v489);
      return a13;
    }

    if (v37 == 5)
    {
      break;
    }

LABEL_11:
    if (v37 <= 23)
    {
      v339 = (n128_u64 + 64);
      v341 = n128_u64 == a2 || v339 == a2;
      if (a4)
      {
        if (!v341)
        {
          v342 = n128_u64;
          do
          {
            v343 = 0;
            while (1)
            {
              v344 = *(v342 + v343 + 88);
              v345 = *(v342 + v343 + 24);
              if (v344 != v345)
              {
                break;
              }

              v343 -= 8;
              if (v343 == -32)
              {
                goto LABEL_308;
              }
            }

            if (v344 < v345)
            {
              v347 = v339[2];
              v346 = v339[3];
              a19 = v339[1];
              arg40 = v347;
              a20 = v346;
              a17 = *v339;
              v348 = v342;
              v349 = v339;
              while (1)
              {
                v350 = v349;
                v349 = v348;
                v351 = *(v348 + 16);
                *v350 = *v348;
                *(v350 + 16) = v351;
                *(v350 + 32) = *(v348 + 32);
                if (v348 == n128_u64)
                {
                  break;
                }

                v348 -= 64;
                v352 = -5;
                v353 = (&a17 | 0x18);
                while (1)
                {
                  v354 = *v353--;
                  v355 = *(v349 + 8 * v352);
                  v356 = v354 >= v355;
                  if (v354 != v355)
                  {
                    break;
                  }

                  if (--v352 == -9)
                  {
                    goto LABEL_307;
                  }
                }

                if (v356)
                {
                  goto LABEL_307;
                }
              }

              v349 = n128_u64;
LABEL_307:
              v357 = arg40.n128_u32[0];
              *(v349 + 16) = a19;
              a13 = a17;
              *(v349 + 32) = v357;
              *v349 = a13;
            }

LABEL_308:
            v339 += 4;
            v342 += 64;
          }

          while (v339 != a2);
        }
      }

      else if (!v341)
      {
        do
        {
          v451 = 0;
          while (1)
          {
            v452 = *(v36 + v451 + 88);
            v453 = *(v36 + v451 + 24);
            if (v452 != v453)
            {
              break;
            }

            v451 -= 8;
            if (v451 == -32)
            {
              goto LABEL_420;
            }
          }

          if (v452 < v453)
          {
            v455 = v339[2];
            v454 = v339[3];
            a19 = v339[1];
            arg40 = v455;
            a20 = v454;
            a17 = *v339;
            v456 = v36;
            v457 = v339;
            do
            {
              v458 = 0;
              v459 = v457;
              v457 = v456;
              v460 = *(v456 + 16);
              *v459 = *v456;
              v459[1] = v460;
              v459[2].n128_u32[0] = *(v456 + 32);
              v456 -= 64;
              while (1)
              {
                v461 = a19.n128_u64[v458 + 1];
                v462 = *(&v457[-2] + v458 * 8 - 8);
                if (v461 != v462)
                {
                  break;
                }

                if (--v458 == -4)
                {
                  goto LABEL_419;
                }
              }
            }

            while (v461 < v462);
LABEL_419:
            v463 = arg40.n128_u32[0];
            v457[1] = a19;
            a13 = a17;
            v457[2].n128_u32[0] = v463;
            *v457 = a13;
          }

LABEL_420:
          v339 += 4;
          v36 += 64;
        }

        while (v339 != a2);
      }

      return a13;
    }

    if (!a3)
    {
      if (n128_u64 != a2)
      {
        v358 = (v37 - 2) >> 1;
        v359 = n128_u64 + 152 + (v358 << 7);
        v360 = v358;
        v361 = n128_u64 + (v358 << 6);
        do
        {
          v362 = v360;
          if (v358 >= v360)
          {
            v363 = (2 * v360) | 1;
            v364 = (n128_u64 + (v363 << 6));
            if (2 * v362 + 2 < v37)
            {
              a7 = v364 + 64;
              v365 = -4;
              a4 = v359;
              while (1)
              {
                v366 = *(a4 - 64);
                v367 = *a4;
                if (v366 != *a4)
                {
                  break;
                }

                a4 -= 8;
                v259 = __CFADD__(v365++, 1);
                if (v259)
                {
                  goto LABEL_320;
                }
              }

              LOBYTE(a6) = v366 < *a4;
LABEL_320:
              if (((v366 != v367) & a6) != 0)
              {
                v364 += 4;
                v363 = 2 * v362 + 2;
              }
            }

            v368 = (n128_u64 + (v362 << 6));
            v369 = 3;
            while (1)
            {
              v370 = v364->n128_u64[v369];
              a3 = *(v361 + v369 * 8);
              if (v370 != a3)
              {
                break;
              }

              if (--v369 == -1)
              {
                goto LABEL_327;
              }
            }

            if (v370 < a3)
            {
              goto LABEL_348;
            }

LABEL_327:
            v372 = v368[2];
            v371 = v368[3];
            a19 = v368[1];
            arg40 = v372;
            a20 = v371;
            a17 = *v368;
            while (1)
            {
              v373 = v364;
              v374 = v364[2].n128_u32[0];
              v368[1] = v373[1];
              v375 = *v373;
              v368[2].n128_u32[0] = v374;
              *v368 = v375;
              if (v358 < v363)
              {
                break;
              }

              v376 = (2 * v363) | 1;
              v364 = (n128_u64 + (v376 << 6));
              v377 = 2 * v363 + 2;
              if (v377 >= v37)
              {
                v363 = (2 * v363) | 1;
              }

              else
              {
                v378 = (n128_u64 + 152 + (v363 << 7));
                a4 = -4;
                while (1)
                {
                  v379 = *(v378 - 8);
                  a6 = *v378;
                  if (v379 != *v378)
                  {
                    break;
                  }

                  --v378;
                  v259 = __CFADD__(a4++, 1);
                  if (v259)
                  {
                    goto LABEL_337;
                  }
                }

                a7 = v379 < *v378;
LABEL_337:
                if (((v379 != a6) & a7) != 0)
                {
                  v364 += 4;
                  v363 = v377;
                }

                else
                {
                  v363 = v376;
                }
              }

              v380 = 3;
              while (1)
              {
                v381 = v364->n128_u64[v380];
                a3 = a17.n128_u64[v380];
                if (v381 != a3)
                {
                  break;
                }

                if (--v380 == -1)
                {
                  goto LABEL_345;
                }
              }

              LOBYTE(a4) = v381 < a3;
LABEL_345:
              v368 = v373;
              if (v381 != a3)
              {
                v368 = v373;
                if (a4)
                {
                  break;
                }
              }
            }

            v382 = arg40.n128_u32[0];
            v373[1] = a19;
            v383 = a17;
            v373[2].n128_u32[0] = v382;
            *v373 = v383;
          }

LABEL_348:
          v360 = v362 - 1;
          v359 -= 128;
          v361 -= 64;
        }

        while (v362);
        do
        {
          v384 = 0;
          v385 = *(n128_u64 + 32);
          vars0 = *(n128_u64 + 16);
          v496 = v385;
          v492 = *n128_u64;
          v386 = n128_u64;
          do
          {
            v387 = v386 + (v384 << 6);
            v388 = v387 + 64;
            v389 = (2 * v384) | 1;
            v384 = 2 * v384 + 2;
            if (v384 >= v37)
            {
              v384 = v389;
            }

            else
            {
              v390 = v387 + 128;
              v391 = (v387 + 152);
              v392 = -4;
              while (1)
              {
                v393 = *(v391 - 8);
                v394 = *v391;
                if (v393 != *v391)
                {
                  break;
                }

                --v391;
                v259 = __CFADD__(v392++, 1);
                if (v259)
                {
                  goto LABEL_358;
                }
              }

              LOBYTE(a3) = v393 < *v391;
LABEL_358:
              if (((v393 != v394) & a3) != 0)
              {
                v388 = v390;
              }

              else
              {
                v384 = v389;
              }
            }

            v395 = *(v388 + 32);
            *(v386 + 16) = *(v388 + 16);
            v396 = *v388;
            *(v386 + 32) = v395;
            *v386 = v396;
            v386 = v388;
          }

          while (v384 <= ((v37 - 2) >> 1));
          a2 -= 64;
          if (v388 == a2)
          {
            *(v388 + 16) = vars0;
            a13 = v492;
            *(v388 + 32) = v385;
            *v388 = a13;
          }

          else
          {
            v397 = *(a2 + 32);
            *(v388 + 16) = *(a2 + 16);
            v398 = *a2;
            *(v388 + 32) = v397;
            *v388 = v398;
            v399 = v492;
            a13 = vars0;
            *(a2 + 32) = v496;
            *a2 = v399;
            *(a2 + 16) = a13;
            v400 = (v388 - n128_u64 + 64) >> 6;
            v401 = v400 < 2;
            v402 = v400 - 2;
            if (!v401)
            {
              v403 = v402 >> 1;
              v404 = n128_u64 + (v403 << 6);
              v405 = 24;
              while (1)
              {
                v406 = *(v404 + v405);
                v407 = *(v388 + v405);
                if (v406 != v407)
                {
                  break;
                }

                v405 -= 8;
                if (v405 == -8)
                {
                  goto LABEL_369;
                }
              }

              if (v406 < v407)
              {
                v409 = *(v388 + 32);
                v408 = *(v388 + 48);
                a19 = *(v388 + 16);
                arg40 = v409;
                a20 = v408;
                a17 = *v388;
                do
                {
                  v410 = v404;
                  v411 = *(v404 + 32);
                  *(v388 + 16) = *(v410 + 16);
                  v412 = *v410;
                  *(v388 + 32) = v411;
                  *v388 = v412;
                  if (!v403)
                  {
                    break;
                  }

                  v403 = (v403 - 1) >> 1;
                  v404 = n128_u64 + (v403 << 6);
                  v413 = 3;
                  while (1)
                  {
                    v414 = *(v404 + v413 * 8);
                    v415 = a17.n128_u64[v413];
                    if (v414 != v415)
                    {
                      break;
                    }

                    if (--v413 == -1)
                    {
                      goto LABEL_380;
                    }
                  }

                  v388 = v410;
                }

                while (v414 < v415);
LABEL_380:
                v416 = arg40.n128_u32[0];
                *(v410 + 16) = a19;
                a13 = a17;
                *(v410 + 32) = v416;
                *v410 = a13;
              }
            }
          }

LABEL_369:
          v401 = v37-- <= 2;
        }

        while (!v401);
      }

      return a13;
    }

    v38 = v37 >> 1;
    v39 = (n128_u64 + (v37 >> 1 << 6));
    if (v37 > 0x80)
    {
      v40 = 3;
      while (1)
      {
        v41 = v39->n128_u64[v40];
        v42 = *(n128_u64 + v40 * 8);
        if (v41 != v42)
        {
          break;
        }

        if (--v40 == -1)
        {
          goto LABEL_23;
        }
      }

      LOBYTE(v26) = v41 < v42;
LABEL_23:
      v46 = 0;
      v47 = (v41 != v42) & v26;
      while (1)
      {
        v48 = v33[v46];
        v49 = v39[1].n128_u64[v46 + 1];
        if (v48 != v49)
        {
          break;
        }

        if (--v46 == -4)
        {
          goto LABEL_33;
        }
      }

      LOBYTE(v28) = v48 < v49;
LABEL_33:
      if (v47)
      {
        if (((v48 != v49) & v28) != 0)
        {
          v52 = *(n128_u64 + 16);
          v53 = *(n128_u64 + 48);
          arg40 = *(n128_u64 + 32);
          a20 = v53;
          a19 = v52;
          a17 = *n128_u64;
          v54 = v489;
          v55 = *(v489 + 32);
          v56 = *(v489 + 16);
          *n128_u64 = *v489;
          *(n128_u64 + 16) = v56;
          *(n128_u64 + 32) = v55;
LABEL_64:
          v115 = a17;
          v114 = a19;
          *(v54 + 32) = arg40.n128_u32[0];
          *v54 = v115;
          *(v54 + 16) = v114;
          goto LABEL_65;
        }

        v80 = 0;
        v81 = *(n128_u64 + 16);
        v82 = *(n128_u64 + 48);
        arg40 = *(n128_u64 + 32);
        a20 = v82;
        a19 = v81;
        a17 = *n128_u64;
        v83 = v39[2].n128_i32[0];
        v84 = v39[1];
        *n128_u64 = *v39;
        *(n128_u64 + 16) = v84;
        *(n128_u64 + 32) = v83;
        v86 = a17;
        v85 = a19;
        v39[2].n128_u32[0] = arg40.n128_u32[0];
        *v39 = v86;
        v39[1] = v85;
        while (1)
        {
          v87 = v33[v80];
          v88 = v39[1].n128_u64[v80 + 1];
          if (v87 != v88)
          {
            break;
          }

          if (--v80 == -4)
          {
            goto LABEL_65;
          }
        }

        if (v87 < v88)
        {
          v110 = v39[1];
          v111 = v39[3];
          arg40 = v39[2];
          a20 = v111;
          a19 = v110;
          a17 = *v39;
          v54 = v489;
          v112 = *(v489 + 32);
          v113 = *(v489 + 16);
          *v39 = *v489;
          v39[1] = v113;
          v39[2].n128_u32[0] = v112;
          goto LABEL_64;
        }
      }

      else if (((v48 != v49) & v28) != 0)
      {
        v63 = v39[1];
        v64 = v39[3];
        arg40 = v39[2];
        a20 = v64;
        a19 = v63;
        a17 = *v39;
        v65 = *(v489 + 32);
        v66 = *(v489 + 16);
        *v39 = *v489;
        v39[1] = v66;
        v39[2].n128_u32[0] = v65;
        v68 = a17;
        v67 = a19;
        *(v489 + 32) = arg40.n128_u32[0];
        *v489 = v68;
        *(v489 + 16) = v67;
        v69 = 3;
        while (1)
        {
          v70 = v39->n128_u64[v69];
          v71 = *(n128_u64 + v69 * 8);
          if (v70 != v71)
          {
            break;
          }

          if (--v69 == -1)
          {
            goto LABEL_65;
          }
        }

        if (v70 < v71)
        {
          v98 = *(n128_u64 + 16);
          v99 = *(n128_u64 + 48);
          arg40 = *(n128_u64 + 32);
          a20 = v99;
          a19 = v98;
          a17 = *n128_u64;
          v100 = v39[2].n128_i32[0];
          v101 = v39[1];
          *n128_u64 = *v39;
          *(n128_u64 + 16) = v101;
          *(n128_u64 + 32) = v100;
          v103 = a17;
          v102 = a19;
          v39[2].n128_u32[0] = arg40.n128_u32[0];
          *v39 = v103;
          v39[1] = v102;
        }
      }

LABEL_65:
      v116 = v39 - 4;
      v117 = v38 << 6;
      v118 = v117 - 40;
      v119 = 88;
      while (1)
      {
        v120 = *(n128_u64 + v118);
        v121 = *(n128_u64 + v119);
        if (v120 != v121)
        {
          break;
        }

        v119 -= 8;
        v118 -= 8;
        if (v119 == 56)
        {
          goto LABEL_70;
        }
      }

      LOBYTE(v28) = v120 < v121;
LABEL_70:
      v122 = 0;
      v123 = (v120 != v121) & v28;
      while (1)
      {
        v124 = *(v34 + v122);
        v125 = *(n128_u64 + v117 - 40 + v122);
        if (v124 != v125)
        {
          break;
        }

        v122 -= 8;
        if (v122 == -32)
        {
          goto LABEL_75;
        }
      }

      LOBYTE(v29) = v124 < v125;
LABEL_75:
      if (v123)
      {
        if (((v124 != v125) & v29) != 0)
        {
          v126 = *(n128_u64 + 112);
          arg40 = *(n128_u64 + 96);
          a20 = v126;
          v127 = *(n128_u64 + 80);
          a17 = *(n128_u64 + 64);
          v128 = a17;
          a19 = v127;
          a16 = *v488;
          v129 = *(v488 + 16);
          *(n128_u64 + 96) = *(v488 + 32);
          *(n128_u64 + 64) = a16;
          *(n128_u64 + 80) = v129;
          v130 = arg40.n128_u32[0];
          *v488 = v128;
          *(v488 + 16) = v127;
          *(v488 + 32) = v130;
        }

        else
        {
          v139 = 0;
          v140 = *(n128_u64 + 112);
          arg40 = *(n128_u64 + 96);
          a20 = v140;
          v141 = *(n128_u64 + 80);
          a17 = *(n128_u64 + 64);
          v142 = a17;
          a19 = v141;
          a16 = *v116;
          v143 = v39[-3];
          *(n128_u64 + 96) = v39[-2].n128_u32[0];
          *(n128_u64 + 64) = a16;
          *(n128_u64 + 80) = v143;
          v144 = arg40.n128_u32[0];
          *v116 = v142;
          v39[-3] = v141;
          v39[-2].n128_u32[0] = v144;
          while (1)
          {
            v145 = *(v34 + v139);
            v146 = *(n128_u64 + v117 - 40 + v139);
            if (v145 != v146)
            {
              break;
            }

            v139 -= 8;
            if (v139 == -32)
            {
              goto LABEL_93;
            }
          }

          if (v145 < v146)
          {
            v158 = v39[-3];
            v159 = v39[-1];
            arg40 = v39[-2];
            a20 = v159;
            a19 = v158;
            a17 = *v116;
            v160 = *(v488 + 32);
            v161 = *(v488 + 16);
            *v116 = *v488;
            v39[-3] = v161;
            v39[-2].n128_u32[0] = v160;
            v163 = a17;
            v162 = a19;
            *(v488 + 32) = arg40.n128_u32[0];
            *v488 = v163;
            *(v488 + 16) = v162;
          }
        }
      }

      else if (((v124 != v125) & v29) != 0)
      {
        v131 = 0;
        v132 = v39[-3];
        v133 = v39[-1];
        arg40 = v39[-2];
        a20 = v133;
        a19 = v132;
        a17 = *v116;
        v134 = *(v488 + 32);
        v135 = *(v488 + 16);
        *v116 = *v488;
        v39[-3] = v135;
        v39[-2].n128_u32[0] = v134;
        v137 = a17;
        v136 = a19;
        *(v488 + 32) = arg40.n128_u32[0];
        *v488 = v137;
        *(v488 + 16) = v136;
        while (1)
        {
          v138 = *(n128_u64 + v117 - 40 + v131);
          v125 = *(n128_u64 + 88 + v131);
          if (v138 != v125)
          {
            break;
          }

          v131 -= 8;
          if (v131 == -32)
          {
            goto LABEL_93;
          }
        }

        if (v138 < v125)
        {
          v153 = *(n128_u64 + 112);
          arg40 = *(n128_u64 + 96);
          a20 = v153;
          v154 = *(n128_u64 + 80);
          a17 = *(n128_u64 + 64);
          v155 = a17;
          a19 = v154;
          a16 = *v116;
          v156 = v39[-3];
          *(n128_u64 + 96) = v39[-2].n128_u32[0];
          *(n128_u64 + 64) = a16;
          *(n128_u64 + 80) = v156;
          v157 = arg40.n128_u32[0];
          *v116 = v155;
          v39[-3] = v154;
          v39[-2].n128_u32[0] = v157;
        }
      }

LABEL_93:
      v164 = v117 + 88;
      v165 = 152;
      while (1)
      {
        v166 = *(n128_u64 + v164);
        v167 = *(n128_u64 + v165);
        if (v166 != v167)
        {
          break;
        }

        v165 -= 8;
        v164 -= 8;
        if (v165 == 120)
        {
          goto LABEL_98;
        }
      }

      LOBYTE(v125) = v166 < v167;
LABEL_98:
      v168 = 0;
      v169 = (v166 != v167) & v125;
      while (1)
      {
        v170 = *(v35 + v168);
        v171 = *(n128_u64 + v117 + 88 + v168);
        if (v170 != v171)
        {
          break;
        }

        v168 -= 8;
        if (v168 == -32)
        {
          goto LABEL_103;
        }
      }

      LOBYTE(v29) = v170 < v171;
LABEL_103:
      if (v169)
      {
        if (((v170 != v171) & v29) != 0)
        {
          v172 = *(n128_u64 + 176);
          arg40 = *(n128_u64 + 160);
          a20 = v172;
          v173 = *(n128_u64 + 144);
          a17 = *(n128_u64 + 128);
          v174 = a17;
          a19 = v173;
          a16 = *v487;
          v175 = *(v487 + 16);
          *(n128_u64 + 160) = *(v487 + 32);
          *(n128_u64 + 128) = a16;
          *(n128_u64 + 144) = v175;
          v176 = arg40.n128_u32[0];
          *v487 = v174;
          *(v487 + 16) = v173;
          *(v487 + 32) = v176;
        }

        else
        {
          v186 = 0;
          v187 = *(n128_u64 + 176);
          arg40 = *(n128_u64 + 160);
          a20 = v187;
          v188 = *(n128_u64 + 144);
          a17 = *(n128_u64 + 128);
          v189 = a17;
          a19 = v188;
          a16 = v39[4];
          v190 = v39[5];
          *(n128_u64 + 160) = v39[6].n128_u32[0];
          *(n128_u64 + 128) = a16;
          *(n128_u64 + 144) = v190;
          v191 = arg40.n128_u32[0];
          v39[4] = v189;
          v39[5] = v188;
          v39[6].n128_u32[0] = v191;
          while (1)
          {
            v192 = *(v35 + v186);
            v193 = *(n128_u64 + v117 + 88 + v186);
            if (v192 != v193)
            {
              break;
            }

            v186 -= 8;
            if (v186 == -32)
            {
              goto LABEL_119;
            }
          }

          if (v192 < v193)
          {
            v199 = v39[5];
            v200 = v39[7];
            arg40 = v39[6];
            a20 = v200;
            a19 = v199;
            a17 = v39[4];
            v201 = *(v487 + 32);
            v202 = *(v487 + 16);
            v39[4] = *v487;
            v39[5] = v202;
            v39[6].n128_u32[0] = v201;
            v204 = a17;
            v203 = a19;
            *(v487 + 32) = arg40.n128_u32[0];
            *v487 = v204;
            *(v487 + 16) = v203;
          }
        }
      }

      else if (((v170 != v171) & v29) != 0)
      {
        v177 = 0;
        v178 = v39[5];
        v179 = v39[7];
        arg40 = v39[6];
        a20 = v179;
        a19 = v178;
        a17 = v39[4];
        v180 = *(v487 + 32);
        v181 = *(v487 + 16);
        v39[4] = *v487;
        v39[5] = v181;
        v39[6].n128_u32[0] = v180;
        v183 = a17;
        v182 = a19;
        *(v487 + 32) = arg40.n128_u32[0];
        *v487 = v183;
        *(v487 + 16) = v182;
        while (1)
        {
          v184 = *(n128_u64 + v117 + 88 + v177);
          v185 = *(n128_u64 + 152 + v177);
          if (v184 != v185)
          {
            break;
          }

          v177 -= 8;
          if (v177 == -32)
          {
            goto LABEL_119;
          }
        }

        if (v184 < v185)
        {
          v194 = *(n128_u64 + 176);
          arg40 = *(n128_u64 + 160);
          a20 = v194;
          v195 = *(n128_u64 + 144);
          a17 = *(n128_u64 + 128);
          v196 = a17;
          a19 = v195;
          a16 = v39[4];
          v197 = v39[5];
          *(n128_u64 + 160) = v39[6].n128_u32[0];
          *(n128_u64 + 128) = a16;
          *(n128_u64 + 144) = v197;
          v198 = arg40.n128_u32[0];
          v39[4] = v196;
          v39[5] = v195;
          v39[6].n128_u32[0] = v198;
        }
      }

LABEL_119:
      v24 = n128_u64 + v117 + 24;
      v205 = -4;
      v206 = v24;
      while (1)
      {
        v207 = *v206;
        v208 = *(v206 - 8);
        if (*v206 != v208)
        {
          break;
        }

        --v206;
        v259 = __CFADD__(v205++, 1);
        if (v259)
        {
          goto LABEL_125;
        }
      }

      LOBYTE(v29) = *v206 < v208;
LABEL_125:
      LOBYTE(v25) = (v207 != v208) & v29;
      v209 = (n128_u64 + v117 + 88);
      v210 = -4;
      v28 = v209;
      while (1)
      {
        v27 = *v28;
        v29 = *(v28 - 8);
        if (*v28 != v29)
        {
          break;
        }

        --v28;
        v259 = __CFADD__(v210++, 1);
        if (v259)
        {
          goto LABEL_131;
        }
      }

      v30 = *v28 < v29;
LABEL_131:
      LOBYTE(v26) = v27 != v29 && v30;
      if ((v25 & 1) == 0)
      {
        if (v27 != v29 && v30)
        {
          v214 = v39[3];
          v215 = v39[1];
          arg40 = v39[2];
          a20 = v214;
          a19 = v215;
          a17 = *v39;
          v39[2].n128_u32[0] = v39[6].n128_u32[0];
          v216 = v39[5];
          *v39 = v39[4];
          v39[1] = v216;
          v218 = a17;
          v217 = a19;
          v39[6].n128_u32[0] = arg40.n128_u32[0];
          v39[4] = v218;
          v39[5] = v217;
          v219 = -4;
          while (1)
          {
            v25 = *v24;
            v26 = *(v24 - 64);
            if (*v24 != v26)
            {
              break;
            }

            v24 -= 8;
            v259 = __CFADD__(v219++, 1);
            if (v259)
            {
              goto LABEL_150;
            }
          }

          if (*v24 < v26)
          {
            v226 = v39[-1];
            v227 = v39[-3];
            arg40 = v39[-2];
            a20 = v226;
            a19 = v227;
            a17 = *v116;
            v39[-2].n128_u32[0] = v39[2].n128_u32[0];
            v228 = v39[1];
            *v116 = *v39;
            v39[-3] = v228;
            v230 = a17;
            v229 = a19;
            v39[2].n128_u32[0] = arg40.n128_u32[0];
            *v39 = v230;
            v39[1] = v229;
          }
        }

        goto LABEL_150;
      }

      if (v27 != v29 && v30)
      {
        v211 = v39[-1];
        v212 = v39[-3];
        arg40 = v39[-2];
        a20 = v211;
        a19 = v212;
        a17 = *v116;
        v39[-2].n128_u32[0] = v39[6].n128_u32[0];
        v213 = v39[5];
        *v116 = v39[4];
        v39[-3] = v213;
      }

      else
      {
        v220 = v39[-1];
        v221 = v39[-3];
        arg40 = v39[-2];
        a20 = v220;
        a19 = v221;
        a17 = *v116;
        v39[-2].n128_u32[0] = v39[2].n128_u32[0];
        v222 = v39[1];
        *v116 = *v39;
        v39[-3] = v222;
        v224 = a17;
        v223 = a19;
        v39[2].n128_u32[0] = arg40.n128_u32[0];
        *v39 = v224;
        v39[1] = v223;
        v225 = -4;
        while (1)
        {
          v24 = *v209;
          v25 = *(v209 - 8);
          if (*v209 != v25)
          {
            break;
          }

          --v209;
          v259 = __CFADD__(v225++, 1);
          if (v259)
          {
            goto LABEL_150;
          }
        }

        if (*v209 >= v25)
        {
          goto LABEL_150;
        }

        v231 = v39[3];
        v232 = v39[1];
        arg40 = v39[2];
        a20 = v231;
        a19 = v232;
        a17 = *v39;
        v39[2].n128_u32[0] = v39[6].n128_u32[0];
        v233 = v39[5];
        *v39 = v39[4];
        v39[1] = v233;
      }

      v235 = a17;
      v234 = a19;
      v39[6].n128_u32[0] = arg40.n128_u32[0];
      v39[4] = v235;
      v39[5] = v234;
LABEL_150:
      v236 = *(n128_u64 + 16);
      v237 = *(n128_u64 + 48);
      arg40 = *(n128_u64 + 32);
      a20 = v237;
      a19 = v236;
      a17 = *n128_u64;
      v238 = v39[2].n128_i32[0];
      v239 = v39[1];
      *n128_u64 = *v39;
      *(n128_u64 + 16) = v239;
      *(n128_u64 + 32) = v238;
      v241 = a17;
      v240 = a19;
      v39[2].n128_u32[0] = arg40.n128_u32[0];
      *v39 = v241;
      v39[1] = v240;
      goto LABEL_151;
    }

    v43 = 3;
    while (1)
    {
      v44 = *(n128_u64 + v43 * 8);
      v45 = v39->n128_u64[v43];
      if (v44 != v45)
      {
        break;
      }

      if (--v43 == -1)
      {
        goto LABEL_28;
      }
    }

    LOBYTE(v25) = v44 < v45;
LABEL_28:
    v50 = 0;
    v51 = (v44 != v45) & v25;
    while (1)
    {
      v24 = v33[v50];
      v25 = *(n128_u64 + v50 * 8 + 24);
      if (v24 != v25)
      {
        break;
      }

      if (--v50 == -4)
      {
        goto LABEL_37;
      }
    }

    LOBYTE(v26) = v24 < v25;
LABEL_37:
    if (v51)
    {
      if (((v24 != v25) & v26) != 0)
      {
        v57 = v39[1];
        v58 = v39[3];
        arg40 = v39[2];
        a20 = v58;
        a19 = v57;
        a17 = *v39;
        v59 = *(v489 + 32);
        v60 = *(v489 + 16);
        *v39 = *v489;
        v39[1] = v60;
        v39[2].n128_u32[0] = v59;
        v62 = a17;
        v61 = a19;
        *(v489 + 32) = arg40.n128_u32[0];
        *v489 = v62;
        *(v489 + 16) = v61;
      }

      else
      {
        v89 = 0;
        v90 = v39[1];
        v91 = v39[3];
        arg40 = v39[2];
        a20 = v91;
        a19 = v90;
        a17 = *v39;
        v93 = *n128_u64;
        v92 = *(n128_u64 + 16);
        v39[2].n128_u32[0] = *(n128_u64 + 32);
        *v39 = v93;
        v39[1] = v92;
        v95 = a17;
        v94 = a19;
        *(n128_u64 + 32) = arg40.n128_u32[0];
        *n128_u64 = v95;
        *(n128_u64 + 16) = v94;
        while (1)
        {
          v96 = v33[v89];
          v97 = *(n128_u64 + v89 * 8 + 24);
          if (v96 != v97)
          {
            break;
          }

          if (--v89 == -4)
          {
            goto LABEL_151;
          }
        }

        if (v96 < v97)
        {
          v147 = *(n128_u64 + 16);
          v148 = *(n128_u64 + 48);
          arg40 = *(n128_u64 + 32);
          a20 = v148;
          a19 = v147;
          a17 = *n128_u64;
          v149 = *(v489 + 32);
          v150 = *(v489 + 16);
          *n128_u64 = *v489;
          *(n128_u64 + 16) = v150;
          *(n128_u64 + 32) = v149;
          v152 = a17;
          v151 = a19;
          *(v489 + 32) = arg40.n128_u32[0];
          *v489 = v152;
          *(v489 + 16) = v151;
        }
      }
    }

    else if (((v24 != v25) & v26) != 0)
    {
      v72 = *(n128_u64 + 16);
      v73 = *(n128_u64 + 48);
      arg40 = *(n128_u64 + 32);
      a20 = v73;
      a19 = v72;
      a17 = *n128_u64;
      v74 = *(v489 + 32);
      v75 = *(v489 + 16);
      *n128_u64 = *v489;
      *(n128_u64 + 16) = v75;
      *(n128_u64 + 32) = v74;
      v77 = a17;
      v76 = a19;
      *(v489 + 32) = arg40.n128_u32[0];
      *v489 = v77;
      *(v489 + 16) = v76;
      v78 = 3;
      while (1)
      {
        v79 = *(n128_u64 + v78 * 8);
        v24 = v39->n128_u64[v78];
        if (v79 != v24)
        {
          break;
        }

        if (--v78 == -1)
        {
          goto LABEL_151;
        }
      }

      if (v79 < v24)
      {
        v104 = v39[1];
        v105 = v39[3];
        arg40 = v39[2];
        a20 = v105;
        a19 = v104;
        a17 = *v39;
        v106 = *(n128_u64 + 32);
        v107 = *(n128_u64 + 16);
        *v39 = *n128_u64;
        v39[1] = v107;
        v39[2].n128_u32[0] = v106;
        v109 = a17;
        v108 = a19;
        *(n128_u64 + 32) = arg40.n128_u32[0];
        *n128_u64 = v109;
        *(n128_u64 + 16) = v108;
      }
    }

LABEL_151:
    --a3;
    if ((a4 & 1) == 0)
    {
      v242 = 0;
      while (1)
      {
        v243 = *(n128_u64 + v242 - 40);
        v244 = *(n128_u64 + v242 + 24);
        if (v243 != v244)
        {
          break;
        }

        v242 -= 8;
        if (v242 == -32)
        {
          goto LABEL_212;
        }
      }

      if (v243 < v244)
      {
        goto LABEL_157;
      }

LABEL_212:
      v289 = 0;
      v290 = *(n128_u64 + 32);
      vars0 = *(n128_u64 + 16);
      v495 = v290;
      v492 = *n128_u64;
      while (1)
      {
        v291 = vars0.n128_u64[v289 + 1];
        v292 = *(a2 + v289 * 8 - 40);
        v293 = v291 >= v292;
        if (v291 != v292)
        {
          break;
        }

        if (--v289 == -4)
        {
          v294 = n128_u64;
          while (1)
          {
LABEL_227:
            n128_u64 = v294 + 64;
            if (v294 + 64 >= a2)
            {
              goto LABEL_237;
            }

            v24 = &v492 | 0x18;
            v25 = 11;
            while (1)
            {
              v301 = *v24;
              v24 -= 8;
              v300 = v301;
              v302 = *(v294 + 8 * v25);
              v303 = v301 >= v302;
              if (v301 != v302)
              {
                break;
              }

              if (--v25 == 7)
              {
                goto LABEL_235;
              }
            }

            LOBYTE(v26) = !v303;
LABEL_235:
            v294 += 64;
            if (v300 != v302)
            {
              v294 = n128_u64;
              if (v26)
              {
                goto LABEL_237;
              }
            }
          }
        }
      }

      v295 = n128_u64;
      v294 = n128_u64;
      if (v293)
      {
        goto LABEL_227;
      }

      while (1)
      {
        n128_u64 = v295 + 64;
        v24 = &v492 | 0x18;
        v25 = 11;
        while (1)
        {
          v297 = *v24;
          v24 -= 8;
          v296 = v297;
          v298 = *(v295 + 8 * v25);
          v299 = v297 >= v298;
          if (v297 != v298)
          {
            break;
          }

          if (--v25 == 7)
          {
            goto LABEL_224;
          }
        }

        LOBYTE(v26) = !v299;
LABEL_224:
        v295 += 64;
        if (v296 != v298)
        {
          v295 = n128_u64;
          if (v26)
          {
            break;
          }
        }
      }

LABEL_237:
      v304 = a2;
      if (n128_u64 < a2)
      {
        v305 = a2;
        do
        {
          v304 = v305 - 64;
          v306 = -5;
          v24 = &v492 | 0x18;
          while (1)
          {
            v307 = *v24;
            v24 -= 8;
            LOBYTE(v25) = v307;
            v26 = *(v305 + 8 * v306);
            v308 = v307 >= v26;
            if (v307 != v26)
            {
              break;
            }

            if (--v306 == -9)
            {
              goto LABEL_263;
            }
          }

          v305 -= 64;
        }

        while (!v308);
      }

LABEL_263:
      while (n128_u64 < v304)
      {
        v309 = *(n128_u64 + 16);
        v310 = *(n128_u64 + 48);
        arg40 = *(n128_u64 + 32);
        a20 = v310;
        a19 = v309;
        a17 = *n128_u64;
        v311 = *(v304 + 32);
        v312 = *(v304 + 16);
        *n128_u64 = *v304;
        *(n128_u64 + 16) = v312;
        *(n128_u64 + 32) = v311;
        v314 = a17;
        v313 = a19;
        *(v304 + 32) = arg40.n128_u32[0];
        *v304 = v314;
        *(v304 + 16) = v313;
        v315 = n128_u64;
        while (1)
        {
          n128_u64 = v315 + 64;
          v316 = (&v492 | 0x18);
          v317 = 11;
          while (1)
          {
            v319 = *v316--;
            v318 = v319;
            v320 = *(v315 + 8 * v317);
            v321 = v319 >= v320;
            if (v319 != v320)
            {
              break;
            }

            if (--v317 == 7)
            {
              goto LABEL_254;
            }
          }

          LOBYTE(v27) = !v321;
LABEL_254:
          v315 += 64;
          if (v318 != v320)
          {
            v315 = n128_u64;
            if (v27)
            {
              break;
            }
          }
        }

        v322 = v304;
        do
        {
          v304 = v322 - 64;
          v323 = -5;
          v24 = &v492 | 0x18;
          while (1)
          {
            v324 = *v24;
            v24 -= 8;
            LOBYTE(v25) = v324;
            v26 = *(v322 + 8 * v323);
            v325 = v324 >= v26;
            if (v324 != v26)
            {
              break;
            }

            if (--v323 == -9)
            {
              goto LABEL_263;
            }
          }

          v322 -= 64;
        }

        while (!v325);
      }

      v326 = (n128_u64 - 64);
      if (n128_u64 - 64 != v36)
      {
        v327 = *(n128_u64 - 32);
        *(v36 + 16) = *(n128_u64 - 48);
        v328 = *v326;
        *(v36 + 32) = v327;
        *v36 = v328;
      }

      LODWORD(a4) = 0;
      *(n128_u64 - 48) = vars0;
      a13 = v492;
      *(n128_u64 - 32) = v495;
      *v326 = a13;
      goto LABEL_3;
    }

LABEL_157:
    v245 = *(n128_u64 + 32);
    v246 = *(n128_u64 + 16);
    vars0 = v246;
    v494 = v245.n128_u32[0];
    v492 = *n128_u64;
    v247 = n128_u64;
    do
    {
      v248 = 0;
      v249 = v247;
      v247 += 64;
      while (1)
      {
        v250 = *(v249 + v248 * 8 + 88);
        v251 = vars0.n128_u64[v248 + 1];
        if (v250 != v251)
        {
          break;
        }

        if (--v248 == -4)
        {
          goto LABEL_163;
        }
      }
    }

    while (v250 < v251);
LABEL_163:
    v252 = a2;
    if (v249 == n128_u64)
    {
      v260 = a2;
      while (v247 < v260)
      {
        v253 = v260 - 64;
        v261 = -5;
        v262 = (&v492 | 0x18);
        while (1)
        {
          v263 = *(v260 + 8 * v261);
          v265 = *v262--;
          v264 = v265;
          v266 = v263 >= v265;
          if (v263 != v265)
          {
            break;
          }

          if (--v261 == -9)
          {
            goto LABEL_183;
          }
        }

        LOBYTE(v28) = !v266;
LABEL_183:
        v260 -= 64;
        if (v263 != v264)
        {
          v260 = v253;
          if (v28)
          {
            goto LABEL_187;
          }
        }
      }

      v253 = v260;
    }

    else
    {
      while (1)
      {
        v253 = v252 - 64;
        v254 = -5;
        v255 = (&v492 | 0x18);
        while (1)
        {
          v256 = *(v252 + 8 * v254);
          v258 = *v255--;
          v257 = v258;
          v259 = v256 >= v258;
          if (v256 != v258)
          {
            break;
          }

          if (--v254 == -9)
          {
            goto LABEL_171;
          }
        }

        LOBYTE(v28) = !v259;
LABEL_171:
        v252 -= 64;
        if (v256 != v257)
        {
          v252 = v253;
          if (v28)
          {
            break;
          }
        }
      }
    }

LABEL_187:
    if (v247 < v253)
    {
      v267 = v247;
      v268 = v253;
      do
      {
        v269 = v267[3];
        arg40 = v267[2];
        a20 = v269;
        v270 = v267[1];
        a17 = *v267;
        v245 = a17;
        a19 = v270;
        a16 = *v268;
        v246 = v268[1];
        v267[2].n128_u32[0] = v268[2].n128_u32[0];
        *v267 = a16;
        v267[1] = v246;
        v271 = arg40.n128_u32[0];
        *v268 = v245;
        v268[1] = v270;
        v268[2].n128_u32[0] = v271;
        do
        {
          v249 = v267;
          v267 += 4;
          v272 = (&v492 | 0x18);
          v273 = 11;
          while (1)
          {
            v274 = *(v249 + 8 * v273);
            v275 = *v272--;
            v276 = v274 >= v275;
            if (v274 != v275)
            {
              break;
            }

            if (--v273 == 7)
            {
              goto LABEL_196;
            }
          }
        }

        while (!v276);
        while (1)
        {
LABEL_196:
          v277 = v268[-4].n128_u64;
          v278 = -5;
          v279 = (&v492 | 0x18);
          while (1)
          {
            v280 = v268->n128_u64[v278];
            v282 = *v279--;
            v281 = v282;
            v283 = v280 >= v282;
            if (v280 != v282)
            {
              break;
            }

            if (--v278 == -9)
            {
              goto LABEL_203;
            }
          }

          v30 = !v283;
LABEL_203:
          v268 -= 4;
          if (v280 != v281)
          {
            v268 = v277;
            if (v30)
            {
              break;
            }
          }
        }

        v268 = v277;
      }

      while (v267 < v277);
    }

    if (v249 != n128_u64)
    {
      v284 = *(v249 + 32);
      *(n128_u64 + 16) = *(v249 + 16);
      v285 = *v249;
      *(n128_u64 + 32) = v284;
      *n128_u64 = v285;
    }

    *(v249 + 16) = vars0;
    a13 = v492;
    *(v249 + 32) = v494;
    *v249 = a13;
    if (v247 < v253)
    {
LABEL_211:
      v288 = a3;
      a13.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,false>(v36, v249, a3, a4 & 1, a5, a6, a7, a8, v484, v485, v486, v487, a13, v245, v246, a16, v488, v489, v490, v491).n128_u64[0];
      a3 = v288;
      LODWORD(a4) = 0;
      n128_u64 = v249 + 64;
      goto LABEL_3;
    }

    v286 = a3;
    v491 = n128_u64;
    v287 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *>(n128_u64, v249);
    n128_u64 = v249 + 64;
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *>((v249 + 64), a2))
    {
      a2 = v249;
      a3 = v286;
      n128_u64 = v491;
      LODWORD(a4) = HIDWORD(v490);
      if (!v287)
      {
        goto LABEL_2;
      }

      return a13;
    }

    a3 = v286;
    v36 = v491;
    LOBYTE(a4) = BYTE4(v490);
    if (!v287)
    {
      goto LABEL_211;
    }
  }

  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,0>(n128_u64, (n128_u64 + 64), (n128_u64 + 128), (n128_u64 + 192));
  v329 = 27;
  while (1)
  {
    v330 = *v33--;
    v331 = *(n128_u64 + 8 * v329);
    v332 = v330 >= v331;
    if (v330 != v331)
    {
      break;
    }

    if (--v329 == 23)
    {
      return a13;
    }
  }

  if (!v332)
  {
    v417 = 0;
    v418 = *(n128_u64 + 240);
    arg40 = *(n128_u64 + 224);
    a20 = v418;
    a13 = *(n128_u64 + 208);
    a17 = *(n128_u64 + 192);
    v419 = a17;
    a19 = a13;
    v421 = *v489;
    v420 = *(v489 + 16);
    *(n128_u64 + 224) = *(v489 + 32);
    *(n128_u64 + 192) = v421;
    *(n128_u64 + 208) = v420;
    *(v489 + 32) = arg40.n128_u32[0];
    *v489 = v419;
    *(v489 + 16) = a13;
    while (1)
    {
      v422 = *(n128_u64 + v417 + 216);
      v423 = *(n128_u64 + v417 + 152);
      if (v422 != v423)
      {
        break;
      }

      v417 -= 8;
      if (v417 == -32)
      {
        return a13;
      }
    }

    if (v422 < v423)
    {
      v464 = 0;
      a13 = *(n128_u64 + 144);
      arg40 = *(n128_u64 + 160);
      *(n128_u64 + 160) = *(n128_u64 + 224);
      *(n128_u64 + 224) = arg40.n128_u32[0];
      v465 = *(n128_u64 + 128);
      v466 = *(n128_u64 + 208);
      *(n128_u64 + 128) = *(n128_u64 + 192);
      *(n128_u64 + 144) = v466;
      *(n128_u64 + 192) = v465;
      *(n128_u64 + 208) = a13;
      while (1)
      {
        v467 = *(n128_u64 + v464 + 152);
        v468 = *(n128_u64 + v464 + 88);
        if (v467 != v468)
        {
          break;
        }

        v464 -= 8;
        if (v464 == -32)
        {
          return a13;
        }
      }

      if (v467 < v468)
      {
        v474 = 0;
        a13 = *(n128_u64 + 80);
        arg40 = *(n128_u64 + 96);
        *(n128_u64 + 96) = *(n128_u64 + 160);
        *(n128_u64 + 160) = arg40.n128_u32[0];
        v475 = *(n128_u64 + 64);
        v476 = *(n128_u64 + 144);
        *(n128_u64 + 64) = *(n128_u64 + 128);
        *(n128_u64 + 80) = v476;
        *(n128_u64 + 128) = v475;
        *(n128_u64 + 144) = a13;
        while (1)
        {
          v477 = *(n128_u64 + v474 + 88);
          v478 = *(n128_u64 + v474 + 24);
          if (v477 != v478)
          {
            break;
          }

          v474 -= 8;
          if (v474 == -32)
          {
            return a13;
          }
        }

        if (v477 < v478)
        {
LABEL_437:
          v479 = *(n128_u64 + 16);
          v480 = *(n128_u64 + 48);
          v481 = *(n128_u64 + 64);
          arg40 = *(n128_u64 + 32);
          a20 = v480;
          a19 = v479;
          a17 = *n128_u64;
          *(n128_u64 + 32) = *(n128_u64 + 96);
          v482 = *(n128_u64 + 80);
          *n128_u64 = v481;
          *(n128_u64 + 16) = v482;
          a13 = a17;
          v483 = a19;
          *(n128_u64 + 96) = arg40.n128_u32[0];
          *(n128_u64 + 64) = a13;
          *(n128_u64 + 80) = v483;
        }
      }
    }
  }

  return a13;
}

__int128 *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,0>(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v6 = 24;
  while (1)
  {
    v7 = *(a2 + v6);
    v8 = *(result + v6);
    if (v7 != v8)
    {
      break;
    }

    v6 -= 8;
    if (v6 == -8)
    {
      goto LABEL_6;
    }
  }

  v4 = v7 < v8;
LABEL_6:
  v9 = v7 != v8 && v4;
  v10 = 24;
  while (1)
  {
    v11 = *(a3 + v10);
    v12 = *(a2 + v10);
    if (v11 != v12)
    {
      break;
    }

    v10 -= 8;
    if (v10 == -8)
    {
      goto LABEL_11;
    }
  }

  v5 = v11 < v12;
LABEL_11:
  if (v9)
  {
    if (v11 != v12 && v5)
    {
      v13 = result[1];
      v58 = result[2];
      v14 = *result;
      v16 = *a3;
      v15 = a3[1];
      *(result + 8) = *(a3 + 8);
      *result = v16;
      result[1] = v15;
LABEL_27:
      *a3 = v14;
      a3[1] = v13;
      *(a3 + 8) = v58;
      goto LABEL_28;
    }

    v24 = result[1];
    v60 = result[2];
    v25 = *result;
    v27 = *a2;
    v26 = a2[1];
    *(result + 8) = *(a2 + 8);
    *result = v27;
    result[1] = v26;
    *a2 = v25;
    a2[1] = v24;
    *(a2 + 8) = v60;
    v28 = 24;
    while (1)
    {
      v29 = *(a3 + v28);
      v30 = *(a2 + v28);
      if (v29 != v30)
      {
        break;
      }

      v28 -= 8;
      if (v28 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v29 < v30)
    {
      v13 = a2[1];
      v58 = a2[2];
      v14 = *a2;
      v36 = *a3;
      v35 = a3[1];
      *(a2 + 8) = *(a3 + 8);
      *a2 = v36;
      a2[1] = v35;
      goto LABEL_27;
    }
  }

  else if (v11 != v12 && v5)
  {
    v17 = a2[1];
    v59 = a2[2];
    v18 = *a2;
    v20 = *a3;
    v19 = a3[1];
    *(a2 + 8) = *(a3 + 8);
    *a2 = v20;
    a2[1] = v19;
    *a3 = v18;
    a3[1] = v17;
    *(a3 + 8) = v59;
    v21 = 24;
    while (1)
    {
      v22 = *(a2 + v21);
      v23 = *(result + v21);
      if (v22 != v23)
      {
        break;
      }

      v21 -= 8;
      if (v21 == -8)
      {
        goto LABEL_28;
      }
    }

    if (v22 < v23)
    {
      v31 = result[1];
      v61 = result[2];
      v32 = *result;
      v34 = *a2;
      v33 = a2[1];
      *(result + 8) = *(a2 + 8);
      *result = v34;
      result[1] = v33;
      *a2 = v32;
      a2[1] = v31;
      *(a2 + 8) = v61;
    }
  }

LABEL_28:
  v37 = 24;
  while (1)
  {
    v38 = *(a4 + v37);
    v39 = *(a3 + v37);
    if (v38 != v39)
    {
      break;
    }

    v37 -= 8;
    if (v37 == -8)
    {
      return result;
    }
  }

  if (v38 < v39)
  {
    v40 = a3[1];
    v62 = a3[2];
    v41 = *a3;
    v43 = *a4;
    v42 = a4[1];
    *(a3 + 8) = *(a4 + 8);
    *a3 = v43;
    a3[1] = v42;
    *a4 = v41;
    a4[1] = v40;
    *(a4 + 8) = v62;
    v44 = 24;
    while (1)
    {
      v45 = *(a3 + v44);
      v46 = *(a2 + v44);
      if (v45 != v46)
      {
        break;
      }

      v44 -= 8;
      if (v44 == -8)
      {
        return result;
      }
    }

    if (v45 < v46)
    {
      v47 = a2[1];
      v63 = a2[2];
      v48 = *a2;
      v50 = *a3;
      v49 = a3[1];
      *(a2 + 8) = *(a3 + 8);
      *a2 = v50;
      a2[1] = v49;
      *a3 = v48;
      a3[1] = v47;
      *(a3 + 8) = v63;
      v51 = 24;
      while (1)
      {
        v52 = *(a2 + v51);
        v53 = *(result + v51);
        if (v52 != v53)
        {
          break;
        }

        v51 -= 8;
        if (v51 == -8)
        {
          return result;
        }
      }

      if (v52 < v53)
      {
        v54 = result[1];
        v64 = result[2];
        v55 = *result;
        v57 = *a2;
        v56 = a2[1];
        *(result + 8) = *(a2 + 8);
        *result = v57;
        result[1] = v56;
        *a2 = v55;
        a2[1] = v54;
        *(a2 + 8) = v64;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *>(char *a1, char *a2)
{
  v7 = (a2 - a1) >> 6;
  if (v7 > 2)
  {
    switch(v7)
    {
      case 3:
        v18 = 0;
        v9 = a2 - 64;
        while (1)
        {
          v19 = *&a1[v18 + 88];
          v20 = *&a1[v18 + 24];
          if (v19 != v20)
          {
            break;
          }

          v18 -= 8;
          if (v18 == -32)
          {
            goto LABEL_25;
          }
        }

        v2 = v19 < v20;
LABEL_25:
        v25 = v19 != v20 && v2;
        v26 = 11;
        v27 = a2 - 40;
        while (1)
        {
          v29 = *v27;
          v27 -= 8;
          v28 = v29;
          v30 = *&a1[8 * v26];
          v31 = v29 >= v30;
          if (v29 != v30)
          {
            break;
          }

          if (--v26 == 7)
          {
            goto LABEL_32;
          }
        }

        v4 = !v31;
LABEL_32:
        if (v25)
        {
          if (((v28 != v30) & v4) == 0)
          {
            v32 = 0;
            v33 = *(a1 + 1);
            vars0 = *(a1 + 2);
            v34 = *a1;
            v35 = *(a1 + 5);
            *a1 = *(a1 + 4);
            *(a1 + 1) = v35;
            *(a1 + 8) = *(a1 + 24);
            *(a1 + 4) = v34;
            *(a1 + 5) = v33;
            *(a1 + 24) = vars0;
            result = 1;
            while (1)
            {
              v37 = *&a2[v32 - 40];
              v38 = *&a1[v32 + 88];
              if (v37 != v38)
              {
                break;
              }

              v32 -= 8;
              if (v32 == -32)
              {
                return result;
              }
            }

            if (v37 >= v38)
            {
              return 1;
            }

            v46 = *(a1 + 5);
            vars0 = *(a1 + 6);
            v47 = *(a1 + 4);
            v84 = *v9;
            v83 = *(a2 - 3);
            *(a1 + 24) = *(a2 - 8);
            *(a1 + 4) = v84;
            *(a1 + 5) = v83;
            goto LABEL_49;
          }

LABEL_48:
          v46 = *(a1 + 1);
          vars0 = *(a1 + 2);
          v47 = *a1;
          v49 = *v9;
          v48 = *(v9 + 1);
          *(a1 + 8) = *(v9 + 8);
          *a1 = v49;
          *(a1 + 1) = v48;
LABEL_49:
          *v9 = v47;
          *(v9 + 1) = v46;
          *(v9 + 8) = vars0;
          return 1;
        }

        if (((v28 != v30) & v4) == 0)
        {
          return 1;
        }

        v57 = 0;
        v58 = *(a1 + 5);
        vars0 = *(a1 + 6);
        v59 = *(a1 + 4);
        v61 = *v9;
        v60 = *(a2 - 3);
        *(a1 + 24) = *(a2 - 8);
        *(a1 + 4) = v61;
        *(a1 + 5) = v60;
        *(a2 - 8) = vars0;
        *v9 = v59;
        *(a2 - 3) = v58;
        result = 1;
        while (1)
        {
          v62 = *&a1[v57 + 88];
          v63 = *&a1[v57 + 24];
          v64 = v62 >= v63;
          if (v62 != v63)
          {
            break;
          }

          v57 -= 8;
          if (v57 == -32)
          {
            return result;
          }
        }

        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,0>(a1, a1 + 4, a1 + 8, a2 - 4);
        return 1;
      case 5:
        v12 = a2 - 64;
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,0>(a1, a1 + 4, a1 + 8, a1 + 12);
        v13 = a2 - 40;
        v14 = 27;
        while (1)
        {
          v15 = *v13;
          v13 -= 8;
          v16 = *&a1[8 * v14];
          v17 = v15 >= v16;
          if (v15 != v16)
          {
            break;
          }

          if (--v14 == 23)
          {
            return 1;
          }
        }

        if (v17)
        {
          return 1;
        }

        v50 = 0;
        v51 = *(a1 + 13);
        vars0 = *(a1 + 14);
        v52 = *(a1 + 12);
        v54 = *v12;
        v53 = *(a2 - 3);
        *(a1 + 56) = *(a2 - 8);
        *(a1 + 12) = v54;
        *(a1 + 13) = v53;
        *(a2 - 8) = vars0;
        *v12 = v52;
        *(a2 - 3) = v51;
        result = 1;
        while (1)
        {
          v55 = *&a1[v50 + 216];
          v56 = *&a1[v50 + 152];
          if (v55 != v56)
          {
            break;
          }

          v50 -= 8;
          if (v50 == -32)
          {
            return result;
          }
        }

        if (v55 >= v56)
        {
          return 1;
        }

        v77 = 0;
        v78 = *(a1 + 9);
        vars0 = *(a1 + 10);
        *(a1 + 40) = *(a1 + 56);
        *(a1 + 56) = vars0;
        v79 = *(a1 + 8);
        v80 = *(a1 + 13);
        *(a1 + 8) = *(a1 + 12);
        *(a1 + 9) = v80;
        *(a1 + 12) = v79;
        *(a1 + 13) = v78;
        result = 1;
        while (1)
        {
          v81 = *&a1[v77 + 152];
          v82 = *&a1[v77 + 88];
          if (v81 != v82)
          {
            break;
          }

          v77 -= 8;
          if (v77 == -32)
          {
            return result;
          }
        }

        if (v81 >= v82)
        {
          return 1;
        }

        v106 = 0;
        v107 = *(a1 + 5);
        vars0 = *(a1 + 6);
        *(a1 + 24) = *(a1 + 40);
        *(a1 + 40) = vars0;
        v108 = *(a1 + 4);
        v109 = *(a1 + 9);
        *(a1 + 4) = *(a1 + 8);
        *(a1 + 5) = v109;
        *(a1 + 8) = v108;
        *(a1 + 9) = v107;
        result = 1;
        while (1)
        {
          v110 = *&a1[v106 + 88];
          v111 = *&a1[v106 + 24];
          v64 = v110 >= v111;
          if (v110 != v111)
          {
            break;
          }

          v106 -= 8;
          if (v106 == -32)
          {
            return result;
          }
        }

        break;
      default:
        goto LABEL_19;
    }

    if (!v64)
    {
      v112 = *(a1 + 1);
      vars0 = *(a1 + 2);
      v113 = *a1;
      v114 = *(a1 + 5);
      *a1 = *(a1 + 4);
      *(a1 + 1) = v114;
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 4) = v113;
      *(a1 + 5) = v112;
      *(a1 + 24) = vars0;
    }

    return 1;
  }

  if (v7 >= 2)
  {
    if (v7 == 2)
    {
      v8 = 0;
      v9 = a2 - 64;
      while (1)
      {
        v10 = *&a2[v8 - 40];
        v11 = *&a1[v8 + 24];
        if (v10 != v11)
        {
          break;
        }

        v8 -= 8;
        if (v8 == -32)
        {
          return 1;
        }
      }

      if (v10 >= v11)
      {
        return 1;
      }

      goto LABEL_48;
    }

LABEL_19:
    v21 = 0;
    v22 = a1 + 128;
    while (1)
    {
      v23 = *&a1[v21 + 88];
      v24 = *&a1[v21 + 24];
      if (v23 != v24)
      {
        break;
      }

      v21 -= 8;
      if (v21 == -32)
      {
        goto LABEL_39;
      }
    }

    v3 = v23 < v24;
LABEL_39:
    v39 = 0;
    v40 = v23 != v24 && v3;
    while (1)
    {
      v41 = *&a1[v39 + 152];
      v42 = *&a1[v39 + 88];
      if (v41 != v42)
      {
        break;
      }

      v39 -= 8;
      if (v39 == -32)
      {
        goto LABEL_44;
      }
    }

    v3 = v41 < v42;
LABEL_44:
    if (!v40)
    {
      if (v41 != v42 && v3)
      {
        v65 = 0;
        v66 = *(a1 + 5);
        vars0 = *(a1 + 6);
        *(a1 + 24) = *(a1 + 40);
        *(a1 + 40) = vars0;
        v67 = *(a1 + 4);
        v68 = *(a1 + 9);
        *(a1 + 4) = *v22;
        *(a1 + 5) = v68;
        *v22 = v67;
        *(a1 + 9) = v66;
        while (1)
        {
          v69 = *&a1[v65 + 88];
          v70 = *&a1[v65 + 24];
          if (v69 != v70)
          {
            break;
          }

          v65 -= 8;
          if (v65 == -32)
          {
            goto LABEL_82;
          }
        }

        if (v69 < v70)
        {
          v85 = *(a1 + 1);
          vars0 = *(a1 + 2);
          v86 = *a1;
          v87 = *(a1 + 5);
          *a1 = *(a1 + 4);
          *(a1 + 1) = v87;
          *(a1 + 8) = *(a1 + 24);
          *(a1 + 4) = v86;
          *(a1 + 5) = v85;
          *(a1 + 24) = vars0;
        }
      }

      goto LABEL_82;
    }

    if (v41 != v42 && v3)
    {
      v43 = *(a1 + 1);
      vars0 = *(a1 + 2);
      v44 = *a1;
      v45 = *(a1 + 9);
      *a1 = *v22;
      *(a1 + 1) = v45;
      *(a1 + 8) = *(a1 + 40);
    }

    else
    {
      v71 = *(a1 + 1);
      vars0 = *(a1 + 2);
      v72 = *a1;
      v73 = *(a1 + 5);
      *a1 = *(a1 + 4);
      *(a1 + 1) = v73;
      *(a1 + 8) = *(a1 + 24);
      *(a1 + 4) = v72;
      *(a1 + 5) = v71;
      *(a1 + 24) = vars0;
      v74 = a1 + 152;
      v75 = -4;
      while (1)
      {
        v76 = *(v74 - 8);
        if (*v74 != v76)
        {
          break;
        }

        v74 -= 8;
        v17 = __CFADD__(v75++, 1);
        if (v17)
        {
          goto LABEL_82;
        }
      }

      if (*v74 >= v76)
      {
        goto LABEL_82;
      }

      v43 = *(a1 + 5);
      vars0 = *(a1 + 6);
      v44 = *(a1 + 4);
      v88 = *(a1 + 9);
      *(a1 + 4) = *v22;
      *(a1 + 5) = v88;
      *(a1 + 24) = *(a1 + 40);
    }

    *v22 = v44;
    *(a1 + 9) = v43;
    *(a1 + 40) = vars0;
LABEL_82:
    v89 = a1 + 192;
    if (a1 + 192 != a2)
    {
      v90 = 0;
      v91 = a1 + 216;
      v92 = a1 + 88;
      while (2)
      {
        v93 = -4;
        v94 = v91;
        while (1)
        {
          v95 = *(v94 - 8);
          if (*v94 != v95)
          {
            break;
          }

          v94 -= 8;
          v17 = __CFADD__(v93++, 1);
          if (v17)
          {
            goto LABEL_100;
          }
        }

        if (*v94 < v95)
        {
          v96 = *(v89 + 1);
          v115 = *v89;
          v116 = v96;
          vars0 = *(v89 + 2);
          v97 = v92;
          v98 = v89;
          while (1)
          {
            v99 = v98;
            v98 = v22;
            v100 = *(v22 + 1);
            *v99 = *v22;
            *(v99 + 1) = v100;
            *(v99 + 8) = *(v22 + 8);
            if (v22 == a1)
            {
              break;
            }

            v101 = 0;
            v22 -= 64;
            while (1)
            {
              v102 = *((&v115 | 0x18) + v101);
              v103 = *&v97[v101];
              if (v102 != v103)
              {
                break;
              }

              v101 -= 8;
              if (v101 == -32)
              {
                goto LABEL_99;
              }
            }

            v97 -= 64;
            if (v102 >= v103)
            {
              goto LABEL_99;
            }
          }

          v98 = a1;
LABEL_99:
          v104 = vars0;
          *(v98 + 1) = v116;
          v105 = v115;
          *(v98 + 8) = v104;
          *v98 = v105;
          if (++v90 == 8)
          {
            return v89 + 64 == a2;
          }
        }

LABEL_100:
        v22 = v89;
        v91 += 64;
        v92 += 64;
        v89 += 64;
        if (v89 != a2)
        {
          continue;
        }

        break;
      }
    }
  }

  return 1;
}