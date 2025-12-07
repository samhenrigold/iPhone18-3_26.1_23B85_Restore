void re::IntrospectionInfo<re::DynamicArray<re::ShaderAPIFlags::Values>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B48))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8F30);
    qword_1EE1B8F30 = &unk_1F5D05C80;
    __cxa_guard_release(&qword_1EE1B8B48);
  }

  if ((byte_1EE1B8934 & 1) == 0)
  {
    v2 = re::introspect_ShaderAPIFlagsValues(1, a2);
    if ((byte_1EE1B8934 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1B8934 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8F30, 0);
      qword_1EE1B8F40 = 0x2800000003;
      dword_1EE1B8F48 = v4;
      word_1EE1B8F4C = 0;
      *&xmmword_1EE1B8F50 = 0;
      *(&xmmword_1EE1B8F50 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8F60 = v3;
      qword_1EE1B8F68 = 0;
      qword_1EE1B8F30 = &unk_1F5D05C80;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&v14, &qword_1EE1B8F30);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 32);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1B8F50 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B8B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8B50))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B92B8);
    qword_1EE1B92B8 = &unk_1F5D05D18;
    __cxa_guard_release(&qword_1EE1B8B50);
  }

  if ((byte_1EE1B8935 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1B8AB0;
    if (!qword_1EE1B8AB0)
    {
      v4 = re::allocInfo_ConstantDataEntry(v2);
      qword_1EE1B8AB0 = v4;
      re::initInfo_ConstantDataEntry(v4, v5, v6, v7);
    }

    if ((byte_1EE1B8935 & 1) == 0)
    {
      byte_1EE1B8935 = 1;
      v8 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B92B8, 0);
      qword_1EE1B92C8 = 0x3000000007;
      dword_1EE1B92D0 = v8;
      word_1EE1B92D4 = 0;
      *&xmmword_1EE1B92D8 = 0;
      *(&xmmword_1EE1B92D8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B92E8 = v3;
      qword_1EE1B92F0 = 0;
      qword_1EE1B92F8 = v4;
      qword_1EE1B9300 = 0;
      qword_1EE1B92B8 = &unk_1F5D05D18;
      re::IntrospectionRegistry::add(v9, v10);
      re::getPrettyTypeName(&v25, &qword_1EE1B92B8);
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
        re::TypeBuilder::setConstructor(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v25, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v25, v18);
        re::StackScratchAllocator::~StackScratchAllocator(v27);
      }

      xmmword_1EE1B92D8 = v19;
      if (v22)
      {
        if (v22)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::FunctionLink>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  *a3 = 0;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  v4 = (a3 + 8);
  v5 = re::DynamicString::setCapacity(v4, 0);
  *(v3 + 40) = 0u;
  v3 += 40;
  *(v3 + 16) = 0u;
  re::DynamicString::setCapacity(v3, 0);
  *(v3 + 116) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 132) = 0x7FFFFFFFLL;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0;
  *(v3 + 180) = 0x7FFFFFFFLL;
  *(v3 + 224) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = 0;
  *(v3 + 192) = 0;
  *(v3 + 216) = 0;
  return result;
}

double re::internal::defaultDestruct<re::FunctionLink>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::DynamicArray<unsigned long>::deinit((a3 + 29));
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 23);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 17);
  re::DynamicArray<unsigned long>::deinit((a3 + 12));
  re::AssetHandle::~AssetHandle((a3 + 9));
  re::DynamicString::deinit((a3 + 5));

  return re::DynamicString::deinit((a3 + 1));
}

double re::internal::defaultConstructV2<re::FunctionLink>(uint64_t a1)
{
  v1 = a1;
  *a1 = 0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  v2 = (a1 + 8);
  v3 = re::DynamicString::setCapacity(v2, 0);
  *(v1 + 40) = 0u;
  v1 += 40;
  *(v1 + 16) = 0u;
  re::DynamicString::setCapacity(v1, 0);
  *(v1 + 116) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 132) = 0x7FFFFFFFLL;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0;
  *(v1 + 180) = 0x7FFFFFFFLL;
  *(v1 + 224) = 0;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 192) = 0;
  *(v1 + 216) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::FunctionLink>(uint64_t *a1)
{
  re::DynamicArray<unsigned long>::deinit((a1 + 29));
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 23);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 17);
  re::DynamicArray<unsigned long>::deinit((a1 + 12));
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::DynamicString::deinit((a1 + 5));

  return re::DynamicString::deinit((a1 + 1));
}

void *re::allocInfo_ConstantDataEntry(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AA0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D718, "ConstantDataEntry");
    __cxa_guard_release(&qword_1EE1B8AA0);
  }

  return &unk_1EE18D718;
}

void re::initInfo_ConstantDataEntry(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v16[0] = 0x2C54D4B20E616F08;
  v16[1] = "ConstantDataEntry";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1B8AA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AA8))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_size_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "dataOffset";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE1B8BA0 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint16_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "dataType";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x800000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B8BA8 = v14;
    __cxa_guard_release(&qword_1EE1B8AA8);
  }

  *(this + 2) = 0x1000000008;
  *(this + 6) = 8;
  *(this + 14) = 1;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B8BA0;
  *(this + 9) = re::internal::defaultConstruct<re::ConstantDataEntry>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ConstantDataEntry>;
  *(this + 13) = re::internal::defaultConstructV2<re::ConstantDataEntry>;
  *(this + 14) = re::internal::defaultDestructV2<re::ConstantDataEntry>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v15 = v17;
}

void *re::allocInfo_MaterialFile(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1B8AB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18D7A8, "MaterialFile");
    __cxa_guard_release(&qword_1EE1B8AB8);
  }

  return &unk_1EE18D7A8;
}

void re::initInfo_MaterialFile(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v41[0] = 0x3898C50117566EC6;
  v41[1] = "MaterialFile";
  if (v41[0])
  {
    if (v41[0])
    {
    }
  }

  *(this + 2) = v42;
  if ((atomic_load_explicit(&qword_1EE1B8AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8AC0))
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
    qword_1EE1B8C38 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_AssetHandle(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "materialDefinition";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x2000000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE1B8C40 = v14;
    v15 = re::introspectionAllocator();
    v16 = v15;
    v17 = qword_1EE1B8A60;
    if (!qword_1EE1B8A60)
    {
      v17 = re::allocInfo_MaterialParameterData(v15);
      qword_1EE1B8A60 = v17;
      re::initInfo_MaterialParameterData(v17, v18, v19, v20);
    }

    v21 = (*(*v16 + 32))(v16, 72, 8);
    *v21 = 1;
    *(v21 + 8) = "parameters";
    *(v21 + 16) = v17;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x3800000003;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    *(v21 + 56) = 0;
    *(v21 + 64) = 0;
    qword_1EE1B8C48 = v21;
    v22 = re::introspectionAllocator();
    v24 = re::IntrospectionInfo<re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(1, v23);
    v25 = (*(*v22 + 32))(v22, 72, 8);
    *v25 = 1;
    *(v25 + 8) = "functionConstants";
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0x12800000004;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 56) = 0;
    *(v25 + 64) = 0;
    qword_1EE1B8C50 = v25;
    v26 = re::introspectionAllocator();
    v32 = re::introspect_MaterialRenderFlags(1, v27, v28, v29, v30, v31);
    v33 = (*(*v26 + 32))(v26, 72, 8);
    *v33 = 1;
    *(v33 + 8) = "renderFlags";
    *(v33 + 16) = v32;
    *(v33 + 24) = 0;
    *(v33 + 32) = 0x15800000005;
    *(v33 + 40) = 0;
    *(v33 + 48) = 0;
    *(v33 + 56) = 0;
    *(v33 + 64) = 0;
    qword_1EE1B8C58 = v33;
    v34 = re::introspectionAllocator();
    re::IntrospectionInfo<re::DynamicArray<re::FunctionLink>>::get(v34);
    v35 = (*(*v34 + 32))(v34, 72, 8);
    *v35 = 1;
    *(v35 + 8) = "functionLinks";
    *(v35 + 16) = &qword_1EE1B8F70;
    *(v35 + 24) = 0;
    *(v35 + 32) = 0x17000000006;
    *(v35 + 40) = 0;
    *(v35 + 48) = 0;
    *(v35 + 56) = 0;
    *(v35 + 64) = 0;
    qword_1EE1B8C60 = v35;
    v36 = re::introspectionAllocator();
    v38 = re::introspect_BOOL(1, v37);
    v39 = (*(*v36 + 32))(v36, 72, 8);
    *v39 = 1;
    *(v39 + 8) = "failIfNotPrecompiled";
    *(v39 + 16) = v38;
    *(v39 + 24) = 0;
    *(v39 + 32) = 0x19800000007;
    *(v39 + 40) = 0;
    *(v39 + 48) = 0;
    *(v39 + 56) = 0;
    *(v39 + 64) = 0;
    qword_1EE1B8C68 = v39;
    __cxa_guard_release(&qword_1EE1B8AC0);
  }

  *(this + 2) = 0x1A000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B8C38;
  *(this + 9) = re::internal::defaultConstruct<re::MaterialFile>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::MaterialFile>;
  *(this + 13) = re::internal::defaultConstructV2<re::MaterialFile>;
  *(this + 14) = re::internal::defaultDestructV2<re::MaterialFile>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v40 = v42;
}

void re::IntrospectionInfo<re::DynamicArray<re::FunctionLink>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B8B58, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8B58);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B8F70);
      qword_1EE1B8F70 = &unk_1F5D05DB8;
      __cxa_guard_release(&qword_1EE1B8B58);
    }
  }

  if ((byte_1EE1B8936 & 1) == 0)
  {
    v1 = qword_1EE1B8A98;
    if (qword_1EE1B8A98 || (v1 = re::allocInfo_FunctionLink(a1), qword_1EE1B8A98 = v1, re::initInfo_FunctionLink(v1, v2, v3, v4), (byte_1EE1B8936 & 1) == 0))
    {
      byte_1EE1B8936 = 1;
      v5 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B8F70, 0);
      qword_1EE1B8F80 = 0x2800000003;
      dword_1EE1B8F88 = v5;
      word_1EE1B8F8C = 0;
      *&xmmword_1EE1B8F90 = 0;
      *(&xmmword_1EE1B8F90 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B8FA0 = v1;
      qword_1EE1B8FA8 = 0;
      qword_1EE1B8F70 = &unk_1F5D05DB8;
      re::IntrospectionRegistry::add(v6, v7);
      re::getPrettyTypeName(&v15, &qword_1EE1B8F70);
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
        re::TypeBuilder::setConstructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v15, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v15, 1);
        re::TypeBuilder::setListAccessors(&v15, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v15, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v15, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v15, v10);
        re::StackScratchAllocator::~StackScratchAllocator(v18);
      }

      xmmword_1EE1B8F90 = v11;
      if (v13)
      {
        if (v13)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::MaterialFile>(_anonymous_namespace_ *a1, uint64_t a2, _OWORD *a3)
{
  v3 = a3;
  *a3 = 0u;
  a3[1] = 0u;
  re::DynamicString::setCapacity(v3, 0);
  *(v3 + 248) = 0u;
  v3 = (v3 + 248);
  *(v3 - 172) = 0u;
  *(v3 - 184) = 0u;
  *(v3 - 200) = 0u;
  *(v3 - 216) = 0u;
  *(v3 - 156) = 0x7FFFFFFFLL;
  *(v3 - 9) = 0u;
  *(v3 - 8) = 0u;
  *(v3 - 28) = 0;
  *(v3 - 108) = 0x7FFFFFFFLL;
  *(v3 - 6) = 0u;
  *(v3 - 5) = 0u;
  *(v3 - 16) = 0;
  *(v3 - 60) = 0x7FFFFFFFLL;
  *(v3 - 3) = 0u;
  *(v3 - 2) = 0u;
  *(v3 - 4) = 0;
  *(v3 - 12) = 0x7FFFFFFFLL;
  v3[1] = 0u;
  result = 0.0;
  *(v3 + 8) = 0;
  *(v3 + 36) = 0x7FFFFFFFLL;
  v3[3] = 0u;
  v3[4] = 0u;
  *(v3 + 20) = 0;
  *(v3 + 84) = 0x7FFFFFFFLL;
  *(v3 + 96) = 0;
  *(v3 + 98) = 0;
  *(v3 + 100) = 0;
  *(v3 + 102) = 0;
  *(v3 + 104) = 0;
  *(v3 + 106) = 0;
  *(v3 + 108) = 0;
  *(v3 + 110) = 0;
  *(v3 + 112) = 0;
  *(v3 + 114) = 0;
  *(v3 + 19) = 0;
  *(v3 + 16) = 0;
  *(v3 + 17) = 0;
  *(v3 + 36) = 0;
  *(v3 + 15) = 0;
  *(v3 + 160) = 0;
  return result;
}

double re::internal::defaultDestruct<re::MaterialFile>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::DynamicArray<re::FunctionLink>::deinit((a3 + 46));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 37);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 31);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 25);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 19);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 13);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a3 + 7);
  re::AssetHandle::~AssetHandle((a3 + 4));

  return re::DynamicString::deinit(a3);
}

double re::internal::defaultConstructV2<re::MaterialFile>(_anonymous_namespace_ *a1)
{
  v1 = a1;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  re::DynamicString::setCapacity(v1, 0);
  *(v1 + 248) = 0u;
  v1 = (v1 + 248);
  *(v1 - 172) = 0u;
  *(v1 - 184) = 0u;
  *(v1 - 200) = 0u;
  *(v1 - 216) = 0u;
  *(v1 - 156) = 0x7FFFFFFFLL;
  *(v1 - 9) = 0u;
  *(v1 - 8) = 0u;
  *(v1 - 28) = 0;
  *(v1 - 108) = 0x7FFFFFFFLL;
  *(v1 - 6) = 0u;
  *(v1 - 5) = 0u;
  *(v1 - 16) = 0;
  *(v1 - 60) = 0x7FFFFFFFLL;
  *(v1 - 3) = 0u;
  *(v1 - 2) = 0u;
  *(v1 - 4) = 0;
  *(v1 - 12) = 0x7FFFFFFFLL;
  *(v1 + 1) = 0u;
  result = 0.0;
  *(v1 + 8) = 0;
  *(v1 + 36) = 0x7FFFFFFFLL;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 20) = 0;
  *(v1 + 84) = 0x7FFFFFFFLL;
  *(v1 + 96) = 0;
  *(v1 + 98) = 0;
  *(v1 + 100) = 0;
  *(v1 + 102) = 0;
  *(v1 + 104) = 0;
  *(v1 + 106) = 0;
  *(v1 + 108) = 0;
  *(v1 + 110) = 0;
  *(v1 + 112) = 0;
  *(v1 + 114) = 0;
  *(v1 + 19) = 0;
  *(v1 + 16) = 0;
  *(v1 + 17) = 0;
  *(v1 + 36) = 0;
  *(v1 + 15) = 0;
  *(v1 + 160) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::MaterialFile>(uint64_t *a1)
{
  re::DynamicArray<re::FunctionLink>::deinit((a1 + 46));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 37);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 31);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 25);
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 19);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 13);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 4));

  return re::DynamicString::deinit(a1);
}

void *re::IntrospectionOptional<re::mtl::SamplerAddressMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerAddressMode>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerAddressMode>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerAddressMode>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerAddressMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerAddressMode>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::mtl::SamplerBorderColor>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerBorderColor>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerBorderColor>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerBorderColor>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerBorderColor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerBorderColor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::mtl::SamplerMinMagFilter>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerMinMagFilter>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerMinMagFilter>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerMinMagFilter>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMinMagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMinMagFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::mtl::SamplerMipFilter>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerMipFilter>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerMipFilter>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerMipFilter>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMipFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerMipFilter>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionOptional<re::mtl::SamplerCompareFunction>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::mtl::SamplerCompareFunction>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::mtl::SamplerCompareFunction>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 4) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::mtl::SamplerCompareFunction>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 4;
}

{
  return a2 + 4;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::mtl::SamplerCompareFunction>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 4;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::mtl::SamplerCompareFunction>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, int *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 4) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 14;
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
    v10 = *(a2 + 16) + 56 * v6;
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
      if ((*(*(a2 + 16) + 56 * v6) & 0x80000000) != 0)
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

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v4, v6, a2);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 56 * v4) & 0x80000000) != 0)
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
          v5 += 14;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionDynamicArray<re::RenderAttachmentState>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::RenderAttachmentState>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::RenderAttachmentState>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::RenderAttachmentState>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::RenderAttachmentState>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::RenderAttachmentState>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::RenderAttachmentState>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::RenderAttachmentState>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::RenderAttachmentState>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
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

        re::DynamicArray<re::RenderAttachmentState>::setCapacity(a4, v14);
      }

      else
      {
        re::DynamicArray<re::RenderAttachmentState>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v9 = *(a4 + 16);
  }

  v15 = (*(a4 + 32) + 32 * v9);
  *v15 = xmmword_1E30B42C0;
  v15[1] = xmmword_1E30B42D0;
  v16 = *(a4 + 16) + 1;
  *(a4 + 16) = v16;
  ++*(a4 + 24);
  v17 = (*(a4 + 32) + 32 * v16 - 32);
  re::introspectionInitElement(a2, a3, a1[6], v17);
  return v17;
}

unint64_t re::IntrospectionDynamicArray<re::RenderAttachmentState>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::RenderAttachmentState>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::RenderAttachmentState>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4 && v5 >= 1)
    {
      v6 = v3[4] + 32 * v4;
      v7 = v5 + 1;
      do
      {
        *v6 = 0;
        *(v6 + 4) = xmmword_1E30A1FE0;
        *(v6 + 20) = 5;
        *(v6 + 28) = 15;
        v6 += 32;
        --v7;
      }

      while (v7 > 1);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::RenderAttachmentState>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::RenderAttachmentState>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::RenderAttachmentState>::resize(a1, a4);
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

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::RenderAttachmentState>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

re::MaterialTechniqueData *re::MaterialTechniqueData::MaterialTechniqueData(re::MaterialTechniqueData *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  v2 = re::DynamicString::setCapacity(this, 0);
  *(this + 3) = 0u;
  *(this + 2) = 0u;
  v3 = re::DynamicString::setCapacity(this + 4, 0);
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 4) = 0u;
  *(this + 7) = 0u;
  v4 = re::DynamicString::setCapacity(this + 14, 0);
  *(this + 24) = 0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 9) = 0u;
  v5 = re::DynamicString::setCapacity(this + 21, 0);
  *(this + 25) = 0xFFFF000100010000;
  *(this + 104) = 1792;
  *(this + 210) = 4;
  *(this + 212) = xmmword_1E30A1FE0;
  *(this + 228) = 5;
  *(this + 59) = 15;
  *(this + 32) = 0;
  *(this + 264) = 0u;
  *(this + 70) = 0;
  *(this + 30) = 0;
  *(this + 245) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  re::DynamicString::setCapacity(this + 37, 0);
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 45) = 0x7FFFFFFF00000000;
  *(this + 92) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 102) = 0;
  *(this + 412) = 0x7FFFFFFFLL;
  *(this + 53) = 0;
  *(this + 27) = 0u;
  *(this + 112) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 484) = 0u;
  *(this + 500) = 0x7FFFFFFFLL;
  *(this + 68) = 0;
  *(this + 66) = 0;
  *(this + 134) = 0;
  *(this + 32) = 0u;
  *(this + 276) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 0;
  *(this + 596) = 0x7FFFFFFFLL;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 160) = 0;
  *(this + 644) = 0x7FFFFFFFLL;
  *(this + 164) = 16777472;
  *(this + 660) = 0;
  return this;
}

void *re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v14 = 0u;
  v13 = 0u;
  re::DynamicString::setCapacity(&v12, 0);
  DWORD2(v14) = 0;
  v10 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v12);
  if (DWORD2(v14) != -1)
  {
    off_1F5D05328[DWORD2(v14)](&v15, &v12);
  }

  re::introspectionInitElement(a2, a3, a1[8], v10);
  return v10;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 22;
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
    v10 = *(a2 + 16) + 88 * v6;
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
      if ((*(*(a2 + 16) + 88 * v6) & 0x80000000) != 0)
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

re::DynamicString *re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v14, a2);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v6, &v11, a2);
  v7 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v12, v11);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = 0;
    v9 = (v8 + 40);
    *(v9 + 8) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(v9, a3);
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v9 = (*(a1 + 16) + 88 * v7 + 40);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(v9, a3);
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::StringID,re::RigDataTypeClass,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, a3, 3);
  }
}

re::DynamicString *re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, v4, v6, a2);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 88 * v4) & 0x80000000) != 0)
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
          v5 += 22;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 88 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureParam,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = re::DynamicString::setCapacity(&v14, 0);
  DWORD2(v16) = 0;
  v18 = 0uLL;
  *(&v17 + 1) = 0;
  v11 = re::DynamicString::setCapacity(&v17, 0);
  *(&v19 + 1) = 0;
  v20 = 0uLL;
  re::DynamicString::setCapacity(&v19, 0);
  LOBYTE(v21) = 0;
  v12 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v14);
  if (v19)
  {
    if (BYTE8(v19))
    {
      (*(*v19 + 40))();
    }

    v20 = 0u;
    v19 = 0u;
  }

  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v18 = 0u;
    v17 = 0u;
  }

  if (DWORD2(v16) != -1)
  {
    off_1F5D05328[DWORD2(v16)](&v22, &v14);
  }

  re::introspectionInitElement(a2, a3, a1[8], v12);
  return v12;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 40;
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
    v10 = *(a2 + 16) + 160 * v6;
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
      if ((*(*(a2 + 16) + 160 * v6) & 0x80000000) != 0)
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

uint64_t re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v23, a2);
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v20);
  v7 = HIDWORD(v21);
  if (HIDWORD(v21) != 0x7FFFFFFF)
  {
    ++*(a1 + 40);
    v18 = *(a1 + 16) + 160 * v7;
    v9 = v18 + 40;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(v18 + 40, a3);
    re::DynamicString::operator=((v18 + 80), (a3 + 40));
    re::DynamicString::operator=((v18 + 112), (a3 + 72));
    if (*(v18 + 144))
    {
      if ((*(a3 + 104) & 1) == 0)
      {
        *(v18 + 144) = 0;
        return v9;
      }
    }

    else
    {
      if ((*(a3 + 104) & 1) == 0)
      {
        return v9;
      }

      *(v18 + 144) = 1;
    }

    *(v18 + 148) = *(a3 + 108);
    return v9;
  }

  v8 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v21, v20);
  re::DynamicString::DynamicString((v8 + 8), a2);
  *(v8 + 40) = 0;
  v9 = v8 + 40;
  *(v8 + 72) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>((v8 + 40), a3);
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  *(v8 + 104) = *(a3 + 64);
  v10 = *(a3 + 48);
  *(v8 + 80) = *(a3 + 40);
  *(a3 + 40) = 0;
  v11 = *(a3 + 56);
  *(a3 + 64) = 0;
  v13 = *(v8 + 88);
  v12 = *(v8 + 96);
  *(v8 + 88) = v10;
  *(v8 + 96) = v11;
  *(a3 + 48) = v13;
  *(a3 + 56) = v12;
  *(v8 + 112) = 0u;
  *(v8 + 128) = 0u;
  *(v8 + 136) = *(a3 + 96);
  v14 = *(a3 + 80);
  *(v8 + 112) = *(a3 + 72);
  *(a3 + 72) = 0;
  v15 = *(a3 + 88);
  *(a3 + 96) = 0;
  v17 = *(v8 + 120);
  v16 = *(v8 + 128);
  *(v8 + 120) = v14;
  *(v8 + 128) = v15;
  *(a3 + 80) = v17;
  *(a3 + 88) = v16;
  LODWORD(v15) = *(a3 + 104);
  *(v8 + 144) = v15;
  if (v15 == 1)
  {
    *(v8 + 148) = *(a3 + 108);
  }

  ++*(a1 + 40);
  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 160 * v4) & 0x80000000) != 0)
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
          v5 += 40;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 160 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 160 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  LOBYTE(v10[0]) = 10;
  v8 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 38;
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
    v10 = *(a2 + 16) + 152 * v6;
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
      if ((*(*(a2 + 16) + 152 * v6) & 0x80000000) != 0)
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

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t a3)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v26, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v23);
  v7 = HIDWORD(v24);
  if (HIDWORD(v24) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v24, v23);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    result = v8 + 40;
    v10 = *(a3 + 1);
    *(v8 + 41) = v10;
    if (v10 == 1)
    {
      *(v8 + 42) = *(a3 + 2);
    }

    v11 = *(a3 + 3);
    *(v8 + 43) = v11;
    if (v11 == 1)
    {
      *(v8 + 44) = *(a3 + 4);
    }

    v12 = *(a3 + 8);
    *(v8 + 48) = v12;
    if (v12 == 1)
    {
      *(v8 + 52) = *(a3 + 12);
    }

    v13 = *(a3 + 16);
    *(v8 + 56) = v13;
    if (v13 == 1)
    {
      *(v8 + 60) = *(a3 + 20);
    }

    v14 = *(a3 + 24);
    *(v8 + 64) = v14;
    if (v14 == 1)
    {
      *(v8 + 68) = *(a3 + 28);
    }

    v15 = *(a3 + 32);
    *(v8 + 72) = v15;
    if (v15 == 1)
    {
      *(v8 + 76) = *(a3 + 36);
    }

    v16 = *(a3 + 40);
    *(v8 + 80) = v16;
    if (v16 == 1)
    {
      *(v8 + 84) = *(a3 + 44);
    }

    v17 = *(a3 + 48);
    *(v8 + 88) = v17;
    if (v17 == 1)
    {
      *(v8 + 92) = *(a3 + 52);
    }

    v18 = *(a3 + 56);
    *(v8 + 96) = v18;
    if (v18 == 1)
    {
      *(v8 + 100) = *(a3 + 60);
    }

    v19 = *(a3 + 64);
    *(v8 + 104) = v19;
    if (v19 == 1)
    {
      *(v8 + 108) = *(a3 + 68);
    }

    v20 = *(a3 + 72);
    *(v8 + 112) = v20;
    if (v20 == 1)
    {
      *(v8 + 116) = *(a3 + 76);
    }

    v21 = *(a3 + 80);
    *(v8 + 120) = v21;
    if (v21 == 1)
    {
      *(v8 + 124) = *(a3 + 84);
    }

    v22 = *(a3 + 88);
    *(v8 + 128) = v22;
    if (v22 == 1)
    {
      *(v8 + 136) = *(a3 + 96);
    }

    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    return re::OptionalMaterialSamplerData::operator=(*(a1 + 16) + 152 * v7 + 40, a3);
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 152 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 152 * v4) & 0x80000000) != 0)
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
          v5 += 38;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 152 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 152 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionDynamicArray<re::MaterialTechniqueData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MaterialTechniqueData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MaterialTechniqueData>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  bzero(v10, 0x298uLL);
  re::MaterialTechniqueData::MaterialTechniqueData(v10);
  re::DynamicArray<re::MaterialTechniqueData>::add(a4, v10);
  re::MaterialTechniqueData::~MaterialTechniqueData(v10);
  v8 = (*(a4 + 4) + 664 * *(a4 + 2) - 664);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::MaterialTechniqueData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 664 * a3;
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

  return *(a2 + 32) + 664 * a3;
}

void re::DynamicArray<re::MaterialTechniqueData>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v12 = 664 * a2;
    v13 = a2;
    do
    {
      re::MaterialTechniqueData::~MaterialTechniqueData((*(v3 + 4) + v12));
      ++v2;
      v12 += 664;
    }

    while (v2 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v13 = v2;
    v5 = v2 - v4;
    if (v2 > v4)
    {
      v6 = 664 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 48) = 0u;
        *(v7 + 32) = 0u;
        v9 = re::DynamicString::setCapacity((v7 + 32), 0);
        *(v7 + 128) = 0u;
        *(v7 + 80) = 0u;
        *(v7 + 96) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 112) = 0u;
        v10 = re::DynamicString::setCapacity((v7 + 112), 0);
        *(v7 + 192) = 0;
        *(v7 + 160) = 0u;
        *(v7 + 176) = 0u;
        *(v7 + 144) = 0u;
        v7 += 168;
        v11 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0xFFFF000100010000;
        *(v7 + 40) = 1792;
        *(v7 + 42) = 4;
        *(v7 + 44) = xmmword_1E30A1FE0;
        *(v7 + 60) = 5;
        *(v7 + 68) = 15;
        *(v7 + 88) = 0;
        *(v7 + 96) = 0u;
        *(v7 + 112) = 0;
        *(v7 + 72) = 0;
        *(v7 + 77) = 0;
        *(v7 + 120) = 0u;
        *(v7 + 136) = 0u;
        *(v7 + 152) = 0;
        a1 = re::DynamicString::setCapacity((v7 + 128), 0);
        *(v7 + 160) = 0u;
        *(v7 + 176) = 0u;
        *(v7 + 192) = 0u;
        *(v7 + 208) = 0u;
        *(v7 + 196) = 0x7FFFFFFF;
        *(v7 + 224) = 0u;
        *(v7 + 240) = 0u;
        *(v7 + 244) = 0x7FFFFFFF;
        *(v7 + 256) = 0;
        *(v7 + 264) = 0u;
        *(v7 + 280) = 0;
        *(v7 + 304) = 0u;
        *(v7 + 320) = 0u;
        *(v7 + 288) = 0u;
        *(v7 + 336) = 0;
        *(v7 + 332) = 0x7FFFFFFF;
        *(v7 + 376) = 0;
        *(v7 + 360) = 0;
        *(v7 + 368) = 0;
        *(v7 + 344) = 0u;
        *(v7 + 384) = 0;
        *(v7 + 424) = 0u;
        *(v7 + 408) = 0u;
        *(v7 + 392) = 0u;
        *(v7 + 428) = 0x7FFFFFFF;
        *(v7 + 472) = 0u;
        *(v7 + 456) = 0u;
        *(v7 + 440) = 0u;
        *(v7 + 476) = 0x7FFFFFFF;
        *(v7 + 488) = 16777472;
        v6 += 664;
        *(v7 + 492) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = v13;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MaterialTechniqueData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MaterialTechniqueData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MaterialTechniqueData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 664 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 664;
        v11 -= 664;
      }

      while (v11);
    }
  }
}

re::MaterialTechniqueData *re::DynamicArray<re::MaterialTechniqueData>::clear(re::MaterialTechniqueData *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 664 * v2;
    do
    {
      re::MaterialTechniqueData::~MaterialTechniqueData(result);
      result = (v4 + 664);
      v3 -= 664;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 664 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 664 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueGroupData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  re::DynamicString::setCapacity(&v10, 0);
  *(&v14 + 1) = 0;
  v13 = 0uLL;
  *(&v12 + 1) = 0;
  LODWORD(v14) = 0;
  re::DynamicArray<re::MaterialTechniqueGroupData>::add(a4, &v10);
  re::MaterialTechniqueGroupData::deinit(&v10);
  re::DynamicArray<re::DynamicString>::deinit(&v12 + 8);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  v8 = (*(a4 + 4) + 72 * *(a4 + 2) - 72);
  re::introspectionInitElement(a2, a3, a1[6], v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::MaterialTechniqueGroupData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 72 * a3;
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

  return *(a2 + 32) + 72 * a3;
}

void re::DynamicArray<re::MaterialTechniqueGroupData>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 72 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::MaterialTechniqueGroupData::deinit(v10);
      re::DynamicArray<re::DynamicString>::deinit((v10 + 4));
      re::DynamicString::deinit(v10);
      ++v9;
      v8 += 72;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 72 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 64) = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        v6 += 72;
        *(v7 + 56) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = &v9[9 * v8];
      do
      {
        re::MaterialTechniqueGroupData::deinit(v9);
        re::DynamicArray<re::DynamicString>::deinit((v9 + 4));
        re::DynamicString::deinit(v9);
        v9 += 9;
      }

      while (v9 != v10);
    }
  }

  else
  {
    re::DynamicArray<re::MaterialTechniqueGroupData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MaterialTechniqueGroupData>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::MaterialTechniqueGroupData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 72 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 72;
        v14 -= 72;
      }

      while (v14);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 72 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 72 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueGroupData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::DebugMapping>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DebugMapping>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DebugMapping>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DebugMapping>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DebugMapping>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DebugMapping>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::DebugMapping>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DebugMapping>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::DebugMapping>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DebugMapping>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  memset(v13, 0, sizeof(v13));
  v12 = 0u;
  re::DynamicString::setCapacity(&v11, 0);
  memset(&v13[8], 0, 36);
  *&v13[44] = 0x7FFFFFFFLL;
  re::DynamicArray<re::DebugMapping>::add(a4, &v11);
  v8 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v13[8]);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))(v8);
  }

  v9 = (*(a4 + 4) + 80 * *(a4 + 2) - 80);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::DebugMapping>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 80 * a3;
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

  return *(a2 + 32) + 80 * a3;
}

void re::DynamicArray<re::DebugMapping>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 80 * a2;
    v9 = a2;
    do
    {
      v10 = (*(v3 + 4) + v8);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v10 + 4);
      re::DynamicString::deinit(v10);
      ++v9;
      v8 += 80;
    }

    while (v9 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::DebugMapping>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 80 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 48) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 32) = 0u;
        v6 += 80;
        *(v7 + 68) = 0x7FFFFFFF;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DebugMapping>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::DebugMapping>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::DebugMapping>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DebugMapping>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::DebugMapping>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 80 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 80;
        v11 -= 80;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::DebugMapping>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 80 * v2;
    do
    {
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v3 + 4);
      re::DynamicString::deinit(v3);
      v3 += 10;
      v4 -= 80;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 80 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 80 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DebugMapping>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v8 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v10);
  if (v10 == 1 && *(&v10 + 1) && (v11 & 1) != 0)
  {
    (*(**(&v10 + 1) + 40))();
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 24;
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
    v10 = *(a2 + 16) + 96 * v6;
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
      if ((*(*(a2 + 16) + 96 * v6) & 0x80000000) != 0)
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

void re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
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
        re::HashTable<re::DynamicString,re::Optional<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 96;
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

uint64_t re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, unsigned __int8 *a3)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v21, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v18);
  v7 = HIDWORD(v19);
  if (HIDWORD(v19) != 0x7FFFFFFF)
  {
    ++*(a1 + 40);
    v16 = *(a1 + 16) + 96 * v7;
    v10 = v16 + 40;
    re::Optional<re::DynamicString>::operator=(v16 + 40, a3);
    if (*(v16 + 80))
    {
      if ((a3[40] & 1) == 0)
      {
        *(v16 + 80) = 0;
        return v10;
      }
    }

    else
    {
      if ((a3[40] & 1) == 0)
      {
        return v10;
      }

      *(v16 + 80) = 1;
    }

    *(v16 + 81) = a3[41];
    return v10;
  }

  v8 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v19, v18);
  re::DynamicString::DynamicString((v8 + 8), a2);
  v9 = *a3;
  *(v8 + 40) = v9;
  v10 = v8 + 40;
  if (v9 == 1)
  {
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
    *(v8 + 72) = *(a3 + 4);
    v11 = *(a3 + 2);
    *(v8 + 48) = *(a3 + 1);
    *(a3 + 1) = 0;
    v12 = *(a3 + 3);
    *(a3 + 4) = 0;
    v14 = *(v8 + 56);
    v13 = *(v8 + 64);
    *(v8 + 56) = v11;
    *(v8 + 64) = v12;
    *(a3 + 2) = v14;
    *(a3 + 3) = v13;
  }

  v15 = a3[40];
  *(v8 + 80) = v15;
  if (v15 == 1)
  {
    *(v8 + 81) = a3[41];
  }

  ++*(a1 + 40);
  return v10;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 96 * v4) & 0x80000000) != 0)
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
          v5 += 24;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 96 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 96 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v8 = re::DynamicString::setCapacity(&v11, 0);
  v14 = 0uLL;
  *&v15 = 0;
  re::DynamicString::setCapacity(&v13 + 1, 0);
  *(&v17 + 1) = 0;
  v16 = 0uLL;
  *(&v15 + 1) = 0;
  LODWORD(v17) = 0;
  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::add(a4, &v11);
  re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(&v11);
  v9 = (*(a4 + 4) + 104 * *(a4 + 2) - 104);
  re::introspectionInitElement(a2, a3, a1[6], v9);
  return v9;
}

unint64_t re::IntrospectionDynamicArray<re::MaterialTechniqueQualityLevelSetData>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 104 * a3;
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

  return *(a2 + 32) + 104 * a3;
}

void re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v9 = 104 * a2;
    v10 = a2;
    do
    {
      re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData((*(v3 + 4) + v9));
      ++v10;
      v9 += 104;
    }

    while (v10 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 104 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        v7 += 32;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 64) = 0;
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 32) = 0;
        v6 += 104;
        *(v7 + 56) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 104 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 104;
        v11 -= 104;
      }

      while (v11);
    }
  }
}

re::MaterialTechniqueQualityLevelSetData *re::DynamicArray<re::MaterialTechniqueQualityLevelSetData>::clear(re::MaterialTechniqueQualityLevelSetData *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    result = *(result + 4);
    v3 = 104 * v2;
    do
    {
      re::MaterialTechniqueQualityLevelSetData::~MaterialTechniqueQualityLevelSetData(result);
      result = (v4 + 104);
      v3 -= 104;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 104 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 104 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MaterialTechniqueQualityLevelSetData>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  DWORD1(v11) = 0x7FFFFFFF;
  v8 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, v10);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 24;
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
    v10 = *(a2 + 16) + 96 * v6;
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
      if ((*(*(a2 + 16) + 96 * v6) & 0x80000000) != 0)
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

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v12, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<re::DynamicString const&,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(*(a1 + 16) + 96 * v7 + 40, a3);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 96 * v4) & 0x80000000) != 0)
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
          v5 += 24;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 96 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 96 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::EvaluationCommand>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::EvaluationCommand>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ShaderAPIFlags::Values>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<re::ShaderAPIFlags::Values>::add(this, &v10);
  v8 = (*(this + 4) + 4 * *(this + 2) - 4);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

unint64_t re::IntrospectionDynamicArray<re::ShaderAPIFlags::Values>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 4 * a3;
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

  return *(a2 + 32) + 4 * a3;
}

void re::DynamicArray<re::ShaderAPIFlags::Values>::resize(uint64_t a1, unint64_t a2)
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
      re::DynamicArray<re::EvaluationCommand>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 4 * v4), 4 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

_anonymous_namespace_ *re::DynamicArray<re::ShaderAPIFlags::Values>::add(_anonymous_namespace_ *this, _DWORD *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::ShaderAPIFlags::Values>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  *(*(v3 + 4) + 4 * v4) = *a2;
  *(v3 + 2) = v4 + 1;
  ++*(v3 + 6);
  return this;
}

_anonymous_namespace_ *re::DynamicArray<re::ShaderAPIFlags::Values>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::EvaluationCommand>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::EvaluationCommand>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::EvaluationCommand>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::EvaluationCommand>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::ShaderAPIFlags::Values>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 4 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 4;
        v11 -= 4;
      }

      while (v11);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 4 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 4 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ShaderAPIFlags::Values>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = a1 + 6;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v11 = 0uLL;
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v11);
  v9 = v8;
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v9;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 16;
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
    v10 = *(a2 + 16) + (v6 << 6);
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
      if ((*(*(a2 + 16) + (v6 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

__n128 re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v13, a2);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v11, v10);
    re::DynamicString::DynamicString((v8 + 8), a2);
    result = *a3;
    *(v8 + 40) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + (v7 << 6) + 40) = *a3;
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  Instance = re::TypeInfo::createInstance(v12, a3, 0);
  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  v10 = v9;
  re::TypeRegistry::typeInfo(*a2, *(a2[2] + 88), &v13);
  re::TypeInfo::TypeInfo(v12, v14);
  re::TypeInfo::releaseInstance(v12, Instance, a3, 0);
  return v10;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + (v4 << 6)) & 0x80000000) != 0)
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
          v5 += 16;
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

unint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

unint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash("assertion failure: (iter->originalVersion == iter->hashTable->version()) HashTable entries may not be added or removed during iteration.");
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void *re::IntrospectionDynamicArray<re::FunctionLink>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::FunctionLink>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::FunctionLink>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::FunctionLink>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::FunctionLink>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::FunctionLink>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::FunctionLink>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::FunctionLink>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::FunctionLink>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::FunctionLink>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v12 = 0;
  v8 = re::DynamicString::setCapacity(&v13, 0);
  memset(&v15[1], 0, 24);
  re::DynamicString::setCapacity(v15 + 1, 0);
  v16 = 0u;
  memset(v17, 0, 28);
  memset(&v15[2] + 8, 0, 52);
  *(&v17[1] + 12) = 0x7FFFFFFFLL;
  memset(&v17[2] + 8, 0, 36);
  *(&v17[4] + 12) = 0x7FFFFFFFLL;
  *(&v19 + 1) = 0;
  v18 = 0uLL;
  *(&v17[5] + 1) = 0;
  LODWORD(v19) = 0;
  re::DynamicArray<re::FunctionLink>::add(a4, &v12);
  if (*(&v17[5] + 1))
  {
    if (*(&v19 + 1))
    {
      (*(**(&v17[5] + 1) + 40))(*(&v17[5] + 1));
    }

    *(&v19 + 1) = 0;
    v18 = 0uLL;
    *(&v17[5] + 1) = 0;
    LODWORD(v19) = v19 + 1;
  }

  re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v17[2] + 1);
  v9 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v16 + 1);
  if (*&v15[4])
  {
    if (v16)
    {
      (*(**&v15[4] + 40))(v9);
    }

    *&v16 = 0;
    memset(&v15[4], 0, 24);
    ++DWORD2(v15[5]);
  }

  re::AssetHandle::~AssetHandle((&v15[2] + 8));
  if (*(&v15[0] + 1))
  {
    if (v15[1])
    {
      (*(**(&v15[0] + 1) + 40))(*(&v15[0] + 1));
    }

    memset(v15 + 8, 0, 32);
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))(v13);
  }

  v10 = (*(a4 + 4) + 272 * *(a4 + 2) - 272);
  re::introspectionInitElement(a2, a3, a1[6], v10);
  return v10;
}

unint64_t re::IntrospectionDynamicArray<re::FunctionLink>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

  return *(a2 + 32) + 272 * a3;
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

  return *(a2 + 32) + 272 * a3;
}

void re::DynamicArray<re::FunctionLink>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v9 = 272 * a2 + 136;
    v10 = a2;
    do
    {
      v11 = (*(v3 + 4) + v9);
      re::DynamicArray<unsigned long>::deinit((v11 + 12));
      re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v11 + 6);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v11);
      re::DynamicArray<unsigned long>::deinit((v11 - 5));
      re::AssetHandle::~AssetHandle((v11 - 8));
      re::DynamicString::deinit((v11 - 12));
      re::DynamicString::deinit((v11 - 16));
      ++v10;
      v9 += 272;
    }

    while (v10 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::FunctionLink>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 272 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0;
        *(v7 + 24) = 0u;
        *(v7 + 8) = 0u;
        v8 = re::DynamicString::setCapacity((v7 + 8), 0);
        *(v7 + 40) = 0u;
        v7 += 40;
        *(v7 + 16) = 0u;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 120) = 0u;
        *(v7 + 136) = 0;
        *(v7 + 104) = 0u;
        *(v7 + 88) = 0u;
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        *(v7 + 64) = 0u;
        *(v7 + 80) = 0;
        *(v7 + 132) = 0x7FFFFFFF;
        *(v7 + 160) = 0u;
        *(v7 + 176) = 0u;
        *(v7 + 144) = 0u;
        *(v7 + 180) = 0x7FFFFFFF;
        *(v7 + 224) = 0;
        *(v7 + 200) = 0;
        *(v7 + 208) = 0;
        *(v7 + 192) = 0;
        v6 += 272;
        *(v7 + 216) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

uint64_t *re::DynamicArray<re::FunctionLink>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::FunctionLink>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 272 * v4;
  *v5 = *a2;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 32) = *(a2 + 32);
  v6 = *(a2 + 16);
  *(v5 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = *(a2 + 24);
  *(a2 + 32) = 0;
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(v5 + 56) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 64) = *(a2 + 64);
  v10 = *(a2 + 48);
  *(v5 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  v11 = *(a2 + 56);
  *(a2 + 64) = 0;
  v13 = *(v5 + 48);
  v12 = *(v5 + 56);
  *(v5 + 48) = v10;
  *(v5 + 56) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v12;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v14 = *(v5 + 72);
  *(v5 + 72) = 0;
  *(v5 + 72) = *(a2 + 72);
  *(a2 + 72) = v14;
  v15 = *(v5 + 88);
  *(v5 + 88) = *(a2 + 88);
  *(a2 + 88) = v15;
  *(v5 + 128) = 0;
  *(v5 + 104) = 0;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0;
  *(v5 + 120) = 0;
  v16 = *(a2 + 104);
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 104) = v16;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v17 = *(v5 + 112);
  *(v5 + 112) = *(a2 + 112);
  *(a2 + 112) = v17;
  v18 = *(v5 + 128);
  *(v5 + 128) = *(a2 + 128);
  *(a2 + 128) = v18;
  ++*(a2 + 120);
  ++*(v5 + 120);
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0;
  *(v5 + 136) = 0u;
  *(v5 + 172) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v5 + 136), (a2 + 136));
  *(v5 + 184) = 0u;
  v5 += 184;
  *(v5 + 32) = 0;
  *(v5 + 16) = 0u;
  *(v5 + 36) = 0x7FFFFFFFLL;
  result = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v5, (a2 + 184));
  *(v5 + 80) = 0;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  v20 = *(a2 + 240);
  *(v5 + 48) = *(a2 + 232);
  *(v5 + 56) = v20;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v21 = *(v5 + 64);
  *(v5 + 64) = *(a2 + 248);
  *(a2 + 248) = v21;
  v22 = *(v5 + 80);
  *(v5 + 80) = *(a2 + 264);
  *(a2 + 264) = v22;
  ++*(a2 + 256);
  ++*(v5 + 72);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::FunctionLink>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::FunctionLink>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FunctionLink>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::FunctionLink>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, void *a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = 0;
      v10 = *(a1 + 32);
      v11 = 272 * v8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 232);
        re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v10 + v9 + 184));
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit((v10 + v9 + 136));
        re::DynamicArray<unsigned long>::deinit(v10 + v9 + 96);
        re::AssetHandle::~AssetHandle((v10 + v9 + 72));
        re::DynamicString::deinit((v10 + v9 + 40));
        re::DynamicString::deinit((v10 + v9 + 8));
        v9 += 272;
      }

      while (v11 != v9);
    }
  }

  else
  {
    re::DynamicArray<re::FunctionLink>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::FunctionLink>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::FunctionLink>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(a2[2] + 80), &v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 272 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 272;
        v15 -= 272;
      }

      while (v15);
    }
  }
}

unint64_t re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

  return *(a1 + 32) + 272 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 272 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::FunctionLink>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::RenderGraphOptimizerProcessor::init(re::RenderGraphOptimizerProcessor *this, re::RenderGraphCompiled *a2)
{
  v5 = a2;
  v244 = *MEMORY[0x1E69E9840];
  *(a2 + 69) = 0;
  ++*(a2 + 140);
  re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::resize(this + 17, *(*(a2 + 37) + 16));
  v231 = 0;
  v7 = *(v5 + 37);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v2 = 48;
    while (1)
    {
      v10 = v9;
      v11 = *(this + 19);
      if (v11 <= v9)
      {
LABEL_250:
        v230[0] = 0;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v239 = 0u;
        v135 = MEMORY[0x1E69E9C10];
        v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v233 = 136315906;
        *v234 = "operator[]";
        *&v234[8] = 1024;
        if (v136)
        {
          v137 = 3;
        }

        else
        {
          v137 = 2;
        }

        *&v234[10] = 789;
        v235 = 2048;
        v236 = v10;
        v237 = 2048;
        v238 = v11;
        _os_log_send_and_compose_impl(v137, v230, &v239, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
        _os_crash_msg();
        __break(1u);
LABEL_254:
        v230[0] = 0;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v239 = 0u;
        v138 = MEMORY[0x1E69E9C10];
        v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v233 = 136315906;
        *v234 = "operator[]";
        *&v234[8] = 1024;
        if (v139)
        {
          v140 = 3;
        }

        else
        {
          v140 = 2;
        }

        *&v234[10] = 789;
        v235 = 2048;
        v236 = v10;
        v237 = 2048;
        v238 = v11;
        _os_log_send_and_compose_impl(v140, v230, &v239, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
        _os_crash_msg();
        __break(1u);
LABEL_258:
        v230[0] = 0;
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v239 = 0u;
        v141 = MEMORY[0x1E69E9C10];
        v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v233 = 136315906;
        *v234 = "operator[]";
        *&v234[8] = 1024;
        if (v142)
        {
          v143 = 3;
        }

        else
        {
          v143 = 2;
        }

        *&v234[10] = 789;
        v235 = 2048;
        v236 = v10;
        v237 = 2048;
        v238 = v8;
        _os_log_send_and_compose_impl(v143, v230, &v239, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
        _os_crash_msg();
        __break(1u);
        goto LABEL_262;
      }

      v12 = *(this + 21);
      v13 = v12 + 88 * v10;
      *(v13 + 64) = 0;
      ++*(v13 + 72);
      v10 = v231;
      if (v11 <= v231)
      {
        goto LABEL_254;
      }

      v14 = v12 + 88 * v231;
      *(v14 + 24) = 0;
      ++*(v14 + 32);
      v10 = v231;
      if (v8 <= v231)
      {
        goto LABEL_258;
      }

      v15 = *(v7 + 32) + 48 * v231;
      if (*v15 == 1)
      {
        break;
      }

      if (!*v15)
      {
        v230[0] = *(v15 + 8) >> 1;
        v230[1] = *(v15 + 24);
        v16 = re::RenderGraphCompiled::targetDescription(v5, v230);
        v11 = v231;
        v10 = *(this + 19);
        if (v10 <= v231)
        {
          goto LABEL_330;
        }

        *(*(this + 21) + 88 * v231) = *v16 < 2;
        v17 = *v16;
LABEL_13:
        if (v17 == 2)
        {
          re::DynamicArray<int>::add((v5 + 536), &v231);
        }
      }

      v9 = v231 + 1;
      v231 = v9;
      v7 = *(v5 + 37);
      v8 = *(v7 + 16);
      if (v9 >= v8)
      {
        goto LABEL_16;
      }
    }

    v8 = *(v15 + 28);
    v18 = *(v5 + 39);
    v3 = *(v18 + 16);
    if (v3 <= v8)
    {
      goto LABEL_334;
    }

    if (v11 <= v231)
    {
      goto LABEL_338;
    }

    v19 = *(v18 + 32);
    v20 = 48 * v8;
    *(v12 + 88 * v231) = *(v19 + v20) < 2u;
    v17 = *(v19 + v20);
    goto LABEL_13;
  }

LABEL_16:
  re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::resize(this + 12, *(v5 + 44));
  v11 = *(v5 + 44);
  if (!v11)
  {
    return;
  }

  v10 = 0;
  v228 = this + 8;
  v3 = 88;
  v8 = 1;
  v229 = v5;
  do
  {
    if (v11 <= v10)
    {
      goto LABEL_294;
    }

    v11 = *(this + 14);
    if (v11 <= v10)
    {
LABEL_298:
      v230[0] = 0;
      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v239 = 0u;
      v171 = MEMORY[0x1E69E9C10];
      v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v233 = 136315906;
      *v234 = "operator[]";
      *&v234[8] = 1024;
      if (v172)
      {
        v173 = 3;
      }

      else
      {
        v173 = 2;
      }

      *&v234[10] = 789;
      v235 = 2048;
      v236 = v10;
      v237 = 2048;
      v238 = v11;
      _os_log_send_and_compose_impl(v173, v230, &v239, 80, &dword_1E1C61000, v171, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
      _os_crash_msg();
      __break(1u);
LABEL_302:
      v230[0] = 0;
      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v239 = 0u;
      v174 = MEMORY[0x1E69E9C10];
      v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v233 = 136315906;
      *v234 = "operator[]";
      *&v234[8] = 1024;
      if (v175)
      {
        v176 = 3;
      }

      else
      {
        v176 = 2;
      }

      *&v234[10] = 789;
      v235 = 2048;
      v236 = v4;
      v237 = 2048;
      v238 = v2;
      _os_log_send_and_compose_impl(v176, v230, &v239, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
      _os_crash_msg();
      __break(1u);
LABEL_306:
      v230[0] = 0;
      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v239 = 0u;
      v177 = MEMORY[0x1E69E9C10];
      v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v233 = 136315906;
      *v234 = "operator[]";
      *&v234[8] = 1024;
      if (v178)
      {
        v179 = 3;
      }

      else
      {
        v179 = 2;
      }

      *&v234[10] = 789;
      v235 = 2048;
      v236 = v4;
      v237 = 2048;
      v238 = v2;
      _os_log_send_and_compose_impl(v179, v230, &v239, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
      _os_crash_msg();
      __break(1u);
LABEL_310:
      v230[0] = 0;
      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v239 = 0u;
      v180 = MEMORY[0x1E69E9C10];
      v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v233 = 136315906;
      *v234 = "operator[]";
      *&v234[8] = 1024;
      if (v181)
      {
        v182 = 3;
      }

      else
      {
        v182 = 2;
      }

      *&v234[10] = 789;
      v235 = 2048;
      v236 = v4;
      v237 = 2048;
      v238 = v2;
      _os_log_send_and_compose_impl(v182, v230, &v239, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
      _os_crash_msg();
      __break(1u);
LABEL_314:
      v230[0] = 0;
      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v239 = 0u;
      v183 = MEMORY[0x1E69E9C10];
      v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v233 = 136315906;
      *v234 = "operator[]";
      *&v234[8] = 1024;
      if (v184)
      {
        v185 = 3;
      }

      else
      {
        v185 = 2;
      }

      *&v234[10] = 789;
      v235 = 2048;
      v236 = v4;
      v237 = 2048;
      v238 = v2;
      _os_log_send_and_compose_impl(v185, v230, &v239, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
      _os_crash_msg();
      __break(1u);
LABEL_318:
      v230[0] = 0;
      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v239 = 0u;
      v186 = MEMORY[0x1E69E9C10];
      v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v233 = 136315906;
      *v234 = "operator[]";
      *&v234[8] = 1024;
      if (v187)
      {
        v188 = 3;
      }

      else
      {
        v188 = 2;
      }

      *&v234[10] = 789;
      v235 = 2048;
      v236 = v4;
      v237 = 2048;
      v238 = v2;
      _os_log_send_and_compose_impl(v188, v230, &v239, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
      _os_crash_msg();
      __break(1u);
LABEL_322:
      v230[0] = 0;
      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v239 = 0u;
      v189 = MEMORY[0x1E69E9C10];
      v190 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v233 = 136315906;
      *v234 = "operator[]";
      *&v234[8] = 1024;
      if (v190)
      {
        v191 = 3;
      }

      else
      {
        v191 = 2;
      }

      *&v234[10] = 789;
      v235 = 2048;
      v236 = v4;
      v237 = 2048;
      v238 = v2;
      _os_log_send_and_compose_impl(v191, v230, &v239, 80, &dword_1E1C61000, v189, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
      _os_crash_msg();
      __break(1u);
      goto LABEL_326;
    }

    v22 = *(v5 + 46) + 200 * v10;
    v23 = *(this + 16) + 88 * v10;
    *(v23 + 64) = 0;
    ++*(v23 + 72);
    *(v23 + 24) = 0;
    ++*(v23 + 32);
    *v23 = *(v22 + 168);
    v24 = *(v22 + 56);
    if (!v24)
    {
      goto LABEL_240;
    }

    v11 = *(v22 + 72);
    v25 = v11 + (v24 << 6);
    do
    {
      v26 = *(v11 + 4);
      v4 = *(v11 + 52);
      switch(v26)
      {
        case 0:
        case 10:
          v27 = *(v23 + 64);
          if (!v27)
          {
            goto LABEL_27;
          }

          v28 = *(v23 + 80);
          v29 = 12 * v27;
          do
          {
            if (*v28 == v4)
            {
              goto LABEL_85;
            }

            v28 += 3;
            v29 -= 12;
          }

          while (v29);
LABEL_27:
          *(&v239 + 4) = 0;
          LODWORD(v239) = v4;
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 48), &v239);
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_246;
          }

          v30 = *(this + 21);
          *(&v239 + 4) = 0;
          LODWORD(v239) = v10;
          v31 = (v30 + 88 * v4 + 8);
          goto LABEL_84;
        case 1:
          v50 = *(v23 + 24);
          if (!v50)
          {
            goto LABEL_63;
          }

          v51 = (*(v23 + 40) + 8);
          v52 = 12 * v50;
          while (*(v51 - 2) != v4)
          {
            v51 += 3;
            v52 -= 12;
            if (!v52)
            {
LABEL_63:
              LODWORD(v239) = *(v11 + 52);
              DWORD1(v239) = *v11;
              DWORD2(v239) = 1;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v239);
              v2 = *(this + 19);
              if (v2 > v4)
              {
                v36 = *(this + 21) + 88 * v4;
                LODWORD(v239) = v10;
                DWORD1(v239) = *v11;
                DWORD2(v239) = 1;
                goto LABEL_83;
              }

LABEL_282:
              v230[0] = 0;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v239 = 0u;
              v159 = MEMORY[0x1E69E9C10];
              v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v233 = 136315906;
              *v234 = "operator[]";
              *&v234[8] = 1024;
              if (v160)
              {
                v161 = 3;
              }

              else
              {
                v161 = 2;
              }

              *&v234[10] = 789;
              v235 = 2048;
              v236 = v4;
              v237 = 2048;
              v238 = v2;
              _os_log_send_and_compose_impl(v161, v230, &v239, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
              _os_crash_msg();
              __break(1u);
LABEL_286:
              v230[0] = 0;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v239 = 0u;
              v162 = MEMORY[0x1E69E9C10];
              v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v233 = 136315906;
              *v234 = "operator[]";
              *&v234[8] = 1024;
              if (v163)
              {
                v164 = 3;
              }

              else
              {
                v164 = 2;
              }

              *&v234[10] = 789;
              v235 = 2048;
              v236 = v4;
              v237 = 2048;
              v238 = v2;
              _os_log_send_and_compose_impl(v164, v230, &v239, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
              _os_crash_msg();
              __break(1u);
LABEL_290:
              v230[0] = 0;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v239 = 0u;
              v165 = MEMORY[0x1E69E9C10];
              v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v233 = 136315906;
              *v234 = "operator[]";
              *&v234[8] = 1024;
              if (v166)
              {
                v167 = 3;
              }

              else
              {
                v167 = 2;
              }

              *&v234[10] = 789;
              v235 = 2048;
              v236 = v4;
              v237 = 2048;
              v238 = v2;
              _os_log_send_and_compose_impl(v167, v230, &v239, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
              _os_crash_msg();
              __break(1u);
LABEL_294:
              v230[0] = 0;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v239 = 0u;
              v168 = MEMORY[0x1E69E9C10];
              v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v233 = 136315906;
              *v234 = "operator[]";
              *&v234[8] = 1024;
              if (v169)
              {
                v170 = 3;
              }

              else
              {
                v170 = 2;
              }

              *&v234[10] = 789;
              v235 = 2048;
              v236 = v10;
              v237 = 2048;
              v238 = v11;
              _os_log_send_and_compose_impl(v170, v230, &v239, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
              _os_crash_msg();
              __break(1u);
              goto LABEL_298;
            }
          }

          v83 = *v51;
          if (!v83)
          {
            goto LABEL_138;
          }

          v84 = *(v5 + 37);
          v8 = *(v84 + 16);
          if (v8 <= v4)
          {
            goto LABEL_346;
          }

          v85 = *&v228[8 * v83];
          re::StringID::StringID(&v233, (*(v84 + 32) + 48 * v4 + 8));
          re::DynamicString::format(&v239, "Action %u attempted to both Write and %s to resource %u (%s). Will use Write.", v86, v10, v85, v4, *&v234[4]);
          re::RenderGraphCompiled::addError(v5, &v239);
          v87 = v239;
          v8 = 1;
          if (v239)
          {
            if (BYTE8(v239))
            {
              v87 = (*(*v239 + 40))(v239, v240);
            }

            v239 = 0u;
            v240 = 0u;
          }

          if (v233)
          {
            if (v233)
            {
            }
          }

LABEL_138:
          *v51 = 1;
          v88 = *v11;
          *(v51 - 1) = *v11;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_318;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (i = *v2; v10 != i; i = v90)
          {
            v90 = *(v2 + 12);
            v2 += 12;
          }

          if (*(v2 + 8))
          {
            re::DynamicString::format(&v239, "Action %u shouldn't have in edge tag.", v21, v10);
            re::RenderGraphCompiled::addError(v5, &v239);
            if (v239 && (BYTE8(v239) & 1) != 0)
            {
              (*(*v239 + 40))(v239, v240);
            }

            v88 = *v11;
          }

          *(v2 + 4) = v88;
          *(v2 + 8) = 1;
          goto LABEL_85;
        case 2:
          v40 = *(v23 + 24);
          if (!v40)
          {
            goto LABEL_45;
          }

          v41 = (*(v23 + 40) + 8);
          v42 = 12 * v40;
          while (*(v41 - 2) != v4)
          {
            v41 += 3;
            v42 -= 12;
            if (!v42)
            {
LABEL_45:
              LODWORD(v239) = *(v11 + 52);
              *(&v239 + 4) = 0x400000000;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v239);
              v2 = *(this + 19);
              if (v2 <= v4)
              {
LABEL_278:
                v230[0] = 0;
                v242 = 0u;
                v243 = 0u;
                v240 = 0u;
                v241 = 0u;
                v239 = 0u;
                v156 = MEMORY[0x1E69E9C10];
                v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v233 = 136315906;
                *v234 = "operator[]";
                *&v234[8] = 1024;
                if (v157)
                {
                  v158 = 3;
                }

                else
                {
                  v158 = 2;
                }

                *&v234[10] = 789;
                v235 = 2048;
                v236 = v4;
                v237 = 2048;
                v238 = v2;
                _os_log_send_and_compose_impl(v158, v230, &v239, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
                _os_crash_msg();
                __break(1u);
                goto LABEL_282;
              }

LABEL_70:
              v36 = *(this + 21) + 88 * v4;
              LODWORD(v239) = v10;
              *(&v239 + 4) = 0x400000000;
              goto LABEL_83;
            }
          }

          if (*v41 <= 4 && ((1 << *v41) & 0x19) != 0)
          {
            goto LABEL_99;
          }

          v117 = *(v5 + 37);
          v8 = *(v117 + 16);
          if (v8 <= v4)
          {
            goto LABEL_354;
          }

          v118 = *&v228[8 * *v41];
          re::StringID::StringID(&v233, (*(v117 + 32) + 48 * v4 + 8));
          re::DynamicString::format(&v239, "Action %u attempted to both WriteDepth and %s to resource %u (%s). Will use WriteDepthStencil.", v119, v10, v118, v4, *&v234[4]);
          re::RenderGraphCompiled::addError(v5, &v239);
          v120 = v239;
          v8 = 1;
          if (v239)
          {
            if (BYTE8(v239))
            {
              v120 = (*(*v239 + 40))(v239, v240);
            }

            v239 = 0u;
            v240 = 0u;
          }

          if (v233)
          {
            if (v233)
            {
            }
          }

LABEL_99:
          *v41 = 4;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_302;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (j = *v2; v10 != j; j = v67)
          {
            v67 = *(v2 + 12);
            v2 += 12;
          }

          v102 = *(v2 + 8);
          v98 = v102 > 4;
          v103 = (1 << v102) & 0x19;
          if (!v98 && v103 != 0)
          {
            goto LABEL_174;
          }

          v105 = v10;
          goto LABEL_237;
        case 3:
          v53 = *(v23 + 24);
          if (!v53)
          {
            goto LABEL_69;
          }

          v54 = (*(v23 + 40) + 8);
          v55 = 12 * v53;
          while (*(v54 - 2) != v4)
          {
            v54 += 3;
            v55 -= 12;
            if (!v55)
            {
LABEL_69:
              LODWORD(v239) = *(v11 + 52);
              *(&v239 + 4) = 0x400000000;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v239);
              v2 = *(this + 19);
              if (v2 <= v4)
              {
                goto LABEL_286;
              }

              goto LABEL_70;
            }
          }

          if (*v54 <= 4 && ((1 << *v54) & 0x15) != 0)
          {
            goto LABEL_146;
          }

          v121 = *(v5 + 37);
          v8 = *(v121 + 16);
          if (v8 <= v4)
          {
            goto LABEL_358;
          }

          v122 = *&v228[8 * *v54];
          re::StringID::StringID(&v233, (*(v121 + 32) + 48 * v4 + 8));
          re::DynamicString::format(&v239, "Action %u attempted to both WriteStencil and %s to resource %u (%s). Will use WriteDepthStencil.", v123, v10, v122, v4, *&v234[4]);
          re::RenderGraphCompiled::addError(v5, &v239);
          v124 = v239;
          v8 = 1;
          if (v239)
          {
            if (BYTE8(v239))
            {
              v124 = (*(*v239 + 40))(v239, v240);
            }

            v239 = 0u;
            v240 = 0u;
          }

          if (v233)
          {
            if (v233)
            {
            }
          }

LABEL_146:
          *v54 = 4;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_314;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (k = *v2; v10 != k; k = v93)
          {
            v93 = *(v2 + 12);
            v2 += 12;
          }

          v106 = *(v2 + 8);
          v98 = v106 > 4;
          v107 = (1 << v106) & 0x15;
          if (!v98 && v107 != 0)
          {
            goto LABEL_174;
          }

          v105 = v10;
LABEL_237:
          re::DynamicString::format(&v239, "Action %u has incorrect edges.", v21, v105);
          re::RenderGraphCompiled::addError(v5, &v239);
          if (v239 && (BYTE8(v239) & 1) != 0)
          {
            (*(*v239 + 40))(v239, v240);
          }

LABEL_174:
          v109 = 4;
          goto LABEL_190;
        case 4:
        case 11:
          v32 = *(v23 + 24);
          if (!v32)
          {
            goto LABEL_33;
          }

          v33 = *(v23 + 40);
          v34 = 12 * v32;
          do
          {
            if (*v33 == v4)
            {
              goto LABEL_85;
            }

            v33 += 3;
            v34 -= 12;
          }

          while (v34);
LABEL_33:
          *(&v239 + 4) = 0;
          LODWORD(v239) = v4;
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v239);
          v2 = *(this + 19);
          if (v2 > v4)
          {
            v35 = *(this + 21);
            *(&v239 + 4) = 0;
            v36 = v35 + 88 * v4;
            LODWORD(v239) = v10;
            goto LABEL_83;
          }

          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v129 = MEMORY[0x1E69E9C10];
          v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v130)
          {
            v131 = 3;
          }

          else
          {
            v131 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v2;
          _os_log_send_and_compose_impl(v131, v230, &v239, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_246:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v132 = MEMORY[0x1E69E9C10];
          v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v133)
          {
            v134 = 3;
          }

          else
          {
            v134 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v2;
          _os_log_send_and_compose_impl(v134, v230, &v239, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
          goto LABEL_250;
        case 5:
          v59 = *(v23 + 24);
          if (!v59)
          {
            goto LABEL_81;
          }

          v60 = *(v23 + 40);
          v61 = 12 * v59;
          do
          {
            if (*v60 == v4)
            {
              goto LABEL_85;
            }

            v60 += 3;
            v61 -= 12;
          }

          while (v61);
LABEL_81:
          LODWORD(v239) = *(v11 + 52);
          *(&v239 + 4) = 0x900000000;
          re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v239);
          v2 = *(this + 19);
          if (v2 > v4)
          {
            v36 = *(this + 21) + 88 * v4;
            LODWORD(v239) = v10;
            *(&v239 + 4) = 0x900000000;
            goto LABEL_83;
          }

          goto LABEL_270;
        case 6:
          v46 = *(v23 + 24);
          if (!v46)
          {
            goto LABEL_57;
          }

          v47 = (*(v23 + 40) + 8);
          v48 = 12 * v46;
          while (*(v47 - 2) != v4)
          {
            v47 += 3;
            v48 -= 12;
            if (!v48)
            {
LABEL_57:
              LODWORD(v239) = *(v11 + 52);
              DWORD1(v239) = *v11;
              DWORD2(v239) = 5;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v239);
              v2 = *(this + 19);
              if (v2 > v4)
              {
                v49 = *(this + 21) + 88 * v4;
                LODWORD(v239) = v10;
                DWORD1(v239) = *v11;
                DWORD2(v239) = 5;
                re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v49 + 48), &v239);
                goto LABEL_197;
              }

LABEL_266:
              v230[0] = 0;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v239 = 0u;
              v147 = MEMORY[0x1E69E9C10];
              v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v233 = 136315906;
              *v234 = "operator[]";
              *&v234[8] = 1024;
              if (v148)
              {
                v149 = 3;
              }

              else
              {
                v149 = 2;
              }

              *&v234[10] = 789;
              v235 = 2048;
              v236 = v4;
              v237 = 2048;
              v238 = v2;
              _os_log_send_and_compose_impl(v149, v230, &v239, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
              _os_crash_msg();
              __break(1u);
LABEL_270:
              v230[0] = 0;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v239 = 0u;
              v150 = MEMORY[0x1E69E9C10];
              v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v233 = 136315906;
              *v234 = "operator[]";
              *&v234[8] = 1024;
              if (v151)
              {
                v152 = 3;
              }

              else
              {
                v152 = 2;
              }

              *&v234[10] = 789;
              v235 = 2048;
              v236 = v4;
              v237 = 2048;
              v238 = v2;
              _os_log_send_and_compose_impl(v152, v230, &v239, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
              _os_crash_msg();
              __break(1u);
LABEL_274:
              v230[0] = 0;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v239 = 0u;
              v153 = MEMORY[0x1E69E9C10];
              v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v233 = 136315906;
              *v234 = "operator[]";
              *&v234[8] = 1024;
              if (v154)
              {
                v155 = 3;
              }

              else
              {
                v155 = 2;
              }

              *&v234[10] = 789;
              v235 = 2048;
              v236 = v4;
              v237 = 2048;
              v238 = v2;
              _os_log_send_and_compose_impl(v155, v230, &v239, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
              _os_crash_msg();
              __break(1u);
              goto LABEL_278;
            }
          }

          v75 = *v47;
          if (!v75)
          {
            goto LABEL_125;
          }

          v76 = *(v5 + 37);
          v8 = *(v76 + 16);
          if (v8 <= v4)
          {
            goto LABEL_342;
          }

          v77 = *&v228[8 * v75];
          re::StringID::StringID(&v233, (*(v76 + 32) + 48 * v4 + 8));
          re::DynamicString::format(&v239, "Action %u attempted to both WriteResolve and %s to resource %u (%s). Will use WriteResolve.", v78, v10, v77, v4, *&v234[4]);
          re::RenderGraphCompiled::addError(v5, &v239);
          v79 = v239;
          v8 = 1;
          if (v239)
          {
            if (BYTE8(v239))
            {
              v79 = (*(*v239 + 40))(v239, v240);
            }

            v239 = 0u;
            v240 = 0u;
          }

          if (v233)
          {
            if (v233)
            {
            }
          }

LABEL_125:
          *v47 = 5;
          v80 = *v11;
          *(v47 - 1) = *v11;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_322;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (m = *v2; v10 != m; m = v82)
          {
            v82 = *(v2 + 12);
            v2 += 12;
          }

          if (*(v2 + 8))
          {
            re::DynamicString::format(&v239, "Action %u shouldn't have in edge tag.", v21, v10);
            re::RenderGraphCompiled::addError(v229, &v239);
            if (v239 && (BYTE8(v239) & 1) != 0)
            {
              (*(*v239 + 40))(v239, v240);
            }

            v80 = *v11;
          }

          *(v2 + 4) = v80;
          *(v2 + 8) = 5;
LABEL_197:
          v5 = v229;
          goto LABEL_85;
        case 7:
          v56 = *(v23 + 24);
          if (!v56)
          {
            goto LABEL_75;
          }

          v57 = (*(v23 + 40) + 8);
          v58 = 12 * v56;
          while (*(v57 - 2) != v4)
          {
            v57 += 3;
            v58 -= 12;
            if (!v58)
            {
LABEL_75:
              LODWORD(v239) = *(v11 + 52);
              *(&v239 + 4) = 0x800000000;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v239);
              v2 = *(this + 19);
              if (v2 <= v4)
              {
                goto LABEL_290;
              }

LABEL_76:
              v36 = *(this + 21) + 88 * v4;
              LODWORD(v239) = v10;
              *(&v239 + 4) = 0x800000000;
              goto LABEL_83;
            }
          }

          if (*v57 <= 8 && ((1 << *v57) & 0x181) != 0)
          {
            goto LABEL_154;
          }

          v125 = *(v5 + 37);
          v8 = *(v125 + 16);
          if (v8 <= v4)
          {
            goto LABEL_366;
          }

          v126 = *&v228[8 * *v57];
          re::StringID::StringID(&v233, (*(v125 + 32) + 48 * v4 + 8));
          re::DynamicString::format(&v239, "Action %u attempted to both WriteResolveDepth and %s to resource %u (%s). Will use WriteResolveDepthStencil.", v127, v10, v126, v4, *&v234[4]);
          re::RenderGraphCompiled::addError(v5, &v239);
          v128 = v239;
          v8 = 1;
          if (v239)
          {
            if (BYTE8(v239))
            {
              v128 = (*(*v239 + 40))(v239, v240);
            }

            v239 = 0u;
            v240 = 0u;
          }

          if (v233)
          {
            if (v233)
            {
            }
          }

LABEL_154:
          *v57 = 8;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_306;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (n = *v2; v10 != n; n = v96)
          {
            v96 = *(v2 + 12);
            v2 += 12;
          }

          v110 = *(v2 + 8);
          v98 = v110 > 8;
          v111 = (1 << v110) & 0x181;
          if (!v98 && v111 != 0)
          {
            goto LABEL_184;
          }

          v101 = v10;
          goto LABEL_181;
        case 8:
          v37 = *(v23 + 24);
          if (!v37)
          {
            goto LABEL_39;
          }

          v38 = (*(v23 + 40) + 8);
          v39 = 12 * v37;
          while (*(v38 - 2) != v4)
          {
            v38 += 3;
            v39 -= 12;
            if (!v39)
            {
LABEL_39:
              LODWORD(v239) = *(v11 + 52);
              *(&v239 + 4) = 0x800000000;
              re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v239);
              v2 = *(this + 19);
              if (v2 > v4)
              {
                goto LABEL_76;
              }

LABEL_262:
              v230[0] = 0;
              v242 = 0u;
              v243 = 0u;
              v240 = 0u;
              v241 = 0u;
              v239 = 0u;
              v144 = MEMORY[0x1E69E9C10];
              v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v233 = 136315906;
              *v234 = "operator[]";
              *&v234[8] = 1024;
              if (v145)
              {
                v146 = 3;
              }

              else
              {
                v146 = 2;
              }

              *&v234[10] = 789;
              v235 = 2048;
              v236 = v4;
              v237 = 2048;
              v238 = v2;
              _os_log_send_and_compose_impl(v146, v230, &v239, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
              _os_crash_msg();
              __break(1u);
              goto LABEL_266;
            }
          }

          if (*v38 <= 8 && ((1 << *v38) & 0x141) != 0)
          {
            goto LABEL_91;
          }

          v113 = *(v5 + 37);
          v8 = *(v113 + 16);
          if (v8 <= v4)
          {
            goto LABEL_362;
          }

          v114 = *&v228[8 * *v38];
          re::StringID::StringID(&v233, (*(v113 + 32) + 48 * v4 + 8));
          re::DynamicString::format(&v239, "Action %u attempted to both WriteResolveStencil and %s to resource %u (%s). Will use WriteResolveDepthStencil.", v115, v10, v114, v4, *&v234[4]);
          re::RenderGraphCompiled::addError(v5, &v239);
          v116 = v239;
          v8 = 1;
          if (v239)
          {
            if (BYTE8(v239))
            {
              v116 = (*(*v239 + 40))(v239, v240);
            }

            v239 = 0u;
            v240 = 0u;
          }

          if (v233)
          {
            if (v233)
            {
            }
          }

LABEL_91:
          *v38 = 8;
          v2 = *(this + 19);
          if (v2 <= v4)
          {
            goto LABEL_310;
          }

          v2 = *(*(this + 21) + 88 * v4 + 80);
          for (ii = *v2; v10 != ii; ii = v64)
          {
            v64 = *(v2 + 12);
            v2 += 12;
          }

          v97 = *(v2 + 8);
          v98 = v97 > 8;
          v99 = (1 << v97) & 0x141;
          if (v98 || v99 == 0)
          {
            v101 = v10;
LABEL_181:
            re::DynamicString::format(&v239, "Action %u has incorrect edges.", v21, v101);
            re::RenderGraphCompiled::addError(v5, &v239);
            if (v239 && (BYTE8(v239) & 1) != 0)
            {
              (*(*v239 + 40))(v239, v240);
            }
          }

LABEL_184:
          v109 = 8;
          goto LABEL_190;
        case 9:
          v43 = *(v23 + 24);
          if (!v43)
          {
            goto LABEL_51;
          }

          v44 = (*(v23 + 40) + 8);
          v45 = 12 * v43;
          break;
        case 12:
          goto LABEL_85;
        default:
          goto LABEL_370;
      }

      do
      {
        if (*(v44 - 2) == v4)
        {
          v68 = *v44;
          if (v68)
          {
            v69 = *(v5 + 37);
            v8 = *(v69 + 16);
            if (v8 <= v4)
            {
              goto LABEL_350;
            }

            v70 = *&v228[8 * v68];
            re::StringID::StringID(&v233, (*(v69 + 32) + 48 * v4 + 8));
            re::DynamicString::format(&v239, "Action %u attempted to both QueryVisibility and %s to resource %u (%s). Will use QueryVisibility.", v71, v10, v70, v4, *&v234[4]);
            re::RenderGraphCompiled::addError(v5, &v239);
            v72 = v239;
            v8 = 1;
            if (v239)
            {
              if (BYTE8(v239))
              {
                v72 = (*(*v239 + 40))(v239, v240);
              }

              v239 = 0u;
              v240 = 0u;
            }

            if (v233)
            {
              if (v233)
              {
              }
            }
          }

          *v44 = 10;
          v2 = *(this + 19);
          if (v2 > v4)
          {
            v2 = *(*(this + 21) + 88 * v4 + 80);
            for (jj = *v2; v10 != jj; jj = v74)
            {
              v74 = *(v2 + 12);
              v2 += 12;
            }

            if (*(v2 + 8))
            {
              re::DynamicString::format(&v239, "Action %u shouldn't have in edge tag.", v21, v10);
              re::RenderGraphCompiled::addError(v5, &v239);
              if (v239)
              {
                if (BYTE8(v239))
                {
                  (*(*v239 + 40))(v239, v240);
                }
              }
            }

            v109 = 10;
LABEL_190:
            *(v2 + 8) = v109;
            goto LABEL_85;
          }

LABEL_326:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v192 = MEMORY[0x1E69E9C10];
          v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v193)
          {
            v194 = 3;
          }

          else
          {
            v194 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v2;
          _os_log_send_and_compose_impl(v194, v230, &v239, 80, &dword_1E1C61000, v192, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_330:
          v232 = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v195 = MEMORY[0x1E69E9C10];
          v196 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v196)
          {
            v197 = 3;
          }

          else
          {
            v197 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v11;
          v237 = 2048;
          v238 = v10;
          _os_log_send_and_compose_impl(v197, &v232, &v239, 80, &dword_1E1C61000, v195, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_334:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v198 = MEMORY[0x1E69E9C10];
          v199 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v199)
          {
            v200 = 3;
          }

          else
          {
            v200 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v8;
          v237 = 2048;
          v238 = v3;
          _os_log_send_and_compose_impl(v200, v230, &v239, 80, &dword_1E1C61000, v198, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_338:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v201 = MEMORY[0x1E69E9C10];
          v202 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v202)
          {
            v203 = 3;
          }

          else
          {
            v203 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v10;
          v237 = 2048;
          v238 = v11;
          _os_log_send_and_compose_impl(v203, v230, &v239, 80, &dword_1E1C61000, v201, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_342:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v204 = MEMORY[0x1E69E9C10];
          v205 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v205)
          {
            v206 = 3;
          }

          else
          {
            v206 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v8;
          _os_log_send_and_compose_impl(v206, v230, &v239, 80, &dword_1E1C61000, v204, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_346:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v207 = MEMORY[0x1E69E9C10];
          v208 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v208)
          {
            v209 = 3;
          }

          else
          {
            v209 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v8;
          _os_log_send_and_compose_impl(v209, v230, &v239, 80, &dword_1E1C61000, v207, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_350:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v210 = MEMORY[0x1E69E9C10];
          v211 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v211)
          {
            v212 = 3;
          }

          else
          {
            v212 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v8;
          _os_log_send_and_compose_impl(v212, v230, &v239, 80, &dword_1E1C61000, v210, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_354:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v213 = MEMORY[0x1E69E9C10];
          v214 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v214)
          {
            v215 = 3;
          }

          else
          {
            v215 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v8;
          _os_log_send_and_compose_impl(v215, v230, &v239, 80, &dword_1E1C61000, v213, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_358:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v216 = MEMORY[0x1E69E9C10];
          v217 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v217)
          {
            v218 = 3;
          }

          else
          {
            v218 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v8;
          _os_log_send_and_compose_impl(v218, v230, &v239, 80, &dword_1E1C61000, v216, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_362:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v219 = MEMORY[0x1E69E9C10];
          v220 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v220)
          {
            v221 = 3;
          }

          else
          {
            v221 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v8;
          _os_log_send_and_compose_impl(v221, v230, &v239, 80, &dword_1E1C61000, v219, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_366:
          v230[0] = 0;
          v242 = 0u;
          v243 = 0u;
          v240 = 0u;
          v241 = 0u;
          v239 = 0u;
          v222 = MEMORY[0x1E69E9C10];
          v223 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v233 = 136315906;
          *v234 = "operator[]";
          *&v234[8] = 1024;
          if (v223)
          {
            v224 = 3;
          }

          else
          {
            v224 = 2;
          }

          *&v234[10] = 789;
          v235 = 2048;
          v236 = v4;
          v237 = 2048;
          v238 = v8;
          _os_log_send_and_compose_impl(v224, v230, &v239, 80, &dword_1E1C61000, v222, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v233, 38, v226, v227);
          _os_crash_msg();
          __break(1u);
LABEL_370:
          re::internal::assertLog(5, v21, "assertion failure: '%s' (%s:line %i) Invalid RenderGraphResourceOperationType (%d)", "!Unreachable code", "init", 279, v26);
          _os_crash("assertion failure: (!Unreachable code) Invalid RenderGraphResourceOperationType (%d)", v225);
          __break(1u);
        }

        v44 += 3;
        v45 -= 12;
      }

      while (v45);
LABEL_51:
      LODWORD(v239) = *(v11 + 52);
      *(&v239 + 4) = 0xA00000000;
      re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add((v23 + 8), &v239);
      v2 = *(this + 19);
      if (v2 <= v4)
      {
        goto LABEL_274;
      }

      v36 = *(this + 21) + 88 * v4;
      LODWORD(v239) = v10;
      *(&v239 + 4) = 0xA00000000;
LABEL_83:
      v31 = (v36 + 48);
LABEL_84:
      re::DynamicArray<re::RenderGraphResourceAllocationManager::FenceIndex>::add(v31, &v239);
LABEL_85:
      v11 += 64;
    }

    while (v11 != v25);
LABEL_240:
    ++v10;
    v11 = *(v5 + 44);
  }

  while (v10 < v11);
}

void *re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = 88 * a2 + 48;
    v9 = a2;
    do
    {
      v10 = v3[4] + v8;
      re::DynamicArray<unsigned long>::deinit(v10);
      result = re::DynamicArray<unsigned long>::deinit(v10 - 40);
      ++v9;
      v8 += 88;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 88 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *(v7 + 8) = 0;
        *(v7 + 32) = 0;
        *(v7 + 80) = 0;
        *(v7 + 40) = 0uLL;
        *(v7 + 56) = 0uLL;
        *(v7 + 72) = 0;
        v6 += 88;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::RenderGraphOptimizerProcessor::process(re::RenderGraphOptimizerProcessor *this, re::RenderGraphCompiled *a2)
{
  v9 = this;
  v216 = *MEMORY[0x1E69E9840];
  re::RenderGraphOptimizerProcessor::init(this, a2);
  v11 = *(v9 + 19);
  LOBYTE(v211) = 0;
  v200 = 0;
  v201 = 0;
  v199 = 0;
  v13 = *(v9 + 14);
  LOBYTE(v211) = 0;
  v197 = 0;
  v198 = 0;
  v196 = 0;
  v195 = 0;
  v192[1] = 0;
  v193 = 0;
  v192[0] = 0;
  v194 = 0;
  v15 = *(v9 + 14) + *(v9 + 19);
  if (v15)
  {
    v14 = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v192, v15);
  }

  v190 = a2;
  v16 = *(a2 + 69);
  if (v16)
  {
    v17 = *(a2 + 71);
    v3 = 4 * v16;
    v18 = 1;
    do
    {
      v19 = *v17;
      v2 = v200;
      if (v200 <= v19)
      {
        goto LABEL_244;
      }

      *(v201 + v19) = 1;
      LODWORD(v211) = v19;
      BYTE4(v211) = 1;
      v14 = re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(v192, &v211);
      ++v17;
      v3 -= 4;
    }

    while (v3);
  }

  v20 = v193;
  if (v193)
  {
    v19 = 88;
    v3 = 1;
    do
    {
      v21 = v195 + 8 * v20;
      v18 = *(v21 - 8);
      LOBYTE(v21) = *(v21 - 4);
      v193 = v20 - 1;
      ++v194;
      if (v21)
      {
        v4 = *(v9 + 19);
        if (v4 <= v18)
        {
          goto LABEL_304;
        }

        v22 = *(v9 + 21) + 88 * v18;
        v23 = *(v22 + 64);
        if (v23)
        {
          v18 = *(v22 + 80);
          v4 = v18 + 12 * v23;
          while (1)
          {
            v5 = *v18;
            v6 = v197;
            if (v197 <= v5)
            {
              goto LABEL_220;
            }

            if ((*(v198 + v5) & 1) == 0)
            {
              *(v198 + v5) = 1;
              LODWORD(v211) = v5;
              BYTE4(v211) = 0;
              v14 = re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(v192, &v211);
            }

            v6 = *(v9 + 14);
            if (v6 <= v5)
            {
LABEL_224:
              *buf = 0;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v211 = 0u;
              v55 = MEMORY[0x1E69E9C10];
              v125 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v203 = 136315906;
              *&v203[4] = "operator[]";
              *&v203[12] = 1024;
              if (v125)
              {
                v126 = 3;
              }

              else
              {
                v126 = 2;
              }

              *&v203[14] = 789;
              *&v203[18] = 2048;
              *&v203[20] = v5;
              *&v203[28] = 2048;
              *&v203[30] = v6;
              _os_log_send_and_compose_impl(v126, buf, &v211, 80, &dword_1E1C61000, v55, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_228:
              v191[0] = 0;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v211 = 0u;
              v9 = MEMORY[0x1E69E9C10];
              v127 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v205 = 1024;
              if (v127)
              {
                v128 = 3;
              }

              else
              {
                v128 = 2;
              }

              v206 = 468;
              v207 = 2048;
              v208 = v4;
              v209 = 2048;
              v210 = v55;
              _os_log_send_and_compose_impl(v128, v191, &v211, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_232:
              v191[0] = 0;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v211 = 0u;
              v129 = MEMORY[0x1E69E9C10];
              v130 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v205 = 1024;
              if (v130)
              {
                v131 = 3;
              }

              else
              {
                v131 = 2;
              }

              v206 = 468;
              v207 = 2048;
              v208 = v4;
              v209 = 2048;
              v210 = v2;
              _os_log_send_and_compose_impl(v131, v191, &v211, 80, &dword_1E1C61000, v129, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_236:
              *buf = 0;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v211 = 0u;
              v132 = MEMORY[0x1E69E9C10];
              v133 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v203 = 136315906;
              *&v203[4] = "operator[]";
              *&v203[12] = 1024;
              if (v133)
              {
                v134 = 3;
              }

              else
              {
                v134 = 2;
              }

              *&v203[14] = 468;
              *&v203[18] = 2048;
              *&v203[20] = v5;
              *&v203[28] = 2048;
              *&v203[30] = v3;
              _os_log_send_and_compose_impl(v134, buf, &v211, 80, &dword_1E1C61000, v132, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_240:
              v191[0] = 0;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v211 = 0u;
              v135 = MEMORY[0x1E69E9C10];
              v136 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v205 = 1024;
              if (v136)
              {
                v137 = 3;
              }

              else
              {
                v137 = 2;
              }

              v206 = 789;
              v207 = 2048;
              v208 = v4;
              v209 = 2048;
              v210 = v3;
              _os_log_send_and_compose_impl(v137, v191, &v211, 80, &dword_1E1C61000, v135, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_244:
              *buf = 0;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v211 = 0u;
              v138 = MEMORY[0x1E69E9C10];
              v139 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v203 = 136315906;
              *&v203[4] = "operator[]";
              *&v203[12] = 1024;
              if (v139)
              {
                v140 = 3;
              }

              else
              {
                v140 = 2;
              }

              *&v203[14] = 468;
              *&v203[18] = 2048;
              *&v203[20] = v19;
              *&v203[28] = 2048;
              *&v203[30] = v2;
              _os_log_send_and_compose_impl(v140, buf, &v211, 80, &dword_1E1C61000, v138, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_248:
              v191[0] = 0;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v211 = 0u;
              v141 = MEMORY[0x1E69E9C10];
              v142 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v205 = 1024;
              if (v142)
              {
                v143 = 3;
              }

              else
              {
                v143 = 2;
              }

              v206 = 789;
              v207 = 2048;
              v208 = v4;
              v209 = 2048;
              v210 = v2;
              _os_log_send_and_compose_impl(v143, v191, &v211, 80, &dword_1E1C61000, v141, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
              _os_crash_msg();
              __break(1u);
LABEL_252:
              v202 = 0;
              v214 = 0u;
              v215 = 0u;
              v212 = 0u;
              v213 = 0u;
              v211 = 0u;
              v144 = MEMORY[0x1E69E9C10];
              v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              v205 = 1024;
              if (v145)
              {
                v146 = 3;
              }

              else
              {
                v146 = 2;
              }

              v206 = 789;
              v207 = 2048;
              v208 = v4;
              v209 = 2048;
              v210 = v2;
              _os_log_send_and_compose_impl(v146, &v202, &v211, 80, &dword_1E1C61000, v144, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
              _os_crash_msg();
              __break(1u);
              goto LABEL_256;
            }

            v24 = *(v9 + 16) + 88 * v5;
            v25 = *(v24 + 24);
            if (v25)
            {
              break;
            }

LABEL_51:
            v18 += 12;
            if (v18 == v4)
            {
              goto LABEL_60;
            }
          }

          v5 = *(v24 + 40) + 8;
          v6 = 12 * v25;
          while (2)
          {
            v26 = *(v18 + 8);
            v27 = *v5;
            if (v26 > 6)
            {
              if (v26 == 7)
              {
                if (v27 != 3)
                {
                  goto LABEL_50;
                }

                goto LABEL_47;
              }

              v30 = v26 == 8 || v26 == 10;
              if (v30 && (v27 - 2) < 3)
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (v26 != 1 && v26 != 5)
              {
                if (v26 != 6 || v27 != 2)
                {
                  goto LABEL_50;
                }

LABEL_47:
                v7 = *(v5 - 8);
                v2 = v200;
                if (v200 <= v7)
                {
                  *buf = 0;
                  v214 = 0u;
                  v215 = 0u;
                  v212 = 0u;
                  v213 = 0u;
                  v211 = 0u;
                  v79 = MEMORY[0x1E69E9C10];
                  v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v203 = 136315906;
                  *&v203[4] = "operator[]";
                  *&v203[12] = 1024;
                  if (v80)
                  {
                    v81 = 3;
                  }

                  else
                  {
                    v81 = 2;
                  }

                  *&v203[14] = 468;
                  *&v203[18] = 2048;
                  *&v203[20] = v7;
                  *&v203[28] = 2048;
                  *&v203[30] = v2;
                  _os_log_send_and_compose_impl(v81, buf, &v211, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
                  _os_crash_msg();
                  __break(1u);
LABEL_149:
                  v2 = 0;
                  goto LABEL_150;
                }

                if ((*(v201 + v7) & 1) == 0)
                {
                  *(v201 + v7) = 1;
                  LODWORD(v211) = v7;
                  BYTE4(v211) = 1;
                  v14 = re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(v192, &v211);
                }

                goto LABEL_50;
              }

              if ((v27 - 2) < 3)
              {
                goto LABEL_47;
              }

              if (v27 == 1 && *(v18 + 4) == *(v5 - 4))
              {
                goto LABEL_47;
              }
            }

LABEL_50:
            v5 += 12;
            v6 -= 12;
            if (!v6)
            {
              goto LABEL_51;
            }

            continue;
          }
        }
      }

      else
      {
        v2 = *(v9 + 14);
        if (v2 <= v18)
        {
          goto LABEL_308;
        }

        v32 = *(v9 + 16) + 88 * v18;
        v33 = *(v32 + 64);
        if (v33)
        {
          v34 = *(v32 + 80);
          v4 = 12 * v33;
          do
          {
            v18 = *v34;
            v2 = v200;
            if (v200 <= v18)
            {
              goto LABEL_216;
            }

            if ((*(v201 + v18) & 1) == 0)
            {
              *(v201 + v18) = 1;
              LODWORD(v211) = v18;
              BYTE4(v211) = 1;
              v14 = re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(v192, &v211);
            }

            v34 += 3;
            v4 -= 12;
          }

          while (v4);
        }
      }

LABEL_60:
      v20 = v193;
    }

    while (v193);
  }

  LODWORD(v191[0]) = 0;
  v19 = *(v9 + 14);
  if (v19)
  {
    v2 = 0;
    v18 = 88;
    v4 = 1;
    do
    {
      v3 = v2;
      if (v19 <= v2)
      {
        goto LABEL_264;
      }

      v35 = *(v9 + 16) + 88 * v2;
      v5 = v197;
      if (*v35 == 1)
      {
        if (v197 <= v2)
        {
          goto LABEL_296;
        }

        *(v198 + v2) = 1;
        v36 = *(v35 + 24);
        if (v36)
        {
          v37 = *(v35 + 40);
          v6 = v200;
          v38 = v201;
          v39 = 12 * v36;
          while (1)
          {
            v7 = *v37;
            if (v6 <= v7)
            {
              break;
            }

            *(v38 + v7) = 1;
            v37 += 3;
            v39 -= 12;
            if (!v39)
            {
              goto LABEL_70;
            }
          }

LABEL_208:
          *buf = 0;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          v113 = MEMORY[0x1E69E9C10];
          v114 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v203 = 136315906;
          *&v203[4] = "operator[]";
          *&v203[12] = 1024;
          if (v114)
          {
            v115 = 3;
          }

          else
          {
            v115 = 2;
          }

          *&v203[14] = 468;
          *&v203[18] = 2048;
          *&v203[20] = v7;
          *&v203[28] = 2048;
          *&v203[30] = v6;
          _os_log_send_and_compose_impl(v115, buf, &v211, 80, &dword_1E1C61000, v113, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
          _os_crash_msg();
          __break(1u);
LABEL_212:
          *buf = 0;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          v116 = MEMORY[0x1E69E9C10];
          v117 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v203 = 136315906;
          *&v203[4] = "operator[]";
          *&v203[12] = 1024;
          if (v117)
          {
            v118 = 3;
          }

          else
          {
            v118 = 2;
          }

          *&v203[14] = 468;
          *&v203[18] = 2048;
          *&v203[20] = v7;
          *&v203[28] = 2048;
          *&v203[30] = v6;
          _os_log_send_and_compose_impl(v118, buf, &v211, 80, &dword_1E1C61000, v116, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
          _os_crash_msg();
          __break(1u);
LABEL_216:
          *buf = 0;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          v119 = MEMORY[0x1E69E9C10];
          v120 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v203 = 136315906;
          *&v203[4] = "operator[]";
          *&v203[12] = 1024;
          if (v120)
          {
            v121 = 3;
          }

          else
          {
            v121 = 2;
          }

          *&v203[14] = 468;
          *&v203[18] = 2048;
          *&v203[20] = v18;
          *&v203[28] = 2048;
          *&v203[30] = v2;
          _os_log_send_and_compose_impl(v121, buf, &v211, 80, &dword_1E1C61000, v119, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
          _os_crash_msg();
          __break(1u);
LABEL_220:
          *buf = 0;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          v122 = MEMORY[0x1E69E9C10];
          v123 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v203 = 136315906;
          *&v203[4] = "operator[]";
          *&v203[12] = 1024;
          if (v123)
          {
            v124 = 3;
          }

          else
          {
            v124 = 2;
          }

          *&v203[14] = 468;
          *&v203[18] = 2048;
          *&v203[20] = v5;
          *&v203[28] = 2048;
          *&v203[30] = v6;
          _os_log_send_and_compose_impl(v124, buf, &v211, 80, &dword_1E1C61000, v122, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
          _os_crash_msg();
          __break(1u);
          goto LABEL_224;
        }

LABEL_70:
        v40 = *(v35 + 64);
        if (v40)
        {
          v41 = *(v35 + 80);
          v6 = v200;
          v42 = v201;
          v43 = 12 * v40;
          do
          {
            v7 = *v41;
            if (v6 <= v7)
            {
              goto LABEL_212;
            }

            *(v42 + v7) = 1;
            v41 += 3;
            v43 -= 12;
          }

          while (v43);
        }
      }

      if (v5 <= v2)
      {
        goto LABEL_268;
      }

      if (*(v198 + v2) == 1)
      {
        v14 = re::DynamicArray<int>::add((v190 + 47), v191);
        v2 = LODWORD(v191[0]);
        v19 = *(v9 + 14);
        if (v19 <= LODWORD(v191[0]))
        {
          goto LABEL_300;
        }

        v44 = *(v9 + 16) + 88 * LODWORD(v191[0]);
        v45 = *(v44 + 24);
        if (v45)
        {
          v46 = *(v44 + 40);
          v3 = v200;
          v47 = v201;
          v48 = 12 * v45;
          v49 = (v46 + 8);
          do
          {
            if (*v49 == 9)
            {
              v5 = *(v49 - 2);
              if (v3 <= v5)
              {
                goto LABEL_236;
              }

              *(v47 + v5) = 1;
            }

            v49 += 3;
            v48 -= 12;
          }

          while (v48);
        }
      }

      v2 = (v2 + 1);
      LODWORD(v191[0]) = v2;
    }

    while (v2 < v19);
  }

  LODWORD(v191[0]) = 0;
  v2 = *(v9 + 19);
  if (v2)
  {
    v50 = 0;
    v18 = 88;
    v4 = 1;
    while (1)
    {
      v19 = v50;
      if (v2 <= v50)
      {
        break;
      }

      v3 = v200;
      if ((*(*(v9 + 21) + 88 * v50) & 1) == 0)
      {
        if (v200 <= v50)
        {
          goto LABEL_288;
        }

        *(v201 + v50) = 1;
      }

      if (v3 <= v50)
      {
        goto LABEL_260;
      }

      if (*(v201 + v50) == 1)
      {
        v14 = re::DynamicArray<int>::add((v190 + 52), v191);
        v50 = v191[0];
        v2 = *(v9 + 19);
      }

      LODWORD(v191[0]) = ++v50;
      if (v50 >= v2)
      {
        goto LABEL_94;
      }
    }

LABEL_256:
    *buf = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v147 = MEMORY[0x1E69E9C10];
    v148 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v148)
    {
      v149 = 3;
    }

    else
    {
      v149 = 2;
    }

    *&v203[14] = 789;
    *&v203[18] = 2048;
    *&v203[20] = v19;
    *&v203[28] = 2048;
    *&v203[30] = v2;
    _os_log_send_and_compose_impl(v149, buf, &v211, 80, &dword_1E1C61000, v147, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_260:
    *buf = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v150 = MEMORY[0x1E69E9C10];
    v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v151)
    {
      v152 = 3;
    }

    else
    {
      v152 = 2;
    }

    *&v203[14] = 468;
    *&v203[18] = 2048;
    *&v203[20] = v19;
    *&v203[28] = 2048;
    *&v203[30] = v3;
    _os_log_send_and_compose_impl(v152, buf, &v211, 80, &dword_1E1C61000, v150, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_264:
    *buf = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v153 = MEMORY[0x1E69E9C10];
    v154 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v154)
    {
      v155 = 3;
    }

    else
    {
      v155 = 2;
    }

    *&v203[14] = 789;
    *&v203[18] = 2048;
    *&v203[20] = v3;
    *&v203[28] = 2048;
    *&v203[30] = v19;
    _os_log_send_and_compose_impl(v155, buf, &v211, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_268:
    *buf = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v156 = MEMORY[0x1E69E9C10];
    v157 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v157)
    {
      v158 = 3;
    }

    else
    {
      v158 = 2;
    }

    *&v203[14] = 468;
    *&v203[18] = 2048;
    *&v203[20] = v3;
    *&v203[28] = 2048;
    *&v203[30] = v5;
    _os_log_send_and_compose_impl(v158, buf, &v211, 80, &dword_1E1C61000, v156, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_272:
    v191[0] = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v159 = MEMORY[0x1E69E9C10];
    v160 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v205 = 1024;
    if (v160)
    {
      v161 = 3;
    }

    else
    {
      v161 = 2;
    }

    v206 = 789;
    v207 = 2048;
    v208 = v4;
    v209 = 2048;
    v210 = v9;
    _os_log_send_and_compose_impl(v161, v191, &v211, 80, &dword_1E1C61000, v159, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_276:
    v191[0] = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v162 = MEMORY[0x1E69E9C10];
    v163 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v205 = 1024;
    if (v163)
    {
      v164 = 3;
    }

    else
    {
      v164 = 2;
    }

    v206 = 789;
    v207 = 2048;
    v208 = v4;
    v209 = 2048;
    v210 = v5;
    _os_log_send_and_compose_impl(v164, v191, &v211, 80, &dword_1E1C61000, v162, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_280:
    v191[0] = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v165 = MEMORY[0x1E69E9C10];
    v166 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v205 = 1024;
    if (v166)
    {
      v167 = 3;
    }

    else
    {
      v167 = 2;
    }

    v206 = 789;
    v207 = 2048;
    v208 = v6;
    v209 = 2048;
    v210 = v4;
    _os_log_send_and_compose_impl(v167, v191, &v211, 80, &dword_1E1C61000, v165, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_284:
    v191[0] = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v168 = MEMORY[0x1E69E9C10];
    v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v205 = 1024;
    if (v169)
    {
      v170 = 3;
    }

    else
    {
      v170 = 2;
    }

    v206 = 789;
    v207 = 2048;
    v208 = v19;
    v209 = 2048;
    v210 = v2;
    _os_log_send_and_compose_impl(v170, v191, &v211, 80, &dword_1E1C61000, v168, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_288:
    *buf = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v171 = MEMORY[0x1E69E9C10];
    v172 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v172)
    {
      v173 = 3;
    }

    else
    {
      v173 = 2;
    }

    *&v203[14] = 468;
    *&v203[18] = 2048;
    *&v203[20] = v19;
    *&v203[28] = 2048;
    *&v203[30] = v3;
    _os_log_send_and_compose_impl(v173, buf, &v211, 80, &dword_1E1C61000, v171, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_292:
    v191[0] = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v174 = MEMORY[0x1E69E9C10];
    v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    v205 = 1024;
    if (v175)
    {
      v176 = 3;
    }

    else
    {
      v176 = 2;
    }

    v206 = 789;
    v207 = 2048;
    v208 = v19;
    v209 = 2048;
    v210 = v2;
    _os_log_send_and_compose_impl(v176, v191, &v211, 80, &dword_1E1C61000, v174, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_296:
    *buf = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v177 = MEMORY[0x1E69E9C10];
    v178 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v178)
    {
      v179 = 3;
    }

    else
    {
      v179 = 2;
    }

    *&v203[14] = 468;
    *&v203[18] = 2048;
    *&v203[20] = v3;
    *&v203[28] = 2048;
    *&v203[30] = v5;
    _os_log_send_and_compose_impl(v179, buf, &v211, 80, &dword_1E1C61000, v177, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_300:
    *buf = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v180 = MEMORY[0x1E69E9C10];
    v181 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v181)
    {
      v182 = 3;
    }

    else
    {
      v182 = 2;
    }

    *&v203[14] = 789;
    *&v203[18] = 2048;
    *&v203[20] = v2;
    *&v203[28] = 2048;
    *&v203[30] = v19;
    _os_log_send_and_compose_impl(v182, buf, &v211, 80, &dword_1E1C61000, v180, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_304:
    *buf = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v183 = MEMORY[0x1E69E9C10];
    v184 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v184)
    {
      v185 = 3;
    }

    else
    {
      v185 = 2;
    }

    *&v203[14] = 789;
    *&v203[18] = 2048;
    *&v203[20] = v18;
    *&v203[28] = 2048;
    *&v203[30] = v4;
    _os_log_send_and_compose_impl(v185, buf, &v211, 80, &dword_1E1C61000, v183, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
LABEL_308:
    *buf = 0;
    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v211 = 0u;
    v186 = MEMORY[0x1E69E9C10];
    v187 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v203 = 136315906;
    *&v203[4] = "operator[]";
    *&v203[12] = 1024;
    if (v187)
    {
      v188 = 3;
    }

    else
    {
      v188 = 2;
    }

    *&v203[14] = 789;
    *&v203[18] = 2048;
    *&v203[20] = v18;
    *&v203[28] = 2048;
    *&v203[30] = v2;
    _os_log_send_and_compose_impl(v188, buf, &v211, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v203, 38, v189, *(&v189 + 1));
    _os_crash_msg();
    __break(1u);
  }

LABEL_94:
  memset(v203, 0, 36);
  *&v203[36] = 0x7FFFFFFFLL;
  v18 = v190;
  v4 = v190[49];
  if (v4)
  {
    v6 = 0;
    v7 = 88;
    v5 = 0x7FFFFFFFLL;
    *&v51 = 136315138;
    v189 = v51;
    while (1)
    {
      if (v4 <= v6)
      {
        goto LABEL_280;
      }

      v19 = *(*(v18 + 408) + 4 * v6);
      v2 = *(v9 + 14);
      if (v2 <= v19)
      {
        goto LABEL_284;
      }

      v52 = *(v9 + 16) + 88 * v19;
      v53 = *(v52 + 24);
      if (!v53)
      {
        goto LABEL_112;
      }

      v3 = *(v52 + 40);
      v18 = 0x100000001 * v6;
      v2 = 12 * v53;
      do
      {
        v4 = *v3;
        v54 = *(v9 + 19);
        if (v54 <= v4)
        {
          v191[0] = 0;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          v104 = MEMORY[0x1E69E9C10];
          v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          v205 = 1024;
          if (v105)
          {
            v106 = 3;
          }

          else
          {
            v106 = 2;
          }

          v206 = 789;
          v207 = 2048;
          v208 = v4;
          v209 = 2048;
          v210 = v54;
          _os_log_send_and_compose_impl(v106, v191, &v211, 80, &dword_1E1C61000, v104, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
          _os_crash_msg();
          __break(1u);
LABEL_200:
          v191[0] = 0;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          v107 = MEMORY[0x1E69E9C10];
          v108 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          v205 = 1024;
          if (v108)
          {
            v109 = 3;
          }

          else
          {
            v109 = 2;
          }

          v206 = 789;
          v207 = 2048;
          v208 = v4;
          v209 = 2048;
          v210 = v2;
          _os_log_send_and_compose_impl(v109, v191, &v211, 80, &dword_1E1C61000, v107, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
          _os_crash_msg();
          __break(1u);
LABEL_204:
          v191[0] = 0;
          v214 = 0u;
          v215 = 0u;
          v212 = 0u;
          v213 = 0u;
          v211 = 0u;
          v110 = MEMORY[0x1E69E9C10];
          v111 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          v205 = 1024;
          if (v111)
          {
            v112 = 3;
          }

          else
          {
            v112 = 2;
          }

          v206 = 468;
          v207 = 2048;
          v208 = v4;
          v209 = 2048;
          v210 = v18;
          _os_log_send_and_compose_impl(v112, v191, &v211, 80, &dword_1E1C61000, v110, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v189, *(&v189 + 1));
          _os_crash_msg();
          __break(1u);
          goto LABEL_208;
        }

        if (*(*(v9 + 21) + 88 * v4) == 1)
        {
          v55 = v200;
          if (v200 <= v4)
          {
            goto LABEL_228;
          }

          if (*(v201 + v4) == 1)
          {
            re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v211, v203, *v3);
            if (HIDWORD(v211) == 0x7FFFFFFF)
            {
              v211 = 0uLL;
              *&v212 = 0;
              re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v211, v203, v4);
              if (HIDWORD(v211) == 0x7FFFFFFF)
              {
                v56 = re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v203, DWORD2(v211), v211);
                *(v56 + 4) = v4;
                *(v56 + 8) = v18;
                ++*&v203[40];
              }
            }

            else
            {
              re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v211, v203, v4);
              v57 = *&v203[16] + 24 * HIDWORD(v211);
              v58 = *(v57 + 12);
              if (v58 <= v6)
              {
                v58 = v6;
              }

              *(v57 + 12) = v58;
            }
          }
        }

        v3 += 12;
        v2 -= 12;
      }

      while (v2);
      v2 = *(v9 + 14);
      v18 = v190;
LABEL_112:
      if (v2 <= v19)
      {
        goto LABEL_292;
      }

      v59 = *(v9 + 16) + 88 * v19;
      v60 = *(v59 + 64);
      if (v60)
      {
        break;
      }

LABEL_139:
      ++v6;
      v4 = *(v18 + 392);
      if (v6 >= v4)
      {
        goto LABEL_140;
      }
    }

    v19 = *(v59 + 80);
    v3 = v19 + 12 * v60;
    while (1)
    {
      v4 = *v19;
      v2 = *(v9 + 19);
      if (v2 <= v4)
      {
        goto LABEL_200;
      }

      v61 = (*(v9 + 21) + 88 * v4);
      if (*v61 == 1)
      {
        v2 = v200;
        if (v200 <= v4)
        {
          goto LABEL_232;
        }

        if (*(v201 + v4) == 1)
        {
          break;
        }
      }

LABEL_138:
      v19 += 12;
      if (v19 == v3)
      {
        goto LABEL_139;
      }
    }

    re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v211, v203, *v19);
    if (HIDWORD(v211) != 0x7FFFFFFF)
    {
      re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(&v211, v203, v4);
      v73 = *&v203[16] + 24 * HIDWORD(v211);
      v74 = *(v73 + 12);
      if (v74 <= v6)
      {
        v74 = v6;
      }

      *(v73 + 12) = v74;
      goto LABEL_138;
    }

    *v61 = 0;
    v62 = *(v18 + 296);
    v2 = *(v62 + 16);
    if (v2 <= v4)
    {
      goto LABEL_248;
    }

    v63 = *(v62 + 32) + 48 * v4;
    v191[0] = *(v63 + 8) >> 1;
    v191[1] = *(v63 + 24);
    v64 = re::RenderGraphCompiled::targetDescription(v18, v191);
    *v64 = 2;
    *(v64 + 96) = 0x44A03688CB9957C5;
    v65 = *(v18 + 296);
    v2 = *(v65 + 16);
    if (v2 <= v4)
    {
      goto LABEL_252;
    }

    v66 = re::StringID::StringID(&v211, (*(v65 + 32) + 48 * v4 + 8));
    *buf = v211 >> 1;
    v67 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::contains(&unk_1EE1B98C8, buf);
    if (v67)
    {
LABEL_135:
      if (v211)
      {
        if (v211)
        {
        }
      }

      goto LABEL_138;
    }

    *buf = v211 >> 1;
    v69 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v211 >> 31) ^ (v211 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v211 >> 31) ^ (v211 >> 1))) >> 27));
    v70 = v69 ^ (v69 >> 31);
    if (DWORD2(xmmword_1EE1B98D8))
    {
      v71 = v70 % DWORD2(xmmword_1EE1B98D8);
      v72 = *(qword_1EE1B98D0 + 4 * v71);
      if (v72 != 0x7FFFFFFF)
      {
        while (*(xmmword_1EE1B98D8 + 16 * v72 + 8) != v211 >> 1)
        {
          v72 = *(xmmword_1EE1B98D8 + 16 * v72) & 0x7FFFFFFF;
          if (v72 == 0x7FFFFFFF)
          {
            goto LABEL_132;
          }
        }

        goto LABEL_133;
      }
    }

    else
    {
      LODWORD(v71) = 0;
    }

LABEL_132:
    v68 = re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::addAsMove(&unk_1EE1B98C8, v71, v70, buf, buf);
    ++dword_1EE1B98F0;
LABEL_133:
    v75 = *re::graphicsLogObjects(v68);
    v67 = os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT);
    if (v67)
    {
      *buf = v189;
      *&buf[4] = *(&v211 + 1);
      _os_log_impl(&dword_1E1C61000, v75, OS_LOG_TYPE_DEFAULT, "RenderGraph: Transient resource %s is read from before it is written to. Replacing it with NullTexture.", buf, 0xCu);
    }

    goto LABEL_135;
  }

LABEL_140:
  re::DynamicArray<re::DynamicArray<float>>::resize((v18 + 456), v4);
  re::DynamicArray<re::DynamicArray<float>>::resize((v18 + 496), *(v18 + 392));
  v19 = *&v203[32];
  if (!*&v203[32])
  {
    goto LABEL_149;
  }

  v2 = 0;
  v77 = *&v203[16];
  while (1)
  {
    v78 = *v77;
    v77 += 6;
    if (v78 < 0)
    {
      break;
    }

    if (*&v203[32] == ++v2)
    {
      v2 = *&v203[32];
      break;
    }
  }

LABEL_150:
  if (v2 != v19)
  {
    v82 = *&v203[16];
    v3 = 24;
    v18 = 40;
    v6 = v190;
    do
    {
      v83 = v82 + 24 * v2;
      v85 = *(v83 + 8);
      v84 = v83 + 8;
      v4 = v85;
      v9 = v190[59];
      if (v9 <= v85)
      {
        goto LABEL_272;
      }

      re::DynamicArray<int>::add((v190[61] + 40 * v4), (v84 - 4));
      v4 = *(v84 + 4);
      v5 = v190[64];
      if (v5 <= v4)
      {
        goto LABEL_276;
      }

      re::DynamicArray<int>::add((v190[66] + 40 * v4), (v84 - 4));
      if (*&v203[32] <= (v2 + 1))
      {
        v86 = (v2 + 1);
      }

      else
      {
        v86 = *&v203[32];
      }

      v82 = *&v203[16];
      while (v86 - 1 != v2)
      {
        v2 = (v2 + 1);
        if ((*(*&v203[16] + 24 * v2) & 0x80000000) != 0)
        {
          goto LABEL_162;
        }
      }

      v2 = v86;
LABEL_162:
      ;
    }

    while (v2 != v19);
  }

  re::RenderGraphProcessor::updateTextureLifetimes(v190, v76);
  v87 = v190[44];
  if (v87)
  {
    v9 = v190[46];
    v19 = v9 + 200 * v87;
    v88 = xmmword_1E30474D0;
    v2 = 2;
    while (1)
    {
      v3 = *(v9 + 7);
      if (!v3)
      {
        goto LABEL_185;
      }

      v89 = 0;
      v90 = 0;
      v91 = 0;
      v18 = v200;
      v92 = v201;
      do
      {
        v93 = *(v9 + 9);
        v94 = (v93 + v89);
        v4 = *(v93 + v89 + 52);
        if (v18 <= v4)
        {
          goto LABEL_204;
        }

        if (*(v92 + v4) == 1)
        {
          if (v90 > v91)
          {
            v4 = v91;
            if (v3 <= v91)
            {
              goto LABEL_240;
            }

            v95 = v93 + (v91 << 6);
            v96 = *v94;
            v97 = v94[1];
            v98 = v94[2];
            *(v95 + 48) = *(v94 + 6);
            *(v95 + 16) = v97;
            *(v95 + 32) = v98;
            *v95 = v96;
            v3 = *(v9 + 7);
          }

          ++v91;
        }

        ++v90;
        v89 += 64;
      }

      while (v3 > v90);
      if (v3 <= v91)
      {
        goto LABEL_185;
      }

      v99 = v91;
      if (v3 < v91)
      {
        break;
      }

      if (v3 > v91)
      {
        goto LABEL_184;
      }

LABEL_185:
      v9 = (v9 + 200);
      if (v9 == v19)
      {
        goto LABEL_186;
      }
    }

    if (*(v9 + 6) < v91)
    {
      re::DynamicArray<re::RigTransform>::setCapacity(v9 + 5, v91);
      v88 = xmmword_1E30474D0;
      v3 = *(v9 + 7);
    }

    v100 = v99 - v3;
    if (v99 > v3 && v100 >= 1)
    {
      v101 = *(v9 + 9) + (v3 << 6);
      v102 = v100 + 1;
      do
      {
        *v101 = 0;
        *(v101 + 16) = v88;
        *(v101 + 32) = 0;
        *(v101 + 36) = 0;
        *(v101 + 44) = 2;
        *(v101 + 48) = 0;
        *(v101 + 52) = 0;
        v101 += 64;
        --v102;
      }

      while (v102 > 1);
    }

LABEL_184:
    *(v9 + 7) = v99;
    ++*(v9 + 16);
    goto LABEL_185;
  }

LABEL_186:
  re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(v203);
  if (v192[0] && v195)
  {
    (*(*v192[0] + 40))();
  }

  if (v196 && v197)
  {
    (*(*v196 + 40))();
  }

  result = v199;
  if (v199)
  {
    if (v200)
    {
      return (*(*v199 + 40))();
    }
  }

  return result;
}