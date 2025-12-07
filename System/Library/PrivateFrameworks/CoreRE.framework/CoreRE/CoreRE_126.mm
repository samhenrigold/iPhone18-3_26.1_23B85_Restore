void re::audio::MeshVisualizer::drawDebugVisMesh(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  if (*(a1 + 96))
  {
    v8 = *(a2 + 8);
    v9 = v8 ? *(v8 + 792) : 0;
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
    re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v9 ^ (v10 >> 31) ^ v10, &v21);
    if (HIDWORD(v22) != 0x7FFFFFFF)
    {
      v11 = *(a2 + 8);
      if (v11)
      {
        v12 = *(v11 + 792);
      }

      else
      {
        v12 = 0;
      }

      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
      re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>(a1, a2, v12 ^ (v13 >> 31) ^ v13, &v21);
      v14 = *(a1 + 16) + 56 * HIDWORD(v22);
      v16 = *(v14 + 32);
      v15 = *(v14 + 40);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v16 + 208))
      {
        if (*(v16 + 16) && *(v16 + 40) != 0)
        {
          if (((v18 & 1) == 0 || *(v16 + 72) == 1) && ((v18 & 2) == 0 || *(v16 + 104) == 1) && ((v18 & 4) == 0 || *(v16 + 136) == 1) && ((v18 & 8) == 0 || *(v16 + 168) == 1) && (v18 < 0x10 || *(v16 + 200) == 1))
          {
            v25 = 0;
            v22 = 0;
            v23 = 0;
            v20[1] = &v15->__vftable;
            v21 = 0;
            v24 = 0;
            v19.i64[0] = 0x7F0000007FLL;
            v19.i64[1] = 0x7F0000007FLL;
            v26 = vnegq_f32(v19);
            v27 = v19;
            v28 = 0;
            v29 = 0;
            v20[0] = v16;
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              re::audio::MeshVisualizer::addMeshAttributes(a1, v20, &v21, a3);
              std::__shared_weak_count::__release_shared[abi:nn200100](v15);
            }

            else
            {
              re::audio::MeshVisualizer::addMeshAttributes(a1, v20, &v21, a3);
            }

            re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::add((a4 + 1056), &v21);
            re::DynamicArray<re::PrimitiveMeshAttribute>::deinit(&v21);
          }
        }
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }
    }
  }
}

__n128 re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 96 * v4;
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  v6 = *(a2 + 8);
  *v5 = *a2;
  *(v5 + 8) = v6;
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(v5 + 16);
  *(v5 + 16) = *(a2 + 16);
  *(a2 + 16) = v7;
  v8 = *(v5 + 32);
  *(v5 + 32) = *(a2 + 32);
  *(a2 + 32) = v8;
  ++*(a2 + 24);
  ++*(v5 + 24);
  result = *(a2 + 48);
  v10 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v10;
  *(v5 + 48) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

BOOL std::__unordered_map_equal<re::audio::anonymous namespace::DebugVertexForHashing,std::__hash_value_type<re::audio::anonymous namespace::DebugVertexForHashing,unsigned int>,re::audio::anonymous namespace::DebugVertexForHashing::Equality,re::audio::anonymous namespace::DebugVertexForHashing::Hash,true>::operator()[abi:nn200100](uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || (v2 & 2) != 0 && *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if ((v2 & 8) != 0 && *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    return *(a1 + 12) == *(a2 + 12);
  }

  return 1;
}

_BYTE *re::audio::anonymous namespace::meshHasMaterials(re::audio::_anonymous_namespace_ *this, const re::GeomMesh *a2)
{
  result = re::internal::GeomAttributeManager::attributeByName((this + 64), re::AcousticMeshAsset::kMaterialAttributeName);
  if (result)
  {
    if (result[16] == 2)
    {
      return ((*(*result + 16))(result) == *(this + 10));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::findEntry<re::AssetHandle>@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v8 = *(a2 + 8);
  if (*(v7 + 56 * v6 + 16) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v9 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 56 * v9 + 16) == v8)
      {
        break;
      }

      v9 = *(v7 + 56 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_11;
      }
    }

    v5 = v9;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

void std::__shared_ptr_emplace<re::audio::DebugVisMesh>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CF4450;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::audio::DebugVisMesh>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 224) == 1)
  {
  }

  if (*(a1 + 192) == 1)
  {
  }

  if (*(a1 + 160) == 1)
  {
  }

  if (*(a1 + 128) == 1)
  {
  }

  if (*(a1 + 96) == 1)
  {
  }

  v2 = *(a1 + 24);
}

uint64_t re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v30, v9, v8);
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
            v17 = 0;
            v18 = 0;
            do
            {
              if ((*(v13 + v17) & 0x80000000) != 0)
              {
                v19 = (v13 + v17);
                v20 = re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24), *(v13 + v17 + 48));
                *(v20 + 16) = 0;
                *(v20 + 24) = 0;
                *(v20 + 8) = 0;
                *(v20 + 16) = v19[2];
                v19[2] = 0;
                v21 = *(v20 + 8);
                *(v20 + 8) = 0;
                *(v20 + 8) = v19[1];
                v19[1] = v21;
                v22 = *(v20 + 24);
                *(v20 + 24) = v19[3];
                v19[3] = v22;
                v13 = *&v30[16];
                v23 = *&v30[16] + v17;
                *(v20 + 32) = *(*&v30[16] + v17 + 32);
                *(v23 + 32) = 0;
                *(v23 + 40) = 0;
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::AssetHandle,std::shared_ptr<re::audio::DebugVisMesh>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::deinit(v30);
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
    v25 = *(v24 + 56 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 56 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 56 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 48) = a3;
  ++*(a1 + 28);
  return v24 + 56 * v5;
}

_anonymous_namespace_ *re::DynamicArray<re::PrimitiveMeshAttribute>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::PrimitiveMeshAttribute>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PrimitiveMeshAttribute>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PrimitiveMeshAttribute>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PrimitiveMeshAttribute>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v15, v17);
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 16);
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
        v10 = v9 << 6;
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOWORD(v12) = *(v8 + 8);
          *(v11 + 18) = *(v8 + 18);
          *(v11 + 8) = v12;
          v11[3] = v8[3];
          v8[3] = 0;
          v13 = *(v8 + 3);
          *(v11 + 2) = *(v8 + 2);
          *(v11 + 3) = v13;
          v14 = v8[3];
          if (v14)
          {

            v8[3] = 0;
          }

          re::StringID::destroyString(v8);
          v8 += 8;
          v11 += 8;
          v10 -= 64;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_18;
    }
  }

  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PrimitiveRenderingContext::PrimitiveMesh>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 16);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v17, v19);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v18, v20);
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
        v10 = v8 + 96 * v9;
        v11 = v7 + 3;
        do
        {
          v11[1] = 0;
          *(v11 - 2) = 0;
          *(v11 - 1) = 0;
          *(v11 - 3) = 0;
          *v11 = 0;
          v12 = *(v8 + 8);
          *(v11 - 3) = *v8;
          *(v11 - 2) = v12;
          *v8 = 0;
          *(v8 + 8) = 0;
          v13 = *(v11 - 1);
          *(v11 - 1) = *(v8 + 16);
          *(v8 + 16) = v13;
          v14 = v11[1];
          v11[1] = *(v8 + 32);
          *(v8 + 32) = v14;
          ++*(v8 + 24);
          ++*v11;
          v15 = *(v8 + 48);
          v16 = *(v8 + 64);
          *(v11 + 7) = *(v8 + 80);
          *(v11 + 5) = v16;
          *(v11 + 3) = v15;
          re::DynamicArray<re::PrimitiveMeshAttribute>::deinit(v8);
          v8 += 96;
          v11 += 12;
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

void *re::ecs2::allocInfo_ConstraintListComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_302, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_302))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB928, "ConstraintListComponent");
    __cxa_guard_release(&_MergedGlobals_302);
  }

  return &unk_1EE1AB928;
}

void re::ecs2::initInfo_ConstraintListComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x4DF95D33529CFE04;
  v16[1] = "ConstraintListComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AB920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB920))
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
    qword_1EE1AB918 = v14;
    __cxa_guard_release(&qword_1EE1AB920);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AB918;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ConstraintListComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ConstraintListComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ConstraintListComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ConstraintListComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223ConstraintListComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v15 = v17;
}

double re::internal::defaultConstruct<re::ecs2::ConstraintListComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDB8C0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 104) = 0;
  result = 0.0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::ConstraintListComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit((a3 + 9));
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::ConstraintListComponent>(ArcSharedObject *a1)
{
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
  *v1 = &unk_1F5CDB8C0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
  *(v1 + 104) = 0;
  result = 0.0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::ConstraintListComponent>(void *a1)
{
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit((a1 + 9));
  re::DynamicArray<re::ArcWeakPtr<re::internal::AssetEntry>>::deinit((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs223ConstraintListComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_LightService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_303, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_303))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB9C0, "LightService");
    __cxa_guard_release(&_MergedGlobals_303);
  }

  return &unk_1EE1AB9C0;
}

void re::ecs2::initInfo_LightService(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0x381065EB96D171BELL;
  v8[1] = "LightService";
  if (v8[0])
  {
    if (v8[0])
    {
    }
  }

  *(this + 2) = v9;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::ecs2::initInfo_LightService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void *re::ecs2::allocInfo_ClientAnchorSyncComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_304, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_304))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABA80, "ClientAnchorSyncComponent");
    __cxa_guard_release(&_MergedGlobals_304);
  }

  return &unk_1EE1ABA80;
}

void re::ecs2::initInfo_ClientAnchorSyncComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v27[0] = 0x876CF2DECCC0DC04;
  v27[1] = "ClientAnchorSyncComponent";
  if (v27[0])
  {
    if (v27[0])
    {
    }
  }

  *(this + 2) = v28;
  if ((atomic_load_explicit(&qword_1EE1ABA58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABA58))
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
    qword_1EE1ABA60 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "isAnchored";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1ABA68 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "isExternal";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1ABA70 = v22;
    v23 = re::introspectionAllocator();
    v24 = re::introspect_Matrix4x4F(1);
    v25 = (*(*v23 + 32))(v23, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "anchorTransform";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x2000000003;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1ABA78 = v25;
    __cxa_guard_release(&qword_1EE1ABA58);
  }

  *(this + 2) = 0x6000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1ABA60;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClientAnchorSyncComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClientAnchorSyncComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClientAnchorSyncComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClientAnchorSyncComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225ClientAnchorSyncComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v26 = v28;
}

double re::internal::defaultConstruct<re::ecs2::ClientAnchorSyncComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6CD0;
  *(v3 + 25) = 0;
  *(v3 + 32) = xmmword_1E3047670;
  *(v3 + 48) = xmmword_1E3047680;
  result = 0.0;
  *(v3 + 64) = xmmword_1E30476A0;
  *(v3 + 80) = xmmword_1E30474D0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::ClientAnchorSyncComponent>(ArcSharedObject *a1)
{
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6CD0;
  *(v1 + 25) = 0;
  *(v1 + 32) = xmmword_1E3047670;
  *(v1 + 48) = xmmword_1E3047680;
  result = 0.0;
  *(v1 + 64) = xmmword_1E30476A0;
  *(v1 + 80) = xmmword_1E30474D0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs225ClientAnchorSyncComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_SelectableSceneContentIdentifierComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABB18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABB18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABB30, "SelectableSceneContentIdentifierComponent");
    __cxa_guard_release(&qword_1EE1ABB18);
  }

  return &unk_1EE1ABB30;
}

void re::ecs2::initInfo_SelectableSceneContentIdentifierComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v20[0] = 0x7D285A8B2F4746E2;
  v20[1] = "SelectableSceneContentIdentifierComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&_MergedGlobals_305, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_305))
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
    qword_1EE1ABB20 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint32_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "m_displayListItemIdentifier";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1C00000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1ABB28 = v18;
    __cxa_guard_release(&_MergedGlobals_305);
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1ABB20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SelectableSceneContentIdentifierComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SelectableSceneContentIdentifierComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SelectableSceneContentIdentifierComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SelectableSceneContentIdentifierComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs241SelectableSceneContentIdentifierComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v19 = v21;
}

void re::internal::defaultConstruct<re::ecs2::SelectableSceneContentIdentifierComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6FA0;
}

void re::internal::defaultConstructV2<re::ecs2::SelectableSceneContentIdentifierComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6FA0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs241SelectableSceneContentIdentifierComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_RenderOptionsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_306, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_306))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABBE8, "RenderOptionsComponent");
    __cxa_guard_release(&_MergedGlobals_306);
  }

  return &unk_1EE1ABBE8;
}

void re::ecs2::initInfo_RenderOptionsComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0x2852AFBB60071BAALL;
  v28[1] = "RenderOptionsComponent";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1ABBC8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABBC8))
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
    qword_1EE1ABBD0 = v14;
    v15 = re::introspectionAllocator();
    v17 = introspect_REVisibilityMode(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "mode";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1ABBD8 = v18;
    v19 = re::introspectionAllocator();
    v25 = re::introspect_HierarchicalMeshOverrideFlags(1, v20, v21, v22, v23, v24);
    v26 = (*(*v19 + 32))(v19, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "overrideFlags";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1A00000002;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1ABBE0 = v26;
    __cxa_guard_release(&qword_1EE1ABBC8);
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1ABBD0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderOptionsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderOptionsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderOptionsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderOptionsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222RenderOptionsComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v27 = v29;
}

BOOL re::ecs2::RenderOptionsComponent::calculateVisibilityAgainstHierarchy(re::ecs2::RenderOptionsComponent *this, const re::ecs2::Entity *a2, uint64_t a3, uint64_t a4, BOOL *a5)
{
  v11 = 1;
  if (re::ecs2::RenderOptionsComponent::mixVisibility(this, 1, &v11, 0, a5))
  {
    v7 = *(this + 4);
    if (v7)
    {
      if ((*(v7 + 304) & 0x80) == 0)
      {
        do
        {
          v8 = re::ecs2::RenderOptionsComponent::mixVisibility(v7, 1, 0, &v11, v6);
          v7 = *(v7 + 32);
          if (!v7)
          {
            break;
          }

          v9 = (*(v7 + 304) & 0x80) != 0 ? 0 : v8;
        }

        while ((v9 & 1) != 0);
      }
    }
  }

  return v11;
}

uint64_t re::ecs2::RenderOptionsComponent::mixVisibility(re::ecs2::RenderOptionsComponent *this, const re::ecs2::Entity *a2, _BYTE *a3, BOOL *a4, BOOL *a5)
{
  v8 = *(this + 29);
  if (v8)
  {
    if (v8[36] == 1 && (v8[37] & 1) == 0)
    {
      if (v8[48] == 1)
      {
        if (a4)
        {
          v15 = 0;
          result = 0;
          *a4 = 0;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    v10 = v8[25];
    if (v10 == 2)
    {
      v16 = *(this + 27);
      if (v16 && *(v16 + 32))
      {
        LODWORD(a2) = RESyncableIsAuthoritative() ^ 1;
        goto LABEL_22;
      }
    }

    else if (v10 != 1)
    {
      if (v10)
      {
        LOBYTE(a2) = 0;
        v12 = 0;
        if (v9)
        {
          goto LABEL_25;
        }

LABEL_27:
        v17 = *(this + 76) & 0x41;
        if (v17)
        {
          v15 = a2;
        }

        else
        {
          v15 = 0;
        }

        if ((*(this + 76) & 0x41) != 0)
        {
          result = v12;
        }

        else
        {
          result = 0;
        }

        if (a4 && v17)
        {
          v15 = *a4;
          result = v12;
        }

        goto LABEL_36;
      }

      v11 = 1;
      v12 = 1;
      if (!a4)
      {
LABEL_24:
        if (v9)
        {
LABEL_25:
          v15 = 0;
          result = 0;
          goto LABEL_36;
        }

        goto LABEL_27;
      }

LABEL_23:
      *a4 = a2;
      v12 = v11;
      LOBYTE(a2) = 0;
      goto LABEL_24;
    }

    LOBYTE(a2) = 0;
LABEL_22:
    v11 = 0;
    v12 = 0;
    if (!a4)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (a4)
  {
    *a4 = a2;
  }

  v13 = *(this + 304);
  result = (v13 & 0x41) != 0;
  if ((v13 & 0x41) != 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = 0;
  }

LABEL_36:
  if (a3)
  {
    *a3 = v15;
  }

  return result;
}

uint64_t re::ecs2::RenderOptionsComponent::mixMeshFlags(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v11 = *(result + 232);
  if (!v11)
  {
    v54 = 0;
    v53 = 0;
    v51 = 0;
    v52 = 0;
    if ((*a4 & 1) == 0)
    {
      v23 = (a4 + 2);
      if ((*(a4 + 2) & 1) == 0)
      {
        v25 = (a4 + 4);
        if ((*(a4 + 4) & 1) == 0)
        {
          *(a4 + 6) = 0;
          v27 = (a4 + 6);
          v28 = (a4 + 7);
          v29 = (a4 + 10);
          if ((*(a4 + 10) & 1) == 0)
          {
            v31 = (a4 + 12);
            if ((*(a4 + 12) & 1) == 0)
            {
              v33 = (a4 + 14);
              if ((*(a4 + 14) & 1) == 0)
              {
                v35 = (a4 + 16);
                if ((*(a4 + 16) & 1) == 0)
                {
                  v36 = 0;
                  v34 = 0;
                  v32 = 0;
                  v30 = 0;
                  v26 = 0;
                  v22 = 0;
                  v24 = 0;
                  v37 = (a4 + 18);
                  v38 = *(a4 + 18);
                  if ((v38 & 1) == 0)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_88;
                }

                v34 = 0;
                v32 = 0;
                v30 = 0;
                v26 = 0;
                v22 = 0;
                v24 = 0;
                v16 = 0;
                LOBYTE(v21) = 0;
LABEL_80:
                v36 = 0;
                *v35 = 0;
                goto LABEL_81;
              }

              v32 = 0;
              v30 = 0;
              v26 = 0;
              v22 = 0;
              v24 = 0;
              LOBYTE(v20) = 0;
              a6 = 0;
              LOBYTE(v21) = 0;
              v16 = 0;
LABEL_71:
              v34 = 0;
              *v33 = 0;
              goto LABEL_72;
            }

            v30 = 0;
            v26 = 0;
            v22 = 0;
            v24 = 0;
            v16 = 0;
            LOBYTE(v21) = 0;
            a6 = 0;
            LOBYTE(v20) = 0;
            v10 = 0;
            LOBYTE(v19) = 0;
LABEL_62:
            v32 = 0;
            *v31 = 0;
            goto LABEL_63;
          }

          v26 = 0;
          v22 = 0;
          v24 = 0;
          LOBYTE(v18) = 0;
          v9 = 0;
          LOBYTE(v19) = 0;
          v10 = 0;
          LOBYTE(v20) = 0;
          a6 = 0;
          LOBYTE(v21) = 0;
          v16 = 0;
LABEL_53:
          v30 = 0;
          *v29 = 0;
          goto LABEL_54;
        }

        v22 = 0;
        v24 = 0;
        v16 = 0;
        LOBYTE(v21) = 0;
        a6 = 0;
        LOBYTE(v20) = 0;
        v10 = 0;
        LOBYTE(v19) = 0;
        v9 = 0;
        LOBYTE(v18) = 0;
        a5 = 0;
        LOBYTE(v17) = 0;
        v15 = 0;
LABEL_44:
        v26 = 0;
        *v25 = 0;
        goto LABEL_45;
      }

      v22 = 0;
      LOBYTE(v14) = 0;
      v8 = 0;
      v15 = 0;
      LOBYTE(v17) = 0;
      a5 = 0;
      LOBYTE(v18) = 0;
      v9 = 0;
      LOBYTE(v19) = 0;
      v10 = 0;
      LOBYTE(v20) = 0;
      a6 = 0;
      LOBYTE(v21) = 0;
      v16 = 0;
LABEL_34:
      v24 = 0;
      *v23 = 0;
      goto LABEL_36;
    }

    v16 = 0;
    LOBYTE(v21) = 0;
    a6 = 0;
    LOBYTE(v20) = 0;
    v10 = 0;
    LOBYTE(v19) = 0;
    v9 = 0;
    LOBYTE(v18) = 0;
    a5 = 0;
    LOBYTE(v17) = 0;
    v15 = 0;
    v8 = 0;
    LOBYTE(v14) = 0;
    v7 = 0;
    LOBYTE(v13) = 0;
LABEL_23:
    v22 = 0;
    *a4 = 0;
    goto LABEL_29;
  }

  v12 = *(v11 + 26);
  if (v12 == 1)
  {
    v6 = *(v11 + 27);
  }

  v13 = *(v11 + 28);
  if (v13 == 1)
  {
    v7 = *(v11 + 29);
  }

  v14 = *(v11 + 30);
  if (v14 == 1)
  {
    v8 = *(v11 + 31);
  }

  v15 = *(v11 + 32);
  v53 = *(v11 + 33);
  v16 = *(v11 + 35);
  v54 = *(v11 + 35);
  v17 = *(v11 + 36);
  if (v17 == 1)
  {
    a5 = *(v11 + 37);
  }

  v18 = *(v11 + 38);
  if (v18 == 1)
  {
    v9 = *(v11 + 39);
  }

  v19 = *(v11 + 40);
  if (v19 == 1)
  {
    v10 = *(v11 + 41);
  }

  v20 = *(v11 + 42);
  if (v20 == 1)
  {
    a6 = *(v11 + 43);
  }

  v21 = *(v11 + 44);
  if (v21 == 1)
  {
    v16 = *(v11 + 46);
  }

  v51 = *(v11 + 48);
  v52 = *(v11 + 52);
  if (*a4)
  {
    if (v12)
    {
      *(a4 + 1) = v6;
      v22 = 1;
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  if (v12)
  {
    v22 = 1;
    *a4 = 1;
    *(a4 + 1) = v6;
  }

  else
  {
    v22 = 0;
  }

LABEL_29:
  v23 = (a4 + 2);
  if (*(a4 + 2))
  {
    if (v13)
    {
      *(a4 + 3) = v7;
      v24 = 1;
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (v13)
  {
    v24 = 1;
    *(a4 + 2) = 1;
    *(a4 + 3) = v7;
  }

  else
  {
    v24 = 0;
  }

LABEL_36:
  v25 = (a4 + 4);
  if (*(a4 + 4))
  {
    if (v14)
    {
      *(a4 + 5) = v8;
      v26 = 1;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if (v14)
  {
    v26 = 1;
    *(a4 + 4) = 1;
    *(a4 + 5) = v8;
  }

  else
  {
    v26 = 0;
  }

LABEL_45:
  *(a4 + 6) = v15;
  v27 = (a4 + 6);
  *(a4 + 7) = v53;
  v28 = (a4 + 7);
  *(a4 + 9) = v54;
  v29 = (a4 + 10);
  if (*(a4 + 10))
  {
    if (v17)
    {
      *(a4 + 11) = a5;
      v30 = 1;
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (v17)
  {
    v30 = 1;
    *(a4 + 10) = 1;
    *(a4 + 11) = a5;
  }

  else
  {
    v30 = 0;
  }

LABEL_54:
  v31 = (a4 + 12);
  if (*(a4 + 12))
  {
    if (v18)
    {
      *(a4 + 13) = v9;
      v32 = 1;
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v18)
  {
    v32 = 1;
    *(a4 + 12) = 1;
    *(a4 + 13) = v9;
  }

  else
  {
    v32 = 0;
  }

LABEL_63:
  v33 = (a4 + 14);
  if (*(a4 + 14))
  {
    if (v19)
    {
      *(a4 + 15) = v10;
      v34 = 1;
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if (v19)
  {
    v34 = 1;
    *(a4 + 14) = 1;
    *(a4 + 15) = v10;
  }

  else
  {
    v34 = 0;
  }

LABEL_72:
  v35 = (a4 + 16);
  if (*(a4 + 16))
  {
    if (v20)
    {
      *(a4 + 17) = a6;
      v36 = 1;
      goto LABEL_81;
    }

    goto LABEL_80;
  }

  if (v20)
  {
    v36 = 1;
    *(a4 + 16) = 1;
    *(a4 + 17) = a6;
  }

  else
  {
    v36 = 0;
  }

LABEL_81:
  v37 = (a4 + 18);
  if (*(a4 + 18))
  {
    if (v21)
    {
      *(a4 + 20) = v16;
      v38 = 1;
      goto LABEL_89;
    }

LABEL_88:
    v38 = 0;
    *v37 = 0;
    goto LABEL_89;
  }

  if (v21)
  {
    v38 = 1;
    *(a4 + 18) = 1;
    *(a4 + 20) = v16;
  }

  else
  {
    v38 = 0;
  }

LABEL_89:
  *(a4 + 22) = v51;
  v39 = (a4 + 22);
  *(a4 + 26) = v52;
  if (*(a2 + 8) == 1)
  {
    if (*(a2 + 6) == 1)
    {
      *(a4 + 8) = 1;
      *(a4 + 6) = 1;
      if (v24)
      {
        v40 = 0;
        v41 = 2;
LABEL_97:
        *(a4 + v41) = v40;
      }
    }

    else if (*(a2 + 2) == 1)
    {
      *(a4 + 8) = 1;
      *(a4 + 6) = 0;
      v40 = *(a2 + 3);
      if ((v24 & 1) == 0)
      {
        *(a4 + 2) = 1;
      }

      v41 = 3;
      goto LABEL_97;
    }
  }

  if (*a2 == 1 && *(a2 + 7) == 1)
  {
    *(a4 + 7) = 1;
    v42 = *(a2 + 1);
    if ((v22 & 1) == 0)
    {
      *a4 = 1;
    }

    *(a4 + 1) = v42;
    v22 = 1;
  }

  if (*(a2 + 4) == 1 && *(a2 + 9) == 1)
  {
    *(a4 + 9) = 1;
    v43 = *(a2 + 5);
    if ((v26 & 1) == 0)
    {
      *(a4 + 4) = 1;
    }

    *(a4 + 5) = v43;
  }

  if (*(a2 + 10) == 1 && *(a2 + 22) == 1)
  {
    *v39 = 1;
    v44 = *(a2 + 11);
    if ((v30 & 1) == 0)
    {
      *(a4 + 10) = 1;
    }

    *(a4 + 11) = v44;
  }

  if (*(a2 + 12) == 1 && *(a2 + 23) == 1)
  {
    *(a4 + 23) = 1;
    v45 = *(a2 + 13);
    if ((v32 & 1) == 0)
    {
      *(a4 + 12) = 1;
    }

    *(a4 + 13) = v45;
  }

  if (*(a2 + 14) == 1 && *(a2 + 24) == 1)
  {
    *(a4 + 24) = 1;
    v46 = *(a2 + 15);
    if ((v34 & 1) == 0)
    {
      *(a4 + 14) = 1;
    }

    *(a4 + 15) = v46;
  }

  if (*(a2 + 16) == 1 && *(a2 + 25) == 1)
  {
    *(a4 + 25) = 1;
    v47 = *(a2 + 17);
    if ((v36 & 1) == 0)
    {
      *(a4 + 16) = 1;
    }

    *(a4 + 17) = v47;
  }

  if (*(a2 + 18) == 1 && *(a2 + 26) == 1)
  {
    *(a4 + 26) = 1;
    v48 = *(a2 + 20);
    if ((v38 & 1) == 0)
    {
      *(a4 + 18) = 1;
    }

    *(a4 + 20) = v48;
  }

  if ((*(result + 304) & 0x41) != 0)
  {
    if (*a3)
    {
      if ((v22 & 1) == 0)
      {
        *a3 = 0;
        goto LABEL_157;
      }
    }

    else
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_157;
      }

      *a3 = 1;
    }

    *(a3 + 1) = *(a4 + 1);
LABEL_157:
    if (*(a3 + 2))
    {
      if ((*v23 & 1) == 0)
      {
        *(a3 + 2) = 0;
        goto LABEL_163;
      }
    }

    else
    {
      if ((*v23 & 1) == 0)
      {
        goto LABEL_163;
      }

      *(a3 + 2) = 1;
    }

    *(a3 + 3) = *(a4 + 3);
LABEL_163:
    if (*(a3 + 4))
    {
      if ((*v25 & 1) == 0)
      {
        *(a3 + 4) = 0;
        goto LABEL_169;
      }
    }

    else
    {
      if ((*v25 & 1) == 0)
      {
        goto LABEL_169;
      }

      *(a3 + 4) = 1;
    }

    *(a3 + 5) = *(a4 + 5);
LABEL_169:
    *(a3 + 6) = *v27;
    v49 = *v28;
    *(a3 + 9) = *(v28 + 2);
    *(a3 + 7) = v49;
    if (*(a3 + 10))
    {
      if ((*v29 & 1) == 0)
      {
        *(a3 + 10) = 0;
        goto LABEL_175;
      }
    }

    else
    {
      if ((*v29 & 1) == 0)
      {
        goto LABEL_175;
      }

      *(a3 + 10) = 1;
    }

    *(a3 + 11) = *(a4 + 11);
LABEL_175:
    if (*(a3 + 12))
    {
      if ((*v31 & 1) == 0)
      {
        *(a3 + 12) = 0;
        goto LABEL_181;
      }
    }

    else
    {
      if ((*v31 & 1) == 0)
      {
        goto LABEL_181;
      }

      *(a3 + 12) = 1;
    }

    *(a3 + 13) = *(a4 + 13);
LABEL_181:
    if (*(a3 + 14))
    {
      if ((*v33 & 1) == 0)
      {
        *(a3 + 14) = 0;
        goto LABEL_187;
      }
    }

    else
    {
      if ((*v33 & 1) == 0)
      {
        goto LABEL_187;
      }

      *(a3 + 14) = 1;
    }

    *(a3 + 15) = *(a4 + 15);
LABEL_187:
    if (*(a3 + 16))
    {
      if ((*v35 & 1) == 0)
      {
        *(a3 + 16) = 0;
        goto LABEL_193;
      }
    }

    else
    {
      if ((*v35 & 1) == 0)
      {
        goto LABEL_193;
      }

      *(a3 + 16) = 1;
    }

    *(a3 + 17) = *(a4 + 17);
LABEL_193:
    if (*(a3 + 18))
    {
      if ((*v37 & 1) == 0)
      {
        *(a3 + 18) = 0;
LABEL_199:
        v50 = *v39;
        *(a3 + 26) = *(a4 + 26);
        *(a3 + 22) = v50;
        return result;
      }
    }

    else
    {
      if ((*v37 & 1) == 0)
      {
        goto LABEL_199;
      }

      *(a3 + 18) = 1;
    }

    *(a3 + 20) = *(a4 + 20);
    goto LABEL_199;
  }

  if (*a3)
  {
    *a3 = 0;
  }

  if (*(a3 + 2) == 1)
  {
    *(a3 + 2) = 0;
  }

  if (*(a3 + 4) == 1)
  {
    *(a3 + 4) = 0;
  }

  *(a3 + 6) = 0;
  if ((*(a3 + 10) & 1) == 0)
  {
    *(a3 + 10) = 1;
  }

  *(a3 + 11) = 0;
  if (*(a3 + 12) == 1)
  {
    *(a3 + 12) = 0;
  }

  if (*(a3 + 14) == 1)
  {
    *(a3 + 14) = 0;
  }

  if (*(a3 + 16) == 1)
  {
    *(a3 + 16) = 0;
  }

  if (*(a3 + 18) == 1)
  {
    *(a3 + 18) = 0;
  }

  *(a3 + 26) = 0;
  *(a3 + 22) = 0;
  return result;
}

void re::make::shared::unsafelyInplace<re::ecs2::RenderOptionsComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE1870;
  *(v1 + 25) = 0;
  *(v1 + 28) = 0;
  *(v1 + 30) = 0;
  *(v1 + 38) = 0;
  *(v1 + 40) = 0;
  *(v1 + 42) = 0;
  *(v1 + 44) = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 0;
  *(v1 + 48) = 0;
  *(v1 + 52) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs222RenderOptionsComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::DynamicBoundingBoxComponent::makeBoundingBoxInputs(re::ecs2::DynamicBoundingBoxComponent *this, const re::RenderManager *a2, re::ecs2::MeshDeformationComponent *a3)
{
  v5 = a2;
  v97 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  v7 = (a2 + 232);
  v8 = *(a2 + 31);
  v9 = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + 40);
    if (v11)
    {
      if (v8 != *v11)
      {
        inited = objc_initWeak(&location, 0);
        v92 = 0uLL;
        *&v93 = 0;
        *(&v93 + 1) = re::globalAllocators(inited)[2];
        *&v94 = 0;
        re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::BoundingBoxBufferInputs,re::FrameManager>::reset((v10 + 32), &location, 0, &v92);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v92);
        objc_destroyWeak(&location);
        location = 0;
      }
    }
  }

  v75 = v7;
  v76 = 4;
  if (!re::MeshDeformationRuntimeData::MeshDeformationIteration::isEmpty(v7, 4u))
  {
    v14 = re::ecs2::EntityComponentCollection::getOrAdd((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v13 = v14;
    if (*(v14 + 40))
    {
      return v13;
    }

    v72 = v14;
    v16 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((*(v6 + 192) + 32)) + 640;
    v17 = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v17)
    {
      v18 = (v17 + 216);
    }

    else
    {
      v18 = v16;
    }

    v19 = *(this + 18);
    if (v19)
    {
      v20 = (v19 + 8);
    }

    else
    {
      v20 = 0;
    }

    v21 = objc_initWeak(&v74, v20);
    v22 = re::globalAllocators(v21);
    v23 = (*(*v22[2] + 32))(v22[2], 56, 8);
    *v23 = *(v5 + 31);
    v24 = 0uLL;
    *(v23 + 5) = 0u;
    *(v23 + 3) = 0u;
    *(v23 + 1) = 0u;
    v81 = v7;
    v82 = 4;
    v25 = *(v5 + 46);
    if (v25 > 4)
    {
      v26 = v23;
      v25 = *(*(v5 + 47) + 440);
      if (v25)
      {
        v26[2] = v25;
        if (v25 >> 61)
        {
LABEL_68:
          re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v25);
          _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v65, v67);
          __break(1u);
          goto LABEL_69;
        }

        v4 = 8 * v25;
        v26[3] = v28;
        if (!v28)
        {
LABEL_69:
          re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
LABEL_70:
          re::internal::assertLog(4, v34, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
        }

        v30 = v28;
        if (v25 != 1)
        {
          v4 -= 8;
          bzero(v28, v4);
          v30 = (v30 + v4);
        }

        *v30 = 0;
        v31 = *(v18 + 42);
        v71 = v7;
        if (v31)
        {
          v32 = *(*(v18 + 43) + 4 * v31 - 4);
          v26[5] = v32;
          if (v32)
          {
            v26[6] = v33;
            if (!v33)
            {
              goto LABEL_70;
            }

            v3 = v33;
            for (i = v32 - 1; i; --i)
            {
              v3[8] = 0;
              *(v3 + 2) = 0u;
              *(v3 + 3) = 0u;
              *v3 = 0u;
              *(v3 + 1) = 0u;
              memset_pattern16(v3 + 1, &unk_1E30747C0, 0x40uLL);
              *(v3 + 15) = 0u;
              *(v3 + 13) = 0u;
              *(v3 + 11) = 0u;
              *(v3 + 9) = 0u;
              v3 += 17;
            }

            *v3 = 0;
            memset_pattern16(v3 + 1, &unk_1E30747C0, 0x40uLL);
            *(v3 + 15) = 0u;
            *(v3 + 13) = 0u;
            *(v3 + 11) = 0u;
            *(v3 + 9) = 0u;
          }
        }

        else
        {
          v26[5] = 0;
        }

        v70 = v5;
        v36 = 0;
        v78 = v71;
        v79 = 4;
        v80 = 0;
        v25 = &selRef_isLimitedRenderAsset;
        while (1)
        {
          v23 = re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v92, &v81);
          if (HIDWORD(v79) == HIDWORD(v92) && v80 == v93)
          {
            break;
          }

          v3 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(&v78);
          v4 = re::MeshNameMap::meshPartStartIndexForInstance(v18, v3) + WORD2(v3);
          v37 = v26[5];
          if (v37 <= v4)
          {
            goto LABEL_52;
          }

          v38 = v26[6];
          v3 = *(this + 26);
          v39 = (v38 + 136 * v4 + 72);
          v40 = 64;
          do
          {
            if ([*v39 length] != 32)
            {
              *&v92 = [v3 newBufferWithLength:32 options:0];
              NS::SharedPtr<MTL::Texture>::operator=(v39, &v92);
              if (v92)
              {
              }
            }

            ++v39;
            v40 -= 8;
          }

          while (v40);

          v37 = v26[5];
          if (v37 <= v4)
          {
            goto LABEL_56;
          }

          v37 = v36;
          v3 = v26[2];
          if (v3 <= v36)
          {
            goto LABEL_60;
          }

          *(v26[3] + 8 * v36) = v26[6] + 136 * v4;
          re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v78);
          ++v36;
        }

        v5 = v70;
        v7 = v71;
      }

      v92 = 0uLL;
      *&v93 = 0;
      *(&v93 + 1) = re::globalAllocators(v23)[2];
      *&v94 = 0;
      v13 = v72;
      re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::BoundingBoxBufferInputs,re::FrameManager>::reset((v72 + 32), &v74, v26, &v92);
      re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v92);
      objc_destroyWeak(&v74);
      v41 = 0;
      v25 = 0;
      v74 = 0;
      v42 = *(v5 + 49);
      v43 = *(v42 + 88);
      v37 = *(v42 + 96);
      v78 = v7;
      v79 = 4;
      v80 = 0;
      while (1)
      {
        re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v92, &v75);
        if (HIDWORD(v79) == HIDWORD(v92) && v80 == v93)
        {
          return v13;
        }

        v44 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(&v78);
        if (v43 <= v44)
        {
          break;
        }

        v46 = *(v72 + 40);
        v3 = *(v46 + 16);
        if (v3 <= v25)
        {
          goto LABEL_48;
        }

        v47 = v37 + 168 * v44;
        v48 = *(v46 + 24) + v41;
        ++*(v47 + 4);
        *(v47 + 56) = v48;
        re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v78);
        ++v25;
        v41 += 8;
      }

      re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v44, v43);
      _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v64, v66);
      __break(1u);
LABEL_48:
      v81 = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      v49 = MEMORY[0x1E69E9C10];
      v50 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v84 = 136315906;
      v85 = "operator[]";
      v86 = 1024;
      if (v50)
      {
        v51 = 3;
      }

      else
      {
        v51 = 2;
      }

      v87 = 468;
      v88 = 2048;
      v89 = v25;
      v90 = 2048;
      v91 = v3;
      _os_log_send_and_compose_impl(v51, &v81, &v92, 80, &dword_1E1C61000, v49, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_52:
      v83 = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      v52 = MEMORY[0x1E69E9C10];
      v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v84 = 136315906;
      v85 = "operator[]";
      v86 = 1024;
      if (v53)
      {
        v54 = 3;
      }

      else
      {
        v54 = 2;
      }

      v87 = 468;
      v88 = 2048;
      v89 = v4;
      v90 = 2048;
      v91 = v37;
      _os_log_send_and_compose_impl(v54, &v83, &v92, 80, &dword_1E1C61000, v52, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_56:
      v83 = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      v55 = MEMORY[0x1E69E9C10];
      v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v84 = 136315906;
      v85 = "operator[]";
      v86 = 1024;
      if (v56)
      {
        v57 = 3;
      }

      else
      {
        v57 = 2;
      }

      v87 = 468;
      v88 = 2048;
      v89 = v4;
      v90 = 2048;
      v91 = v37;
      _os_log_send_and_compose_impl(v57, &v83, &v92, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
LABEL_60:
      v83 = 0;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v92 = 0u;
      v58 = MEMORY[0x1E69E9C10];
      v59 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v84 = 136315906;
      v85 = "operator[]";
      v86 = 1024;
      if (v59)
      {
        v60 = 3;
      }

      else
      {
        v60 = 2;
      }

      v87 = 468;
      v88 = 2048;
      v89 = v37;
      v90 = 2048;
      v91 = v3;
      _os_log_send_and_compose_impl(v60, &v83, &v92, 80, &dword_1E1C61000, v58, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v84, 38, v68, v69);
      _os_crash_msg();
      __break(1u);
    }

    v78 = 0;
    v95 = v24;
    v96 = v24;
    v93 = v24;
    v94 = v24;
    v92 = v24;
    v61 = MEMORY[0x1E69E9C10];
    v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v84 = 136315906;
    v85 = "operator[]";
    v86 = 1024;
    if (v62)
    {
      v63 = 3;
    }

    else
    {
      v63 = 2;
    }

    v87 = 476;
    v88 = 2048;
    v89 = 4;
    v90 = 2048;
    v91 = v25;
    _os_log_send_and_compose_impl(v63, &v78, &v92, 80, &dword_1E1C61000, v61, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v84, 38, v68, v69);
    _os_crash_msg();
    __break(1u);
    goto LABEL_68;
  }

  return 0;
}

BOOL re::MeshDeformationRuntimeData::MeshDeformationIteration::isEmpty(re::MeshDeformationRuntimeData::MeshDeformationIteration *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 17);
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

    v12 = 476;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 18) + 96 * a2 + 8) == 0;
}

void re::ecs2::DynamicBoundingBoxComponent::updateBoundingBoxes(re::ecs2::DynamicBoundingBoxComponent *this, const re::RenderManager *a2)
{
  v2 = this;
  v200 = *MEMORY[0x1E69E9840];
  v3 = *(*(a2 + 18) + 32);
  v4 = *(this + 2);
  v5 = v4[24];
  v6 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v5 + 32));
  v7 = *(v6 + 584);
  v8 = *(v6 + 568);
  v9 = re::ecs2::EntityComponentCollection::get((v4 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v9)
  {
    v10 = v9 + 216;
    v7 = *(v9 + 208);
    v169 = *(v9 + 192);
  }

  else
  {
    v169 = v8;
    v10 = v6 + 640;
  }

  v11 = v4[25] + 232;
  v177 = v11;
  v178 = 4;
  v12 = *(v2 + 5);
  v163 = v7;
  if (v12)
  {
    v13 = *(v10 + 336);
    if (v13)
    {
      v14 = *(*(v10 + 344) + 4 * v13 - 4);
    }

    else
    {
      v14 = 0;
    }

    v15 = v3 & 0xFFFFFFFFFFFFFFFLL;
    re::ecs2::DynamicBoundingBoxComponent::ensureMeshPartCount(v2, v14);
    *v190 = v11;
    *&v190[8] = 4;
    *&v190[16] = 0;
    v16 = 8;
    while (1)
    {
      re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v195, &v177);
      if (*&v190[12] == v195.i32[3] && *&v190[16] == v196.u16[0])
      {
        break;
      }

      v17 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(v190);
      v18 = re::MeshNameMap::meshPartStartIndexForInstance(v10, v17) + WORD2(v17);
      if (*(v12 + 40) <= v18)
      {
        break;
      }

      v19 = (*(v12 + 48) + 136 * v18);
      v22 = *v19;
      v20 = v19 + 1;
      v21 = v22;
      if (v22 <= 8)
      {
        v23 = 8;
      }

      else
      {
        v23 = v21;
      }

      do
      {
        if (v21 <= v23 - 8)
        {
          goto LABEL_25;
        }

        --v21;
      }

      while ((v20[v21 & 7] & 0xFFFFFFFFFFFFFFFuLL) > v15);
      started = *(v2 + 32);
      if (started <= v18)
      {
        goto LABEL_144;
      }

      v25 = *(*(v2 + 34) + 8 * v18) & 0xFFFFFFFFFFFFFFFLL;
      if (v25 == 0xFFFFFFFFFFFFFFFLL || v15 >= v25)
      {
        v195.i64[0] = *(*(v12 + 48) + 136 * v18 + 72 + 8 * (v21 & 7));
        v195.i32[2] = 0;
        v196.i64[0] = 0x2000000000;
        v27 = re::BufferView::contents(&v195);
        started = *(v2 + 27);
        if (started <= v18)
        {
          goto LABEL_148;
        }

        v28 = (*(v2 + 29) + 32 * v18);
        v29 = v27[1];
        *v28 = *v27;
        v28[1] = v29;
        re::DynamicBitset<unsigned long long,64ul>::setBit(v2 + 280, v18);
      }

LABEL_25:
      re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(v190);
    }
  }

  re::ecs2::MeshComponent::updateStaticBoundingBoxData(v5, *(v5 + 16), 0);
  v30 = *(v5 + 304);
  if (v30)
  {
    v31 = (v30 + 104);
  }

  else
  {
    v31 = 0;
  }

  re::ecs2::MeshComponent::updateStaticBoundingBoxData(v5, *(v5 + 16), 0);
  v33 = *(v5 + 304);
  if (v33)
  {
    v34 = (v33 + 176);
  }

  else
  {
    v34 = 0;
  }

  v35 = v31[3];
  v36 = *v34;
  v37 = v34[3];
  v32.i32[0] = *(v5 + 96);
  v173 = v32;
  v184 = *v31;
  v185 = v35;
  v183[0] = v36;
  v183[1] = v37;
  if (!*(v10 + 216))
  {
    re::ecs2::DynamicBoundingBoxComponent::resetDynamicBoundingBoxData(v2);
    inited = objc_initWeak(v187, 0);
    v195 = 0uLL;
    v196.i64[0] = 0;
    v196.i64[1] = re::globalAllocators(inited)[2];
    *&v197 = 0;
    re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::PersistentDynamicBoundingBoxData,re::FrameManager>::reset(v2 + 18, v187, 0, &v195);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v195);
    objc_destroyWeak(v187);
    return;
  }

  v171 = *(v2 + 19);
  v38 = *(a2 + 18);
  if (v38)
  {
    v39 = (v38 + 8);
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_initWeak(&location, v39);
  v41 = re::globalAllocators(v40);
  v42 = (*(*v41[2] + 32))(v41[2], 224, 8);
  *(v42 + 160) = 0u;
  *(v42 + 176) = 0u;
  *(v42 + 128) = 0u;
  *(v42 + 144) = 0u;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0u;
  *(v42 + 48) = 0u;
  *(v42 + 64) = 0u;
  *(v42 + 80) = 0u;
  *(v42 + 96) = 0u;
  *(v42 + 112) = 0u;
  *(v42 + 192) = 0u;
  *(v42 + 208) = 0u;
  *(v42 + 112) = 1;
  *(v42 + 120) = 0;
  *(v42 + 128) = 0;
  *(v42 + 168) = 0u;
  *(v42 + 152) = 0u;
  *(v42 + 184) = 1;
  *(v42 + 192) = 0;
  *(v42 + 200) = 0;
  *&v197 = 0;
  v195 = 0u;
  v196 = 0u;
  v196.i64[1] = re::globalAllocators(v42)[2];
  *&v197 = 0;
  re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::DynamicBoundingBoxData,re::FrameManager>::reset(v2 + 11, &location, v42, &v195);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v195);
  objc_destroyWeak(&location);
  location = 0;
  v43 = *(v2 + 12);
  v44 = v185;
  v46 = re::DynamicArray<re::AABB>::setCapacity(v43, v44);
  ++*(v43 + 24);
  *(v43 + 88) = *(v43 + 32);
  v48 = *(v2 + 27);
  v16 = v43 + 40;
  v49 = re::DynamicArray<re::AABB>::setCapacity((v43 + 40), v48);
  ++*(v43 + 64);
  *(v43 + 160) = *(v43 + 72);
  v50 = *(a2 + 18);
  if (v50)
  {
    v51 = (v50 + 8);
  }

  else
  {
    v51 = 0;
  }

  v52 = objc_initWeak(&v181, v51);
  v53 = re::globalAllocators(v52);
  v54 = (*(*v53[2] + 32))(v53[2], 112, 8);
  *(v54 + 64) = 0u;
  *(v54 + 80) = 0u;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v54 + 32) = 0u;
  *(v54 + 48) = 0u;
  *(v54 + 96) = 0u;
  *(v54 + 72) = 1;
  *(v54 + 80) = 0;
  *(v54 + 88) = 0;
  *&v197 = 0;
  v195 = 0u;
  v196 = 0u;
  v196.i64[1] = re::globalAllocators(v54)[2];
  *&v197 = 0;
  re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::PersistentDynamicBoundingBoxData,re::FrameManager>::reset(v2 + 18, &v181, v54, &v195);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v195);
  objc_destroyWeak(&v181);
  v181 = 0;
  v55 = *(v2 + 19);
  *v187 = 0;
  *&v187[8] = 0;
  *&v187[16] = 1;
  *&v188[4] = 0;
  *&v188[12] = 0;
  if ((v185 & 0x3F) != 0)
  {
    v56 = (v185 >> 6) + 1;
  }

  else
  {
    v56 = v185 >> 6;
  }

  v189 = v185;
  v195.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(v187, v56, &v195);
  started = re::MeshNameMap::meshPartStartIndexForInstance(v10, 1u);
  v168 = v2;
  FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v2 + 280, 0);
  if (FirstBitSet != -1)
  {
    v58 = FirstBitSet;
    v59 = 0;
    while (1)
    {
      if (v58 >= started)
      {
        do
        {
          v60 = v59;
          v59 = (v59 + 1);
          v61 = re::MeshNameMap::meshPartStartIndexForInstance(v10, v60 + 2);
        }

        while (v58 >= v61);
        started = v61;
      }

      re::DynamicBitset<unsigned long long,64ul>::setBit(v187, v59);
      v18 = *(v43 + 176);
      if (v18 <= v58)
      {
        break;
      }

      v62 = v43 + 192;
      if ((*(v43 + 184) & 1) == 0)
      {
        v62 = *(v43 + 200);
      }

      *(v62 + 4 * v58) = (2 * *(v43 + 56)) | 1;
      v18 = *(v2 + 27);
      if (v18 <= v58)
      {
        goto LABEL_132;
      }

      re::DynamicArray<re::AABB>::add((v43 + 40), *(v2 + 29) + 32 * v58);
      FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v2 + 280, v58 + 1);
      v58 = FirstBitSet;
      if (FirstBitSet == -1)
      {
        goto LABEL_52;
      }
    }

LABEL_128:
    v179.i64[0] = 0;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v195 = 0u;
    v138 = MEMORY[0x1E69E9C10];
    v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    if (v139)
    {
      v140 = 3;
    }

    else
    {
      v140 = 2;
    }

    *&v190[14] = 858;
    v191 = 2048;
    v192 = v58;
    v193 = 2048;
    v194 = v18;
    _os_log_send_and_compose_impl(v140, &v179, &v195, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v159, v160);
    _os_crash_msg();
    __break(1u);
LABEL_132:
    v179.i64[0] = 0;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v195 = 0u;
    v141 = MEMORY[0x1E69E9C10];
    v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    if (v142)
    {
      v143 = 3;
    }

    else
    {
      v143 = 2;
    }

    *&v190[14] = 789;
    v191 = 2048;
    v192 = v58;
    v193 = 2048;
    v194 = v18;
    _os_log_send_and_compose_impl(v143, &v179, &v195, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v159, v160);
    _os_crash_msg();
    __break(1u);
LABEL_136:
    v179.i64[0] = 0;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v195 = 0u;
    v144 = MEMORY[0x1E69E9C10];
    v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    if (v145)
    {
      v146 = 3;
    }

    else
    {
      v146 = 2;
    }

    *&v190[14] = 797;
    v191 = 2048;
    v192 = v59;
    v193 = 2048;
    v194 = v18;
    _os_log_send_and_compose_impl(v146, &v179, &v195, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v159, v161);
    _os_crash_msg();
    __break(1u);
LABEL_140:
    v179.i64[0] = 0;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v195 = 0u;
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    *&v190[14] = 797;
    v191 = 2048;
    v192 = v18;
    v193 = 2048;
    v194 = v43;
    _os_log_send_and_compose_impl(v149, &v179, &v195, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v159, v161);
    _os_crash_msg();
    __break(1u);
LABEL_144:
    v179.i64[0] = 0;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v195 = 0u;
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v187 = 136315906;
    *&v187[4] = "operator[]";
    *&v187[12] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v187[14] = 789;
    *&v187[18] = 2048;
    *v188 = v18;
    *&v188[8] = 2048;
    *&v188[10] = started;
    _os_log_send_and_compose_impl(v152, &v179, &v195, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v187, 38, v159, v160);
    _os_crash_msg();
    __break(1u);
LABEL_148:
    v179.i64[0] = 0;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v195 = 0u;
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v187 = 136315906;
    *&v187[4] = "operator[]";
    *&v187[12] = 1024;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    *&v187[14] = 789;
    *&v187[18] = 2048;
    *v188 = v18;
    *&v188[8] = 2048;
    *&v188[10] = started;
    _os_log_send_and_compose_impl(v155, &v179, &v195, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v187, 38, v159, v160);
    _os_crash_msg();
    __break(1u);
LABEL_152:
    v186 = 0;
    v198 = 0u;
    v199 = 0u;
    v196 = 0u;
    v197 = 0u;
    v195 = 0u;
    v156 = MEMORY[0x1E69E9C10];
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v190 = 136315906;
    *&v190[4] = "operator[]";
    *&v190[12] = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    *&v190[14] = 858;
    v191 = 2048;
    v192 = v16;
    v193 = 2048;
    v194 = v18;
    _os_log_send_and_compose_impl(v158, &v186, &v195, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v159, v160);
    _os_crash_msg();
    __break(1u);
  }

LABEL_52:
  v63 = &v188[4];
  if ((v187[16] & 1) == 0)
  {
    v63 = *&v188[12];
  }

  v64 = *&v187[8];
  if ((*&v187[8] & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v65 = 0;
    while (1)
    {
      v67 = *v63++;
      v66 = v67;
      if (v67)
      {
        break;
      }

      v65 -= 64;
      if (!--v64)
      {
        goto LABEL_69;
      }
    }

    v69 = __clz(__rbit64(v66));
    if (v69 + 1 != v65)
    {
      v16 = v69 - v65;
      v70.i64[0] = 0x7F0000007FLL;
      v70.i64[1] = 0x7F0000007FLL;
      v175 = vnegq_f32(v70);
      do
      {
        LODWORD(v71) = re::MeshNameMap::meshPartStartIndexForInstance(v10, v16);
        v72 = re::MeshNameMap::meshPartStartIndexForInstance(v10, v16 + 1);
        v73.i64[0] = 0x7F0000007FLL;
        v73.i64[1] = 0x7F0000007FLL;
        v179 = v175;
        v180 = v73;
        if (v71 < v72)
        {
          v71 = v71;
          v74 = v72;
          do
          {
            v75 = re::MeshBoundingBoxes::boundingBox((v43 + 152), v71);
            v76 = v179;
            v77 = v180;
            v76.i32[3] = 0;
            v78 = *v75;
            v79 = v75[1];
            v78.i32[3] = 0;
            v77.i32[3] = 0;
            v79.i32[3] = 0;
            v179 = vminnmq_f32(v76, v78);
            v180 = vmaxnmq_f32(v77, v79);
            ++v71;
          }

          while (v74 != v71);
        }

        v18 = *(v43 + 104);
        if (v18 <= v16)
        {
          goto LABEL_152;
        }

        v80 = v43 + 120;
        if ((*(v43 + 112) & 1) == 0)
        {
          v80 = *(v43 + 128);
        }

        *(v80 + 4 * v16) = (2 * *(v43 + 16)) | 1;
        re::DynamicArray<re::AABB>::add(v43, &v179);
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v187, v16 + 1);
        v16 = FirstBitSet;
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_69:
  v16 = v163;
  if (fabsf(*v173.i32) > 0.00000011921)
  {
    v81 = *(v43 + 16);
    if (v81)
    {
      v82 = *(v43 + 32);
      v83 = &v82[2 * v81];
      v84 = vdupq_lane_s32(v173, 0);
      do
      {
        v85 = vaddq_f32(v84, v82[1]);
        *v82 = vsubq_f32(*v82, v84);
        v82[1] = v85;
        v82 += 2;
      }

      while (v82 != v83);
    }

    v86 = *(v43 + 56);
    if (v86)
    {
      v87 = *(v43 + 72);
      v88 = &v87[2 * v86];
      v89 = vdupq_lane_s32(v173, 0);
      do
      {
        v90 = vaddq_f32(v89, v87[1]);
        *v87 = vsubq_f32(*v87, v89);
        v87[1] = v90;
        v87 += 2;
      }

      while (v87 != v88);
    }
  }

  v91 = *(v2 + 27);
  v92 = re::DynamicArray<re::AABB>::setCapacity(v55, v91);
  ++*(v55 + 24);
  *(v55 + 48) = *(v55 + 32);
  if (v171)
  {
    if (*(v171 + 64) == *(v2 + 27))
    {
      v93 = v171 + 40;
    }

    else
    {
      v93 = 0;
    }
  }

  else
  {
    v93 = 0;
  }

  if (!v169)
  {
    v96.i64[0] = 0x7F0000007FLL;
    v96.i64[1] = 0x7F0000007FLL;
    v95 = vnegq_f32(v96);
    goto LABEL_108;
  }

  v172 = 0;
  v161 = v163 + 8 * v169;
  v94.i64[0] = 0x7F0000007FLL;
  v94.i64[1] = 0x7F0000007FLL;
  v162 = vnegq_f32(v94);
  v95 = v162;
  v96.i64[0] = 0x7F0000007FLL;
  v96.i64[1] = 0x7F0000007FLL;
  do
  {
    v97 = *(a2 + 4);
    v59 = WORD1(*v16);
    v18 = v97[11];
    if (v18 <= v59)
    {
      goto LABEL_136;
    }

    v59 = *(v97[13] + 16 * v59) + 144 * *v16;
    v18 = WORD1(*(v59 + 16));
    v43 = v97[3];
    if (v43 <= v18)
    {
      goto LABEL_140;
    }

    v166 = v95;
    v167 = v96;
    v98 = *(v97[5] + 16 * WORD1(*(v59 + 16))) + 864 * *(v59 + 16);
    v99 = *(v98 + 56);
    v100.i64[0] = 0x7F0000007FLL;
    v100.i64[1] = 0x7F0000007FLL;
    v179 = v162;
    v180 = v100;
    if (!v99)
    {
      goto LABEL_105;
    }

    v165 = v98;
    v164 = v16;
    v58 = 0;
    v101.i64[0] = 0x7F0000007FLL;
    v101.i64[1] = 0x7F0000007FLL;
    v176 = v100;
    v174 = vnegq_f32(v101);
    started = 4 * v172;
    v16 = 432;
    do
    {
      v18 = v172 + v58;
      v102 = re::ecs2::DynamicBoundingBoxComponent::boundingBoxForMeshPartForFrame(v2, *(*(a2 + 18) + 32) & 0xFFFFFFFFFFFFFFFLL | (*(*(a2 + 18) + 16) << 60), v172 + v58);
      if (v102)
      {
        v103 = *(v55 + 64);
        if (v103 <= v18)
        {
          v186 = 0;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          v126 = MEMORY[0x1E69E9C10];
          v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v190 = 136315906;
          *&v190[4] = "operator[]";
          *&v190[12] = 1024;
          if (v127)
          {
            v128 = 3;
          }

          else
          {
            v128 = 2;
          }

          *&v190[14] = 858;
          v191 = 2048;
          v192 = v172 + v58;
          v193 = 2048;
          v194 = v103;
          _os_log_send_and_compose_impl(v128, &v186, &v195, 80, &dword_1E1C61000, v126, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v159, v161);
          _os_crash_msg();
          __break(1u);
LABEL_116:
          v186 = 0;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          v129 = MEMORY[0x1E69E9C10];
          v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v190 = 136315906;
          *&v190[4] = "operator[]";
          *&v190[12] = 1024;
          if (v130)
          {
            v131 = 3;
          }

          else
          {
            v131 = 2;
          }

          *&v190[14] = 476;
          v191 = 2048;
          v192 = v58;
          v193 = 2048;
          v194 = v18;
          _os_log_send_and_compose_impl(v131, &v186, &v195, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v159, v161);
          _os_crash_msg();
          __break(1u);
LABEL_120:
          v186 = 0;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          v132 = MEMORY[0x1E69E9C10];
          v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v190 = 136315906;
          *&v190[4] = "operator[]";
          *&v190[12] = 1024;
          if (v133)
          {
            v134 = 3;
          }

          else
          {
            v134 = 2;
          }

          *&v190[14] = 866;
          v191 = 2048;
          v192 = v172 + v58;
          v193 = 2048;
          v194 = v43;
          _os_log_send_and_compose_impl(v134, &v186, &v195, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v159, v161);
          _os_crash_msg();
          __break(1u);
LABEL_124:
          v186 = 0;
          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          v135 = MEMORY[0x1E69E9C10];
          v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v190 = 136315906;
          *&v190[4] = "operator[]";
          *&v190[12] = 1024;
          if (v136)
          {
            v137 = 3;
          }

          else
          {
            v137 = 2;
          }

          *&v190[14] = 858;
          v191 = 2048;
          v192 = v172 + v58;
          v193 = 2048;
          v194 = v43;
          _os_log_send_and_compose_impl(v137, &v186, &v195, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v190, 38, v159, v161);
          _os_crash_msg();
          __break(1u);
          goto LABEL_128;
        }

        v43 = v102;
        v104 = v55 + 80;
        if ((*(v55 + 72) & 1) == 0)
        {
          v104 = *(v55 + 88);
        }

        *(v104 + started + 4 * v58) = (2 * *(v55 + 16)) | 1;
        re::AABB::transform(v102, (v59 + 32), &v195);
        re::DynamicArray<re::AABB>::add(v55, &v195);
        v106 = v174;
        v105 = v176;
        v106.i32[3] = 0;
        v107 = *v43;
        v108 = *(v43 + 16);
        v107.i32[3] = 0;
        v105.i32[3] = 0;
        v108.i32[3] = 0;
        v174 = vminnmq_f32(v106, v107);
        v176 = vmaxnmq_f32(v105, v108);
        v179 = v174;
        v180 = v176;
        v2 = v168;
      }

      else
      {
        if (!v93)
        {
          goto LABEL_97;
        }

        v43 = *(v93 + 24);
        if (v43 <= v18)
        {
          goto LABEL_120;
        }

        v109 = v93 + 40;
        if ((*(v93 + 32) & 1) == 0)
        {
          v109 = *(v93 + 48);
        }

        if (*(v109 + started + 4 * v58))
        {
          v115 = re::MeshBoundingBoxes::boundingBox(v93, v18);
          v43 = *(v55 + 64);
          if (v43 <= v18)
          {
            goto LABEL_124;
          }

          v116 = v55 + 80;
          if ((*(v55 + 72) & 1) == 0)
          {
            v116 = *(v55 + 88);
          }

          v117 = v166;
          v117.i32[3] = 0;
          v118 = *v115;
          v119 = v115[1];
          v118.i32[3] = 0;
          v120 = vminnmq_f32(v117, v118);
          v121 = v167;
          v121.i32[3] = 0;
          v119.i32[3] = 0;
          v166 = v120;
          v167 = vmaxnmq_f32(v121, v119);
          *(v116 + started + 4 * v58) = (2 * *(v55 + 16)) | 1;
          re::DynamicArray<re::AABB>::add(v55, v115);
        }

        else
        {
LABEL_97:
          v18 = *(v165 + 56);
          if (v18 <= v58)
          {
            goto LABEL_116;
          }

          v110 = (*(v165 + 64) + v16);
          v111 = v174;
          v111.i32[3] = 0;
          v112 = v110[-1];
          v112.i32[3] = 0;
          v174 = vminnmq_f32(v111, v112);
          v179 = v174;
          v113 = *v110;
          v114 = v176;
          v114.i32[3] = 0;
          v113.i32[3] = 0;
          v176 = vmaxnmq_f32(v114, v113);
          v180 = v176;
        }
      }

      ++v58;
      v16 += 544;
    }

    while (v99 != v58);
    v172 += v58;
    v16 = v164;
LABEL_105:
    re::AABB::transform(&v179, (v59 + 32), &v195);
    v123 = v166;
    v122 = v167;
    v123.i32[3] = 0;
    v124 = v195;
    v125 = v196;
    v124.i32[3] = 0;
    v122.i32[3] = 0;
    v95 = vminnmq_f32(v123, v124);
    v125.i32[3] = 0;
    v96 = vmaxnmq_f32(v122, v125);
    v16 += 8;
  }

  while (v16 != v161);
LABEL_108:
  *(v2 + 21) = v95;
  *(v2 + 22) = v96;
  if (*v187 && (v187[16] & 1) == 0)
  {
    (*(**v187 + 40))();
  }
}

_anonymous_namespace_ *re::ecs2::DynamicBoundingBoxComponent::ensureMeshPartCount(re::ecs2::DynamicBoundingBoxComponent *this, unint64_t a2)
{
  re::DynamicArray<re::AABB>::resize(this + 25, a2);
  v4 = *(this + 32);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (*(this + 31) < a2)
    {
      re::DynamicArray<float *>::setCapacity(this + 30, a2);
      v4 = *(this + 32);
    }

    if (a2 > v4 && a2 > v4)
    {
      memset_pattern16((*(this + 34) + 8 * v4), &unk_1E30747C0, 8 * (a2 - v4));
    }
  }

  *(this + 32) = a2;
  ++*(this + 66);
LABEL_12:
  v6 = *(this + 41);
  if ((a2 & 0x3F) != 0)
  {
    v7 = (a2 >> 6) + 1;
  }

  else
  {
    v7 = a2 >> 6;
  }

  *(this + 41) = a2;
  v14 = 0;
  result = re::DynamicOverflowArray<unsigned long long,3ul>::resize((this + 280), v7, &v14);
  if (a2 && v6 > a2)
  {
    v9 = 63;
    v10 = *(this + 41) & 0x3FLL;
    if (v10)
    {
      v11 = v10 == 63;
      v12 = -1 << v10;
      if (!v11)
      {
        v9 = ~v12;
      }
    }

    if (*(this + 296))
    {
      v13 = this + 304;
    }

    else
    {
      v13 = *(this + 39);
    }

    *&v13[8 * *(this + 36) - 8] &= v9;
  }

  return result;
}

uint64_t re::ecs2::DynamicBoundingBoxComponent::setMeshPartEstimatedBoundingBox(re::ecs2::DynamicBoundingBoxComponent *a1, uint64_t a2, unsigned int a3, _OWORD *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  re::ecs2::DynamicBoundingBoxComponent::ensureMeshPartCount(a1, a3 + 1);
  v8 = *(a1 + 27);
  if (v8 <= a3)
  {
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v12 = MEMORY[0x1E69E9C10];
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = a3;
    v25 = 2048;
    v26 = v8;
    _os_log_send_and_compose_impl(v13, &v18, &v27, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v18 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v27 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v19 = 136315906;
    v20 = "operator[]";
    v21 = 1024;
    if (v15)
    {
      v16 = 3;
    }

    else
    {
      v16 = 2;
    }

    v22 = 789;
    v23 = 2048;
    v24 = a3;
    v25 = 2048;
    v26 = a4;
    _os_log_send_and_compose_impl(v16, &v18, &v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
    _os_crash_msg();
    __break(1u);
  }

  v9 = (*(a1 + 29) + 32 * a3);
  v10 = a4[1];
  *v9 = *a4;
  v9[1] = v10;
  a4 = *(a1 + 32);
  if (a4 <= a3)
  {
    goto LABEL_10;
  }

  *(*(a1 + 34) + 8 * a3) = a2;

  return re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 280, a3);
}

void re::ecs2::DynamicBoundingBoxComponent::resetDynamicBoundingBoxData(id *this)
{
  v4[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v4, 0, 24);
  v4[3] = re::globalAllocators(inited)[2];
  v4[4] = 0;
  re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::DynamicBoundingBoxData,re::FrameManager>::reset(this + 11, &location, 0, v4);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v4);
  objc_destroyWeak(&location);
}

uint64_t re::MeshBoundingBoxes::boundingBox(re::MeshBoundingBoxes *this, unint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = *this;
  v3 = *(this + 3);
  if (v3 <= a2)
  {
    v9 = 0;
    memset(v19, 0, sizeof(v19));
    v6 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v14 = 866;
    v15 = 2048;
    v16 = a2;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v19, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 32))
  {
    v4 = this + 40;
  }

  else
  {
    v4 = *(this + 6);
  }

  return *(&v10 & 0xFFFFFFFFFFFFFFF7 | (8 * (*&v4[4 * a2] & 1))) + ((16 * *&v4[4 * a2]) & 0xFFFFFFFE0);
}

void re::ecs2::DynamicBoundingBoxComponent::ensureSerializedBoundingBoxData(uint64_t a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      v5 = *(v3 + 56);
      if (*(a1 + 384) == v5)
      {
        v6 = 32 * v5;
        if (!memcmp(*(a1 + 400), *(v3 + 72), 32 * v5))
        {
          v7 = 0;
          goto LABEL_12;
        }
      }

      else
      {
        v6 = 32 * v5;
      }

      re::DynamicArray<re::AABB>::resize((a1 + 368), v5);
      memcpy(*(a1 + 400), *(*(a1 + 96) + 72), v6);
      v7 = 1;
LABEL_12:
      if (*(a1 + 464) != v5)
      {
        re::DynamicArray<float>::resize(a1 + 448, v5);
        v7 = 1;
      }

      FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 280, 0);
      if (FirstBitSet != -1)
      {
        for (i = FirstBitSet; i != -1; i = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 280, i + 1))
        {
          v11 = *(a1 + 464);
          if (v11 <= i)
          {
            v31[0] = 0;
            memset(v38, 0, 80);
            v28 = MEMORY[0x1E69E9C10];
            *v35 = 136315906;
            *&v35[4] = "operator[]";
            *&v35[12] = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v29 = 3;
            }

            else
            {
              v29 = 2;
            }

            *&v35[14] = 789;
            *&v35[18] = 2048;
            *&v35[20] = i;
            v36 = 2048;
            *v37 = v11;
            _os_log_send_and_compose_impl(v29, v31, v38, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v35, 38, v30);
            _os_crash_msg();
            __break(1u);
          }

          v12 = *(a1 + 480);
          v7 |= *(v12 + 4 * i) != i;
          *(v12 + 4 * i) = i;
        }
      }

      re::StackScratchAllocator::StackScratchAllocator(v38);
      *&v37[2] = 0;
      memset(&v35[8], 0, 20);
      *v35 = v38;
      re::DynamicArray<re::AABB>::setCapacity(v35, v5);
      ++*&v35[24];
      __s2 = 0;
      v31[1] = 0;
      v32 = 0;
      v33 = 0;
      v31[0] = v38;
      re::DynamicArray<int>::setCapacity(v31, v5);
      ++v33;
      v13 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 280, 0);
      if (v13 != -1)
      {
        v14 = v13;
        do
        {
          v15 = re::ecs2::DynamicBoundingBoxComponent::boundingBoxForMeshPartForFrame(a1, a2, v14);
          if (v15)
          {
            re::DynamicArray<re::AABB>::add(v35, v15);
            HIDWORD(v30) = v14;
            re::DynamicArray<int>::add(v31, &v30 + 1);
          }

          v13 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 280, v14 + 1);
          v14 = v13;
        }

        while (v13 != -1);
      }

      v16 = *(a1 + 424);
      v17 = *&v35[16];
      v18 = *&v37[2];
      if (v16 == *&v35[16])
      {
        if (!v16)
        {
          goto LABEL_37;
        }

        v19 = *(a1 + 440);
        v20 = &v19[2 * v16];
        v21 = *&v37[2];
        while (1)
        {
          v22 = vceqq_f32(*v19, *v21);
          v22.i32[3] = v22.i32[2];
          if ((vminvq_u32(v22) & 0x80000000) == 0)
          {
            break;
          }

          v23 = vceqq_f32(v19[1], v21[1]);
          v23.i32[3] = v23.i32[2];
          if ((vminvq_u32(v23) & 0x80000000) == 0)
          {
            break;
          }

          v19 += 2;
          v21 += 2;
          if (v19 == v20)
          {
            goto LABEL_37;
          }
        }
      }

      if (*(a1 + 408))
      {
        if (*&v35[16])
        {
          re::DynamicArray<re::AABB>::copy((a1 + 408), *&v37[2], *&v35[16]);
          v13 = re::DynamicArray<re::AABB>::resize((a1 + 408), v17);
        }

        else
        {
          *(a1 + 424) = 0;
          ++*(a1 + 432);
        }
      }

      else if (*&v35[16])
      {
        re::DynamicArray<re::AABB>::setCapacity((a1 + 408), v17);
        ++*(a1 + 432);
        v13 = re::DynamicArray<re::AABB>::copy((a1 + 408), v18, v17);
      }

      v7 = 1;
LABEL_37:
      v24 = *(a1 + 504);
      v25 = v32;
      v26 = __s2;
      if (v24 == v32 && (v13 = memcmp(*(a1 + 520), __s2, 4 * v24), !v13))
      {
        if ((v7 & 1) == 0)
        {
LABEL_48:
          if (v31[0] && __s2)
          {
            (*(*v31[0] + 40))();
          }

          if (*v35)
          {
            if (*&v37[2])
            {
              (*(**v35 + 40))();
            }
          }

          re::StackScratchAllocator::~StackScratchAllocator(v38);
          return;
        }
      }

      else if (*(a1 + 488))
      {
        if (v25)
        {
          re::DynamicArray<float>::copy((a1 + 488), 0, v26, v25);
          re::DynamicArray<float>::resize(a1 + 488, v25);
        }

        else
        {
          *(a1 + 504) = 0;
          ++*(a1 + 512);
        }
      }

      else if (v25)
      {
        re::DynamicArray<int>::setCapacity((a1 + 488), v25);
        ++*(a1 + 512);
        re::DynamicArray<float>::copy((a1 + 488), 0, v26, v25);
      }

      v27 = *(*(a1 + 16) + 216);
      if (v27)
      {
        re::ecs2::NetworkComponent::markDirty(v27, a1);
      }

      goto LABEL_48;
    }
  }

  *(a1 + 384) = 0;
  ++*(a1 + 392);
  *(a1 + 424) = 0;
  ++*(a1 + 432);
  *(a1 + 464) = 0;
  ++*(a1 + 472);
  *(a1 + 504) = 0;
  ++*(a1 + 512);
  v8 = *(*(a1 + 16) + 216);
  if (v8)
  {

    re::ecs2::NetworkComponent::markDirty(v8, a1);
  }
}

void *re::DynamicArray<re::AABB>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::AABB>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = (v3[4] + 32 * v4);
      v7 = v5 + 1;
      v8.i64[0] = 0x7F0000007FLL;
      v8.i64[1] = 0x7F0000007FLL;
      v9 = vnegq_f32(v8);
      do
      {
        *v6 = v9;
        v6[1] = v8;
        v6 += 2;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::ecs2::DynamicBoundingBoxComponentStateImpl::DynamicBoundingBoxComponentStateImpl(void *a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CF44A0;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((a1 + 2), v4);
  return a1;
}

void re::ecs2::DynamicBoundingBoxComponentStateImpl::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v8)
  {
    if (re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType == a4 || re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType == a4)
    {
      *(v8 + 216) = 0;
      ++*(v8 + 224);
      v10 = *(v8 + 296);
      if (v10)
      {
        v11 = (v8 + 304);
      }

      else
      {
        v11 = *(v8 + 312);
      }

      v12 = *(v8 + 288);
      while (1)
      {
        v13 = v8 + 304;
        if ((v10 & 1) == 0)
        {
          v13 = *(v8 + 312);
        }

        if (v11 == (v13 + 8 * v12))
        {
          break;
        }

        *v11++ = 0;
        v10 = *(v8 + 296);
      }
    }
  }

  re::ecs2::BasicComponentStateImpl<re::ecs2::MeshDeformationComponent>::didDependentComponentChange(a1, a2, a3);
}

BOOL re::ecs2::DynamicBoundingBoxComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v24, a5, 0);
  v8 = v24;
  v9 = v25;
  v10 = v25;
  v24 = a4;
  v25 = v8;
  v26 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v25);
      v13 = *v12;
      v14 = *(*v12 + 16);
      v15 = re::ecs2::EntityComponentCollection::get((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      v16 = v15;
      if (v15)
      {
        re::ecs2::DynamicBoundingBoxComponent::resetDynamicBoundingBoxData(v15);
      }

      v17 = *(v14 + 192);
      if (v13[30])
      {
        v18 = v13[49] == 0;
      }

      else
      {
        v18 = 1;
      }

      v19 = v18 || v17 == 0;
      v20 = a3 + 4;
      if (!v19)
      {
        v20 = a3 + 4;
        if (*(v17 + 40))
        {
          if (v16 || (v20 = a3 + 4, !re::MeshDeformationRuntimeData::MeshDeformationIteration::isEmpty((v13 + 29), 4u)))
          {
            v20 = a3 + 5;
          }
        }
      }

      v21 = v24;
      v22 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v25);
      re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v21, v22, *v20);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
    }

    while (v25 != a5 || v26 != 0xFFFF || HIWORD(v26) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::DynamicBoundingBoxComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(*(a1 + 8) + 232);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v25, a5, 0);
  v9 = v25;
  v10 = v26;
  v11 = v26;
  v25 = a4;
  v26 = v9;
  v27 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v13 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v26);
      v14 = *v13;
      v15 = *(*(*v13 + 16) + 192);
      if (re::AssetHandle::loadedAsset<re::MeshAsset>((v15 + 32)))
      {
        break;
      }

      v22 = *(v15 + 40);
      if (v22)
      {
        v23 = atomic_load((v22 + 896));
        if (v23 == 3)
        {
          v18 = v25;
          v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v26);
          v20 = a3[2];
LABEL_11:
          v21 = a3[4];
LABEL_12:
          re::ecs2::ComponentBucketsBase::moveComponent(v20, v18, v19, v21);
          goto LABEL_14;
        }
      }

      re::AssetHandle::loadAsync((v15 + 32));
LABEL_14:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v26);
      if (v26 == a5 && v27 == 0xFFFF && HIWORD(v27) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    BoundingBoxInputs = re::ecs2::DynamicBoundingBoxComponent::makeBoundingBoxInputs(v8, v14, v16);
    v18 = v25;
    v19 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v26);
    v20 = a3[2];
    if (!BoundingBoxInputs)
    {
      goto LABEL_11;
    }

    v21 = a3[6];
    goto LABEL_12;
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::DynamicBoundingBoxComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a1 + 8) + 232);
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
      v12 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v18);
      v13 = re::ecs2::EntityComponentCollection::getOrAdd((*(*v12 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      re::ecs2::DynamicBoundingBoxComponent::updateBoundingBoxes(v13, v7);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

void *re::ecs2::DynamicBoundingBoxSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v5);
  if (*(a1 + 232))
  {
    re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update((a1 + 296), v6, 0);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v5);
}

unint64_t re::ecs2::DynamicBoundingBoxSystem::willAddSceneToECSService(re::ecs2::DynamicBoundingBoxSystem *this, re::EventBus **a2)
{
  v7 = a2;
  v3 = a2[36];
  if (v3)
  {
    *(&v6 + 1) = v4;
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 536, &v7, &v6);
    a2 = v7;
  }

  return re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::addScene(this + 296, a2);
}

unint64_t *re::ecs2::DynamicBoundingBoxSystem::willRemoveSceneFromECSService(re::ecs2::DynamicBoundingBoxSystem *this, re::ecs2::Scene *a2)
{
  v16 = a2;
  v17 = a2;
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 44, &v17);
  if (v3 != -1)
  {
    v4 = *(this + 45) + 16 * v3;
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

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 352, &v17);
  }

  result = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(this + 536, &v16);
  if (result)
  {
    if (*(v16 + 36))
    {
      re::EventBus::unsubscribe(*(v16 + 36), *result, result[1]);
    }

    return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 536, &v16);
  }

  return result;
}

void *re::ecs2::DynamicBoundingBoxSerializeComponentStateImpl::DynamicBoundingBoxSerializeComponentStateImpl(void *a1, uint64_t a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CF44E0;
  a1[1] = a2;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::DeformedDirectMeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((a1 + 2), v4);
  return a1;
}

BOOL re::ecs2::DynamicBoundingBoxSerializeComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  FirstBitSet = a5;
  v147 = *MEMORY[0x1E69E9840];
  v8 = *(*(*(a1 + 8) + 232) + 144);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v131, a5, 0);
  v112 = a4;
  v113 = v131;
  v114 = DWORD2(v131);
  if (v131 != FirstBitSet || DWORD2(v131) != 0xFFFFFFFFLL)
  {
    v10 = (a3 + 32);
    v107 = a3;
    v108 = FirstBitSet;
    v106 = v8;
    v110 = (a3 + 32);
    v111 = (a3 + 48);
    while (1)
    {
      v11 = re::DataArray<re::ecs2::Component *>::DataArrayIterator<re::ecs2::Component *,re::ecs2::Component * const&>::operator*(&v113);
      v12 = *v11;
      v13 = v10;
      if (*(*(*v11 + 16) + 192))
      {
        v13 = v10;
        if (*(v12 + 464))
        {
          v13 = v10;
          if (!*(v12 + 256))
          {
            break;
          }
        }
      }

LABEL_89:
      v81 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v113);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v112, v81, *v13);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v113);
      if (v113 == FirstBitSet && v114 == 0xFFFF && HIWORD(v114) == 0xFFFF)
      {
        return *(FirstBitSet + 40) != 0;
      }
    }

    inited = objc_initWeak(&location, 0);
    v131 = 0uLL;
    *&v132 = 0;
    *(&v132 + 1) = re::globalAllocators(inited)[2];
    *&v133 = 0;
    re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::DynamicBoundingBoxData,re::FrameManager>::reset((v12 + 88), &location, 0, &v131);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v131);
    objc_destroyWeak(&location);
    location = 0;
    v15 = objc_initWeak(&v127, 0);
    v131 = 0uLL;
    *&v132 = 0;
    *(&v132 + 1) = re::globalAllocators(v15)[2];
    *&v133 = 0;
    re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::PersistentDynamicBoundingBoxData,re::FrameManager>::reset((v12 + 144), &v127, 0, &v131);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v131);
    objc_destroyWeak(&v127);
    v126 = 0;
    v127 = 0;
    v16 = *(v12 + 16);
    v17 = *(v16 + 192);
    v124 = 0;
    v125 = 0;
    v123 = 0;
    v18 = re::ecs2::EntityComponentCollection::get((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v18)
    {
      v19 = *(v18 + 648);
      if (v19)
      {
        v20 = v19[16];
        v125 = v19[17];
        v126 = v20;
        v21 = v19[19];
        v123 = v19[20];
        v124 = v21;
        v22 = v19 + 9;
        v23 = v19 + 7;
        goto LABEL_14;
      }
    }

    else
    {
      v24 = re::AssetHandle::loadedAsset<re::MeshAsset>((v17 + 32));
      if (v24)
      {
        v20 = v24[143];
        v125 = v24[144];
        v126 = v20;
        v21 = v24[146];
        v123 = v24[147];
        v124 = v21;
        v22 = v24 + 138;
        v23 = v24 + 137;
LABEL_14:
        v25 = *v23;
        if (v20)
        {
          v26 = v21 == 0;
        }

        else
        {
          v26 = 1;
        }

        if (!v26 && v25 != 0)
        {
          v28 = *v22;
          v29 = objc_initWeak(&v122, (v8 + 8));
          v30 = re::globalAllocators(v29);
          v31 = (*(*v30[2] + 32))(v30[2], 224, 8);
          *(v31 + 160) = 0u;
          *(v31 + 176) = 0u;
          *(v31 + 128) = 0u;
          *(v31 + 144) = 0u;
          *v31 = 0u;
          *(v31 + 16) = 0u;
          *(v31 + 32) = 0u;
          *(v31 + 48) = 0u;
          *(v31 + 64) = 0u;
          *(v31 + 80) = 0u;
          *(v31 + 96) = 0u;
          *(v31 + 112) = 0u;
          *(v31 + 192) = 0u;
          *(v31 + 208) = 0u;
          *(v31 + 112) = 1;
          *(v31 + 120) = 0;
          *(v31 + 128) = 0;
          *(v31 + 168) = 0u;
          *(v31 + 152) = 0u;
          *(v31 + 184) = 1;
          *(v31 + 192) = 0;
          *(v31 + 200) = 0;
          v131 = 0uLL;
          *&v132 = 0;
          *(&v132 + 1) = re::globalAllocators(v31)[2];
          *&v133 = 0;
          re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::DynamicBoundingBoxData,re::FrameManager>::reset((v12 + 88), &v122, v31, &v131);
          re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v131);
          objc_destroyWeak(&v122);
          v122 = 0;
          v32 = objc_initWeak(&v121, (v8 + 8));
          v33 = re::globalAllocators(v32);
          v34 = (*(*v33[2] + 32))(v33[2], 112, 8);
          *(v34 + 64) = 0u;
          *(v34 + 80) = 0u;
          *v34 = 0u;
          *(v34 + 16) = 0u;
          *(v34 + 32) = 0u;
          *(v34 + 48) = 0u;
          *(v34 + 96) = 0u;
          *(v34 + 72) = 1;
          *(v34 + 80) = 0;
          *(v34 + 88) = 0;
          v131 = 0uLL;
          *&v132 = 0;
          *(&v132 + 1) = re::globalAllocators(v34)[2];
          *&v133 = 0;
          re::FramePersistentPtr<re::ecs2::DynamicBoundingBoxComponent::PersistentDynamicBoundingBoxData,re::FrameManager>::reset((v12 + 144), &v121, v34, &v131);
          re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v131);
          objc_destroyWeak(&v121);
          v121 = 0;
          v35 = *(v12 + 96);
          v36 = *(v12 + 152);
          v109 = v36;
          re::DynamicArray<re::AABB>::operator=(*(v12 + 96) + 40, (v12 + 368));
          *(v35 + 160) = *(*(v12 + 96) + 72);
          v40 = *(v12 + 464);
          if (v40 == *(v12 + 384))
          {
            re::StackScratchAllocator::StackScratchAllocator(&v131);
            v117 = 1;
            v118 = 0;
            v119 = 0;
            v115 = &v131;
            v116 = 0;
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v115, 0);
            v117 += 2;
            if ((v25 & 0x3F) != 0)
            {
              v41 = (v25 >> 6) + 1;
            }

            else
            {
              v41 = v25 >> 6;
            }

            v120 = v25;
            *&v144[0] = 0;
            re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v115, v41, v144);
            if (v40)
            {
              FirstBitSet = 0;
              v42 = 0;
              v43 = *(v28 + 8);
              a3 = v35 + 192;
              do
              {
                v44 = v40;
                v40 = *(v12 + 464);
                if (v40 <= FirstBitSet)
                {
                  goto LABEL_103;
                }

                v45 = *(*(v12 + 480) + 4 * FirstBitSet);
                if (*(v35 + 176) <= v45)
                {
                  v40 = v44;
                }

                else
                {
                  v46 = v35 + 192;
                  v40 = v44;
                  if ((*(v35 + 184) & 1) == 0)
                  {
                    v46 = *(v35 + 200);
                  }

                  *(v46 + 4 * v45) = (2 * FirstBitSet) | 1;
                  if (v43 <= v45)
                  {
                    LODWORD(v47) = v42;
                    while (1)
                    {
                      v47 = (v47 + 1);
                      if (v25 <= v47)
                      {
                        break;
                      }

                      v48 = *(v28 + 96 * v47);
                      v49 = *(v28 + 96 * v47 + 8);
                      v50 = v49 >= v48;
                      v51 = v49 - v48;
                      if (!v50)
                      {
                        v51 = 0;
                      }

                      v43 += v51;
                      v42 = v47;
                      if (v43 > v45)
                      {
                        goto LABEL_38;
                      }
                    }

                    re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v47, v25);
                    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v100, v102);
                    __break(1u);
                    goto LABEL_99;
                  }

                  v47 = v42;
LABEL_38:
                  re::DynamicBitset<unsigned long long,64ul>::setBit(&v115, v47);
                }

                ++FirstBitSet;
              }

              while (FirstBitSet != v40);
            }

            v52 = v119;
            if (v117)
            {
              v52 = &v118;
            }

            if (v116)
            {
              v53 = 0;
              v54 = 8 * v116;
              do
              {
                v55 = *v52++;
                v56 = vcnt_s8(v55);
                v56.i16[0] = vaddlv_u8(v56);
                v53 += v56.u32[0];
                v54 -= 8;
              }

              while (v54);
            }

            else
            {
              v53 = 0;
            }

            v42 = *(v12 + 96);
            re::DynamicArray<re::AABB>::resize(v42, v53);
            *(v35 + 88) = *(v42 + 32);
            v130 = *(v35 + 152);
            v58 = v119;
            if (v117)
            {
              v58 = &v118;
            }

            v59 = v116;
            if ((v116 & 0x3FFFFFFFFFFFFFFLL) != 0)
            {
              v60 = v42;
              v61 = 0;
              while (1)
              {
                v63 = *v58++;
                v62 = v63;
                if (v63)
                {
                  break;
                }

                v61 -= 64;
                if (!--v59)
                {
                  goto LABEL_75;
                }
              }

              v64 = __clz(__rbit64(v62));
              if (v64 + 1 != v61)
              {
                v65 = 0;
                FirstBitSet = v64 - v61;
                v40 = v35 + 192;
                while (1)
                {
                  if (v25 <= FirstBitSet)
                  {
                    goto LABEL_111;
                  }

                  v66 = (v28 + 96 * FirstBitSet);
                  v67 = *v66;
                  v68 = v66[1];
                  if (v67 < v68)
                  {
                    break;
                  }

                  v69.i64[0] = 0x7F0000007FLL;
                  v69.i64[1] = 0x7F0000007FLL;
                  v70 = vnegq_f32(v69);
LABEL_70:
                  v42 = v65;
                  a3 = v60[2];
                  if (a3 <= v65)
                  {
                    goto LABEL_112;
                  }

                  v75 = (v60[4] + 32 * v65);
                  *v75 = v70;
                  v75[1] = v69;
                  v42 = *(v35 + 104);
                  if (v42 <= FirstBitSet)
                  {
                    goto LABEL_116;
                  }

                  v42 = v60;
                  v76 = v35 + 120;
                  if ((*(v35 + 112) & 1) == 0)
                  {
                    v76 = *(v35 + 128);
                  }

                  *(v76 + 4 * FirstBitSet) = (2 * v65++) | 1;
                  FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v115, FirstBitSet + 1);
                  v60 = v42;
                  if (FirstBitSet == -1)
                  {
                    goto LABEL_75;
                  }
                }

                v42 = *(v35 + 176);
                if (v67 <= v42)
                {
                  a3 = *(v35 + 176);
                }

                else
                {
                  a3 = v67;
                }

                v69.i64[0] = 0x7F0000007FLL;
                v69.i64[1] = 0x7F0000007FLL;
                v70 = vnegq_f32(v69);
                while (a3 != v67)
                {
                  v71 = v35 + 192;
                  if ((*(v35 + 184) & 1) == 0)
                  {
                    v71 = *(v35 + 200);
                  }

                  v72 = (*(&v130 & 0xFFFFFFFFFFFFFFF7 | (8 * (*(v71 + 4 * v67) & 1))) + ((16 * *(v71 + 4 * v67)) & 0xFFFFFFFE0));
                  v70.i32[3] = 0;
                  v73 = *v72;
                  v74 = v72[1];
                  v73.i32[3] = 0;
                  v69.i32[3] = 0;
                  v70 = vminnmq_f32(v70, v73);
                  v74.i32[3] = 0;
                  v69 = vmaxnmq_f32(v69, v74);
                  if (v68 == ++v67)
                  {
                    goto LABEL_70;
                  }
                }

LABEL_99:
                v129 = 0;
                v145 = 0u;
                v146 = 0u;
                memset(v144, 0, sizeof(v144));
                v85 = MEMORY[0x1E69E9C10];
                v86 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v136 = 136315906;
                v137 = "operator[]";
                v138 = 1024;
                if (v86)
                {
                  v87 = 3;
                }

                else
                {
                  v87 = 2;
                }

                v139 = 858;
                v140 = 2048;
                v141 = a3;
                v142 = 2048;
                v143 = v42;
                _os_log_send_and_compose_impl(v87, &v129, v144, 80, &dword_1E1C61000, v85, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v104, v105);
                _os_crash_msg();
                __break(1u);
LABEL_103:
                *&v130 = 0;
                v145 = 0u;
                v146 = 0u;
                memset(v144, 0, sizeof(v144));
                v88 = MEMORY[0x1E69E9C10];
                v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v136 = 136315906;
                v137 = "operator[]";
                v138 = 1024;
                if (v89)
                {
                  v90 = 3;
                }

                else
                {
                  v90 = 2;
                }

                v139 = 789;
                v140 = 2048;
                v141 = FirstBitSet;
                v142 = 2048;
                v143 = v40;
                _os_log_send_and_compose_impl(v90, &v130, v144, 80, &dword_1E1C61000, v88, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v104, v105);
                _os_crash_msg();
                __break(1u);
LABEL_107:
                v115 = 0;
                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v131 = 0u;
                v91 = MEMORY[0x1E69E9C10];
                v92 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v144[0]) = 136315906;
                *(v144 + 4) = "operator[]";
                WORD6(v144[0]) = 1024;
                if (v92)
                {
                  v93 = 3;
                }

                else
                {
                  v93 = 2;
                }

                *(v144 + 14) = 789;
                WORD1(v144[1]) = 2048;
                *(&v144[1] + 4) = v42;
                WORD6(v144[1]) = 2048;
                *(&v144[1] + 14) = v28;
                _os_log_send_and_compose_impl(v93, &v115, &v131, 80, &dword_1E1C61000, v91, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v144, 38, v104, v105);
                _os_crash_msg();
                __break(1u);
LABEL_111:
                re::internal::assertLog(6, v57, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, FirstBitSet, v25);
                _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v101, v103);
                __break(1u);
LABEL_112:
                v129 = 0;
                v145 = 0u;
                v146 = 0u;
                memset(v144, 0, sizeof(v144));
                v94 = MEMORY[0x1E69E9C10];
                v95 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v136 = 136315906;
                v137 = "operator[]";
                v138 = 1024;
                if (v95)
                {
                  v96 = 3;
                }

                else
                {
                  v96 = 2;
                }

                v139 = 789;
                v140 = 2048;
                v141 = v42;
                v142 = 2048;
                v143 = a3;
                _os_log_send_and_compose_impl(v96, &v129, v144, 80, &dword_1E1C61000, v94, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v104, v105);
                _os_crash_msg();
                __break(1u);
LABEL_116:
                v129 = 0;
                v145 = 0u;
                v146 = 0u;
                memset(v144, 0, sizeof(v144));
                v97 = MEMORY[0x1E69E9C10];
                v98 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v136 = 136315906;
                v137 = "operator[]";
                v138 = 1024;
                if (v98)
                {
                  v99 = 3;
                }

                else
                {
                  v99 = 2;
                }

                v139 = 858;
                v140 = 2048;
                v141 = FirstBitSet;
                v142 = 2048;
                v143 = v42;
                _os_log_send_and_compose_impl(v99, &v129, v144, 80, &dword_1E1C61000, v97, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v136, 38, v104, v105);
                _os_crash_msg();
                __break(1u);
              }
            }

LABEL_75:
            if (v115 && (v117 & 1) == 0)
            {
              (*(*v115 + 40))();
            }

            re::StackScratchAllocator::~StackScratchAllocator(&v131);
            a3 = v107;
            FirstBitSet = v108;
            v8 = v106;
          }

          re::DynamicArray<re::AABB>::operator=(*(v12 + 152), (v12 + 408));
          *(v109 + 48) = *(*(v12 + 152) + 32);
          v77 = *(v12 + 504);
          if (v77 == *(v12 + 424) && *(v12 + 504))
          {
            v42 = 0;
            v78 = 1;
            do
            {
              v28 = *(v12 + 504);
              if (v28 <= v42)
              {
                goto LABEL_107;
              }

              v79 = *(*(v12 + 520) + 4 * v42);
              if (*(v109 + 64) > v79)
              {
                v80 = v109 + 80;
                if ((*(v109 + 72) & 1) == 0)
                {
                  v80 = *(v109 + 88);
                }

                *(v80 + 4 * v79) = v78;
              }

              ++v42;
              v78 += 2;
            }

            while (v77 != v42);
          }
        }
      }
    }

    v10 = v110;
    v13 = v111;
    goto LABEL_89;
  }

  return *(FirstBitSet + 40) != 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

void *re::ecs2::DynamicBoundingBoxSerializeSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
  if (a1[29])
  {
    re::StackScratchAllocator::StackScratchAllocator(v44);
    v40 = 1;
    v41 = 0;
    v42 = 0;
    v38 = v44;
    v39 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
    v40 += 2;
    v5 = a1[68];
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    v43 = a1[68];
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
        v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 49, v33);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[50] + 16 * v11 + 8));
        v9 -= 8;
      }

      while (v9);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 63));
    v34 = 1;
    v35 = 0;
    v36 = 0;
    v33[0] = v44;
    v33[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
    v34 += 2;
    v12 = a1[68];
    if ((v12 & 0x3F) != 0)
    {
      v13 = (v12 >> 6) + 1;
    }

    else
    {
      v13 = v12 >> 6;
    }

    v37 = a1[68];
    v45 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 63), &v38);
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
          goto LABEL_31;
        }
      }

      v19 = __clz(__rbit64(v17));
      if (v19 + 1 != v16)
      {
        FirstBitSet = v19 - v16;
        do
        {
          v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 42), FirstBitSet);
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
              goto LABEL_29;
            }
          }

          else if (!v25)
          {
LABEL_29:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
            goto LABEL_30;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_30:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_31:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 63), v33);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 42));
    if (v33[0] && (v34 & 1) == 0)
    {
      (*(*v33[0] + 40))();
    }

    if (v38 && (v40 & 1) == 0)
    {
      (*(*v38 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v44);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v31);
}

unint64_t re::ecs2::DynamicBoundingBoxSerializeSystem::willAddSceneToECSService(re::ecs2::DynamicBoundingBoxSerializeSystem *this, re::ecs2::Scene *a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::init(v12, this + 336, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,4ul>::setBucketsCapacity(this + 42, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::init(v24, this + 336, v52);
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

uint64_t re::ecs2::DynamicBoundingBoxSerializeSystem::willRemoveSceneFromECSService(re::ecs2::DynamicBoundingBoxSerializeSystem *this, re::ecs2::Scene *a2)
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

void re::IntrospectionInfo<re::DynamicArray<re::AABB>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1ABCA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABCA0))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1ABCD8);
    qword_1EE1ABCD8 = &unk_1F5CF4838;
    __cxa_guard_release(&qword_1EE1ABCA0);
  }

  if ((_MergedGlobals_307 & 1) == 0)
  {
    v6 = re::introspect_AABB(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_307 & 1) == 0)
    {
      v7 = v6;
      _MergedGlobals_307 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1ABCD8, 0);
      qword_1EE1ABCE8 = 0x2800000003;
      dword_1EE1ABCF0 = v8;
      word_1EE1ABCF4 = 0;
      *&xmmword_1EE1ABCF8 = 0;
      *(&xmmword_1EE1ABCF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1ABD08 = v7;
      unk_1EE1ABD10 = 0;
      qword_1EE1ABCD8 = &unk_1F5CF4838;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1ABCD8);
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
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1ABCF8 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_DynamicBoundingBoxComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABC88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABC88))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABD18, "DynamicBoundingBoxComponent");
    __cxa_guard_release(&qword_1EE1ABC88);
  }

  return &unk_1EE1ABD18;
}

void re::ecs2::initInfo_DynamicBoundingBoxComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v46[0] = 0xB01568A72EB9FBEALL;
  v46[1] = "DynamicBoundingBoxComponent";
  if (v46[0])
  {
    if (v46[0])
    {
    }
  }

  *(this + 2) = v47;
  if ((atomic_load_explicit(&qword_1EE1ABC80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABC80))
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
    qword_1EE1ABCA8 = v14;
    v15 = re::introspectionAllocator();
    v21 = re::introspect_AABB(1, v16, v17, v18, v19, v20);
    v22 = (*(*v15 + 32))(v15, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "m_lastKnownBounds";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x15000000001;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1ABCB0 = v22;
    v23 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::AABB>>::get(v23, v24, v25, v26, v27, v28);
    v29 = (*(*v23 + 32))(v23, 72, 8);
    *v29 = 1;
    *(v29 + 8) = "m_serializedEstimatedBoxes";
    *(v29 + 16) = &qword_1EE1ABCD8;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0x17000000002;
    *(v29 + 40) = 0;
    *(v29 + 48) = 0;
    *(v29 + 56) = 0;
    *(v29 + 64) = 0;
    qword_1EE1ABCB8 = v29;
    v30 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::AABB>>::get(v30, v31, v32, v33, v34, v35);
    v36 = (*(*v30 + 32))(v30, 72, 8);
    *v36 = 1;
    *(v36 + 8) = "m_serializedLastKnownBoxes";
    *(v36 + 16) = &qword_1EE1ABCD8;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x19800000003;
    *(v36 + 40) = 0;
    *(v36 + 48) = 0;
    *(v36 + 56) = 0;
    *(v36 + 64) = 0;
    qword_1EE1ABCC0 = v36;
    v37 = re::introspectionAllocator();
    v39 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v38);
    v40 = (*(*v37 + 32))(v37, 72, 8);
    *v40 = 1;
    *(v40 + 8) = "m_serializedEstimatedBoxInstancePartIndices";
    *(v40 + 16) = v39;
    *(v40 + 24) = 0;
    *(v40 + 32) = 0x1C000000004;
    *(v40 + 40) = 0;
    *(v40 + 48) = 0;
    *(v40 + 56) = 0;
    *(v40 + 64) = 0;
    qword_1EE1ABCC8 = v40;
    v41 = re::introspectionAllocator();
    v43 = re::IntrospectionInfo<re::DynamicArray<unsigned int>>::get(1, v42);
    v44 = (*(*v41 + 32))(v41, 72, 8);
    *v44 = 1;
    *(v44 + 8) = "m_serializedLastKnownBoxInstancePartIndices";
    *(v44 + 16) = v43;
    *(v44 + 24) = 0;
    *(v44 + 32) = 0x1E800000005;
    *(v44 + 40) = 0;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0;
    *(v44 + 64) = 0;
    qword_1EE1ABCD0 = v44;
    __cxa_guard_release(&qword_1EE1ABC80);
  }

  *(this + 2) = 0x21000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1ABCA8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DynamicBoundingBoxComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DynamicBoundingBoxComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227DynamicBoundingBoxComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v45 = v47;
}

void *re::ecs2::allocInfo_DynamicBoundingBoxSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABC90))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABDA8, "DynamicBoundingBoxSystem");
    __cxa_guard_release(&qword_1EE1ABC90);
  }

  return &unk_1EE1ABDA8;
}

void re::ecs2::initInfo_DynamicBoundingBoxSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xFA9333C51155E86ELL;
  v8[1] = "DynamicBoundingBoxSystem";
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
  *(this + 8) = &re::ecs2::initInfo_DynamicBoundingBoxSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DynamicBoundingBoxSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DynamicBoundingBoxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DynamicBoundingBoxSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DynamicBoundingBoxSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);
  a3[32] = &unk_1F5CF44A0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 34);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxSystem>(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);
  a1[32] = &unk_1F5CF44A0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 34);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_DynamicBoundingBoxSerializeSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABC98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABC98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABE38, "DynamicBoundingBoxSerializeSystem");
    __cxa_guard_release(&qword_1EE1ABC98);
  }

  return &unk_1EE1ABE38;
}

void re::ecs2::initInfo_DynamicBoundingBoxSerializeSystem(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v8[0] = 0xA5B4EDBF4D22C84ELL;
  v8[1] = "DynamicBoundingBoxSerializeSystem";
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
  *(this + 8) = &re::ecs2::initInfo_DynamicBoundingBoxSerializeSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DynamicBoundingBoxSerializeSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxSerializeSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DynamicBoundingBoxSerializeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DynamicBoundingBoxSerializeSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DynamicBoundingBoxSerializeSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxSerializeSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v7 = v9;
}

void re::internal::defaultDestruct<re::ecs2::DynamicBoundingBoxSerializeSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 42);
  a3[37] = &unk_1F5CF44E0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 39);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::DynamicBoundingBoxSerializeSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 42);
  a1[37] = &unk_1F5CF44E0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 39);

  re::ecs2::System::~System(a1);
}

void re::ecs2::DynamicBoundingBoxSystem::~DynamicBoundingBoxSystem(re::ecs2::DynamicBoundingBoxSystem *this)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF44A0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 67);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF44A0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::Component *re::ecs2::BasicComponentStateImpl<re::ecs2::DynamicBoundingBoxComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::DynamicBoundingBoxComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void re::ecs2::DynamicBoundingBoxSerializeSystem::~DynamicBoundingBoxSerializeSystem(re::ecs2::DynamicBoundingBoxSerializeSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CF44E0;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 37) = &unk_1F5CF44E0;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void **re::DynamicArray<re::AABB>::copy(void **this, char *__src, unint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = this;
    v4 = this[2];
    if (v4 == -1)
    {
      v12 = 0;
      memset(v21, 0, sizeof(v21));
      v9 = MEMORY[0x1E69E9C10];
      v13 = 136315906;
      v14 = "copy";
      v15 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      v16 = 643;
      v17 = 2048;
      v18 = 0;
      v19 = 2048;
      v20 = 0;
      _os_log_send_and_compose_impl(v10, &v12, v21, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v13, 38, v11);
      _os_crash_msg();
      __break(1u);
    }

    if (v4 >= a3)
    {
      this = memmove(this[4], __src, 32 * a3);
    }

    else
    {
      re::DynamicArray<re::AABB>::growCapacity(this, a3);
      v7 = v3[2];
      if (v7)
      {
        memmove(v3[4], __src, 32 * v7);
        v8 = v3[2];
      }

      else
      {
        v8 = 0;
      }

      this = memcpy(v3[4] + 32 * v8, &__src[32 * v7], 32 * (a3 - v7));
      v3[2] = a3;
    }

    ++*(v3 + 6);
  }

  return this;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v16[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<REComponentWillDeactivateEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  v12 = re::globalAllocators(EventInfo)[2];
  v15[0] = &unk_1F5CF4680;
  v15[1] = a3;
  v15[3] = v12;
  v15[4] = v15;
  re::EventBus::createHandler<re::ecs2::Entity,REComponentWillDeactivateEvent>(v15, a5, v16);
  v13 = re::EventBus::EventInfo::addSubscription(EventInfo, v16, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v16);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v15);
  return v13;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4680;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4680;
  a2[1] = v2;
  return a2;
}

re *re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF46D8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF4730;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF4788;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF47E0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
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
        *v37 = &unk_1F5CF46D8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF4730;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF4788;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF47E0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF46D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF46D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4730;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4730;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4788;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4788;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF47E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF47E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::IntrospectionDynamicArray<re::AABB>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AABB>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AABB>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AABB>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AABB>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::AABB>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AABB>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::AABB>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AABB>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v11[0] = vnegq_f32(v8);
  v11[1] = v8;
  re::DynamicArray<re::AABB>::add(this, v11);
  v9 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::AABB>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AABB>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AABB>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::AABB>::resize(a1, a4);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AABB>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::make::shared::unsafelyInplace<re::ecs2::DynamicBoundingBoxComponent>(void *a1)
{
  bzero(a1, 0x210uLL);
  ArcSharedObject::ArcSharedObject(a1, 0);
  a1[2] = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F5CDC078;
  inited = objc_initWeak(a1 + 4, 0);
  a1[5] = 0;
  a1[9] = re::globalAllocators(inited)[2];
  a1[10] = 0;
  v3 = objc_initWeak(a1 + 11, 0);
  a1[12] = 0;
  a1[16] = re::globalAllocators(v3)[2];
  a1[17] = 0;
  v4 = objc_initWeak(a1 + 18, 0);
  a1[19] = 0;
  a1[23] = re::globalAllocators(v4)[2];
  *(a1 + 56) = 0;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 66) = 0;
  *(a1 + 31) = 0u;
  *(a1 + 29) = 0u;
  a1[35] = 0;
  a1[36] = 0;
  a1[34] = 0;
  *(a1 + 74) = 1;
  a1[38] = 0;
  a1[39] = 0;
  a1[41] = 0;
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  *(a1 + 21) = vnegq_f32(v5);
  *(a1 + 22) = v5;
  a1[46] = 0;
  a1[47] = 0;
  *(a1 + 98) = 0;
  a1[48] = 0;
  a1[65] = 0;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 108) = 0;
  *(a1 + 55) = 0u;
  *(a1 + 57) = 0u;
  *(a1 + 118) = 0;
  *(a1 + 30) = 0u;
  *(a1 + 31) = 0u;
  *(a1 + 128) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227DynamicBoundingBoxComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 7;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_PhysicsSimulationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABED0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ABF10, "PhysicsSimulationComponent");
    __cxa_guard_release(&qword_1EE1ABED0);
  }

  return &unk_1EE1ABF10;
}

void re::ecs2::initInfo_PhysicsSimulationComponent(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v39[0] = 0x3A8A6133E7C4421ELL;
  v39[1] = "PhysicsSimulationComponent";
  if (v39[0])
  {
    if (v39[0])
    {
    }
  }

  *(this + 2) = v40;
  if ((atomic_load_explicit(&_MergedGlobals_308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_308))
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
    qword_1EE1ABED8 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_BOOL(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "reportKinematicStaticCollisions";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x1900000001;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE1ABEE0 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_BOOL(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "reportKinematicKinematicCollisions";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0x1A00000002;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE1ABEE8 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "gravity";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x2000000003;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE1ABEF0 = v26;
    v27 = re::introspectionAllocator();
    v29 = re::IntrospectionInfo<re::Optional<float>>::get(1, v28);
    v30 = (*(*v27 + 32))(v27, 72, 8);
    *v30 = 1;
    *(v30 + 8) = "fixedTimeStep";
    *(v30 + 16) = v29;
    *(v30 + 24) = 0;
    *(v30 + 32) = 0x4000000004;
    *(v30 + 40) = 0;
    *(v30 + 48) = 0;
    *(v30 + 56) = 0;
    *(v30 + 64) = 0;
    qword_1EE1ABEF8 = v30;
    v31 = re::introspectionAllocator();
    v33 = re::introspect_uint64_t(1, v32);
    v34 = (*(*v31 + 32))(v31, 72, 8);
    *v34 = 1;
    *(v34 + 8) = "m_parentTimebaseID";
    *(v34 + 16) = v33;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0x5800000005;
    *(v34 + 40) = 0;
    *(v34 + 48) = 0;
    *(v34 + 56) = 0;
    *(v34 + 64) = 0;
    qword_1EE1ABF00 = v34;
    v35 = re::introspectionAllocator();
    v36 = re::introspect_PhysicsSolverIterations(1);
    v37 = (*(*v35 + 32))(v35, 72, 8);
    *v37 = 1;
    *(v37 + 8) = "solverIterations";
    *(v37 + 16) = v36;
    *(v37 + 24) = 0;
    *(v37 + 32) = 0x4800000006;
    *(v37 + 40) = 0;
    *(v37 + 48) = 0;
    *(v37 + 56) = 0;
    *(v37 + 64) = 0;
    qword_1EE1ABF08 = v37;
    __cxa_guard_release(&_MergedGlobals_308);
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1ABED8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsSimulationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsSimulationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsSimulationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsSimulationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226PhysicsSimulationComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v6);
  v38 = v40;
}

void re::ecs2::PhysicsSimulationComponent::~PhysicsSimulationComponent(re::ecs2::PhysicsSimulationComponent *this)
{
  *this = &unk_1F5CF48D0;
  v2 = *(this + 12);
  if (v2)
  {
    CFRelease(v2);
    *(this + 12) = 0;
  }

  v3 = *(this + 13);
  if (v3)
  {
    CFRelease(v3);
    *(this + 13) = 0;
  }

  objc_destroyWeak(this + 10);
  *(this + 10) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::PhysicsSimulationComponent::~PhysicsSimulationComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PhysicsSimulationComponent::removeFromSimulation(re::ecs2::PhysicsSimulationComponent *this)
{
  WeakRetained = objc_loadWeakRetained(this + 10);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    (*(*WeakRetained[6] + 144))(WeakRetained[6], 0);
    if (*(this + 13) && *(this + 11))
    {
      v4 = (*(*(v3 - 1) + 56))();
      v5 = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v4);
      if (v5)
      {
        v6 = *(this + 2);
        if (v6)
        {
          v7 = v5;
          do
          {
            v8 = v6;
            v6 = *(v6 + 32);
          }

          while (v6);
          v9 = *(v8 + 24);
          if (v9)
          {
            v12[0] = 0;
            SceneDataEntity = makeSceneDataEntity(v9, v12, 0, re::ecs2::Scene::kSharedSceneDataEntityID, 1);
            if (SceneDataEntity)
            {
              v11 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v11)
              {
                (*(*v7 + 72))(v7, *(this + 13), v11 + 32);
              }
            }
          }
        }
      }

      *(this + 11) = 0;
      CFRelease(*(this + 13));
      *(this + 13) = 0;
    }

    objc_destroyWeak(this + 10);
    *(this + 10) = 0;
  }
}

void re::ecs2::PhysicsSimulationComponent::setLocallyManagedParentTimebase(re::ecs2::PhysicsSimulationComponent *this, CFTypeRef cf)
{
  v3 = *(this + 12);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(this + 12) = 0;
    }

    if (cf)
    {
      CFRetain(cf);
      *(this + 12) = cf;
    }

    WeakRetained = objc_loadWeakRetained(this + 10);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      re::PhysicsSimulation::setParentClockOrTimebase((WeakRetained - 8), *(this + 12));
    }
  }
}

BOOL re::ecs2::PhysicsSimulationComponentStateImpl::processDirtyComponents(_BOOL8 a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v69 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v58, 3047, a1, *(a5 + 40), 0, 0);
  v8 = (*(**(a3[1] + 56) + 32))(*(a3[1] + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v12 = v9, v13 = a3[1], v14 = (*(*v9 + 24))(v9), v15 = (*(*v12 + 40))(v12, v13), v57[0] = v14, (v57[1] = v15) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v68, a5, 0);
    v16 = *&v68[0];
    v54 = a4;
    v55 = *&v68[0];
    v56 = DWORD2(v68[0]);
    v17 = WORD4(v68[0]);
    v18 = HIWORD(DWORD2(v68[0]));
    if (*&v68[0] != a5 || WORD4(v68[0]) != 0xFFFF || v18 != 0xFFFF)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v16 + 16);
        if (v20 <= v18)
        {
          v59 = 0;
          memset(v68, 0, sizeof(v68));
          v51 = MEMORY[0x1E69E9C10];
          v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v60 = 136315906;
          v61 = "operator[]";
          v62 = 1024;
          if (v52)
          {
            v53 = 3;
          }

          else
          {
            v53 = 2;
          }

          v63 = 797;
          v64 = 2048;
          v65 = v19;
          v66 = 2048;
          v67 = v20;
          _os_log_send_and_compose_impl(v53, &v59, v68, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v54, v55);
          _os_crash_msg();
          __break(1u);
        }

        v21 = *(*(*(v16 + 32) + 16 * v18) + 8 * v17);
        v22 = *(v21 + 16);
        v23 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v57, v22);
        if ((*(v22 + 304) & 1) == 0 || (v24 = v23) == 0)
        {
          v40 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v55);
          re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v54, v40, a3[4]);
          re::ecs2::PhysicsSimulationComponent::removeFromSimulation(v21);
          goto LABEL_44;
        }

        v25 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v23);
        WeakRetained = objc_loadWeakRetained((v21 + 80));
        if (WeakRetained)
        {
          v27 = WeakRetained - 8;
        }

        else
        {
          v27 = 0;
        }

        if (WeakRetained)
        {
        }

        if (v27 != v25)
        {
          re::ecs2::PhysicsSimulationComponent::removeFromSimulation(v21);
        }

        v28 = *(v21 + 26) ? *(v21 + 25) | 2u : *(v21 + 25);
        (*(**(v25 + 56) + 144))(*(v25 + 56), v28);
        re::ecs2::PhysicsSimulationData::setGravityOverride(v24, (v21 + 32));
        re::ecs2::PhysicsSimulationData::setFixedTimeStepOverride(v24, v21 + 64);
        re::RigidBodyCollection::setSolverIterations(v25 + 80, v21 + 72);
        v29 = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v8);
        if (v29)
        {
          break;
        }

LABEL_43:
        objc_storeWeak((v21 + 80), (v25 + 8));
        v48 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v55);
        re::ecs2::ComponentBucketsBase::moveComponent(a3[2], v54, v48, a3[6]);
LABEL_44:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v55);
        v16 = v55;
        v17 = v56;
        v18 = HIWORD(v56);
        if (v55 == a5 && v56 == 0xFFFF && HIWORD(v56) == 0xFFFF)
        {
          goto LABEL_47;
        }
      }

      v30 = v29;
      v31 = *(v21 + 16);
      if (v31)
      {
        v32 = *(v21 + 16);
        do
        {
          v33 = v32;
          v32 = *(v32 + 32);
        }

        while (v32);
        v34 = *(v33 + 24);
        if (v34)
        {
          LOBYTE(v68[0]) = 0;
          SceneDataEntity = makeSceneDataEntity(v34, v68, 1, re::ecs2::Scene::kSharedSceneDataEntityID, 1);
          v36 = re::ecs2::EntityComponentCollection::getOrAdd((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v37 = *(v21 + 96);
          v38 = *(v21 + 104);
          if (v37 != v38)
          {
            v39 = v36;
            if (v38)
            {
              (*(*v30 + 72))(v30, *(v21 + 104), v36 + 32);
              CFRelease(*(v21 + 104));
              *(v21 + 104) = 0;
              v37 = *(v21 + 96);
              if (!v37)
              {
LABEL_32:
                v43 = *(SceneDataEntity + 27);
                if (!v43)
                {
                  v43 = re::ecs2::EntityComponentCollection::add((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                }

                re::ecs2::NetworkComponent::markDirty(v43, v39);
                goto LABEL_35;
              }

LABEL_30:
              *(v21 + 88) = (*(*v30 + 64))(v30, v37, v39 + 32, 0);
              v41 = *(v21 + 96);
              *(v21 + 104) = v41;
              CFRetain(v41);
              v42 = *(v31 + 216);
              if (v42)
              {
                re::ecs2::NetworkComponent::markDirty(v42, v21);
              }

              goto LABEL_32;
            }

            if (v37)
            {
              goto LABEL_30;
            }
          }
        }
      }

LABEL_35:
      v44 = *(v21 + 96);
      if (v44)
      {
        if (*(v25 + 872) != v44)
        {
          re::PhysicsSimulation::setParentClockOrTimebase(v25, v44);
        }
      }

      else if (*(v21 + 88))
      {
        v45 = (*(*v30 + 96))(v30);
        if (v45)
        {
          v46 = v45;
          re::PhysicsSimulation::setParentClockOrTimebase(v25, v45);
          CFRelease(v46);
        }
      }

      else
      {
        v47 = *(v25 + 872);
        if (v47)
        {
          CFRelease(v47);
          *(v25 + 872) = 0;
        }
      }

      goto LABEL_43;
    }

LABEL_47:
    v49 = *(a5 + 40) != 0;
  }

  else
  {
    v49 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v58, v10, v11);
  return v49;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PhysicsSimulationComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PhysicsSimulationComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t re::make::shared::unsafelyInplace<re::ecs2::PhysicsSimulationComponent>(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0u;
  v2 = (a1 + 80);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF48D0;
  *(v3 + 25) = 0;
  *(v3 + 32) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0x100000006;
  objc_initWeak(v2, 0);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226PhysicsSimulationComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 10;
    *(a2 + 8) = 0;
  }
}

void re::ecs2::Pin::~Pin(re::ecs2::Pin *this)
{
  *this = &unk_1F5CF49C0;
  re::DynamicArray<re::ecs2::EntityHandle>::deinit(this + 200);
  if (*(this + 176) == 1)
  {
    re::StringID::destroyString((this + 184));
  }

  re::DynamicArray<re::ecs2::PinAlignment>::deinit(this + 96);
  re::StringID::destroyString((this + 8));
}

{
  re::ecs2::Pin::~Pin(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::Pin::Pin(uint64_t a1, const StringID *a2, _OWORD *a3, _OWORD *a4, unsigned __int8 *a5, _OWORD *a6, uint64_t *a7)
{
  *a1 = &unk_1F5CF49C0;
  re::StringID::StringID((a1 + 8), a2);
  v13 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 48) = v13;
  v14 = a6[1];
  *(a1 + 64) = *a6;
  *(a1 + 80) = v14;
  re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(a1 + 96, a7);
  v15 = a4[1];
  *(a1 + 144) = *a4;
  *(a1 + 160) = v15;
  v16 = *a5;
  *(a1 + 176) = v16;
  if (v16 == 1)
  {
    re::StringID::StringID((a1 + 184), (a5 + 8));
  }

  *(a1 + 232) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  return a1;
}

void re::ecs2::Pin::attachEntity(re::ecs2::Pin *this, re::ecs2::Entity *a2)
{
  if ((re::ecs2::findEntityIndex(this + 200, a2) & 0x80000000) != 0)
  {
    re::ecs2::EntityHandle::EntityHandle(location, a2);
    re::DynamicArray<re::ecs2::EntityHandle>::add((this + 200), location);
    re::ecs2::EntityHandle::reset(location);
    objc_destroyWeak(location);
  }
}

uint64_t re::ecs2::findEntityIndex(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  for (i = 8; ; i += 24)
  {
    v6 = *(a1 + 32);
    if (!re::ecs2::EntityHandle::isNull((v6 + i - 8)) && *(v6 + i) == *(a2 + 312))
    {
      break;
    }

    if (*(a1 + 16) <= ++v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

void re::ecs2::Pin::detachEntity(re::ecs2::Pin *this, re::ecs2::Entity *a2)
{
  EntityIndex = re::ecs2::findEntityIndex(this + 200, a2);
  if ((EntityIndex & 0x80000000) == 0)
  {

    re::DynamicArray<re::ecs2::EntityHandle>::removeAt(this + 200, EntityIndex);
  }
}

void re::DynamicArray<re::ecs2::EntityHandle>::removeAt(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  if (v3 <= a2)
  {
    v9 = 0;
    memset(v18, 0, sizeof(v18));
    v6 = MEMORY[0x1E69E9C10];
    v10 = 136315906;
    v11 = "removeAt";
    v12 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v13 = 931;
    v14 = 2048;
    v15 = a2;
    v16 = 2048;
    v17 = v3;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  if (v3 - 1 > a2)
  {
    re::ecs2::EntityHandle::operator=((*(a1 + 32) + 24 * a2), *(a1 + 32) + 24 * v3 - 24);
    v3 = *(a1 + 16);
  }

  v5 = *(a1 + 32) + 24 * v3;
  re::ecs2::EntityHandle::reset((v5 - 24));
  objc_destroyWeak((v5 - 24));
  *(v5 - 24) = 0;
  --*(a1 + 16);
  ++*(a1 + 24);
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::PinAlignment>>::get(uint64_t a1, BOOL a2, uint64_t a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  if ((atomic_load_explicit(&qword_1EE1ABFB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABFB8))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1ABFF8);
    qword_1EE1ABFF8 = &unk_1F5CF49F0;
    __cxa_guard_release(&qword_1EE1ABFB8);
  }

  if ((_MergedGlobals_309 & 1) == 0)
  {
    v6 = re::ecs2::introspect_PinAlignment(1, a2, a3, a4, a5, a6);
    if ((_MergedGlobals_309 & 1) == 0)
    {
      v7 = v6;
      _MergedGlobals_309 = 1;
      v8 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1ABFF8, 0);
      qword_1EE1AC008 = 0x2800000003;
      dword_1EE1AC010 = v8;
      word_1EE1AC014 = 0;
      *&xmmword_1EE1AC018 = 0;
      *(&xmmword_1EE1AC018 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AC028 = v7;
      unk_1EE1AC030 = 0;
      qword_1EE1ABFF8 = &unk_1F5CF49F0;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v18, &qword_1EE1ABFF8);
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
        re::TypeBuilder::setConstructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v18, 1);
        re::TypeBuilder::setListAccessors(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v18, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v18, v13);
        re::StackScratchAllocator::~StackScratchAllocator(v21);
      }

      xmmword_1EE1AC018 = v14;
      if (v16)
      {
        if (v16)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_Pin(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABFB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABFB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC038, "Pin");
    __cxa_guard_release(&qword_1EE1ABFB0);
  }

  return &unk_1EE1AC038;
}

void re::ecs2::initInfo_Pin(re::ecs2 *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v41[0] = 160490;
  v41[1] = "Pin";
  if (v41[0])
  {
    if (v41[0])
    {
    }
  }

  *(this + 2) = v42;
  if ((atomic_load_explicit(&qword_1EE1ABFA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABFA8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::IntrospectionInfo<re::StringID>::get(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "m_name";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0x800000001;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1ABFC0 = v10;
    v11 = re::introspectionAllocator();
    v12 = re::introspect_PoseF(1);
    v13 = (*(*v11 + 32))(v11, 72, 8);
    *v13 = 1;
    *(v13 + 8) = "m_pose";
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    *(v13 + 32) = 0x2000000002;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    qword_1EE1ABFC8 = v13;
    v14 = re::introspectionAllocator();
    v20 = re::introspect_AABB(1, v15, v16, v17, v18, v19);
    v21 = (*(*v14 + 32))(v14, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "m_box";
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x4000000003;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1ABFD0 = v21;
    v22 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::ecs2::PinAlignment>>::get(v22, v23, v24, v25, v26, v27);
    v28 = (*(*v22 + 32))(v22, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "m_alignments";
    *(v28 + 16) = &qword_1EE1ABFF8;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x6000000004;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1ABFD8 = v28;
    v29 = re::introspectionAllocator();
    v30 = re::introspect_PoseF(1);
    v31 = (*(*v29 + 32))(v29, 72, 8);
    *v31 = 1;
    *(v31 + 8) = "m_userOffset";
    *(v31 + 16) = v30;
    *(v31 + 24) = 0;
    *(v31 + 32) = 0x9000000005;
    *(v31 + 40) = 0;
    *(v31 + 48) = 0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 0;
    qword_1EE1ABFE0 = v31;
    v32 = re::introspectionAllocator();
    v34 = re::IntrospectionInfo<re::Optional<re::StringID>>::get(1, v33);
    v35 = (*(*v32 + 32))(v32, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "m_skeletalJointName";
    *(v35 + 16) = v34;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0xB000000006;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1ABFE8 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "m_attachedEntities";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0xC800000007;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1ABFF0 = v39;
    __cxa_guard_release(&qword_1EE1ABFA8);
  }

  *(this + 2) = 0xF000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1ABFC0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::Pin>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::Pin>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::Pin>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::Pin>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v40 = v42;
}

double re::internal::defaultConstruct<re::ecs2::Pin>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CF49C0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0x3F80000000000000;
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *(a3 + 64) = vnegq_f32(v4);
  *(a3 + 80) = v4;
  *(a3 + 128) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  *(a3 + 120) = 0;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0x3F80000000000000;
  *(a3 + 176) = 0;
  *(a3 + 232) = 0;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 200) = 0;
  *(a3 + 224) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::Pin>(uint64_t a1)
{
  *a1 = &unk_1F5CF49C0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &str_67;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x3F80000000000000;
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(a1 + 64) = vnegq_f32(v2);
  *(a1 + 80) = v2;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  *(a1 + 176) = 0;
  *(a1 + 232) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::PinAlignment>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::PinAlignment>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::PinAlignment>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4) + (v8 << 7);
  *v9 = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0x3F80000000000000;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0x3F80000000000000;
  *(v9 + 80) = 1;
  *(v9 + 120) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 88) = 0;
  *(v9 + 112) = 1;
  v10 = *(this + 2) + 1;
  *(this + 2) = v10;
  ++*(this + 6);
  v11 = (*(this + 4) + (v10 << 7) - 128);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

unint64_t re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + (a3 << 7);
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

  return *(a2 + 32) + (a3 << 7);
}

void *re::DynamicArray<re::ecs2::PinAlignment>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = (a2 << 7) | 0x58;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 128;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v4 << 7) | 0x78;
      do
      {
        v7 = (v3[4] + v6);
        *(v7 - 120) = 0;
        *(v7 - 13) = 0uLL;
        *(v7 - 11) = 0;
        *(v7 - 10) = 0x3F80000000000000;
        *(v7 - 9) = 0uLL;
        *(v7 - 7) = 0;
        *(v7 - 6) = 0x3F80000000000000;
        *(v7 - 40) = 1;
        *v7 = 0;
        *(v7 - 3) = 0;
        *(v7 - 2) = 0;
        *(v7 - 4) = 0;
        v6 += 128;
        *(v7 - 2) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::PinAlignment>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::PinAlignment>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::PinAlignment>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::ecs2::PinAlignment>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 7;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 128;
        v11 -= 128;
      }

      while (v11);
    }
  }
}

uint64_t re::DynamicArray<re::ecs2::PinAlignment>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = v2 << 7;
    v4 = *(result + 32) + 88;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v4);
      v4 += 128;
      v3 -= 128;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + (a2 << 7);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 7);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::ecs2::VideoComponent::applyVideoAttachmentToParameterBlock(uint64_t a1, char **this, re::TextureHandle *a3, re::MaterialParameterBlock *a4, int a5, int a6)
{
  v72 = *MEMORY[0x1E69E9840];
  isTextureAttachment = re::ecs2::VideoMaterialAttachment::isTextureAttachment(this, this);
  v13 = *this >> 1;
  if (!isTextureAttachment)
  {
    if (v13 == 0x32970A2E88169C84)
    {
      v20 = this[1];
      if (v20 == "REVideoAttachmentConstantImageFunction" || (isTextureAttachment = strcmp(v20, "REVideoAttachmentConstantImageFunction"), !isTextureAttachment))
      {
        if (a6 == -1)
        {
          return;
        }

        v68 = a6;
        *buf = 0x3D3952D14E0320A8;
        v19 = &v44;
        goto LABEL_33;
      }
    }

    else if (v13 == 0x41C03F11B6A8BA59)
    {
      v18 = this[1];
      if (v18 == "REVideoAttachmentConstantYCbCrMatrix" || (isTextureAttachment = strcmp(v18, "REVideoAttachmentConstantYCbCrMatrix"), !isTextureAttachment))
      {
        if (a5 == -1)
        {
          return;
        }

        v68 = a5;
        *buf = 0x3C8C0FE134EC625DLL;
        v19 = &v45;
LABEL_33:
        re::MaterialParameterBlock::setConstant(a4, buf, 4uLL, &v68, 1, v19);
        return;
      }
    }

    if (atomic_exchange(&re::ecs2::VideoComponent::applyVideoAttachmentToParameterBlock(re::ecs2::Entity *,re::ecs2::VideoMaterialAttachment const&,re::VideoTextureHandles &,re::MaterialParameterBlock &,unsigned int,unsigned int)::__FILE____LINE___logged, 1u))
    {
      return;
    }

    v21 = *re::graphicsLogObjects(isTextureAttachment);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

LABEL_25:
    v22 = v21;
    v23 = *(a1 + 296);
    v24 = this[1];
    *buf = 136315394;
    *&buf[4] = v23;
    v70 = 2080;
    v71 = v24;
    _os_log_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEFAULT, "(%s) Unknown video component attachment %s encountered; skipping...", buf, 0x16u);

    return;
  }

  if (*this >> 1 > 0x52B9782D83821E50)
  {
    if (*this >> 1 <= 0x7FDCEB30A1A454B0)
    {
      if (*this >> 1 > 0x624E48A54CCAF811)
      {
        if (v13 == 0x624E48A54CCAF812)
        {
          v40 = *(a3 + 10);
          v41 = *(a3 + 11);
          a3 = (a3 + 80);
          if (v41 && v40)
          {
            v64 = this[2] >> 1;
            v16 = &v65;
            v17 = &v64;
            goto LABEL_73;
          }

          return;
        }

        if (v13 == 0x73F7DC258CB875B1)
        {
          v30 = *(a3 + 12);
          v31 = *(a3 + 13);
          a3 = (a3 + 96);
          if (v31 && v30)
          {
            v66 = 0x585071CC318CDD9ALL;
            v16 = &v67;
            v17 = &v66;
            goto LABEL_73;
          }

          return;
        }
      }

      else
      {
        if (v13 == 0x52B9782D83821E51)
        {
          v38 = *(a3 + 22);
          v39 = *(a3 + 23);
          a3 = (a3 + 176);
          if (v39 && v38)
          {
            v54 = this[2] >> 1;
            v16 = &v55;
            v17 = &v54;
            goto LABEL_73;
          }

          return;
        }

        if (v13 == 0x52B9782D83821E52)
        {
          v14 = *(a3 + 24);
          v15 = *(a3 + 25);
          a3 = (a3 + 192);
          if (v15 && v14)
          {
            v52 = this[2] >> 1;
            v16 = &v53;
            v17 = &v52;
LABEL_73:
            re::MaterialParameterBlock::setTextureHandle(a4, v17, a3, v16);
            return;
          }

          return;
        }
      }

      goto LABEL_59;
    }

    v25 = 0x7FDCEB30A1A454B2;
    if (*this >> 1 <= 0x7FDCEB30A1A454B2)
    {
      if (v13 == 0x7FDCEB30A1A454B1)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }

    if (v13 != 0x7FDCEB30A1A454B3)
    {
      if (v13 == 0x7FFEDE4BE45ACD2FLL)
      {
        goto LABEL_53;
      }

      goto LABEL_59;
    }

LABEL_56:
    v34 = *(a3 + 4);
    v35 = *(a3 + 5);
    a3 = (a3 + 32);
    if (v35 && v34)
    {
      v58 = this[2] >> 1;
      v16 = &v59;
      v17 = &v58;
      goto LABEL_73;
    }

    return;
  }

  if (*this >> 1 <= 0x489DE5C589B580C7)
  {
    if (v13 == 0x3B652FEC02A9004)
    {
      v42 = *(a3 + 8);
      v43 = *(a3 + 9);
      a3 = (a3 + 64);
      if (v43 && v42)
      {
        v46 = this[2] >> 1;
        v16 = &v47;
        v17 = &v46;
        goto LABEL_73;
      }

      return;
    }

    if (v13 == 0xAED356CD2DDD3B0)
    {
      v36 = *(a3 + 26);
      v37 = *(a3 + 27);
      a3 = (a3 + 208);
      if (v37 && v36)
      {
        v48 = this[2] >> 1;
        v16 = &v49;
        v17 = &v48;
        goto LABEL_73;
      }

      return;
    }

    v25 = 0x18BB8A89E24827A1;
LABEL_37:
    if (v13 == v25)
    {
      v26 = *(a3 + 2);
      v27 = *(a3 + 3);
      a3 = (a3 + 16);
      if (v27 && v26)
      {
        v60 = this[2] >> 1;
        v16 = &v61;
        v17 = &v60;
        goto LABEL_73;
      }

      return;
    }

    goto LABEL_59;
  }

  if (*this >> 1 > 0x4B1ED2EBAD5AE9A0)
  {
    if (v13 == 0x4B1ED2EBAD5AE9A1)
    {
LABEL_53:
      v32 = *(a3 + 6);
      v33 = *(a3 + 7);
      a3 = (a3 + 48);
      if (v33 && v32)
      {
        v50 = this[2] >> 1;
        v16 = &v51;
        v17 = &v50;
        goto LABEL_73;
      }

      return;
    }

    if (v13 == 0x52B9782D83821E50)
    {
      v28 = *(a3 + 20);
      v29 = *(a3 + 21);
      a3 = (a3 + 160);
      if (v29 && v28)
      {
        v56 = this[2] >> 1;
        v16 = &v57;
        v17 = &v56;
        goto LABEL_73;
      }

      return;
    }

LABEL_59:
    v21 = *re::graphicsLogObjects(isTextureAttachment);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    goto LABEL_25;
  }

  if (v13 != 0x489DE5C589B580C8)
  {
    if (v13 != 0x4B1ED2EBAC5B8AD3)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

LABEL_28:
  if (*(a3 + 1) && *a3)
  {
    v62 = this[2] >> 1;
    v16 = &v63;
    v17 = &v62;
    goto LABEL_73;
  }
}

double re::ecs2::VideoComponent::applyVideoTextureArrayAttachmentToParameterBlock(uint64_t a1, void *a2, re::TextureHandle *a3, re::MaterialParameterBlock *a4)
{
  v4 = *a2 >> 1;
  if (v4 > 0x52B9782D83821E51)
  {
    if (*a2 >> 1 <= 0x7FDCEB30A1A454B0uLL)
    {
      switch(v4)
      {
        case 0x52B9782D83821E52uLL:
          v21 = *(a3 + 24);
          v22 = *(a3 + 25);
          a3 = (a3 + 192);
          if (v22)
          {
            v23 = v21 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v25 = 0x434F49B340653E91;
            v7 = &v26;
            v8 = &v25;
            return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
          }

          break;
        case 0x624E48A54CCAF812uLL:
          v19 = *(a3 + 10);
          v20 = *(a3 + 11);
          a3 = (a3 + 80);
          if (v20 && v19)
          {
            v37 = 0x5E3E4F6B0382;
            v7 = &v38;
            v8 = &v37;
            return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
          }

          break;
        case 0x73F7DC258CB875B1uLL:
          v5 = *(a3 + 12);
          v6 = *(a3 + 13);
          a3 = (a3 + 96);
          if (v6)
          {
            if (v5)
            {
              v39 = 0x585071CC318CDD9ALL;
              v7 = &v40;
              v8 = &v39;
              return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
            }
          }

          break;
      }

      return result;
    }

    if (v4 != 0x7FDCEB30A1A454B1)
    {
      if (v4 != 0x7FDCEB30A1A454B2)
      {
        if (v4 != 0x7FDCEB30A1A454B3)
        {
          return result;
        }

LABEL_19:
        v11 = *(a3 + 4);
        v12 = *(a3 + 5);
        a3 = (a3 + 32);
        if (v12)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v31 = 0x434F49B340653E72;
          v7 = &v32;
          v8 = &v31;
          return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
        }

        return result;
      }

LABEL_29:
      v14 = *(a3 + 2);
      v15 = *(a3 + 3);
      a3 = (a3 + 16);
      if (v15)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v33 = 0x434F49B34064CA13;
        v7 = &v34;
        v8 = &v33;
        return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
      }

      return result;
    }

LABEL_26:
    if (*(a3 + 1) && *a3)
    {
      v35 = 0x434F49B3406455B4;
      v7 = &v36;
      v8 = &v35;
      return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
    }

    return result;
  }

  if (*a2 >> 1 <= 0x4B1ED2EBAC5B8AD2uLL)
  {
    if (v4 == 0x18BB8A89E24827A1)
    {
      goto LABEL_29;
    }

    if (v4 != 0x489DE5C589B580C8)
    {
      return result;
    }

    goto LABEL_26;
  }

  switch(v4)
  {
    case 0x4B1ED2EBAC5B8AD3uLL:
      goto LABEL_19;
    case 0x52B9782D83821E50uLL:
      v17 = *(a3 + 20);
      v18 = *(a3 + 21);
      a3 = (a3 + 160);
      if (v18 && v17)
      {
        v29 = 0x434F49B3406455D3;
        v7 = &v30;
        v8 = &v29;
        return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
      }

      break;
    case 0x52B9782D83821E51uLL:
      v9 = *(a3 + 22);
      v10 = *(a3 + 23);
      a3 = (a3 + 176);
      if (v10)
      {
        if (v9)
        {
          v27 = 0x434F49B34064CA32;
          v7 = &v28;
          v8 = &v27;
          return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
        }
      }

      break;
  }

  return result;
}

void re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(char **this, const re::ecs2::VideoMaterialAttachment *a2, re::MaterialParameterBlock *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  isTextureAttachment = re::ecs2::VideoMaterialAttachment::isTextureAttachment(this, a2);
  if (isTextureAttachment)
  {
    v13 = this[2] >> 1;
    re::MaterialParameterBlock::removeTexture(a2, &v13);
    return;
  }

  v6 = *this >> 1;
  if (v6 == 0x32970A2E88169C84)
  {
    v9 = this[1];
    if (v9 == "REVideoAttachmentConstantImageFunction" || (isTextureAttachment = strcmp(v9, "REVideoAttachmentConstantImageFunction"), !isTextureAttachment))
    {
      v8 = 0x3D3952D14E0320A8;
      goto LABEL_14;
    }
  }

  else if (v6 == 0x41C03F11B6A8BA59)
  {
    v7 = this[1];
    if (v7 == "REVideoAttachmentConstantYCbCrMatrix" || (isTextureAttachment = strcmp(v7, "REVideoAttachmentConstantYCbCrMatrix"), !isTextureAttachment))
    {
      v8 = 0x3C8C0FE134EC625DLL;
LABEL_14:
      *buf = v8;
      re::MaterialParameterBlock::removeConstant(a2, buf, 4);
      return;
    }
  }

  if ((atomic_exchange(re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(re::ecs2::VideoMaterialAttachment const&,re::MaterialParameterBlock &)::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v10 = *re::graphicsLogObjects(isTextureAttachment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = this[1];
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "removeVideoAttachmentFromParameterBlock: Unknown video component attachment %s encountered; skipping...", buf, 0xCu);
    }
  }
}

void ___ZN2re4ecs238remoteEffectsSystemActivationDebugGlowEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::BOOLValue(&var2, "RemoteEffectsActivationDebugGlow", a2);
  if (var2)
  {
    v2 = BYTE1(var2);
  }

  else
  {
    v2 = 0;
  }

  _MergedGlobals_310 = v2;
}

void ___ZN2re4ecs242remoteEffectsSystemPositionDebugGlowRadiusEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue(&v3, "RemoteEffectsPositionDebugGlowRadius", a2);
  v2 = *(&v3 + 1);
  if (!v3)
  {
    v2 = 0.0;
  }

  dword_1EE1AC0CC = LODWORD(v2);
}

BOOL re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v3 = *(*(a1 + 8) + 4 * ((v2 ^ (v2 >> 31)) % *(a1 + 24)));
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = 0x7FFFFFFFLL;
  while (*(v5 + 72 * v3 + 8) != a2)
  {
    v3 = *(v5 + 72 * v3) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      return v6 != 0x7FFFFFFF;
    }
  }

  v6 = v3;
  return v6 != 0x7FFFFFFF;
}

void re::ecs2::RemoteEffectsStyleIdCache::dumpCache(re::ecs2::RemoteEffectsStyleIdCache *this)
{
  *&v44[13] = *MEMORY[0x1E69E9840];
  v2 = *re::remoteEffectsLogObjects(this);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "=== RemoteEffectsStyleIdCache Cache Dump Begin ===", buf, 2u);
  }

  v4 = *re::remoteEffectsLogObjects(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "m_stylesToEntity:", buf, 2u);
  }

  v6 = *(this + 20);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 8);
    while (1)
    {
      v9 = *v8;
      v8 += 8;
      if (v9 < 0)
      {
        break;
      }

      if (v6 == ++v7)
      {
        LODWORD(v7) = *(this + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    v10 = *(this + 8);
    v11 = *re::remoteEffectsLogObjects(v5);
    v5 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v12 = v10 + 32 * v7;
      v13 = *(v12 + 8);
      v14 = *(*(v12 + 16) + 312);
      *buf = 134218240;
      *&buf[4] = v13;
      v43 = 2048;
      *v44 = v14;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "style: %llu --> entityId: %llu", buf, 0x16u);
    }

    v15 = *(this + 20);
    if (v15 <= v7 + 1)
    {
      v15 = v7 + 1;
    }

    while (v15 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 8) + 32 * v7) & 0x80000000) != 0)
      {
        goto LABEL_21;
      }
    }

    LODWORD(v7) = v15;
LABEL_21:
    ;
  }

  v16 = *re::remoteEffectsLogObjects(v5);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "=========", buf, 2u);
  }

  v18 = *re::remoteEffectsLogObjects(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "m_entityToStyles:", buf, 2u);
  }

  v37 = *(this + 8);
  if (v37)
  {
    v20 = 0;
    v21 = *(this + 2);
    while (1)
    {
      v22 = *v21;
      v21 += 18;
      if (v22 < 0)
      {
        break;
      }

      if (v37 == ++v20)
      {
        LODWORD(v20) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 != v37)
  {
    while (1)
    {
      v23 = *(this + 2) + 72 * v20;
      if (*(v23 + 44))
      {
        break;
      }

LABEL_45:
      v31 = re::DynamicString::append(buf, "]", 1uLL);
      v32 = *re::remoteEffectsLogObjects(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(v23 + 8);
        v34 = &buf[9];
        if (buf[8])
        {
          v34 = *&v44[1];
        }

        *v38 = 134218242;
        v39 = v33;
        v40 = 2080;
        v41 = v34;
        _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "entity: %llu --> styles: %s", v38, 0x16u);
      }

      v19 = *buf;
      if (*buf && (buf[8] & 1) != 0)
      {
        v19 = (*(**buf + 40))();
      }

      v35 = *(this + 8);
      if (v35 <= v20 + 1)
      {
        v35 = v20 + 1;
      }

      while (v35 - 1 != v20)
      {
        LODWORD(v20) = v20 + 1;
        if ((*(*(this + 2) + 72 * v20) & 0x80000000) != 0)
        {
          goto LABEL_58;
        }
      }

      LODWORD(v20) = v35;
LABEL_58:
      if (v20 == v37)
      {
        goto LABEL_59;
      }
    }

    v24 = 0;
    while (1)
    {
      v25 = *(v23 + 40);
      if (v25)
      {
        v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v24 ^ (v24 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v24 ^ (v24 >> 30))) >> 27));
        v27 = (v26 ^ (v26 >> 31)) % v25;
        v28 = *(v23 + 32);
        v29 = *(*(v23 + 24) + 4 * v27);
        if (v29 != 0x7FFFFFFF)
        {
          while (*(v28 + 24 * v29 + 16) != v24)
          {
            v29 = *(v28 + 24 * v29 + 8) & 0x7FFFFFFF;
            if (v29 == 0x7FFFFFFF)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_42;
        }
      }

      else
      {
        v28 = *(v23 + 32);
      }

LABEL_41:
      LODWORD(v29) = 0x7FFFFFFF;
LABEL_42:
      re::DynamicString::appendf(buf, "%llu", *(v28 + 24 * v29 + 16));
      v30 = *(v23 + 44);
      if (v24 != v30 - 1)
      {
        re::DynamicString::appendf(buf, ", ");
        v30 = *(v23 + 44);
      }

      if (++v24 >= v30)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_59:
  v36 = *re::remoteEffectsLogObjects(v19);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "=== RemoteEffectsStyleIdCache Cache Dump End ===", buf, 2u);
  }
}

uint64_t re::ecs2::RemoteEffectsStyleIdCache::updateStyles(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v66 = *(*a2 + 312);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v65 = 0x7FFFFFFFLL;
  v8 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v9 = *(v8 + 56);
  if (v9)
  {
    v10 = *(v8 + 72);
    v11 = &v10[16 * v9];
    do
    {
      v12 = *v10;
      v67 = v12;
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
      v14 = v13 ^ (v13 >> 31);
      if (DWORD2(v63))
      {
        v15 = v14 % DWORD2(v63);
        v16 = *(*(&v62 + 1) + 4 * v15);
        if (v16 != 0x7FFFFFFF)
        {
          while (*(v63 + 24 * v16 + 16) != v12)
          {
            LODWORD(v16) = *(v63 + 24 * v16 + 8) & 0x7FFFFFFF;
            if (v16 == 0x7FFFFFFF)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_10;
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

LABEL_9:
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(&v62, v15, v14, &v67, &v67);
      ++HIDWORD(v65);
LABEL_10:
      v10 += 16;
    }

    while (v10 != v11);
  }

  v17 = *a2;
  if (!*a2)
  {
    if (re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, MEMORY[0x138]))
    {
      goto LABEL_13;
    }

LABEL_29:
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v66 ^ (v66 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v66 ^ (v66 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, &v66, v32 ^ (v32 >> 31), &v67);
    if (HIDWORD(v68) == 0x7FFFFFFF)
    {
      v33 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v68, v67);
      *(v33 + 8) = v66;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v33 + 16, &v62);
      ++*(a1 + 40);
    }

    v34 = v64;
    if (v64)
    {
      v35 = 0;
      v36 = (v63 + 8);
      while (1)
      {
        v37 = *v36;
        v36 += 6;
        if (v37 < 0)
        {
          break;
        }

        if (v64 == ++v35)
        {
          LODWORD(v35) = v64;
          break;
        }
      }
    }

    else
    {
      LODWORD(v35) = 0;
    }

    if (v35 != v64)
    {
      v38 = v63;
      do
      {
        v67 = *(v38 + 24 * v35 + 16);
        re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 48, &v67, a2);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a3, &v67);
        v38 = v63;
        if (v64 <= v35 + 1)
        {
          v39 = v35 + 1;
        }

        else
        {
          v39 = v64;
        }

        while (v39 - 1 != v35)
        {
          LODWORD(v35) = v35 + 1;
          if ((*(v63 + 24 * v35 + 8) & 0x80000000) != 0)
          {
            goto LABEL_46;
          }
        }

        LODWORD(v35) = v39;
LABEL_46:
        ;
      }

      while (v35 != v34);
    }

    goto LABEL_86;
  }

  v18 = (v17 + 8);
  hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, *(v17 + 312));

  if (!hasCachedStyles)
  {
    goto LABEL_29;
  }

LABEL_13:
  v20 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
  if (*(v20 + 28) == HIDWORD(v63))
  {
    if (v64)
    {
      v21 = 0;
      v22 = *(v20 + 24);
      v23 = *(v20 + 16);
      while (1)
      {
        if ((*(v63 + 24 * v21 + 8) & 0x80000000) != 0)
        {
          if (!v22)
          {
            goto LABEL_23;
          }

          v25 = *(*(v20 + 8) + 4 * (*(v63 + 24 * v21) % v22));
          if (v25 == 0x7FFFFFFF)
          {
            goto LABEL_23;
          }

          while (*(v23 + 24 * v25 + 16) != *(v63 + 24 * v21 + 16))
          {
            v25 = *(v23 + 24 * v25 + 8) & 0x7FFFFFFF;
            if (v25 == 0x7FFFFFFF)
            {
              goto LABEL_23;
            }
          }
        }

        v24 = 0;
        if (++v21 == v64)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_89;
  }

LABEL_23:
  v60 = a3;
  v26 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
  v27 = v26;
  v28 = *(v26 + 32);
  if (v28)
  {
    v29 = 0;
    v30 = (*(v26 + 16) + 8);
    while (1)
    {
      v31 = *v30;
      v30 += 6;
      if (v31 < 0)
      {
        break;
      }

      if (v28 == ++v29)
      {
        LODWORD(v29) = *(v26 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v29) = 0;
  }

  if (v29 == v28)
  {
    v40 = 0;
  }

  else
  {
    v40 = 0;
    v41 = *(v26 + 16);
    v42 = *(v26 + 32);
    do
    {
      v43 = *(v41 + 24 * v29 + 16);
      v67 = v43;
      if (!DWORD2(v63) || (v44 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) >> 27)), v45 = *(*(&v62 + 1) + 4 * ((v44 ^ (v44 >> 31)) % DWORD2(v63))), v45 == 0x7FFFFFFF))
      {
LABEL_56:
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a4, &v67);
        re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 48, v67);
        v46 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v46, &v67);
        v42 = *(v27 + 32);
        v41 = *(v27 + 16);
        v40 = 1;
      }

      else
      {
        while (*(v63 + 24 * v45 + 16) != v43)
        {
          LODWORD(v45) = *(v63 + 24 * v45 + 8) & 0x7FFFFFFF;
          if (v45 == 0x7FFFFFFF)
          {
            goto LABEL_56;
          }
        }
      }

      if (v42 <= v29 + 1)
      {
        v47 = v29 + 1;
      }

      else
      {
        v47 = v42;
      }

      while (v47 - 1 != v29)
      {
        LODWORD(v29) = v29 + 1;
        if ((*(v41 + 24 * v29 + 8) & 0x80000000) != 0)
        {
          goto LABEL_64;
        }
      }

      LODWORD(v29) = v47;
LABEL_64:
      ;
    }

    while (v29 != v28);
  }

  v48 = v64;
  if (v64)
  {
    v49 = 0;
    v50 = (v63 + 8);
    v51 = v60;
    while (1)
    {
      v52 = *v50;
      v50 += 6;
      if (v52 < 0)
      {
        break;
      }

      if (v64 == ++v49)
      {
        LODWORD(v49) = v64;
        break;
      }
    }
  }

  else
  {
    LODWORD(v49) = 0;
    v51 = v60;
  }

  if (v49 != v64)
  {
    v53 = v63;
    do
    {
      v67 = *(v53 + 24 * v49 + 16);
      v54 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v54, &v67))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v51, &v67);
        re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 48, &v67, a2);
        v55 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v55, &v67);
        v40 = 1;
      }

      v53 = v63;
      if (v64 <= v49 + 1)
      {
        v56 = v49 + 1;
      }

      else
      {
        v56 = v64;
      }

      while (v56 - 1 != v49)
      {
        LODWORD(v49) = v49 + 1;
        if ((*(v63 + 24 * v49 + 8) & 0x80000000) != 0)
        {
          goto LABEL_82;
        }
      }

      LODWORD(v49) = v56;
LABEL_82:
      ;
    }

    while (v49 != v48);
  }

  if (!*(re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66) + 28))
  {
    re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1, &v66);
  }

  if ((v40 & 1) == 0)
  {
LABEL_89:
    v24 = 0;
    goto LABEL_90;
  }

LABEL_86:
  v57 = *a2;
  if (v57)
  {
    v58 = (v57 + 8);
  }

  v24 = 1;
LABEL_90:
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v62);
  return v24;
}

uint64_t re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 72 * v6 + 16;
}

void re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v11, a1, a2, v3 ^ (v3 >> 31));
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

void *re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::SharedPtr<re::RealityFile>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    v8 = *a3;
    result[1] = *a2;
    result[2] = v8;
    if (v8)
    {
      result = (v8 + 8);
    }

    ++*(a1 + 40);
  }

  return result;
}

BOOL re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

uint64_t re::ecs2::RemoteEffectsStyleIdCache::getStyles(re::ecs2::RemoteEffectsStyleIdCache *this, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*this || (v4 = *(*a2 + 312), v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27)), v6 = v5 ^ (v5 >> 31), v7 = *(*(this + 1) + 4 * (v6 % *(this + 6))), v7 == 0x7FFFFFFF))
  {
LABEL_6:
    re::ecs2::RemoteEffectsStyleIdCache::dumpCache(this);
    v10 = *re::remoteEffectsLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*a2 + 312);
      *buf = 134217984;
      v16 = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Failed to find entity %llu in m_entityToStyles", buf, 0xCu);
    }

    v4 = *(*a2 + 312);
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
    v6 = v12 ^ (v12 >> 31);
  }

  else
  {
    v8 = *(this + 2);
    while (*(v8 + 72 * v7 + 8) != v4)
    {
      v7 = *(v8 + 72 * v7) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  v14 = v4;
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this, &v14, v6, buf);
  return *(this + 2) + 72 * v17 + 16;
}

id re::ecs2::RemoteEffectsStyleIdCache::getEntity(re::ecs2::RemoteEffectsStyleIdCache *this, re::ecs2::RemoteEffectsStyleIdCache *a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2 + 48;
  v7 = a3 ^ (a3 >> 30);
  if (!*(a2 + 6) || (v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v7) ^ ((0xBF58476D1CE4E5B9 * v7) >> 27)), v9 = *(*(a2 + 7) + 4 * ((v8 ^ (v8 >> 31)) % *(a2 + 18))), v9 == 0x7FFFFFFF))
  {
LABEL_6:
    re::ecs2::RemoteEffectsStyleIdCache::dumpCache(a2);
    v12 = *re::remoteEffectsLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = a3;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Failed to find entity for styleId %llu.", &v16, 0xCu);
    }
  }

  else
  {
    v10 = *(a2 + 8);
    while (*(v10 + 32 * v9 + 8) != a3)
    {
      v9 = *(v10 + 32 * v9) & 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v7) ^ ((0xBF58476D1CE4E5B9 * v7) >> 27));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v16, v6, a3, v13 ^ (v13 >> 31));
  v15 = *(*(a2 + 8) + 32 * v18 + 16);
  *this = v15;
  if (v15)
  {
    return (v15 + 8);
  }

  return result;
}

double re::ecs2::RemoteEffectsStyleIdCache::removeEntity(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = (v2 + 8);
    hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, *(v2 + 312));

    if (hasCachedStyles)
    {
      v15 = *(*a2 + 312);
      v8 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v15);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v16, v8);
      v15 = *(*a2 + 312);
      re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1, &v15);
      v9 = v18;
      if (v18)
      {
        v10 = 0;
        v11 = (v17 + 8);
        while (1)
        {
          v12 = *v11;
          v11 += 6;
          if (v12 < 0)
          {
            break;
          }

          if (v18 == ++v10)
          {
            LODWORD(v10) = v18;
            break;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 != v18)
      {
        v13 = v17;
        do
        {
          re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 48, *(v13 + 24 * v10 + 16));
          v13 = v17;
          if (v18 <= v10 + 1)
          {
            v14 = v10 + 1;
          }

          else
          {
            v14 = v18;
          }

          while (v14 - 1 != v10)
          {
            LODWORD(v10) = v10 + 1;
            if ((*(v17 + 24 * v10 + 8) & 0x80000000) != 0)
            {
              goto LABEL_18;
            }
          }

          LODWORD(v10) = v14;
LABEL_18:
          ;
        }

        while (v10 != v9);
      }

      return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v16);
    }
  }

  return result;
}

BOOL re::ecs2::RemoteEffectsStateStore::stateExists(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v11 = a2;
  result = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, a2);
  if (result)
  {
    v6 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v11);
    if (*v6 && (v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a3) ^ ((0xBF58476D1CE4E5B9 * a3) >> 27)), v8 = *(*(v6 + 8) + 4 * ((v7 ^ (v7 >> 31)) % *(v6 + 24))), v8 != 0x7FFFFFFF))
    {
      v9 = *(v6 + 16);
      v10 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 4) != a3)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return v10 != 0x7FFFFFFF;
        }
      }

      v10 = v8;
      return v10 != 0x7FFFFFFF;
    }

    else
    {
      return 0;
    }
  }

  return result;
}