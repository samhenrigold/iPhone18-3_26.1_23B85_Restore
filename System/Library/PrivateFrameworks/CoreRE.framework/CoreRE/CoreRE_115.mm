uint64_t *re::ecs2::UISorter::updateMeshSortGrouping@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, re::Allocator *a3@<X1>)
{
  if (*(this + 19))
  {
    v5 = this;
    v6 = *(this + 7);
    v41 = 0;
    v38[1] = 0;
    v39 = 0;
    v40 = 0;
    v38[0] = a3;
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v38, (8 * v6) | 1u);
    ++v40;
    v37 = 0;
    v35[1] = 0;
    v35[2] = 0;
    v36 = 0;
    v35[0] = a3;
    re::DynamicArray<float *>::setCapacity(v35, 0x40uLL);
    ++v36;
    v7 = *(v5 + 20);
    if (v7)
    {
      v8 = 0;
      v9 = (v5[8] + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 6;
        if (v10 < 0)
        {
          break;
        }

        if (v7 == ++v8)
        {
          LODWORD(v8) = *(v5 + 20);
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    while (v8 != v7)
    {
      v11 = *(v5[8] + 24 * v8 + 16);
      if (v11)
      {
        v12 = (v11 + 8);
        re::ecs2::UICodirectionalGroup::updateSortGroups(v11, a3, v38, v35);
      }

      else
      {
        re::ecs2::UICodirectionalGroup::updateSortGroups(0, a3, v38, v35);
      }

      v13 = *(v5 + 20);
      if (v13 <= v8 + 1)
      {
        v13 = v8 + 1;
      }

      while (v13 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(v5[8] + 24 * v8 + 8) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v8) = v13;
LABEL_19:
      ;
    }

    a1[4] = 0;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    *(a1 + 6) = 0;
    if (v38[0])
    {
      v14 = v39;
      *a1 = v38[0];
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, v14);
      ++*(a1 + 6);
      v15 = a1[2];
      if (v14 >= v15)
      {
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(a1, v14);
        v23 = v41;
        v24 = a1[2];
        v25 = a1[4];
        if (v24)
        {
          v26 = 8 * v24;
          v27 = a1[4];
          v28 = v41;
          do
          {
            v29 = *v28++;
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v27++, v29);
            v26 -= 8;
          }

          while (v26);
        }

        if (v24 != v14)
        {
          v30 = &v23[v24];
          v31 = (v25 + 8 * v24);
          v32 = 8 * v14 - 8 * v24;
          do
          {
            v33 = *v30;
            *v31 = *v30;
            if (v33)
            {
              v34 = (v33 + 8);
            }

            ++v30;
            ++v31;
            v32 -= 8;
          }

          while (v32);
        }
      }

      else
      {
        v16 = a1[4];
        if (v14)
        {
          v17 = v41;
          v18 = 8 * v14;
          v19 = a1[4];
          do
          {
            v20 = *v17++;
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v19++, v20);
            v18 -= 8;
          }

          while (v18);
        }

        v21 = v16 + 8 * v14;
        v22 = 8 * v15 - 8 * v14;
        do
        {
          if (*v21)
          {

            *v21 = 0;
          }

          v21 += 8;
          v22 -= 8;
        }

        while (v22);
      }

      a1[2] = v14;
    }

    re::DynamicArray<char const*>::DynamicArray((a1 + 5), v35);
    if (v35[0])
    {
      if (v37)
      {
        (*(*v35[0] + 40))();
      }
    }

    return re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v38);
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    *(a1 + 6) = 0;
    a1[2] = 0;
    a1[9] = 0;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 16) = 0;
  }

  return this;
}

void re::ecs2::UISorter::updateCodirectionalGroupAsSortGroup(re::ecs2::UISorter *this, re::Allocator *a2)
{
  if (*(this + 19))
  {
    v4 = *(this + 20);
    if (v4)
    {
      v5 = 0;
      v6 = (*(this + 8) + 8);
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
          LODWORD(v5) = *(this + 20);
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
      v8 = *(*(this + 8) + 24 * v5 + 16);
      if (v8)
      {
        v9 = &v8->u32[2];
        re::ecs2::UICodirectionalGroup::updateGroupToken(v8);
        re::ecs2::UICodirectionalGroup::sortEntitiesBackToFront(v8, a2);
        re::ecs2::UICodirectionalGroup::writeToMeshSorting(v8, v10, v11);
      }

      else
      {
        re::ecs2::UICodirectionalGroup::updateGroupToken(0);
        re::ecs2::UICodirectionalGroup::sortEntitiesBackToFront(0, a2);
        re::ecs2::UICodirectionalGroup::writeToMeshSorting(0, v12, v13);
      }

      v14 = *(this + 20);
      if (v14 <= v5 + 1)
      {
        v14 = v5 + 1;
      }

      while (v14 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(this + 8) + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v5) = v14;
LABEL_18:
      ;
    }
  }
}

void re::ecs2::UISorter::writeSortingResults(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, __n128 a5, double a6, double a7, double a8, float32x4_t a9)
{
  if (a4)
  {
    v10 = a3;
    v11 = 8 * a4;
    while (1)
    {
      v12 = *v10;
      v13 = re::ecs2::EntityComponentCollection::get((*v10 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v13)
      {
        break;
      }

LABEL_24:
      v10 += 8;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_25;
      }
    }

    v14 = v13;
    v16 = v13 + 176;
    v15 = *(v13 + 176);
    v17 = *(v13 + 160);
    v66.i8[0] = *(v13 + 432);
    if (v66.u8[0] == 1)
    {
      v18 = *(v13 + 464);
      v67 = *(v13 + 448);
      v68 = v18;
    }

    *(v13 + 304) = 1;
    LOBYTE(v62) = 0;
    v64 = 0;
    v65 = 0;
    v61.i64[0] = 0;
    v61.i16[4] = 0;
    re::ecs2::MeshSortGroupToken::operator=(v13 + 176, &v61);
    *(v14 + 160) = 0;
    re::ecs2::UISorterUtil::optionalInsideOutsidePartitionPlaneFrom(&v61, v12, *(a1 + 144));
    if (*(v14 + 432))
    {
      if ((v61.i8[0] & 1) == 0)
      {
        *(v16 + 256) = 0;
LABEL_12:
        if (re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken != -1)
        {
          dispatch_once(&re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken, &__block_literal_global_5_0);
        }

        if (re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup == 1)
        {
          if (re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::onceToken != -1)
          {
            dispatch_once(&re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::onceToken, &__block_literal_global_18_0);
          }

          if (re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::gEnableMeshPartDepthBiasInSortGroup == 1 && *(v14 + 480) == 1)
          {
            *(v14 + 480) = 0;
          }
        }

        if (v15 != *v16 || v17 != *(v14 + 160) || re::Optional<re::SortingPlane>::operator!=(v66.f32, v16 + 256))
        {
          re::ecs2::Component::markDirty(v14);
        }

        goto LABEL_24;
      }
    }

    else
    {
      if ((v61.i8[0] & 1) == 0)
      {
        goto LABEL_12;
      }

      *(v14 + 432) = 1;
    }

    v19 = v63;
    *(v14 + 448) = v62;
    *(v14 + 464) = v19;
    goto LABEL_12;
  }

LABEL_25:
  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = *(a2 + 32);
    v22 = 8 * v20;
    do
    {
      v23 = *v21;
      if (*v21)
      {
        v24 = &v23->n128_i8[8];
        re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(v23, v25, v26);
      }

      else
      {
        re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(0, a2, a3);
      }

      ++v21;
      v22 -= 8;
    }

    while (v22);
  }

  v27 = *(a1 + 80);
  if (v27)
  {
    v28 = 0;
    v29 = (*(a1 + 64) + 8);
    while (1)
    {
      v30 = *v29;
      v29 += 6;
      if (v30 < 0)
      {
        break;
      }

      if (v27 == ++v28)
      {
        LODWORD(v28) = *(a1 + 80);
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
    v58 = *(a1 + 80);
    do
    {
      v31 = *(*(a1 + 64) + 24 * v28 + 16);
      if (v31)
      {
        v32 = (v31 + 8);
      }

      if (*(v31 + 144) == 1)
      {
        a5 = re::ecs2::UICodirectionalGroup::recomputeAverages(v31, a5, a6, a7, a8, a9, a2, a3);
      }

      if (*(v31 + 145) == 1)
      {
        v33 = *(v31 + 232);
        if (v33)
        {
          v34 = 0;
          v35 = (*(v31 + 216) + 8);
          do
          {
            v36 = *v35;
            v35 += 6;
            if (v36 < 0)
            {
              goto LABEL_56;
            }

            ++v34;
          }

          while (v33 != v34);
          LODWORD(v34) = *(v31 + 232);
        }

        else
        {
          LODWORD(v34) = 0;
        }

LABEL_56:
        while (v34 != v33)
        {
          re::ecs2::UICoincidentalGroup::updateGroupToken(*(*(v31 + 216) + 24 * v34 + 16), a2, a3);
          v37 = *(v31 + 232);
          if (v37 <= v34 + 1)
          {
            v37 = v34 + 1;
          }

          while (v37 - 1 != v34)
          {
            LODWORD(v34) = v34 + 1;
            if ((*(*(v31 + 216) + 24 * v34 + 8) & 0x80000000) != 0)
            {
              goto LABEL_56;
            }
          }

          LODWORD(v34) = v37;
        }

        v38 = *(v31 + 56);
        if (v38)
        {
          v39 = 0;
          v40 = (*(v31 + 40) + 8);
          do
          {
            v41 = *v40;
            v40 += 6;
            if (v41 < 0)
            {
              goto LABEL_83;
            }

            ++v39;
          }

          while (v38 != v39);
          LODWORD(v39) = *(v31 + 56);
        }

        else
        {
          LODWORD(v39) = 0;
        }

LABEL_83:
        while (2)
        {
          if (v39 == v38)
          {
            *(v31 + 145) = 0;
            LODWORD(v27) = v58;
            goto LABEL_85;
          }

          v42 = *(*(v31 + 40) + 24 * v39 + 16);
          v69[0] = 0;
          v60 = *(v43 + 320);
          re::ecs2::UISorterUtil::optionalSortingPlaneFrom(&v61, v42, *(v31 + 432));
          v44 = v63;
          if (*(v31 + 52) != 1)
          {
            v46 = *(v31 + 112);
            v45 = *(v31 + 128);
            v47 = vmulq_f32(v46, vsubq_f32(v63, v45));
            v44 = vaddq_f32(v45, vmulq_n_f32(v46, v47.f32[2] + vaddv_f32(*v47.f32)));
          }

          *(v43 + 320) = v44;
          ++re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverrides;
          v61.i8[0] = *(v43 + 432);
          if (v61.u8[0] == 1)
          {
            v48 = *(v43 + 464);
            v62 = *(v43 + 448);
            v63 = v48;
          }

          re::ecs2::UISorterUtil::optionalInsideOutsidePartitionPlaneFrom(&v66, v42, *(v31 + 432));
          if (*(v43 + 432))
          {
            if ((v66.i8[0] & 1) == 0)
            {
              *(v43 + 432) = 0;
LABEL_73:
              v50 = vmvnq_s8(vceqq_f32(v60, *(v43 + 320)));
              v50.i32[3] = v50.i32[2];
              if ((vmaxvq_u32(v50) & 0x80000000) != 0 || (v69[0] & 1) != 0 || re::Optional<re::SortingPlane>::operator!=(v61.f32, v43 + 432))
              {
                re::ecs2::Component::markDirty(v43);
                ++re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied;
              }

              v51 = *(v31 + 56);
              if (v51 <= v39 + 1)
              {
                v51 = v39 + 1;
              }

              while (v51 - 1 != v39)
              {
                LODWORD(v39) = v39 + 1;
                if ((*(*(v31 + 40) + 24 * v39 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_83;
                }
              }

              LODWORD(v39) = v51;
              continue;
            }
          }

          else
          {
            if ((v66.i8[0] & 1) == 0)
            {
              goto LABEL_73;
            }

            *(v43 + 432) = 1;
          }

          break;
        }

        v49 = v68;
        *(v43 + 448) = v67;
        *(v43 + 464) = v49;
        goto LABEL_73;
      }

LABEL_85:
      v52 = *(v31 + 232);
      if (v52)
      {
        v53 = 0;
        v54 = (*(v31 + 216) + 8);
        while (1)
        {
          v55 = *v54;
          v54 += 6;
          if (v55 < 0)
          {
            break;
          }

          if (v52 == ++v53)
          {
            LODWORD(v53) = *(v31 + 232);
            break;
          }
        }
      }

      else
      {
        LODWORD(v53) = 0;
      }

      if (v53 == v52)
      {
        if (!v31)
        {
          goto LABEL_102;
        }
      }

      else
      {
        do
        {
          re::ecs2::CAMeshSortGroup::updateMeshSortingComponents(*(*(v31 + 216) + 24 * v53 + 16), a2, a3);
          v56 = *(v31 + 232);
          if (v56 <= v53 + 1)
          {
            v56 = v53 + 1;
          }

          while (v56 - 1 != v53)
          {
            LODWORD(v53) = v53 + 1;
            if ((*(*(v31 + 216) + 24 * v53 + 8) & 0x80000000) != 0)
            {
              goto LABEL_100;
            }
          }

          LODWORD(v53) = v56;
LABEL_100:
          ;
        }

        while (v53 != v52);
      }

LABEL_102:
      v57 = *(a1 + 80);
      if (v57 <= v28 + 1)
      {
        v57 = v28 + 1;
      }

      while (v57 - 1 != v28)
      {
        LODWORD(v28) = v28 + 1;
        if ((*(*(a1 + 64) + 24 * v28 + 8) & 0x80000000) != 0)
        {
          goto LABEL_108;
        }
      }

      LODWORD(v28) = v57;
LABEL_108:
      ;
    }

    while (v28 != v27);
  }
}

BOOL re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::removeInternal(a1, v5);
}

uint64_t re::ecs2::UICodirectionalGroup::remove(re::ecs2::UICodirectionalGroup *this, re::ecs2::Entity *a2)
{
  v9 = a2;
  v3 = *(this + 16);
  result = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 24, &v9);
  if (*(this + 16) != v3)
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 344, &v9);
    *(this + 144) = 1;
    v5 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 152, &v9);
    if (v5)
    {
      v6 = *v5;
      v8 = v6;
      if (v6)
      {
        v7 = (v6 + 8);
      }

      re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(this + 296, &v8);
      re::ecs2::CAMeshSortGroup::remove(v8, v9);
      re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(this + 152, &v9);
      if (v8)
      {
      }
    }

    return re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 248, &v9);
  }

  return result;
}

uint64_t *re::ecs2::UICodirectionalGroup::add(re::ecs2::UICodirectionalGroup *this, re::ecs2::Entity *a2)
{
  v7 = a2;
  v3 = *(this + 16);
  result = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 24, &v7);
  if (*(this + 16) != v3)
  {
    v8.i64[0] = v7;
    result = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 344, &v8);
    if (*(this + 13) == 1)
    {
      result = re::ecs2::UISorterUtil::optionalSortingPlaneFrom(&v8, v7, *(this + 54));
      v6 = v9;
      v5 = v10;
      *(this + 5) = v9;
      *(this + 6) = v5;
      *(this + 7) = v6;
      *(this + 8) = v5;
      *(this + 145) = 1;
    }

    else
    {
      *(this + 144) = 1;
    }
  }

  return result;
}

void re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addOrReplace(uint64_t a1, void *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v17);
  v7 = HIDWORD(v18);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1, v18, v17);
    *(v8 + 8) = *a2;
    v9 = *a3;
    *(v8 + 16) = *a3;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 32 * v7;
    v14 = *(v11 + 16);
    v13 = (v11 + 16);
    v12 = v14;
    v15 = *a3;
    if (v14 != v15)
    {
      if (v15)
      {
        v16 = (v15 + 8);
        v12 = *v13;
      }

      if (v12)
      {
      }

      *v13 = v15;
    }
  }
}

double re::ecs2::UICodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(re::ecs2::UICodirectionalGroup *this, __n128 a2, uint64_t a3, re::ecs2::UISorterTransformCache *a4)
{
  v5 = *(this + 13);
  v6 = *(this + 104);
  *(this + 51) = 0;
  if (!v5)
  {
    ++v6;
  }

  *(this + 104) = v6 + 1;
  if (*(this + 50) < v5)
  {
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 49, v5);
  }

  v7 = *(this + 14);
  if (v7)
  {
    v8 = 0;
    v9 = (*(this + 5) + 8);
    while (1)
    {
      v10 = *v9;
      v9 += 6;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(this + 14);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 == v7)
  {
    v11 = *(this + 51);
  }

  else
  {
    do
    {
      v12 = *(*(this + 5) + 24 * v8 + 16);
      v13 = re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v31, v12, *(this + 54));
      v14 = v32;
      v16 = *(this + 7);
      v15 = *(this + 8);
      v18 = *(this + 50);
      v17 = *(this + 51);
      if (v17 >= v18)
      {
        v19 = v17 + 1;
        if (v18 < v17 + 1)
        {
          v28 = *(this + 7);
          v29 = *(this + 8);
          v30 = v32;
          if (*(this + 49))
          {
            v20 = 2 * v18;
            if (!v18)
            {
              v20 = 8;
            }

            if (v20 <= v19)
            {
              v21 = v19;
            }

            else
            {
              v21 = v20;
            }

            re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 49, v21);
          }

          else
          {
            re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 49, v19);
            ++*(this + 104);
          }

          v15 = v29;
          v14 = v30;
          v16 = v28;
        }

        v17 = *(this + 51);
      }

      a2 = vmulq_f32(vsubq_f32(v14, v15), v16);
      a2.n128_f32[0] = a2.n128_f32[2] + vaddv_f32(a2.n128_u64[0]);
      v22 = *(this + 53) + 16 * v17;
      *v22 = v12;
      *(v22 + 8) = a2.n128_f32[0];
      v11 = v17 + 1;
      *(this + 51) = v11;
      ++*(this + 104);
      v23 = *(this + 14);
      if (v23 <= v8 + 1)
      {
        v23 = v8 + 1;
      }

      while (v23 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(*(this + 5) + 24 * v8 + 8) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v8) = v23;
LABEL_31:
      ;
    }

    while (v8 != v7);
  }

  v24 = *(this + 53);
  v25 = 126 - 2 * __clz(v11);
  if (v11)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshCodirectionalGroup::rebuildEntityArrayInBackToFrontOrder(void)::$_0 &,re::ecs2::CAMeshCodirectionalGroup::EntityWithDisplacement *,false>(v24, &v24[v11], v26, 1, a2).n128_u64[0];
  return result;
}

re::ecs2::UISortingComponent *re::ecs2::UISorter::updateDerivedSortOrderForEntity(re::ecs2::UISorter *this, const re::ecs2::Entity *a2)
{
  v2 = a2;
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v4 = result;
    result = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (!result || *(result + 20) != 3)
    {
      while (1)
      {
        v2 = *(v2 + 4);
        if (!v2 || (*(v2 + 304) & 0x80) != 0)
        {
          break;
        }

        result = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (result && *(result + 20) == 3)
        {
          v5 = *(result + 22);

          return re::ecs2::UISortingComponent::setCaSortOrder(v4, v5);
        }
      }
    }
  }

  return result;
}

void re::ecs2::UICodirectionalGroup::updateSortGroups(uint64_t a1, re::Allocator *a2, _anonymous_namespace_ *a3, _anonymous_namespace_ *a4)
{
  v7 = a2;
  v265 = *MEMORY[0x1E69E9840];
  if (*(a1 + 372))
  {
    ++re::ecs2::CARESortingDebugging::s_codirGroupsWithDirtyEntities;
  }

  else if (!*(a1 + 324))
  {
    return;
  }

  v218 = a3;
  if (*(a1 + 228) <= 1u)
  {
    v9 = 1;
  }

  else
  {
    v9 = *(a1 + 228);
  }

  v240 = 0u;
  v241 = 0u;
  v242 = 0;
  v243 = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(&v240, a2, v9);
  v10 = *(a1 + 372);
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v239 = 0;
  v236[1] = 0;
  v237 = 0;
  v238 = 0;
  v236[0] = v7;
  re::DynamicArray<float *>::setCapacity(v236, v11);
  ++v238;
  v12 = *(a1 + 376);
  v216 = a4;
  if (v12)
  {
    v13 = 0;
    v14 = (*(a1 + 360) + 8);
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
        LODWORD(v13) = *(a1 + 376);
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  while (v13 != v12)
  {
    v260.i64[0] = *(*(a1 + 360) + 24 * v13 + 16);
    re::DynamicArray<re::TransitionCondition *>::add(v236, &v260);
    v16 = *(a1 + 376);
    if (v16 <= v13 + 1)
    {
      v16 = v13 + 1;
    }

    while (v16 - 1 != v13)
    {
      LODWORD(v13) = v13 + 1;
      if ((*(*(a1 + 360) + 24 * v13 + 8) & 0x80000000) != 0)
      {
        goto LABEL_23;
      }
    }

    LODWORD(v13) = v16;
LABEL_23:
    ;
  }

  v235 = 0;
  v232[1] = 0;
  v233 = 0;
  v234 = 0;
  v232[0] = v7;
  re::DynamicArray<float *>::setCapacity(v232, v237);
  ++v234;
  v17 = *(a1 + 376);
  if (v17)
  {
    v18 = 0;
    v19 = (*(a1 + 360) + 8);
    while (1)
    {
      v20 = *v19;
      v19 += 6;
      if (v20 < 0)
      {
        break;
      }

      if (v17 == ++v18)
      {
        LODWORD(v18) = *(a1 + 376);
        break;
      }
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (v18 != v17)
  {
    v4 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    do
    {
      v260.i64[0] = *(*(a1 + 360) + 24 * v18 + 16);
      v21 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 152, &v260);
      if (v21)
      {
        v22 = *v21;
        v245[0] = v22;
        if (v22)
        {
          v23 = (v22 + 8);
        }

        re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(a1 + 296, v245);
        re::ecs2::CAMeshSortGroup::remove(v245[0], v260.i64[0]);
        re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(a1 + 152, &v260);
        ++re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups;
        if (v245[0])
        {
        }
      }

      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 248, &v260);
      v24 = *(a1 + 376);
      if (v24 <= v18 + 1)
      {
        v24 = v18 + 1;
      }

      while (v24 - 1 != v18)
      {
        LODWORD(v18) = v18 + 1;
        if ((*(*(a1 + 360) + 24 * v18 + 8) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v18) = v24;
LABEL_43:
      ;
    }

    while (v18 != v17);
  }

  v25 = *(a1 + 276);
  if (v25 <= 8)
  {
    v26 = 8;
  }

  else
  {
    v26 = v25;
  }

  *&v252[2] = 0;
  memset(&v250[8], 0, 20);
  *v250 = v7;
  re::DynamicArray<float *>::setCapacity(v250, v26);
  ++*&v250[24];
  memset(v231, 0, 36);
  *&v231[36] = 0x7FFFFFFFLL;
  v27 = *(a1 + 200);
  if (v27)
  {
    v28 = *(a1 + 228) <= 3u ? 3 : *(a1 + 228);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v231, v27, v28);
    re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::copy(v231, a1 + 200);
    v29 = *&v231[28];
    if (*&v231[28])
    {
      v30 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      while (1)
      {
        if (!v237)
        {
          goto LABEL_92;
        }

        memset(v245, 0, 36);
        *(&v245[4] + 4) = 0x7FFFFFFF;
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v245, v7, v29);
        if (v237)
        {
          break;
        }

LABEL_61:
        if (HIDWORD(v245[3]))
        {
          v4 = *(a1 + 280);
          if (v4)
          {
            v5 = 0;
            v32 = (*(a1 + 264) + 8);
            while (1)
            {
              v33 = *v32;
              v32 += 6;
              if (v33 < 0)
              {
                break;
              }

              if (v4 == ++v5)
              {
                v5 = *(a1 + 280);
                break;
              }
            }
          }

          else
          {
            v5 = 0;
          }

LABEL_77:
          while (v5 != v4)
          {
            v260.i64[0] = *(*(a1 + 264) + 24 * v5 + 16);
            re::ecs2::UICodirectionalGroup::checkEntityAgainstSortGroups(v247, a1, v260.i64[0], v245, &v240, v7);
            if (*v247)
            {

              re::DynamicArray<re::TransitionCondition *>::add(v250, &v260);
              ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
            }

            LODWORD(v34) = *(a1 + 280);
            if (v34 <= v5 + 1)
            {
              v34 = (v5 + 1);
            }

            else
            {
              v34 = v34;
            }

            while (v34 - 1 != v5)
            {
              v5 = (v5 + 1);
              if ((*(*(a1 + 264) + 24 * v5 + 8) & 0x80000000) != 0)
              {
                goto LABEL_77;
              }
            }

            v5 = v34;
          }

          if (*&v250[16])
          {
            v35 = *&v252[2];
            v4 = 8 * *&v250[16];
            do
            {
              v36 = *v35++;
              v260.i64[0] = v36;
              re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 248, &v260);
              v4 -= 8;
            }

            while (v4);
          }

          *&v250[16] = 0;
          ++*&v250[24];
        }

        v37 = v245[0];
        if (*v231)
        {
          v38 = *v231 == v245[0];
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          v245[0] = *v231;
          v39 = *&v231[8];
          *v231 = v37;
          *&v231[8] = v245[1];
          *&v231[16] = v245[2];
          *&v245[1] = v39;
          v40 = *&v245[3];
          v245[3] = __PAIR64__(v29, *&v231[24]);
          v41 = *&v231[32];
          *&v231[24] = v40;
          v245[4] = v41;
        }

        else if (v245[0])
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::copy(v231, v245);
          ++*&v231[40];
        }

        else
        {
          re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v231);
        }

        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v245);
        v29 = *&v231[28];
        if (!*&v231[28])
        {
          goto LABEL_92;
        }
      }

      v4 = v237 - 1;
      while (1)
      {
        v31 = v237;
        if (v237 <= v4)
        {
          break;
        }

        re::ecs2::UICodirectionalGroup::checkEntityAgainstSortGroups(&v260, a1, *(v239 + 8 * v4), v231, &v240, v7);
        if (v260.i64[0])
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(v245, &v260);
          ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
          re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(v236, v4);
          if (v260.i64[0])
          {
          }
        }

        if (--v4 == -1)
        {
          goto LABEL_61;
        }
      }

      *v253 = 0;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      v182 = MEMORY[0x1E69E9C10];
      v183 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v247 = 136315906;
      *&v247[4] = "operator[]";
      *&v247[12] = 1024;
      if (v183)
      {
        v184 = 3;
      }

      else
      {
        v184 = 2;
      }

      *&v247[14] = 789;
      *&v247[18] = 2048;
      *&v247[20] = v4;
      v248 = 2048;
      *v249 = v31;
      _os_log_send_and_compose_impl(v184, v253, &v260, 80, &dword_1E1C61000, v182, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v247, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
LABEL_349:
      *v247 = 0;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      v185 = MEMORY[0x1E69E9C10];
      v186 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v250 = 136315906;
      *&v250[4] = "operator[]";
      *&v250[12] = 1024;
      if (v186)
      {
        v187 = 3;
      }

      else
      {
        v187 = 2;
      }

      *&v250[14] = 789;
      *&v250[18] = 2048;
      *&v250[20] = v29;
      v251 = 2048;
      *v252 = v30;
      _os_log_send_and_compose_impl(v187, v247, &v260, 80, &dword_1E1C61000, v185, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v250, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
LABEL_353:
      *v253 = 0;
      v263 = v110;
      v264 = v110;
      v261 = v110;
      v262 = v110;
      v260 = v110;
      v188 = MEMORY[0x1E69E9C10];
      v189 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v247 = 136315906;
      *&v247[4] = "operator[]";
      *&v247[12] = 1024;
      if (v189)
      {
        v190 = 3;
      }

      else
      {
        v190 = 2;
      }

      *&v247[14] = 789;
      *&v247[18] = 2048;
      *&v247[20] = v5;
      v248 = 2048;
      *v249 = v30;
      _os_log_send_and_compose_impl(v190, v253, &v260, 80, &dword_1E1C61000, v188, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v247, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
      goto LABEL_357;
    }
  }

LABEL_92:
  if (*v250 && *&v252[2])
  {
    (*(**v250 + 40))();
  }

  v42 = *(a1 + 276);
  if (v42 <= 8)
  {
    v43 = 8;
  }

  else
  {
    v43 = v42;
  }

  v262.i64[0] = 0;
  v261.i64[0] = 0;
  v261.i32[2] = 0;
  v260 = v7;
  re::DynamicArray<float *>::setCapacity(&v260, v43);
  ++v261.i32[2];
  v46 = v237;
  if (v237)
  {
    v47 = 0;
    v4 = 0x7FFFFFFFLL;
    do
    {
      v245[0] = *(v239 + 8 * v47++);
      v48 = v47;
      if (v47 < v46)
      {
        do
        {
          re::ecs2::UICodirectionalGroup::checkEntitiesForSorting(a1, v245[0], *(v239 + 8 * v48++), &v260, &v240, v7);
        }

        while (v48 < v237);
      }

      v49 = *(a1 + 280);
      if (v49)
      {
        v50 = 0;
        v51 = (*(a1 + 264) + 8);
        while (1)
        {
          v52 = *v51;
          v51 += 6;
          if (v52 < 0)
          {
            break;
          }

          if (v49 == ++v50)
          {
            LODWORD(v50) = *(a1 + 280);
            break;
          }
        }
      }

      else
      {
        LODWORD(v50) = 0;
      }

LABEL_114:
      while (v50 != v49)
      {
        re::ecs2::UICodirectionalGroup::checkEntitiesForSorting(a1, v245[0], *(*(a1 + 264) + 24 * v50 + 16), &v260, &v240, v7);
        v53 = *(a1 + 280);
        if (v53 <= v50 + 1)
        {
          v53 = v50 + 1;
        }

        while (v53 - 1 != v50)
        {
          LODWORD(v50) = v50 + 1;
          if ((*(*(a1 + 264) + 24 * v50 + 8) & 0x80000000) != 0)
          {
            goto LABEL_114;
          }
        }

        LODWORD(v50) = v53;
      }

      if (!*(a1 + 152) || (v54 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v245[0] ^ (v245[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v245[0] ^ (v245[0] >> 30))) >> 27)), v55 = *(*(a1 + 160) + 4 * ((v54 ^ (v54 >> 31)) % *(a1 + 176))), v55 == 0x7FFFFFFF))
      {
LABEL_120:
        re::DynamicArray<re::TransitionCondition *>::add(v232, v245);
      }

      else
      {
        v56 = *(a1 + 168);
        while (*(v56 + 32 * v55 + 8) != v245[0])
        {
          v55 = *(v56 + 32 * v55) & 0x7FFFFFFF;
          if (v55 == 0x7FFFFFFF)
          {
            goto LABEL_120;
          }
        }
      }

      v46 = v237;
    }

    while (v47 < v237);
  }

  if (v261.i64[0])
  {
    v57 = v262.i64[0];
    v58 = 8 * v261.i64[0];
    do
    {
      v59 = *v57++;
      v245[0] = v59;
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 248, v245);
      v58 -= 8;
    }

    while (v58);
  }

  if (v260.i64[0])
  {
    v44 = v262.i64[0];
    if (v262.i64[0])
    {
      (*(*v260.i64[0] + 40))(v260.i64[0]);
    }
  }

  v31 = *(a1 + 328);
  if (v31)
  {
    v5 = 0;
    v60 = (*(a1 + 312) + 8);
    while (1)
    {
      v61 = *v60;
      v60 += 6;
      if (v61 < 0)
      {
        break;
      }

      if (v31 == ++v5)
      {
        v5 = *(a1 + 328);
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v5 == v31)
  {
    goto LABEL_135;
  }

  v230 = v7;
  v217 = *(a1 + 328);
  do
  {
    v66 = *(a1 + 312) + 24 * v5;
    v69 = *(v66 + 16);
    v67 = (v66 + 16);
    v68 = v69;
    if (*(v69 + 300) <= 1u)
    {
      goto LABEL_273;
    }

    if (*(v68 + 208) == 1)
    {
      re::ecs2::UICoincidentalGroup::recomputeTransform(v68, v7);
    }

    re::ecs2::UICoincidentalGroup::updateGroupToken(v68, v44, v45);
    if (!*(v68 + 300))
    {
      *(v68 + 240) = 0;
      ++*(v68 + 248);
      ++re::ecs2::CARESortingDebugging::m_sortGroupsResorted;
      goto LABEL_273;
    }

    v223 = v67;
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::HashSetBase(v245, v68 + 272);
    v70 = *(v68 + 240);
    if (v70)
    {
      v29 = v70 - 1;
      v71 = 16 * v70 - 16;
      do
      {
        v30 = *(v68 + 240);
        if (v30 <= v29)
        {
          goto LABEL_349;
        }

        v72 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v68 + 272, (*(v68 + 256) + v71));
        v4 = *(v68 + 240);
        if (v72)
        {
          if (v4 <= v29)
          {
            goto LABEL_365;
          }

          re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v245, (*(v68 + 256) + v71));
        }

        else
        {
          if (v4 <= v29)
          {
            goto LABEL_361;
          }

          v73 = v4 - 1;
          if (v4 - 1 > v29)
          {
            *(*(v68 + 256) + v71) = *(*(v68 + 256) + 16 * v4 - 16);
            v73 = *(v68 + 240) - 1;
          }

          *(v68 + 240) = v73;
          ++*(v68 + 248);
        }

        --v29;
        v71 -= 16;
      }

      while (v29 != -1);
    }

    v74 = v245[4];
    if (LODWORD(v245[4]))
    {
      v75 = 0;
      v76 = (v245[2] + 8);
      while (1)
      {
        v77 = *v76;
        v76 += 6;
        if (v77 < 0)
        {
          break;
        }

        if (LODWORD(v245[4]) == ++v75)
        {
          LODWORD(v75) = v245[4];
          break;
        }
      }
    }

    else
    {
      LODWORD(v75) = 0;
    }

    v78 = *(v68 + 240);
    if (v75 != LODWORD(v245[4]))
    {
      v79 = v245[2];
      do
      {
        v80 = *(v79 + 3 * v75 + 2);
        if (v78 >= *(v68 + 232))
        {
          re::DynamicArray<re::RigNodeConstraint>::growCapacity((v68 + 224), v78 + 1);
          v78 = *(v68 + 240);
        }

        v81 = *(v68 + 256) + 16 * v78;
        *v81 = v80;
        *(v81 + 8) = 0;
        *(v68 + 240) = ++v78;
        ++*(v68 + 248);
        v79 = v245[2];
        if (LODWORD(v245[4]) <= (v75 + 1))
        {
          v82 = v75 + 1;
        }

        else
        {
          v82 = v245[4];
        }

        while (v82 - 1 != v75)
        {
          LODWORD(v75) = v75 + 1;
          if ((*(v245[2] + 6 * v75 + 2) & 0x80000000) != 0)
          {
            goto LABEL_174;
          }
        }

        LODWORD(v75) = v82;
LABEL_174:
        ;
      }

      while (v75 != v74);
    }

    if (!v78)
    {
      goto LABEL_377;
    }

    v222 = v5;
    re::ecs2::UISorterUtil::optionalSortingPlaneFrom(&v260, **(v68 + 256), *(*(v68 + 264) + 432));
    v244[0] = v261;
    v244[1] = v262;
    v83 = *(v68 + 256);
    v84 = *(v68 + 240);
    v260.i64[0] = v68;
    v260.i64[1] = v244;
    v85 = 126 - 2 * __clz(v84);
    if (v84)
    {
      v86 = v85;
    }

    else
    {
      v86 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,false>(v83, (v83 + 16 * v84), &v260, v86, 1);
    v87 = *(v68 + 240);
    memset(&v250[8], 0, 20);
    *&v252[2] = 0;
    *v250 = v7;
    appended = re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v250, v87);
    v101 = ++*&v250[24];
    v29 = *(v68 + 240);
    if (v29)
    {
      v4 = 0;
      v5 = 0;
      v228 = 0;
      do
      {
        if (v5)
        {
          v102 = *(v68 + 264);
          if ((*(*(v102 + 440) + 160) & 1) == 0)
          {
            v30 = v5 - 1;
            if (v29 <= v5 - 1)
            {
              goto LABEL_369;
            }

            re::ecs2::UISorterUtil::optionalSortingPlaneFrom(&v260, *(*(v68 + 256) + v4 - 16), *(v102 + 432));
            v30 = *(v68 + 240);
            if (v30 <= v5)
            {
              goto LABEL_373;
            }

            v224 = v262;
            v226 = v261;
            appended = re::ecs2::UISorterUtil::optionalSortingPlaneFrom(&v260, *(*(v68 + 256) + v4), *(*(v68 + 264) + 432));
            v103 = v262;
            if (re::CARESortingDefaults::displacementOrderingThreshold(void)::onceToken != -1)
            {
              v220 = v262;
              dispatch_once(&re::CARESortingDefaults::displacementOrderingThreshold(void)::onceToken, &__block_literal_global_8_0);
              v103 = v220;
            }

            v104 = vmulq_f32(v226, vsubq_f32(v103, v224));
            v105 = v228;
            if ((v104.f32[2] + vaddv_f32(*v104.f32)) > *&re::CARESortingDefaults::displacementOrderingThreshold(void)::sortingDisplacementOrderingThreshold)
            {
              v105 = v228 + 1;
            }

            v228 = v105;
          }
        }

        v106 = *&v250[16];
        if (*&v250[16] >= *&v250[8])
        {
          v29 = *&v250[16] + 1;
          if (*&v250[8] < (*&v250[16] + 1))
          {
            if (*v250)
            {
              v107 = 2 * *&v250[8];
              if (!*&v250[8])
              {
                v107 = 8;
              }

              if (v107 <= v29)
              {
                v108 = *&v250[16] + 1;
              }

              else
              {
                v108 = v107;
              }

              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v250, v108);
              v101 = *&v250[24];
            }

            else
            {
              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(v250, v29);
              v101 = *&v250[24] + 1;
            }
          }

          v106 = *&v250[16];
        }

        v31 = *&v252[2];
        v109 = *&v252[2] + (v106 << 6);
        v110 = 0uLL;
        *v109 = 0u;
        *(v109 + 16) = 0u;
        *(v109 + 32) = 0;
        v111 = v106 + 1;
        *&v250[16] = v106 + 1;
        *&v250[24] = ++v101;
        v30 = *(v68 + 240);
        if (v30 <= v5)
        {
          goto LABEL_353;
        }

        v112 = v31 + (v111 << 6);
        v113 = re::ecs2::EntityComponentCollection::get((*(*(v68 + 256) + v4) + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v260.i8[0] = 0;
        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(v112 - 64, v228, &v260);
        v114 = v113[20];
        if (v114 == 3)
        {
          v115 = 3;
        }

        else
        {
          v115 = (v114 + 3);
        }

        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(v112 - 64, v115, &v260);
        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt32(v112 - 64, v113[22], &v260);
        re::DrawCallSortKey<4ul,unsigned long long>::appendUInt8(v112 - 64, v113[20] != 3, &v260);
        appended = re::DrawCallSortKey<4ul,unsigned long long>::appendInt32(v112 - 64, v113[21], &v260);
        *(v112 - 32) = v5++;
        v29 = *(v68 + 240);
        v4 += 16;
      }

      while (v29 > v5);
      v29 = v31;
    }

    else
    {
      v29 = *&v252[2];
      v111 = *&v250[16];
    }

    v116 = 126 - 2 * __clz(v111);
    if (v111)
    {
      v117 = v116;
    }

    else
    {
      v117 = 0;
    }

    v118 = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,false>(v29, v29 + (v111 << 6), v117, 1uLL, v89, v90, v91, v92, v93, v94, v95, v96, v212, v213, v214, v215, v97, v98, v99, v100, v216, v217, v218, v219);
    v119 = (*(*v68 + 24))(v68, v118);
    v120 = *(v68 + 240);
    memset(&v247[8], 0, 20);
    *&v249[2] = 0;
    *v247 = v119;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(v247, v120);
    v122 = ++*&v247[24];
    if (v111)
    {
      v123 = (v29 + 32);
      while (1)
      {
        v124 = *v123;
        v123 += 16;
        v30 = v124;
        v31 = *(v68 + 240);
        if (v31 <= v124)
        {
          break;
        }

        v125 = *(v68 + 256);
        v126 = *&v247[16];
        if (*&v247[16] >= *&v247[8])
        {
          re::DynamicArray<re::RigNodeConstraint>::growCapacity(v247, *&v247[16] + 1);
          v126 = *&v247[16];
          v122 = *&v247[24];
        }

        *(*&v249[2] + 16 * v126) = *(v125 + 16 * v30);
        *&v247[16] = v126 + 1;
        *&v247[24] = ++v122;
        if (!--v111)
        {
          goto LABEL_217;
        }
      }

LABEL_357:
      v246 = 0;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      v191 = MEMORY[0x1E69E9C10];
      v192 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v253 = 136315906;
      *&v253[4] = "operator[]";
      v254 = 1024;
      if (v192)
      {
        v193 = 3;
      }

      else
      {
        v193 = 2;
      }

      v255 = 789;
      v256 = 2048;
      v257 = v30;
      v258 = 2048;
      v259 = v31;
      _os_log_send_and_compose_impl(v193, &v246, &v260, 80, &dword_1E1C61000, v191, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v253, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
LABEL_361:
      *v247 = 0;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      v194 = MEMORY[0x1E69E9C10];
      v195 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v250 = 136315906;
      *&v250[4] = "removeAt";
      *&v250[12] = 1024;
      if (v195)
      {
        v196 = 3;
      }

      else
      {
        v196 = 2;
      }

      *&v250[14] = 931;
      *&v250[18] = 2048;
      *&v250[20] = v29;
      v251 = 2048;
      *v252 = v4;
      _os_log_send_and_compose_impl(v196, v247, &v260, 80, &dword_1E1C61000, v194, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v250, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
LABEL_365:
      *v247 = 0;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      v197 = MEMORY[0x1E69E9C10];
      v198 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v250 = 136315906;
      *&v250[4] = "operator[]";
      *&v250[12] = 1024;
      if (v198)
      {
        v199 = 3;
      }

      else
      {
        v199 = 2;
      }

      *&v250[14] = 789;
      *&v250[18] = 2048;
      *&v250[20] = v29;
      v251 = 2048;
      *v252 = v4;
      _os_log_send_and_compose_impl(v199, v247, &v260, 80, &dword_1E1C61000, v197, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v250, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
LABEL_369:
      *v253 = 0;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      v200 = MEMORY[0x1E69E9C10];
      v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v247 = 136315906;
      *&v247[4] = "operator[]";
      *&v247[12] = 1024;
      if (v201)
      {
        v202 = 3;
      }

      else
      {
        v202 = 2;
      }

      *&v247[14] = 789;
      *&v247[18] = 2048;
      *&v247[20] = v30;
      v248 = 2048;
      *v249 = v29;
      _os_log_send_and_compose_impl(v202, v253, &v260, 80, &dword_1E1C61000, v200, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v247, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
LABEL_373:
      *v253 = 0;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      v203 = MEMORY[0x1E69E9C10];
      v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v247 = 136315906;
      *&v247[4] = "operator[]";
      *&v247[12] = 1024;
      if (v204)
      {
        v205 = 3;
      }

      else
      {
        v205 = 2;
      }

      *&v247[14] = 789;
      *&v247[18] = 2048;
      *&v247[20] = v5;
      v248 = 2048;
      *v249 = v30;
      _os_log_send_and_compose_impl(v205, v253, &v260, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v247, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
LABEL_377:
      *v247 = 0;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      v206 = MEMORY[0x1E69E9C10];
      v207 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v250 = 136315906;
      *&v250[4] = "operator[]";
      *&v250[12] = 1024;
      if (v207)
      {
        v208 = 3;
      }

      else
      {
        v208 = 2;
      }

      *&v250[14] = 789;
      *&v250[18] = 2048;
      *&v250[20] = 0;
      v251 = 2048;
      *v252 = 0;
      _os_log_send_and_compose_impl(v208, v247, &v260, 80, &dword_1E1C61000, v206, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v250, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
LABEL_381:
      v246 = 0;
      v263 = 0u;
      v264 = 0u;
      v261 = 0u;
      v262 = 0u;
      v260 = 0u;
      v209 = MEMORY[0x1E69E9C10];
      v210 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v253 = 136315906;
      *&v253[4] = "operator[]";
      v254 = 1024;
      if (v210)
      {
        v211 = 3;
      }

      else
      {
        v211 = 2;
      }

      v255 = 789;
      v256 = 2048;
      v257 = 0;
      v258 = 2048;
      v259 = 0;
      _os_log_send_and_compose_impl(v211, &v246, &v260, 80, &dword_1E1C61000, v209, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v253, 38, v214, v215);
      _os_crash_msg();
      __break(1u);
LABEL_385:
      re::internal::assertLog(4, v121, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }

LABEL_217:
    v127 = *(v68 + 224);
    if (v127 && *v247 && v127 != *v247)
    {
      goto LABEL_385;
    }

    v129 = *&v247[8];
    v128 = *&v247[16];
    v130 = *(v68 + 232);
    *(v68 + 224) = *v247;
    *(v68 + 232) = v129;
    v132 = *(v68 + 256);
    v131 = *(v68 + 264);
    *(v68 + 256) = *&v249[2];
    ++*(v68 + 248);
    *v247 = v127;
    *(v68 + 240) = v128;
    *&v247[8] = v130;
    if (*(*(v131 + 440) + 160))
    {
      v133 = 1.0;
    }

    else
    {
      if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
      {
        dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
      }

      v133 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
      v128 = *(v68 + 240);
    }

    if (!v128)
    {
      goto LABEL_381;
    }

    v219 = v132;
    v221 = v127;
    v225 = v29;
    v229 = 0;
    *(*(v68 + 256) + 8) = 0;
    if (v128 == 1)
    {
      goto LABEL_239;
    }

    v229 = 0;
    v134 = 0x100000000;
    v135 = 2;
    v4 = 1;
    do
    {
      v136 = *(v68 + 256) + 16 * v4;
      v137 = *v136;
      *(v136 + 8) = 0;
      v227 = v134;
      v138 = v135;
      do
      {
        v139 = v134;
        v140 = *(v68 + 240);
        if (v140 <= v134)
        {
          v246 = 0;
          v263 = 0u;
          v264 = 0u;
          v261 = 0u;
          v262 = 0u;
          v260 = 0u;
          v62 = MEMORY[0x1E69E9C10];
          v162 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v253 = 136315906;
          *&v253[4] = "operator[]";
          v254 = 1024;
          if (v162)
          {
            v163 = 3;
          }

          else
          {
            v163 = 2;
          }

          v255 = 789;
          v256 = 2048;
          v257 = v139;
          v258 = 2048;
          v259 = v140;
          _os_log_send_and_compose_impl(v163, &v246, &v260, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v253, 38, v214, v215);
          _os_crash_msg();
          __break(1u);
          goto LABEL_292;
        }

        v141 = *(v68 + 256) + 16 * v134;
        if (re::ecs2::UISorterUtil::doEntitiesOverlap(v137, *v141, *(*(v68 + 264) + 432), v230, 1, v133))
        {
          v142 = *(v141 + 8);
          if (*(v136 + 8) <= (v142 + 1))
          {
            v143 = v142 + 1;
          }

          else
          {
            v143 = *(v136 + 8);
          }

          *(v136 + 8) = v143;
          if (re::ecs2::CARESortingDebugging::m_highestPriorityInGroup < v143)
          {
            re::ecs2::CARESortingDebugging::m_highestPriorityInGroup = v143;
            re::ecs2::CARESortingDebugging::m_highestPriorityGroupId = *(v68 + 80);
          }

          v229 = 1;
        }

        --v138;
        LODWORD(v134) = v134 - 1;
      }

      while (v138 > 1);
      ++v4;
      ++v135;
      v134 = v227 + 1;
    }

    while (*(v68 + 240) > v4);
LABEL_239:
    if (re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken != -1)
    {
      dispatch_once(&re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken, &__block_literal_global_5_0);
    }

    v7 = v230;
    v31 = v217;
    LODWORD(v5) = v222;
    if ((re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup & 1) != 0 && re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup == 1)
    {
      if (*(v68 + 388))
      {
        v144 = *(v68 + 384);
        if (v144)
        {
          memset_pattern16(*(v68 + 368), &unk_1E304C660, 4 * v144);
        }

        v145 = *(v68 + 392);
        if (v145)
        {
          v146 = *(v68 + 376);
          do
          {
            if ((*v146 & 0x80000000) != 0)
            {
              *v146 &= ~0x80000000;
            }

            v146 += 10;
            --v145;
          }

          while (v145);
        }

        *(v68 + 396) = 0x7FFFFFFF;
        *(v68 + 388) = 0;
        ++*(v68 + 400);
      }

      v147 = *(v68 + 240);
      if (v147)
      {
        v148 = *(v68 + 256);
        v149 = 16 * v147;
        do
        {
          v260 = 0uLL;
          v261.i64[0] = 0;
          v150 = 0xBF58476D1CE4E5B9 * (*v148 ^ (*v148 >> 30));
          re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(&v260, v68 + 360, *v148, (0x94D049BB133111EBLL * (v150 ^ (v150 >> 27))) ^ ((0x94D049BB133111EBLL * (v150 ^ (v150 >> 27))) >> 31));
          if (v260.i32[3] == 0x7FFFFFFF)
          {
            v151 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v68 + 360, v260.u32[2], v260.u64[0]);
            *(v151 + 8) = *v148;
            *(v151 + 16) = *v148;
            ++*(v68 + 400);
          }

          v148 += 2;
          v149 -= 16;
        }

        while (v149);
      }
    }

    if (v221 && v219)
    {
      (*(*v221 + 40))();
    }

    v67 = v223;
    if (v225 && *v250)
    {
      (*(**v250 + 40))(*v250);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v245);
    ++re::ecs2::CARESortingDebugging::m_sortGroupsResorted;
    if (v229)
    {
      v152 = v218;
      v154 = *(v218 + 1);
      v153 = *(v218 + 2);
      if (v153 >= v154)
      {
        v155 = v153 + 1;
        if (v154 < v153 + 1)
        {
          if (*v218)
          {
            v156 = 2 * v154;
            if (!v154)
            {
              v156 = 8;
            }

            if (v156 <= v155)
            {
              v157 = v155;
            }

            else
            {
              v157 = v156;
            }

            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v218, v157);
            v152 = v218;
          }

          else
          {
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v218, v155);
            v152 = v218;
            ++*(v218 + 6);
          }
        }

        v153 = *(v152 + 2);
        v67 = v223;
      }

      v159 = v152;
      v160 = *v67;
      *(*(v152 + 4) + 8 * v153) = *v67;
      if (v160)
      {
        v161 = (v160 + 8);
        v153 = *(v159 + 2);
      }

      *(v159 + 2) = v153 + 1;
      ++*(v159 + 6);
      goto LABEL_274;
    }

LABEL_273:
    re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(&v240, v67);
LABEL_274:
    LODWORD(v158) = *(a1 + 328);
    if (v158 <= v5 + 1)
    {
      v158 = (v5 + 1);
    }

    else
    {
      v158 = v158;
    }

    while (v158 - 1 != v5)
    {
      v5 = (v5 + 1);
      if ((*(*(a1 + 312) + 24 * v5 + 8) & 0x80000000) != 0)
      {
        goto LABEL_281;
      }
    }

    v5 = v158;
LABEL_281:
    ;
  }

  while (v5 != v31);
LABEL_135:
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(a1 + 296);
  LODWORD(v62) = v242;
  if (!v242)
  {
LABEL_292:
    LODWORD(v63) = 0;
    goto LABEL_293;
  }

  v63 = 0;
  v64 = (v241 + 8);
  while (1)
  {
    v65 = *v64;
    v64 += 6;
    if (v65 < 0)
    {
      break;
    }

    if (v242 == ++v63)
    {
      LODWORD(v63) = v242;
      break;
    }
  }

LABEL_293:
  if (v63 != v62)
  {
    v168 = v241;
    do
    {
      v169 = *(v168 + 24 * v63 + 16);
      v170 = (v169 + 8);
      v171 = *(v169 + 304);
      if (*(v169 + 300))
      {
        if (v171)
        {
          v172 = 0;
          v173 = (*(v169 + 288) + 8);
          while (1)
          {
            v174 = *v173;
            v173 += 6;
            if (v174 < 0)
            {
              break;
            }

            if (v171 == ++v172)
            {
              LODWORD(v172) = *(v169 + 304);
              break;
            }
          }
        }

        else
        {
          LODWORD(v172) = 0;
        }

        v175 = *(v169 + 304);
LABEL_337:
        while (v172 != v171)
        {
          v260.i64[0] = *(*(v169 + 288) + 24 * v172 + 16);
          re::DynamicArray<re::TransitionCondition *>::add(v232, &v260);
          v175 = *(v169 + 304);
          if (v175 <= v172 + 1)
          {
            v181 = v172 + 1;
          }

          else
          {
            v181 = *(v169 + 304);
          }

          while (v181 - 1 != v172)
          {
            LODWORD(v172) = v172 + 1;
            if ((*(*(v169 + 288) + 24 * v172 + 8) & 0x80000000) != 0)
            {
              goto LABEL_337;
            }
          }

          LODWORD(v172) = v181;
        }
      }

      else
      {
        v175 = *(v169 + 304);
      }

      if (v175)
      {
        v176 = 0;
        v177 = (*(v169 + 288) + 8);
        while (1)
        {
          v178 = *v177;
          v177 += 6;
          if (v178 < 0)
          {
            break;
          }

          if (v175 == ++v176)
          {
            LODWORD(v176) = v175;
            break;
          }
        }
      }

      else
      {
        LODWORD(v176) = 0;
      }

LABEL_325:
      while (v176 != v175)
      {
        v260.i64[0] = *(*(v169 + 288) + 24 * v176 + 16);
        re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(a1 + 152, &v260);
        re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v260);
        ++re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups;
        v179 = *(v169 + 304);
        if (v179 <= v176 + 1)
        {
          v179 = v176 + 1;
        }

        while (v179 - 1 != v176)
        {
          LODWORD(v176) = v176 + 1;
          if ((*(*(v169 + 288) + 24 * v176 + 8) & 0x80000000) != 0)
          {
            goto LABEL_325;
          }
        }

        LODWORD(v176) = v179;
      }

      *(v169 + 208) = *(v169 + 300) != 0;
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v169 + 272);
      *(v169 + 336) = 0;
      ++*(v169 + 344);
      *(v169 + 209) = 1;
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 200, v169);

      v168 = v241;
      if (v242 <= v63 + 1)
      {
        v180 = v63 + 1;
      }

      else
      {
        v180 = v242;
      }

      while (v180 - 1 != v63)
      {
        LODWORD(v63) = v63 + 1;
        if ((*(v241 + 24 * v63 + 8) & 0x80000000) != 0)
        {
          goto LABEL_333;
        }
      }

      LODWORD(v63) = v180;
LABEL_333:
      ;
    }

    while (v63 != v62);
  }

  if (v233)
  {
    v164 = v235;
    v165 = 8 * v233;
    do
    {
      v166 = *v164++;
      v260.i64[0] = v166;
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 248, &v260);
      re::DynamicArray<re::TransitionCondition *>::add(v216, &v260);
      v165 -= 8;
    }

    while (v165);
  }

  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(a1 + 344);
  v167.n128_f64[0] = re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v231);
  if (v232[0] && v235)
  {
    (*(*v232[0] + 40))(v167.n128_f64[0]);
  }

  if (v236[0])
  {
    if (v239)
    {
      (*(*v236[0] + 40))(v167);
    }
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v240);
}

void re::ecs2::UISorter::removeEntityFromTracking(re::ecs2::UISorter *this, re::ecs2::Entity *a2)
{
  v7 = a2;
  v3 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 96, &v7);
  if (v3)
  {
    v4 = *v3;
    v6 = v4;
    if (v4)
    {
      v5 = (v4 + 8);
    }

    re::ecs2::UICodirectionalGroup::remove(v4, v7);
    re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(this + 96, &v7);
    re::HashSetBase<re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICodirectionalGroup>>,true,false>::add(this + 48, &v6);
    if (v6)
    {
    }
  }
}

void re::ecs2::UICoincidentalGroup::recomputeTransform(re::ecs2::UICoincidentalGroup *this, re::Allocator *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v4 = re::FixedArray<CoreIKTransform>::deinit(this + 6);
  v5 = (4 * *(this + 75));
  v6 = *(this + 75);
  v68 = 0;
  v69 = 0;
  v67 = 0;
  re::FixedArray<re::SortingPlane>::init<>(&v67, a2, v6);
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
      re::ecs2::UISorterUtil::optionalSortingPlaneFrom(&v79, v14, *(*(this + 33) + 432));
      v65 = v81;
      v15 = v13;
      v16 = v68;
      if (v68 <= v13)
      {
        break;
      }

      v17 = &v69[2 * v13];
      *v17 = v80;
      v17[1] = v65;
      v18 = *(this + 2);
      *(this + 1) = vaddq_f32(*(this + 1), *v17);
      *(this + 2) = vaddq_f32(v18, v17[1]);
      v19 = re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(*(*(this + 33) + 432), v14);
      v60 = *v19;
      v61 = v19[1];
      v62 = v19[3];
      v63 = v19[2];
      v20 = re::ecs2::EntityComponentCollection::get((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v20)
      {
        v21 = vcgtq_f32(*(v20 + 48), *(v20 + 64));
        v21.i32[3] = v21.i32[2];
        if ((vmaxvq_u32(v21) & 0x80000000) != 0)
        {
          v22 = *(v20 + 32);
          v23.i64[0] = 0xBF000000BF000000;
          v23.i64[1] = 0xBF000000BF000000;
          v24.i64[0] = 0x3F0000003F000000;
          v24.i64[1] = 0x3F0000003F000000;
          v64 = vmulq_f32(v22, v23);
          v66 = vmulq_f32(v22, v24);
        }

        else
        {
          v64 = *(v20 + 48);
          v66 = *(v20 + 64);
        }

        v14 = *(this + 7);
        if (v14 <= v12)
        {
          goto LABEL_45;
        }

        v14 = v12 + 1;
        v25 = vmulq_n_f32(v60, v64.f32[0]);
        v26 = vaddq_f32(v62, vmlaq_f32(vmlaq_n_f32(v25, v61, v64.f32[1]), 0, v63));
        *(*(this + 8) + 16 * v12) = vdivq_f32(v26, vdupq_laneq_s32(v26, 3));
        v16 = *(this + 7);
        if (v16 <= v12 + 1)
        {
          goto LABEL_49;
        }

        v13 = v12 + 2;
        v27 = vaddq_f32(v62, vmlaq_f32(vmlaq_n_f32(v25, v61, v66.f32[1]), 0, v63));
        *(*(this + 8) + 16 * v14) = vdivq_f32(v27, vdupq_laneq_s32(v27, 3));
        v14 = *(this + 7);
        if (v14 <= v12 + 2)
        {
          goto LABEL_53;
        }

        v14 = v12 + 3;
        v28 = vmulq_n_f32(v60, v66.f32[0]);
        v29 = vaddq_f32(v62, vmlaq_f32(vmlaq_f32(v28, vdupq_lane_s32(*&v64.i32[1], 0), v61), 0, v63));
        *(*(this + 8) + 16 * v13) = vdivq_f32(v29, vdupq_laneq_s32(v29, 3));
        v16 = *(this + 7);
        if (v16 <= v12 + 3)
        {
          goto LABEL_57;
        }

        v12 += 4;
        v30 = vaddq_f32(v62, vmlaq_f32(vmlaq_f32(v28, vdupq_lane_s32(*&v66.i32[1], 0), v61), 0, v63));
        v7 = vdivq_f32(v30, vdupq_laneq_s32(v30, 3));
        *(*(this + 8) + 16 * v14) = v7;
      }

      v13 = (v15 + 1);
      v31 = *(this + 76);
      if (v31 <= v9 + 1)
      {
        v31 = v9 + 1;
      }

      while (v31 - 1 != v9)
      {
        LODWORD(v9) = v9 + 1;
        if ((*(*(this + 36) + 24 * v9 + 8) & 0x80000000) != 0)
        {
          goto LABEL_25;
        }
      }

      LODWORD(v9) = v31;
LABEL_25:
      if (v9 == v8)
      {
        goto LABEL_26;
      }
    }

    v70 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v45 = MEMORY[0x1E69E9C10];
    v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v71 = 136315906;
    v72 = "operator[]";
    v73 = 1024;
    if (v46)
    {
      v47 = 3;
    }

    else
    {
      v47 = 2;
    }

    v74 = 468;
    v75 = 2048;
    v76 = v13;
    v77 = 2048;
    v78 = v16;
    _os_log_send_and_compose_impl(v47, &v70, &v79, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v60.u64[0], v60.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_45:
    v70 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v48 = MEMORY[0x1E69E9C10];
    v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v71 = 136315906;
    v72 = "operator[]";
    v73 = 1024;
    if (v49)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    v74 = 468;
    v75 = 2048;
    v76 = v12;
    v77 = 2048;
    v78 = v14;
    _os_log_send_and_compose_impl(v50, &v70, &v79, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v60.u64[0], v60.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_49:
    v70 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v51 = MEMORY[0x1E69E9C10];
    v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v71 = 136315906;
    v72 = "operator[]";
    v73 = 1024;
    if (v52)
    {
      v53 = 3;
    }

    else
    {
      v53 = 2;
    }

    v74 = 468;
    v75 = 2048;
    v76 = v14;
    v77 = 2048;
    v78 = v16;
    _os_log_send_and_compose_impl(v53, &v70, &v79, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v60.u64[0], v60.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_53:
    v70 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v54 = MEMORY[0x1E69E9C10];
    v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v71 = 136315906;
    v72 = "operator[]";
    v73 = 1024;
    if (v55)
    {
      v56 = 3;
    }

    else
    {
      v56 = 2;
    }

    v74 = 468;
    v75 = 2048;
    v76 = v13;
    v77 = 2048;
    v78 = v14;
    _os_log_send_and_compose_impl(v56, &v70, &v79, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v60.u64[0], v60.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_57:
    v70 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v57 = MEMORY[0x1E69E9C10];
    v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v71 = 136315906;
    v72 = "operator[]";
    v73 = 1024;
    if (v58)
    {
      v59 = 3;
    }

    else
    {
      v59 = 2;
    }

    v74 = 468;
    v75 = 2048;
    v76 = v14;
    v77 = 2048;
    v78 = v16;
    _os_log_send_and_compose_impl(v59, &v70, &v79, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v71, 38, v60.u64[0], v60.u64[1]);
    _os_crash_msg();
    __break(1u);
  }

LABEL_26:
  v7.f32[0] = *(this + 75);
  v32 = *(this + 1);
  v33 = vdivq_f32(*(this + 2), vdupq_lane_s32(*v7.f32, 0));
  v34 = vmulq_f32(v32, v32);
  *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
  *v34.f32 = vrsqrte_f32(v35);
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
  v36 = vmulq_n_f32(v32, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  *(this + 1) = v36;
  *(this + 2) = v33;
  *(this + 53) = 0;
  *(this + 54) = 0;
  if (v68)
  {
    v37 = 32 * v68;
    v38 = v69 + 1;
    v39 = 0.0;
    v40 = 0.0;
    do
    {
      v41 = vmulq_f32(v36, vsubq_f32(*v38, v33));
      v42 = vaddv_f32(*v41.f32);
      v44 = vmulq_f32(v38[-1], vsubq_f32(v33, *v38));
      v43 = vaddv_f32(*v44.f32);
      v44.f32[0] = -(v44.f32[2] + v43);
      if (v40 < (v41.f32[2] + v42))
      {
        v40 = v41.f32[2] + v42;
      }

      if (v40 < v44.f32[0])
      {
        v40 = -(v44.f32[2] + v43);
      }

      if ((v41.f32[2] + v42) < v39)
      {
        v39 = v41.f32[2] + v42;
      }

      if (v39 > v44.f32[0])
      {
        v39 = -(v44.f32[2] + v43);
      }

      *(this + 53) = v39;
      *(this + 54) = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    *(this + 53) = fabsf(v39);
    *(this + 208) = 0;
    if (v67)
    {
      (*(*v67 + 40))(v67);
    }
  }

  else
  {
    *(this + 208) = 0;
  }
}

float32x4_t *re::ecs2::UICoincidentalGroup::updateGroupToken(float32x4_t *this, uint64_t a2, re::ecs2::UISorterTransformCache *a3)
{
  v3 = this;
  v27 = *MEMORY[0x1E69E9840];
  v4 = this[16].i64[1];
  v5 = *(v4 + 112);
  v6 = *(v4 + 128);
  v7 = vmulq_f32(v5, vsubq_f32(this[2], v6));
  v8 = vmulq_n_f32(v5, v7.f32[2] + vaddv_f32(*v7.f32));
  if (this[21].i64[0])
  {
    v14 = v8;
    v15 = *(v4 + 128);
    this = re::ecs2::UISorterUtil::optionalInsideOutsidePartitionPlaneFrom(v24, *this[22].i64[0], *(v4 + 432));
    v9 = v24[0].u8[0];
    if (v24[0].u8[0] == 1)
    {
      v25 = v24[1];
      v26 = v24[2];
    }

    else
    {
      v9 = 0;
    }

    v8 = v14;
    v6 = v15;
  }

  else
  {
    v9 = 0;
  }

  v10 = vaddq_f32(v6, v8);
  if (v3[5].i64[0])
  {
    if ((v3[6].i8[0] & 1) == 0)
    {
      v3[6].i8[0] = 1;
    }

    v3[7] = v10;
    v12 = v3[1].i64[0];
    v11 = v3[1].i64[1];
    if ((v3[8].i8[0] & 1) == 0)
    {
      v3[8].i8[0] = 1;
    }

    v3[9].i64[0] = v12;
    v3[9].i64[1] = v11;
    if (v9)
    {
      if ((v3[10].i8[0] & 1) == 0)
      {
        v3[10].i8[0] = 1;
      }

      v13 = v26;
      v3[11] = v25;
      v3[12] = v13;
    }

    else if (v3[10].i8[0] == 1)
    {
      v3[10].i8[0] = 0;
    }
  }

  else
  {
    v16[0] = 261;
    v17 = 1;
    v18 = v10;
    v19 = 1;
    v20 = v3[1];
    v21 = v9;
    if (v9)
    {
      v22 = v25;
      v23 = v26;
    }

    re::ecs2::MeshSortGroupToken::createNewToken(v16, v24);
    return re::ecs2::MeshSortGroupToken::operator=(&v3[5], v24);
  }

  return this;
}

uint64_t re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(uint64_t a1, re::ecs2::UISorterUtil *a2, re::ecs2::UISorterTransformCache *a3, float32x4_t *a4)
{
  re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v12, a2, *(*(a1 + 264) + 432));
  v11 = v13;
  re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v12, a3, *(*(a1 + 264) + 432));
  v7 = a4[1];
  v8 = vmulq_f32(vsubq_f32(v11, v7), *a4);
  v9 = vmulq_f32(vsubq_f32(v13, v7), *a4);
  *v9.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v9, v9, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v9.i8), vzip2_s32(*v8.i8, *v9.i8)));
  return *&vcgt_f32(vdup_lane_s32(*v9.i8, 1), *v9.i8) & 1;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (!v7)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v6 % v7;
  v9 = *(*(a1 + 8) + 4 * (v6 % v7));
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    v12 = re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::addAsCopy(a1, v8, v6, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 24 * v12;
    return v11 + 16;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 24 * v9 + 16) != v4)
  {
    LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 24 * v9;
  return v11 + 16;
}

void re::ecs2::UICodirectionalGroup::checkEntityAgainstSortGroups(re::ecs2::CAMeshSortGroup **a1, uint64_t a2, re::ecs2::Entity *a3, uint64_t a4, uint64_t a5, re::Allocator *a6)
{
  v32 = a3;
  *a1 = 0;
  v7 = *(a4 + 32);
  if (v7)
  {
    v8 = 0;
    v9 = (*(a4 + 16) + 8);
    while (1)
    {
      v10 = *v9;
      v9 += 6;
      if (v10 < 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        LODWORD(v8) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  if (v8 != v7)
  {
    v11 = *(a4 + 16);
    do
    {
      v12 = v11 + 24 * v8;
      v15 = *(v12 + 16);
      v13 = (v12 + 16);
      v14 = v15;
      if ((v15[13].i8[1] & 1) == 0)
      {
        v16 = v32;
        if (v14[13].i8[0] == 1)
        {
          re::ecs2::UICoincidentalGroup::recomputeTransform(v14, a6);
        }

        v17 = 1.0;
        if ((*(*(v14[16].i64[1] + 440) + 160) & 1) == 0)
        {
          if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
          {
            dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
          }

          v17 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
        }

        v19 = v14[13].f32[1];
        v18 = v14[13].f32[2];
        v20 = v14[19].u32[0];
        if (v20)
        {
          v21 = 0;
          v22 = (v14[18].i64[0] + 8);
          do
          {
            v23 = *v22;
            v22 += 6;
            if (v23 < 0)
            {
              goto LABEL_22;
            }

            ++v21;
          }

          while (v20 != v21);
          LODWORD(v21) = v14[19].i32[0];
        }

        else
        {
          LODWORD(v21) = 0;
        }

        while (1)
        {
LABEL_22:
          if (v21 == v20)
          {
            v26 = 0;
            goto LABEL_32;
          }

          v24 = re::ecs2::EntityComponentCollection::get((*(v14[18].i64[0] + 24 * v21 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v24)
          {
            if (*(v24 + 94))
            {
              break;
            }
          }

          v25 = v14[19].u32[0];
          if (v25 <= v21 + 1)
          {
            v25 = v21 + 1;
          }

          while (v25 - 1 != v21)
          {
            LODWORD(v21) = v21 + 1;
            if ((*(v14[18].i64[0] + 24 * v21 + 8) & 0x80000000) != 0)
            {
              goto LABEL_22;
            }
          }

          LODWORD(v21) = v25;
        }

        v26 = 1;
LABEL_32:
        if (re::ecs2::UISorterUtil::doesEntityOverlapBox(v14 + 1, &v14[3], v26, v16, *(v14[16].i64[1] + 432), 0, v18, v19, v17))
        {
          if (*a1)
          {
            re::ecs2::UICodirectionalGroup::mergeSortGroups(a2, a1, v13, a5);
          }

          else
          {
            re::ecs2::CAMeshSortGroup::add(*v13, v32);
            re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a2 + 152, &v32, v13);
            re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(a2 + 296, v13);
            re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a1, *v13);
          }
        }
      }

      v27 = *(a4 + 32);
      v11 = *(a4 + 16);
      if (v27 <= v8 + 1)
      {
        v27 = v8 + 1;
      }

      while (v27 - 1 != v8)
      {
        LODWORD(v8) = v8 + 1;
        if ((*(v11 + 24 * v8 + 8) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v8) = v27;
LABEL_43:
      ;
    }

    while (v8 != v7);
  }
}

void re::ecs2::UICodirectionalGroup::checkEntitiesForSorting(uint64_t a1, re::ecs2::Entity *a2, re::ecs2::Entity *a3, _anonymous_namespace_ *a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v25 = a2;
  v10 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 152, &v25);
  v11 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 152, &v24);
  v12 = v11;
  if (v10 && v11)
  {
    v13 = *v10;
    if (*v10 == *v11)
    {
      return;
    }

LABEL_7:
    v23 = v13;
    if (v13)
    {
      v14 = v13 + 8;
    }

    if (v12)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  if (v10)
  {
    v13 = *v10;
    goto LABEL_7;
  }

  v23 = 0;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = *v12;
  v22 = v12;
  if (v12)
  {
    v15 = (v12 + 8);
  }

LABEL_14:
  v16 = 1.0;
  if ((*(*(a1 + 440) + 160) & 1) == 0)
  {
    if (re::CARESortingDefaults::normalThreshold(void)::onceToken != -1)
    {
      dispatch_once(&re::CARESortingDefaults::normalThreshold(void)::onceToken, &__block_literal_global_24);
    }

    v16 = *&re::CARESortingDefaults::normalThreshold(void)::sortingNormalThreshold;
  }

  if (re::ecs2::UISorterUtil::doEntitiesOverlap(v25, v24, *(a1 + 432), a6, 0, v16))
  {
    if (!v23)
    {
      if (!v12)
      {
        v18 = re::globalAllocators(0);
        v19 = (*(*v18[2] + 32))(v18[2], 416, 16);
        ArcSharedObject::ArcSharedObject(v19, 0);
        *v20 = &unk_1F5CEF7A8;
        *(v20 + 212) = 0;
        *(v20 + 216) = 0;
        *(v20 + 16) = 0u;
        *(v20 + 32) = 0u;
        *(v20 + 48) = 0u;
        *(v20 + 64) = 0;
        *(v20 + 80) = 0u;
        *(v20 + 96) = 0u;
        *(v20 + 112) = 0u;
        *(v20 + 128) = 0u;
        *(v20 + 144) = 0u;
        *(v20 + 160) = 0u;
        *(v20 + 176) = 0u;
        *(v20 + 192) = 0u;
        *(v20 + 208) = 0;
        *(v19 + 256) = 0;
        *(v19 + 232) = 0;
        *(v19 + 240) = 0;
        *(v19 + 248) = 0;
        re::DynamicArray<re::RigNodeConstraint>::setCapacity((v19 + 224), 0x10uLL);
        ++*(v19 + 248);
        *(v19 + 264) = a1;
        *(v19 + 272) = 0u;
        *(v19 + 288) = 0u;
        *(v19 + 304) = 0;
        *(v19 + 308) = 0x7FFFFFFFLL;
        *(v19 + 328) = 0;
        *(v19 + 336) = 0;
        *(v19 + 320) = 0;
        *(v19 + 344) = 0;
        *(v19 + 352) = 0u;
        *(v19 + 368) = 0u;
        *(v19 + 380) = 0u;
        *(v19 + 396) = 0x7FFFFFFFLL;
        v21 = v19;
        re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(a1 + 200, &v21);
        re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(a1 + 296, &v21);
        re::ecs2::CAMeshSortGroup::add(v21, v25);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v25, &v21);
        re::DynamicArray<re::TransitionCondition *>::add(a4, &v25);
        re::ecs2::CAMeshSortGroup::add(v21, v24);
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v24, &v21);
        re::DynamicArray<re::TransitionCondition *>::add(a4, &v24);
        re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups += 2;
        if (!v21)
        {
          goto LABEL_28;
        }

        v17 = v21 + 8;
LABEL_27:

        goto LABEL_28;
      }

      re::ecs2::CAMeshSortGroup::add(v12, v25);
      re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v25, &v22);
      re::DynamicArray<re::TransitionCondition *>::add(a4, &v25);
      ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
LABEL_26:
      v17 = (v12 + 8);
      goto LABEL_27;
    }

    if (!v12)
    {
      re::ecs2::CAMeshSortGroup::add(v23, v24);
      re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 152, &v24, &v23);
      re::DynamicArray<re::TransitionCondition *>::add(a4, &v24);
      ++re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups;
      goto LABEL_28;
    }

    re::ecs2::UICodirectionalGroup::mergeSortGroups(a1, v10, &v22, a5);
    v12 = v22;
  }

  if (v12)
  {
    goto LABEL_26;
  }

LABEL_28:
  if (v23)
  {
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(uint64_t a1, void *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addInternal<re::ecs2::Entity const* const&,re::SharedPtr<re::ecs2::UICoincidentalGroup> const&>(a1, v8, v9, a2, a3);
  }

  return result;
}

void re::ecs2::UICodirectionalGroup::mergeSortGroups(uint64_t a1, re::ecs2::CAMeshSortGroup **a2, unint64_t *a3, uint64_t a4)
{
  v4 = a4;
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
      v17 = *(*(v8 + 288) + 24 * v10 + 16);
      re::ecs2::CAMeshSortGroup::add(*a2, v17);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 152, &v17, v13 ^ (v13 >> 31), &v18);
      v14 = HIDWORD(v19);
      if (HIDWORD(v19) == 0x7FFFFFFF)
      {
        re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addInternal<re::ecs2::Entity const* const&,re::SharedPtr<re::ecs2::UICoincidentalGroup> const&>(a1 + 152, v18, v19, &v17, a2);
      }

      else
      {
        ++*(a1 + 192);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((*(a1 + 168) + 32 * v14 + 16), *a2);
      }

      v15 = *(v8 + 304);
      if (v15 <= v10 + 1)
      {
        v15 = v10 + 1;
      }

      while (v15 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(*(v8 + 288) + 24 * v10 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v10) = v15;
LABEL_17:
      ;
    }

    while (v10 != v9);
    v8 = *a3;
    v4 = a4;
  }

  *(v8 + 208) = *(v8 + 300) != 0;
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v8 + 272);
  *(v8 + 336) = 0;
  ++*(v8 + 344);
  re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::add(v4, a3);
  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 296, *a3);
  *(*a3 + 209) = 1;
}

uint64_t re::ecs2::UICodirectionalGroup::sortEntitiesBackToFront(uint64_t this, re::Allocator *a2)
{
  v106 = *MEMORY[0x1E69E9840];
  v2 = *(this + 52);
  if (v2)
  {
    v4 = this;
    v93 = 0;
    v91[1] = 0;
    v91[2] = 0;
    v92 = 0;
    v91[0] = a2;
    re::DynamicArray<float *>::setCapacity(v91, v2);
    ++v92;
    v5 = *(v4 + 56);
    if (v5)
    {
      v6 = 0;
      v7 = (*(v4 + 40) + 8);
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
          LODWORD(v6) = *(v4 + 56);
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
      v102[0].i64[0] = *(*(v4 + 40) + 24 * v6 + 16);
      re::DynamicArray<re::TransitionCondition *>::add(v91, v102);
      v9 = *(v4 + 56);
      if (v9 <= v6 + 1)
      {
        v9 = v6 + 1;
      }

      while (v9 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(v4 + 40) + 24 * v6 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v6) = v9;
LABEL_15:
      ;
    }

    v90 = 0;
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v86 = a2;
    re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&v86, v2);
    v10 = ++v89;
    v85 = 0;
    v82[1] = 0;
    v83 = 0;
    v84 = 0;
    v82[0] = a2;
    re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(v82, v2);
    ++v84;
    v77 = *(v4 + 56);
    if (v77)
    {
      v23 = 0;
      v24 = (*(v4 + 40) + 8);
      while (1)
      {
        v25 = *v24;
        v24 += 6;
        if (v25 < 0)
        {
          break;
        }

        if (v77 == ++v23)
        {
          LODWORD(v23) = *(v4 + 56);
          break;
        }
      }
    }

    else
    {
      LODWORD(v23) = 0;
    }

    v74 = v2;
    if (v23 == v77)
    {
      v26 = v90;
      v27 = v88;
    }

    else
    {
      v41 = 0;
      do
      {
        v42 = *(*(v4 + 40) + 24 * v23 + 16);
        *v95 = v42;
        v78 = v42;
        BYTE4(v79) = 0;
        if (!*(v4 + 152) || (v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) >> 27)), v44 = v43 ^ (v43 >> 31), v45 = *(*(v4 + 160) + 4 * (v44 % *(v4 + 176))), v45 == 0x7FFFFFFF))
        {
LABEL_53:
          re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v102, v42, *(v4 + 432));
          v47 = 0;
          v48 = vmulq_f32(vsubq_f32(v103, *(v4 + 128)), *(v4 + 112));
          v49 = v48.f32[2] + vaddv_f32(*v48.f32);
          *&v79 = v49;
        }

        else
        {
          v46 = *(v4 + 168);
          while (*(v46 + 32 * v45 + 8) != v42)
          {
            v45 = *(v46 + 32 * v45) & 0x7FFFFFFF;
            if (v45 == 0x7FFFFFFF)
            {
              goto LABEL_53;
            }
          }

          re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v4 + 152, v95, v44, v102);
          v54 = *(*(v4 + 168) + 32 * v102[0].u32[3] + 16);
          if (v54)
          {
            v55 = &v54->u32[2];
          }

          v56 = vmulq_f32(vsubq_f32(v54[2], *(v4 + 128)), *(v4 + 112));
          v49 = v56.f32[2] + vaddv_f32(*v56.f32);
          *&v79 = v49;
          v57 = *v95;
          if (re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken != -1)
          {
            dispatch_once(&re::UISortingFeatureFlags::enableCodirectionalAsSortGroup(void)::onceToken, &__block_literal_global_5_0);
          }

          if (re::UISortingFeatureFlags::gEnableCodirectionalAsSortGroup == 1 && (v58 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v57 ^ (v57 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v57 ^ (v57 >> 30))) >> 27)), re::HashTable<re::AssetType const*,std::pair<unsigned long,unsigned long>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(v102, &v54[22].i64[1], v57, v58 ^ (v58 >> 31)), v102[0].i32[3] != 0x7FFFFFFF))
          {
            v64 = *(v54[23].i64[1] + 40 * v102[0].u32[3] + 24);
            v47 = 1;
            BYTE4(v79) = 1;
            DWORD2(v79) = v64;
          }

          else
          {
            v47 = 0;
          }
        }

        v50 = re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::add(v82, &v78);
        if (v88 >= v87)
        {
          v51 = v88 + 1;
          if (v87 < v88 + 1)
          {
            if (v86)
            {
              v52 = 8;
              if (v87)
              {
                v52 = 2 * v87;
              }

              if (v52 <= v51)
              {
                v53 = v88 + 1;
              }

              else
              {
                v53 = v52;
              }

              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&v86, v53);
              v10 = v89;
            }

            else
            {
              re::DynamicArray<re::ecs2::CoincidentalSortKey>::setCapacity(&v86, v51);
              v10 = v89 + 1;
            }
          }
        }

        v26 = v90;
        v59 = v88;
        v60 = v90 + (v88 << 6);
        *v60 = 0u;
        *(v60 + 16) = 0u;
        *(v60 + 32) = 0;
        v27 = v59 + 1;
        v88 = v59 + 1;
        v89 = ++v10;
        if (v47)
        {
          v61 = 0;
          HIDWORD(v76) = DWORD2(v79);
        }

        else
        {
          v61 = HIDWORD(v76);
        }

        v62 = v26 + (v27 << 6);
        v102[0].i8[0] = 0;
        re::DrawCallSortKey<4ul,unsigned long long>::appendFloat(v62 - 64, v102, v49);
        re::DrawCallSortKey<4ul,unsigned long long>::appendInt32(v62 - 64, v61, v102);
        *(v62 - 32) = v41++;
        v63 = *(v4 + 56);
        if (v63 <= v23 + 1)
        {
          v63 = v23 + 1;
        }

        while (v63 - 1 != v23)
        {
          LODWORD(v23) = v23 + 1;
          if ((*(*(v4 + 40) + 24 * v23 + 8) & 0x80000000) != 0)
          {
            goto LABEL_80;
          }
        }

        LODWORD(v23) = v63;
LABEL_80:
        ;
      }

      while (v23 != v77);
    }

    v28 = 126 - 2 * __clz(v27);
    if (v27)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = std::__introsort<std::_ClassicAlgPolicy,re::ecs2::CAMeshSortGroup::recomputeMeshSorting(re::Allocator &)::$_1 &,re::ecs2::CoincidentalSortKey *,false>(v26, v26 + (v27 << 6), v29, 1uLL, v11, v12, v13, v14, v15, v16, v17, v18, v68, v69, v70, v72, v19, v20, v21, v22, v74, v76, v77, v78);
    v31 = (*(*v4 + 24))(v4, v30);
    v81 = 0;
    v79 = 0uLL;
    v80 = 0;
    v78 = v31;
    re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(&v78, v75);
    ++v80;
    if (v27)
    {
      v33 = v83;
      v34 = v85;
      v35 = v27 << 6;
      v36 = (v26 + 32);
      while (1)
      {
        v38 = *v36;
        v36 += 16;
        v37 = v38;
        if (v33 <= v38)
        {
          break;
        }

        re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::add(&v78, (v34 + 24 * v37));
        v35 -= 64;
        if (!v35)
        {
          goto LABEL_31;
        }
      }

      v94 = 0;
      v104 = 0u;
      v105 = 0u;
      v103 = 0u;
      memset(v102, 0, sizeof(v102));
      v65 = MEMORY[0x1E69E9C10];
      v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v95 = 136315906;
      *&v95[4] = "operator[]";
      v96 = 1024;
      if (v66)
      {
        v67 = 3;
      }

      else
      {
        v67 = 2;
      }

      v97 = 789;
      v98 = 2048;
      v99 = v37;
      v100 = 2048;
      v101 = v33;
      _os_log_send_and_compose_impl(v67, &v94, v102, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v71, v73);
      _os_crash_msg();
      __break(1u);
LABEL_88:
      re::internal::assertLog(4, v32, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }

LABEL_31:
    v39 = *(v4 + 448);
    if (v39 && v78 && v39 != v78)
    {
      goto LABEL_88;
    }

    *(v4 + 448) = v78;
    *(v4 + 456) = v79;
    v40 = *(v4 + 480);
    *(v4 + 480) = v81;
    ++*(v4 + 472);
    if (v39 && v40)
    {
      (*(*v39 + 40))(v39);
    }

    if (v82[0] && v85)
    {
      (*(*v82[0] + 40))();
    }

    if (v26 && v86)
    {
      (*(*v86 + 40))(v86, v26);
    }

    this = v91[0];
    if (v91[0])
    {
      if (v93)
      {
        return (*(*v91[0] + 40))();
      }
    }
  }

  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::add(_anonymous_namespace_ *result, uint64_t *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
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

        result = re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 24 * v5;
  v12 = *a2;
  *(v11 + 8) = *(a2 + 2);
  *v11 = v12;
  LODWORD(v12) = *(a2 + 12);
  *(v11 + 12) = v12;
  if (v12 == 1)
  {
    *(v11 + 16) = *(a2 + 4);
  }

  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

uint64_t re::ecs2::UICodirectionalGroup::updateGroupToken(uint64_t this)
{
  v1 = this;
  if (*(this + 528))
  {
    v3 = *(this + 128);
    v2 = *(this + 136);
    if ((*(this + 544) & 1) == 0)
    {
      *(this + 544) = 1;
    }

    *(this + 560) = v3;
    *(this + 568) = v2;
    v5 = *(this + 112);
    v4 = *(this + 120);
    if ((*(this + 576) & 1) == 0)
    {
      *(this + 576) = 1;
    }

    *(this + 592) = v5;
    *(this + 600) = v4;
  }

  else
  {
    v7[0] = 261;
    v8 = 1;
    v6 = *(this + 112);
    v9 = *(this + 128);
    v10 = 1;
    v11 = v6;
    v12 = 0;
    re::ecs2::MeshSortGroupToken::createNewToken(v7, v13);
    return re::ecs2::MeshSortGroupToken::operator=(v1 + 528, v13);
  }

  return this;
}

float32x4_t *re::ecs2::UICodirectionalGroup::writeToMeshSorting(float32x4_t *this, uint64_t a2, BOOL *a3)
{
  v3 = this[29].i64[0];
  if (v3)
  {
    v4 = 0;
    v5 = this + 33;
    v6 = 24 * v3;
    for (i = (this[30].i64[0] + 16); ; i += 3)
    {
      v15 = 0;
      v9 = v8;
      *(v8 + 304) = 1;
      v10 = *(v8 + 160);
      if ((*(v8 + 480) & 1) == 0)
      {
        break;
      }

      if ((*(i - 4) & 1) == 0)
      {
        *(v8 + 480) = 0;
        v14 = 1;
        goto LABEL_11;
      }

      v11 = *(v8 + 484);
      v12 = *i;
      *(v8 + 484) = *i;
      v13 = (v8 + 176);
      if ((v15 & 1) == 0)
      {
        v14 = v11 != v12;
LABEL_12:
        if (!v14 && v4 == v10)
        {
          this = re::ecs2::MeshSortGroupToken::doesConfigurationMatch(v5, v13);
          if (this)
          {
            if (v5->i64[0] == v13->i64[0])
            {
              goto LABEL_17;
            }
          }
        }
      }

LABEL_16:
      re::ecs2::MeshSortGroupToken::operator=(v13, v5);
      *(v9 + 160) = v4;
      this = re::ecs2::Component::markDirty(v9);
LABEL_17:
      ++v4;
      v6 -= 24;
      if (!v6)
      {
        return this;
      }
    }

    if (*(i - 4))
    {
      v14 = 1;
      *(v8 + 480) = 1;
      *(v8 + 484) = *i;
    }

    else
    {
      v14 = 0;
    }

LABEL_11:
    v13 = (v8 + 176);
    if ((v15 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  return this;
}

void re::ecs2::UICodirectionalGroup::~UICodirectionalGroup(re::ecs2::UICodirectionalGroup *this)
{
  *this = &unk_1F5CEF760;
  v2 = (this + 24);
  re::DynamicArray<unsigned long>::deinit(this + 448);
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
  *this = &unk_1F5CEF760;
  v2 = (this + 24);
  re::DynamicArray<unsigned long>::deinit(this + 448);
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

void re::HashSetBase<re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::Hash<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::UICoincidentalGroup>>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(a1, v4);
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
        re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

BOOL re::HashTable<re::ecs2::Entity *,re::SharedPtr<re::ecs2::UICodirectionalGroup>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 32 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      LODWORD(v9) = a2[3];
    }

    else
    {
      *(v6 + 32 * v5) = *(v6 + 32 * v5) & 0x80000000 | v7;
      v8 = v2;
      LODWORD(v9) = v2;
    }

    v10 = (v6 + 32 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      v11 &= ~0x80000000;
      *v10 = v11;
      v12 = *(v10 + 2);
      if (v12)
      {

        *(v10 + 2) = 0;
        v9 = a2[3];
        v6 = *(a1 + 16);
        v11 = *(v6 + 32 * v9);
      }
    }

    v13 = *(a1 + 40);
    *(v6 + 32 * v9) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void std::__introsort<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,false>(unint64_t result, re::ecs2::UISorterUtil **a2, uint64_t a3, uint64_t a4, char a5)
{
  while (2)
  {
    v87 = a2 - 2;
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

                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(result, (result + 16), v87, a3);
                return;
              case 4:
                std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(result, (result + 16), (result + 32), a3);
                v38 = *(a2 - 2);
                v37 = a2 - 2;
                if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v38, *(result + 32), *(a3 + 8)))
                {
                  v39 = *(result + 32);
                  *(result + 32) = *v37;
                  *v37 = v39;
                  if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(result + 32), *(result + 16), *(a3 + 8)))
                  {
                    v40 = *(result + 16);
                    *(result + 16) = *(result + 32);
                    *(result + 32) = v40;
                    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(result + 16), *result, *(a3 + 8)))
                    {
                      v94 = *result;
                      *result = *(result + 16);
                      *(result + 16) = v94;
                    }
                  }
                }

                return;
              case 5:

                std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(result, (result + 16), (result + 32), (result + 48), v87, a3);
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
              v35 = *(a2 - 2);
              v34 = a2 - 2;
              if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v35, *result, *(a3 + 8)))
              {
                v93 = *result;
                *result = *v34;
                *v34 = v93;
              }

              return;
            }
          }

          if (v10 <= 23)
          {
            v41 = (result + 16);
            v43 = result == a2 || v41 == a2;
            if (a5)
            {
              if (!v43)
              {
                v44 = 0;
                v45 = result;
                do
                {
                  v46 = v41;
                  if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(v45 + 16), *v45, *(a3 + 8)))
                  {
                    v47 = *v46;
                    v48 = *(v45 + 24);
                    v49 = v44;
                    while (1)
                    {
                      v50 = result + v49;
                      *(result + v49 + 16) = *(result + v49);
                      if (!v49)
                      {
                        break;
                      }

                      v49 -= 16;
                      if ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v47, *(v50 - 16), *(a3 + 8)) & 1) == 0)
                      {
                        v51 = (result + v49 + 16);
                        goto LABEL_83;
                      }
                    }

                    v51 = result;
LABEL_83:
                    *v51 = v47;
                    v51[1] = v48;
                  }

                  v41 = v46 + 2;
                  v44 += 16;
                  v45 = v46;
                }

                while (v46 + 2 != a2);
              }
            }

            else if (!v43)
            {
              do
              {
                v80 = v41;
                if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(result + 16), *result, *(a3 + 8)))
                {
                  v81 = *v80;
                  v82 = *(result + 24);
                  v83 = v80;
                  do
                  {
                    v84 = v83 - 2;
                    *v83 = *(v83 - 1);
                    v85 = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v81, *(v83 - 4), *(a3 + 8));
                    v83 = v84;
                  }

                  while ((v85 & 1) != 0);
                  *v84 = v81;
                  v84[1] = v82;
                }

                v41 = (v80 + 16);
                result = v80;
              }

              while ((v80 + 16) != a2);
            }

            return;
          }

          if (!a4)
          {
            if (result != a2)
            {
              v86 = a2;
              v52 = v11 >> 1;
              v53 = v11 >> 1;
              do
              {
                v54 = v53;
                if (v52 >= v53)
                {
                  v55 = (2 * v53) | 1;
                  v56 = (result + 16 * v55);
                  if (2 * v53 + 2 < v10 && re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v56, v56[2], *(a3 + 8)))
                  {
                    v56 += 2;
                    v55 = 2 * v54 + 2;
                  }

                  v57 = (result + 16 * v54);
                  if ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v56, *v57, *(a3 + 8)) & 1) == 0)
                  {
                    v58 = *v57;
                    v88 = v57[1];
                    do
                    {
                      v59 = v57;
                      v57 = v56;
                      *v59 = *v56;
                      if (v52 < v55)
                      {
                        break;
                      }

                      v60 = (2 * v55) | 1;
                      v56 = (result + 16 * v60);
                      v61 = 2 * v55 + 2;
                      if (v61 < v10 && re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v56, v56[2], *(a3 + 8)))
                      {
                        v56 += 2;
                        v60 = v61;
                      }

                      v55 = v60;
                    }

                    while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v56, v58, *(a3 + 8)));
                    *v57 = v58;
                    v57[1] = v88;
                  }
                }

                v53 = v54 - 1;
              }

              while (v54);
              v62 = v86;
              do
              {
                v63 = v62;
                v64 = 0;
                v95 = *result;
                v65 = result;
                do
                {
                  v66 = &v65[v64];
                  v67 = (v66 + 1);
                  v68 = (2 * v64) | 1;
                  v69 = 2 * v64 + 2;
                  if (v69 >= v10)
                  {
                    v64 = (2 * v64) | 1;
                  }

                  else
                  {
                    v71 = *(v66 + 4);
                    v70 = (v66 + 2);
                    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(v70 - 2), v71, *(a3 + 8)))
                    {
                      v67 = v70;
                      v64 = v69;
                    }

                    else
                    {
                      v64 = v68;
                    }
                  }

                  *v65 = *v67;
                  v65 = v67;
                }

                while (v64 <= ((v10 - 2) >> 1));
                v62 = v63 - 2;
                if (v67 == v63 - 2)
                {
                  *v67 = v95;
                }

                else
                {
                  *v67 = *v62;
                  *v62 = v95;
                  v72 = (v67 - result + 16) >> 4;
                  v73 = v72 < 2;
                  v74 = v72 - 2;
                  if (!v73)
                  {
                    v75 = v74 >> 1;
                    v76 = (result + 16 * (v74 >> 1));
                    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v76, *v67, *(a3 + 8)))
                    {
                      v77 = *v67;
                      v78 = v67[1];
                      do
                      {
                        v79 = v67;
                        v67 = v76;
                        *v79 = *v76;
                        if (!v75)
                        {
                          break;
                        }

                        v75 = (v75 - 1) >> 1;
                        v76 = (result + 16 * v75);
                      }

                      while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v76, v77, *(a3 + 8)) & 1) != 0);
                      *v67 = v77;
                      v67[1] = v78;
                    }
                  }
                }

                v73 = v10-- <= 2;
              }

              while (!v73);
            }

            return;
          }

          v12 = v10 >> 1;
          v13 = (result + 16 * (v10 >> 1));
          if (v10 < 0x81)
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>((result + 16 * (v10 >> 1)), result, v87, a3);
          }

          else
          {
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(result, (result + 16 * (v10 >> 1)), v87, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>((result + 16), v13 - 2, a2 - 4, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>((result + 32), (result + 16 + 16 * v12), a2 - 6, a3);
            std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(v13 - 2, (result + 16 * (v10 >> 1)), (result + 16 + 16 * v12), a3);
            v90 = *result;
            *result = *v13;
            *v13 = v90;
          }

          --a4;
          if (a5 & 1) != 0 || (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(result - 16), *result, *(a3 + 8)))
          {
            break;
          }

          v27 = *result;
          v26 = *(result + 8);
          if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *result, *v87, *(a3 + 8)))
          {
            v9 = result;
            do
            {
              v28 = *(v9 + 16);
              v9 += 16;
            }

            while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, v28, *(a3 + 8)) & 1) == 0);
          }

          else
          {
            v29 = result + 16;
            do
            {
              v9 = v29;
              if (v29 >= a2)
              {
                break;
              }

              v29 += 16;
            }

            while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, *v9, *(a3 + 8)));
          }

          v30 = a2;
          if (v9 < a2)
          {
            v30 = a2;
            do
            {
              v31 = *(v30 - 2);
              v30 -= 2;
            }

            while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, v31, *(a3 + 8)) & 1) != 0);
          }

          while (v9 < v30)
          {
            v92 = *v9;
            *v9 = *v30;
            *v30 = v92;
            do
            {
              v32 = *(v9 + 16);
              v9 += 16;
            }

            while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, v32, *(a3 + 8)));
            do
            {
              v33 = *(v30 - 2);
              v30 -= 2;
            }

            while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v27, v33, *(a3 + 8)) & 1) != 0);
          }

          if (v9 - 16 != result)
          {
            *result = *(v9 - 16);
          }

          a5 = 0;
          *(v9 - 16) = v27;
          *(v9 - 8) = v26;
        }

        v14 = 0;
        v16 = *result;
        v15 = *(result + 8);
        do
        {
          v17 = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(result + v14 + 16), v16, *(a3 + 8));
          v14 += 16;
        }

        while ((v17 & 1) != 0);
        v18 = result + v14;
        v19 = a2;
        if (v14 == 16)
        {
          v19 = a2;
          do
          {
            if (v18 >= v19)
            {
              break;
            }

            v21 = *(v19 - 2);
            v19 -= 2;
          }

          while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v21, v16, *(a3 + 8)) & 1) == 0);
        }

        else
        {
          do
          {
            v20 = *(v19 - 2);
            v19 -= 2;
          }

          while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v20, v16, *(a3 + 8)));
        }

        v9 = result + v14;
        if (v18 < v19)
        {
          v22 = v19;
          do
          {
            v91 = *v9;
            *v9 = *v22;
            *v22 = v91;
            do
            {
              v23 = *(v9 + 16);
              v9 += 16;
            }

            while ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v23, v16, *(a3 + 8)) & 1) != 0);
            do
            {
              v24 = *(v22 - 2);
              v22 -= 2;
            }

            while (!re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v24, v16, *(a3 + 8)));
          }

          while (v9 < v22);
        }

        if (v9 - 16 != result)
        {
          *result = *(v9 - 16);
        }

        *(v9 - 16) = v16;
        *(v9 - 8) = v15;
        if (v18 >= v19)
        {
          break;
        }

LABEL_35:
        std::__introsort<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,false>(result, (v9 - 16), a3, a4, a5 & 1);
        a5 = 0;
      }

      v25 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *>(result, (v9 - 16), a3);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *>(v9, a2, a3))
      {
        break;
      }

      if (!v25)
      {
        goto LABEL_35;
      }
    }

    a2 = (v9 - 16);
    if (!v25)
    {
      continue;
    }

    break;
  }
}

uint64_t std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(re::ecs2::UISorterTransformCache **a1, re::ecs2::UISorterUtil **a2, re::ecs2::UISorterUtil **a3, uint64_t a4)
{
  v8 = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a4, *a2, *a1, *(a4 + 8));
  result = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a4, *a3, *a2, *(a4 + 8));
  if (v8)
  {
    if (result)
    {
      v10 = *a1;
      *a1 = *a3;
    }

    else
    {
      v13 = *a1;
      *a1 = *a2;
      *a2 = v13;
      result = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a4, *a3, *a2, *(a4 + 8));
      if (!result)
      {
        return result;
      }

      v10 = *a2;
      *a2 = *a3;
    }

    *a3 = v10;
  }

  else if (result)
  {
    v11 = *a2;
    *a2 = *a3;
    *a3 = v11;
    result = re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a4, *a2, *a1, *(a4 + 8));
    if (result)
    {
      v12 = *a1;
      *a1 = *a2;
      *a2 = v12;
    }
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(re::ecs2::UISorterTransformCache **a1, re::ecs2::UISorterUtil **a2, re::ecs2::UISorterUtil **a3, re::ecs2::UISorterUtil **a4, re::ecs2::UISorterUtil **a5, uint64_t a6)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a2, a3, a6);
  if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a4, *a3, *(a6 + 8)))
  {
    v12 = *a3;
    *a3 = *a4;
    *a4 = v12;
    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a3, *a2, *(a6 + 8)))
    {
      v13 = *a2;
      *a2 = *a3;
      *a3 = v13;
      if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a2, *a1, *(a6 + 8)))
      {
        v14 = *a1;
        *a1 = *a2;
        *a2 = v14;
      }
    }
  }

  if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a5, *a4, *(a6 + 8)))
  {
    v16 = *a4;
    *a4 = *a5;
    *a5 = v16;
    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a4, *a3, *(a6 + 8)))
    {
      v17 = *a3;
      *a3 = *a4;
      *a4 = v17;
      if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a3, *a2, *(a6 + 8)))
      {
        v18 = *a2;
        *a2 = *a3;
        *a3 = v18;
        if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a6, *a2, *a1, *(a6 + 8)))
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

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *>(re::ecs2::UISorterTransformCache **a1, re::ecs2::UISorterTransformCache **a2, uint64_t a3)
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a2 - 2, a3);
        break;
      case 4:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a3);
        v19 = *(a2 - 2);
        v18 = a2 - 2;
        if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v19, a1[4], *(a3 + 8)))
        {
          v20 = *(a1 + 2);
          *(a1 + 2) = *v18;
          *v18 = v20;
          if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, a1[4], a1[2], *(a3 + 8)))
          {
            v21 = *(a1 + 1);
            *(a1 + 1) = *(a1 + 2);
            *(a1 + 2) = v21;
            if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, a1[2], *a1, *(a3 + 8)))
            {
              v22 = *a1;
              *a1 = *(a1 + 1);
              *(a1 + 1) = v22;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 2;
    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *(a2 - 2), *a1, *(a3 + 8)))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_11:
  v9 = a1 + 4;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,re::ecs2::UICoincidentalGroup::recomputeMeshSorting(re::Allocator &)::$_0 &,re::ecs2::UICoincidentalGroup::EntityAndPriority *,0>(a1, a1 + 2, a1 + 4, a3);
  v10 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    if (re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, *v10, *v9, *(a3 + 8)))
    {
      v13 = *v10;
      v14 = v10[1];
      v15 = v11;
      while (1)
      {
        v16 = (a1 + v15);
        *(a1 + v15 + 48) = *(a1 + v15 + 32);
        if (v15 == -32)
        {
          break;
        }

        v15 -= 16;
        if ((re::ecs2::UICoincidentalGroup::compareEntitiesByDisplacement(*a3, v13, v16[2], *(a3 + 8)) & 1) == 0)
        {
          v17 = (a1 + v15 + 48);
          goto LABEL_19;
        }
      }

      v17 = a1;
LABEL_19:
      *v17 = v13;
      v17[1] = v14;
      if (++v12 == 8)
      {
        return v10 + 2 == a2;
      }
    }

    v9 = v10;
    v11 += 16;
    v10 += 2;
    if (v10 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::SharedPtr<re::ecs2::UICoincidentalGroup>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addInternal<re::ecs2::Entity const* const&,re::SharedPtr<re::ecs2::UICoincidentalGroup> const&>(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t *a5)
{
  v8 = re::HashTable<re::AssetType const*,re::SharedPtr<re::RealityFileAssetProvider::PerTypeLoadCallbacks>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::allocEntry(a1, a3, a2);
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

void re::ecs2::UICoincidentalGroup::~UICoincidentalGroup(re::ecs2::UICoincidentalGroup *this)
{
  *this = &unk_1F5CEF7A8;
  v2 = (this + 48);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 45);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 34);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CEF7A8;
  v2 = (this + 48);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 45);
  re::DynamicArray<unsigned long>::deinit(this + 320);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 34);
  re::DynamicArray<unsigned long>::deinit(this + 224);
  re::FixedArray<CoreIKTransform>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::UICodirectionalGroup::EntitySortGroupInfo>::setCapacity(v5, a2);
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
              goto LABEL_18;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 24, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v16, v18);
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
        v10 = (v8 + 24 * v9);
        v11 = v7 + 2;
        v12 = (v8 + 16);
        do
        {
          v13 = v12 - 4;
          v14 = *(v12 - 2);
          *(v11 - 2) = *(v12 - 2);
          *(v11 - 2) = v14;
          LODWORD(v14) = *(v12 - 4);
          *(v11 - 4) = v14;
          if (v14 == 1)
          {
            *v11 = *v12;
          }

          v11 += 6;
          v12 += 6;
        }

        while (v13 + 6 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

uint64_t re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(re::TransformService **this, const re::ecs2::Entity *a2)
{
  v9 = a2;
  result = re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet((this + 1), &v9);
  if (!result)
  {
    memset(&v8, 0, sizeof(v8));
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    re::TransformService::worldMatrixForRendering(&v4, *this, v9, 0);
    v10.columns[2] = v6;
    v10.columns[3] = v7;
    v10.columns[0] = v4;
    v10.columns[1] = v5;
    v8 = __invert_f4(v10);
    return re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addNew((this + 1), &v9, &v4);
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 160 * v6 + 16;
  }
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addNew(uint64_t a1, void *a2, __int128 *a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v15);
  if (HIDWORD(v16) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 160 * HIDWORD(v16) + 16;
  }

  v7 = re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v16, v15);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  v9 = a3[4];
  v10 = a3[5];
  v11 = a3[7];
  *(v7 + 112) = a3[6];
  *(v7 + 128) = v11;
  *(v7 + 80) = v9;
  *(v7 + 96) = v10;
  v12 = *a3;
  v13 = a3[1];
  v14 = a3[3];
  *(v7 + 48) = a3[2];
  *(v7 + 64) = v14;
  *(v7 + 16) = v12;
  *(v7 + 32) = v13;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          v13 = *(a1 + 16);
          *&v33[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v14 = *&v33[32];
          *(a1 + 24) = v15;
          ++*&v33[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ecs2::Entity const*,re::ecs2::UISorterTransformCache::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v13 + v17 + 144) % *(a1 + 24), *(v13 + v17 + 144));
                v13 = *&v33[16];
                v20 = (*&v33[16] + v17);
                *(v19 + 8) = *(*&v33[16] + v17 + 8);
                v21 = v20[4];
                v23 = v20[1];
                v22 = v20[2];
                *(v19 + 48) = v20[3];
                *(v19 + 64) = v21;
                *(v19 + 16) = v23;
                *(v19 + 32) = v22;
                v25 = v20[7];
                v24 = v20[8];
                v26 = v20[6];
                *(v19 + 80) = v20[5];
                *(v19 + 96) = v26;
                *(v19 + 112) = v25;
                *(v19 + 128) = v24;
                v16 = *&v33[32];
              }

              ++v18;
              v17 += 160;
            }

            while (v18 < v16);
          }

          re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 160 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 160 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 160 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 144) = a3;
  ++*(a1 + 28);
  return v27 + 160 * v5;
}

uint64_t re::ecs2::UISorterUtil::isUISortableEntity(re::ecs2::UISorterUtil *this, const re::ecs2::Entity *a2)
{
  v2 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v2)
  {
    goto LABEL_8;
  }

  if (*(v2 + 95) != 1)
  {
    goto LABEL_6;
  }

  v3 = *(*(v2 + 16) + 192);
  if (v3)
  {
    v3 = *(v3 + 40);
    if (v3)
    {
      v4 = atomic_load((v3 + 896));
      if (v4 == 2)
      {
LABEL_6:
        if (*(v2 + 92) == 1)
        {
          LOBYTE(v3) = *(v2 + 93);
        }

        else
        {
          LOBYTE(v3) = 1;
        }

        return v3 & 1;
      }

LABEL_8:
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t re::ecs2::UISorterUtil::shouldSort(re::ecs2::UISorterUtil *this, re::TransformService **a2, re::ecs2::UISorterTransformCache *a3)
{
  if (re::ecs2::UISorterUtil::isUISortableEntity(this, a2))
  {
    re::ecs2::UISorterUtil::optionalSortingPlaneFrom(v7, this, a2);
    v5 = v7[0];
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

float32x4_t *re::ecs2::UISorterUtil::optionalSortingPlaneFrom@<X0>(float32x4_t *__return_ptr a1@<X8>, re::ecs2::UISorterUtil *this@<X0>, re::TransformService **a3@<X1>)
{
  result = re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(a3, this);
  v6 = result[2];
  v7 = vmulq_f32(v6, v6);
  if (fabsf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))) >= 1.0e-10 && (*&v8 = *&v7.i32[2] + vaddv_f32(*v7.i8), v9 = vrsqrte_f32(v8), v10 = vmul_f32(v9, vrsqrts_f32(v8, vmul_f32(v9, v9))), v11 = vmulq_n_f32(v6, vmul_f32(v10, vrsqrts_f32(v8, vmul_f32(v10, v10))).f32[0]), v12 = v11.i32[2], v19 = v11.i64[0], v20 = result[2], v16 = *result, v17 = result[1], v18 = result[3], (result = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0))
  {
    v13 = vcgtq_f32(result[3], result[4]);
    v13.i32[3] = v13.i32[2];
    if ((vmaxvq_u32(v13) & 0x80000000) != 0)
    {
      v14 = result[2].f32[2] * 0.5;
    }

    else
    {
      LODWORD(v14) = result[4].i64[1];
    }

    v15 = vaddq_f32(v18, vmlaq_n_f32(vmlaq_f32(vmulq_f32(v16, 0), 0, v17), v20, v14));
    a1->i8[0] = 1;
    a1[1].i64[0] = v19;
    a1[1].i32[2] = v12;
    a1[2] = vdivq_f32(v15, vdupq_laneq_s32(v15, 3));
  }

  else
  {
    a1->i8[0] = 0;
  }

  return result;
}

float32x4_t *re::ecs2::UISorterUtil::optionalInsideOutsidePartitionPlaneFrom@<X0>(float32x4_t *__return_ptr a1@<X8>, re::ecs2::UISorterUtil *this@<X0>, re::TransformService **a3@<X1>)
{
  result = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result && (result[6].i8[0] & 1) != 0)
  {

    return re::ecs2::UISorterUtil::optionalSortingPlaneFrom(a1, this, a3);
  }

  else
  {
    a1->i8[0] = 0;
  }

  return result;
}

BOOL re::ecs2::UISorterUtil::doesEntityOverlapBox(float32x4_t *a1, uint64_t a2, int a3, re::ecs2::UISorterUtil *this, re::TransformService **a5, int a6, float a7, float a8, float a9)
{
  re::ecs2::UISorterUtil::optionalSortingPlaneFrom(&v91, this, a5);
  v18 = vmulq_f32(v92, *a1);
  if ((1.0 - (v18.f32[2] + vaddv_f32(*v18.f32))) > a9)
  {
    return 0;
  }

  if (!a6)
  {
    v20 = a1[1];
    v21 = vmulq_f32(*a1, vsubq_f32(v93, v20));
    v22 = vmulq_f32(v92, vsubq_f32(v20, v93));
    v23 = vadd_f32(vzip1_s32(*&vextq_s8(v22, v22, 8uLL), *&vextq_s8(v21, v21, 8uLL)), vadd_f32(vzip1_s32(*v22.i8, *v21.i8), vzip2_s32(*v22.i8, *v21.i8)));
    v24 = vabs_f32(v23);
    if (v24.f32[0] >= v24.f32[1])
    {
      v24.f32[0] = v24.f32[1];
    }

    if (v23.f32[1] <= 0.0)
    {
      v25 = a8;
    }

    else
    {
      v25 = a7;
    }

    v26 = v24.f32[0] - v25;
    if (re::CARESortingDefaults::distanceThreshold(void)::onceToken != -1)
    {
      dispatch_once(&re::CARESortingDefaults::distanceThreshold(void)::onceToken, &__block_literal_global_4);
    }

    if (v26 > *&re::CARESortingDefaults::distanceThreshold(void)::sortingDistanceThreshold)
    {
      return 0;
    }
  }

  v27 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (a3 && v27 && (*(v27 + 94) & 1) != 0)
  {
    return 1;
  }

  v28 = re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(a5, this);
  v29 = MEMORY[0x1E695F050];
  v30 = *MEMORY[0x1E695F050];
  v31 = *(MEMORY[0x1E695F050] + 16);
  v32 = *(MEMORY[0x1E695F050] + 24);
  v33 = *(a2 + 8);
  if (v33)
  {
    v34 = v28;
    v35 = *(a2 + 16);
    v36 = 16 * v33;
    v37 = MEMORY[0x1E695F060];
    v38.f64[0] = *(MEMORY[0x1E695F050] + 16);
    v39 = *(MEMORY[0x1E695F050] + 24);
    do
    {
      v83 = v38.f64[0];
      rect = v30;
      v40 = vaddq_f32(v34[7], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34[4], COERCE_FLOAT(*v35->f32)), v34[5], *v35, 1), v34[6], *v35->f32, 2));
      rect_16 = vdivq_f32(v40, vdupq_laneq_s32(v40, 3)).u64[0];
      v41 = v30.f64[1];
      v42 = v30;
      v43 = v39;
      if (CGRectIsNull(*(&v38 - 1)))
      {
        v38 = *v37;
        v44 = rect_16;
      }

      else
      {
        v45.f32[0] = rect.f64[0] + v83;
        v46 = v41 + v39;
        v45.f32[1] = v46;
        v47 = vminnm_f32(rect_16, vcvt_f32_f64(rect));
        v38 = vcvtq_f64_f32(vsub_f32(vmaxnm_f32(rect_16, v45), v47));
        v44 = v47;
      }

      v30 = vcvtq_f64_f32(v44);
      v35 += 2;
      v39 = v38.f64[1];
      v36 -= 16;
    }

    while (v36);
    v48 = v30.f64[1];
    v49 = v30.f64[0];
    v50 = v29[1];
    v31 = v29[2];
    v32 = v29[3];
    v84 = v38.f64[0];
    recta = *v29;
  }

  else
  {
    v50 = *(MEMORY[0x1E695F050] + 8);
    v39 = *(MEMORY[0x1E695F050] + 24);
    v84 = *(MEMORY[0x1E695F050] + 16);
    v48 = v50;
    recta = *MEMORY[0x1E695F050];
    v49 = *MEMORY[0x1E695F050];
  }

  v51 = re::ecs2::EntityComponentCollection::get((this + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v51)
  {
    v53 = v51[3];
    v52 = v51[4];
    v54 = vcgtq_f32(v53, v52);
    v54.i32[3] = v54.i32[2];
    if ((vmaxvq_u32(v54) & 0x80000000) != 0)
    {
      v55 = v51[2];
      v56.i64[0] = 0xBF000000BF000000;
      v56.i64[1] = 0xBF000000BF000000;
      v53.i64[0] = vmulq_f32(v55, v56).u64[0];
      v56.i64[0] = 0x3F0000003F000000;
      v52.i64[1] = 0x3F0000003F000000;
      v52.i64[0] = vmulq_f32(v55, v52).u64[0];
    }

    rect_16a = *v53.f32;
    v82 = *v52.f32;
    v95.origin.x = recta;
    v95.origin.y = v50;
    v95.size.width = v31;
    v95.size.height = v32;
    if (CGRectIsNull(v95))
    {
      v57 = *MEMORY[0x1E695F060];
      v58 = rect_16a;
    }

    else
    {
      v59.f32[0] = recta;
      v60 = v50;
      v59.f32[1] = v60;
      v61.f32[0] = v31 + recta;
      v62 = v32 + v50;
      v61.f32[1] = v62;
      v58 = vminnm_f32(rect_16a, v59);
      v57 = vcvtq_f64_f32(vsub_f32(vmaxnm_f32(rect_16a, v61), v58));
    }

    rectb = v57;
    rect_16b = v58;
    v63 = vcvtq_f64_f32(v58);
    v64 = v63.f64[1];
    v65 = v57.f64[1];
    v81 = v63;
    if (CGRectIsNull(*(&v57 - 1)))
    {
      v50 = v82.f32[1];
      recta = v82.f32[0];
      v31 = *MEMORY[0x1E695F060];
      v32 = *(MEMORY[0x1E695F060] + 8);
    }

    else
    {
      v66 = vminnm_f32(v82, rect_16b);
      v67 = vmaxnm_f32(v82, vcvt_f32_f64(vaddq_f64(rectb, v81)));
      recta = v66.f32[0];
      v50 = v66.f32[1];
      v68 = vsub_f32(v67, v66);
      v31 = v68.f32[0];
      v32 = v68.f32[1];
    }
  }

  v96.size.width = v84;
  v96.origin.x = v49;
  v96.origin.y = v48;
  v96.size.height = v39;
  v97 = CGRectInset(v96, 0.00000011920929, 0.00000011920929);
  x = v97.origin.x;
  y = v97.origin.y;
  width = v97.size.width;
  height = v97.size.height;
  v97.origin.x = recta;
  v97.origin.y = v50;
  v97.size.width = v31;
  v97.size.height = v32;
  v98 = CGRectInset(v97, 0.00000011920929, 0.00000011920929);
  v73 = v98.origin.x;
  v74 = v98.origin.y;
  v75 = v98.size.width;
  v76 = v98.size.height;
  v77 = x;
  v78 = y;
  v79 = width;
  v80 = height;

  return CGRectIntersectsRect(*&v77, *&v73);
}

BOOL re::ecs2::UISorterUtil::doEntitiesOverlap(uint64_t a1, re::ecs2::UISorterUtil *a2, re::TransformService **a3, uint64_t a4, int a5, float a6)
{
  v59 = *MEMORY[0x1E69E9840];
  v49 = 0;
  v50 = 0;
  v51 = 0;
  re::FixedArray<re::Vector3<float>>::init<>(&v49, a4, 4uLL);
  v12 = re::ecs2::UISorterTransformCache::getOrRecomputeWorldMatrixAndInverse(a3, a1);
  v45 = *v12;
  v46 = v12[1];
  v47 = v12[3];
  v48 = v12[2];
  v13 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v13)
  {
    goto LABEL_9;
  }

  v15 = v13[3];
  v14 = v13[4];
  v16 = vcgtq_f32(v15, v14);
  v16.i32[3] = v16.i32[2];
  if ((vmaxvq_u32(v16) & 0x80000000) != 0)
  {
    v14 = v13[2];
    v17 = 0xBF000000BF000000;
    v15.i64[1] = 0xBF000000BF000000;
    v15.i64[0] = vmulq_f32(v14, v15).u64[0];
    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    v14.i64[0] = vmulq_f32(v14, v18).u64[0];
  }

  if (!v50)
  {
    v52 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v53 = 136315906;
    *&v53[4] = "operator[]";
    *&v53[12] = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    *&v53[14] = 468;
    *&v53[18] = 2048;
    *&v53[20] = 0;
    *&v53[28] = 2048;
    *&v53[30] = 0;
    _os_log_send_and_compose_impl(v35, &v52, &v54, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v45.u64[0], v45.u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_20;
  }

  v19 = vmulq_n_f32(v45, v15.f32[0]);
  v20 = 0uLL;
  v21 = vaddq_f32(v47, vmlaq_f32(vmlaq_lane_f32(v19, v46, *v15.f32, 1), 0, v48));
  *v51 = vdivq_f32(v21, vdupq_laneq_s32(v21, 3));
  v6 = v50;
  if (v50 <= 1)
  {
LABEL_20:
    v52 = 0;
    v57 = v20;
    v58 = v20;
    v55 = v20;
    v56 = v20;
    v54 = v20;
    v36 = MEMORY[0x1E69E9C10];
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v53 = 136315906;
    *&v53[4] = "operator[]";
    *&v53[12] = 1024;
    if (v37)
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    *&v53[14] = 468;
    *&v53[18] = 2048;
    *&v53[20] = 1;
    *&v53[28] = 2048;
    *&v53[30] = v6;
    _os_log_send_and_compose_impl(v38, &v52, &v54, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v45.u64[0], v45.u64[1]);
    _os_crash_msg();
    __break(1u);
    goto LABEL_24;
  }

  v22 = vaddq_f32(v47, vmlaq_f32(vmlaq_lane_f32(v19, v46, *v14.f32, 1), 0, v48));
  v51[1] = vdivq_f32(v22, vdupq_laneq_s32(v22, 3));
  if (v6 == 2)
  {
LABEL_24:
    v52 = 0;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    v39 = MEMORY[0x1E69E9C10];
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v53 = 136315906;
    *&v53[4] = "operator[]";
    *&v53[12] = 1024;
    if (v40)
    {
      v41 = 3;
    }

    else
    {
      v41 = 2;
    }

    *&v53[14] = 468;
    *&v53[18] = 2048;
    *&v53[20] = 2;
    *&v53[28] = 2048;
    *&v53[30] = 2;
    _os_log_send_and_compose_impl(v41, &v52, &v54, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v45.u64[0], v45.u64[1]);
    _os_crash_msg();
    __break(1u);
LABEL_28:
    v52 = 0;
    v57 = v25;
    v58 = v25;
    v55 = v25;
    v56 = v25;
    v54 = v25;
    v42 = MEMORY[0x1E69E9C10];
    v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v53 = 136315906;
    *&v53[4] = "operator[]";
    *&v53[12] = 1024;
    if (v43)
    {
      v44 = 3;
    }

    else
    {
      v44 = 2;
    }

    *&v53[14] = 468;
    *&v53[18] = 2048;
    *&v53[20] = 3;
    *&v53[28] = 2048;
    *&v53[30] = 3;
    _os_log_send_and_compose_impl(v44, &v52, &v54, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v53, 38, v45.u64[0], v45.u64[1]);
    _os_crash_msg();
    __break(1u);
  }

  v23 = vmulq_n_f32(v45, v14.f32[0]);
  v24 = vmlaq_f32(v23, vdupq_lane_s32(*v15.f32, 1), v46);
  v25 = 0uLL;
  v26 = vaddq_f32(v47, vmlaq_f32(v24, 0, v48));
  v27 = v51;
  v51[2] = vdivq_f32(v26, vdupq_laneq_s32(v26, 3));
  if (v6 <= 3)
  {
    goto LABEL_28;
  }

  v28 = vaddq_f32(v47, vmlaq_f32(vmlaq_f32(v23, vdupq_lane_s32(*v14.f32, 1), v46), 0, v48));
  v27[3] = vdivq_f32(v28, vdupq_laneq_s32(v28, 3));
LABEL_9:
  re::ecs2::UISorterUtil::optionalSortingPlaneFrom(&v54, a1, a3);
  *v53 = v55;
  *&v53[16] = v56;
  v29 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v29)
  {
    v30 = *(v29 + 94);
  }

  else
  {
    v30 = 0;
  }

  doesEntityOverlapBox = re::ecs2::UISorterUtil::doesEntityOverlapBox(v53, &v49, v30 & 1, a2, a3, a5, 0.0, 0.0, a6);
  if (v49 && v50)
  {
    (*(*v49 + 40))();
  }

  return doesEntityOverlapBox;
}

uint64_t re::ecs2::UITreeTracker::PerUpdateChanges::PerUpdateChanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0u;
  v10 = a1 + 48;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x7FFFFFFFLL;
  *(a1 + 96) = 0u;
  v11 = a1 + 96;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a2, 3);
  v12 = *(a3 + 32);
  if (v12)
  {
    v13 = 0;
    v14 = (*(a3 + 16) + 8);
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
        LODWORD(v13) = *(a3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (v13 != v12)
  {
    v16 = *(a3 + 16);
    do
    {
      v31 = *(v16 + 24 * v13 + 16);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1, &v31);
      v17 = *(a3 + 32);
      v16 = *(a3 + 16);
      if (v17 <= v13 + 1)
      {
        v17 = v13 + 1;
      }

      while (v17 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if ((*(v16 + 24 * v13 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v13) = v17;
LABEL_15:
      ;
    }

    while (v13 != v12);
  }

  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v10, a2, 3);
  v18 = *(a4 + 32);
  if (v18)
  {
    v19 = 0;
    v20 = (*(a4 + 16) + 8);
    while (1)
    {
      v21 = *v20;
      v20 += 6;
      if (v21 < 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        LODWORD(v19) = *(a4 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v19) = 0;
  }

  if (v19 != v18)
  {
    v22 = *(a4 + 16);
    do
    {
      v31 = *(v22 + 24 * v19 + 16);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v10, &v31);
      v23 = *(a4 + 32);
      v22 = *(a4 + 16);
      if (v23 <= v19 + 1)
      {
        v23 = v19 + 1;
      }

      while (v23 - 1 != v19)
      {
        LODWORD(v19) = v19 + 1;
        if ((*(v22 + 24 * v19 + 8) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v19) = v23;
LABEL_30:
      ;
    }

    while (v19 != v18);
  }

  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::init(v11, a2, 3);
  v24 = *(a5 + 32);
  if (v24)
  {
    v25 = 0;
    v26 = (*(a5 + 16) + 8);
    while (1)
    {
      v27 = *v26;
      v26 += 6;
      if (v27 < 0)
      {
        break;
      }

      if (v24 == ++v25)
      {
        LODWORD(v25) = *(a5 + 32);
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
    v28 = *(a5 + 16);
    do
    {
      v31 = *(v28 + 24 * v25 + 16);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v11, &v31);
      v29 = *(a5 + 32);
      v28 = *(a5 + 16);
      if (v29 <= v25 + 1)
      {
        v29 = v25 + 1;
      }

      while (v29 - 1 != v25)
      {
        LODWORD(v25) = v25 + 1;
        if ((*(v28 + 24 * v25 + 8) & 0x80000000) != 0)
        {
          goto LABEL_45;
        }
      }

      LODWORD(v25) = v29;
LABEL_45:
      ;
    }

    while (v25 != v24);
  }

  return a1;
}

re::ecs2::UITreeTracker *re::ecs2::UITreeTracker::UITreeTracker(re::ecs2::UITreeTracker *this)
{
  *(this + 12) = 0;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  v2 = this + 16;
  *(this + 52) = 0x7FFFFFFFLL;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 4) = 0u;
  v3 = this + 64;
  *(this + 100) = 0x7FFFFFFFLL;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 7) = 0u;
  v4 = this + 112;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 10) = 0u;
  v5 = this + 160;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 60) = 0;
  *(this + 14) = 0u;
  *(this + 13) = 0u;
  v6 = this + 208;
  *(this + 244) = 0x7FFFFFFFLL;
  *(this + 72) = 0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 292) = 0x7FFFFFFFLL;
  *(this + 84) = 0;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 340) = 0x7FFFFFFFLL;
  *(this + 96) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 388) = 0x7FFFFFFFLL;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 0;
  *(this + 436) = 0x7FFFFFFFLL;
  return this;
}

void re::ecs2::UITreeTracker::update(uint64_t *__return_ptr a1@<X8>, re::ecs2::UITreeTracker *this@<X0>, re::Allocator *a3@<X1>)
{
  if (*this && *(this + 1))
  {
    if (*(this + 11) || *(this + 23) || *(this + 35))
    {
      v4 = *(this + 36);
      if (v4)
      {
        v5 = 0;
        v6 = (*(this + 16) + 8);
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
            LODWORD(v5) = *(this + 36);
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
        v12 = xmmword_1E306AC00;
        do
        {
          v13 = *(*(this + 16) + 24 * v5 + 16);
          v71 = v13;
          if ((*(v13 + 304) & 0x801) == 1 && (*(v13 + 387) & 1) == 0)
          {
            v14 = *(v13 + 98);
            if (*(v13 + 98))
            {
              v15 = (*this + 16);
              v16 = *(v13 + 104);
              v17 = vld1q_dup_s16(v15);
              v18 = 1;
              v19 = v16;
              v20 = *(v13 + 98);
              while (1)
              {
                v21 = vandq_s8(vceqq_s16(v17, *v19), v12);
                v21.i16[0] = vmaxvq_u16(v21);
                if (v21.i32[0])
                {
                  break;
                }

                v18 -= 8;
                ++v19;
                if (!--v20)
                {
                  goto LABEL_31;
                }
              }

              if (v21.u16[0] - v18 >= *(v13 + 96))
              {
LABEL_31:
                v22 = (*(this + 1) + 16);
                v23 = vld1q_dup_s16(v22);
                v24 = 1;
                while (1)
                {
                  v25 = vandq_s8(vceqq_s16(v23, *v16), v12);
                  v25.i16[0] = vmaxvq_u16(v25);
                  if (v25.i32[0])
                  {
                    break;
                  }

                  v24 -= 8;
                  ++v16;
                  if (!--v14)
                  {
                    goto LABEL_55;
                  }
                }

                if (v25.u16[0] - v24 < *(v13 + 96))
                {
                  re::StackScratchAllocator::StackScratchAllocator(v79);
                  v75 = 0uLL;
                  LODWORD(v76) = 1;
                  v77 = 0uLL;
                  *(&v76 + 1) = 0;
                  v78 = 0;
                  re::BucketArray<re::ecs2::Entity *,32ul>::init(&v75, v79, 1uLL);
                  *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(&v75) = v13;
                  while (*(&v77 + 1))
                  {
                    v72[0] = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v75, *(&v77 + 1) - 1);
                    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v75, *(&v77 + 1) - 1);
                    --*(&v77 + 1);
                    ++v78;
                    v26 = v72[0];
                    if ((*(v72[0] + 76) & 0x801) == 1 && (*(v72[0] + 387) & 1) == 0)
                    {
                      v27 = *(v72[0] + 49);
                      if (*(v72[0] + 49))
                      {
                        v28 = (*(this + 1) + 16);
                        v29 = *(v72[0] + 13);
                        v30 = vld1q_dup_s16(v28);
                        v31 = 1;
                        while (1)
                        {
                          v32 = vandq_s8(vceqq_s16(v30, *v29), xmmword_1E306AC00);
                          v32.i16[0] = vmaxvq_u16(v32);
                          if (v32.i32[0])
                          {
                            break;
                          }

                          v31 -= 8;
                          ++v29;
                          if (!--v27)
                          {
                            goto LABEL_47;
                          }
                        }

                        if (v32.u16[0] - v31 < *(v72[0] + 48))
                        {
                          re::ecs2::UITreeTracker::removeTrackedEntity(this, v72[0]);
                          re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 64, v72);
                          v26 = v72[0];
                        }
                      }

LABEL_47:
                      v33 = *(v26 + 43);
                      if (v33)
                      {
                        v34 = *(v26 + 45);
                        v35 = 8 * v33;
                        do
                        {
                          v36 = *v34++;
                          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(&v75) = v36;
                          v35 -= 8;
                        }

                        while (v35);
                      }
                    }
                  }

                  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(&v75);
                  if (v75 && (v76 & 1) == 0)
                  {
                    (*(*v75 + 40))(v75, v77);
                  }

                  re::StackScratchAllocator::~StackScratchAllocator(v79);
                  v12 = xmmword_1E306AC00;
                }
              }

              else
              {
                if (re::ecs2::UITreeTracker::findHighestRootComponentAncestor(this, *(v13 + 32)))
                {
                  re::ecs2::UITreeTracker::removeRootEntity(this, v13);
LABEL_30:
                  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 16, &v71);
                  v12 = xmmword_1E306AC00;
                  goto LABEL_55;
                }

                v12 = xmmword_1E306AC00;
                if (!*(this + 32))
                {
                  goto LABEL_30;
                }

                v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
                v39 = *(*(this + 33) + 4 * ((v38 ^ (v38 >> 31)) % *(this + 70)));
                if (v39 == 0x7FFFFFFF)
                {
                  goto LABEL_30;
                }

                v40 = *(this + 34);
                while (*(v40 + 72 * v39 + 8) != v13)
                {
                  v39 = *(v40 + 72 * v39) & 0x7FFFFFFF;
                  if (v39 == 0x7FFFFFFF)
                  {
                    goto LABEL_30;
                  }
                }
              }
            }
          }

LABEL_55:
          v37 = *(this + 36);
          if (v37 <= v5 + 1)
          {
            v37 = v5 + 1;
          }

          while (v37 - 1 != v5)
          {
            LODWORD(v5) = v5 + 1;
            if ((*(*(this + 16) + 24 * v5 + 8) & 0x80000000) != 0)
            {
              goto LABEL_61;
            }
          }

          LODWORD(v5) = v37;
LABEL_61:
          ;
        }

        while (v5 != v4);
      }

      v8 = *(this + 12);
      if (v8)
      {
        v9 = 0;
        v10 = (*(this + 4) + 8);
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
            LODWORD(v9) = *(this + 12);
            break;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }

      while (v9 != v8)
      {
        v41 = *(*(this + 4) + 24 * v9 + 16);
        HighestRootComponentAncestor = re::ecs2::UITreeTracker::findHighestRootComponentAncestor(this, *(v41 + 32));
        if (HighestRootComponentAncestor)
        {
          v43 = HighestRootComponentAncestor;
        }

        else
        {
          v43 = v41;
        }

        re::StackScratchAllocator::StackScratchAllocator(v79);
        v75 = 0uLL;
        LODWORD(v76) = 1;
        v77 = 0uLL;
        *(&v76 + 1) = 0;
        v78 = 0;
        re::BucketArray<re::ecs2::Entity *,32ul>::init(&v75, v79, 1uLL);
        *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(&v75) = v41;
        while (*(&v77 + 1))
        {
          v44 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v75, *(&v77 + 1) - 1);
          re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v75, *(&v77 + 1) - 1);
          --*(&v77 + 1);
          ++v78;
          if ((*(v44 + 304) & 0x801) == 1 && (*(v44 + 387) & 1) == 0)
          {
            v45 = *(v44 + 98);
            if (*(v44 + 98))
            {
              v46 = (*(this + 1) + 16);
              v47 = *(v44 + 104);
              v48 = vld1q_dup_s16(v46);
              v49 = 1;
              while (1)
              {
                v50 = vandq_s8(vceqq_s16(v48, *v47), xmmword_1E306AC00);
                v50.i16[0] = vmaxvq_u16(v50);
                if (v50.i32[0])
                {
                  break;
                }

                v49 -= 8;
                ++v47;
                if (!--v45)
                {
                  goto LABEL_85;
                }
              }

              if (v50.u16[0] - v49 < *(v44 + 96))
              {
                re::ecs2::UITreeTracker::addTrackedEntityForRoot(this, v44, v43);
              }
            }

LABEL_85:
            v51 = *(v44 + 344);
            if (v51)
            {
              v52 = *(v44 + 360);
              v53 = 8 * v51;
              do
              {
                v54 = *v52++;
                *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(&v75) = v54;
                v53 -= 8;
              }

              while (v53);
            }
          }
        }

        re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(&v75);
        if (v75 && (v76 & 1) == 0)
        {
          (*(*v75 + 40))(v75, v77);
        }

        re::StackScratchAllocator::~StackScratchAllocator(v79);
        v55 = *(this + 12);
        if (v55 <= v9 + 1)
        {
          v55 = v9 + 1;
        }

        while (v55 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(*(this + 4) + 24 * v9 + 8) & 0x80000000) != 0)
          {
            goto LABEL_98;
          }
        }

        LODWORD(v9) = v55;
LABEL_98:
        ;
      }

      v56 = *(this + 24);
      if (v56)
      {
        v57 = 0;
        v58 = (*(this + 10) + 8);
        while (1)
        {
          v59 = *v58;
          v58 += 6;
          if (v59 < 0)
          {
            break;
          }

          if (v56 == ++v57)
          {
            LODWORD(v57) = *(this + 24);
            break;
          }
        }
      }

      else
      {
        LODWORD(v57) = 0;
      }

      if (v57 != v56)
      {
        v60 = *(this + 24);
        do
        {
          v61 = *(*(this + 10) + 24 * v57 + 16);
          if (!*(this + 26) || (v62 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v61 ^ (v61 >> 30))) >> 27)), v63 = *(*(this + 27) + 4 * ((v62 ^ (v62 >> 31)) % *(this + 58))), v63 == 0x7FFFFFFF))
          {
LABEL_112:
            v65 = *(v61 + 32);
            if (v65)
            {
              while ((*(v65 + 304) & 0x80) == 0)
              {
                v79[0] = v65;
                v66 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 208, v79);
                if (v66)
                {
                  v67 = *v66;
                  if (!*v66)
                  {
                    goto LABEL_117;
                  }

                  goto LABEL_120;
                }

                v65 = *(v79[0] + 32);
                if (!v65)
                {
                  break;
                }
              }
            }

            v79[0] = 0;
LABEL_117:
            v67 = re::ecs2::UITreeTracker::findHighestRootComponentAncestor(this, *(v61 + 32));
            if (v67)
            {
LABEL_120:
              re::ecs2::UITreeTracker::addTrackedEntityForRoot(this, v61, v67);
            }

            v60 = *(this + 24);
          }

          else
          {
            v64 = *(this + 28);
            while (*(v64 + 32 * v63 + 8) != v61)
            {
              v63 = *(v64 + 32 * v63) & 0x7FFFFFFF;
              if (v63 == 0x7FFFFFFF)
              {
                goto LABEL_112;
              }
            }
          }

          if (v60 <= v57 + 1)
          {
            v68 = v57 + 1;
          }

          else
          {
            v68 = v60;
          }

          while (v68 - 1 != v57)
          {
            LODWORD(v57) = v57 + 1;
            if ((*(*(this + 10) + 24 * v57 + 8) & 0x80000000) != 0)
            {
              goto LABEL_129;
            }
          }

          LODWORD(v57) = v68;
LABEL_129:
          ;
        }

        while (v57 != v56);
      }

      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 16);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 64);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 112);
      re::ecs2::UITreeTracker::PerUpdateChanges::PerUpdateChanges(a1, a3, this + 352, this + 304, this + 400);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 304);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 352);
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(this + 400);
    }

    else
    {

      re::ecs2::UITreeTracker::PerUpdateChanges::PerUpdateChanges(a1, a3, this + 352, this + 304, this + 400);
    }
  }

  else
  {
    v80 = 0u;
    memset(v79, 0, sizeof(v79));
    DWORD1(v80) = 0x7FFFFFFF;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    DWORD1(v77) = 0x7FFFFFFF;
    *v72 = 0u;
    v73 = 0u;
    DWORD1(v74) = 0x7FFFFFFF;
    re::ecs2::UITreeTracker::PerUpdateChanges::PerUpdateChanges(a1, a3, v79, &v75, v72);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v72);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v75);
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v79);
  }
}

uint64_t re::ecs2::UITreeTracker::findHighestRootComponentAncestor(void *a1, uint64_t a2)
{
  if (!a2 || (*(a2 + 304) & 0x80) != 0)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = *(a2 + 98);
    if (*(a2 + 98))
    {
      v5 = (*a1 + 16);
      v6 = *(a2 + 104);
      v7 = vld1q_dup_s16(v5);
      v8 = 1;
      while (1)
      {
        v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
        v9.i16[0] = vmaxvq_u16(v9);
        if (v9.i32[0])
        {
          break;
        }

        v8 -= 8;
        ++v6;
        if (!--v4)
        {
          goto LABEL_11;
        }
      }

      if (v9.u16[0] - v8 < *(a2 + 96))
      {
        result = a2;
      }
    }

LABEL_11:
    a2 = *(a2 + 32);
  }

  while (a2 && (*(a2 + 304) & 0x80) == 0);
  return result;
}

void re::ecs2::UITreeTracker::removeRootEntity(re::ecs2::UITreeTracker *this, re::ecs2::Entity *a2)
{
  v18 = a2;
  v3 = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 256, a2);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 32);
    if (v5)
    {
      v6 = 0;
      v7 = (*(v3 + 16) + 8);
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
          LODWORD(v6) = *(v3 + 32);
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
      v17 = *(*(v4 + 16) + 24 * v6 + 16);
      re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 208, &v17);
      v9 = *(v4 + 32);
      if (v9 <= v6 + 1)
      {
        v9 = v6 + 1;
      }

      while (v9 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(*(v4 + 16) + 24 * v6 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v6) = v9;
LABEL_15:
      ;
    }

    re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 208, &v18);
    re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(this + 256, v18);
    v10 = *(v18 + 39);
    v17 = v10;
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
    v12 = v11 ^ (v11 >> 31);
    v13 = *(this + 94);
    if (v13)
    {
      v14 = v12 % v13;
      v15 = *(*(this + 45) + 4 * (v12 % v13));
      if (v15 != 0x7FFFFFFF)
      {
        v16 = *(this + 46);
        if (*(v16 + 24 * v15 + 16) == v10)
        {
          return;
        }

        while (1)
        {
          LODWORD(v15) = *(v16 + 24 * v15 + 8) & 0x7FFFFFFF;
          if (v15 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v16 + 24 * v15 + 16) == v10)
          {
            return;
          }
        }
      }
    }

    else
    {
      LODWORD(v14) = 0;
    }

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(this + 352, v14, v12, &v17, &v17);
    ++*(this + 98);
  }
}

uint64_t re::ecs2::UITreeTracker::addTrackedEntityForRoot(re::ecs2::UITreeTracker *this, re::ecs2::Entity *a2, unint64_t a3)
{
  v3 = a3;
  v17 = a3;
  v18 = a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  if (!*(this + 32) || (v7 = *(*(this + 33) + 4 * (v6 % *(this + 70))), v7 == 0x7FFFFFFF))
  {
LABEL_6:
    memset(v16, 0, sizeof(v16));
    DWORD1(v16[2]) = 0x7FFFFFFF;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v19, this + 256, a3, v6);
    if (HIDWORD(v20) == 0x7FFFFFFF)
    {
      v9 = re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(this + 256, v20, v19);
      *(v9 + 8) = v3;
      *(v9 + 56) = 0;
      *(v9 + 16) = 0u;
      v16[0] = 0u;
      *(v9 + 32) = 0;
      *&v16[1] = 0;
      *(v9 + 40) = xmmword_1E3058120;
      *(&v16[1] + 8) = xmmword_1E3058120;
      ++*(this + 74);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v16);
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 304, &v17);
    v3 = v17;
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
    v6 = v10 ^ (v10 >> 31);
  }

  else
  {
    v8 = *(this + 34);
    while (*(v8 + 72 * v7 + 8) != a3)
    {
      v7 = *(v8 + 72 * v7) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v16, this + 256, v3, v6);
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(*(this + 34) + 72 * HIDWORD(v16[0]) + 16, &v18);
  memset(v16, 0, 24);
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v18 ^ (v18 >> 30))) >> 27));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(this + 208, &v18, v11 ^ (v11 >> 31), v16);
  v12 = HIDWORD(v16[0]);
  if (HIDWORD(v16[0]) == 0x7FFFFFFF)
  {
    v13 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(this + 208, DWORD2(v16[0]), *&v16[0]);
    v14 = v17;
    *(v13 + 8) = v18;
    *(v13 + 16) = v14;
    ++*(this + 62);
  }

  else
  {
    ++*(this + 62);
    *(*(this + 28) + 32 * v12 + 16) = v17;
  }

  return re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(this + 400, &v18);
}

uint64_t re::ecs2::UITreeTracker::registerScene(uint64_t this, unint64_t a2)
{
  v43 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v2 = this;
    if (*(this + 8))
    {
      v4 = *(a2 + 288);
      if (v4)
      {
        v25 = 0;
        v23 = 0uLL;
        v22 = 0;
        v24 = 0;
        v41 = re::globalAllocators(this)[2];
        v5 = (*(*v41 + 32))(v41, 32, 0);
        *v5 = &unk_1F5CEF7F0;
        v5[1] = v2;
        v5[2] = re::ecs2::UITreeTracker::didActivateRootComponent;
        v5[3] = 0;
        v42 = v5;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v4, v40, *v2, 0);
        v26.n128_u64[1] = v6;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        v7 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v40);
        v38 = re::globalAllocators(v7)[2];
        v8 = (*(*v38 + 32))(v38, 32, 0);
        *v8 = &unk_1F5CEF848;
        v8[1] = v2;
        v8[2] = re::ecs2::UITreeTracker::willDeactivateRootComponent;
        v8[3] = 0;
        v39 = v8;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v4, v37, *v2, 0);
        v26.n128_u64[1] = v9;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        v10 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v37);
        v35 = re::globalAllocators(v10)[2];
        v11 = (*(*v35 + 32))(v35, 32, 0);
        *v11 = &unk_1F5CEF7F0;
        v11[1] = v2;
        v11[2] = re::ecs2::UITreeTracker::didActivateTrackedComponent;
        v11[3] = 0;
        v36 = v11;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v4, v34, *(v2 + 8), 0);
        v26.n128_u64[1] = v12;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        v13 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v34);
        v32 = re::globalAllocators(v13)[2];
        v14 = (*(*v32 + 32))(v32, 32, 0);
        *v14 = &unk_1F5CEF848;
        v14[1] = v2;
        v14[2] = re::ecs2::UITreeTracker::willDeactivateTrackedComponent;
        v14[3] = 0;
        v33 = v14;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v4, v31, *(v2 + 8), 0);
        v26.n128_u64[1] = v15;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        v16 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v31);
        v29 = re::globalAllocators(v16)[2];
        v17 = (*(*v29 + 32))(v29, 32, 0);
        *v17 = &unk_1F5CEF8A0;
        v17[1] = v2;
        v17[2] = re::ecs2::UITreeTracker::didReparentEntity;
        v17[3] = 0;
        v30 = v17;
        v26.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v4, v28, 0, 0);
        v26.n128_u64[1] = v18;
        re::DynamicArray<re::RigNodeConstraint>::add(&v22, &v26);
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v28);
        v21 = a2;
        v26 = 0uLL;
        v27 = 0;
        v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
        re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(v2 + 160, &v21, v19 ^ (v19 >> 31), &v26);
        if (v26.n128_u32[3] == 0x7FFFFFFF)
        {
          this = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(v2 + 160, v26.n128_u32[2], v26.n128_u64[0]);
          v20 = v22;
          *(this + 8) = v21;
          *(this + 16) = v20;
          *(this + 24) = v23;
          *(this + 48) = v25;
          *(this + 40) = 1;
          ++*(v2 + 200);
        }

        else
        {
          this = v22;
          if (v22)
          {
            if (v25)
            {
              return (*(*v22 + 40))();
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t re::ecs2::UITreeTracker::didActivateRootComponent(void *a1, unint64_t a2)
{
  v3 = a2;
  if (*a1 && a1[1] && (*(a2 + 387) & 1) == 0 && (*(a2 + 305) & 8) == 0)
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add((a1 + 2), &v3);
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::willDeactivateRootComponent(re::ecs2::UITreeTracker *a1, unint64_t a2)
{
  v14 = a2;
  if (*a1 && *(a1 + 1))
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 16, &v14);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 112, &v14);
    v3 = v14;
    v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v15, a1 + 256, v14, v4 ^ (v4 >> 31));
    if (v16 != 0x7FFFFFFF)
    {
      v5 = *(a1 + 34) + 72 * v16;
      v6 = *(v5 + 48);
      if (v6)
      {
        v7 = 0;
        v8 = (*(v5 + 32) + 8);
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
            LODWORD(v7) = *(v5 + 48);
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
        v10 = *(v5 + 48);
        do
        {
          v11 = *(*(v5 + 32) + 24 * v7 + 16);
          v15 = v11;
          if ((*(v11 + 304) & 0x801) == 1 && (*(v11 + 387) & 1) == 0)
          {
            re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 64, &v15);
            v10 = *(v5 + 48);
          }

          if (v10 <= v7 + 1)
          {
            v12 = v7 + 1;
          }

          else
          {
            v12 = v10;
          }

          while (v12 - 1 != v7)
          {
            LODWORD(v7) = v7 + 1;
            if ((*(*(v5 + 32) + 24 * v7 + 8) & 0x80000000) != 0)
            {
              goto LABEL_22;
            }
          }

          LODWORD(v7) = v12;
LABEL_22:
          ;
        }

        while (v7 != v6);
        v3 = v14;
      }
    }

    re::ecs2::UITreeTracker::removeRootEntity(a1, v3);
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::didActivateTrackedComponent(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (*a1 && *(a1 + 8) && *(a1 + 284) && (*(a2 + 387) & 1) == 0 && (*(a2 + 305) & 8) == 0)
  {
    re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 64, &v3);
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::willDeactivateTrackedComponent(re::ecs2::UITreeTracker *a1, re::ecs2::Entity *a2)
{
  v4 = a2;
  if (*a1 && *(a1 + 1))
  {
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 64, &v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 112, &v4);
    re::ecs2::UITreeTracker::removeTrackedEntity(a1, v4);
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::didReparentEntity(uint64_t a1, unint64_t a2)
{
  v16 = a2;
  if (*a1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      if (*(a1 + 284))
      {
        if ((*(a2 + 304) & 0x801) == 1 && (*(a2 + 387) & 1) == 0)
        {
          v3 = *(a2 + 98);
          if (*(a2 + 98))
          {
            v4 = (*a1 + 16);
            v5 = vld1q_dup_s16(v4);
            v6 = *(a2 + 104);
            v7 = 1;
            v8 = v6;
            v9 = *(a2 + 98);
            while (1)
            {
              v10 = vandq_s8(vceqq_s16(v5, *v8), xmmword_1E306AC00);
              v10.i16[0] = vmaxvq_u16(v10);
              if (v10.i32[0])
              {
                break;
              }

              v7 -= 8;
              ++v8;
              if (!--v9)
              {
                goto LABEL_12;
              }
            }

            if (v10.u16[0] - v7 < *(a2 + 96))
            {
LABEL_17:
              re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(a1 + 112, &v16);
              return 0;
            }

LABEL_12:
            v11 = (v2 + 16);
            v12 = vld1q_dup_s16(v11);
            for (i = 1; ; i -= 8)
            {
              v14 = vandq_s8(vceqq_s16(v12, *v6), xmmword_1E306AC00);
              v14.i16[0] = vmaxvq_u16(v14);
              if (v14.i32[0])
              {
                break;
              }

              ++v6;
              if (!--v3)
              {
                return 0;
              }
            }

            if (v14.u16[0] - i < *(a2 + 96))
            {
              goto LABEL_17;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::UITreeTracker::unregisterScene(uint64_t this, unint64_t a2)
{
  if (*this)
  {
    if (*(this + 8))
    {
      v2 = this + 160;
      if (*(this + 160))
      {
        v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
        v5 = *(*(this + 168) + 4 * ((v4 ^ (v4 >> 31)) % *(this + 184)));
        if (v5 != 0x7FFFFFFF)
        {
          v6 = *(this + 176);
          while (*(v6 + (v5 << 6) + 8) != a2)
          {
            v5 = *(v6 + (v5 << 6)) & 0x7FFFFFFF;
            if (v5 == 0x7FFFFFFF)
            {
              return this;
            }
          }

          v16 = a2;
          v7 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(this + 160, &v16);
          v8 = *v7;
          *v7 = 0;
          *(v7 + 8) = 0;
          v9 = *(v7 + 16);
          *(v7 + 16) = 0;
          v10 = *(v7 + 32);
          *(v7 + 32) = 0;
          ++*(v7 + 24);
          v16 = a2;
          this = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v2, &v16);
          v11 = *(a2 + 288);
          if (v11 && v9)
          {
            v12 = &v10[2 * v9];
            v13 = v10;
            do
            {
              v14 = *v13;
              v15 = v13[1];
              v13 += 2;
              this = re::EventBus::unsubscribe(v11, v14, v15);
            }

            while (v13 != v12);
          }

          if (v8)
          {
            if (v10)
            {
              return (*(*v8 + 40))(v8, v10);
            }
          }
        }
      }
    }
  }

  return this;
}

unint64_t *re::ecs2::UITreeTracker::removeTrackedEntity(re::ecs2::UITreeTracker *this, re::ecs2::Entity *a2)
{
  v8 = a2;
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 208, &v8);
  if (result)
  {
    v4 = result;
    re::HashTable<re::ecs2::Entity const*,re::ecs2::DepthMitigationState,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 208, &v8);
    v5 = *v4;
    v7 = *(*v4 + 312);
    result = re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 256, v5);
    if (result)
    {
      v6 = result;
      result = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(result, &v8);
      if (!*(v6 + 7))
      {
        re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(this + 256, *v4);
        return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 352, &v7);
      }
    }
  }

  return result;
}

void re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v10, a1, a2, v3 ^ (v3 >> 31));
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 72 * v12);
    v7 = *v6 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
    }

    else
    {
      *(v5 + 72 * v13) = *(v5 + 72 * v13) & 0x80000000 | v7;
    }

    v8 = *v6;
    if ((*v6 & 0x80000000) != 0)
    {
      *v6 = v8 & 0x7FFFFFFF;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v6 + 2);
      v5 = *(a1 + 16);
      v8 = *(v5 + 72 * v4);
    }

    v9 = *(a1 + 40);
    *(v5 + 72 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v9 + 1;
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF7F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF7F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF848;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF848;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEF8A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UITreeTracker,REEventHandlerResult (re::ecs2::UITreeTracker::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF8A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
                v18 = re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24), *(v13 + 64));
                v19 = *(v13 + 8);
                *(v18 + 16) = 0u;
                v18 += 16;
                *(v18 - 8) = v19;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v18, (v13 + 16));
              }

              ++v17;
              v13 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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

void *re::ecs2::allocInfo_SkyboxComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_241, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_241))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7890, "SkyboxComponent");
    __cxa_guard_release(&_MergedGlobals_241);
  }

  return &unk_1EE1A7890;
}

void re::ecs2::initInfo_SkyboxComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v24[0] = 0x86D071A0DABBBDE6;
  v24[1] = "SkyboxComponent";
  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  *(this + 2) = v25;
  if ((atomic_load_explicit(&qword_1EE1A7868, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7868))
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
    qword_1EE1A7878 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_float(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "intensityExponent";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1A7880 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_AssetHandle(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "material";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x2000000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1A7888 = v22;
    __cxa_guard_release(&qword_1EE1A7868);
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A7878;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SkyboxComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SkyboxComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SkyboxComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SkyboxComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs215SkyboxComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v23 = v25;
}

double re::internal::defaultConstruct<re::ecs2::SkyboxComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE2590;
  result = 0.0;
  *(v3 + 28) = 0u;
  *(v3 + 44) = 0u;
  *(v3 + 60) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::SkyboxComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[7];
  if (v4)
  {

    a3[7] = 0;
  }

  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::SkyboxComponent>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE2590;
  result = 0.0;
  *(v1 + 28) = 0u;
  *(v1 + 44) = 0u;
  *(v1 + 60) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::SkyboxComponent>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {

    a1[7] = 0;
  }

  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::allocInfo_SkyboxSystem(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1A7870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7870))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7920, "SkyboxSystem");
    __cxa_guard_release(&qword_1EE1A7870);
  }

  return &unk_1EE1A7920;
}

void re::initInfo_SkyboxSystem(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x3D0F2824BC4FC7F2;
  v8[1] = "SkyboxSystem";
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
  *(this + 8) = &re::initInfo_SkyboxSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::SkyboxSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::SkyboxSystem>;
  *(this + 11) = re::internal::defaultRetain<re::SkyboxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::SkyboxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::SkyboxSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::SkyboxSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

double re::internal::defaultConstruct<re::SkyboxSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v3 = &unk_1F5CEF8F8;
  return result;
}

double re::internal::defaultConstructV2<re::SkyboxSystem>(uint64_t a1)
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
  *v1 = &unk_1F5CEF8F8;
  return result;
}

double re::SkyboxSystem::willAddSceneToECSService(re::SkyboxSystem *this, re::ecs2::Scene *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v5 = this;
  *(&v5 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::erasedMemberCallback<&re::SkyboxSystem::onActivateSkyboxComponent,re::SkyboxSystem>;
  v6 = 0;
  v7 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 96), &v5);
}

void re::SkyboxSystem::willRemoveSceneFromECSService(re::SkyboxSystem *this, re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v4 = this;
  *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::erasedMemberCallback<&re::SkyboxSystem::onActivateSkyboxComponent,re::SkyboxSystem>;
  v5 = 0;
  v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 96, &v4);
}

void *re::SkyboxSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v230 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 200);
  if (v3)
  {
    v4 = result;
    v5 = *(a3 + 216);
    v6 = &v5[v3];
    v7.i64[0] = 0x7F0000007FLL;
    v7.i64[1] = 0x7F0000007FLL;
    v153 = vnegq_f32(v7);
    v155 = result;
    v152 = v6;
    do
    {
      v158 = *v5;
      if (*v5)
      {
        v8 = *(v4 + 224);
        if (!v8 || (*(v8 + 432) & 0x10) != 0)
        {
          re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v180);
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v179, 3013, v4, 1, 0, 0);
          if (!*(v4 + 240))
          {
            goto LABEL_125;
          }

          if (!*(v4 + 232))
          {
            goto LABEL_126;
          }

          v154 = v5;
          v10 = (*(**(v4 + 256) + 24))(*(v4 + 256));
          v11 = (*(*v10 + 16))(v10);
          if (*(v11 + 31))
          {
            v12 = *(v11 + 31);
          }

          else
          {
            v12 = *(v11 + 4);
          }

          v177 = 0;
          v175 = 0u;
          v176 = 0u;
          v178 = 0x7FFFFFFFLL;
          v169 = re::RenderManager::perFrameAllocator(*(v4 + 232));
          v13 = re::ecs2::SceneComponentTable::get((v158 + 200), re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v13)
          {
            v14 = *(v13 + 384);
            if (v14)
            {
              v15 = *(v13 + 400);
              v16 = 8 * v14;
              do
              {
                v17 = *v15;
                v18 = *(*v15 + 16);
                if (*(v18 + 304))
                {
                  (*(*v10 + 8))(__dst, v10, *(*v15 + 16));
                  v19 = __dst[0].i8[0] ? __dst[0].i64[1] : 0;
                  re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(__dst, &v175, v19);
                  if (__dst[0].i32[3] == 0x7FFFFFFF)
                  {
                    v20 = *(v17 + 40);
                    if (v20 && (v21 = atomic_load((v20 + 896)), v21 == 2))
                    {
                      re::TransformService::worldMatrix(*(v155 + 288), v18, 0, v228);
                      __dst[0] = *v228;
                      __dst[1] = *&v228[16];
                      __dst[2] = *&v228[32];
                      QuaternionFrom = re::makeQuaternionFromMatrix<float>(__dst);
                      v24 = v23;
                      v25 = QuaternionFrom;
                      ++*(*(v17 + 40) + 276);
                      v26 = re::AssetHandle::loadedAsset<re::MaterialAsset>((v17 + 32));
                      v27 = *(v26 + 1784);
                      if (v27)
                      {
                        v27 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v27, v169);
                      }

                      v167 = v27;
                      v28 = *(v17 + 56);
                      if (!v28)
                      {
                        __dst[0].i64[0] = *(v155 + 232);
                        re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>(__dst, __src);
                        v29 = *(v17 + 56);
                        v28 = *__src;
                        *(v17 + 56) = *__src;
                        *__src = v29;
                        if (v29)
                        {

                          v28 = *(v17 + 56);
                        }
                      }

                      v30 = v25;
                      v31 = *&v24;
                      v32 = v31 + v31;
                      v33 = (*&v30 + *&v30) * *&v30;
                      v34 = (*(&v25 + 1) + *(&v25 + 1)) * *(&v25 + 1);
                      v35 = (v31 + v31) * v31;
                      v36 = (*&v30 + *&v30) * *(&v25 + 1);
                      v37 = (*&v30 + *&v30) * *&v24;
                      v38 = (*(&v25 + 1) + *(&v25 + 1)) * *&v24;
                      v39 = (*&v30 + *&v30) * *(&v24 + 1);
                      v40 = (*(&v25 + 1) + *(&v25 + 1)) * *(&v24 + 1);
                      *&v41 = v37 - v40;
                      *v42.i32 = 1.0 - (v34 + v35);
                      *&v42.i32[1] = v36 + (v32 * *(&v24 + 1));
                      v43.i32[3] = 0;
                      *v43.i32 = v37 + v40;
                      *&v43.i32[1] = v38 - v39;
                      v44 = vzip1q_s32(v42.u64[0], v43.u64[0]);
                      v42.i64[1] = v41;
                      *&v45 = v39 + v38;
                      *v46.i32 = v36 - (v32 * *(&v24 + 1));
                      *&v46.i32[1] = 1.0 - (v33 + v35);
                      v47 = vzip1q_s32(v46.u64[0], 0);
                      v46.i64[1] = v45;
                      *&v43.i32[2] = 1.0 - (v33 + v34);
                      v48 = vzip2q_s32(v42, v43);
                      v49 = vzip2q_s32(v46, xmmword_1E30474D0);
                      __dst[0] = vzip1q_s32(v44, v47);
                      __dst[1] = vzip2q_s32(v44, v47);
                      __dst[2] = vzip1q_s32(v48, v49);
                      __dst[3] = vzip2q_s32(v48, v49);
                      re::MaterialParameterBlock::setMatrix4x4F(v28, "matrixRotation", __dst, v174);
                      v174[0] = 0;
                      v50 = exp2f(*(v17 + 28));
                      re::MaterialParameterBlock::setFloat(v173, v28, "intensityScale", v50);
                      v173[0] = 0;
                      v51 = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v28, v169);
                      re::MeshAssetLoader::sharedCube(*(v155 + 240), 1, v172);
                      v52 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v172);
                      v53 = *(v18 + 312);
                      memset(__src, 0, 80);
                      *&__src[80] = v153;
                      *&v54 = 0x7F0000007FLL;
                      *(&v54 + 1) = 0x7F0000007FLL;
                      *&__src[96] = v54;
                      v211 = 0;
                      v213[0] = 0;
                      *&v213[8] = 0u;
                      memset(&__src[112], 0, 161);
                      memset(&__src[280], 0, 140);
                      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                      {
                        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                      }

                      *&v213[24] = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
                      __asm { FMOV            V0.2S, #1.0 }

                      *&v214 = _D0;
                      DWORD2(v214) = 1065353216;
                      v215 = 0u;
                      memset(v216, 0, 19);
                      *&v216[20] = 0xFFFFFFFF00000001;
                      v216[28] = 0;
                      v217 = 0;
                      v220 = 0;
                      v221 = 0;
                      *v226 = 65537;
                      v226[4] = 1;
                      *&v226[8] = xmmword_1E3060D60;
                      *&v226[24] = 16788070;
                      v227 = 0;
                      *&v226[28] = 0;
                      re::MeshScene::setPrecomputedRenderMeshData(__src, v169, *(v52 + 1080), *(v52 + 1072), *(v52 + 1104), *(v52 + 1096), *(v52 + 1128), *(v52 + 1120), *(v52 + 1152), *(v52 + 1144), *(v52 + 1176), *(v52 + 1168));
                      v60 = v169;
                      *&__src[128] = *v228;
                      *&__src[144] = *&v228[16];
                      *&__src[160] = *&v228[32];
                      *&__src[176] = v229;
                      v61 = v19;
                      if (v167)
                      {
                        v62 = (*(*v169 + 32))(v169, 8, 8);
                        *v62 = v167;
                        *&__src[296] = v62;
                        v60 = v169;
                        *&__src[304] = 1;
                      }

                      v63 = *(v26 + 1776);
                      v64 = v60;
                      v65 = (*(*v60 + 32))(v60, 8, 8);
                      *v65 = v63;
                      *&__src[192] = v65;
                      *&__src[200] = 1;
                      v66 = (*(*v64 + 32))(v64, 8, 8);
                      *v66 = v51;
                      *&__src[280] = v66;
                      *&__src[288] = 1;
                      *&v216[8] = v53;
                      LODWORD(v67) = *v216 & 0xFFFFFFF7;
                      HIDWORD(v67) = *&v216[4] | 8;
                      *v216 = v67;
                      memcpy(__dst, __src, sizeof(__dst));
                      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::HashBrown(&v185, &__src[352]);
                      v189 = *&__src[416];
                      v190 = v211;
                      if (v211 == 1)
                      {
                        v191 = v212;
                      }

                      v194 = v214;
                      v195 = v215;
                      v196[0] = *v216;
                      *(v196 + 13) = *&v216[13];
                      v192 = *v213;
                      v193 = *&v213[16];
                      v197 = v217;
                      if (v217 == 1)
                      {
                        v198 = v218;
                        v199 = v219;
                      }

                      v200 = v220;
                      v201 = v221;
                      if (v221 == 1)
                      {
                        v202 = v222;
                        v203 = v223;
                        v204 = v224;
                        v205 = v225;
                      }

                      v206 = *v226;
                      v207 = *&v226[16];
                      v208 = v227;
                      v209 = v53;
                      v181 = 0;
                      v182 = 0;
                      v183 = 0;
                      re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v181, &v175, v61);
                      if (HIDWORD(v182) == 0x7FFFFFFF)
                      {
                        v68 = re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v175, v182, v181);
                        *(v68 + 8) = v61;
                        memcpy((v68 + 16), __dst, 0x160uLL);
                        v69 = *(&v188 + 1);
                        *(v68 + 416) = v188;
                        *(v68 + 424) = v69;
                        v70 = v186;
                        *(v68 + 368) = v185;
                        *(v68 + 384) = v70;
                        v185 = 0u;
                        v186 = 0u;
                        *(v68 + 400) = v187;
                        v187 = 0u;
                        v188 = 0u;
                        *(v68 + 432) = v189;
                        LODWORD(v69) = v190;
                        *(v68 + 440) = v190;
                        if (v69 == 1)
                        {
                          *(v68 + 448) = v191;
                        }

                        v71 = v195;
                        *(v68 + 488) = v194;
                        *(v68 + 504) = v71;
                        *(v68 + 520) = v196[0];
                        *(v68 + 533) = *(v196 + 13);
                        v72 = v193;
                        *(v68 + 456) = v192;
                        *(v68 + 472) = v72;
                        v73 = v197;
                        *(v68 + 560) = v197;
                        if (v73 == 1)
                        {
                          v74 = v199;
                          *(v68 + 576) = v198;
                          *(v68 + 592) = v74;
                        }

                        *(v68 + 608) = v200;
                        v75 = v201;
                        *(v68 + 624) = v201;
                        if (v75 == 1)
                        {
                          v76 = v203;
                          *(v68 + 640) = v202;
                          *(v68 + 656) = v76;
                          v77 = v205;
                          *(v68 + 672) = v204;
                          *(v68 + 688) = v77;
                        }

                        v78 = v207;
                        *(v68 + 704) = v206;
                        *(v68 + 720) = v78;
                        *(v68 + 736) = v208;
                        *(v68 + 752) = v209;
                        ++HIDWORD(v178);
                      }

                      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v185);
                      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&__src[352]);
                      re::AssetHandle::~AssetHandle(v172);
                    }

                    else
                    {
                      re::AssetHandle::loadAsync((v17 + 32));
                    }
                  }
                }

                ++v15;
                v16 -= 8;
              }

              while (v16);
            }
          }

          v79 = *(*(v155 + 232) + 112);
          if (v79)
          {
            v80 = re::RenderFrameBox::get((v79 + 328), 0xFFFFFFFFFFFFFFFuLL);
          }

          else
          {
            v80 = 0;
          }

          v159 = v177;
          if (v177)
          {
            v81 = 0;
            v82 = v176;
            while ((*v82 & 0x80000000) == 0)
            {
              v82 += 196;
              if (v177 == ++v81)
              {
                LODWORD(v81) = v177;
                break;
              }
            }
          }

          else
          {
            LODWORD(v81) = 0;
          }

          if (v81 != v177)
          {
            v83 = v176;
            v157 = v80;
            while (1)
            {
              v84 = v83 + 784 * v81;
              re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(&v181, v158, *(v84 + 8), v80);
              v171 = v181 >> 1;
              v85 = re::RenderFrameData::stream((v80 + 33), &v171);
              re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v85, v172, __dst);
              if (__dst[0].i32[3] == 0x7FFFFFFF)
              {
                v86 = *(*(v85 + 48) + 8);
                v87 = (*(*v86 + 32))(v86, 56, 8);
                *v87 = 0;
                *(v87 + 8) = 0;
                *(v87 + 16) = 1;
                *(v87 + 32) = 0;
                *(v87 + 40) = 0;
                *(v87 + 24) = 0;
                *(v87 + 48) = 0;
                v88 = re::BucketArray<re::MeshScene,4ul>::init(v87, v86, 1uLL);
                *&__src[24] = re::globalAllocators(v88)[2];
                *__src = &unk_1F5CEF9C8;
                *&__src[8] = v86;
                *&__src[32] = __src;
                __dst[0].i64[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshScene,4ul> *>::__handle[abi:nn200100];
                __dst[0].i64[1] = v87;
                __dst[3].i64[1] = *&__src[24];
                __dst[4].i64[0] = 0;
                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&__dst[2], __src);
                v89 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v85, v172, __dst);
                if (__dst[4].i64[0])
                {
                  *v228 = __dst;
                  (*(*__dst[4].i64[0] + 16))(__dst[4].i64[0], v228);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&__dst[2]);
                if (__dst[0].i64[0])
                {
                  (__dst[0].i64[0])(0, __dst, 0, 0, 0);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(__src);
              }

              else
              {
                v89 = (*(v85 + 16) + 96 * __dst[0].u32[3] + 16);
              }

              v90 = v84 + 16;
              memcpy(__dst, (v84 + 16), sizeof(__dst));
              v92 = *(v84 + 424);
              *(&v188 + 1) = v92;
              *(v84 + 424) = 0;
              v93 = *(v84 + 368);
              *&v185 = v93;
              *(v84 + 368) = 0;
              v168 = *(v84 + 376);
              *(&v185 + 1) = v168;
              *(v84 + 376) = 0;
              v166 = *(v84 + 384);
              *&v186 = v166;
              *(v84 + 384) = 0;
              v165 = *(v84 + 408);
              *(&v187 + 1) = v165;
              *(v84 + 408) = 0;
              v164 = *(v84 + 416);
              *&v188 = v164;
              *(v84 + 416) = 0;
              v163 = *(v84 + 392);
              *(&v186 + 1) = v163;
              *(v84 + 392) = 0;
              v162 = *(v84 + 400);
              *&v187 = v162;
              *(v84 + 400) = 0;
              v161 = *(v84 + 432);
              v189 = v161;
              v190 = *(v84 + 440);
              v94 = v190;
              if (v190 == 1)
              {
                v156 = *(v90 + 432);
                v191 = v156;
              }

              v95 = *(v90 + 456);
              v192 = *(v90 + 440);
              v193 = v95;
              v96 = *(v90 + 472);
              v97 = *(v90 + 488);
              v98 = *(v90 + 504);
              *(v196 + 13) = *(v90 + 517);
              v195 = v97;
              v196[0] = v98;
              v194 = v96;
              v197 = *(v90 + 544);
              v99 = v197;
              if (v197 == 1)
              {
                v100 = *(v90 + 576);
                v198 = *(v90 + 560);
                v199 = v100;
              }

              v170 = v93;
              v101 = v92;
              v160 = *(v90 + 592);
              v200 = v160;
              v201 = *(v90 + 608);
              v102 = v201;
              if (v201 == 1)
              {
                v103 = *(v90 + 624);
                v104 = *(v90 + 640);
                v105 = *(v90 + 672);
                v204 = *(v90 + 656);
                v205 = v105;
                v202 = v103;
                v203 = v104;
              }

              v106 = *(v90 + 688);
              v107 = *(v90 + 704);
              v208 = *(v90 + 720);
              v206 = v106;
              v207 = v107;
              v108 = *(v91 + 40);
              v109 = *(v91 + 8);
              if (v108 + 1 > 4 * v109)
              {
                re::BucketArray<re::MeshScene,4ul>::setBucketsCapacity(v91, (v108 + 4) >> 2);
                v109 = *(v91 + 8);
              }

              v110 = v108 >> 2;
              if (v109 <= v108 >> 2)
              {
                break;
              }

              if (*(v91 + 16))
              {
                v111 = v91 + 24;
              }

              else
              {
                v111 = *(v91 + 32);
              }

              v112 = *(v111 + 8 * v110);
              ++*(v91 + 40);
              ++*(v91 + 48);
              v110 = v112 + 736 * (v108 & 3);
              memcpy(v110, __dst, 0x160uLL);
              *(v110 + 408) = v101;
              *(&v188 + 1) = 0;
              *(v110 + 352) = v170;
              *&v185 = 0;
              *(v110 + 360) = v168;
              *(&v185 + 1) = 0;
              *(v110 + 368) = v166;
              *&v186 = 0;
              *(v110 + 392) = v165;
              *(&v187 + 1) = 0;
              *(v110 + 400) = v164;
              *&v188 = 0;
              *(v110 + 376) = v163;
              *(&v186 + 1) = 0;
              *(v110 + 384) = v162;
              *&v187 = 0;
              *(v110 + 416) = v161;
              *(v110 + 424) = v94;
              if (v94)
              {
                *(v110 + 432) = v156;
              }

              v113 = v193;
              *(v110 + 440) = v192;
              *(v110 + 456) = v113;
              v114 = v194;
              v115 = v195;
              v116 = v196[0];
              *(v110 + 517) = *(v196 + 13);
              *(v110 + 488) = v115;
              *(v110 + 504) = v116;
              *(v110 + 472) = v114;
              *(v110 + 544) = v99;
              if (v99)
              {
                v117 = v199;
                *(v110 + 560) = v198;
                *(v110 + 576) = v117;
              }

              *(v110 + 592) = v160;
              *(v110 + 608) = v102;
              if (v102)
              {
                v118 = v202;
                v119 = v203;
                v120 = v205;
                *(v110 + 656) = v204;
                *(v110 + 672) = v120;
                *(v110 + 624) = v118;
                *(v110 + 640) = v119;
              }

              v121 = v206;
              v122 = v207;
              *(v110 + 720) = v208;
              *(v110 + 688) = v121;
              *(v110 + 704) = v122;
              v124 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v185);
              v125 = *(v91 + 40);
              v80 = v157;
              if (!v125)
              {
                goto LABEL_119;
              }

              re::BucketArray<re::MeshScene,4ul>::operator[](v91, v125 - 1);
              v172[0] = v181 >> 1;
              v126 = re::RenderFrameData::stream((v157 + 33), v172);
              re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v126, v228, __dst);
              if (__dst[0].i32[3] == 0x7FFFFFFF)
              {
                v127 = *(*(v126 + 48) + 8);
                v128 = (*(*v127 + 32))(v127, 56, 8);
                *v128 = 0;
                *(v128 + 8) = 0;
                *(v128 + 16) = 1;
                *(v128 + 32) = 0;
                *(v128 + 40) = 0;
                *(v128 + 24) = 0;
                *(v128 + 48) = 0;
                v129 = re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::init(v128, v127, 1uLL);
                __dst[0].i64[0] = std::__any_imp::_SmallHandler<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__handle[abi:nn200100];
                __dst[0].i64[1] = v128;
                __dst[3].i64[1] = re::globalAllocators(v129)[2];
                __dst[4].i64[0] = 0;
                v130 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v126, v228, __dst);
                if (__dst[4].i64[0])
                {
                  *__src = __dst;
                  (*(*__dst[4].i64[0] + 16))(__dst[4].i64[0], __src);
                }

                re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&__dst[2]);
                if (__dst[0].i64[0])
                {
                  (__dst[0].i64[0])(0, __dst, 0, 0, 0);
                }
              }

              else
              {
                v130 = (*(v126 + 16) + 96 * __dst[0].u32[3] + 16);
              }

              v133 = *v131;
              v134 = *(v90 + 736);
              v135 = *(*v131 + 5);
              v110 = *(*v131 + 1);
              if (v135 + 1 > 4 * v110)
              {
                re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::setBucketsCapacity(*v131, (v135 + 4) >> 2);
                v110 = *(v133 + 8);
              }

              v94 = v135 >> 2;
              if (v110 <= v135 >> 2)
              {
                goto LABEL_120;
              }

              if (*(v133 + 16))
              {
                v136 = v133 + 24;
              }

              else
              {
                v136 = *(v133 + 32);
              }

              v137 = *(v136 + 8 * v94);
              ++*(v133 + 40);
              ++*(v133 + 48);
              *(v137 + 8 * (v135 & 3)) = v134;
              v138 = *(v133 + 40);
              if (!v138)
              {
                goto LABEL_124;
              }

              v139 = re::BucketArray<unsigned long,4ul>::operator[](v133, v138 - 1);
              if (v181)
              {
                if (v181)
                {
                }
              }

              if (v177 <= v81 + 1)
              {
                v140 = v81 + 1;
              }

              else
              {
                v140 = v177;
              }

              v83 = v176;
              while (v140 - 1 != v81)
              {
                LODWORD(v81) = v81 + 1;
                if ((*(v176 + 784 * v81) & 0x80000000) != 0)
                {
                  goto LABEL_108;
                }
              }

              LODWORD(v81) = v140;
LABEL_108:
              if (v81 == v159)
              {
                goto LABEL_109;
              }
            }

            v172[0] = 0;
            memset(__src, 0, 80);
            v94 = MEMORY[0x1E69E9C10];
            v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v228 = 136315906;
            *&v228[4] = "operator[]";
            *&v228[12] = 1024;
            if (v145)
            {
              v146 = 3;
            }

            else
            {
              v146 = 2;
            }

            *&v228[14] = 858;
            *&v228[18] = 2048;
            *&v228[20] = v108 >> 2;
            *&v228[28] = 2048;
            *&v228[30] = v109;
            _os_log_send_and_compose_impl(v146, v172, __src, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v228, 38, v150, v151);
            _os_crash_msg();
            __break(1u);
LABEL_119:
            re::internal::assertLog(4, v123, v124, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
            _os_crash("assertion failure: (m_size > 0) Array is empty");
            __break(1u);
LABEL_120:
            *v228 = 0;
            memset(__dst, 0, 80);
            v147 = MEMORY[0x1E69E9C10];
            v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *__src = 136315906;
            *&__src[4] = "operator[]";
            *&__src[12] = 1024;
            if (v148)
            {
              v149 = 3;
            }

            else
            {
              v149 = 2;
            }

            *&__src[14] = 858;
            *&__src[18] = 2048;
            *&__src[20] = v94;
            *&__src[28] = 2048;
            *&__src[30] = v110;
            _os_log_send_and_compose_impl(v149, v228, __dst, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", __src, 38, v150, v151);
            _os_crash_msg();
            __break(1u);
LABEL_124:
            re::internal::assertLog(4, v132, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
            _os_crash("assertion failure: (m_size > 0) Array is empty");
            __break(1u);
LABEL_125:
            re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "m_assetService", "updateSceneInternal", 114);
            _os_crash("assertion failure: (m_assetService) ");
            __break(1u);
LABEL_126:
            re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 115);
            _os_crash("assertion failure: (m_renderManager) ");
            __break(1u);
          }

LABEL_109:
          v141 = re::ecs2::SceneComponentTable::get((v158 + 200), re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v4 = v155;
          if (!v141 || !*(v141 + 384))
          {
            v142 = *(v158 + 47);
            __dst[0].i64[0] = re::ecs2::ComponentImpl<re::ecs2::SkyboxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
            re::ecs2::SystemSchedulingDisabler::disableSchedulingIfNoComponent(v155, v142, __dst, 1);
          }

          re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(&v175);
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v179, v143, v144);
          result = re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v180);
          v5 = v154;
          v6 = v152;
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t *re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 368;
      do
      {
        v6 = a1[2] + v5;
        v7 = *(v6 - 368);
        if (v7 < 0)
        {
          *(v6 - 368) = v7 & 0x7FFFFFFF;
          re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v6);
          v3 = *(a1 + 8);
        }

        ++v4;
        v5 += 784;
      }

      while (v4 < v3);
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

void re::SkyboxSystem::~SkyboxSystem(re::SkyboxSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs215SkyboxComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SkyboxComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

void re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 784 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, unint64_t a3)
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
  if (*(v8 + 784 * v7 + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    v7 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + 784 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 784 * v6 + 8) != a3)
  {
    LODWORD(v9) = *(v8 + 784 * v7) & 0x7FFFFFFF;
    while (1)
    {
      v7 = v9;
      v9 = *(v8 + 784 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 784 * v9 + 8) == a3)
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

uint64_t re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v40, 0, 36);
          *&v40[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v40, v9, v8);
          v11 = *v40;
          *v40 = *a1;
          *a1 = v11;
          v12 = *&v40[16];
          v13 = *(a1 + 16);
          *&v40[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v40[24];
          *&v40[24] = *(a1 + 24);
          v14 = *&v40[32];
          *(a1 + 24) = v15;
          ++*&v40[40];
          if (v14)
          {
            v16 = 0;
            v17 = 784 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = v13 + v16;
                v19 = re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v16 + 768) % *(a1 + 24), *(v13 + v16 + 768));
                *(v19 + 8) = *(v13 + v16 + 8);
                memcpy((v19 + 16), (v13 + v16 + 16), 0x160uLL);
                *(v19 + 368) = 0u;
                *(v19 + 384) = 0u;
                *(v19 + 400) = 0u;
                *(v19 + 416) = 0u;
                re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((v19 + 368), (v13 + v16 + 368));
                *(v19 + 432) = *(v13 + v16 + 432);
                v20 = *(v13 + v16 + 440);
                *(v19 + 440) = v20;
                if (v20 == 1)
                {
                  *(v19 + 448) = *(v18 + 448);
                }

                v21 = *(v18 + 472);
                *(v19 + 456) = *(v18 + 456);
                *(v19 + 472) = v21;
                v22 = *(v18 + 488);
                v23 = *(v18 + 504);
                v24 = *(v18 + 520);
                *(v19 + 533) = *(v18 + 533);
                *(v19 + 504) = v23;
                *(v19 + 520) = v24;
                *(v19 + 488) = v22;
                v25 = *(v18 + 560);
                *(v19 + 560) = v25;
                if (v25 == 1)
                {
                  v26 = *(v13 + v16 + 592);
                  *(v19 + 576) = *(v13 + v16 + 576);
                  *(v19 + 592) = v26;
                }

                v27 = v13 + v16;
                *(v19 + 608) = *(v13 + v16 + 608);
                v28 = *(v13 + v16 + 624);
                *(v19 + 624) = v28;
                if (v28 == 1)
                {
                  v29 = *(v27 + 640);
                  v30 = *(v27 + 656);
                  v31 = *(v27 + 688);
                  *(v19 + 672) = *(v27 + 672);
                  *(v19 + 688) = v31;
                  *(v19 + 640) = v29;
                  *(v19 + 656) = v30;
                }

                v32 = *(v27 + 704);
                v33 = *(v27 + 720);
                *(v19 + 736) = *(v27 + 736);
                *(v19 + 704) = v32;
                *(v19 + 720) = v33;
                *(v19 + 752) = *(v27 + 752);
              }

              v16 += 784;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::SkyboxSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)::SkyboxData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v40);
        }
      }

      else
      {
        if (v8)
        {
          v36 = 2 * v7;
        }

        else
        {
          v36 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v34 = *(a1 + 16);
    v35 = *(v34 + 784 * v5);
  }

  else
  {
    v34 = *(a1 + 16);
    v35 = *(v34 + 784 * v5);
    *(a1 + 36) = v35 & 0x7FFFFFFF;
  }

  v37 = v34 + 784 * v5;
  *v37 = v35 | 0x80000000;
  v38 = *(a1 + 8);
  *v37 = *(v38 + 4 * a2) | 0x80000000;
  *(v38 + 4 * a2) = v5;
  *(v37 + 768) = a3;
  ++*(a1 + 28);
  return v34 + 784 * v5;
}

_anonymous_namespace_ *re::BucketArray<re::MeshScene,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::MeshScene,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::MeshScene,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 2944, 0);
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

void *std::__any_imp::_SmallHandler<re::BucketArray<re::MeshScene,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshScene,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::MeshScene,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::MeshScene,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MeshScene>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = re::BucketArray<re::MeshScene,4ul>::operator[](v4, i);
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v7 + 352);
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v8 = *(*v2 + 40);

    return v8(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MeshScene>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF9C8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::MeshScene>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEF9C8;
  a2[1] = v2;
  return a2;
}

unint64_t re::BucketArray<re::MeshScene,4ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 2;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 2)
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

  return *(v5 + 8 * v2) + 736 * (a2 & 3);
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::SkyboxMeshID,4ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 4 * a2)
    {
      v4 = *(result + 1);
      if (v4 > a2)
      {
        v5 = *(result + 4);
        do
        {
          v6 = (v3 + 24);
          if ((v5 & 1) == 0)
          {
            v6 = *(v3 + 4);
          }

          result = (*(**v3 + 40))(*v3, v6[v4 - 1]);
          v7 = *(v3 + 4);
          v4 = *(v3 + 1) - 1;
          *(v3 + 1) = v4;
          v5 = v7 + 2;
          *(v3 + 4) = v5;
        }

        while (v4 > a2);
      }

      if (v4 < a2)
      {
        v8 = (v3 + 24);
        do
        {
          result = (*(**v3 + 32))(*v3, 32, 0);
          v9 = result;
          if (*v3)
          {
            v10 = *(v3 + 1);
            v11 = *(v3 + 4);
            if ((v11 & 1) == 0)
            {
              v12 = *v8;
              v14 = v10 >= *v8;
              v13 = v10 + 1;
              v14 = !v14 || v12 >= v13;
              if (v14)
              {
                goto LABEL_24;
              }

              v15 = 2 * v12;
              goto LABEL_20;
            }

            v13 = v10 + 1;
            if (v13 >= 3)
            {
              v15 = 4;
LABEL_20:
              if (v15 <= v13)
              {
                v17 = v13;
              }

              else
              {
                v17 = v15;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v17);
              v11 = *(v3 + 4);
            }
          }

          else
          {
            v16 = *(v3 + 1);
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v16 + 1);
            v11 = *(v3 + 4) + 2;
            *(v3 + 4) = v11;
          }

LABEL_24:
          v18 = (v3 + 24);
          if ((v11 & 1) == 0)
          {
            v18 = *(v3 + 4);
          }

          v19 = *(v3 + 1);
          v18[v19++] = v9;
          *(v3 + 1) = v19;
          *(v3 + 4) += 2;
        }

        while (v19 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

void *std::__any_imp::_SmallHandler<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::ecs2::SkyboxMeshID,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

void *re::ecs2::allocInfo_SpecifyLaneCommand(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A79B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79B8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A7C80, "SpecifyLaneCommand");
    __cxa_guard_release(&qword_1EE1A79B8);
  }

  return &unk_1EE1A7C80;
}

void re::ecs2::initInfo_SpecifyLaneCommand(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v15[0] = 0xF5E828FC47FA9F7CLL;
  v15[1] = "SpecifyLaneCommand";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1A79C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A79C0))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::DynamicString>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "lane";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1A7A40 = v10;
    v11 = re::introspectionAllocator();
    re::IntrospectionInfo<re::AssetHandle [2]>::get(v11, v12);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "renderTarget";
    *(v13 + 16) = &unk_1EE1A7B40;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x2000000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1A7A48 = v13;
    __cxa_guard_release(&qword_1EE1A79C0);
  }

  *(this + 2) = 0x8800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A7A40;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpecifyLaneCommand>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpecifyLaneCommand>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpecifyLaneCommand>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpecifyLaneCommand>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v14 = v16;
}

void re::IntrospectionInfo<re::AssetHandle [2]>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A7A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A10))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7B40);
    __cxa_guard_release(&qword_1EE1A7A10);
  }

  if ((_MergedGlobals_242 & 1) == 0)
  {
    _MergedGlobals_242 = 1;
    v2 = re::introspect_AssetHandle(1, a2);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7B40, v2, 2);
    re::IntrospectionRegistry::add(&unk_1EE1A7B40, v3);
    re::getPrettyTypeName(&v7, &unk_1EE1A7B40);
    if (BYTE8(v7))
    {
      v4 = v8;
    }

    else
    {
      v4 = &v7 + 9;
    }

    if (v7 && (BYTE8(v7) & 1) != 0)
    {
      (*(*v7 + 40))();
    }

    v7 = *(v2 + 2);
    xmmword_1EE1A7B60 = v6;
    if (v9)
    {
      if (v9)
      {
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::SpecifyLaneCommand>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  re::DynamicString::setCapacity(a3, 0);
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 32) = 0u;
  result = NAN;
  *(a3 + 80) = -1;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 116) = 0u;
  return result;
}

double re::internal::defaultDestruct<re::ecs2::SpecifyLaneCommand>(uint64_t a1, uint64_t a2, re::DynamicString *a3)
{
  for (i = 112; i != 96; i -= 8)
  {
    v5 = *(a3 + i);
    if (v5)
    {

      *(a3 + i) = 0;
    }
  }

  do
  {
    v6 = *(a3 + i);
    if (v6)
    {

      *(a3 + i) = 0;
    }

    i -= 8;
  }

  while (i != 80);
  for (j = 56; j != 8; j -= 24)
  {
    re::AssetHandle::~AssetHandle((a3 + j));
  }

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::ecs2::SpecifyLaneCommand>(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  result = NAN;
  *(a1 + 80) = -1;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 116) = 0u;
  return result;
}

double re::internal::defaultDestructV2<re::ecs2::SpecifyLaneCommand>(re::DynamicString *a1)
{
  for (i = 112; i != 96; i -= 8)
  {
    v3 = *(a1 + i);
    if (v3)
    {

      *(a1 + i) = 0;
    }
  }

  do
  {
    v4 = *(a1 + i);
    if (v4)
    {

      *(a1 + i) = 0;
    }

    i -= 8;
  }

  while (i != 80);
  for (j = 56; j != 8; j -= 24)
  {
    re::AssetHandle::~AssetHandle((a1 + j));
  }

  return re::DynamicString::deinit(a1);
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1A7A18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A7A18))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1A7A80);
    qword_1EE1A7A80 = &unk_1F5CEFBD8;
    __cxa_guard_release(&qword_1EE1A7A18);
  }

  if ((byte_1EE1A79B1 & 1) == 0)
  {
    v6 = re::ecs2::introspect_ScopeLanePair(1, a2, a3, a4, a5, a6);
    if ((byte_1EE1A79B1 & 1) == 0)
    {
      v7 = v6;
      byte_1EE1A79B1 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A7A80, 0);
      *&algn_1EE1A7A88[8] = 0x2800000003;
      *&algn_1EE1A7A88[16] = v8;
      *&algn_1EE1A7A88[20] = 0;
      *&xmmword_1EE1A7AA0 = 0;
      *(&xmmword_1EE1A7AA0 + 1) = 0xFFFFFFFFLL;
      unk_1EE1A7AB0 = v7;
      qword_1EE1A7AB8 = 0;
      qword_1EE1A7A80 = &unk_1F5CEFBD8;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1A7A80);
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
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::ScopeLanePair>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1A7AA0 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair> [2]>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1A7A20, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1A7A20);
    if (a1)
    {
      re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7B88);
      __cxa_guard_release(&qword_1EE1A7A20);
    }
  }

  if ((byte_1EE1A79B2 & 1) == 0)
  {
    byte_1EE1A79B2 = 1;
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::ScopeLanePair>>::get(a1, a2, a3, a4, a5, a6);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1A7B88, &qword_1EE1A7A80, 2);
    re::IntrospectionRegistry::add(&unk_1EE1A7B88, v6);
    re::getPrettyTypeName(&v10, &unk_1EE1A7B88);
    if (BYTE8(v10))
    {
      v7 = v11;
    }

    else
    {
      v7 = &v10 + 9;
    }

    if (v10 && (BYTE8(v10) & 1) != 0)
    {
      (*(*v10 + 40))();
    }

    v10 = xmmword_1EE1A7AA0;
    xmmword_1EE1A7BA8 = v9;
    if (v12)
    {
      if (v12)
      {
      }
    }
  }
}