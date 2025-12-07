void re::IntrospectionInfo<re::DynamicArray<re::RenderGraphInheritanceData>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1969C0, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1969C0);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE196E58);
      qword_1EE196E58 = &unk_1F5CC5648;
      __cxa_guard_release(&qword_1EE1969C0);
    }
  }

  if ((byte_1EE19679F & 1) == 0)
  {
    v1 = qword_1EE1968F8;
    if (qword_1EE1968F8 || (v1 = re::allocInfo_RenderGraphInheritanceData(a1), qword_1EE1968F8 = v1, re::initInfo_RenderGraphInheritanceData(v1, v2, v3, v4), (byte_1EE19679F & 1) == 0))
    {
      byte_1EE19679F = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE196E58, 0);
      qword_1EE196E68 = 0x2800000003;
      dword_1EE196E70 = v5;
      word_1EE196E74 = 0;
      *&xmmword_1EE196E78 = 0;
      *(&xmmword_1EE196E78 + 1) = 0xFFFFFFFFLL;
      qword_1EE196E88 = v1;
      qword_1EE196E90 = 0;
      qword_1EE196E58 = &unk_1F5CC5648;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE196E58);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE196E78 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::RenderGraphFile>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CC5700;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *a3 = &unk_1F5CC4EA8;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0u;
  *(a3 + 168) = 0u;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0;
  *(a3 + 232) = 0u;
  *(a3 + 248) = 0u;
  *(a3 + 264) = 0;
  *(a3 + 304) = 0;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 312) = 0u;
  *(a3 + 328) = 0u;
  *(a3 + 344) = 0;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  re::DynamicString::setCapacity((a3 + 368), 0);
  result = 0.0;
  *(a3 + 428) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 444) = 0x7FFFFFFFLL;
  *(a3 + 456) = 0u;
  *(a3 + 472) = 0u;
  *(a3 + 488) = 0;
  *(a3 + 492) = 0x7FFFFFFFLL;
  *(a3 + 504) = 0u;
  *(a3 + 520) = 0u;
  *(a3 + 536) = 0;
  *(a3 + 540) = 0x7FFFFFFFLL;
  *(a3 + 552) = 0u;
  *(a3 + 568) = 0u;
  *(a3 + 584) = 0;
  *(a3 + 588) = 0x7FFFFFFFLL;
  *(a3 + 632) = 0;
  *(a3 + 600) = 0u;
  *(a3 + 616) = 0u;
  *(a3 + 636) = 0x7FFFFFFFLL;
  *(a3 + 648) = 0u;
  *(a3 + 664) = 0u;
  *(a3 + 680) = 0;
  *(a3 + 684) = 0x7FFFFFFFLL;
  *(a3 + 696) = 0;
  *(a3 + 704) = 1;
  *(a3 + 712) = 0u;
  *(a3 + 728) = 0u;
  *(a3 + 744) = 0u;
  *(a3 + 756) = 0u;
  *(a3 + 772) = 0x7FFFFFFFLL;
  *(a3 + 800) = 0;
  *(a3 + 808) = 0;
  *(a3 + 784) = 0u;
  *(a3 + 856) = 0;
  *(a3 + 848) = 0;
  *(a3 + 816) = 0u;
  *(a3 + 832) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::RenderGraphFile>(uint64_t a1)
{
  *a1 = &unk_1F5CC5700;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *a1 = &unk_1F5CC4EA8;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  re::DynamicString::setCapacity((a1 + 368), 0);
  result = 0.0;
  *(a1 + 428) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 444) = 0x7FFFFFFFLL;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 492) = 0x7FFFFFFFLL;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 540) = 0x7FFFFFFFLL;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 588) = 0x7FFFFFFFLL;
  *(a1 + 632) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 636) = 0x7FFFFFFFLL;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0;
  *(a1 + 684) = 0x7FFFFFFFLL;
  *(a1 + 696) = 0;
  *(a1 + 704) = 1;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 756) = 0u;
  *(a1 + 772) = 0x7FFFFFFFLL;
  *(a1 + 800) = 0;
  *(a1 + 808) = 0;
  *(a1 + 784) = 0u;
  *(a1 + 856) = 0;
  *(a1 + 848) = 0;
  *(a1 + 816) = 0u;
  *(a1 + 832) = 0u;
  return result;
}

void re::RenderGraphSpecifyLaneOperation::~RenderGraphSpecifyLaneOperation(re::RenderGraphSpecifyLaneOperation *this)
{
  re::StringID::destroyString((this + 184));
  if (*(this + 32) == 1)
  {
    re::AssetHandle::~AssetHandle((this + 112));
  }

  re::StringID::destroyString((this + 16));
}

{
  re::StringID::destroyString((this + 184));
  if (*(this + 32) == 1)
  {
    re::AssetHandle::~AssetHandle((this + 112));
  }

  re::StringID::destroyString((this + 16));

  JUMPOUT(0x1E6906520);
}

unint64_t re::hashStringWithLength(re *this, const char *a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("UpdateMaterialTextureSource", 0x1BuLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128(this, a2, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128(this, 5uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("DynamicFunctionConstants", 0x18uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

double re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      v5 = 16 * v3;
      do
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
        }

        v4 += 16;
      }

      while (v5 != v4);
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

uint64_t *re::RenderGraphDataStore::tryGetIntrospectionByNameHash@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>, unint64_t a3@<X1>)
{
  if (!this[22] || (v3 = *(this[23] + 4 * (a3 % *(this + 50))), v3 == 0x7FFFFFFF))
  {
LABEL_6:
    *a1 = 0;
  }

  else
  {
    v4 = this[24];
    while (*(v4 + 24 * v3 + 8) != a3)
    {
      v3 = *(v4 + 24 * v3) & 0x7FFFFFFF;
      if (v3 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }

    *a1 = 1;
    a1[1] = *(v4 + 24 * v3 + 16);
  }

  return this;
}

uint64_t re::RenderGraphDataStore::tryGetByTypeNameHash(re::RenderGraphDataStore *this, uint64_t a2, unint64_t a3)
{
  v4 = (a2 + (a3 << 6) + (a3 >> 2) - 0x61C8864680B583E9) ^ a3;
  v10 = v4;
  if (*(this + 2))
  {
    v5 = *(*(this + 3) + 4 * (v4 % *(this + 10)));
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(this + 4);
      while (*(v6 + 24 * v5 + 8) != v4)
      {
        v5 = *(v6 + 24 * v5) & 0x7FFFFFFF;
        if (v5 == 0x7FFFFFFF)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_13;
    }
  }

LABEL_6:
  if (*(this + 8))
  {
    v5 = *(*(this + 9) + 4 * (v4 % *(this + 22)));
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(this + 10);
      while (*(v6 + 24 * v5 + 8) != v4)
      {
        v5 = *(v6 + 24 * v5) & 0x7FFFFFFF;
        if (v5 == 0x7FFFFFFF)
        {
          goto LABEL_11;
        }
      }

LABEL_13:
      v8 = v6 + 24 * v5 + 16;
      return *v8;
    }
  }

LABEL_11:
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 14, &v10);
  if (v7 != -1)
  {
    v8 = *(this + 15) + 16 * v7 + 8;
    return *v8;
  }

  return 0;
}

uint64_t re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 24 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 24 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 24 * v8) & 0x7FFFFFFF;
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

double re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<re::NodePatchData>::deinit(v6 + v4 + 16);
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

__n128 re::DynamicArray<re::DetailedError>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DetailedError>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *v5 = result;
  *(v5 + 40) = a2[2].n128_u64[1];
  v7 = a2[1].n128_u64[1];
  *(v5 + 16) = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  v8 = a2[2].n128_u64[0];
  a2[2].n128_u64[1] = 0;
  v10 = *(v5 + 24);
  v9 = *(v5 + 32);
  *(v5 + 24) = v7;
  *(v5 + 32) = v8;
  a2[1].n128_u64[1] = v10;
  a2[2].n128_u64[0] = v9;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::DetailedError>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::DetailedError>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::DetailedError>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::DetailedError>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DetailedError>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 1) = 0u;
          *(v11 + 2) = 0u;
          *v11 = v12;
          v14 = v8[2];
          v13 = (v8 + 2);
          v11[2] = v14;
          *v13 = 0;
          v11[5] = *(v13 + 3);
          *(v13 + 3) = 0;
          v16 = v11[3];
          v15 = v11[4];
          v17 = *(v13 + 2);
          v11[3] = *(v13 + 1);
          v11[4] = v17;
          *(v13 + 1) = v16;
          *(v13 + 2) = v15;
          re::DynamicString::deinit(v13);
          v11 += 6;
          v8 = (v13 + 32);
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

void re::RenderGraphTargetData::~RenderGraphTargetData(re::RenderGraphTargetData *this)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(this + 120);
  re::AssetHandle::~AssetHandle((this + 88));
  re::StringID::destroyString(this);
}

void re::RenderGraphInputData::~RenderGraphInputData(re::RenderGraphInputData *this)
{
  re::StringID::destroyString((this + 40));
  re::StringID::destroyString((this + 16));
  re::StringID::destroyString(this);
}

void re::RenderGraphOutputData::~RenderGraphOutputData(re::RenderGraphOutputData *this)
{
  re::StringID::destroyString((this + 32));
  re::StringID::destroyString((this + 16));
  re::StringID::destroyString(this);
}

uint64_t re::DynamicArray<re::BindPointAndPath>::deinit(uint64_t a1)
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
        v5 = (v3 + 48);
        v6 = v4 << 6;
        do
        {
          re::StringID::destroyString(v5);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 - 40);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v5 - 40);
          v5 = (v5 + 64);
          v6 -= 64;
        }

        while (v6);
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

uint64_t re::DynamicArray<re::RenderGraphBufferData>::deinit(uint64_t a1)
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
        v5 = 88 * v4;
        do
        {
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v3 + 48);
          re::StringID::destroyString(v3);
          v3 = (v3 + 88);
          v5 -= 88;
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

uint64_t re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit(uint64_t a1)
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
        v5 = 56 * v4;
        do
        {
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v3 + 16);
          re::StringID::destroyString(v3);
          v3 = (v3 + 56);
          v5 -= 56;
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

double re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 24);
          re::FixedArray<CoreIKTransform>::deinit((v8 + 48));
          re::FixedArray<CoreIKTransform>::deinit(v9);
          v3 = *(a1 + 8);
        }

        v4 += 88;
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

uint64_t re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(uint64_t a1)
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
        v5 = 136 * v4;
        do
        {
          re::DynamicArray<re::DynamicString>::deinit(v3 + 72);
          re::DynamicString::deinit((v3 + 40));
          re::DynamicArray<re::DynamicString>::deinit(v3);
          v3 += 136;
          v5 -= 136;
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

void re::RenderGraphDataStoreConnection::~RenderGraphDataStoreConnection(re::RenderGraphDataStoreConnection *this)
{
  re::DynamicArray<re::DynamicString>::deinit(this + 72);
  re::DynamicString::deinit((this + 40));
  re::DynamicArray<re::DynamicString>::deinit(this);
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addAsMove(uint64_t *a1, unsigned int a2, unint64_t a3, void *a4)
{
  v6 = *(a1 + 9);
  if (v6 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    v7 = v6;
    if (v6 == *(a1 + 6))
    {
      v9 = *(a1 + 7);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v6 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v26, v11, v10);
          v13 = *v26;
          *v26 = *a1;
          *a1 = v13;
          v14 = *&v26[16];
          v15 = a1[2];
          *&v26[16] = v15;
          a1[2] = v14;
          v17 = *&v26[24];
          *&v26[24] = *(a1 + 3);
          v16 = *&v26[32];
          *(a1 + 3) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = (v15 + 8);
            do
            {
              if ((*(v19 - 1) & 0x80000000) != 0)
              {
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::addAsMove(a1, *v19 % *(a1 + 6), *v19, v19);
              }

              v19 += 2;
              --v18;
            }

            while (v18);
          }

          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v26);
        }
      }

      else
      {
        if (v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v7 = *(a1 + 8);
    }

    *(a1 + 8) = v7 + 1;
    v20 = a1[2];
    v21 = *(v20 + 16 * v6);
  }

  else
  {
    v20 = a1[2];
    v21 = *(v20 + 16 * v6);
    *(a1 + 9) = v21 & 0x7FFFFFFF;
  }

  v23 = 16 * v6;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = a1[1];
  *(a1[2] + v23) = *(a1[2] + 16 * v6) & 0x80000000 | *(v24 + 4 * a2);
  *(a1[2] + 16 * v6 + 8) = *a4;
  *(v24 + 4 * a2) = v6;
  ++*(a1 + 7);
  return v6;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 16 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

__n128 std::__function::__func<re::RenderGraphFile::calculateValidity(void)::$_0,std::allocator<re::RenderGraphFile::calculateValidity(void)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC4F88;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::RenderGraphFile::calculateValidity(void)::$_0,std::allocator<re::RenderGraphFile::calculateValidity(void)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(uint64_t result, uint64_t a2, unint64_t **a3)
{
  if (*(a2 + 16) == 11)
  {
    v4 = result;
    v5 = *a3;
    v6 = *(a2 + 48);
    if (!strcmp(v6, "RenderGraphTargetHandle"))
    {
      v7 = *v5;
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(*(v4 + 8), *v5))
      {
        v8 = *(v4 + 16);
        v9 = *v8;
        if ((**v8 & 1) == 0)
        {
          re::DynamicString::append(*(v8 + 8), "\n", 1uLL);
          v9 = *v8;
          v7 = *v5;
        }

        *v9 = 0;
        re::DynamicString::appendf(*(v4 + 24), "Node (%s) references target named (%llu) which is undefined.", *(*(*(v4 + 32) + 8) + 16), v7);
        v6 = *(a2 + 48);
      }
    }

    result = strcmp(v6, "RenderGraphBufferHandle");
    if (!result)
    {
      v10 = *v5;
      result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::containsKey(*(v4 + 40), *v5);
      if ((result & 1) == 0)
      {
        v11 = *(v4 + 16);
        v12 = *v11;
        if ((**v11 & 1) == 0)
        {
          re::DynamicString::append(*(v11 + 8), "\n", 1uLL);
          v12 = *v11;
          v10 = *v5;
        }

        *v12 = 0;
        return re::DynamicString::appendf(*(v4 + 24), "Node (%s) references buffer named (%llu) which is undefined.", *(*(*(v4 + 32) + 8) + 16), v10);
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<re::RenderGraphFile::calculateValidity(void)::$_0,std::allocator<re::RenderGraphFile::calculateValidity(void)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::init(v22, v4, v2);
      v5 = *a1;
      *a1 = *v22;
      v6 = a1[2];
      v7 = *&v22[8];
      *v22 = v5;
      *&v22[16] = v6;
      *(a1 + 1) = v7;
      v9 = *&v22[24];
      *&v22[24] = *(a1 + 3);
      v8 = *&v22[32];
      *(a1 + 3) = v9;
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
                re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::setCapacity(a1, (2 * v11));
                v16 = v14 % *(a1 + 6);
                v18 = *(a1 + 8);
                v12 = a1[1];
              }

              *(a1 + 8) = v18 + 1;
              v19 = a1[2];
              v20 = *(v19 + 24 * v17 + 8);
            }

            else
            {
              v19 = a1[2];
              v20 = *(v19 + 24 * v17 + 8);
              *(a1 + 9) = v20 & 0x7FFFFFFF;
            }

            *(v19 + 24 * v17 + 8) = v20 | 0x80000000;
            *(a1[2] + 24 * v17 + 8) = *(a1[2] + 24 * v17 + 8) & 0x80000000 | *(v12 + 4 * v16);
            *(a1[2] + 24 * v17) = v14;
            *(a1[2] + 24 * v17 + 16) = *v13;
            v12 = a1[1];
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 7) + 1;
            *(a1 + 7) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22);
    }
  }

  else
  {
    if (v2)
    {
      v21 = v2;
    }

    else
    {
      v21 = 3;
    }
  }
}

void re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

void re::HashSetBase<re::RenderGraphSpecifyOperationBase *,re::RenderGraphSpecifyOperationBase *,re::internal::ValueAsKey<re::RenderGraphSpecifyOperationBase *>,re::Hash<re::RenderGraphSpecifyOperationBase *>,re::EqualTo<re::RenderGraphSpecifyOperationBase *>,true,false>::setCapacity(__int128 *a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 6) != a2 && *(a1 + 7) <= a2)
    {
      memset(v22, 0, 36);
      *&v22[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RenderGraphNode *,re::RenderGraphNode *,re::internal::ValueAsKey<re::RenderGraphNode *>,re::Hash<re::RenderGraphNode *>,re::EqualTo<re::RenderGraphNode *>,true,false>::init(v22, v4, a2);
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
                re::HashSetBase<re::RenderGraphSpecifyOperationBase *,re::RenderGraphSpecifyOperationBase *,re::internal::ValueAsKey<re::RenderGraphSpecifyOperationBase *>,re::Hash<re::RenderGraphSpecifyOperationBase *>,re::EqualTo<re::RenderGraphSpecifyOperationBase *>,true,false>::setCapacity(a1, 2 * v11);
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
            v12 = *(a1 + 1);
            *(v12 + 4 * v16) = v17;
            v11 = *(a1 + 7) + 1;
            *(a1 + 7) = v11;
          }

          v13 += 3;
          --v10;
        }

        while (v10);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22);
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

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphDataStoreConnection>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x88uLL))
        {
          v2 = 136 * a2;
          result = (*(*result + 32))(result, 136 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 136, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v26, v28);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v27, v29);
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
        v10 = 0;
        v11 = v8 + 136 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 5) = 0u;
          *(v13 + 7) = 0u;
          v13[5] = *(v8 + v10 + 40);
          *(v8 + v10 + 40) = 0;
          v13[8] = *(v8 + v10 + 64);
          *(v12 + 64) = 0;
          v18 = v7[v10 / 8 + 6];
          v17 = v7[v10 / 8 + 7];
          v19 = *(v8 + v10 + 56);
          v13[6] = *(v8 + v10 + 48);
          v13[7] = v19;
          LODWORD(v19) = LODWORD(v7[v10 / 8 + 3]) + 1;
          *(v12 + 48) = v18;
          *(v12 + 56) = v17;
          v13[13] = 0;
          *(v13 + 24) = 0;
          v13[10] = 0;
          v13[11] = 0;
          v13[9] = 0;
          v20 = (v8 + v10 + 72);
          v21 = *v20;
          *(v13 + 6) = v19;
          v22 = *(v8 + v10 + 80);
          v13[9] = v21;
          *v20 = 0;
          v13[10] = v22;
          *(v12 + 80) = 0;
          v23 = v7[v10 / 8 + 11];
          v13[11] = *(v8 + v10 + 88);
          *(v12 + 88) = v23;
          v24 = v7[v10 / 8 + 13];
          v13[13] = *(v8 + v10 + 104);
          *(v12 + 104) = v24;
          *(v12 + 96) = *(v8 + v10 + 96) + 1;
          *(v13 + 24) = LODWORD(v7[v10 / 8 + 12]) + 1;
          v25 = *(v8 + v10 + 112);
          v13[16] = *(v8 + v10 + 128);
          *(v13 + 7) = v25;
          re::DynamicArray<re::DynamicString>::deinit(v20);
          re::DynamicString::deinit((v8 + v10 + 40));
          re::DynamicArray<re::DynamicString>::deinit(v8 + v10);
          v10 += 136;
        }

        while (v12 + 136 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

double re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v12[0] = a1;
      v4 = *(a1 + 16);
      if (v4 >= 0x10)
      {
        v5 = 0;
        v6 = *a1;
        v7 = v4 >> 4;
        while (1)
        {
          v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v12[1] = v8 ^ 0xFFFFLL;
          if (v8 != 0xFFFFLL)
          {
            break;
          }

          v5 -= 16;
          ++v6;
          if (!--v7)
          {
            goto LABEL_10;
          }
        }

        v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
        v10 = v9 - v5;
        v13 = v9 - v5;
        if (v9 + 1 != v5)
        {
          do
          {
            *(v3 + 16 * v10) = 0;
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
            v10 = v13;
          }

          while (v13 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(*v1 + 40))(v1);
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

int64x2_t re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd(uint64_t *a1, void *a2, uint64_t *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::resize(a1);
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
  v16 = 16 * (v13 + 16 * v11);
  v17 = (a1[1] + v16);
  v18 = *a3;
  *v17 = *a2;
  v17[1] = v18;
  if (v15 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  result = vaddq_s64(*(a1 + 3), v20);
  *(a1 + 3) = result;
  v22 = *(a1[1] + v16) ^ (*(a1[1] + v16) >> 30);
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v22) ^ ((0xBF58476D1CE4E5B9 * v22) >> 27));
  a1[5] ^= (v23 >> 31) ^ v23;
  return result;
}

double re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::resize(uint64_t a1)
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
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v25, v8, v3);
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
        re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::internalAdd(v25, (*(v23[0] + 8) + 16 * v15), (*(v23[0] + 8) + 16 * v15 + 8));
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
  return re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(v25);
}

void sub_1E205B54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  re::HashBrown<re::WeakStringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,void,false>::deinit(va);
  _Unwind_Resume(a1);
}

uint64_t re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 88 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 88 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 88 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 88 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = a1[2];
          *&v30[16] = v13;
          a1[2] = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 3);
          v14 = *&v30[32];
          *(a1 + 3) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 40;
            do
            {
              if ((*(v17 - 40) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, *(v17 + 40) % *(a1 + 6), *(v17 + 40));
                v19 = *(v17 - 24);
                *(v18 + 8) = *(v17 - 32);
                *(v18 + 16) = v19;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                v20 = *(v17 - 8);
                *(v18 + 24) = *(v17 - 16);
                *(v18 + 32) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 40);
                *(v18 + 40) = *v17;
                *v17 = v21;
                *(v18 + 48) = 0;
                *(v18 + 56) = 0;
                *(v18 + 64) = 0;
                v22 = *(v17 + 16);
                *(v18 + 48) = *(v17 + 8);
                *(v18 + 56) = v22;
                *(v17 + 8) = 0;
                *(v17 + 16) = 0;
                v23 = *(v18 + 64);
                *(v18 + 64) = *(v17 + 24);
                *(v17 + 24) = v23;
                *(v18 + 72) = *(v17 + 32);
              }

              v17 += 88;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v30);
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

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v24 = a1[2];
    v25 = *(v24 + 88 * v5);
  }

  else
  {
    v24 = a1[2];
    v25 = *(v24 + 88 * v5);
    *(a1 + 9) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 88 * v5;
  *v27 = v25 | 0x80000000;
  v28 = a1[1];
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 80) = a3;
  ++*(a1 + 7);
  return v24 + 88 * v5;
}

void re::HashTable<unsigned long,re::RenderGraphFile::ConnectionCacheInfo,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 88 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

uint64_t re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, unint64_t *a2, void *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 24 * HIDWORD(v10) + 16;
  }

  v6 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
  v7 = *a2;
  *(v6 + 16) = *a3;
  result = v6 + 16;
  *(result - 8) = v7;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v9, v4, v2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = a1[2];
      a1[2] = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 3);
      *(a1 + 3) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(v4, *(v7 + v5 + 8) % *(v4 + 24), *(v7 + v5 + 8));
        v8 = *(a2 + 16) + v5;
        v10 = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 8) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

void re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

uint64_t re::DynamicArray<re::NodePatchData>::deinit(uint64_t a1)
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
        v5 = 56 * v4;
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v3 + 3);
          re::FixedArray<CoreIKTransform>::deinit(v3);
          v3 += 7;
          v5 -= 56;
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

void *re::DynamicArray<re::NodePatchData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::NodePatchData>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
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
        v10 = &v8[7 * v9];
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v12 = v8[1];
          *v11 = *v8;
          v11[1] = v12;
          *v8 = 0;
          v8[1] = 0;
          v13 = v11[2];
          v11[2] = v8[2];
          v8[2] = v13;
          v11[3] = 0;
          v11[4] = 0;
          v11[5] = 0;
          v11[3] = v8[3];
          v8[3] = 0;
          v14 = v11[5];
          v15 = v8[5];
          v11[4] = v8[4];
          v11[5] = v15;
          v8[4] = 0;
          v8[5] = v14;
          v11[6] = v8[6];
          re::FixedArray<CoreIKTransform>::deinit(v8 + 3);
          re::FixedArray<CoreIKTransform>::deinit(v8);
          v11 += 7;
          v8 += 7;
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = a1[2];
          *&v29[16] = v13;
          a1[2] = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 3);
          v14 = *&v29[32];
          *(a1 + 3) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 6), *(v17 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v23 = a1[2];
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = a1[2];
    v24 = *(v23 + (v5 << 6));
    *(a1 + 9) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = a1[1];
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 7);
  return v23 + (v5 << 6);
}

void re::HashTable<unsigned long long,re::DynamicArray<re::NodePatchData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphNode *,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

void re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_231, 4 * v10);
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphBufferHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
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

uint64_t re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::RenderGraphInputData const*,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 24 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 24 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 24 * v4;
}

__n128 std::__function::__func<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0,std::allocator<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC5008;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

double std::__function::__func<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0,std::allocator<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(void *a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16) != 11)
  {
    return result;
  }

  v3 = *a3;
  v4 = a1[3];
  if (a1[1] == a2)
  {
    if (!*(v4 + 552) || (v10 = *(*(v4 + 560) + 4 * (*v3 % *(v4 + 576))), v10 == 0x7FFFFFFF))
    {
LABEL_16:
      v8 = a1[4];
      if (*(v4 + 16))
      {
        v9 = *(v4 + 24);
      }

      else
      {
        v9 = v4 + 17;
      }

LABEL_20:
      re::DynamicString::format(&v14, "Invalid RenderGraphFile detected (%s). Call calculateValidity before using.", a2, v9);
      re::RenderFrame::addError(v8, &v14);
      if (v14)
      {
        if (v15)
        {
          (*(*v14 + 40))();
        }
      }

      return result;
    }

    v11 = *(v4 + 568);
    while (1)
    {
      v12 = v11 + 32 * v10;
      if (*(v12 + 8) == *v3)
      {
        break;
      }

      v10 = *(v11 + 32 * v10) & 0x7FFFFFFF;
      if (v10 == 0x7FFFFFFF)
      {
        goto LABEL_16;
      }
    }

    result = *(v12 + 24);
    *(v3 + 8) = result;
  }

  if (a1[2] != a2)
  {
    return result;
  }

  if (!*(v4 + 600) || (v5 = *(*(v4 + 608) + 4 * (*v3 % *(v4 + 624))), v5 == 0x7FFFFFFF))
  {
LABEL_9:
    v8 = a1[4];
    if (*(v4 + 16))
    {
      v9 = *(v4 + 24);
    }

    else
    {
      v9 = v4 + 17;
    }

    goto LABEL_20;
  }

  v6 = *(v4 + 616);
  while (1)
  {
    v7 = v6 + 32 * v5;
    if (*(v7 + 8) == *v3)
    {
      break;
    }

    v5 = *(v6 + 32 * v5) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

  result = *(v7 + 24);
  *(v3 + 8) = result;
  return result;
}

void sub_1E205CABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13)
{
  if (a11)
  {
    if (a12)
    {
      (*(*a11 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0,std::allocator<re::RenderGraphFile::provide(char const*,char const*,re::RenderFrame &)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(_BOOL8 result, uint64_t a2, void *a3)
{
  v3 = result;
  v4 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0;
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v7 = v5 % *(a2 + 24);
  v8 = *(*(a2 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v10 = *(a2 + 16);
  result = re::StringID::operator==((v10 + 32 * v8 + 8), a3);
  if (result)
  {
    LODWORD(v6) = v8;
LABEL_5:
    LODWORD(v8) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v11 = *(v10 + 32 * v8);
  v6 = v11 & 0x7FFFFFFF;
  if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else
  {
    result = re::StringID::operator==((v10 + 32 * v6 + 8), a3);
    if (!result)
    {
      LODWORD(v12) = v6;
      while (1)
      {
        LODWORD(v8) = v12;
        v13 = *(v10 + 32 * v6);
        v12 = v13 & 0x7FFFFFFF;
        LODWORD(v6) = 0x7FFFFFFF;
        if ((v13 & 0x7FFFFFFF) == 0x7FFFFFFF)
        {
          break;
        }

        result = re::StringID::operator==((v10 + 32 * v12 + 8), a3);
        v6 = v12;
        if (result)
        {
          LODWORD(v6) = v12;
          break;
        }
      }
    }
  }

LABEL_7:
  *v3 = v5;
  *(v3 + 8) = v7;
  *(v3 + 12) = v6;
  *(v3 + 16) = v8;
  return result;
}

uint64_t re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 1) >> 31) ^ (*(v17 - 1) >> 1));
                v19 = (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31);
                v20 = re::HashTable<re::StringID,re::RenderGraphDataNodeConnection const*,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v19 % *(a1 + 24), v19);
                v21 = *(v17 - 1);
                v20[1] = v20[1] & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                v20[1] = *(v17 - 1) & 0xFFFFFFFFFFFFFFFELL | v21 & 1;
                v20[2] = *v17;
                *(v17 - 1) = 0;
                *v17 = &str_67;
                v20[3] = v17[1];
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 32 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 32 * v4;
}

_anonymous_namespace_ *re::DynamicArray<re::BindPointAndPath>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::BindPointAndPath>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BindPointAndPath>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::BindPointAndPath>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BindPointAndPath>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v19, v21);
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
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v20, v22);
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
        v10 = &v8[8 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          *(v11 + 8) = 0;
          v13 = (v8 + 1);
          v14 = v8[2];
          v11[1] = v8[1];
          v8[1] = 0;
          v11[2] = v14;
          v8[2] = 0;
          v15 = v11[3];
          v11[3] = v8[3];
          v8[3] = v15;
          v16 = v11[5];
          v11[5] = v8[5];
          v8[5] = v16;
          ++*(v8 + 8);
          ++*(v11 + 8);
          v18 = v8[6];
          v17 = (v8 + 6);
          v11[6] = v11[6] & 0xFFFFFFFFFFFFFFFELL | v18 & 1;
          v11[6] = *v17 & 0xFFFFFFFFFFFFFFFELL | v18 & 1;
          v11[7] = *(v17 + 1);
          *v17 = 0;
          *(v17 + 1) = &str_67;
          re::StringID::destroyString(v17);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v13);
          v11 += 8;
          v8 = (v17 + 16);
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

void *re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

_anonymous_namespace_ *re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RenderGraphDataStoreConnection>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  memset(v31, 0, 40);
  v30 = 0u;
  v28 = 0;
  memset(&v29[8], 0, 32);
  v26 = 0u;
  v27 = 0u;
  re::DynamicString::setCapacity(v29, 0);
  *&v29[32] = 0;
  v30 = 0uLL;
  LODWORD(v31[0]) = 0;
  memset(v31 + 8, 0, 32);
  v8 = *(a4 + 16);
  if (v8 >= *(a4 + 8))
  {
    re::DynamicArray<re::RenderGraphDataStoreConnection>::growCapacity(a4, v8 + 1);
    v8 = *(a4 + 16);
  }

  v9 = *(a4 + 32) + 136 * v8;
  *(v9 + 32) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 0;
  v10 = *(&v26 + 1);
  *v9 = v26;
  *(v9 + 8) = v10;
  v26 = 0uLL;
  v11 = *(v9 + 16);
  *(v9 + 16) = v27;
  *&v27 = v11;
  v12 = *(v9 + 32);
  *(v9 + 32) = v28;
  v28 = v12;
  ++DWORD2(v27);
  ++*(v9 + 24);
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 64) = *&v29[24];
  v13 = *&v29[8];
  *(v9 + 40) = *v29;
  v14 = *&v29[16];
  *v29 = 0;
  *&v29[24] = 0;
  v16 = *(v9 + 48);
  v15 = *(v9 + 56);
  *(v9 + 48) = v13;
  *(v9 + 56) = v14;
  *&v29[8] = v16;
  *&v29[16] = v15;
  *(v9 + 104) = 0;
  *(v9 + 96) = 0;
  *(v9 + 80) = 0;
  *(v9 + 88) = 0;
  *(v9 + 72) = 0;
  v17 = v30;
  *(v9 + 72) = *&v29[32];
  *(v9 + 80) = v17;
  *&v29[32] = 0;
  *&v30 = 0;
  v18 = *(v9 + 88);
  *(v9 + 88) = *(&v30 + 1);
  *(&v30 + 1) = v18;
  v19 = *(v9 + 104);
  *(v9 + 104) = *(&v31[0] + 1);
  *(&v31[0] + 1) = v19;
  ++LODWORD(v31[0]);
  ++*(v9 + 96);
  v20 = v31[1];
  *(v9 + 128) = *&v31[2];
  *(v9 + 112) = v20;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::DynamicString>::deinit(&v29[32]);
  if (*v29)
  {
    if (v29[8])
    {
      (*(**v29 + 40))(*v29, *&v29[16], v21, v22, v23);
    }

    memset(v29, 0, 32);
  }

  re::DynamicArray<re::DynamicString>::deinit(&v26);
  v24 = (*(a4 + 32) + 136 * *(a4 + 16) - 136);
  re::introspectionInitElement(a2, a3, a1[6], v24);
  return v24;
}

unint64_t re::IntrospectionDynamicArray<re::RenderGraphDataStoreConnection>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 136 * a3;
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

  return *(a2 + 32) + 136 * a3;
}

_anonymous_namespace_ *re::DynamicArray<re::RenderGraphDataStoreConnection>::resize(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 136 * a2;
    v9 = a2;
    do
    {
      v10 = *(v3 + 4) + v8;
      re::DynamicArray<re::DynamicString>::deinit(v10 + 72);
      re::DynamicString::deinit((v10 + 40));
      result = re::DynamicArray<re::DynamicString>::deinit(v10);
      ++v9;
      v8 += 136;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(result + 1) < a2)
    {
      result = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(result, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 136 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *(v7 + 128) = 0;
        *(v7 + 96) = 0u;
        *(v7 + 112) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        result = re::DynamicString::setCapacity((v7 + 40), 0);
        *(v7 + 80) = 0;
        *(v7 + 72) = 0;
        *(v7 + 96) = 0;
        *(v7 + 88) = 0;
        v6 += 136;
        *(v7 + 104) = 0u;
        *(v7 + 120) = 0u;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 136 * v8;
      do
      {
        re::DynamicArray<re::DynamicString>::deinit(v9 + 72);
        re::DynamicString::deinit((v9 + 40));
        re::DynamicArray<re::DynamicString>::deinit(v9);
        v9 += 136;
        v10 -= 136;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphDataStoreConnection>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::RenderGraphDataStoreConnection>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 136 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 136;
        v14 -= 136;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 136 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 136 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataStoreConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionOptional<re::RenderGraphTargetDescriptionData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::RenderGraphTargetDescriptionData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::RenderGraphTargetDescriptionData>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *v9 = 2;
    *&v9[8] = 2;
    *&v9[40] = -1;
    memset(&v9[12], 255, 24);
    __asm { FMOV            V0.2S, #1.0 }

    v10 = 0;
    v12[0] = 0;
    v11 = 0;
    *(v12 + 5) = 0;
    v13[0] = 1;
    v14 = *v9;
    v17 = _D0;
    v16 = *&v9[32];
    v15 = *&v9[16];
    v18 = 2;
    memset(v19, 0, sizeof(v19));
    v20 = 0;
    re::Optional<re::RenderGraphTargetDescriptionData>::operator=(a2, v13);
    if (v13[0] == 1)
    {
      re::AssetHandle::~AssetHandle(v19);
    }

    v8 = &v10;
  }

  else
  {
    v13[0] = 0;
    re::Optional<re::RenderGraphTargetDescriptionData>::operator=(a2, v13);
    if (v13[0] != 1)
    {
      return;
    }

    v8 = v19;
  }

  re::AssetHandle::~AssetHandle(v8);
}

uint64_t re::IntrospectionOptional<re::RenderGraphTargetDescriptionData>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

uint64_t re::Optional<re::RenderGraphTargetDescriptionData>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if ((*a2 & 1) == 0)
    {
      re::AssetHandle::~AssetHandle((a1 + 80));
      *a1 = 0;
      return a1;
    }

    *(a1 + 8) = *(a2 + 8);
    v3 = *(a2 + 24);
    v4 = *(a2 + 40);
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
    *(a1 + 40) = v4;
    *(a1 + 24) = v3;
    v6 = *(a1 + 88);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 88) = v6;
    goto LABEL_6;
  }

  if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);
    v9 = *(a2 + 72);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v8;
    *(a1 + 24) = v7;
    *(a1 + 72) = v9;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 88) = 0;
LABEL_6:
    v10 = *(a1 + 80);
    *(a1 + 80) = 0;
    *(a1 + 80) = *(a2 + 80);
    *(a2 + 80) = v10;
    v11 = *(a1 + 96);
    *(a1 + 96) = *(a2 + 96);
    *(a2 + 96) = v11;
    *(a1 + 104) = *(a2 + 104);
  }

  return a1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

void re::TypeBuilderHelper::registerOptional<re::RenderGraphTargetDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, __int128 *a2)
{
  if (a2)
  {
    v6[0] = 1;
    v4 = *a2;
    v8 = a2[1];
    v5 = a2[3];
    v9 = a2[2];
    v10 = v5;
    v11 = *(a2 + 8);
    v7 = v4;
    re::AssetHandle::AssetHandle(v12, (a2 + 72));
    v12[24] = *(a2 + 96);
    re::Optional<re::RenderGraphTargetDescriptionData>::operator=(a1, v6);
    if (v6[0] != 1)
    {
      return;
    }
  }

  else
  {
    v6[0] = 0;
    re::Optional<re::RenderGraphTargetDescriptionData>::operator=(a1, v6);
    if (v6[0] != 1)
    {
      return;
    }
  }

  re::AssetHandle::~AssetHandle(v12);
}

void *re::IntrospectionOptional<re::RenderGraphBufferDescriptionData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::RenderGraphBufferDescriptionData>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::RenderGraphBufferDescriptionData>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 2;
    *(a2 + 16) = -1;
    *(a2 + 24) = -1;
    *(a2 + 32) = 1065353216;
    *(a2 + 36) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::RenderGraphBufferDescriptionData>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

__n128 re::TypeBuilderHelper::registerOptional<re::RenderGraphBufferDescriptionData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *a2;
    v6 = *(a2 + 16);
    if (*a1)
    {
      result = *a2;
      v3 = *(a2 + 16);
      v4 = *(a2 + 24);
      *(a1 + 36) = *(a2 + 28);
      *(a1 + 32) = v4;
      *(a1 + 24) = v3;
      *(a1 + 8) = result;
    }

    else
    {
      *a1 = 1;
      result = v5;
      *(a1 + 8) = v5;
      *(a1 + 24) = v6;
    }
  }

  else if (*a1 == 1)
  {
    *a1 = 0;
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphTargetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphTargetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphTargetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphTargetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphTargetData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphTargetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphTargetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphTargetData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  *&v26[36] = 0;
  *&v27[8] = 0;
  v29 = 0;
  v30 = 0;
  *v26 = 2;
  *&v26[8] = 2;
  *&v26[40] = -1;
  memset(&v26[12], 255, 24);
  __asm { FMOV            V0.2S, #1.0 }

  *v27 = _D0;
  *&v27[12] = 0x200000000;
  v28 = 0uLL;
  memset(&v27[20], 0, 44);
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  if (v13 >= v14)
  {
    v15 = v13 + 1;
    if (v14 < v13 + 1)
    {
      if (*a4)
      {
        v16 = 2 * v14;
        if (!v14)
        {
          v16 = 8;
        }

        if (v16 <= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v16;
        }

        re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a4, v17);
      }

      else
      {
        re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a4, v15);
        ++*(a4 + 24);
      }
    }

    v13 = *(a4 + 16);
  }

  v18 = *(a4 + 32) + 160 * v13;
  *v18 &= ~1uLL;
  *v18 = 0;
  *(v18 + 8) = &str_67;
  *(v18 + 32) = *&v26[16];
  *(v18 + 48) = *&v26[32];
  *(v18 + 64) = *v27;
  *(v18 + 80) = *&v27[16];
  *(v18 + 16) = *v26;
  *(v18 + 96) = 0;
  *(v18 + 104) = 0;
  *(v18 + 88) = 0;
  *(v18 + 96) = *&v27[32];
  *&v27[32] = 0;
  v19 = *(v18 + 88);
  *(v18 + 88) = 0;
  *(v18 + 88) = *&v27[24];
  *&v27[24] = v19;
  v20 = *(v18 + 104);
  *(v18 + 104) = *&v27[40];
  *&v27[40] = v20;
  *(v18 + 112) = v27[48];
  *(v18 + 152) = 0;
  *(v18 + 128) = 0;
  *(v18 + 136) = 0;
  *(v18 + 120) = 0;
  *(v18 + 144) = 0;
  v21 = v28;
  *(v18 + 120) = *&v27[56];
  *(v18 + 128) = v21;
  *&v27[56] = 0;
  *&v28 = 0;
  v22 = *(v18 + 136);
  *(v18 + 136) = *(&v28 + 1);
  *(&v28 + 1) = v22;
  v23 = *(v18 + 152);
  *(v18 + 152) = v30;
  v30 = v23;
  LODWORD(v29) = v29 + 1;
  ++*(v18 + 144);
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(&v27[56]);
  re::AssetHandle::~AssetHandle(&v27[24]);
  v24 = (*(a4 + 32) + 160 * *(a4 + 16) - 160);
  re::introspectionInitElement(a2, a3, a1[6], v24);
  return v24;
}

unint64_t re::IntrospectionDynamicArray<re::RenderGraphTargetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 160 * a3;
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

  return *(a2 + 32) + 160 * a3;
}

void *re::DynamicArray<re::RenderGraphTargetData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphTargetData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xA0uLL))
        {
          v2 = 160 * a2;
          result = (*(*result + 32))(result, 160 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 160, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v23, v25);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v24, v26);
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
        v10 = v8 + 160 * v9;
        v11 = v8 + 88;
        v12 = v7;
        do
        {
          v13 = *(v11 - 88);
          *v12 = *v12 & 0xFFFFFFFFFFFFFFFELL | *(v11 - 88) & 1;
          *v12 = *(v11 - 88) & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
          v12[1] = *(v11 - 80);
          *(v11 - 80) = &str_67;
          *(v11 - 88) = 0;
          v14 = *(v11 - 8);
          v15 = *(v11 - 24);
          v16 = *(v11 - 40);
          *(v12 + 2) = *(v11 - 56);
          *(v12 + 3) = v16;
          *(v12 + 4) = v15;
          v12[10] = v14;
          *(v12 + 1) = *(v11 - 72);
          v12[12] = 0;
          v12[13] = 0;
          v12[11] = 0;
          v12[12] = *(v11 + 8);
          *(v11 + 8) = 0;
          v17 = v12[11];
          v12[11] = 0;
          v12[11] = *v11;
          *v11 = v17;
          v18 = v12[13];
          v12[13] = *(v11 + 16);
          *(v11 + 16) = v18;
          *(v12 + 112) = *(v11 + 24);
          v12[19] = 0;
          v12[16] = 0;
          v12[17] = 0;
          v12[15] = 0;
          *(v12 + 36) = 0;
          v19 = *(v11 + 40);
          v12[15] = *(v11 + 32);
          *(v11 + 32) = 0;
          v12[16] = v19;
          *(v11 + 40) = 0;
          v20 = v12[17];
          v12[17] = *(v11 + 48);
          *(v11 + 48) = v20;
          v21 = v12[19];
          v12[19] = *(v11 + 64);
          *(v11 + 64) = v21;
          ++*(v11 + 56);
          ++*(v12 + 36);
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v11 + 32);
          re::AssetHandle::~AssetHandle(v11);
          re::StringID::destroyString((v11 - 88));
          v12 += 20;
          v22 = v11 + 72;
          v11 += 160;
        }

        while (v22 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void re::DynamicArray<re::RenderGraphTargetData>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v13 = 160 * a2;
    v14 = a2;
    do
    {
      v15 = result[4] + v13;
      re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v15 + 120);
      re::AssetHandle::~AssetHandle((v15 + 88));
      re::StringID::destroyString(v15);
      ++v14;
      v13 += 160;
    }

    while (v14 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::RenderGraphTargetData>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 160 * v4;
      __asm { FMOV            V1.2S, #1.0 }

      do
      {
        v12 = result[4] + v6;
        *v12 = 0;
        *(v12 + 8) = &str_67;
        *(v12 + 16) = 2;
        *(v12 + 24) = 2;
        *(v12 + 56) = -1;
        *(v12 + 28) = -1;
        *(v12 + 36) = -1;
        *(v12 + 44) = -1;
        *(v12 + 64) = _D1;
        *(v12 + 72) = 0;
        *(v12 + 80) = 2;
        *(v12 + 152) = 0;
        *(v12 + 128) = 0;
        *(v12 + 136) = 0;
        *(v12 + 120) = 0;
        *(v12 + 144) = 0;
        *(v12 + 84) = 0;
        *(v12 + 100) = 0;
        *(v12 + 92) = 0;
        v6 += 160;
        *(v12 + 105) = 0;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 160 * v8;
      do
      {
        re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 120);
        re::AssetHandle::~AssetHandle((v9 + 88));
        re::StringID::destroyString(v9);
        v9 += 160;
        v10 -= 160;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphTargetData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphTargetData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphTargetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 160 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 160;
        v14 -= 160;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 160 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 160 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphTargetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphBufferData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphBufferData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphBufferData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphBufferData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphBufferData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphBufferData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphBufferData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphBufferData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = 0uLL;
  *&v19 = 2;
  *(&v19 + 1) = -1;
  *&v20 = -1;
  *(&v20 + 1) = 1065353216;
  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
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

        re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a4, v15);
        v8 = 0uLL;
      }

      else
      {
        re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a4, v11);
        v8 = 0uLL;
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 88 * v10;
  *v16 = 0;
  *(v16 + 8) = &str_67;
  *(v16 + 16) = v19;
  *(v16 + 32) = v20;
  *&v21[0] = 0;
  *(v16 + 48) = v8;
  *(v16 + 64) = 0;
  *(v21 + 8) = v8;
  *(v16 + 80) = 0;
  v22 = 0;
  DWORD2(v21[1]) = 1;
  *(v16 + 72) = 1;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v21);
  v17 = (*(a4 + 32) + 88 * *(a4 + 16) - 88);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

void sub_1E205F5B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 48);
  re::StringID::destroyString(&a9);
  _Unwind_Resume(a1);
}

unint64_t re::IntrospectionDynamicArray<re::RenderGraphBufferData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 88 * a3;
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

  return *(a2 + 32) + 88 * a3;
}

void *re::DynamicArray<re::RenderGraphBufferData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphBufferData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x58uLL))
        {
          v2 = 88 * a2;
          result = (*(*result + 32))(result, 88 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 88, a2);
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
        v10 = &v8[11 * v9];
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
          *(v11 + 1) = *(v8 + 1);
          *(v11 + 2) = v13;
          v11[10] = 0;
          *(v11 + 18) = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          v14 = v8[7];
          v11[6] = v8[6];
          v8[6] = 0;
          v11[7] = v14;
          v8[7] = 0;
          v15 = v11[8];
          v11[8] = v8[8];
          v8[8] = v15;
          v16 = v11[10];
          v11[10] = v8[10];
          v8[10] = v16;
          ++*(v8 + 18);
          ++*(v11 + 18);
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit((v8 + 6));
          re::StringID::destroyString(v8);
          v11 += 11;
          v8 += 11;
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

void re::DynamicArray<re::RenderGraphBufferData>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 88 * a2;
    v9 = a2;
    do
    {
      v10 = (result[4] + v8);
      re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v10 + 48);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 88;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::RenderGraphBufferData>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = result[4] + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 16) = 2;
        *(v7 + 24) = -1;
        *(v7 + 32) = -1;
        *(v7 + 40) = 1065353216;
        *(v7 + 44) = 0;
        *(v7 + 80) = 0;
        *(v7 + 56) = 0;
        *(v7 + 64) = 0;
        *(v7 + 48) = 0;
        v6 += 88;
        *(v7 + 72) = 0;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 88 * v8;
      do
      {
        re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 48);
        re::StringID::destroyString(v9);
        v9 = (v9 + 88);
        v10 -= 88;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphBufferData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphBufferData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphBufferData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 88 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 88;
        v14 -= 88;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 88 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 88 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphBufferData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphNodeDataPointer>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 16 * v9);
  *v15 = 0;
  v15[1] = 0;
  v16 = *(a4 + 16) + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 16 * v16 - 16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RenderGraphNodeDataPointer>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 16 * a3;
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

  return *(a2 + 32) + 16 * a3;
}

void re::DynamicArray<re::RenderGraphNodeDataPointer>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 16 * v4), 16 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphNodeDataPointer>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 16 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 16;
        v11 -= 16;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 16 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 16 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphNodeDataPointer>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphInputData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphInputData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphInputData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphInputData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphInputData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphInputData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphInputData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphInputData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphInputData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RenderGraphInputData>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RenderGraphInputData>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = *(a4 + 32) + 56 * v9;
  *v15 = 0;
  *(v15 + 8) = &str_67;
  *(v15 + 16) = 0;
  *(v15 + 24) = &str_67;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = &str_67;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 56 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RenderGraphInputData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 56 * a3;
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

  return *(a2 + 32) + 56 * a3;
}

void *re::DynamicArray<re::RenderGraphInputData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphInputData>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        v10 = &v8[7 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          LOBYTE(v12) = v8[2];
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v8[2] & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          *(v11 + 32) = *(v8 + 32);
          LOBYTE(v12) = v8[5];
          v11[5] = v11[5] & 0xFFFFFFFFFFFFFFFELL | v8[5] & 1;
          v11[5] = v8[5] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[6] = v8[6];
          v8[6] = &str_67;
          v8[5] = 0;
          re::StringID::destroyString((v8 + 5));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 7;
          v8 += 7;
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

void re::DynamicArray<re::RenderGraphInputData>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 56 * a2;
    v9 = a2;
    do
    {
      v10 = result[4] + v8;
      re::StringID::destroyString((v10 + 40));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 56;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::RenderGraphInputData>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4 + 48;
      do
      {
        v7 = (result[4] + v6);
        *(v7 - 6) = 0;
        *(v7 - 5) = &str_67;
        *(v7 - 4) = 0;
        *(v7 - 3) = &str_67;
        *(v7 - 16) = 0;
        *(v7 - 1) = 0;
        *v7 = &str_67;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphInputData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 56 * v8;
      do
      {
        re::StringID::destroyString((v9 + 40));
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 56;
        v10 -= 56;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::Pair<re::StringID,re::RigGraphNodeInputParameter,true>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphInputData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphInputData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 56 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 56;
        v14 -= 56;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 56 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 56 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphOutputData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphOutputData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphOutputData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphOutputData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphOutputData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphOutputData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphOutputData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphOutputData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 48 * v9);
  *v15 = 0;
  v15[1] = &str_67;
  v15[2] = 0;
  v15[3] = &str_67;
  v15[4] = 0;
  v15[5] = &str_67;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 48 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RenderGraphOutputData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 48 * a3;
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

  return *(a2 + 32) + 48 * a3;
}

void *re::DynamicArray<re::RenderGraphOutputData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v13, v15);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v14, v16);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          LOBYTE(v12) = v8[2];
          *v8 = 0;
          v8[1] = &str_67;
          v11[2] = v11[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[2] = v8[2] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[3] = v8[3];
          v8[3] = &str_67;
          v8[2] = 0;
          LOBYTE(v12) = v8[4];
          v11[4] = v11[4] & 0xFFFFFFFFFFFFFFFELL | v8[4] & 1;
          v11[4] = v8[4] & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[5] = v8[5];
          v8[5] = &str_67;
          v8[4] = 0;
          re::StringID::destroyString((v8 + 4));
          re::StringID::destroyString((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 6;
          v8 += 6;
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

void re::DynamicArray<re::RenderGraphOutputData>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 48 * a2;
    v9 = a2;
    do
    {
      v10 = result[4] + v8;
      re::StringID::destroyString((v10 + 32));
      re::StringID::destroyString((v10 + 16));
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 48;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::RenderGraphOutputData>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 48 * v4;
      do
      {
        v7 = (result[4] + v6);
        *v7 = 0;
        v7[1] = &str_67;
        v7[2] = 0;
        v7[3] = &str_67;
        v7[4] = 0;
        v7[5] = &str_67;
        v6 += 48;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 48 * v8;
      do
      {
        re::StringID::destroyString((v9 + 32));
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 48;
        v10 -= 48;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphOutputData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphOutputData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 48 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 48;
        v14 -= 48;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 48 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphOutputData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<float *>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<float *>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<double>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<float *>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<float *>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  *(*(a4 + 32) + 8 * v9) = 0;
  *(a4 + 16) = v9 + 1;
  ++*(a4 + 24);
  v15 = (*(a4 + 32) + 8 * (v9 + 1) - 8);
  re::introspectionInitElement(a2, a3, a1[6], v15);
  return v15;
}

unint64_t re::IntrospectionDynamicArray<re::RenderGraphSpecifyOperationBase *>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 8 * a3;
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

  return *(a2 + 32) + 8 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<float *>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<float *>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<double>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 8 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphSpecifyOperationBase *>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphDataNodeConnection>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = 0uLL;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  if (v10 >= v9)
  {
    v11 = v10 + 1;
    if (v9 < v10 + 1)
    {
      if (*a4)
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

        re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a4, v15);
        v8 = 0uLL;
      }

      else
      {
        re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a4, v11);
        v8 = 0uLL;
        ++*(a4 + 24);
      }
    }

    v10 = *(a4 + 16);
  }

  v16 = *(a4 + 32) + 56 * v10;
  *v16 = 0;
  *(v16 + 8) = &str_67;
  *&v19[0] = 0;
  *(v16 + 16) = v8;
  *(v16 + 32) = 0;
  *(v19 + 8) = v8;
  *(v16 + 48) = 0;
  v20 = 0;
  DWORD2(v19[1]) = 1;
  *(v16 + 40) = 1;
  ++*(a4 + 16);
  ++*(a4 + 24);
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v19);
  v17 = (*(a4 + 32) + 56 * *(a4 + 16) - 56);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

void sub_1E2062E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 16);
  re::StringID::destroyString(&a9);
  _Unwind_Resume(a1);
}

unint64_t re::IntrospectionDynamicArray<re::RenderGraphDataNodeConnection>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 56 * a3;
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

  return *(a2 + 32) + 56 * a3;
}

void *re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v16, v18);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v17, v19);
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
        v10 = &v8[7 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v11[6] = 0;
          *(v11 + 10) = 0;
          v11[3] = 0;
          v11[4] = 0;
          v11[2] = 0;
          v13 = v8[3];
          v11[2] = v8[2];
          v8[2] = 0;
          v11[3] = v13;
          v8[3] = 0;
          v14 = v11[4];
          v11[4] = v8[4];
          v8[4] = v14;
          v15 = v11[6];
          v11[6] = v8[6];
          v8[6] = v15;
          ++*(v8 + 10);
          ++*(v11 + 10);
          re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit((v8 + 2));
          re::StringID::destroyString(v8);
          v11 += 7;
          v8 += 7;
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

void re::DynamicArray<re::RenderGraphDataNodeConnection>::resize(void *result, unint64_t a2)
{
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 56 * a2;
    v9 = a2;
    do
    {
      v10 = (result[4] + v8);
      re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v10 + 16);
      re::StringID::destroyString(v10);
      ++v9;
      v8 += 56;
    }

    while (v9 < result[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(result, a2);
      v4 = result[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 56 * v4;
      do
      {
        v7 = result[4] + v6;
        *v7 = 0;
        *(v7 + 8) = &str_67;
        *(v7 + 48) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = 0;
        *(v7 + 16) = 0;
        *(v7 + 40) = 0;
        v6 += 56;
        --v5;
      }

      while (v5);
    }
  }

  result[2] = a2;
  ++*(result + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 56 * v8;
      do
      {
        re::DynamicArray<re::RenderGraphDataStoreConnection>::deinit(v9 + 16);
        re::StringID::destroyString(v9);
        v9 = (v9 + 56);
        v10 -= 56;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphDataNodeConnection>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphDataNodeConnection>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphDataNodeConnection>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 56 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 56;
        v14 -= 56;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 56 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 56 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphDataNodeConnection>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::RenderGraphOutputData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::RenderGraphOutputData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = v9 + 1;
    if (v8 < v9 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v8;
        v12 = v8 == 0;
        v13 = 8;
        if (!v12)
        {
          v13 = v11;
        }

        if (v13 <= v10)
        {
          v14 = v10;
        }

        else
        {
          v14 = v13;
        }

        re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 48 * v9);
  *v15 = 0;
  v15[1] = &str_67;
  v15[2] = 0;
  v15[3] = &str_67;
  v15[4] = 0;
  v15[5] = &str_67;
  v16 = *(a4 + 16);
  *(a4 + 16) = v16 + 1;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 48 * v16);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RenderGraphInheritanceData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 48 * a3;
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

  return *(a2 + 32) + 48 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 48 * v8;
      do
      {
        re::StringID::destroyString((v9 + 32));
        re::StringID::destroyString((v9 + 16));
        re::StringID::destroyString(v9);
        v9 += 48;
        v10 -= 48;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::RenderGraphOutputData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderGraphOutputData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::RenderGraphOutputData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 48 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 48;
        v14 -= 48;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 48 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 48 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderGraphInheritanceData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t *re::VideoAsset::assetType(re::VideoAsset *this)
{
  {
    re::VideoAsset::assetType(void)::type = "Video";
    qword_1EE1C7520 = 0;
    re::AssetType::generateCompiledExtension(&re::VideoAsset::assetType(void)::type);
  }

  return &re::VideoAsset::assetType(void)::type;
}

re::VideoAsset *re::VideoAsset::VideoAsset(re::VideoAsset *this)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CC5730;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 2) = -1;
  *(this + 24) = 0;
  *(this + 7) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  re::DynamicString::setCapacity(this + 9, 0);
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 120) = 0;
  objc_initWeak(this + 16, 0);
  *(this + 34) = -1;
  *(this + 140) = 0;
  *(this + 18) = 0;
  *(this + 42) = 0;
  *(this + 152) = 0u;
  *(this + 192) = 0;
  *(this + 11) = 0u;
  *(this + 25) = 0;
  *(this + 224) = 0;
  *(this + 13) = 0u;
  *(this + 29) = 0x800000008;
  *(this + 60) = 3;
  *(this + 31) = 0x21C000003C0;
  *(this + 32) = 0x1900000001;
  *(this + 66) = 0x1000000;
  *(this + 68) = 0;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 536) = 0;
  *(this + 34) = xmmword_1E3060D30;
  *(this + 280) = 0;
  *(this + 71) = 0;
  *(this + 144) = 0;
  *(this + 39) = xmmword_1E3060D30;
  *(this + 40) = 0u;
  *(this + 41) = re::kVideoMajorColorDefault;
  *(this + 168) = 0;
  *(this + 43) = 0u;
  *(this + 88) = 0x3F8000003F800000;
  *(this + 89) = 1065353216;
  *(this + 90) = 0x3F8000003F800000;
  *(this + 91) = 1065353216;
  *(this + 184) = re::VideoDefaults::hueLerpVelocityVideoTuning(0);
  *(this + 740) = xmmword_1E3060D40;
  *(this + 189) = re::VideoDefaults::saturationPowerVideoTuning(0);
  *(this + 95) = 0x3FC666663D4CCCCDLL;
  *(this + 192) = re::VideoDefaults::minSaturationVideoTuning(0);
  *(this + 193) = re::VideoDefaults::maxSaturationVideoTuning(0);
  *(this + 194) = re::VideoDefaults::saturationInflectionVideoTuning(0);
  *(this + 195) = re::VideoDefaults::saturationSmoothingVideoTuning(0);
  *(this + 196) = re::VideoDefaults::brightnessMinVideoTuning(0);
  *(this + 197) = re::VideoDefaults::brightnessMaxVideoTuning(0);
  *(this + 99) = 0x42C800003F800000;
  *(this + 200) = re::VideoDefaults::brightnessInflectionVideoTuning(0);
  *(this + 201) = re::VideoDefaults::brightnessSmoothingVideoTuning(0);
  *(this + 808) = xmmword_1E3060D50;
  *(this + 206) = re::VideoDefaults::colorSmoothTimeVideoTuning(0);
  *(this + 207) = 1120403456;
  *(this + 52) = vdupq_n_s32(0x3E99999Au);
  *(this + 106) = 0x3E8000003F0A3D71;
  *(this + 214) = re::VideoDefaults::gazeDeadbandVideoTuning(0);
  *(this + 215) = 1036831949;
  *(this + 216) = re::VideoDefaults::gazeMaxAngleVideoTuning(0);
  *(this + 110) = 1010174817;
  *(this + 113) = 3212836864;
  *(this + 112) = 0;
  *(this + 115) = 3212836864;
  *(this + 114) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 116) = _D0;
  *(this + 118) = 0;
  *(this + 476) = 0;
  *(this + 954) = 1;
  *(this + 120) = 0;
  *(this + 242) = 0;
  *(this + 486) = 256;
  v8 = *re::videoLogObjects(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = this;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "VideoAsset has been constructed: %p", &v10, 0xCu);
  }

  return this;
}

void sub_1E206475C(_Unwind_Exception *a1)
{
  re::DynamicString::deinit(v2);
  v4 = *(v1 + 32);
  if (v4)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v4);
  }

  *(v1 + 32) = 0;
  _Unwind_Resume(a1);
}

void re::VideoAsset::~VideoAsset(re::VideoAsset *this)
{
  v18 = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CC5730;
  v2 = *(this + 23);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    re::VideoPipeline::~VideoPipeline((v2 + 9752));
    v4 = *(v2 + 9728);
    if (v4)
    {
      CFRelease(v4);
      *(v2 + 9728) = 0;
    }

    *(v2 + 9664) = 0;
    ++*(v2 + 9672);
    v5 = *(v2 + 7568);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }

    re::VideoPixelBufferPool::~VideoPixelBufferPool((v2 + 7472));
    v6 = *(v2 + 7416);
    if (v6)
    {
      CFRelease(v6);
      *(v2 + 7416) = 0;
    }

    v7 = *(v2 + 7384);
    if (v7)
    {
      CFRelease(v7);
      *(v2 + 7384) = 0;
    }

    re::VideoHistogramManager::~VideoHistogramManager((v2 + 7280));
    re::VideoColorManager::~VideoColorManager((v2 + 4704));
    re::VideoPixelFormatDescriptionManager::~VideoPixelFormatDescriptionManager((v2 + 4656));
    re::VideoPresentationQueue::~VideoPresentationQueue((v2 + 432));
    v8 = *(v2 + 416);
    if (v8)
    {
      CFRelease(v8);
      *(v2 + 416) = 0;
    }

    for (i = 408; i != 384; i -= 8)
    {
      if (*(v2 + i))
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v2 + i));
      }

      *(v2 + i) = 0;
    }

    if (*(v2 + 384))
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release((v2 + 384));
    }

    *(v2 + 384) = 0;
    v10 = *(v2 + 280);
    if (v10)
    {
      CFRelease(v10);
      *(v2 + 280) = 0;
    }

    re::VideoTextureAllocator::~VideoTextureAllocator((v2 + 216));
    re::VideoPixelBufferPool::~VideoPixelBufferPool((v2 + 128));
    re::VideoHDRProcessor::~VideoHDRProcessor((v2 + 80));
    re::DynamicInlineArray<re::SharedPtr<re::VideoASEFrameMeasurement>,2ul>::clear(v2 + 48);
    v11 = re::HashTable<re::VideoASEConfigurationKey,re::VideoASEProcessor::Entry,re::Hash<re::VideoASEConfigurationKey>,re::EqualTo<re::VideoASEConfigurationKey>,true,false>::deinit(v2);
    (*(*v3 + 40))(v3, v2, v11);
    *(this + 23) = 0;
  }

  v12 = *(this + 13);
  *(this + 13) = 0;

  v14 = *re::videoLogObjects(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134217984;
    v17 = this;
    _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "VideoAsset has been destructed: %p", &v16, 0xCu);
  }

  re::DynamicInlineArray<re::VideoObject<re::VideoFigDataChannelResourceBase>,5ul>::clear(this + 568);
  re::DynamicInlineArray<re::VideoAssetResourceData,10ul>::clear(this + 35);
  re::DynamicArray<re::AssetHandle>::deinit(this + 144);
  objc_destroyWeak(this + 16);
  *(this + 16) = 0;

  re::DynamicString::deinit((this + 72));
  v15 = *(this + 4);
  if (v15)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v15);
  }

  *(this + 4) = 0;
}

{
  re::VideoAsset::~VideoAsset(this);

  JUMPOUT(0x1E6906520);
}

void sub_1E20649F0(_Unwind_Exception *a1)
{
  re::DynamicInlineArray<re::VideoObject<re::VideoFigDataChannelResourceBase>,5ul>::clear(v1 + 568);
  re::DynamicInlineArray<re::VideoAssetResourceData,10ul>::clear((v1 + 280));
  re::DynamicArray<re::AssetHandle>::deinit(v1 + 144);
  objc_destroyWeak((v1 + 128));
  *(v1 + 128) = 0;

  re::DynamicString::deinit((v1 + 72));
  v3 = *(v1 + 32);
  if (v3)
  {
    re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v3);
  }

  *(v1 + 32) = 0;
  _Unwind_Resume(a1);
}

void re::VideoAsset::makeVideoMutableMemoryAsset(re::VideoAsset *this, AssetService *a2, AVSampleBufferVideoRenderer *a3)
{
  v12 = a2;
  v5 = re::globalAllocators(v12);
  v6 = (*(*v5[2] + 32))(v5[2], 976, 16);
  v7 = re::VideoAsset::VideoAsset(v6);
  v8 = re::globalAllocators(v7);
  v9 = (*(*v8[2] + 32))(v8[2], 56, 8);
  *(v9 + 48) = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *v9 = 0u;
  objc_storeStrong((v9 + 8), a2);
  v10 = *v9;
  *v9 = 0;

  *(v6 + 25) = v9;
  re::VideoAsset::assetType(v11);
  (*(*this + 424))(this, v6, &re::VideoAsset::assetType(void)::type, 1, 0, 0);
}

void re::VideoAsset::makeVideoMutableMemoryAsset(uint64_t a1, void *a2)
{
  v10 = a2;
  v4 = re::globalAllocators(v10);
  v5 = (*(*v4[2] + 32))(v4[2], 976, 16);
  v6 = re::VideoAsset::VideoAsset(v5);
  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], 56, 8);
  *(v8 + 48) = 0;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *v8 = 0u;
  objc_storeStrong(v8, a2);
  *(v5 + 25) = v8;
  re::VideoAsset::assetType(v9);
  (*(*a1 + 424))(a1, v5, &re::VideoAsset::assetType(void)::type, 1, 0, 0);
}

uint64_t *re::VideoAsset::makeVideoMutableMemoryAsset(re::VideoAsset *this)
{
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 976, 16);
  v6 = re::VideoAsset::VideoAsset(v5);
  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], 56, 8);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  *(v5 + 25) = v8;
  re::VideoAsset::assetType(v8);
  v9 = *(*this + 424);

  return v9(this, v5, &re::VideoAsset::assetType(void)::type, 1, 0, 0);
}

uint64_t *re::VideoAsset::makeVideoMutableMemoryAssetWithoutTarget(re::VideoAsset *this)
{
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 976, 16);
  v6 = re::VideoAsset::VideoAsset(v5);
  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], 56, 8);
  *(v8 + 40) = 0u;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  *(v8 + 48) = 1;
  *v8 = 0;
  *(v5 + 25) = v8;
  re::VideoAsset::assetType(v8);
  v9 = *(*this + 424);

  return v9(this, v5, &re::VideoAsset::assetType(void)::type, 1, 0, 0);
}

re::VideoAsset *re::VideoAsset::loadAndConnectForRendering(re::AssetHandle *a1)
{
  re::AssetHandle::loadAsync(a1);
  v2 = re::AssetHandle::loadedAsset<re::VideoAsset>(a1);
  v3 = v2;
  if (v2)
  {
    if ((*(v2 + 952) & 1) == 0)
    {
      re::VideoAsset::initializeRenderingData(v2);
      v2 = re::VideoAsset::initializePlaybackData(v3);
    }

    v4 = *(v3 + 26);
    if (v4)
    {
      if (*(v4 + 5064) == 1)
      {
        v5 = *re::videoLogObjects(v2);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "VideoAsset->loadAndConnectForRendering :: Loading Video Asset", buf, 2u);
        }

        *(v4 + 5064) = 0;
        re::VideoRequestOptions::makeWithReceiver(v4, &v7);
        re::AssetManager::setAssetPayloadRequestOptions(*(*(a1 + 1) + 24), *(a1 + 1), &v7);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t re::AssetHandle::loadedAsset<re::VideoAsset>(re::VideoAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  re::VideoAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, &re::VideoAsset::assetType(void)::type, 1);
}

uint64_t re::VideoAsset::initializeRenderingData(uint64_t this)
{
  if (!*(this + 208))
  {
    v1 = this;
    v2 = re::globalAllocators(this);
    v3 = (*(*v2[2] + 32))(v2[2], 5136, 16);
    bzero((v3 + 16), 0x1400uLL);
    v4 = 0;
    *(v3 + 8) = 0xFFFFFFFFLL;
    *v3 = 0;
    v5 = MEMORY[0x1E6960C70];
    do
    {
      v6 = v3 + v4;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = -1;
      v7 = *v5;
      *(v6 + 84) = *(v5 + 2);
      *(v6 + 68) = v7;
      v4 += 72;
    }

    while (v4 != 144);
    for (i = 0; i != 4192; i += 2096)
    {
      v9 = v3 + i;
      v10 = *(v5 + 2);
      *(v9 + 176) = *v5;
      *(v9 + 192) = v10;
      *(v9 + 200) = 0;
      *(v9 + 208) = 0;
      *(v9 + 224) = 0;
      *(v9 + 232) = 0;
      *(v9 + 256) = 0;
      *(v9 + 264) = 0;
      *(v9 + 528) = 0;
      *(v9 + 536) = 0;
      *(v9 + 800) = 0;
      *(v9 + 808) = 0;
      *(v9 + 1072) = 0;
      *(v9 + 1080) = 0;
      *(v9 + 1344) = 0;
      *(v9 + 1352) = 0;
      *(v9 + 1376) = 0;
      *(v9 + 1384) = 0;
      *(v9 + 1408) = 0;
      *(v9 + 1416) = 0;
      *(v9 + 1680) = 0;
      *(v9 + 1688) = 0;
      *(v9 + 1712) = 0;
      *(v9 + 1720) = 0;
      *(v9 + 1776) = 0;
      *(v9 + 1784) = 0;
      *(v9 + 1824) = 0;
      *(v9 + 1832) = 0;
      *(v9 + 1856) = 0;
      *(v9 + 1864) = 0;
      *(v9 + 1952) = 0;
      *(v9 + 1760) = 0;
      *(v9 + 1744) = 0uLL;
      *(v9 + 1872) = 0uLL;
      *(v9 + 1888) = 0uLL;
      *(v9 + 1904) = 0uLL;
      *(v9 + 1954) = 1;
      *(v9 + 1956) = -1;
      *(v9 + 2000) = 0;
      *(v9 + 2008) = 0;
      *(v9 + 2024) = 0;
      *(v9 + 2032) = 0;
      *(v9 + 2048) = 0;
      *(v9 + 2056) = 0;
      *(v9 + 2128) = 0;
      *(v9 + 2136) = 0;
      *(v9 + 2176) = 0;
      *(v9 + 2184) = 0;
      *(v9 + 2224) = 0;
      *(v9 + 2232) = 0;
      *(v9 + 2248) = 0;
      *(v9 + 1976) = 0;
      *(v3 + i + 1960) = 0uLL;
      *(v9 + 2256) = 1;
      *(v9 + 2264) = 0;
    }

    *(v3 + 4480) = 0u;
    *(v3 + 4464) = 0u;
    *(v3 + 4448) = 0u;
    *(v3 + 4432) = 0u;
    *(v3 + 4416) = 0u;
    *(v3 + 4400) = 0u;
    *(v3 + 4384) = 0u;
    *(v3 + 4368) = 0u;
    *(v3 + 4492) = 0u;
    *(v3 + 4524) = 0x10000;
    *(v3 + 4528) = 0;
    *(v3 + 4536) = 514;
    *(v3 + 4538) = 2;
    *(v3 + 4544) = 0u;
    *(v3 + 4560) = 0u;
    *(v3 + 4576) = 0u;
    *(v3 + 4592) = 0u;
    *(v3 + 4608) = 0u;
    *(v3 + 4624) = 0u;
    *(v3 + 4640) = 0u;
    *(v3 + 4652) = 0u;
    *(v3 + 4684) = 0x10000;
    *(v3 + 4688) = 0;
    *(v3 + 4696) = 514;
    *(v3 + 4698) = 2;
    *(v3 + 4704) = -1;
    *(v3 + 4708) = 0;
    *(v3 + 4712) = 0u;
    *(v3 + 4728) = 0u;
    *(v3 + 4744) = 0u;
    *(v3 + 4760) = 0u;
    *(v3 + 4776) = 0u;
    *(v3 + 4792) = 0u;
    *(v3 + 4808) = 0u;
    *(v3 + 4820) = 0u;
    *(v3 + 4852) = 0x10000;
    *(v3 + 4856) = 0;
    *(v3 + 4864) = 514;
    *(v3 + 4866) = 2;
    *(v3 + 4980) = 0u;
    *(v3 + 4952) = 0u;
    *(v3 + 4968) = 0u;
    *(v3 + 4920) = 0u;
    *(v3 + 4936) = 0u;
    *(v3 + 4888) = 0u;
    *(v3 + 4904) = 0u;
    *(v3 + 4872) = 0u;
    *(v3 + 5012) = 0x10000;
    *(v3 + 5016) = 0;
    *(v3 + 5024) = 514;
    *(v3 + 5026) = 2;
    *(v3 + 5032) = -1;
    *(v3 + 5036) = 0;
    *(v3 + 5064) = 0;
    *(v3 + 5056) = 0;
    *(v3 + 5040) = 0u;
    *(v3 + 5072) = xmmword_1E3060D60;
    *(v3 + 5088) = 0;
    *(v3 + 5096) = 0;
    *(v3 + 5120) = 0;
    *(v1 + 208) = v3;
    *(v1 + 952) = this;
  }

  return this;
}

uint64_t re::VideoAsset::initializePlaybackData(re::VideoAsset *this)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(this + 25))
  {
    return 1;
  }

  v2 = *(this + 26);
  if (!v2)
  {
    return 1;
  }

  v9 = 0;
  v3 = re::VideoReceiverCreateEndpointID(v2, &v9);
  v4 = v9;
  v5 = v4;
  v6 = v3 == 0;
  if (v3)
  {
    v7 = *re::assetTypesLogObjects(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      v11 = v3;
      _os_log_fault_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_FAULT, "Failed to create video target with in-process video receiver (error: %d)", buf, 8u);
    }
  }

  else
  {
    re::VideoAsset::setReceiverEndpoint(this, v4);
  }

  return v6;
}

uint64_t re::VideoAsset::dimensions(re::VideoAsset *this)
{
  v1 = *(this + 26);
  if (v1)
  {
    return *(v1 + 5056);
  }

  v2 = 0;
  if (*(this + 25))
  {
    if (objc_opt_respondsToSelector())
    {
      [**(this + 25) videoTrackNaturalSize];
      if (v5.f64[0] != 0.0 && v6 != 0.0)
      {
        v5.f64[1] = v6;
        return vcvt_f32_f64(v5);
      }
    }
  }

  return v2;
}

id re::VideoAsset::getAVPlayer(id **this)
{
  if (*(this + 192))
  {
    v2 = 0;
  }

  else
  {
    if (this[25] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v2 = *this[25];
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

id re::VideoAsset::getAVSampleBufferVideoRenderer(re::VideoAsset *this)
{
  if (*(this + 192) || (v4 = *(this + 25)) == 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v4 + 8);
  }

  return v2;
}

id re::VideoAsset::testingGetInternalAVPlayer(id **this)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *this[25];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void re::VideoPlaybackRuntimeData::updateAVPlayer(id *this, AVPlayer *a2)
{
  v3 = a2;
  if (*this)
  {
    if (this[4])
    {
      [*this removeEndpoint:?];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (this[4])
      {
        [(AVPlayer *)v3 addVideoTarget:?];
      }
    }

    else if (*this)
    {
      v5 = *re::assetTypesLogObjects(isKindOfClass);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "VideoAsset is replacing remote player with AVPlayer", v8, 2u);
      }

      v6 = this[4];
      if (v6)
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v6);
      }

      this[4] = 0;
    }
  }

  v7 = *this;
  *this = v3;
}

void re::VideoAsset::setAVPlayer(id **this, AVPlayer *a2)
{
  v4 = a2;
  re::VideoAsset::updateAutoPlay(this, 0, 0);
  v3 = this[25];
  if (v3)
  {
    re::VideoPlaybackRuntimeData::updateAVPlayer(v3, v4);
  }

  re::VideoAsset::updateVideoTarget(this);
}

void re::VideoAsset::updateAutoPlay(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 192);
  *(a1 + 192) = a2;
  v7 = *(a1 + 200);
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

    v8 = 0;
    goto LABEL_17;
  }

  v8 = *v7 != 0;
  if (v6)
  {
    v9 = *v7 != 0;
  }

  else
  {
    v9 = 0;
  }

  if (a2 != 2 && *v7 && v6 == 2)
  {
    v11 = v7[2];
    v7[2] = 0;
  }

  if (a2)
  {
    if (v9)
    {
      goto LABEL_27;
    }

LABEL_17:
    v12 = *re::assetTypesLogObjects(a1);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      *v41 = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "videoFileAutoPlay will replace current AVPlayer", v41, 2u);
    }

    v14 = *(a1 + 200);
    if (v14)
    {
      v15 = objc_opt_new();
      re::VideoPlaybackRuntimeData::updateAVPlayer(v14, v15);

      if (!v8)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = re::globalAllocators(v13);
      v19 = (*(*v18[2] + 32))(v18[2], 56, 8);
      *v19 = 0u;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *(v19 + 48) = 0;
      *(a1 + 200) = v19;
      v20 = objc_opt_new();
      v21 = *(a1 + 200);
      v22 = *v21;
      *v21 = v20;

      re::VideoAsset::init(a1);
      if (!v8)
      {
LABEL_29:
        v23 = **(a1 + 200);
        if (a2 == 2)
        {
          v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(a1 + 160)];
          v31 = *(a1 + 160);
          if (v31)
          {
            v32 = *(a1 + 176);
            v33 = 24 * v31;
            do
            {
              v34 = re::AssetHandle::blockUntilLoaded<re::VideoFileAsset>(v32);
              if (v34)
              {
                v35 = **(v34 + 40);
                if (v35)
                {
                  [v30 addObject:v35];
                }
              }

              v32 = (v32 + 24);
              v33 -= 24;
            }

            while (v33);
          }

          if ([v30 count])
          {
            v36 = [REVideoPlayerItemsLooper alloc];
            v37 = [v30 copy];
            v38 = [(REVideoPlayerItemsLooper *)v36 initWithPlayer:v23 assets:v37];
            v39 = *(a1 + 200);
            v40 = *(v39 + 16);
            *(v39 + 16) = v38;
          }
        }

        else if (a2 == 1)
        {
          v24 = *(a1 + 160);
          if (v24)
          {
            v25 = *(a1 + 176);
            v26 = 24 * v24;
            do
            {
              v27 = re::AssetHandle::blockUntilLoaded<re::VideoFileAsset>(v25);
              if (v27)
              {
                v28 = **(v27 + 40);
                if (v28)
                {
                  v29 = [MEMORY[0x1E69880B0] playerItemWithAsset:v28];
                  [v23 insertItem:v29 afterItem:0];
                }
              }

              v25 = (v25 + 24);
              v26 -= 24;
            }

            while (v26);
          }

          [v23 play];
        }

        return;
      }
    }

LABEL_27:
    if (v6 == a2 && !a3)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v9)
  {
    [**(a1 + 200) pause];
    v16 = *(a1 + 200);
    v17 = *v16;
    *v16 = 0;
  }
}

void re::VideoAsset::updateVideoTarget(re::VideoAsset *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = *(this + 25);
  if (v1)
  {
    if (*v1)
    {
      v4 = (v1 + 32);
      v3 = *(v1 + 32);
      if (v3)
      {
        if ((*(this + 951) & 1) != 0 || ([*v1 removeEndpoint:?], v1 = *(this + 25), v4 = (v1 + 32), (v3 = *(v1 + 32)) != 0))
        {
          re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v3);
          v1 = *(this + 25);
        }

        *v4 = 0;
      }

      if (*(v1 + 40))
      {
        v5 = [*v1 addEndpoint:?];
        if (v5)
        {
          re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef((*(this + 25) + 32), v5);

          CFRelease(v5);
        }
      }
    }

    else if (*(v1 + 8))
    {
      v6 = *(v1 + 32);
      if (v6)
      {
        re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v6);
        *(v1 + 32) = 0;
        v1 = *(this + 25);
      }

      if (*(v1 + 40))
      {
        CFAllocatorGetDefault();
        v7 = FigVideoTargetCreateWithVideoReceiverEndpointID();
        v8 = v7;
        if (v7)
        {
          v9 = *re::assetTypesLogObjects(v7);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            v11 = v8;
            _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to create video target from endpoint (error: %d)", buf, 8u);
          }
        }

        else
        {
          [*(*(this + 25) + 8) addVideoTarget:0];
          re::VideoObject<re::VideoFigDataChannelResourceBase>::setRef((*(this + 25) + 32), 0);
          CFRelease(0);
        }
      }
    }
  }
}

void re::VideoAsset::setAVSampleBufferVideoRenderer(re::VideoAsset *this, AVSampleBufferVideoRenderer *a2)
{
  v5 = a2;
  re::VideoAsset::updateAutoPlay(this, 0, 0);
  v4 = *(this + 25);
  if (v4)
  {
    objc_storeStrong((v4 + 8), a2);
  }

  re::VideoAsset::updateVideoTarget(this);
}

id re::VideoAsset::getRemotePlayer(id **this)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 0;
  }

  else
  {
    v2 = *this[25];
  }

  return v2;
}

void re::VideoAsset::setRemotePlayer(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 isEqual:**(a1 + 200)];
  if ((v5 & 1) == 0)
  {
    if (**(a1 + 200))
    {
      v6 = *re::assetTypesLogObjects(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "VideoAsset is replacing remote player", v10, 2u);
      }

      v7 = *(a1 + 200);
      if (*(v7 + 32))
      {
        [*v7 removeEndpoint:?];
        v8 = *(a1 + 200);
        v9 = *(v8 + 32);
        if (v9)
        {
          re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(v9);
        }

        *(v8 + 32) = 0;
      }
    }

    re::VideoAsset::updateAutoPlay(a1, 0, 0);
    objc_storeStrong(*(a1 + 200), a2);
  }
}

void *re::VideoAsset::setCurrentUserProvidedVideoPixelBuffers(re::VideoAsset *a1, uint64_t a2)
{
  re::VideoAsset::clearCurrentUserProvidedVideoPixelBuffers(a1);
  v4 = *(a1 + 26);
  result = re::DynamicInlineArray<__CVBuffer *,2ul>::operator=((v4 + 24), a2);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 88) = *(a2 + 64);
  *(v4 + 72) = v7;
  *(v4 + 56) = v6;
  v8 = *(a1 + 26);
  if (*(v8 + 24))
  {
    v9 = 0;
    do
    {
      result = CVPixelBufferRetain(*(v8 + 40 + 8 * v9++));
    }

    while (v9 < *(v8 + 24));
  }

  return result;
}

void re::VideoAsset::clearCurrentUserProvidedVideoPixelBuffers(re::VideoAsset *this)
{
  v1 = *(this + 26);
  if (*(v1 + 24))
  {
    v3 = 0;
    do
    {
      CVPixelBufferRelease(*(v1 + 40 + 8 * v3++));
    }

    while (v3 < *(v1 + 24));
    v1 = *(this + 26);
  }

  *(v1 + 24) = 0;
  ++*(v1 + 32);
}

void *re::VideoAsset::setFutureUserProvidedVideoPixelBuffers(re::VideoAsset *a1, uint64_t a2)
{
  re::VideoAsset::clearFutureUserProvidedVideoPixelBuffers(a1);
  v4 = *(a1 + 26);
  result = re::DynamicInlineArray<__CVBuffer *,2ul>::operator=((v4 + 96), a2);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(v4 + 160) = *(a2 + 64);
  *(v4 + 128) = v6;
  *(v4 + 144) = v7;
  v8 = *(a1 + 26);
  if (*(v8 + 96))
  {
    v9 = 0;
    do
    {
      result = CVPixelBufferRetain(*(v8 + 112 + 8 * v9++));
    }

    while (v9 < *(v8 + 96));
  }

  return result;
}

void re::VideoAsset::clearFutureUserProvidedVideoPixelBuffers(re::VideoAsset *this)
{
  v1 = *(this + 26);
  if (*(v1 + 96))
  {
    v3 = 0;
    do
    {
      CVPixelBufferRelease(*(v1 + 112 + 8 * v3++));
    }

    while (v3 < *(v1 + 96));
    v1 = *(this + 26);
  }

  *(v1 + 96) = 0;
  ++*(v1 + 104);
}

double re::VideoAsset::getVideoTextureHandles@<D0>(re::VideoAsset *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 26);
  if (v3)
  {
    re::VideoChannelTextureHandles::VideoChannelTextureHandles(a2, (v3 + 4384));
    re::VideoChannelTextureHandles::VideoChannelTextureHandles((a2 + 160), (v3 + 4544));
    v5 = *(v3 + 4704);
    *(a2 + 324) = *(v3 + 4708);
    *(a2 + 320) = v5;
  }

  else
  {
    *(a2 + 320) = 0;
    result = 0.0;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 160) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 142) = 1;
    *(a2 + 144) = 0;
    *(a2 + 152) = 514;
    *(a2 + 154) = 2;
    *(a2 + 301) = 256;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 268) = 0u;
    *(a2 + 304) = 0;
    *(a2 + 312) = 514;
    *(a2 + 314) = 2;
    *(a2 + 320) = -1;
  }

  return result;
}

void re::VideoChannelTextureHandles::~VideoChannelTextureHandles(re::VideoChannelTextureHandles *this)
{
  v3 = *(this + 18);
  v2 = (this + 144);
  if (v3)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v2);
  }

  *(this + 18) = 0;
  re::TextureHandle::invalidate(this + 12);
  re::TextureHandle::invalidate(this + 10);
  re::TextureHandle::invalidate(this + 8);
  re::TextureHandle::invalidate(this + 6);
  re::TextureHandle::invalidate(this + 4);
  re::TextureHandle::invalidate(this + 2);
  re::TextureHandle::invalidate(this);
}

double re::VideoAsset::getLegacyVideoTextureHandles@<D0>(re::VideoAsset *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 26);
  if (v3)
  {
    re::VideoChannelTextureHandles::VideoChannelTextureHandles(a2, (v3 + 4712));
    re::VideoChannelTextureHandles::VideoChannelTextureHandles((a2 + 160), (v3 + 4872));
    v5 = *(v3 + 5032);
    *(a2 + 324) = *(v3 + 5036);
    *(a2 + 320) = v5;
  }

  else
  {
    *(a2 + 320) = 0;
    result = 0.0;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 160) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 142) = 1;
    *(a2 + 144) = 0;
    *(a2 + 152) = 514;
    *(a2 + 154) = 2;
    *(a2 + 301) = 256;
    *(a2 + 160) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 268) = 0u;
    *(a2 + 304) = 0;
    *(a2 + 312) = 514;
    *(a2 + 314) = 2;
    *(a2 + 320) = -1;
  }

  return result;
}

uint64_t re::VideoAsset::getResourceContext(re::VideoAsset *this)
{
  return this + 272;
}

{
  return this + 272;
}

void re::VideoAsset::retrieveBuffersAndUpdateRuntimeData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMTime *a9, id *a10)
{
  MEMORY[0x1EEE9AC00](a1);
  v324 = *MEMORY[0x1E69E9840];
  v18 = *(v10 + 208);
  if (!v18)
  {
    return;
  }

  v19 = v16;
  p_buf = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  p_time2 = v11;
  v25 = v10;
  v188 = v17;
  if (*(v10 + 972) == 1)
  {
    v26 = *(v10 + 184);
    if (v26)
    {
      v27 = *(v10 + 968);
      if (v27)
      {
        v26[2436] = v27;
        if (v26[52] != v27)
        {
          v26[52] = v27;
          re::memoryAttributionVideoPixelBufferPool((v26 + 32), v27);
          v26 = *(v25 + 184);
          v27 = *(v25 + 968);
        }

        if (v26[1888] != v27)
        {
          v26[1888] = v27;
          re::memoryAttributionVideoPixelBufferPool((v26 + 1868), v27);
          v26 = *(v25 + 184);
          v27 = *(v25 + 968);
        }

        if (v26[68] != v27)
        {
          v26[68] = v27;
        }

        re::VideoLightSpillGenerator::setTaskIDToken((v26 + 1842), v27);
        re::VideoLightSpillGenerator::setTaskIDToken((*(v25 + 184) + 7400), *(v25 + 968));
        re::VideoLightSpillGenerator::setTaskIDToken((*(v25 + 184) + 9712), *(v25 + 968));
        v29 = *(v25 + 184);
        v30 = *(v25 + 968);
        if (*(v29 + 7360) != v30)
        {
          *(v29 + 7360) = v30;
        }

        v10 = re::VideoDefaults::pipelineEnabled(v28);
        if (v10)
        {
          v10 = re::VideoPipeline::setOwner((*(v25 + 184) + 9752), *(v25 + 968));
        }

        *(v25 + 972) = 0;
      }
    }
  }

  v31 = MEMORY[0x1E6960C70];
  v270 = **&MEMORY[0x1E6960C70];
  v271 = 0;
  v272 = 0;
  *&v273[12] = 0;
  v274 = 0;
  v275 = 0;
  v276 = 0;
  v277 = 0;
  v278 = 0;
  v279 = 0;
  v280 = 0;
  v281 = 0;
  v282 = 0;
  v283 = 0;
  v284 = 0;
  v285 = 0;
  v286 = 0;
  v287 = 0;
  v288 = 0;
  v289 = 0;
  v290 = 0;
  v291 = 0;
  v292 = 0;
  v295 = 0;
  v296 = 0;
  v297 = 0;
  v298 = 0;
  v299 = 0;
  v300 = 0;
  v304 = 0;
  v294 = 0;
  v293 = 0u;
  v301 = 0u;
  v302 = 0u;
  v303 = 0u;
  v305 = 1;
  v306 = -1;
  v309 = 0;
  v310 = 0;
  v311 = 0;
  v312 = 0;
  v313 = 0;
  v314 = 0;
  v315 = 0;
  v316 = 0;
  v317 = 0;
  v318 = 0;
  v319[4] = 0;
  v320 = 0;
  v321 = 0;
  v307 = 0u;
  v308 = 0;
  v322 = 1;
  v323 = 0;
  v32 = *(v18 + 4376);
  if (*(v18 + 4368) == v32)
  {
    v33 = *(v25 + 184);
    if (*(v33 + 4640) != *(v33 + 4648))
    {
      v10 = re::VideoPresentationGroup::operator=(&v270, (v33 + 2096 * (*(v33 + 4640) & 1) + 448));
    }
  }

  else
  {
    v10 = re::VideoPresentationGroup::operator=(&v270, (v18 + 176 + 2096 * ((v32 & 1) == 0)));
  }

  v34 = re::VideoDefaults::logEnabled(v10);
  if (v34)
  {
    goto LABEL_238;
  }

LABEL_21:
  re::VideoLightSpillGenerator::setupSession((*(v25 + 184) + 7368), *(v25 + 232), HIDWORD(*(v25 + 232)), *(v25 + 240));
  re::VideoLightSpillGenerator::setupSession((*(v25 + 184) + 7400), *(v25 + 248), HIDWORD(*(v25 + 248)), *(v25 + 256));
  v35 = *(v25 + 216);
  if (v35 && *(*v35 + 12524) == 1 && (*(v25 + 266) & 1) == 0)
  {
    *(v25 + 265) = 1;
    v36 = re::VideoAsset::dimensions(v25);
    re::VideoLightSpillGenerator::setupSession((*(v25 + 184) + 9712), ((*&v36 / *(&v36 + 1)) * 180.0), 180, *(v25 + 260));
  }

  v201 = *v31;
  v202 = 0;
  v203 = 0;
  *&v204[12] = 0;
  v205 = 0;
  v206 = 0;
  v207 = 0;
  v209 = 0;
  v210 = 0;
  v212 = 0;
  v213 = 0;
  v215 = 0;
  v216 = 0;
  v217[32] = 0;
  v218 = 0;
  v219 = 0;
  v220 = 0;
  v221 = 0;
  v222 = 0;
  v223 = 0;
  v224 = 0;
  v226 = 0;
  v227 = 0;
  v231 = 0;
  v232 = 0;
  v233 = 0;
  v234 = 0;
  v235 = 0;
  v236 = 0;
  v242 = 0;
  v230 = 0;
  v229 = 0u;
  v237 = 0u;
  v238 = 0u;
  v239 = 0u;
  v243 = 1;
  v244 = -1;
  v248 = 0;
  v249 = 0;
  v251 = 0;
  v252 = 0;
  v254 = 0;
  v255 = 0;
  v259 = 0;
  v260 = 0;
  v262 = 0;
  v263 = 0;
  v264 = 0;
  v265 = 0;
  v267 = 0;
  v245 = 0u;
  v246 = 0;
  v268 = 1;
  v269 = 0;
  v37 = *(v25 + 184);
  v38 = *(v25 + 265);
  buf = *v19;
  LOBYTE(v186) = *(v25 + 267);
  v39 = re::retrievePresentationGroupForTime(v37, v18, v38, &buf, p_time2, v23, *(v23 + 344), v22, *(v23 + 56), v21, &v201, v25 + 40, *(v25 + 104), *(v25 + 208) + 24);
  v40 = v39;
  p_time2 = a9;
  p_buf->value = 0;
  *(v25 + 8) = 0;
  if (v39)
  {
    goto LABEL_30;
  }

  if ((v235 & ~v21) != 0)
  {
    v41 = *re::videoLogObjects(v39);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 134218240;
      *(&buf.value + 4) = v235;
      LOWORD(buf.flags) = 2048;
      *(&buf.flags + 2) = v21;
      _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "Unable to play back protected content %llu at current protection levels %llu.", &buf, 0x16u);
    }

    *(v25 + 8) = 1;
    p_buf->value = v235;
    v40 = 3;
LABEL_30:
    v42 = 0;
    LOBYTE(a9->value) = 0;
    goto LABEL_31;
  }

  p_buf->value = v235;
  if (v262)
  {
    v85 = 0;
    v86 = 2016;
    while (1)
    {
      v87 = atomic_load(*(&v201.value + v86));
      if (v87 != 8)
      {
        break;
      }

      ++v85;
      v86 += 16;
      if (v85 >= v262)
      {
        goto LABEL_208;
      }
    }

    if (v317)
    {
      v124 = 0;
      v125 = v319;
      while (1)
      {
        v126 = atomic_load(*v125);
        if (v126 != 8)
        {
          break;
        }

        ++v124;
        v125 += 2;
        if (v124 >= v317)
        {
          goto LABEL_205;
        }
      }

      p_buf = *re::videoLogObjects(v39);
      if (os_log_type_enabled(p_buf, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1E1C61000, p_buf, OS_LOG_TYPE_DEFAULT, "Presentation group is not ready.", &buf, 2u);
      }

      v40 = 5;
      goto LABEL_30;
    }

LABEL_205:
    p_buf = *re::videoLogObjects(v39);
    if (os_log_type_enabled(p_buf, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1E1C61000, p_buf, OS_LOG_TYPE_DEFAULT, "Presentation group is not ready. Using previous presentation group.", &buf, 2u);
    }

    v39 = re::VideoPresentationGroup::operator=(&v201, &v270.value);
  }

LABEL_208:
  v42 = 1;
  LOBYTE(a9->value) = 1;
  if ((*(v25 + 950) & 1) == 0)
  {
    *(v25 + 950) = 1;
    v127 = re::VideoDefaults::logEnabled(v39);
    if (v127)
    {
      p_buf = *re::videoLogObjects(v127);
      if (os_log_type_enabled(p_buf, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1E1C61000, p_buf, OS_LOG_TYPE_DEFAULT, "[VideoAsset]->retrieveBuffersAndUpdateRuntimeData :: outPixelBufferFound is set to True which is variable for VideoComponent::isReadyToRender", &buf, 2u);
      }
    }
  }

  v40 = 0;
LABEL_31:
  buf = v270;
  time2 = v201;
  v43 = CMTimeCompare(&buf, &time2);
  if (v43 || (v44 = v271, v271 != v202))
  {
    v44 = 1;
  }

  else if (v271)
  {
    v45 = v273;
    v46 = v204;
    v47 = v271 - 1;
    do
    {
      v49 = *v45++;
      v48 = v49;
      v50 = *v46++;
      v51 = v48 == v50;
      v44 = v48 != v50;
      v51 = !v51 || v47-- == 0;
    }

    while (!v51);
  }

  *v188 = v44;
  if (v42)
  {
    v188 = (v18 + 4096);
    *(v18 + 4708) = v269;
    if (*(v25 + 267) == 1)
    {
      v52 = *re::videoLogObjects(v43);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEFAULT, "First successful sampling", &buf, 2u);
      }

      *(v25 + 267) = 0;
    }

    v53 = re::VideoDefaults::logEnabled(v43);
    if (v53)
    {
      re::CoreVideoUtils::printPresentationGroupInfo(&v201, v54);
    }

    if ((v267 & 1) != 0 || !v259)
    {
      *(v25 + 640) = 0u;
      *(v25 + 656) = re::kVideoMajorColorDefault;
      v55 = re::VideoDefaults::logEnabled(v53);
      if ((v55 & 1) == 0)
      {
        v55 = re::VideoDefaults::logLevel(v55);
        if (v55 < 4)
        {
          goto LABEL_98;
        }
      }

      v72 = *re::videoLogObjects(v55);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
        re::DynamicString::format(&buf, "{%f, %f, %f, %f}", v73, *(v25 + 656), *(v25 + 660), *(v25 + 664), *(v25 + 668));
        timescale = buf.timescale;
        epoch = buf.epoch;
        p_time2 = &time2;
        re::DynamicString::format(&time2, "{%f, %f, %f}", v76, *(v25 + 640), *(v25 + 644), *(v25 + 648));
        v77 = &buf.timescale + 1;
        if (timescale)
        {
          v77 = epoch;
        }

        if (time2.timescale)
        {
          v78 = time2.epoch;
        }

        else
        {
          v78 = &time2.timescale + 1;
        }

        *v197 = 136315394;
        v198 = v77;
        v199 = 2080;
        v200 = v78;
        _os_log_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_DEFAULT, "[VideoAsset]->retrieveBuffersAndUpdateRuntimeData :: #VideoColor :: computeMajorColor == false or !presentationGroup.histograms.isEmpty() :: Major Color Set %s and Average Color Set %s", v197, 0x16u);
        if (time2.value && (time2.timescale & 1) != 0)
        {
          (*(*time2.value + 40))();
        }

        if (buf.value && (buf.timescale & 1) != 0)
        {
          (*(*buf.value + 40))();
        }
      }
    }

    else
    {
      v55 = v261;
      if (!v261)
      {
        goto LABEL_98;
      }

      v55 = re::VideoHistogram::data(v261);
      if (!*v55)
      {
        goto LABEL_98;
      }

      v56 = re::videoStatisticsComputeAverageColor(v261, v54);
      v195.i64[0] = v56;
      v195.i64[1] = v57;
      *(v25 + 640) = v195;
      v58 = re::VideoDefaults::passthroughTintColorTuningAllowed(v56);
      if (v58)
      {
        re::VideoColorTuner::calculateColor((v25 + 672), (v25 + 880), (v25 + 736), &v195, v59, v60, v61, v62);
        v64.i64[0] = v58;
        v64.i32[2] = v63;
      }

      else
      {
        v64 = v195;
      }

      v64.i32[3] = 1.0;
      *(v25 + 656) = v64;
      v55 = re::VideoDefaults::logEnabled(v58);
      if ((v55 & 1) == 0)
      {
        v55 = re::VideoDefaults::logLevel(v55);
        if (v55 < 4)
        {
          goto LABEL_98;
        }
      }

      v72 = *re::videoLogObjects(v55);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        p_buf = &buf;
        re::DynamicString::format(&buf, "{%f, %f, %f, %f}", v131, *(v25 + 656), *(v25 + 660), *(v25 + 664), *(v25 + 668));
        v132 = buf.timescale;
        v133 = buf.epoch;
        p_time2 = &time2;
        re::DynamicString::format(&time2, "{%f, %f, %f}", v134, *(v25 + 640), *(v25 + 644), *(v25 + 648));
        v135 = &buf.timescale + 1;
        if (v132)
        {
          v135 = v133;
        }

        if (time2.timescale)
        {
          v136 = time2.epoch;
        }

        else
        {
          v136 = &time2.timescale + 1;
        }

        *v197 = 136315394;
        v198 = v135;
        v199 = 2080;
        v200 = v136;
        _os_log_impl(&dword_1E1C61000, v72, OS_LOG_TYPE_DEFAULT, "[VideoAsset]->retrieveBuffersAndUpdateRuntimeData :: #VideoColor :: Major Color Set %s and Average Color Set %s", v197, 0x16u);
        if (time2.value && (time2.timescale & 1) != 0)
        {
          (*(*time2.value + 40))();
        }

        if (buf.value && (buf.timescale & 1) != 0)
        {
          (*(*buf.value + 40))();
        }
      }
    }

LABEL_98:
    v19 = (v18 + 4384);
    v90 = v215;
    if (v215)
    {
      p_time2 = 0;
      v31 = v217;
      p_buf = v247;
      v21 = &v253;
      v22 = (v18 + 4384);
      while (1)
      {
        if (v31[13] || v31[14] || v31[15])
        {
          if (p_time2 >= 2)
          {
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, p_time2, 2, v186);
            _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v138, v162);
            __break(1u);
LABEL_215:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v90);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v139, v163);
            __break(1u);
LABEL_216:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v91);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v140, v164);
            __break(1u);
LABEL_217:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v92);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v141, v165);
            __break(1u);
LABEL_218:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, p_time2, 2);
            _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v142, v166);
            __break(1u);
LABEL_219:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v102);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v143, v167);
            __break(1u);
LABEL_220:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v105);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v144, v168);
            __break(1u);
LABEL_221:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v106);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v145, v169);
            __break(1u);
LABEL_222:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v21, 2);
            _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v146, v170);
            __break(1u);
LABEL_223:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v98);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v147, v171);
            __break(1u);
LABEL_224:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v21, 2);
            _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v148, v172);
            __break(1u);
LABEL_225:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v99);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v149, v173);
            __break(1u);
LABEL_226:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v21, 2);
            _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v150, v174);
            __break(1u);
LABEL_227:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v107);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v151, v175);
            __break(1u);
LABEL_228:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v21, 2);
            _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v152, v176);
            __break(1u);
LABEL_229:
            re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v108);
            _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v153, v177);
            __break(1u);
LABEL_230:
            re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v22, 2);
            _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v154, v178);
            __break(1u);
            goto LABEL_231;
          }

          if (v90 <= p_time2)
          {
            goto LABEL_215;
          }

          v91 = *(&v245 + 1);
          if (*(&v245 + 1) <= p_time2)
          {
            goto LABEL_216;
          }

          v92 = v251;
          if (v251 <= p_time2)
          {
            goto LABEL_217;
          }

          re::VideoChannelTextureHandles::setTextures(v22, *(v23 + 56), v31, v242, v236, SHIBYTE(v242), p_buf, v21, v243);
          v90 = v215;
        }

        p_time2 = (p_time2 + 1);
        p_buf = (p_buf + 8);
        v21 += 3;
        v22 += 80;
        v31 += 16;
        if (p_time2 >= v90)
        {
          goto LABEL_121;
        }
      }
    }

    v93 = v206;
    if (!v206)
    {
LABEL_121:
      v96 = re::VideoDefaults::screenFallbackTextureEnabled(v55);
      if (v96)
      {
        v128 = 0;
        v129 = 1;
        do
        {
          p_buf = v129;
          re::VideoChannelTextureHandles::setScreenFallbackTextures((v19 + 160 * v128), *(v23 + 56));
          v129 = 0;
          v128 = 1;
        }

        while ((p_buf & 1) != 0);
      }

      v98 = v223;
      v19 = &selRef_isLimitedRenderAsset;
      if (v223)
      {
        v21 = 0;
        v22 = v225;
        v31 = (v18 + 4432);
        do
        {
          v96 = v225[v21];
          if (v96)
          {
            if (v21 >= 2)
            {
              goto LABEL_222;
            }

            if (v98 <= v21)
            {
              goto LABEL_223;
            }

            p_buf = *(v23 + 56);
            v193 = v96;
            *(v31 + 19) = [v193 pixelFormat];
            v96 = v193;
            if (v193)
            {

              v193 = 0;
            }
          }

          ++v21;
          v98 = v223;
          v31 += 20;
        }

        while (v21 < v223);
      }

      v99 = v226;
      if (v226)
      {
        v21 = 0;
        v22 = v228;
        v31 = (v18 + 4448);
        do
        {
          v96 = v228[v21];
          if (v96)
          {
            if (v21 >= 2)
            {
              goto LABEL_224;
            }

            if (v99 <= v21)
            {
              goto LABEL_225;
            }

            p_buf = *(v23 + 56);
            v192 = v96;
            *(v31 + 16) = [v192 pixelFormat];
            v96 = v192;
            if (v192)
            {

              v192 = 0;
            }
          }

          ++v21;
          v99 = v226;
          v31 += 20;
        }

        while (v21 < v226);
      }

      if (*(v25 + 265))
      {
        v96 = *(&v229 + 1);
        if (*(&v229 + 1))
        {
          v100 = *(v23 + 56);
          v191 = *(&v229 + 1);
          *(v18 + 4516) = [v191 pixelFormat];
          v96 = v191;
          if (v191)
          {

            v191 = 0;
          }

          *(v25 + 265) = 256;
        }
      }

      *(v18 + 4704) = v244;
      v101 = v209;
      v102 = v212;
      if (v209)
      {
        if (!v212)
        {
          p_time2 = 0;
          v31 = &v211;
          p_buf = (v18 + 4712);
          v21 = v247;
          v22 = v250;
          while (1)
          {
            if (v31[13] || v31[14] || v31[15])
            {
              if (p_time2 >= 2)
              {
                goto LABEL_234;
              }

              if (v101 <= p_time2)
              {
                goto LABEL_235;
              }

              v103 = *(&v245 + 1);
              if (*(&v245 + 1) <= p_time2)
              {
                goto LABEL_236;
              }

              v104 = v248;
              if (v248 <= p_time2)
              {
                goto LABEL_237;
              }

              re::VideoChannelTextureHandles::setTextures(p_buf, *(v23 + 56), v31, v242, v236, SHIBYTE(v242), v21, v22, v243);
              v101 = v209;
            }

            p_time2 = (p_time2 + 1);
            v21 += 8;
            v22 = (v22 + 3);
            p_buf = (p_buf + 160);
            v31 += 16;
            if (p_time2 >= v101)
            {
              goto LABEL_167;
            }
          }
        }

        goto LABEL_157;
      }

      if (v212)
      {
LABEL_157:
        p_time2 = 0;
        v31 = &v214;
        p_buf = (v18 + 4712);
        v21 = v247;
        v22 = v250;
        do
        {
          if (v31[13] || v31[14] || v31[15])
          {
            if (p_time2 >= 2)
            {
              goto LABEL_218;
            }

            if (v102 <= p_time2)
            {
              goto LABEL_219;
            }

            v105 = *(&v245 + 1);
            if (*(&v245 + 1) <= p_time2)
            {
              goto LABEL_220;
            }

            v106 = v248;
            if (v248 <= p_time2)
            {
              goto LABEL_221;
            }

            re::VideoChannelTextureHandles::setTextures(p_buf, *(v23 + 56), v31, v242, v236, SHIBYTE(v242), v21, v22, v243);
            v102 = v212;
          }

          p_time2 = (p_time2 + 1);
          v21 += 8;
          v22 = (v22 + 3);
          p_buf = (p_buf + 160);
          v31 += 16;
        }

        while (p_time2 < v102);
LABEL_167:
        v107 = v223;
        if (v223)
        {
          v21 = 0;
          v22 = v225;
          v31 = (v18 + 4760);
          do
          {
            v96 = v225[v21];
            if (v96)
            {
              if (v21 >= 2)
              {
                goto LABEL_226;
              }

              if (v107 <= v21)
              {
                goto LABEL_227;
              }

              p_buf = *(v23 + 56);
              v190 = v96;
              *(v31 + 19) = [v190 pixelFormat];
              v96 = v190;
              if (v190)
              {

                v190 = 0;
              }
            }

            ++v21;
            v107 = v223;
            v31 += 20;
          }

          while (v21 < v223);
        }

        v108 = v226;
        if (v226)
        {
          v21 = 0;
          v22 = v228;
          v31 = (v18 + 4776);
          do
          {
            v96 = v228[v21];
            if (v96)
            {
              if (v21 >= 2)
              {
                goto LABEL_228;
              }

              if (v108 <= v21)
              {
                goto LABEL_229;
              }

              p_buf = *(v23 + 56);
              v189 = v96;
              *(v31 + 16) = [v189 pixelFormat];
              v96 = v189;
              if (v189)
              {

                v189 = 0;
              }
            }

            ++v21;
            v108 = v226;
            v31 += 20;
          }

          while (v21 < v226);
        }

        *(v18 + 5032) = v244;
      }

      v109 = *&v239;
      v110 = *(&v239 + 1);
      *(v18 + 5056) = vabs_f32(vmla_n_f32(vmul_n_f32(*(v25 + 624), v109), *(v25 + 632), v110));
      *(v18 + 5040) = v245;
      v111 = v254;
      if (v254)
      {
        v112 = v256;
        *(&buf.flags + 3) = *&v257[15];
        *&buf.value = *v257;
        v111 = v258;
      }

      else
      {
        v112 = 0;
      }

      *(v18 + 5096) = v112;
      *(v18 + 5097) = *&buf.value;
      *(v18 + 5112) = *(&buf.flags + 3);
      *(v18 + 5120) = v111;
      if (*(v25 + 973) == 1 && (v111 & 1) != 0)
      {
        v113 = *(v18 + 5104);
        v114 = vadd_f32(*(v18 + 5112), vcvt_f32_f64(v240));
      }

      else
      {
        v113 = vcvt_f32_f64(v241);
        v114 = vcvt_f32_f64(v240);
      }

      v115 = vcvt_f32_f64(vcvtq_f64_u64(v237));
      v116 = vdiv_f32(v113, v115);
      *(v18 + 5072) = v116;
      LODWORD(v117) = vdiv_f32(v114, v115).u32[0];
      v118 = 0.0;
      v119 = 0.0;
      if (v116.f32[1] != 1.0)
      {
        v119 = vmuls_lane_f32(1.0 - v116.f32[1], vdiv_f32(v114, vsub_f32(v115, v113)), 1);
      }

      *(&v117 + 1) = v119;
      *(v18 + 5080) = v117;
      v120 = re::VideoDefaults::horizontalDisparityEnabled(v96);
      if (v120 && v264)
      {
        v118 = re::VideoDefaults::overrideHorizontalDispartiy(v120, v266);
      }

      *(v18 + 5088) = v118;
      v121 = *(v18 + 4376);
      if (v121 - *(v18 + 4368) == 2)
      {
        *(v18 + 4368) = v121 - 1;
      }

      *(v18 + 4376) = v121 + 1;
      v122 = re::VideoPresentationGroup::operator=(v18 + 176 + 2096 * (v121 & 1), &v201.value);
      v123 = re::VideoDefaults::logEnabled(v122);
      if (v123)
      {
        v130 = *re::videoLogObjects(v123);
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.value) = 0;
          _os_log_impl(&dword_1E1C61000, v130, OS_LOG_TYPE_DEFAULT, "==========================================", &buf, 2u);
        }
      }

      goto LABEL_199;
    }

    v22 = 0;
    v31 = v247;
    p_buf = v250;
    p_time2 = &v208;
    v21 = v18 + 4384;
    while (1)
    {
      if (*&p_time2[-1].timescale || p_time2[-1].epoch || p_time2->value)
      {
        if (v22 >= 2)
        {
          goto LABEL_230;
        }

        if (v93 <= v22)
        {
LABEL_231:
          re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v22, v93);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v155, v179);
          __break(1u);
LABEL_232:
          re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v22, v94);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v156, v180);
          __break(1u);
LABEL_233:
          re::internal::assertLog(6, v54, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v22, v95);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v157, v181);
          __break(1u);
LABEL_234:
          re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, p_time2, 2);
          _os_crash("assertion failure: (index < N) Index out of range. index = %zu, size = %zu", v158, v182);
          __break(1u);
LABEL_235:
          re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v101);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v159, v183);
          __break(1u);
LABEL_236:
          re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v103);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v160, v184);
          __break(1u);
LABEL_237:
          re::internal::assertLog(6, v97, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time2, v104);
          v34 = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v161, v185);
          __break(1u);
LABEL_238:
          log = *re::videoLogObjects(v34);
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v201.value) = 0;
            _os_log_impl(&dword_1E1C61000, log, OS_LOG_TYPE_DEFAULT, "==========================================", &v201, 2u);
          }

          goto LABEL_21;
        }

        v94 = *(&v245 + 1);
        if (*(&v245 + 1) <= v22)
        {
          goto LABEL_232;
        }

        v95 = v248;
        if (v248 <= v22)
        {
          goto LABEL_233;
        }

        re::VideoChannelTextureHandles::setTextures(v21, *(v23 + 56), &p_time2[-5], v242, v236, SHIBYTE(v242), v31, p_buf, v243);
        v93 = v206;
      }

      v22 = (v22 + 1);
      ++v31;
      p_buf = (p_buf + 3);
      v21 += 160;
      p_time2 = (p_time2 + 128);
      if (v22 >= v93)
      {
        goto LABEL_121;
      }
    }
  }

  if (v40 == 5 || v40 == 3)
  {
    v65 = v244;
    *(v18 + 4704) = v244;
    if (v209)
    {
      *(v18 + 5032) = v65;
    }

    v66 = 0;
    v67 = *&v239;
    v68 = *(&v239 + 1);
    *(v18 + 5056) = vabs_f32(vmla_n_f32(vmul_n_f32(*(v25 + 624), v67), *(v25 + 632), v68));
    v69 = 1;
    do
    {
      v70 = v69;
      v71 = *(v23 + 56);
      re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(v18 + 4384 + 160 * v66, v71, (v71 + 16));
      re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(v18 + 4712 + 160 * v66, *(v23 + 56), (v71 + 16));
      v69 = 0;
      v66 = 1;
    }

    while ((v70 & 1) != 0);
    *(v18 + 4704) = 0;
    *(v18 + 5032) = 0;
  }

  else
  {
    if (*(v25 + 136) != v40)
    {
      v79 = *re::videoLogObjects(v43);
      v43 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
      if (v43)
      {
        LODWORD(buf.value) = 67109120;
        HIDWORD(buf.value) = v40;
        _os_log_error_impl(&dword_1E1C61000, v79, OS_LOG_TYPE_ERROR, "Unable to get presentation group (error: %d)", &buf, 8u);
      }

      *(v25 + 136) = v40;
    }

    if (*a10)
    {
      v80 = re::VideoDefaults::logLevel(v43);
      if (v80 >= 3)
      {
        v137 = *re::videoLogObjects(v80);
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.value) = 67109120;
          HIDWORD(buf.value) = v40;
          _os_log_impl(&dword_1E1C61000, v137, OS_LOG_TYPE_DEFAULT, "[VideoLoadingTexture] [VideoAsset]->retrieveBuffersAndUpdateRuntimeData :: Setting The fallback textures with return %i", &buf, 8u);
        }
      }

      v81 = 0;
      v82 = 1;
      do
      {
        v83 = v82;
        re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(v18 + 4384 + 160 * v81, *(v23 + 56), a10);
        re::VideoChannelTextureHandles::setPlane0AndLoadingFallbackTextures(v18 + 4712 + 160 * v81, *(v23 + 56), a10);
        v82 = 0;
        v81 = 1;
      }

      while ((v83 & 1) != 0);
      v84 = 0;
    }

    else
    {
      v84 = -1;
    }

    *(v18 + 4704) = v84;
    *(v18 + 5032) = v84;
    *(v18 + 5056) = 0;
    *(v18 + 5040) = 0;
    *(v25 + 656) = re::kVideoMajorColorDefault;
    v88 = re::VideoDefaults::logEnabled(v43);
    if (v88)
    {
      v89 = *re::videoLogObjects(v88);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_1E1C61000, v89, OS_LOG_TYPE_DEFAULT, "==========================================", &buf, 2u);
      }
    }
  }

LABEL_199:
  re::VideoPresentationGroup::~VideoPresentationGroup(&v201);
  re::VideoPresentationGroup::~VideoPresentationGroup(&v270);
}