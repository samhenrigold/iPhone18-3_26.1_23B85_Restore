_anonymous_namespace_ *re::DynamicArray<re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::TraversalNode>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*result)
    {
      v8 = 2 * v4;
      v9 = v4 == 0;
      v10 = 8;
      if (!v9)
      {
        v10 = v8;
      }

      if (v10 <= v6)
      {
        v11 = v6;
      }

      else
      {
        v11 = v10;
      }

      result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(result, v11);
    }

    else
    {
      result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v3, v6);
      ++*(v3 + 6);
    }
  }

  *(*(v3 + 4) + 8 * (*(v3 + 2))++) = *a2;
  ++*(v3 + 6);
  return result;
}

void re::anonymous namespace::transientResourcesWithInvalidLifespan(re::_anonymous_namespace_ *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_446, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_446))
  {
    byte_1EE1B98C0 = 0;
    qword_1EE1B98B0 = &unk_1F5CCF7F8;
    unk_1EE1B98B8 = "RenderGraphOptimizerProcessor allocator";
    __cxa_guard_release(&_MergedGlobals_446);
  }

  if ((atomic_load_explicit(&qword_1EE1B98A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B98A8))
  {
    dword_1EE1B98E8 = 0;
    xmmword_1EE1B98D8 = 0u;
    unk_1EE1B98C8 = 0u;
    *algn_1EE1B98EC = 0x7FFFFFFFLL;
    re::HashSetBase<re::WeakStringID,re::WeakStringID,re::internal::ValueAsKey<re::WeakStringID>,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(&unk_1EE1B98C8, &qword_1EE1B98B0, 3);

    __cxa_guard_release(&qword_1EE1B98A8);
  }
}

uint64_t *re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(uint64_t *a1)
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

        v4 += 6;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

void re::RenderGraphOptimizerProcessor::~RenderGraphOptimizerProcessor(re::RenderGraphOptimizerProcessor *this)
{
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 136);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 96);
}

{
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 136);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 96);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::RenderGraphOptimizerProcessor::Vertex>::setCapacity(v5, a2);
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
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v21, v23);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v22, v24);
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
        v10 = v8 + 88 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[5] = 0;
          *(v11 + 8) = 0;
          v11[2] = 0;
          v11[3] = 0;
          v11[1] = 0;
          v12 = v8 + 8;
          v13 = *(v8 + 16);
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v11[2] = v13;
          *(v8 + 16) = 0;
          v14 = v11[3];
          v11[3] = *(v8 + 24);
          *(v8 + 24) = v14;
          v15 = v11[5];
          v11[5] = *(v8 + 40);
          *(v8 + 40) = v15;
          ++*(v8 + 32);
          ++*(v11 + 8);
          v11[10] = 0;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = 0;
          *(v11 + 18) = 0;
          v16 = *(v8 + 48);
          v17 = *(v8 + 56);
          v18 = v8 + 48;
          v11[6] = v16;
          v11[7] = v17;
          *v18 = 0;
          *(v18 + 8) = 0;
          v19 = v11[8];
          v11[8] = *(v18 + 16);
          *(v18 + 16) = v19;
          v20 = v11[10];
          v11[10] = *(v18 + 32);
          *(v18 + 32) = v20;
          ++*(v18 + 24);
          ++*(v11 + 18);
          re::DynamicArray<unsigned long>::deinit(v18);
          re::DynamicArray<unsigned long>::deinit(v12);
          v11 += 11;
          v8 = v18 + 40;
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

uint64_t re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(uint64_t result, uint64_t a2, unsigned int a3)
{
  v3 = 0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30));
  v4 = (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31);
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
  if (*(v8 + 24 * v7 + 4) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    v7 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + 24 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 24 * v6 + 4) != a3)
  {
    LODWORD(v9) = *(v8 + 24 * v7) & 0x7FFFFFFF;
    while (1)
    {
      v7 = v9;
      v9 = *(v8 + 24 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 24 * v9 + 4) == a3)
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

uint64_t re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v25, v9, v8);
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
            v17 = (v13 + 8);
            do
            {
              if ((*(v17 - 1) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24), v17[1]);
                *(v18 + 4) = *(v17 - 1);
                *(v18 + 8) = *v17;
              }

              v17 += 3;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(v25);
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
    v20 = *(v19 + 24 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 24 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 24 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 16) = a3;
  ++*(a1 + 28);
  return v19 + 24 * v5;
}

re::BlendShapeModelBuilder *re::BlendShapeModelBuilder::BlendShapeModelBuilder(re::BlendShapeModelBuilder *this, re::Allocator *a2, id *a3, unint64_t a4, unint64_t a5, DeformationModelData *a6)
{
  v11 = *a3;
  *this = v11;
  *(this + 1) = a6;
  if (v11)
  {
  }

  else
  {
    v12 = re::DeformationModelData::create<re::BlendShapeDeformer,re::BlendShapeModelPayload>(a6, a2);
    re::FixedArray<re::BlendShapeModelPayload::BlendShapeBufferPayload>::init<>(v12 + 8, a2, a5);
  }

  re::StringID::invalid(&v15);
  v13 = re::FixedArray<re::StringID>::init<re::StringID>((v12 + 56), a2, a5, &v15);
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  return this;
}

uint64_t re::DeformationModelData::create<re::BlendShapeDeformer,re::BlendShapeModelPayload>(uint64_t *a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 80, 8);
  *v4 = 0;
  *(v4 + 24) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  v6[0] = &unk_1F5D05FC0;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D05FC0;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100](a1, &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *a1;
}

uint64_t re::FixedArray<re::BlendShapeModelPayload::BlendShapeBufferPayload>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x1642C8590B21643)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 184, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 184 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *(result + 7) = 0;
      *result = 0;
      *(result + 16) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 80) = 0uLL;
      *(result + 96) = 0uLL;
      *(result + 112) = 0uLL;
      *(result + 128) = 0uLL;
      *(result + 144) = 0uLL;
      *(result + 160) = 0uLL;
      *(result + 176) = 0;
      result += 184;
      --v6;
    }

    while (v6);
  }

  *(result + 7) = 0;
  *result = 0;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 160) = 0u;
  *(result + 176) = 0;
  return result;
}

uint64_t re::DeformationModelData::create<re::BlendShapeDeformer,re::anonymous namespace::BlendShapeModel>(uint64_t *a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 80, 8);
  *v4 = 0;
  *(v4 + 24) = 0u;
  *(v4 + 8) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  v6[0] = &unk_1F5D06040;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D06040;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100](a1, &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *a1;
}

uint64_t re::FixedArray<re::anonymous namespace::BlendShapeBuffer>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xC30C30C30C30C4)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 336, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v10, v11);
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 336 * a3, 8);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_11:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 == 1)
  {
    v7 = result;
  }

  else
  {
    do
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 24) = 0;
      *(result + 47) = 0;
      *(result + 72) = 0uLL;
      *(result + 88) = 0uLL;
      *(result + 104) = 0uLL;
      *(result + 120) = 0uLL;
      *(result + 136) = 0uLL;
      *(result + 152) = 0uLL;
      *(result + 168) = 0uLL;
      *(result + 184) = 0uLL;
      *(result + 200) = 0uLL;
      *(result + 216) = 0uLL;
      *(result + 232) = 0uLL;
      *(result + 248) = 0uLL;
      *(result + 328) = 0;
      v7 = result + 336;
      *(result + 56) = 0uLL;
      v8 = (result + 56);
      v8[13] = 0uLL;
      v8[14] = 0uLL;
      v8[15] = 0uLL;
      v8[16] = 0uLL;
      result = v7;
      --v6;
    }

    while (v6);
  }

  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = 0;
  *(v7 + 47) = 0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 0u;
  *(v7 + 328) = 0;
  *(v7 + 56) = 0u;
  v9 = (v7 + 56);
  v9[13] = 0u;
  v9[14] = 0u;
  v9[15] = 0u;
  v9[16] = 0u;
  return result;
}

void *re::BlendShapeModelBuilder::BlendShapeModelBuilder(void *a1, uint64_t a2, id *a3, unint64_t a4, int a5, uint64_t *a6, uint64_t *a7)
{
  *a1 = *a3;
  a1[1] = a7;
  re::FixedArray<unsigned int>::operator=((v13 + 32), a6);
  *v13 = a5 != 0;
  re::StringID::invalid(&v16);
  v14 = re::FixedArray<re::StringID>::init<re::StringID>((v13 + 56), a2, a4, &v16);
  if (*&v16.var0)
  {
    if (*&v16.var0)
    {
    }
  }

  return a1;
}

void *re::BlendShapeModelBuilder::addBlendShapeGroup(void **a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v7 = a3;
  v8 = a2;
  v9 = &v419;
  v443 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 24);
  v11 = *(a2 + 44);
  v12 = *a1;
  v13 = *a1[1];
  v14 = v13[5];
  if (*a1)
  {
    if (v14 <= a3)
    {
LABEL_462:
      v412 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v15 = MEMORY[0x1E69E9C10];
      v305 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v305)
      {
        v306 = 3;
      }

      else
      {
        v306 = 2;
      }

      *(v9 + 206) = 468;
      HIWORD(v440[4]) = 2048;
      *(v9 + 212) = v7;
      LOWORD(v440[7]) = 2048;
      *(v9 + 222) = v14;
      _os_log_send_and_compose_impl(v306, &v412, &v427, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
      goto LABEL_466;
    }

    *(v13[6] + 4 * a3) = a4;
    v15 = v13[2];
    if (v15 <= a4)
    {
LABEL_466:
      v412 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v14 = MEMORY[0x1E69E9C10];
      v307 = a4;
      v308 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v308)
      {
        v309 = 3;
      }

      else
      {
        v309 = 2;
      }

      *(v9 + 206) = 468;
      HIWORD(v440[4]) = 2048;
      *(v9 + 212) = v307;
      LOWORD(v440[7]) = 2048;
      *(v9 + 222) = v15;
      _os_log_send_and_compose_impl(v309, &v412, &v427, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
      goto LABEL_470;
    }

    v16 = (v13[3] + 336 * a4);
    *v16 = v10;
    v17 = v16 + 1;
  }

  else
  {
    if (v14 <= a3)
    {
LABEL_471:
      v412 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v18 = MEMORY[0x1E69E9C10];
      v310 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v310)
      {
        v311 = 3;
      }

      else
      {
        v311 = 2;
      }

      *(v9 + 206) = 468;
      HIWORD(v440[4]) = 2048;
      *(v9 + 212) = v7;
      LOWORD(v440[7]) = 2048;
      *(v9 + 222) = v14;
      _os_log_send_and_compose_impl(v311, &v412, &v427, 80, &dword_1E1C61000, v18, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
      goto LABEL_475;
    }

    *(v13[6] + 4 * a3) = a4;
    v18 = v13[2];
    if (v18 <= a4)
    {
LABEL_475:
      v412 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v312 = MEMORY[0x1E69E9C10];
      v313 = a4;
      v314 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v314)
      {
        v315 = 3;
      }

      else
      {
        v315 = 2;
      }

      *(v9 + 206) = 468;
      HIWORD(v440[4]) = 2048;
      *(v9 + 212) = v313;
      LOWORD(v440[7]) = 2048;
      *(v9 + 222) = v18;
      _os_log_send_and_compose_impl(v315, &v412, &v427, 80, &dword_1E1C61000, v312, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
      goto LABEL_479;
    }

    v17 = (v13[3] + 184 * a4);
  }

  v14 = v10 + 3;
  v19 = (3 * v11);
  v20 = (v19 + 3) & 0x1FFFFFFFCLL;
  v21 = (v10 + 3) >> 2;
  *v17 = v21;
  v17[1] = v19;
  v17[2] = v20;
  v22 = *a1[1];
  v18 = *(v22 + 64);
  v23 = v18 >= a4;
  v24 = v18 == a4;
  if (v12)
  {
    if (v18 > a4)
    {
      goto LABEL_16;
    }

    v412 = 0;
    v430 = 0u;
    v431 = 0u;
    v428 = 0u;
    v429 = 0u;
    v427 = 0u;
    v14 = MEMORY[0x1E69E9C10];
    v20 = a4;
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v440[0] = 136315906;
    *&v440[1] = "operator[]";
    LOWORD(v440[3]) = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    *(&v440[3] + 2) = 468;
    HIWORD(v440[4]) = 2048;
    *&v440[5] = v20;
    LOWORD(v440[7]) = 2048;
    *(&v440[7] + 2) = v18;
    _os_log_send_and_compose_impl(v26, &v412, &v427, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
    _os_crash_msg();
    __break(1u);
  }

  if (v24 || !v23)
  {
LABEL_479:
    v412 = 0;
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
    *(v9 + 64) = 0u;
    *(v9 + 80) = 0u;
    *(v9 + 48) = 0u;
    v316 = MEMORY[0x1E69E9C10];
    v20 = a4;
    v317 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v440[0] = 136315906;
    *(v9 + 196) = "operator[]";
    LOWORD(v440[3]) = 1024;
    if (v317)
    {
      v318 = 3;
    }

    else
    {
      v318 = 2;
    }

    *(v9 + 206) = 468;
    HIWORD(v440[4]) = 2048;
    *(v9 + 212) = v20;
    LOWORD(v440[7]) = 2048;
    *(v9 + 222) = v18;
    _os_log_send_and_compose_impl(v318, &v412, &v427, 80, &dword_1E1C61000, v316, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
    _os_crash_msg();
    __break(1u);
    goto LABEL_483;
  }

LABEL_16:
  v392 = v12;
  v393 = a4;
  v27 = re::StringID::operator=((*(v22 + 72) + 16 * a4), v8);
  v29 = *(v8 + 40);
  v404 = v8;
  if (v29 == 2)
  {
    v7 = *(v8 + 24);
    if (!v7)
    {
LABEL_470:
      re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "first", 447);
      _os_crash("assertion failure: (m_size > 0) Array is empty");
      __break(1u);
      goto LABEL_471;
    }

    v391 = v20;
    v35 = a1[1];
    v36 = *(v8 + 32);
    v403 = v36[9];
    v37 = v36[12];
    v38 = v36[15];
    v39 = (3 * *(v8 + 44));
    v40 = v39 << (v403 != 0);
    v400 = v37;
    if (v37)
    {
      v41 = (3 * *(v8 + 44));
    }

    else
    {
      v41 = 0;
    }

    v395 = v38;
    if (!v38)
    {
      v39 = 0;
    }

    v42 = v40 + v41 + v39;
    re::StringID::invalid(&v427);
    v416 = 0;
    v417 = 0;
    v418 = 0;
    if (v427)
    {
      if (v427)
      {
      }
    }

    v384 = v395 != 0;
    v383 = v400 != 0;
    v44 = (4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0;
    v414 = 0u;
    v415 = 0u;
    v410 = 0u;
    v411 = 0u;
    v412 = 16;
    v413 = v42 * v44;
    v382 = v403 != 0;
    v398 = v44 >> 2;
    v409.i64[0] = 16;
    v409.i64[1] = v42 * v44;
    v431 = 0u;
    v432 = 0u;
    v429 = 0u;
    v430 = 0u;
    v427 = 0u;
    v428 = 0u;
    v387 = v35;
    v9 = 0;
    v5 = 0;
    v45 = v427;
    v20 = v428;
    *v427 = v21;
    *(v45 + 4) = v19;
    *(v45 + 8) = v391;
    v46 = v20;
    while (1)
    {
      v47 = v7;
      v7 = *(v8 + 24);
      if (v7 <= v5)
      {
        goto LABEL_422;
      }

      v7 = v417;
      if (v417 <= v5)
      {
        goto LABEL_426;
      }

      v48 = (*(v8 + 32) + 136 * v5);
      v19 = v48[6];
      v8 = v19 * v398;
      re::StringID::operator=((v418 + 16 * v5), v48);
      v49 = v20 + 4 * v19 * v398;
      if (v19)
      {
        break;
      }

      if (v403)
      {
LABEL_45:
        v49 += 4 * v8;
        goto LABEL_46;
      }

      if (v400)
      {
LABEL_53:
        v49 += 4 * v8;
        goto LABEL_54;
      }

LABEL_59:
      ++v5;
      ++v46;
      v9 += 4;
      v7 = v47;
      v8 = v404;
      if (v5 == v47)
      {
        v58 = *v387;
        if (*a1)
        {
          v20 = *(v58 + 16);
          v59 = v393;
          if (v20 > v393)
          {
            v60 = *(v58 + 24) + 336 * v393;
            LOBYTE(v419) = 0;
            HIDWORD(v424) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v419, v60 + 56);
            *&v426[2] = *(v60 + 88);
            re::BufferSlice::buffer(&v419, v61);
            v62 = v393;
            v20 = *(v58 + 16);
            if (v20 > v393)
            {
              re::FixedArray<float>::operator=((*(v58 + 24) + 336 * v393 + 24), &v416);
              v63 = v393;
              v20 = *(v58 + 16);
              if (v20 > v393)
              {
                v64 = (*(v58 + 24) + 336 * v393);
                v64[48] = v382;
                v64[49] = v383;
                v64[50] = v384;
                if (HIDWORD(v424) != -1)
                {
                  (off_1F5D05EF0[HIDWORD(v424)])(v440, &v419);
                }

                goto LABEL_226;
              }

LABEL_491:
              v405 = 0;
              v441 = 0u;
              v442 = 0u;
              memset(v440, 0, sizeof(v440));
              v327 = MEMORY[0x1E69E9C10];
              v328 = v63;
              v329 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v433 = 136315906;
              *&v433[4] = "operator[]";
              v434 = 1024;
              if (v329)
              {
                v330 = 3;
              }

              else
              {
                v330 = 2;
              }

              v435 = 468;
              v436 = 2048;
              v437 = v328;
              v438 = 2048;
              v439 = v20;
              _os_log_send_and_compose_impl(v330, &v405, v440, 80, &dword_1E1C61000, v327, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v433, 38, v380, v381);
              _os_crash_msg();
              __break(1u);
LABEL_495:
              re::internal::assertLog(4, v96, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
              _os_crash("assertion failure: (m_data) Out of memory.");
              __break(1u);
LABEL_496:
              re::internal::assertLog(4, v153, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
              _os_crash("assertion failure: (m_data) Out of memory.");
              __break(1u);
LABEL_497:
              *v433 = 0;
              v441 = 0u;
              v442 = 0u;
              memset(v440, 0, sizeof(v440));
              v331 = MEMORY[0x1E69E9C10];
              v332 = v72;
              v333 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v419 = 136315906;
              v420 = "operator[]";
              v421 = 1024;
              if (v333)
              {
                v334 = 3;
              }

              else
              {
                v334 = 2;
              }

              v422 = 468;
              v423 = 2048;
              v424 = v332;
              v425 = 2048;
              *v426 = v20;
              _os_log_send_and_compose_impl(v334, v433, v440, 80, &dword_1E1C61000, v331, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
              _os_crash_msg();
              __break(1u);
              goto LABEL_501;
            }

LABEL_487:
            v405 = 0;
            v441 = 0u;
            v442 = 0u;
            memset(v440, 0, sizeof(v440));
            v323 = MEMORY[0x1E69E9C10];
            v324 = v62;
            v325 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v433 = 136315906;
            *&v433[4] = "operator[]";
            v434 = 1024;
            if (v325)
            {
              v326 = 3;
            }

            else
            {
              v326 = 2;
            }

            v435 = 468;
            v436 = 2048;
            v437 = v324;
            v438 = 2048;
            v439 = v20;
            _os_log_send_and_compose_impl(v326, &v405, v440, 80, &dword_1E1C61000, v323, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v433, 38, v380, v381);
            _os_crash_msg();
            __break(1u);
            goto LABEL_491;
          }

LABEL_483:
          *v433 = 0;
          v441 = 0u;
          v442 = 0u;
          memset(v440, 0, sizeof(v440));
          v319 = MEMORY[0x1E69E9C10];
          v320 = v59;
          v321 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v419 = 136315906;
          v420 = "operator[]";
          v421 = 1024;
          if (v321)
          {
            v322 = 3;
          }

          else
          {
            v322 = 2;
          }

          v422 = 468;
          v423 = 2048;
          v424 = v320;
          v425 = 2048;
          *v426 = v20;
          _os_log_send_and_compose_impl(v322, v433, v440, 80, &dword_1E1C61000, v319, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
          _os_crash_msg();
          __break(1u);
          goto LABEL_487;
        }

        v20 = *(v58 + 16);
        v72 = v393;
        if (v20 <= v393)
        {
          goto LABEL_497;
        }

        re::FixedArray<float>::operator=((*(v58 + 24) + 184 * v393 + 16), &v416);
        v73 = v393;
        v20 = *(v58 + 16);
        if (v20 > v393)
        {
          v74 = (*(v58 + 24) + 184 * v393);
          v74[12] = v382;
          v74[13] = v383;
          v74[14] = v384;
          goto LABEL_226;
        }

LABEL_501:
        *v433 = 0;
        v441 = 0u;
        v442 = 0u;
        memset(v440, 0, sizeof(v440));
        v335 = MEMORY[0x1E69E9C10];
        v336 = v73;
        v337 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v419 = 136315906;
        v420 = "operator[]";
        v421 = 1024;
        if (v337)
        {
          v338 = 3;
        }

        else
        {
          v338 = 2;
        }

        v422 = 468;
        v423 = 2048;
        v424 = v336;
        v425 = 2048;
        *v426 = v20;
        _os_log_send_and_compose_impl(v338, v433, v440, 80, &dword_1E1C61000, v335, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_505:
        *v433 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v339 = MEMORY[0x1E69E9C10];
        v340 = v138;
        v341 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v419 = 136315906;
        *(v9 + 4) = "operator[]";
        v421 = 1024;
        if (v341)
        {
          v342 = 3;
        }

        else
        {
          v342 = 2;
        }

        *(v9 + 14) = 468;
        v423 = 2048;
        *(v9 + 20) = v340;
        v425 = 2048;
        *(v9 + 30) = v20;
        _os_log_send_and_compose_impl(v342, v433, v440, 80, &dword_1E1C61000, v339, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_509:
        *v433 = 0;
        v441 = 0u;
        v442 = 0u;
        memset(v440, 0, sizeof(v440));
        v343 = MEMORY[0x1E69E9C10];
        v344 = v190;
        v345 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v419 = 136315906;
        v420 = "operator[]";
        v421 = 1024;
        if (v345)
        {
          v346 = 3;
        }

        else
        {
          v346 = 2;
        }

        v422 = 468;
        v423 = 2048;
        v424 = v344;
        v425 = 2048;
        *v426 = v20;
        _os_log_send_and_compose_impl(v346, v433, v440, 80, &dword_1E1C61000, v343, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_513:
        v408 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v347 = MEMORY[0x1E69E9C10];
        v348 = v141;
        v349 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v433 = 136315906;
        *(v9 + 148) = "operator[]";
        v434 = 1024;
        if (v349)
        {
          v350 = 3;
        }

        else
        {
          v350 = 2;
        }

        *(v9 + 158) = 468;
        v436 = 2048;
        *(v9 + 164) = v348;
        v438 = 2048;
        *(v9 + 174) = v20;
        _os_log_send_and_compose_impl(v350, &v408, v440, 80, &dword_1E1C61000, v347, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v433, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_517:
        v408 = 0;
        v441 = 0u;
        v442 = 0u;
        memset(v440, 0, sizeof(v440));
        v351 = MEMORY[0x1E69E9C10];
        v352 = v193;
        v353 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v433 = 136315906;
        *&v433[4] = "operator[]";
        v434 = 1024;
        if (v353)
        {
          v354 = 3;
        }

        else
        {
          v354 = 2;
        }

        v435 = 468;
        v436 = 2048;
        v437 = v352;
        v438 = 2048;
        v439 = v20;
        _os_log_send_and_compose_impl(v354, &v408, v440, 80, &dword_1E1C61000, v351, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v433, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_521:
        v408 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v355 = MEMORY[0x1E69E9C10];
        v356 = v142;
        v357 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v433 = 136315906;
        *(v9 + 148) = "operator[]";
        v434 = 1024;
        if (v357)
        {
          v358 = 3;
        }

        else
        {
          v358 = 2;
        }

        *(v9 + 158) = 468;
        v436 = 2048;
        *(v9 + 164) = v356;
        v438 = 2048;
        *(v9 + 174) = v20;
        _os_log_send_and_compose_impl(v358, &v408, v440, 80, &dword_1E1C61000, v355, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v433, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_525:
        v408 = 0;
        v441 = 0u;
        v442 = 0u;
        memset(v440, 0, sizeof(v440));
        v359 = MEMORY[0x1E69E9C10];
        v360 = v194;
        v361 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v433 = 136315906;
        *&v433[4] = "operator[]";
        v434 = 1024;
        if (v361)
        {
          v362 = 3;
        }

        else
        {
          v362 = 2;
        }

        v435 = 468;
        v436 = 2048;
        v437 = v360;
        v438 = 2048;
        v439 = v20;
        _os_log_send_and_compose_impl(v362, &v408, v440, 80, &dword_1E1C61000, v359, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v433, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_529:
        *v433 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v363 = MEMORY[0x1E69E9C10];
        v364 = v144;
        v365 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v419 = 136315906;
        *(v9 + 4) = "operator[]";
        v421 = 1024;
        if (v365)
        {
          v366 = 3;
        }

        else
        {
          v366 = 2;
        }

        *(v9 + 14) = 468;
        v423 = 2048;
        *(v9 + 20) = v364;
        v425 = 2048;
        *(v9 + 30) = v20;
        _os_log_send_and_compose_impl(v366, v433, v440, 80, &dword_1E1C61000, v363, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_533:
        *v433 = 0;
        v441 = 0u;
        v442 = 0u;
        memset(v440, 0, sizeof(v440));
        v367 = MEMORY[0x1E69E9C10];
        v368 = v196;
        v369 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v419 = 136315906;
        v420 = "operator[]";
        v421 = 1024;
        if (v369)
        {
          v370 = 3;
        }

        else
        {
          v370 = 2;
        }

        v422 = 468;
        v423 = 2048;
        v424 = v368;
        v425 = 2048;
        *v426 = v20;
        _os_log_send_and_compose_impl(v370, v433, v440, 80, &dword_1E1C61000, v367, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_537:
        *v433 = 0;
        *(v9 + 240) = 0u;
        *(v9 + 256) = 0u;
        *(v9 + 208) = 0u;
        *(v9 + 224) = 0u;
        *(v9 + 192) = 0u;
        v371 = MEMORY[0x1E69E9C10];
        v372 = v145;
        v373 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v419 = 136315906;
        *(v9 + 4) = "operator[]";
        v421 = 1024;
        if (v373)
        {
          v374 = 3;
        }

        else
        {
          v374 = 2;
        }

        *(v9 + 14) = 468;
        v423 = 2048;
        *(v9 + 20) = v372;
        v425 = 2048;
        *(v9 + 30) = v20;
        _os_log_send_and_compose_impl(v374, v433, v440, 80, &dword_1E1C61000, v371, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_541:
        *v433 = 0;
        v441 = 0u;
        v442 = 0u;
        memset(v440, 0, sizeof(v440));
        v375 = MEMORY[0x1E69E9C10];
        v376 = v197;
        v377 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v419 = 136315906;
        v420 = "operator[]";
        v421 = 1024;
        if (v377)
        {
          v378 = 3;
        }

        else
        {
          v378 = 2;
        }

        v422 = 468;
        v423 = 2048;
        v424 = v376;
        v425 = 2048;
        *v426 = v20;
        _os_log_send_and_compose_impl(v378, v433, v440, 80, &dword_1E1C61000, v375, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
      }
    }

    v50 = 0;
    v51 = v48[6];
    v52 = v46;
    while (v51 != v50)
    {
      *v52 = *(v48[7] + 4 * v50++);
      v52 = (v52 + v44);
      if (v19 == v50)
      {
        if (v403)
        {
          v53 = 0;
          v7 = v48[9];
          v54 = v44 * v19;
          while (v7 != v53)
          {
            *(v46 + v54) = *(v48[10] + 4 * v53++);
            v54 += v44;
            if (v19 == v53)
            {
              goto LABEL_45;
            }
          }

LABEL_124:
          *v433 = 0;
          v441 = 0u;
          v442 = 0u;
          memset(v440, 0, sizeof(v440));
          v90 = MEMORY[0x1E69E9C10];
          v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v419 = 136315906;
          v420 = "operator[]";
          v421 = 1024;
          if (v91)
          {
            v92 = 3;
          }

          else
          {
            v92 = 2;
          }

          v422 = 476;
          v423 = 2048;
          v424 = v7;
          v425 = 2048;
          *v426 = v7;
          _os_log_send_and_compose_impl(v92, v433, v440, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
          _os_crash_msg();
          __break(1u);
LABEL_128:
          *v433 = 0;
          v77 = &v419;
          v441 = 0u;
          v442 = 0u;
          memset(v440, 0, sizeof(v440));
          v75 = MEMORY[0x1E69E9C10];
          v93 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v419 = 136315906;
          v420 = "operator[]";
          v421 = 1024;
          if (v93)
          {
            v94 = 3;
          }

          else
          {
            v94 = 2;
          }

          v422 = 476;
          v423 = 2048;
          v424 = v7;
          v425 = 2048;
          *v426 = v7;
          _os_log_send_and_compose_impl(v94, v433, v440, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
          v69 = _os_crash_msg();
          __break(1u);
LABEL_132:
          v402 = 0;
          v396 = 0;
          v70 = 0;
          goto LABEL_133;
        }

LABEL_46:
        if (v400)
        {
          if (v19)
          {
            v55 = 0;
            v7 = v48[12];
            v56 = v9;
            while (v7 != v55)
            {
              *(v49 + v56) = *(v48[13] + 4 * v55++);
              v56 += v44;
              if (v19 == v55)
              {
                goto LABEL_53;
              }
            }

            goto LABEL_128;
          }

          goto LABEL_53;
        }

LABEL_54:
        if (v395 && v19)
        {
          v57 = 0;
          v7 = v48[15];
          while (v7 != v57)
          {
            *(v49 + v9) = *(v48[16] + 4 * v57++);
            v49 += v44;
            if (v19 == v57)
            {
              goto LABEL_59;
            }
          }

          *v433 = 0;
          v441 = 0u;
          v442 = 0u;
          memset(v440, 0, sizeof(v440));
          v87 = MEMORY[0x1E69E9C10];
          v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v419 = 136315906;
          v420 = "operator[]";
          v421 = 1024;
          if (v88)
          {
            v89 = 3;
          }

          else
          {
            v89 = 2;
          }

          v422 = 476;
          v423 = 2048;
          v424 = v7;
          v425 = 2048;
          *v426 = v7;
          _os_log_send_and_compose_impl(v89, v433, v440, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
          _os_crash_msg();
          __break(1u);
          goto LABEL_124;
        }

        goto LABEL_59;
      }
    }

    *v433 = 0;
    v441 = 0u;
    v442 = 0u;
    memset(v440, 0, sizeof(v440));
    v81 = MEMORY[0x1E69E9C10];
    v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v419 = 136315906;
    v420 = "operator[]";
    v421 = 1024;
    if (v82)
    {
      v83 = 3;
    }

    else
    {
      v83 = 2;
    }

    v422 = 476;
    v423 = 2048;
    v424 = v51;
    v425 = 2048;
    *v426 = v51;
    _os_log_send_and_compose_impl(v83, v433, v440, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
    _os_crash_msg();
    __break(1u);
  }

  else
  {
    if (v29 != 1)
    {
      re::internal::assertLog(5, v28, "assertion failure: '%s' (%s:line %i) Invalid blend shape group storage mode: %u.", "!Unreachable code", "addBlendShapeGroup", 885, v29);
      result = _os_crash("assertion failure: (!Unreachable code) Invalid blend shape group storage mode: %u.", v379);
      __break(1u);
      return result;
    }

    v30 = v14 & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *(v8 + 24);
    if (v31)
    {
      v32 = (*(v8 + 32) + 72);
      v33 = 1;
      v34 = *(v8 + 24);
      while (!*(v32 - 6))
      {
        v32 += 17;
        if (!--v34)
        {
          goto LABEL_73;
        }
      }

      v33 = 1;
      if (*v32)
      {
        v33 = 2;
      }

      if (v32[3])
      {
        ++v33;
      }

      if (v32[6])
      {
        ++v33;
      }
    }

    else
    {
      v33 = 1;
    }

LABEL_73:
    v65 = 4 * v20 * v33;
    if (v65 > v30)
    {
      v30 = v65;
    }

    v391 = a1[1];
    v403 = v31;
    if ((a5 & 1) == 0 && v30 < 0xFFFF)
    {
      re::StringID::invalid(&v427);
      v416 = 0;
      v417 = 0;
      v418 = 0;
      if (v427)
      {
        if (v427)
        {
        }
      }

      v67 = *(v8 + 24);
      if (v67)
      {
        v68 = (*(v8 + 32) + 72);
        while (!*(v68 - 6))
        {
          v68 += 17;
          if (!--v67)
          {
            v399 = 0;
            v401 = 0;
            v20 = 0;
            goto LABEL_110;
          }
        }

        v399 = *v68 != 0;
        v401 = v68[3] != 0;
        v20 = v68[6] != 0;
LABEL_110:
        v86 = 0;
        v5 = 0;
        v85 = 0;
        do
        {
          v7 = v417;
          if (v417 <= v85)
          {
            goto LABEL_434;
          }

          v66 = re::StringID::operator=((v418 + v86), (*(v8 + 32) + v5));
          v85 = (v85 + 1);
          v5 += 136;
          v86 += 16;
        }

        while (v85 < *(v8 + 24));
        v78 = *(v8 + 44);
        v80 = (3 * v78);
        v8 = v80;
        v79 = v80 << v399;
        if (v401)
        {
          v79 += v80;
          if ((v20 & 1) == 0)
          {
            v397 = 0;
            v67 = 0;
            v401 = 1;
            goto LABEL_230;
          }
        }

        else if (!v20)
        {
          v401 = 0;
          v397 = 0;
          v67 = 0;
          goto LABEL_230;
        }

        v397 = 1;
        v67 = (3 * v78);
        goto LABEL_230;
      }

      v399 = 0;
      v401 = 0;
      v397 = 0;
      v78 = *(v8 + 44);
      v79 = (3 * v78);
      v8 = v79;
      v80 = v79;
LABEL_230:
      v9 = v67 + v79;
      v386 = v80;
      if (v9)
      {
        if (!v152)
        {
          goto LABEL_496;
        }

        v154 = v152;
        v155 = v152;
        v156 = v9 - 1;
        if (v9 != 1)
        {
          v155 = v152;
          do
          {
            *(v155 + 4) = 0;
            *(v155 + 1) = 0;
            *(v155 + 2) = 0;
            *v155 = 0;
            *(v155 + 6) = 0;
            v155 = (v155 + 40);
            --v156;
          }

          while (v156);
        }

        *(v155 + 4) = 0;
        *(v155 + 1) = 0;
        *(v155 + 2) = 0;
        *v155 = 0;
        *(v155 + 6) = 0;
      }

      else
      {
        v154 = 0;
      }

      if (!v403)
      {
LABEL_275:
        if (v9)
        {
          v162 = 0;
          v20 = 0;
          v163 = (v154 + 16);
          v164 = v9;
          v165 = v386;
          do
          {
            v167 = *v163;
            v163 += 5;
            v166 = v167;
            if (v167)
            {
              ++v162;
            }

            v20 += (v166 + 3) & 0xFFFFFFFFFFFFFFFCLL;
            --v164;
          }

          while (v164);
          v7 = 2 * v162;
        }

        else
        {
          v20 = 0;
          v7 = 0;
          v165 = v386;
        }

        v19 = 0xAAAAAAAAAAAAAAABLL;
        v405 = 0;
        v406 = 0;
        v407 = 0;
        v168 = 0;
        v169 = v9 - v165;
        if (v9 > v165)
        {
          v170 = 0;
          v171 = 0;
          v5 = v406;
          v172 = v407;
          do
          {
            v8 = v170 / 3;
            if (v5 <= v170 / 3)
            {
              goto LABEL_442;
            }

            v171 += *(v172 + v8) ^ 1;
            *(v172 + v8) = 1;
            ++v170;
          }

          while (v169 != v170);
          v168 = 2 * v171;
        }

        v390 = 2 * v20;
        v173 = 4 * v20;
        v412 = 12;
        v413 = 4 * v20;
        *&v414 = v7;
        *(&v414 + 1) = v7 + 2;
        *&v415 = 2 * v20;
        *(&v415 + 1) = v168;
        v409.i64[0] = 16;
        v409.i64[1] = 4 * v20;
        v410 = vandq_s8(vaddq_s64(vdupq_n_s64(v7), xmmword_1E30B4940), vdupq_n_s64(0xFFFFFFFFFFFFFFF0));
        *&v411 = (2 * v20 + 15) & 0xFFFFFFFFFFFFFFF0;
        *(&v411 + 1) = (v168 + 15) & 0xFFFFFFFFFFFFFFF0;
        v431 = 0u;
        v432 = 0u;
        v429 = 0u;
        v430 = 0u;
        v427 = 0u;
        v428 = 0u;
        v19 = v428;
        v174 = v429;
        v175 = v430;
        v8 = v431;
        v7 = v432;
        bzero(v428, v173);
        bzero(v8, v390);
        v176 = (3 * *(v404 + 44));
        v177 = v427;
        v178 = (v176 + 3) & 0xFFFFFFFC;
        *v427 = (v403 + 3) >> 2;
        *(v177 + 4) = v176;
        *(v177 + 8) = v178;
        if (v9)
        {
          v179 = 0;
          v180 = v19;
          do
          {
            v181 = v154 + 40 * v179;
            v182 = *(v181 + 2);
            if (v182)
            {
              *v174 = v179 % v176 + v179 / v176 * v178;
              *v175 = (v180 - v19) >> 2;
              v183 = (*(v181 + 4) + 4);
              v184 = v182;
              do
              {
                *v180++ = *v183;
                *v8 = *(v183 - 1);
                v8 += 2;
                v183 += 2;
                --v184;
              }

              while (v184);
              ++v174;
              ++v175;
              v185 = v182 & 3;
              v180 = &v180[-v185 + 4];
              v8 = v8 - 2 * v185 + 8;
            }

            ++v179;
          }

          while (v179 != v9);
        }

        else
        {
          LODWORD(v180) = v19;
        }

        *v175 = (v180 - v19) >> 2;
        if (v169 < 3)
        {
LABEL_303:
          v189 = *v391;
          if (*a1)
          {
            v20 = *(v189 + 16);
            v190 = v393;
            if (v20 <= v393)
            {
              goto LABEL_509;
            }

            v191 = *(v189 + 24) + 336 * v393;
            LOBYTE(v419) = 0;
            HIDWORD(v424) = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v419, v191 + 56);
            *&v426[2] = *(v191 + 88);
            re::BufferSlice::buffer(&v419, v192);
            v193 = v393;
            v20 = *(v189 + 16);
            if (v20 <= v393)
            {
              goto LABEL_517;
            }

            re::FixedArray<float>::operator=((*(v189 + 24) + 336 * v393 + 24), &v416);
            v194 = v393;
            v20 = *(v189 + 16);
            if (v20 <= v393)
            {
              goto LABEL_525;
            }

            v195 = (*(v189 + 24) + 336 * v393);
            v195[48] = v399;
            v195[49] = v401;
            v195[50] = v397;
            if (HIDWORD(v424) != -1)
            {
              (off_1F5D05EF0[HIDWORD(v424)])(v440, &v419);
            }
          }

          else
          {
            v20 = *(v189 + 16);
            v196 = v393;
            if (v20 <= v393)
            {
              goto LABEL_533;
            }

            re::FixedArray<float>::operator=((*(v189 + 24) + 184 * v393 + 16), &v416);
            v197 = v393;
            v20 = *(v189 + 16);
            if (v20 <= v393)
            {
              goto LABEL_541;
            }

            v198 = (*(v189 + 24) + 184 * v393);
            v198[12] = v399;
            v198[13] = v401;
            v198[14] = v397;
          }

          if (v405 && v406)
          {
            (*(*v405 + 40))();
          }

          if (v9)
          {
            v199 = 40 * v9;
            v200 = (v154 + 32);
            do
            {
              v201 = *(v200 - 4);
              if (v201)
              {
                if (*v200)
                {
                  (*(*v201 + 40))(v201);
                }

                *v200 = 0;
                *(v200 - 3) = 0;
                *(v200 - 2) = 0;
                *(v200 - 4) = 0;
                ++*(v200 - 2);
              }

              v200 += 5;
              v199 -= 40;
            }

            while (v199);
          }

          result = re::FixedArray<re::StringID>::deinit(&v416);
          v202 = *a1[1];
          if (v392)
          {
            *v202 = 0;
          }

          else
          {
            *v202 = 0;
          }

          return result;
        }

        v186 = 0;
        v20 = v406;
        v187 = v407;
        v188 = (v9 - v165) / 3;
        if (v188 <= 1)
        {
          v188 = 1;
        }

        while (v20 != v186)
        {
          if (*(v187 + v186) == 1)
          {
            *v7 = v165 % v176 + v165 / v176 * v178;
            v7 += 2;
          }

          ++v186;
          v165 += 3;
          if (v188 == v186)
          {
            goto LABEL_303;
          }
        }

        goto LABEL_450;
      }

      v19 = 0;
      v389 = 6 * v78;
      while (1)
      {
        v14 = *(v404 + 24);
        if (v14 <= v19)
        {
          goto LABEL_458;
        }

        v157 = (*(v404 + 32) + 136 * v19);
        v7 = v157[3];
        if (v7)
        {
          for (i = 0; i != v7; ++i)
          {
            v102 = v157[6];
            if (v102 <= i)
            {
              goto LABEL_330;
            }

            v158 = *(v157[7] + 4 * i);
            if (fabsf(v158) >= 0.00001)
            {
              v102 = v157[3];
              if (v102 <= i)
              {
                goto LABEL_338;
              }

              v5 = *(v157[4] + 4 * i);
              if (v9 <= v5)
              {
                goto LABEL_346;
              }

              *&v427 = __PAIR64__(LODWORD(v158), v19);
            }
          }

          v5 = v8;
          if (v399)
          {
            for (i = 0; i != v7; ++i)
            {
              v104 = v157[9];
              if (v104 <= i)
              {
                goto LABEL_354;
              }

              v159 = *(v157[10] + 4 * i);
              if (fabsf(v159) >= 0.00001)
              {
                v104 = v157[3];
                if (v104 <= i)
                {
                  goto LABEL_378;
                }

                v104 = (*(v157[4] + 4 * i) + v8);
                if (v9 <= v104)
                {
                  goto LABEL_386;
                }

                *&v427 = __PAIR64__(LODWORD(v159), v19);
              }
            }

            v5 = v389;
          }

          if (v401)
          {
            for (i = 0; i != v7; ++i)
            {
              v104 = v157[12];
              if (v104 <= i)
              {
                goto LABEL_362;
              }

              v160 = *(v157[13] + 4 * i);
              if (fabsf(v160) >= 0.00001)
              {
                v104 = v157[3];
                if (v104 <= i)
                {
                  goto LABEL_394;
                }

                v104 = (*(v157[4] + 4 * i) + v5);
                if (v9 <= v104)
                {
                  goto LABEL_402;
                }

                *&v427 = __PAIR64__(LODWORD(v160), v19);
              }
            }

            v5 = (v5 + v8);
          }

          if (v397)
          {
            break;
          }
        }

LABEL_274:
        if (++v19 == v403)
        {
          goto LABEL_275;
        }
      }

      i = 0;
      while (1)
      {
        v104 = v157[15];
        if (v104 <= i)
        {
          break;
        }

        v161 = *(v157[16] + 4 * i);
        if (fabsf(v161) >= 0.00001)
        {
          v104 = v157[3];
          if (v104 <= i)
          {
            goto LABEL_410;
          }

          v104 = (*(v157[4] + 4 * i) + v5);
          if (v9 <= v104)
          {
            goto LABEL_418;
          }

          *&v427 = __PAIR64__(LODWORD(v161), v19);
        }

        if (v7 == ++i)
        {
          goto LABEL_274;
        }
      }

LABEL_370:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v236 = MEMORY[0x1E69E9C10];
      v237 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v237)
      {
        v238 = 3;
      }

      else
      {
        v238 = 2;
      }

      *(&v440[3] + 2) = 476;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = i;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v104;
      _os_log_send_and_compose_impl(v238, &v412, &v427, 80, &dword_1E1C61000, v236, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_374:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v239 = MEMORY[0x1E69E9C10];
      v240 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v240)
      {
        v241 = 3;
      }

      else
      {
        v241 = 2;
      }

      *(&v440[3] + 2) = 476;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = i;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v104;
      _os_log_send_and_compose_impl(v241, &v412, &v427, 80, &dword_1E1C61000, v239, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_378:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v242 = MEMORY[0x1E69E9C10];
      v243 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v243)
      {
        v244 = 3;
      }

      else
      {
        v244 = 2;
      }

      *(&v440[3] + 2) = 476;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = i;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v104;
      _os_log_send_and_compose_impl(v244, &v412, &v427, 80, &dword_1E1C61000, v242, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_382:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v245 = MEMORY[0x1E69E9C10];
      v246 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v246)
      {
        v247 = 3;
      }

      else
      {
        v247 = 2;
      }

      *(&v440[3] + 2) = 468;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v104;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v5;
      _os_log_send_and_compose_impl(v247, &v412, &v427, 80, &dword_1E1C61000, v245, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_386:
      v412 = 0;
      i = &v419;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v248 = MEMORY[0x1E69E9C10];
      v249 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v249)
      {
        v250 = 3;
      }

      else
      {
        v250 = 2;
      }

      *(&v440[3] + 2) = 468;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v104;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v9;
      _os_log_send_and_compose_impl(v250, &v412, &v427, 80, &dword_1E1C61000, v248, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_390:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v251 = MEMORY[0x1E69E9C10];
      v252 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v252)
      {
        v253 = 3;
      }

      else
      {
        v253 = 2;
      }

      *(&v440[3] + 2) = 476;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = i;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v104;
      _os_log_send_and_compose_impl(v253, &v412, &v427, 80, &dword_1E1C61000, v251, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_394:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v254 = MEMORY[0x1E69E9C10];
      v255 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v255)
      {
        v256 = 3;
      }

      else
      {
        v256 = 2;
      }

      *(&v440[3] + 2) = 476;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = i;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v104;
      _os_log_send_and_compose_impl(v256, &v412, &v427, 80, &dword_1E1C61000, v254, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_398:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v257 = MEMORY[0x1E69E9C10];
      v258 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v258)
      {
        v259 = 3;
      }

      else
      {
        v259 = 2;
      }

      *(&v440[3] + 2) = 468;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v104;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v5;
      _os_log_send_and_compose_impl(v259, &v412, &v427, 80, &dword_1E1C61000, v257, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_402:
      v412 = 0;
      i = &v419;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v260 = MEMORY[0x1E69E9C10];
      v261 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v261)
      {
        v262 = 3;
      }

      else
      {
        v262 = 2;
      }

      *(&v440[3] + 2) = 468;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v104;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v9;
      _os_log_send_and_compose_impl(v262, &v412, &v427, 80, &dword_1E1C61000, v260, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_406:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v263 = MEMORY[0x1E69E9C10];
      v264 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v264)
      {
        v265 = 3;
      }

      else
      {
        v265 = 2;
      }

      *(&v440[3] + 2) = 476;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = i;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v104;
      _os_log_send_and_compose_impl(v265, &v412, &v427, 80, &dword_1E1C61000, v263, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_410:
      v412 = 0;
      v7 = &v419;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v266 = MEMORY[0x1E69E9C10];
      v267 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v267)
      {
        v268 = 3;
      }

      else
      {
        v268 = 2;
      }

      *(&v440[3] + 2) = 476;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = i;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v104;
      _os_log_send_and_compose_impl(v268, &v412, &v427, 80, &dword_1E1C61000, v266, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_414:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v269 = MEMORY[0x1E69E9C10];
      v270 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v270)
      {
        v271 = 3;
      }

      else
      {
        v271 = 2;
      }

      *(&v440[3] + 2) = 468;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v104;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v5;
      _os_log_send_and_compose_impl(v271, &v412, &v427, 80, &dword_1E1C61000, v269, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_418:
      v412 = 0;
      v20 = &v419;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v272 = MEMORY[0x1E69E9C10];
      v273 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v273)
      {
        v274 = 3;
      }

      else
      {
        v274 = 2;
      }

      *(&v440[3] + 2) = 468;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v104;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v9;
      _os_log_send_and_compose_impl(v274, &v412, &v427, 80, &dword_1E1C61000, v272, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_422:
      *v433 = 0;
      v441 = 0u;
      v442 = 0u;
      memset(v440, 0, sizeof(v440));
      v275 = MEMORY[0x1E69E9C10];
      v276 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v419 = 136315906;
      v420 = "operator[]";
      v421 = 1024;
      if (v276)
      {
        v277 = 3;
      }

      else
      {
        v277 = 2;
      }

      v422 = 476;
      v423 = 2048;
      v424 = v5;
      v425 = 2048;
      *v426 = v7;
      _os_log_send_and_compose_impl(v277, v433, v440, 80, &dword_1E1C61000, v275, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_426:
      *v433 = 0;
      v85 = &v419;
      v441 = 0u;
      v442 = 0u;
      memset(v440, 0, sizeof(v440));
      v278 = MEMORY[0x1E69E9C10];
      v279 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v419 = 136315906;
      v420 = "operator[]";
      v421 = 1024;
      if (v279)
      {
        v280 = 3;
      }

      else
      {
        v280 = 2;
      }

      v422 = 468;
      v423 = 2048;
      v424 = v5;
      v425 = 2048;
      *v426 = v7;
      _os_log_send_and_compose_impl(v280, v433, v440, 80, &dword_1E1C61000, v278, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_430:
      v412 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v281 = MEMORY[0x1E69E9C10];
      v282 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v282)
      {
        v283 = 3;
      }

      else
      {
        v283 = 2;
      }

      *(v9 + 206) = 468;
      HIWORD(v440[4]) = 2048;
      *(v9 + 212) = v85;
      LOWORD(v440[7]) = 2048;
      *(v9 + 222) = v7;
      _os_log_send_and_compose_impl(v283, &v412, &v427, 80, &dword_1E1C61000, v281, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_434:
      v412 = 0;
      *(v9 + 96) = 0u;
      *(v9 + 112) = 0u;
      *(v9 + 64) = 0u;
      *(v9 + 80) = 0u;
      *(v9 + 48) = 0u;
      v284 = MEMORY[0x1E69E9C10];
      v285 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *(v9 + 196) = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v285)
      {
        v286 = 3;
      }

      else
      {
        v286 = 2;
      }

      *(v9 + 206) = 468;
      HIWORD(v440[4]) = 2048;
      *(v9 + 212) = v85;
      LOWORD(v440[7]) = 2048;
      *(v9 + 222) = v7;
      _os_log_send_and_compose_impl(v286, &v412, &v427, 80, &dword_1E1C61000, v284, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_438:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v287 = MEMORY[0x1E69E9C10];
      v288 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v288)
      {
        v289 = 3;
      }

      else
      {
        v289 = 2;
      }

      *(&v440[3] + 2) = 468;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v19;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v7;
      _os_log_send_and_compose_impl(v289, &v412, &v427, 80, &dword_1E1C61000, v287, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_442:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v290 = MEMORY[0x1E69E9C10];
      v291 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v291)
      {
        v292 = 3;
      }

      else
      {
        v292 = 2;
      }

      *(&v440[3] + 2) = 468;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v8;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v5;
      _os_log_send_and_compose_impl(v292, &v412, &v427, 80, &dword_1E1C61000, v290, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_446:
      *v433 = 0;
      *(v9 + 240) = 0u;
      *(v9 + 256) = 0u;
      *(v9 + 208) = 0u;
      *(v9 + 224) = 0u;
      *(v9 + 192) = 0u;
      v293 = MEMORY[0x1E69E9C10];
      v294 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v419 = 136315906;
      *(v9 + 4) = "operator[]";
      v421 = 1024;
      if (v294)
      {
        v295 = 3;
      }

      else
      {
        v295 = 2;
      }

      *(v9 + 14) = 468;
      v423 = 2048;
      *(v9 + 20) = v20;
      v425 = 2048;
      *(v9 + 30) = v20;
      _os_log_send_and_compose_impl(v295, v433, v440, 80, &dword_1E1C61000, v293, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_450:
      *v433 = 0;
      v14 = &v419;
      v441 = 0u;
      v442 = 0u;
      memset(v440, 0, sizeof(v440));
      v296 = MEMORY[0x1E69E9C10];
      v297 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v419 = 136315906;
      v420 = "operator[]";
      v421 = 1024;
      if (v297)
      {
        v298 = 3;
      }

      else
      {
        v298 = 2;
      }

      v422 = 468;
      v423 = 2048;
      v424 = v20;
      v425 = 2048;
      *v426 = v20;
      _os_log_send_and_compose_impl(v298, v433, v440, 80, &dword_1E1C61000, v296, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v419, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_454:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v299 = MEMORY[0x1E69E9C10];
      v300 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v300)
      {
        v301 = 3;
      }

      else
      {
        v301 = 2;
      }

      *(&v440[3] + 2) = 476;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v8;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v14;
      _os_log_send_and_compose_impl(v301, &v412, &v427, 80, &dword_1E1C61000, v299, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
LABEL_458:
      v412 = 0;
      v430 = 0u;
      v431 = 0u;
      v428 = 0u;
      v429 = 0u;
      v427 = 0u;
      v302 = MEMORY[0x1E69E9C10];
      v303 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v440[0] = 136315906;
      *&v440[1] = "operator[]";
      LOWORD(v440[3]) = 1024;
      if (v303)
      {
        v304 = 3;
      }

      else
      {
        v304 = 2;
      }

      *(&v440[3] + 2) = 476;
      HIWORD(v440[4]) = 2048;
      *&v440[5] = v19;
      LOWORD(v440[7]) = 2048;
      *(&v440[7] + 2) = v14;
      _os_log_send_and_compose_impl(v304, &v412, &v427, 80, &dword_1E1C61000, v302, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
      _os_crash_msg();
      __break(1u);
      goto LABEL_462;
    }

    re::StringID::invalid(&v427);
    v416 = 0;
    v417 = 0;
    v418 = 0;
    if (v427)
    {
      if (v427)
      {
      }
    }

    v70 = *(v8 + 24);
    if (!v70)
    {
      LODWORD(v398) = 0;
      v402 = 0;
      v396 = 0;
      LODWORD(v75) = *(v8 + 44);
      v76 = (3 * v75);
      v46 = v76;
      v77 = v76;
      goto LABEL_133;
    }

    v71 = (*(v8 + 32) + 72);
    while (!*(v71 - 6))
    {
      v71 += 17;
      if (!--v70)
      {
        LODWORD(v398) = 0;
        v402 = 0;
        v20 = 0;
        goto LABEL_103;
      }
    }
  }

  LODWORD(v398) = *v71 != 0;
  v402 = v71[3] != 0;
  v20 = v71[6] != 0;
LABEL_103:
  v84 = 0;
  v5 = 0;
  v85 = 0;
  do
  {
    v7 = v417;
    if (v417 <= v85)
    {
      goto LABEL_430;
    }

    v69 = re::StringID::operator=((v418 + v84), (*(v8 + 32) + v5));
    v85 = (v85 + 1);
    v5 += 136;
    v84 += 16;
  }

  while (v85 < *(v8 + 24));
  LODWORD(v75) = *(v8 + 44);
  v77 = (3 * v75);
  v46 = v77;
  v76 = v77 << v398;
  if (v402)
  {
    v76 += v77;
    if ((v20 & 1) == 0)
    {
      v396 = 0;
      v70 = 0;
      v402 = 1;
      goto LABEL_133;
    }
  }

  else if (!v20)
  {
    goto LABEL_132;
  }

  v396 = 1;
  v70 = (3 * v75);
LABEL_133:
  v5 = v70 + v76;
  v385 = v77;
  if (v5)
  {
    v95 = (*(*v48 + 32))(v48, 40 * v5, 8);
    if (!v95)
    {
      goto LABEL_495;
    }

    v97 = v95;
    v98 = v95;
    v99 = v5 - 1;
    if (v5 != 1)
    {
      v98 = v95;
      do
      {
        *(v98 + 4) = 0;
        *(v98 + 1) = 0;
        *(v98 + 2) = 0;
        *v98 = 0;
        *(v98 + 6) = 0;
        v98 = (v98 + 40);
        --v99;
      }

      while (v99);
    }

    *(v98 + 4) = 0;
    *(v98 + 1) = 0;
    *(v98 + 2) = 0;
    *v98 = 0;
    *(v98 + 6) = 0;
  }

  else
  {
    v97 = 0;
  }

  if (!v403)
  {
    goto LABEL_178;
  }

  v8 = 0;
  v388 = 6 * v75;
  v9 = 40;
  do
  {
    v14 = *(v404 + 24);
    if (v14 <= v8)
    {
      goto LABEL_454;
    }

    v100 = (*(v404 + 32) + 136 * v8);
    v7 = v100[3];
    if (!v7)
    {
      goto LABEL_177;
    }

    for (i = 0; i != v7; ++i)
    {
      v102 = v100[6];
      if (v102 <= i)
      {
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v203 = MEMORY[0x1E69E9C10];
        v204 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v204)
        {
          v205 = 3;
        }

        else
        {
          v205 = 2;
        }

        *(&v440[3] + 2) = 476;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = i;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v102;
        _os_log_send_and_compose_impl(v205, &v412, &v427, 80, &dword_1E1C61000, v203, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_330:
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v206 = MEMORY[0x1E69E9C10];
        v207 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v207)
        {
          v208 = 3;
        }

        else
        {
          v208 = 2;
        }

        *(&v440[3] + 2) = 476;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = i;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v102;
        _os_log_send_and_compose_impl(v208, &v412, &v427, 80, &dword_1E1C61000, v206, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_334:
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v209 = MEMORY[0x1E69E9C10];
        v210 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v210)
        {
          v211 = 3;
        }

        else
        {
          v211 = 2;
        }

        *(&v440[3] + 2) = 476;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = i;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v102;
        _os_log_send_and_compose_impl(v211, &v412, &v427, 80, &dword_1E1C61000, v209, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_338:
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v212 = MEMORY[0x1E69E9C10];
        v213 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v213)
        {
          v214 = 3;
        }

        else
        {
          v214 = 2;
        }

        *(&v440[3] + 2) = 476;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = i;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v102;
        _os_log_send_and_compose_impl(v214, &v412, &v427, 80, &dword_1E1C61000, v212, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_342:
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v215 = MEMORY[0x1E69E9C10];
        v216 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v216)
        {
          v217 = 3;
        }

        else
        {
          v217 = 2;
        }

        *(&v440[3] + 2) = 468;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = v19;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v5;
        _os_log_send_and_compose_impl(v217, &v412, &v427, 80, &dword_1E1C61000, v215, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_346:
        v412 = 0;
        v104 = &v419;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v218 = MEMORY[0x1E69E9C10];
        v219 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v219)
        {
          v220 = 3;
        }

        else
        {
          v220 = 2;
        }

        *(&v440[3] + 2) = 468;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = v5;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v9;
        _os_log_send_and_compose_impl(v220, &v412, &v427, 80, &dword_1E1C61000, v218, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_350:
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v221 = MEMORY[0x1E69E9C10];
        v222 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v222)
        {
          v223 = 3;
        }

        else
        {
          v223 = 2;
        }

        *(&v440[3] + 2) = 476;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = i;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v104;
        _os_log_send_and_compose_impl(v223, &v412, &v427, 80, &dword_1E1C61000, v221, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_354:
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v224 = MEMORY[0x1E69E9C10];
        v225 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v225)
        {
          v226 = 3;
        }

        else
        {
          v226 = 2;
        }

        *(&v440[3] + 2) = 476;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = i;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v104;
        _os_log_send_and_compose_impl(v226, &v412, &v427, 80, &dword_1E1C61000, v224, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_358:
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v227 = MEMORY[0x1E69E9C10];
        v228 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v228)
        {
          v229 = 3;
        }

        else
        {
          v229 = 2;
        }

        *(&v440[3] + 2) = 476;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = i;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v104;
        _os_log_send_and_compose_impl(v229, &v412, &v427, 80, &dword_1E1C61000, v227, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_362:
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v230 = MEMORY[0x1E69E9C10];
        v231 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v231)
        {
          v232 = 3;
        }

        else
        {
          v232 = 2;
        }

        *(&v440[3] + 2) = 476;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = i;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v104;
        _os_log_send_and_compose_impl(v232, &v412, &v427, 80, &dword_1E1C61000, v230, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
LABEL_366:
        v412 = 0;
        v430 = 0u;
        v431 = 0u;
        v428 = 0u;
        v429 = 0u;
        v427 = 0u;
        v233 = MEMORY[0x1E69E9C10];
        v234 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v440[0] = 136315906;
        *&v440[1] = "operator[]";
        LOWORD(v440[3]) = 1024;
        if (v234)
        {
          v235 = 3;
        }

        else
        {
          v235 = 2;
        }

        *(&v440[3] + 2) = 476;
        HIWORD(v440[4]) = 2048;
        *&v440[5] = i;
        LOWORD(v440[7]) = 2048;
        *(&v440[7] + 2) = v104;
        _os_log_send_and_compose_impl(v235, &v412, &v427, 80, &dword_1E1C61000, v233, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v440, 38, v380, v381);
        _os_crash_msg();
        __break(1u);
        goto LABEL_370;
      }

      v103 = *(v100[7] + 4 * i);
      if (fabsf(v103) >= 0.00001)
      {
        v102 = v100[3];
        if (v102 <= i)
        {
          goto LABEL_334;
        }

        v19 = *(v100[4] + 4 * i);
        if (v5 <= v19)
        {
          goto LABEL_342;
        }

        *&v427 = __PAIR64__(LODWORD(v103), v8);
      }
    }

    v19 = v46;
    if (v398)
    {
      for (i = 0; i != v7; ++i)
      {
        v104 = v100[9];
        if (v104 <= i)
        {
          goto LABEL_350;
        }

        v105 = *(v100[10] + 4 * i);
        if (fabsf(v105) >= 0.00001)
        {
          v104 = v100[3];
          if (v104 <= i)
          {
            goto LABEL_374;
          }

          v104 = (*(v100[4] + 4 * i) + v46);
          if (v5 <= v104)
          {
            goto LABEL_382;
          }

          *&v427 = __PAIR64__(LODWORD(v105), v8);
        }
      }

      v19 = v388;
    }

    if (v402)
    {
      for (i = 0; i != v7; ++i)
      {
        v104 = v100[12];
        if (v104 <= i)
        {
          goto LABEL_358;
        }

        v106 = *(v100[13] + 4 * i);
        if (fabsf(v106) >= 0.00001)
        {
          v104 = v100[3];
          if (v104 <= i)
          {
            goto LABEL_390;
          }

          v104 = (*(v100[4] + 4 * i) + v19);
          if (v5 <= v104)
          {
            goto LABEL_398;
          }

          *&v427 = __PAIR64__(LODWORD(v106), v8);
        }
      }

      v19 = (v19 + v46);
    }

    if (v396)
    {
      i = 0;
      do
      {
        v104 = v100[15];
        if (v104 <= i)
        {
          goto LABEL_366;
        }

        v107 = *(v100[16] + 4 * i);
        if (fabsf(v107) >= 0.00001)
        {
          v104 = v100[3];
          if (v104 <= i)
          {
            goto LABEL_406;
          }

          v104 = (*(v100[4] + 4 * i) + v19);
          if (v5 <= v104)
          {
            goto LABEL_414;
          }

          *&v427 = __PAIR64__(LODWORD(v107), v8);
        }
      }

      while (v7 != ++i);
    }

LABEL_177:
    ++v8;
  }

  while (v8 != v403);
LABEL_178:
  if (v5)
  {
    v108 = 0;
    v109 = 0;
    v110 = (v97 + 16);
    v111 = v5;
    v112 = v385;
    do
    {
      v114 = *v110;
      v110 += 5;
      v113 = v114;
      if (v114)
      {
        ++v108;
      }

      v109 += (v113 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      --v111;
    }

    while (v111);
    v20 = 4 * v108;
    v8 = 4 * v109;
  }

  else
  {
    v8 = 0;
    v20 = 0;
    v112 = v385;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL;
  v405 = 0;
  v406 = 0;
  v407 = 0;
  v115 = 0;
  v116 = v5 - v112;
  if (v5 > v112)
  {
    v117 = 0;
    v118 = 0;
    v7 = v406;
    v119 = v407;
    do
    {
      v19 = v117 / 3;
      if (v7 <= v117 / 3)
      {
        goto LABEL_438;
      }

      v118 += *(v119 + v19) ^ 1;
      *(v119 + v19) = 1;
      ++v117;
    }

    while (v116 != v117);
    v115 = 4 * v118;
  }

  v412 = 12;
  v413 = v8;
  *&v414 = v20;
  *(&v414 + 1) = v20 + 4;
  *&v415 = v8;
  *(&v415 + 1) = v115;
  v409.i64[0] = 16;
  v409.i64[1] = v8;
  v410 = vandq_s8(vaddq_s64(vdupq_n_s64(v20), xmmword_1E30B4950), vdupq_n_s64(0xFFFFFFFFFFFFFFF0));
  *&v411 = v8;
  *(&v411 + 1) = (v115 + 15) & 0xFFFFFFFFFFFFFFF0;
  v431 = 0u;
  v432 = 0u;
  v429 = 0u;
  v430 = 0u;
  v427 = 0u;
  v428 = 0u;
  v19 = v428;
  v120 = v429;
  v121 = v430;
  v122 = v431;
  v7 = v432;
  bzero(v428, v8);
  bzero(v122, v8);
  v123 = (3 * *(v404 + 44));
  v124 = v427;
  v125 = (v123 + 3) & 0xFFFFFFFC;
  *v427 = (v403 + 3) >> 2;
  *(v124 + 4) = v123;
  *(v124 + 8) = v125;
  if (v5)
  {
    v126 = 0;
    v127 = v19;
    do
    {
      v128 = v97 + 40 * v126;
      v129 = *(v128 + 2);
      if (v129)
      {
        v130 = 0;
        *v120 = v126 % v123 + v126 / v123 * v125;
        *v121 = (v127 - v19) >> 2;
        v131 = (*(v128 + 4) + 4);
        v132 = v129;
        do
        {
          *(v127 + v130) = *v131;
          *&v122[v130] = *(v131 - 1);
          v131 += 2;
          v130 += 4;
          --v132;
        }

        while (v132);
        ++v120;
        ++v121;
        v133 = 4 * (v129 & 3);
        v127 = v127 - v133 + v130 + 16;
        v122 = &v122[v130 - v133 + 16];
      }

      ++v126;
    }

    while (v126 != v5);
  }

  else
  {
    v127 = v19;
  }

  *v121 = (v127 - v19) >> 2;
  v9 = &v419;
  if (v116 >= 3)
  {
    v134 = 0;
    v20 = v406;
    v135 = v407;
    v136 = (v5 - v112) / 3;
    if (v136 <= 1)
    {
      v136 = 1;
    }

    while (v20 != v134)
    {
      if (*(v135 + v134) == 1)
      {
        *v7 = v112 % v123 + v112 / v123 * v125;
        v7 += 4;
      }

      ++v134;
      v112 = (v112 + 3);
      if (v136 == v134)
      {
        goto LABEL_206;
      }
    }

    goto LABEL_446;
  }

LABEL_206:
  v137 = *v391;
  if (!*a1)
  {
    v20 = *(v137 + 16);
    v144 = v393;
    if (v20 <= v393)
    {
      goto LABEL_529;
    }

    re::FixedArray<float>::operator=((*(v137 + 24) + 184 * v393 + 16), &v416);
    v145 = v393;
    v20 = *(v137 + 16);
    if (v20 > v393)
    {
      v146 = (*(v137 + 24) + 184 * v393);
      v146[12] = v398;
      v146[13] = v402;
      v146[14] = v396;
      goto LABEL_215;
    }

    goto LABEL_537;
  }

  v20 = *(v137 + 16);
  v138 = v393;
  if (v20 <= v393)
  {
    goto LABEL_505;
  }

  v139 = *(v137 + 24) + 336 * v393;
  LOBYTE(v419) = 0;
  HIDWORD(v424) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v419, v139 + 56);
  *&v426[2] = *(v139 + 88);
  re::BufferSlice::buffer(&v419, v140);
  v141 = v393;
  v20 = *(v137 + 16);
  if (v20 <= v393)
  {
    goto LABEL_513;
  }

  re::FixedArray<float>::operator=((*(v137 + 24) + 336 * v393 + 24), &v416);
  v142 = v393;
  v20 = *(v137 + 16);
  if (v20 <= v393)
  {
    goto LABEL_521;
  }

  v143 = (*(v137 + 24) + 336 * v393);
  v143[48] = v398;
  v143[49] = v402;
  v143[50] = v396;
  if (HIDWORD(v424) != -1)
  {
    (off_1F5D05EF0[HIDWORD(v424)])(v440, &v419);
  }

LABEL_215:
  if (v405 && v406)
  {
    (*(*v405 + 40))();
  }

  if (v5)
  {
    v147 = 40 * v5;
    v148 = (v97 + 32);
    do
    {
      v149 = *(v148 - 4);
      if (v149)
      {
        if (*v148)
        {
          (*(*v149 + 40))(v149);
        }

        *v148 = 0;
        *(v148 - 3) = 0;
        *(v148 - 2) = 0;
        *(v148 - 4) = 0;
        ++*(v148 - 2);
      }

      v148 += 5;
      v147 -= 40;
    }

    while (v147);
  }

LABEL_226:
  result = re::FixedArray<re::StringID>::deinit(&v416);
  v151 = *a1[1];
  if (v392)
  {
    *v151 = 1;
  }

  else
  {
    *v151 = 1;
  }

  return result;
}

uint64_t re::BlendShapeModelBuilder::addBlendShapeGroup(uint64_t a1, unint64_t a2, re::BufferSlice *this, uint64_t *a4, uint64_t *a5, char a6, char a7, char a8)
{
  v47 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 8);
  v10 = *v9;
  v11 = *(*v9 + 16);
  if (v11 <= a2)
  {
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v37 = 468;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = v11;
    _os_log_send_and_compose_impl(v25, &v33, &v42, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v29, v31);
    _os_crash_msg();
    __break(1u);
LABEL_11:
    v33 = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v26 = MEMORY[0x1E69E9C10];
    v27 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "operator[]";
    v36 = 1024;
    if (v27)
    {
      v28 = 3;
    }

    else
    {
      v28 = 2;
    }

    v37 = 468;
    v38 = 2048;
    v39 = a2;
    v40 = 2048;
    v41 = v11;
    _os_log_send_and_compose_impl(v28, &v33, &v42, 80, &dword_1E1C61000, v26, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v34, 38, v29, v31);
    _os_crash_msg();
    __break(1u);
  }

  v14 = a5[1];
  v15 = v10[3];
  if (*(this + 9) < 0xCu)
  {
    v21 = 0;
    v20 = 0;
  }

  else
  {
    v18 = a4;
    v19 = re::BufferSlice::contents(this);
    a4 = v18;
    v20 = *v19;
    v21 = *(v19 + 8);
  }

  v11 = v10[8];
  if (v11 <= a2)
  {
    goto LABEL_11;
  }

  v22 = v15 + 336 * a2;
  v30 = v20;
  re::StringID::operator=((v10[9] + 16 * a2), a4);
  *v22 = v14;
  *(v22 + 8) = v30;
  *(v22 + 16) = v21;
  re::FixedArray<re::StringID>::operator=((v22 + 24), a5);
  *(v22 + 48) = a6;
  *(v22 + 49) = a7;
  *(v22 + 50) = a8;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v22 + 96, this + 40);
  *(v22 + 128) = *(this + 9);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v22 + 136, this);
  *(v22 + 168) = *(this + 4);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v22 + 176, this + 80);
  *(v22 + 208) = *(this + 14);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v22 + 216, this + 120);
  *(v22 + 248) = *(this + 19);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v22 + 256, this + 160);
  *(v22 + 288) = *(this + 24);
  result = std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v22 + 296, this + 200);
  *(v22 + 328) = *(this + 29);
  return result;
}

void **re::BlendShapeDeformer::init(void **result, uint64_t a2)
{
  v136 = *MEMORY[0x1E69E9840];
  if ((result[11] & 1) == 0)
  {
    v2 = result;
    *(result + 88) = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      result = *(v3 + 208);
      if (result)
      {
        v4 = *(v3 + 305);
        result = [result supportsFamily:1004];
        if (v4 && result != 0)
        {
          v101 = 0;
          v104 = 0;
          memset(v107, 0, sizeof(v107));
          v108 = 0;
          v112 = 0;
          v113 = 0;
          v110 = 0;
          v109 = 0;
          v111 = 0;
          v86 = 0;
          v89 = 0;
          memset(v92, 0, sizeof(v92));
          v93 = 0;
          v97 = 0;
          v98 = 0;
          v95 = 0;
          v94 = 0;
          v96 = 0;
          v71 = 0;
          v74 = 0;
          memset(v77, 0, sizeof(v77));
          v78 = 0;
          v82 = 0;
          v83 = 0;
          v80 = 0;
          v79 = 0;
          v81 = 0;
          v56 = 0;
          v59 = 0;
          memset(v62, 0, sizeof(v62));
          v63 = 0;
          v67 = 0;
          v68 = 0;
          v65 = 0;
          v64 = 0;
          v66 = 0;
          v41 = 0;
          v44 = 0;
          memset(v47, 0, sizeof(v47));
          v48 = 0;
          v52 = 0;
          v53 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v26 = 0;
          v29 = 0;
          memset(v32, 0, sizeof(v32));
          v33 = 0;
          v37 = 0;
          v38 = 0;
          v34 = 0;
          v35 = 0;
          v36 = 0;
          ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v99);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 1, ComputePipelineState);
          v12 = re::getOrCreateComputePipelineState(v3, &v84);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 2, v12);
          v13 = re::getOrCreateComputePipelineState(v3, &v69);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 3, v13);
          v14 = re::getOrCreateComputePipelineState(v3, &v54);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 4, v14);
          v15 = re::getOrCreateComputePipelineState(v3, &v39);
          NS::SharedPtr<MTL::Buffer>::operator=(v2 + 5, v15);
          v16 = re::getOrCreateComputePipelineState(v3, &v24);
          v17 = NS::SharedPtr<MTL::Buffer>::operator=(v2 + 6, v16);
          *(v2 + 89) = 1;
          v18 = re::DeformerFeatureFlags::enableStitchableDeformation(v17);
          if (v18)
          {
            v19 = 0;
            v20 = v2 + 7;
            do
            {
              if (!*v20)
              {
                v116[0] = 0;
                v119 = 0;
                memset(v122, 0, sizeof(v122));
                v123 = 0;
                v124 = 0;
                v125 = 0;
                v126 = 1;
                v128 = 0;
                v129 = 0;
                v130 = 0;
                re::DynamicString::setCapacity(&v127, 0);
                memset(v135, 0, sizeof(v135));
                v134 = 0u;
                v133 = 0u;
                v131 = 33;
                v132 = v19;
                re::DynamicArray<re::TechniqueFunctionConstant>::add(v122, &v127);
                MetalFunction = re::getOrCreateMetalFunction(v3, &v114, v116, v22);
                NS::SharedPtr<MTL::Buffer>::operator=(v20, MetalFunction);
                if (v114 && (v115 & 1) != 0)
                {
                  (*(*v114 + 40))();
                }

                if (v127 && (v128 & 1) != 0)
                {
                  (*(*v127 + 40))(v127, v129);
                }

                v18 = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v122);
                if (v119 == 1)
                {
                  v18 = v120;
                  if (v120)
                  {
                    if (BYTE8(v120))
                    {
                      v18 = (*(*v120 + 40))();
                    }

                    v120 = 0u;
                    v121 = 0u;
                  }
                }

                if (v116[0] == 1)
                {
                  v18 = v117;
                  if (v117)
                  {
                    if (v118)
                    {
                      v18 = (*(*v117 + 40))();
                    }
                  }
                }
              }

              ++v19;
              ++v20;
            }

            while (v19 != 4);
          }

          if (v37)
          {

            v37 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v32);
          if (v29 == 1 && v30)
          {
            if (BYTE8(v30))
            {
              (*(*v30 + 40))();
            }

            v30 = 0u;
            v31 = 0u;
          }

          if (v26 == 1 && v27)
          {
            if (BYTE8(v27))
            {
              (*(*v27 + 40))();
            }

            v28 = 0u;
            v27 = 0u;
          }

          if (v24 && (v25 & 1) != 0)
          {
            (*(*v24 + 40))();
          }

          if (v52)
          {

            v52 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v47);
          if (v44 == 1 && v45)
          {
            if (BYTE8(v45))
            {
              (*(*v45 + 40))();
            }

            v45 = 0u;
            v46 = 0u;
          }

          if (v41 == 1 && v42)
          {
            if (BYTE8(v42))
            {
              (*(*v42 + 40))();
            }

            v43 = 0u;
            v42 = 0u;
          }

          if (v39 && (v40 & 1) != 0)
          {
            (*(*v39 + 40))();
          }

          if (v67)
          {

            v67 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v62);
          if (v59 == 1 && v60)
          {
            if (BYTE8(v60))
            {
              (*(*v60 + 40))();
            }

            v60 = 0u;
            v61 = 0u;
          }

          if (v56 == 1 && v57)
          {
            if (BYTE8(v57))
            {
              (*(*v57 + 40))();
            }

            v58 = 0u;
            v57 = 0u;
          }

          if (v54 && (v55 & 1) != 0)
          {
            (*(*v54 + 40))();
          }

          if (v82)
          {

            v82 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v77);
          if (v74 == 1 && v75)
          {
            if (BYTE8(v75))
            {
              (*(*v75 + 40))();
            }

            v75 = 0u;
            v76 = 0u;
          }

          if (v71 == 1 && v72)
          {
            if (BYTE8(v72))
            {
              (*(*v72 + 40))();
            }

            v73 = 0u;
            v72 = 0u;
          }

          if (v69 && (v70 & 1) != 0)
          {
            (*(*v69 + 40))();
          }

          if (v97)
          {

            v97 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v92);
          if (v89 == 1 && v90)
          {
            if (BYTE8(v90))
            {
              (*(*v90 + 40))();
            }

            v90 = 0u;
            v91 = 0u;
          }

          if (v86 == 1 && v87)
          {
            if (BYTE8(v87))
            {
              (*(*v87 + 40))();
            }

            v88 = 0u;
            v87 = 0u;
          }

          if (v84 && (v85 & 1) != 0)
          {
            (*(*v84 + 40))();
          }

          if (v112)
          {

            v112 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v107);
          if (v104 == 1 && v105)
          {
            if (BYTE8(v105))
            {
              (*(*v105 + 40))();
            }

            v105 = 0u;
            v106 = 0u;
          }

          if (v101 == 1 && v102)
          {
            if (BYTE8(v102))
            {
              (*(*v102 + 40))();
            }

            v103 = 0u;
            v102 = 0u;
          }

          result = v99;
          if (v99)
          {
            if (v100)
            {
              return (*(*v99 + 5))();
            }
          }
        }
      }
    }
  }

  return result;
}

re::DeformerFeatureFlags *re::BlendShapeDeformer::addDeformationInstance@<X0>(re::DeformerFeatureFlags *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 2;
  if (a2[1])
  {
    v4 = 6;
  }

  v5 = 8;
  if (!a2[2])
  {
    v5 = 0;
  }

  v6 = v5 | v4;
  v7 = 16;
  if (!a2[3])
  {
    v7 = 0;
  }

  v8 = v6 | v7;
  v9 = *a2;
  v10 = *(result + 89) ^ 1;
  *a3 = 0xFFFFFFFFLL;
  *(a3 + 8) = v8;
  *(a3 + 16) = v8;
  if (v10 | v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
    if (a2[4] == 1)
    {
      result = re::DeformerFeatureFlags::enableStitchableDeformation(result);
      if (result)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }
    }
  }

  *(a3 + 24) = v11;
  *(a3 + 32) = -1;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  return result;
}

void *re::BlendShapeDeformer::allocateBuffers(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, re::PerFrameGPUDataAllocator *a4, uint64_t *a5, uint64_t a6)
{
  v8 = a5;
  v120 = *MEMORY[0x1E69E9840];
  v94 = *a5;
  v11 = *(*a5 + 48);
  re::globalAllocators(a1);
  v12 = (*(*a2 + 32))(a2, 48, 8);
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  v13 = re::globalAllocators(v12)[2];
  *&v115 = &unk_1F5D05F10;
  *(&v116 + 1) = v13;
  *&v117 = &v115;
  v14 = (*(*a2 + 16))(a2, v12, &v115);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v115);
  re::FixedArray<re::Slice<unsigned int>>::init<>(v14, a2, v11);
  v102 = v14;
  v90 = a2;
  re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(v14 + 3, a2, v11);
  v92 = v11;
  if (v11)
  {
    v15 = 0;
    v101 = 0;
    v16 = 0;
    v95 = a4;
    v91 = v8;
    do
    {
      v17 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v94 + 8, v16);
      v19 = *(v17 + 8);
      v20 = v8[6];
      if (v20 <= v19)
      {
        re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v17 + 8), v20);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v80, v84);
        __break(1u);
LABEL_47:
        re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v24);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v81, v85);
        __break(1u);
LABEL_48:
        *&v104 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v56 = MEMORY[0x1E69E9C10];
        v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v57)
        {
          v58 = 3;
        }

        else
        {
          v58 = 2;
        }

        v110 = 476;
        v111 = 2048;
        v112 = v11;
        v113 = 2048;
        v114 = v7;
        _os_log_send_and_compose_impl(v58, &v104, &v115, 80, &dword_1E1C61000, v56, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v87, v88);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        *&v104 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v59 = MEMORY[0x1E69E9C10];
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        v110 = 476;
        v111 = 2048;
        v112 = v8;
        v113 = 2048;
        v114 = v11;
        _os_log_send_and_compose_impl(v61, &v104, &v115, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v87, v88);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        *&v104 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v62 = MEMORY[0x1E69E9C10];
        v63 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v63)
        {
          v64 = 3;
        }

        else
        {
          v64 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v16;
        v113 = 2048;
        v114 = v11;
        _os_log_send_and_compose_impl(v64, &v104, &v115, 80, &dword_1E1C61000, v62, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v87, v88);
        _os_crash_msg();
        __break(1u);
LABEL_60:
        *&v104 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v65 = MEMORY[0x1E69E9C10];
        v66 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v66)
        {
          v67 = 3;
        }

        else
        {
          v67 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v16;
        v113 = 2048;
        v114 = v6;
        _os_log_send_and_compose_impl(v67, &v104, &v115, 80, &dword_1E1C61000, v65, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v87, v88);
        _os_crash_msg();
        __break(1u);
LABEL_64:
        *&v104 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v68 = MEMORY[0x1E69E9C10];
        v69 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v69)
        {
          v70 = 3;
        }

        else
        {
          v70 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v16;
        v113 = 2048;
        v114 = v11;
        _os_log_send_and_compose_impl(v70, &v104, &v115, 80, &dword_1E1C61000, v68, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v87, v88);
        _os_crash_msg();
        __break(1u);
LABEL_68:
        *&v104 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v71 = MEMORY[0x1E69E9C10];
        v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v72)
        {
          v73 = 3;
        }

        else
        {
          v73 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v7;
        v113 = 2048;
        v114 = v11;
        _os_log_send_and_compose_impl(v73, &v104, &v115, 80, &dword_1E1C61000, v71, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v87, v88);
        _os_crash_msg();
        __break(1u);
LABEL_72:
        *&v104 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v74 = MEMORY[0x1E69E9C10];
        v75 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v75)
        {
          v76 = 3;
        }

        else
        {
          v76 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v16;
        v113 = 2048;
        v114 = v11;
        _os_log_send_and_compose_impl(v76, &v104, &v115, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v87, v88);
        _os_crash_msg();
        __break(1u);
LABEL_76:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v77 = MEMORY[0x1E69E9C10];
        v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v78)
        {
          v79 = 3;
        }

        else
        {
          v79 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v99;
        v113 = 2048;
        v114 = a4;
        _os_log_send_and_compose_impl(v79, &v106, &v115, 80, &dword_1E1C61000, v77, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v87, v88);
        _os_crash_msg();
        __break(1u);
LABEL_80:
        re::internal::assertLog(6, v29, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 4, v6);
        _os_crash("assertion failure: (!overflow) Size overflow in allocateArray. Element size = %zu, count = %zu", v82, v86);
        __break(1u);
LABEL_81:
        re::internal::assertLog(5, v29, "assertion failure: '%s' (%s:line %i) Unsupported execution mode: %u.", "!Unreachable code", "allocateBuffers", 1172, a4);
        _os_crash("assertion failure: (!Unreachable code) Unsupported execution mode: %u.", v83);
        __break(1u);
      }

      v21 = v17;
      a4 = v8[5];
      v22 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](v8[1], v19);
      v6 = *(v21 + 16);
      v24 = *(v22 + 336);
      if (v24 <= v6)
      {
        goto LABEL_47;
      }

      v25 = **(v22 + 344);
      v11 = *(v22 + 392);
      v7 = v25[5];
      if (v7 <= v11)
      {
        goto LABEL_48;
      }

      v8 = *(v25[6] + 4 * v11);
      v11 = v25[2];
      if (v11 <= v8)
      {
        goto LABEL_52;
      }

      v26 = (a4 + 312 * v19);
      v27 = *(v22 + 328);
      v11 = *(*(v22 + 352) + 24);
      v28 = v25[3];
      LOBYTE(v115) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 1u);
      v98 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v115) + 20);
      v30 = v27 + (v6 << 6);
      v32 = *(v30 + 16);
      v6 = v30 + 16;
      LOBYTE(v31) = v32;
      if ((v32 & 4) != 0)
      {
        LOBYTE(v115) = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 2u);
        v33 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v115) + 20);
        v31 = *v6;
      }

      else
      {
        v33 = 0;
      }

      a4 = v95;
      v103 = v33;
      if ((v31 & 8) != 0)
      {
        LOBYTE(v115) = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 3u);
        v7 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v115) + 20);
        if ((*v6 & 0x10) != 0)
        {
LABEL_12:
          LOBYTE(v115) = 4;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 4u);
          v34 = *(v26[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 7, &v115) + 20);
          goto LABEL_15;
        }
      }

      else
      {
        v7 = 0;
        if ((v31 & 0x10) != 0)
        {
          goto LABEL_12;
        }
      }

      v34 = 0;
LABEL_15:
      v35 = v102;
      if (v11)
      {
        v6 = v102[1];
        if (v6 <= v16)
        {
          goto LABEL_60;
        }

        *(v102[2] + v15) = *v11;
      }

      v11 = v102[1];
      if (v11 <= v16)
      {
        goto LABEL_56;
      }

      v36 = *(v28 + 336 * v8) + 3;
      v6 = v36 & 0xFFFFFFFFFFFFFFFCLL;
      v100 = v34;
      if (*(v102[2] + v15 + 8) != (v36 & 0xFFFFFFFFFFFFFFFCLL))
      {
        v37 = 4 * v6;
        if (v6)
        {
          if (v36 >> 62 || v37 >= 0xFFFFFFFFFFFFFFF0)
          {
            goto LABEL_80;
          }

          v38 = (*(*v90 + 32))(v90, (v37 + 16) | 3, 0);
          v39 = ((v38 + 19) & 0xFFFFFFFFFFFFFFFCLL);
          *(v39 - 2) = v6;
          *(v39 - 1) = v38;
          bzero(v39, 4 * v6);
          v35 = v102;
          v11 = v102[1];
        }

        else
        {
          v39 = 0;
        }

        if (v11 <= v16)
        {
          goto LABEL_64;
        }

        v40 = v35[2] + v15;
        v41 = *(v40 + 8);
        if (4 * v41 >= 4 * v6)
        {
          v42 = 4 * v6;
        }

        else
        {
          v42 = 4 * v41;
        }

        memcpy(v39, *v40, v42);
        bzero(v39 + v42, v37 - v42);
        v11 = v102[1];
        if (v11 <= v16)
        {
          goto LABEL_72;
        }

        v43 = (v102[2] + v15);
        *v43 = v39;
        v43[1] = v6;
        v34 = v100;
      }

      v99 = v16;
      v44 = (v98 + 15) & 0x1FFFFFFF0;
      v45 = v7;
      v46 = ((v103 + 15) & 0x1FFFFFFF0) + v44;
      v97 = v45;
      v47 = (v45 + 15) & 0x1FFFFFFF0;
      v48 = v47 + ((v34 + 15) & 0x1FFFFFFF0);
      v96 = v47;
      if (v95 == 1)
      {
        v16 = ((v103 + 15) & 0x1FFFFFFF0) + v44;
        a4 = a3;
        re::PerFrameGPUDataAllocator::perFrameAllocGpuBuffer(&v115, a3, v48 + v46, 0x10uLL);
        v11 = v102[1];
        v7 = v99;
        if (v11 <= v99)
        {
          goto LABEL_68;
        }

        v49 = v115;
        v6 = DWORD2(v115);
        v11 = v116;
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuDataArray<float>(&v104, a3, *(v102[2] + v15), *(v102[2] + v15 + 8));
        a4 = v102[4];
        if (a4 <= v99)
        {
          goto LABEL_76;
        }

        v50 = v102[5] + v101;
        *v50 = v104;
        *(v50 + 16) = v105;
        a4 = v95;
        LODWORD(v46) = ((v103 + 15) & 0xFFFFFFF0) + v44;
      }

      else
      {
        if (v95)
        {
          goto LABEL_81;
        }

        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v115, a3, v48 + v46, 0x10uLL);
        v49 = v115;
        v6 = DWORD2(v115);
        v11 = v116;
      }

      *&v115 = v49;
      *(&v115 + 1) = __PAIR64__(v98, v6);
      *&v116 = v11;
      LOBYTE(v107) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 1u);
      v51 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v107);
      re::DeformationVertexBufferState::setOutputBuffer(v26, 1, a4, &v115, v26[16] + 20 * v51 + 4);
      if (v103)
      {
        *&v115 = v49;
        DWORD2(v115) = v6 + v44;
        HIDWORD(v115) = v103;
        *&v116 = v11;
        LOBYTE(v107) = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 2u);
        v52 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v107);
        re::DeformationVertexBufferState::setOutputBuffer(v26, 2, a4, &v115, v26[16] + 20 * v52 + 4);
        LODWORD(v44) = v46;
      }

      if (v97)
      {
        *&v115 = v49;
        DWORD2(v115) = v6 + v44;
        HIDWORD(v115) = v97;
        *&v116 = v11;
        LOBYTE(v107) = 3;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 3u);
        v53 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v107);
        v7 = 20;
        re::DeformationVertexBufferState::setOutputBuffer(v26, 3, a4, &v115, v26[16] + 20 * v53 + 4);
        LODWORD(v44) = v44 + v96;
      }

      else
      {
        v7 = 20;
      }

      if (v100)
      {
        *&v115 = v49;
        DWORD2(v115) = v6 + v44;
        HIDWORD(v115) = v100;
        *&v116 = v11;
        LOBYTE(v107) = 4;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v26, 4u);
        v54 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v26 + 15, &v107);
        re::DeformationVertexBufferState::setOutputBuffer(v26, 4, a4, &v115, v26[16] + 20 * v54 + 4);
      }

      v16 = v99 + 1;
      v101 += 24;
      v15 += 16;
      v8 = v91;
    }

    while (v92 != (v99 + 1));
  }

  *a6 |= 0x1EuLL;
  *(a6 + 9) = 16843009;
  return v102;
}

void re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuDataArray<float>(uint64_t a1, re::PerFrameAllocatorGPU **this, int *a3, uint64_t a4)
{
  v4 = a4;
  *&v8 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(&v19, this, 4 * a4, 4uLL);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  v12 = v22;
  *a1 = v19;
  *(a1 + 8) = v10;
  *(a1 + 12) = v11;
  *(a1 + 16) = v12;
  if (v4)
  {
    v13 = (v9 + v10);
    v14 = v11 >> 2;
    for (i = v11 >> 2; i; --i)
    {
      v16 = *a3++;
      LODWORD(v8) = v16;
      *v13++ = v16;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, *&v7, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v14);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v17, v18);
    __break(1u);
  }
}

void re::BlendShapeDeformer::stitchedFunctionParameters(re *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, unint64_t *a4, void *a5)
{
  v5 = a4;
  v120 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  v8 = *(*a4 + 48);
  re::globalAllocators(a1);
  v9 = (*(*a2 + 32))(a2, 48, 8);
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  v10 = re::globalAllocators(v9)[2];
  *&v117[0] = &unk_1F5D05F68;
  *(&v117[1] + 1) = v10;
  *&v117[2] = v117;
  v11 = (*(*a2 + 16))(a2, v9, v117);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v117);
  re::FixedArray<re::Slice<unsigned int>>::init<>(v11, a2, v8);
  v93 = a2;
  re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(v11 + 3, a2, v8);
  if (v8)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v105 = (a1 + 56);
    v15 = 8;
    v95 = v8;
    v96 = v7;
    v97 = v5;
    v94 = v11;
    do
    {
      v16 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v7 + 8, v14);
      v18 = *(v16 + 8);
      v19 = *(v5 + 48);
      if (v19 <= v18)
      {
        re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, *(v16 + 8), v19);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v85, v88);
        __break(1u);
LABEL_53:
        *&v106 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(v117, 0, sizeof(v117));
        v59 = MEMORY[0x1E69E9C10];
        v60 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v109 = 136315906;
        v110 = "operator[]";
        v111 = 1024;
        if (v60)
        {
          v61 = 3;
        }

        else
        {
          v61 = 2;
        }

        v112 = 476;
        v113 = 2048;
        v114 = v7;
        v115 = 2048;
        v116 = v8;
        _os_log_send_and_compose_impl(v61, &v106, v117, 80, &dword_1E1C61000, v59, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v109, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
LABEL_57:
        *&v106 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(v117, 0, sizeof(v117));
        v14 = MEMORY[0x1E69E9C10];
        v62 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v109 = 136315906;
        v110 = "operator[]";
        v111 = 1024;
        if (v62)
        {
          v63 = 3;
        }

        else
        {
          v63 = 2;
        }

        v112 = 476;
        v113 = 2048;
        v114 = v7;
        v115 = 2048;
        v116 = v8;
        _os_log_send_and_compose_impl(v63, &v106, v117, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v109, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
LABEL_61:
        *&v106 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(v117, 0, sizeof(v117));
        v64 = MEMORY[0x1E69E9C10];
        v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v109 = 136315906;
        v110 = "operator[]";
        v111 = 1024;
        if (v65)
        {
          v66 = 3;
        }

        else
        {
          v66 = 2;
        }

        v112 = 468;
        v113 = 2048;
        v114 = v14;
        v115 = 2048;
        v116 = v8;
        _os_log_send_and_compose_impl(v66, &v106, v117, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v109, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
LABEL_65:
        *&v106 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(v117, 0, sizeof(v117));
        v67 = MEMORY[0x1E69E9C10];
        v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v109 = 136315906;
        v110 = "operator[]";
        v111 = 1024;
        if (v68)
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        v112 = 468;
        v113 = 2048;
        v114 = v14;
        v115 = 2048;
        v116 = v8;
        _os_log_send_and_compose_impl(v69, &v106, v117, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v109, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
LABEL_69:
        v108 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(v117, 0, sizeof(v117));
        v70 = MEMORY[0x1E69E9C10];
        v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v109 = 136315906;
        v110 = "operator[]";
        v111 = 1024;
        if (v71)
        {
          v72 = 3;
        }

        else
        {
          v72 = 2;
        }

        v112 = 468;
        v113 = 2048;
        v114 = v14;
        v115 = 2048;
        v116 = v8;
        _os_log_send_and_compose_impl(v72, &v108, v117, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v109, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
LABEL_73:
        *&v106 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(v117, 0, sizeof(v117));
        v73 = MEMORY[0x1E69E9C10];
        v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v109 = 136315906;
        v110 = "operator[]";
        v111 = 1024;
        if (v74)
        {
          v75 = 3;
        }

        else
        {
          v75 = 2;
        }

        v112 = 468;
        v113 = 2048;
        v114 = v14;
        v115 = 2048;
        v116 = v8;
        _os_log_send_and_compose_impl(v75, &v106, v117, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v109, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
LABEL_77:
        re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v39);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v86, v89);
        __break(1u);
LABEL_78:
        *&v106 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(v117, 0, sizeof(v117));
        v76 = MEMORY[0x1E69E9C10];
        v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v109 = 136315906;
        v110 = "operator[]";
        v111 = 1024;
        if (v77)
        {
          v78 = 3;
        }

        else
        {
          v78 = 2;
        }

        v112 = 468;
        v113 = 2048;
        v114 = v14;
        v115 = 2048;
        v116 = v8;
        _os_log_send_and_compose_impl(v78, &v106, v117, 80, &dword_1E1C61000, v76, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v109, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
LABEL_82:
        *&v106 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(v117, 0, sizeof(v117));
        v79 = MEMORY[0x1E69E9C10];
        v80 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v109 = 136315906;
        v110 = "operator[]";
        v111 = 1024;
        if (v80)
        {
          v81 = 3;
        }

        else
        {
          v81 = 2;
        }

        v112 = 468;
        v113 = 2048;
        v114 = v14;
        v115 = 2048;
        v116 = v8;
        _os_log_send_and_compose_impl(v81, &v106, v117, 80, &dword_1E1C61000, v79, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v109, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
LABEL_86:
        *&v106 = 0;
        v118 = 0u;
        v119 = 0u;
        memset(v117, 0, sizeof(v117));
        v82 = MEMORY[0x1E69E9C10];
        v83 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v109 = 136315906;
        v110 = "operator[]";
        v111 = 1024;
        if (v83)
        {
          v84 = 3;
        }

        else
        {
          v84 = 2;
        }

        v112 = 468;
        v113 = 2048;
        v114 = v14;
        v115 = 2048;
        v116 = v8;
        _os_log_send_and_compose_impl(v84, &v106, v117, 80, &dword_1E1C61000, v82, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v109, 38, v91, v92);
        _os_crash_msg();
        __break(1u);
LABEL_90:
        re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 4, v5);
        _os_crash("assertion failure: (!overflow) Size overflow in allocateArray. Element size = %zu, count = %zu", v87, v90);
        __break(1u);
      }

      if (*v105)
      {
        v20 = *(v5 + 40) + 312 * v18;
        LOBYTE(v117[0]) = 2;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v20, 2u);
        v104 = *(*(v20 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v20 + 56), v117) + 20);
        if (v104)
        {
          if (!*(a1 + 8))
          {
            goto LABEL_50;
          }

          LOBYTE(v117[0]) = 3;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v20, 3u);
          if (*(*(v20 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v20 + 56), v117) + 20))
          {
            if (!*(a1 + 9))
            {
              goto LABEL_50;
            }

            LOBYTE(v117[0]) = 4;
            re::DeformationVertexBufferState::ensureVertexBufferInitialized(v20, 4u);
            if (*(*(v20 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v20 + 56), v117) + 20))
            {
              if (!*(a1 + 10))
              {
                goto LABEL_50;
              }

              v102 = 1;
              v103 = 1;
              v21 = 3;
            }

            else
            {
              v102 = 1;
              v103 = 0;
              v21 = 2;
            }
          }

          else
          {
            v102 = 0;
            v103 = 0;
            v21 = 1;
          }

          v101 = v21;
        }

        else
        {
          v102 = 0;
          v103 = 0;
          v101 = 0;
        }

        v22 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](*(v5 + 8), v18);
        v24 = **(v22 + 344);
        v7 = *(v22 + 392);
        v8 = v24[5];
        if (v8 <= v7)
        {
          goto LABEL_53;
        }

        v7 = *(v24[6] + 4 * v7);
        v8 = v24[2];
        if (v8 <= v7)
        {
          goto LABEL_57;
        }

        v25 = v24[3];
        v26 = *(*(v22 + 352) + 24);
        if (v26)
        {
          v8 = v11[1];
          if (v8 <= v14)
          {
            goto LABEL_78;
          }

          *(v11[2] + v15 - 8) = *v26;
        }

        v8 = v11[1];
        if (v8 <= v14)
        {
          goto LABEL_61;
        }

        v27 = v25 + 336 * v7;
        v28 = *v27 + 3;
        v5 = v28 & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v11[2] + v15) != (v28 & 0xFFFFFFFFFFFFFFFCLL))
        {
          v29 = 4 * v5;
          if (v5)
          {
            if (v28 >> 62 || v29 >= 0xFFFFFFFFFFFFFFF0)
            {
              goto LABEL_90;
            }

            v30 = (*(*v93 + 32))(v93, (v29 + 16) | 3, 0);
            v31 = ((v30 + 19) & 0xFFFFFFFFFFFFFFFCLL);
            *(v31 - 2) = v5;
            *(v31 - 1) = v30;
            bzero(v31, 4 * v5);
            v8 = v11[1];
          }

          else
          {
            v31 = 0;
          }

          if (v8 <= v14)
          {
            goto LABEL_82;
          }

          v32 = (v11[2] + v15);
          v33 = *(v32 - 1);
          v34 = 4 * *v32;
          if (v34 >= 4 * v5)
          {
            v35 = 4 * v5;
          }

          else
          {
            v35 = v34;
          }

          memcpy(v31, v33, v35);
          bzero(v31 + v35, v29 - v35);
          v8 = v11[1];
          if (v8 <= v14)
          {
            goto LABEL_86;
          }

          v36 = (v11[2] + v15);
          *(v36 - 1) = v31;
          *v36 = v5;
          v8 = v11[1];
        }

        if (v8 <= v14)
        {
          goto LABEL_65;
        }

        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuDataArray<float>(&v106, a3, *(v11[2] + v15 - 8), *(v11[2] + v15));
        v8 = v11[4];
        if (v8 <= v14)
        {
          goto LABEL_69;
        }

        v38 = v11[5] + v12;
        *v38 = v106;
        *(v38 + 16) = v107;
        v8 = v11[4];
        if (v8 <= v14)
        {
          goto LABEL_73;
        }

        v39 = a5[1];
        if (v39 <= v14)
        {
          goto LABEL_77;
        }

        v40 = v11[5];
        v41 = *(v27 + 8);
        v42 = *(v27 + 132);
        v43 = (*a5 + v13);
        *v43 = &v105[v101];
        if (v43[2] <= 6uLL)
        {
          re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v43 + 1, 7uLL);
        }

        LODWORD(v117[0]) = 1;
        v44 = v42 / (16 * v41) / (v101 + 1) + 16 * v41;
        memset(v117 + 8, 0, 32);
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v117);
        LODWORD(v117[0]) = 3;
        re::BufferSlice::buffer(v27 + 136, v45);
        *(&v117[0] + 1) = *(v27 + 136);
        LODWORD(v117[1]) = 0;
        *(&v117[1] + 1) = *(v27 + 168);
        *&v117[2] = 0;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v117);
        LODWORD(v117[0]) = 2;
        *(&v117[0] + 1) = *(v40 + v12 + 16);
        LODWORD(v117[1]) = 0;
        *(&v117[1] + 1) = *(v40 + v12 + 8);
        *&v117[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v117);
        LODWORD(v117[0]) = 2;
        re::BufferSlice::buffer(v27 + 96, v46);
        *(&v117[0] + 1) = *(v27 + 96);
        LODWORD(v117[1]) = 0;
        *(&v117[1] + 1) = *(v27 + 128);
        *&v117[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v117);
        LODWORD(v117[0]) = 2;
        v48 = v104;
        if (v104)
        {
          re::BufferSlice::buffer(v27 + 96, v47);
          v49 = *(v27 + 128);
          v48 = *(v27 + 132);
          *(&v117[0] + 1) = *(v27 + 96);
          LODWORD(v117[1]) = 0;
          v50 = v49 + v44;
        }

        else
        {
          v50 = 0;
          *(&v117[0] + 1) = 0;
          *&v117[1] = 0;
        }

        *(&v117[1] + 1) = __PAIR64__(v48, v50);
        *&v117[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v117);
        LODWORD(v117[0]) = 2;
        v11 = v94;
        v52 = v102;
        if (v102)
        {
          re::BufferSlice::buffer(v27 + 96, v51);
          v53 = *(v27 + 128);
          v52 = *(v27 + 132);
          *(&v117[0] + 1) = *(v27 + 96);
          LODWORD(v117[1]) = 0;
          v54 = v53 + 2 * v44;
        }

        else
        {
          v54 = 0;
          *(&v117[0] + 1) = 0;
          *&v117[1] = 0;
        }

        *(&v117[1] + 1) = __PAIR64__(v52, v54);
        *&v117[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v117);
        LODWORD(v117[0]) = 2;
        if (v103)
        {
          re::BufferSlice::buffer(v27 + 96, v55);
          v57 = *(v27 + 128);
          v56 = *(v27 + 132);
          *(&v117[0] + 1) = *(v27 + 96);
          LODWORD(v117[1]) = 0;
          v58 = v57 + 3 * v44;
        }

        else
        {
          v58 = 0;
          v56 = 0;
          *(&v117[0] + 1) = 0;
          *&v117[1] = 0;
        }

        v7 = v96;
        v5 = v97;
        *(&v117[1] + 1) = __PAIR64__(v56, v58);
        *&v117[2] = 1;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((v43 + 1), v117);
        v8 = v95;
      }

LABEL_50:
      ++v14;
      v13 += 48;
      v12 += 24;
      v15 += 16;
    }

    while (v8 != v14);
  }
}

uint64_t re::BlendShapeDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, unint64_t *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v8 = *a4;
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Blend Shapes");
  v49 = a1;
  v50 = a1 + 8;
  v9 = [*(a1 + 8) threadExecutionWidth];
  v53 = v8;
  v51 = *(v8 + 48);
  if (v51)
  {
    v10 = 0;
    v11 = 0;
    v54 = v9;
    do
    {
      v12 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v53 + 8, v11);
      v14 = *(v12 + 8);
      v15 = a4[6];
      if (v15 <= v14)
      {
        re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, *(v12 + 8), v15);
        _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v45, v46);
        __break(1u);
LABEL_16:
        v55 = 0;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        memset(v59, 0, sizeof(v59));
        v37 = MEMORY[0x1E69E9C10];
        v38 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v56 = 136315906;
        *&v56[4] = "operator[]";
        *&v56[12] = 1024;
        if (v38)
        {
          v39 = 3;
        }

        else
        {
          v39 = 2;
        }

        *&v56[14] = 476;
        *&v56[18] = 2048;
        *&v56[20] = v8;
        v57 = 2048;
        v58 = v4;
        _os_log_send_and_compose_impl(v39, &v55, v59, 80, &dword_1E1C61000, v37, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v47, v48);
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v55 = 0;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        memset(v59, 0, sizeof(v59));
        v11 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v56 = 136315906;
        *&v56[4] = "operator[]";
        *&v56[12] = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        *&v56[14] = 476;
        *&v56[18] = 2048;
        *&v56[20] = v8;
        v57 = 2048;
        v58 = v4;
        _os_log_send_and_compose_impl(v41, &v55, v59, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v47, v48);
        _os_crash_msg();
        __break(1u);
LABEL_24:
        v55 = 0;
        v61 = 0u;
        v62 = 0u;
        v60 = 0u;
        memset(v59, 0, sizeof(v59));
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v56 = 136315906;
        *&v56[4] = "operator[]";
        *&v56[12] = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        *&v56[14] = 468;
        *&v56[18] = 2048;
        *&v56[20] = v11;
        v57 = 2048;
        v58 = v4;
        _os_log_send_and_compose_impl(v44, &v55, v59, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v56, 38, v47, v48);
        _os_crash_msg();
        __break(1u);
      }

      v16 = a4[5];
      v17 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a4[1], v14);
      v18 = **(v17 + 344);
      v8 = *(v17 + 392);
      v4 = v18[5];
      if (v4 <= v8)
      {
        goto LABEL_16;
      }

      v8 = *(v18[6] + 4 * v8);
      v4 = v18[2];
      if (v4 <= v8)
      {
        goto LABEL_20;
      }

      v4 = *(a2 + 32);
      if (v4 <= v11)
      {
        goto LABEL_24;
      }

      v19 = v16 + 312 * v14;
      v20 = v18[3] + 336 * v8;
      v21 = *(a2 + 40);
      if (*(v20 + 212))
      {
        v8 = *v18;
        v22 = re::BlendShapeDeformer::deformGPU(void *,re::mtl::ComputeCommandEncoder const&,re::DeformationParameters const&)::kIndexTypeSizes[v8];
        [*this setComputePipelineState:*(v50 + 8 * v8)];
        re::BufferSlice::buffer(v20 + 256, v23);
        [*this setBuffer:*(v20 + 256) offset:*(v20 + 288) atIndex:0];
        [*this setBuffer:*(v21 + v10 + 16) offset:*(v21 + v10 + 8) atIndex:1];
        re::BufferSlice::buffer(v20 + 176, v24);
        [*this setBuffer:*(v20 + 176) offset:*(v20 + 208) atIndex:2];
        re::BufferSlice::buffer(v20 + 216, v25);
        [*this setBuffer:*(v20 + 216) offset:*(v20 + 248) atIndex:3];
        re::BufferSlice::buffer(v20 + 96, v26);
        [*this setBuffer:*(v20 + 96) offset:*(v20 + 128) atIndex:4];
        LOBYTE(v59[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        v4 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), v59) + 24);
        LOBYTE(v59[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        [*this setBuffer:v4 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), v59) + 16), 5}];
        v27 = *this;
        *&v59[0] = *(v20 + 212) / v22;
        *(v59 + 8) = vdupq_n_s64(1uLL);
        *v56 = v54;
        *&v56[8] = *(v59 + 8);
        [v27 dispatchThreads:v59 threadsPerThreadgroup:v56];
        if (*(v20 + 332))
        {
          [*this setComputePipelineState:*(v49 + 24 + 8 * v8)];
          re::BufferSlice::buffer(v20 + 296, v28);
          [*this setBuffer:*(v20 + 296) offset:*(v20 + 328) atIndex:0];
          LOBYTE(v59[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
          v4 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), v59) + 24);
          LOBYTE(v59[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
          [*this setBuffer:v4 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), v59) + 16), 1}];
          v29 = *(v20 + 332) / v22;
LABEL_12:
          v35 = *this;
          *&v59[0] = v29;
          *(v59 + 8) = vdupq_n_s64(1uLL);
          *v56 = v54;
          *&v56[8] = *(v59 + 8);
          [v35 dispatchThreads:v59 threadsPerThreadgroup:v56];
        }
      }

      else
      {
        [*this setComputePipelineState:*(v49 + 40)];
        re::BufferSlice::buffer(v20 + 136, v30);
        [*this setBuffer:*(v20 + 136) offset:*(v20 + 168) atIndex:0];
        [*this setBuffer:*(v21 + v10 + 16) offset:*(v21 + v10 + 8) atIndex:1];
        re::BufferSlice::buffer(v20 + 96, v31);
        [*this setBuffer:*(v20 + 96) offset:*(v20 + 128) atIndex:2];
        LOBYTE(v59[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        v4 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), v59) + 24);
        LOBYTE(v59[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
        [*this setBuffer:v4 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), v59) + 16), 3}];
        v33 = *this;
        *&v59[0] = *(v20 + 132) / (16 * *(v20 + 8));
        v32 = v59[0];
        *(v59 + 8) = vdupq_n_s64(1uLL);
        *v56 = v54;
        *&v56[8] = *(v59 + 8);
        [v33 dispatchThreads:v59 threadsPerThreadgroup:v56];
        v8 = v32 / *(v20 + 12);
        if (v8 >= 2)
        {
          [*this setComputePipelineState:*(v49 + 48)];
          re::BufferSlice::buffer(v20 + 136, v34);
          [*this setBuffer:*(v20 + 136) offset:*(v20 + 168) atIndex:0];
          LOBYTE(v59[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
          v4 = *(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v19 + 184), v59) + 24);
          LOBYTE(v59[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v19, 1u);
          [*this setBuffer:v4 offset:*(*(v19 + 192) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v19 + 184), v59) + 16), 1}];
          LODWORD(v29) = *(v20 + 12) / 3u * (v8 - 1);
          goto LABEL_12;
        }
      }

      ++v11;
      v10 += 24;
    }

    while (v51 != v11);
  }

  return [*this popDebugGroup];
}

void re::BlendShapeDeformer::deformCPU(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v153 = *MEMORY[0x1E69E9840];
  v7 = *a3;
  v8 = *(*a3 + 48);
  if (v8)
  {
    v11 = 0;
    v137 = *(*a3 + 48);
    v138 = *a3;
    do
    {
      v12 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v7 + 8, v11) + 8);
      v13 = a3[6];
      if (v13 <= v12)
      {
        goto LABEL_72;
      }

      v5 = a3[5] + 312 * v12;
      v6 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a3[1], v12);
      LOBYTE(v148) = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v5, 1u);
      v14 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v5 + 184), &v148);
      v16 = **(v6 + 344);
      v3 = *(v6 + 392);
      v4 = v16[5];
      if (v4 <= v3)
      {
        goto LABEL_73;
      }

      v3 = *(v16[6] + 4 * v3);
      v4 = v16[2];
      if (v4 <= v3)
      {
        goto LABEL_77;
      }

      v4 = *(*(v5 + 192) + 32 * v14 + 8) + *(*(v5 + 192) + 32 * v14 + 16);
      v3 = v16[3] + 336 * v3;
      v17 = *(v3 + 212);
      if (v17)
      {
        v18 = *v16;
        if (v18 == 1)
        {
          v5 = *(a2 + 8);
          if (v5 <= v11)
          {
            goto LABEL_85;
          }

          v74 = *(a2 + 16);
          v5 = re::BufferSlice::contents((v3 + 176));
          v6 = re::BufferSlice::contents((v3 + 216));
          v75 = re::BufferSlice::contents((v3 + 96));
          v76 = re::BufferSlice::contents((v3 + 256));
          if (v17 >= 4)
          {
            v77 = 0;
            v78 = (v74 + 16 * v11);
            v79 = v78[1];
            v80 = *v6;
            while (1)
            {
              v81 = *(v5 + 4 * v77++);
              v82 = *(v6 + 4 * v77);
              v83 = 0uLL;
              if (v82 != v80)
              {
                break;
              }

LABEL_49:
              *(v4 + 4 * v81) = *(v4 + 4 * v81) + vaddv_f32(vadd_f32(*v83.i8, *&vextq_s8(v83, v83, 8uLL)));
              v80 = v82;
              if (v77 == v17 >> 2)
              {
                goto LABEL_50;
              }
            }

            v84 = 0;
            v85 = *v78;
            while (1)
            {
              v86 = v80 + v84;
              v87 = *(v76 + 4 * (v80 + v84));
              if (v79 <= v87)
              {
                break;
              }

              v88 = *(v76 + 4 * (v86 + 1));
              if (v79 <= v88)
              {
                goto LABEL_65;
              }

              v89 = *(v76 + 4 * (v80 + v84 + 2));
              if (v79 <= v89)
              {
                goto LABEL_68;
              }

              v90 = *(v76 + 4 * (v80 + v84 + 3));
              if (v79 <= v90)
              {
                goto LABEL_69;
              }

              v91.i32[0] = *(v85 + 4 * v87);
              v91.i32[1] = *(v85 + 4 * v88);
              v91.i32[2] = *(v85 + 4 * v89);
              v91.i32[3] = *(v85 + 4 * v90);
              v83 = vmlaq_f32(v83, v91, *(v75 + 16 * ((v80 >> 2) + (v84 >> 2))));
              v84 += 4;
              if (v84 >= v82 - v80)
              {
                goto LABEL_49;
              }
            }

            re::internal::assertLog(6, v85, *v83.i64, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v76 + 4 * v86), v79);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v114, v125);
            __break(1u);
LABEL_64:
            re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33, v24);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v115, v126);
            __break(1u);
LABEL_65:
            re::internal::assertLog(6, v85, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v88, v79);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v116, v127);
            __break(1u);
LABEL_66:
            re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v34, v24);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v117, v128);
            __break(1u);
LABEL_67:
            re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v35, v24);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v118, v129);
            __break(1u);
LABEL_68:
            re::internal::assertLog(6, v85, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v89, v79);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v119, v130);
            __break(1u);
LABEL_69:
            re::internal::assertLog(6, v85, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v90, v79);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v120, v131);
            __break(1u);
LABEL_70:
            re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, v24);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v121, v132);
            __break(1u);
LABEL_71:
            re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v60, v60);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v122, v133);
            __break(1u);
LABEL_72:
            re::internal::assertLog(6, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v12, v13);
            _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v123, v134);
            __break(1u);
LABEL_73:
            v139 = 0;
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v148 = 0u;
            v100 = MEMORY[0x1E69E9C10];
            v101 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v141 = "operator[]";
            v142 = 1024;
            if (v101)
            {
              v102 = 3;
            }

            else
            {
              v102 = 2;
            }

            v143 = 476;
            v144 = 2048;
            v145 = v3;
            v146 = 2048;
            v147 = v4;
            _os_log_send_and_compose_impl(v102, &v139, &v148, 80, &dword_1E1C61000, v100, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v135, v136);
            _os_crash_msg();
            __break(1u);
LABEL_77:
            v139 = 0;
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v148 = 0u;
            v11 = MEMORY[0x1E69E9C10];
            v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v141 = "operator[]";
            v142 = 1024;
            if (v103)
            {
              v104 = 3;
            }

            else
            {
              v104 = 2;
            }

            v143 = 476;
            v144 = 2048;
            v145 = v3;
            v146 = 2048;
            v147 = v4;
            _os_log_send_and_compose_impl(v104, &v139, &v148, 80, &dword_1E1C61000, v11, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v135, v136);
            _os_crash_msg();
            __break(1u);
LABEL_81:
            v139 = 0;
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v148 = 0u;
            v105 = MEMORY[0x1E69E9C10];
            v106 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v141 = "operator[]";
            v142 = 1024;
            if (v106)
            {
              v107 = 3;
            }

            else
            {
              v107 = 2;
            }

            v143 = 468;
            v144 = 2048;
            v145 = v11;
            v146 = 2048;
            v147 = v6;
            _os_log_send_and_compose_impl(v107, &v139, &v148, 80, &dword_1E1C61000, v105, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v135, v136);
            _os_crash_msg();
            __break(1u);
LABEL_85:
            v139 = 0;
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v148 = 0u;
            v108 = MEMORY[0x1E69E9C10];
            v109 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v141 = "operator[]";
            v142 = 1024;
            if (v109)
            {
              v110 = 3;
            }

            else
            {
              v110 = 2;
            }

            v143 = 468;
            v144 = 2048;
            v145 = v11;
            v146 = 2048;
            v147 = v5;
            _os_log_send_and_compose_impl(v110, &v139, &v148, 80, &dword_1E1C61000, v108, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v135, v136);
            _os_crash_msg();
            __break(1u);
LABEL_89:
            v139 = 0;
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v148 = 0u;
            v111 = MEMORY[0x1E69E9C10];
            v112 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *buf = 136315906;
            v141 = "operator[]";
            v142 = 1024;
            if (v112)
            {
              v113 = 3;
            }

            else
            {
              v113 = 2;
            }

            v143 = 468;
            v144 = 2048;
            v145 = v11;
            v146 = 2048;
            v147 = v5;
            _os_log_send_and_compose_impl(v113, &v139, &v148, 80, &dword_1E1C61000, v111, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v135, v136);
            _os_crash_msg();
            __break(1u);
LABEL_93:
            re::internal::assertLog(5, v15, "assertion failure: '%s' (%s:line %i) Invalid blend shape index type: %u.", "!Unreachable code", "deformCPU", 1490, v18);
            _os_crash("assertion failure: (!Unreachable code) Invalid blend shape index type: %u.", v124);
            __break(1u);
          }

LABEL_50:
          v92 = re::BufferSlice::contents((v3 + 296));
          v94 = *(v3 + 332);
          v8 = v137;
          v7 = v138;
          if (v94 >= 4)
          {
            v95 = v94 >> 2;
            do
            {
              v96 = *v92;
              v92 += 2;
              v97 = v4 + 4 * v96;
              v93.i64[0] = *v97;
              v93.i32[2] = *(v97 + 8);
              v98 = vmulq_f32(v93, v93);
              *&v99 = v98.f32[2] + vaddv_f32(*v98.f32);
              *v98.f32 = vrsqrte_f32(v99);
              *v98.f32 = vmul_f32(*v98.f32, vrsqrts_f32(v99, vmul_f32(*v98.f32, *v98.f32)));
              v93 = vmulq_n_f32(v93, vmul_f32(*v98.f32, vrsqrts_f32(v99, vmul_f32(*v98.f32, *v98.f32))).f32[0]);
              *v97 = v93.i64[0];
              *(v97 + 8) = v93.i32[2];
              --v95;
            }

            while (v95);
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_93;
          }

          v5 = *(a2 + 8);
          if (v5 <= v11)
          {
            goto LABEL_89;
          }

          v19 = *(a2 + 16);
          v5 = re::BufferSlice::contents((v3 + 176));
          v6 = re::BufferSlice::contents((v3 + 216));
          v20 = re::BufferSlice::contents((v3 + 96));
          v21 = re::BufferSlice::contents((v3 + 256));
          if (v17 != 1)
          {
            v22 = 0;
            v23 = (v19 + 16 * v11);
            v24 = v23[1];
            v25 = *v6;
            while (1)
            {
              v26 = *(v5 + 2 * v22++);
              v27 = *(v6 + 2 * v22);
              v28 = 0uLL;
              if (v27 != v25)
              {
                break;
              }

LABEL_19:
              *(v4 + 4 * v26) = *(v4 + 4 * v26) + vaddv_f32(vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)));
              v25 = v27;
              if (v22 == v17 >> 1)
              {
                goto LABEL_20;
              }
            }

            v29 = 0;
            v30 = 0;
            v31 = *v23;
            while (1)
            {
              v32 = (v21 + 2 * (v25 + v30));
              v33 = *v32;
              if (v24 <= v33)
              {
                goto LABEL_64;
              }

              v34 = v32[1];
              if (v24 <= v34)
              {
                goto LABEL_66;
              }

              v35 = v32[2];
              if (v24 <= v35)
              {
                goto LABEL_67;
              }

              v36 = v32[3];
              if (v24 <= v36)
              {
                goto LABEL_70;
              }

              v37.i32[0] = *(v31 + 4 * v33);
              v37.i32[1] = *(v31 + 4 * v34);
              v37.i32[2] = *(v31 + 4 * v35);
              v37.i32[3] = *(v31 + 4 * v36);
              v28 = vmlaq_f32(v28, v37, *(v20 + 16 * ((v25 >> 2) + (v29 >> 2))));
              v30 = v29 + 4;
              v29 = (v29 + 4);
              if (v29 >= (v27 - v25))
              {
                goto LABEL_19;
              }
            }
          }

LABEL_20:
          v38 = re::BufferSlice::contents((v3 + 296));
          v40 = *(v3 + 332);
          v8 = v137;
          v7 = v138;
          if (v40 >= 2)
          {
            v41 = v40 >> 1;
            do
            {
              v42 = *v38++;
              v43 = v4 + 4 * v42;
              v39.i64[0] = *v43;
              v39.i32[2] = *(v43 + 8);
              v44 = vmulq_f32(v39, v39);
              *&v45 = v44.f32[2] + vaddv_f32(*v44.f32);
              *v44.f32 = vrsqrte_f32(v45);
              *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32)));
              v39 = vmulq_n_f32(v39, vmul_f32(*v44.f32, vrsqrts_f32(v45, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
              *v43 = v39.i64[0];
              *(v43 + 8) = v39.i32[2];
              --v41;
            }

            while (v41);
          }
        }
      }

      else
      {
        LOBYTE(v148) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v5, 1u);
        v46 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v5 + 184), &v148);
        v6 = *(a2 + 8);
        if (v6 <= v11)
        {
          goto LABEL_81;
        }

        v5 = *(*(v5 + 192) + 32 * v46 + 20);
        v6 = *(a2 + 16);
        re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v148, (v3 + 96));
        if (v148)
        {
          v51 = *(v3 + 8);
          v50 = *(v3 + 12);
          v52 = *(v3 + 16);
          v53 = *(v3 + 132);
          v54 = 4 * (4 * v51);
          v55 = v53 / v54;
          if (v54 <= v53)
          {
            v56 = 0;
            v57 = (v6 + 16 * v11);
            v58 = *(&v148 + 1);
            v59 = *v57;
            v60 = v57[1] >> 2;
            do
            {
              if (v51)
              {
                if (v60 <= (v51 - 1))
                {
                  goto LABEL_71;
                }

                v49 = 0uLL;
                v61 = v58;
                v62 = v59;
                v63 = v51;
                do
                {
                  v64 = *v61++;
                  v65 = v64;
                  v66 = *v62++;
                  v49 = vmlaq_f32(v49, v66, v65);
                  --v63;
                }

                while (v63);
              }

              else
              {
                v49 = 0uLL;
              }

              v48 = v56 % v50;
              *(v4 + 4 * v56 / v50 * v52 + 4 * (v56 % v50)) = *(v4 + 4 * v56 / v50 * v52 + 4 * (v56 % v50)) + vaddv_f32(vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)));
              ++v56;
              v58 += v51;
            }

            while (v56 < v55);
          }

          v67 = v5 >> 2;
          v68 = v55 - (v5 >> 2);
          if (v68 >= 3)
          {
            v69 = 0;
            v70 = v68 / 3;
            do
            {
              v71 = v4 + 4 * v67 / v50 * v52 + 4 * (v67 % v50);
              v49.i64[0] = *v71;
              v49.i32[2] = *(v71 + 8);
              v72 = vmulq_f32(v49, v49);
              *&v73 = v72.f32[2] + vaddv_f32(*v72.f32);
              *v72.f32 = vrsqrte_f32(v73);
              *v72.f32 = vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32)));
              v49 = vmulq_n_f32(v49, vmul_f32(*v72.f32, vrsqrts_f32(v73, vmul_f32(*v72.f32, *v72.f32))).f32[0]);
              *v71 = v49.i64[0];
              *(v71 + 8) = v49.i32[2];
              ++v69;
              v67 += 3;
            }

            while (v69 < v70);
          }
        }

        else
        {
          v5 = *re::graphicsLogObjects(v47);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "Failure: Read metal buffer", buf, 2u);
          }
        }

        if (v148 == 1)
        {
          re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v148 + 8));
        }

        else if (*(&v149 + 1) && (v150 & 1) != 0)
        {
          (*(**(&v149 + 1) + 40))();
        }
      }

      ++v11;
    }

    while (v11 != v8);
  }
}

uint64_t re::BlendShapeModelUtil::blendShapeTargetCountForGroup(re::BlendShapeModelUtil *this, const DeformationModelData *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (!*this || v2[8] <= a2)
  {
    return 0;
  }

  v3 = a2;
  v4 = v2[2];
  if (v4 <= a2)
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

    v13 = 476;
    v14 = 2048;
    v15 = v3;
    v16 = 2048;
    v17 = v4;
    _os_log_send_and_compose_impl(v7, &v9, v18, 80, &dword_1E1C61000, v6, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v10, 38, v8);
    _os_crash_msg();
    __break(1u);
  }

  return *(v2[3] + 336 * a2);
}

re::StringID *re::BlendShapeModelUtil::blendShapeTargetName@<X0>(re::StringID *__return_ptr a1@<X8>, re::BlendShapeModelUtil *this@<X0>, const DeformationModelData *a3@<X1>, unint64_t a4@<X2>)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *this;
  if (!*this || v4[8] <= a3)
  {
    goto LABEL_8;
  }

  v5 = a3;
  v6 = v4[2];
  if (v6 <= a3)
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

    v17 = 476;
    v18 = 2048;
    v19 = v5;
    v20 = 2048;
    v21 = v6;
    _os_log_send_and_compose_impl(v11, &v13, v22, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v14, 38, v12);
    _os_crash_msg();
    __break(1u);
  }

  v7 = v4[3] + 336 * a3;
  if (*(v7 + 32) > a4)
  {
    v8 = (*(v7 + 40) + 16 * a4);

    return re::StringID::StringID(a1, v8);
  }

  else
  {
LABEL_8:

    return re::StringID::invalid(a1);
  }
}

uint64_t re::BlendShapeModelUtil::DEPRECATED_blendShapeTargetNameDoNotUse(re::BlendShapeModelUtil *this, const DeformationModelData *a2, unint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *this;
  if (!*this || v3[8] <= a2)
  {
    return 0;
  }

  v4 = a2;
  v5 = v3[2];
  if (v5 <= a2)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "operator[]";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 476;
    v16 = 2048;
    v17 = v4;
    v18 = 2048;
    v19 = v5;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v6 = v3[3] + 336 * a2;
  if (*(v6 + 32) > a3)
  {
    return *(*(v6 + 40) + 16 * a3 + 8);
  }

  else
  {
    return 0;
  }
}

void re::BlendShapeModelUtil::makeBlendShapeGroupDefinitionFromGroup(unint64_t a1@<X8>, re::BlendShapeModelUtil *this@<X0>, const DeformationModelData *a3@<X1>)
{
  v6 = v369;
  v388 = *MEMORY[0x1E69E9840];
  v7 = *this;
  if (!*this)
  {
    v19 = std::system_category();
    v20 = "Deformation model does not contain blendshape data";
LABEL_17:
    v21 = v383;
    v22 = v384;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v19;
    *(a1 + 24) = v21;
    *(a1 + 40) = v22;
    return;
  }

  v8 = v7[2];
  if (v8 != v7[8])
  {
    v19 = std::system_category();
    v20 = "Deformation model has mismatched buffer and name counts";
    goto LABEL_17;
  }

  v9 = a3;
  if (v8 <= a3)
  {
    goto LABEL_457;
  }

  re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v347, (v7[3] + 336 * a3 + 176));
  if (v347 != 1 || !v348[1])
  {
    v23 = *this;
    if (!*this)
    {
      goto LABEL_64;
    }

    v12 = v23[2];
    if (v12 != v23[8])
    {
      goto LABEL_66;
    }

    if (v12 > v9)
    {
      i = v23[3] + 336 * v9;
      re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v383, (i + 96));
      if (v383)
      {
        v338 = a1;
        v24 = *i;
        *&v365[0] = 0;
        *(&v365[0] + 1) = &str_67;
        HIDWORD(v366) = 0;
        *&v366 = 0;
        v365[1] = 0uLL;
        BYTE8(v366) = 0;
        v12 = v23[8];
        if (v12 <= v9)
        {
LABEL_497:
          *&v355 = 0;
          v374 = 0u;
          v375 = 0u;
          memset(v373, 0, sizeof(v373));
          v304 = MEMORY[0x1E69E9C10];
          v305 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v369[0]) = 136315906;
          *(v369 + 4) = "operator[]";
          WORD2(v369[1]) = 1024;
          if (v305)
          {
            v306 = 3;
          }

          else
          {
            v306 = 2;
          }

          *(&v369[1] + 6) = 476;
          WORD1(v369[2]) = 2048;
          *(&v369[2] + 4) = v9;
          WORD2(v369[3]) = 2048;
          *(&v369[3] + 6) = v12;
          _os_log_send_and_compose_impl(v306, &v355, v373, 80, &dword_1E1C61000, v304, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v369, 38, v317, v318);
          _os_crash_msg();
          __break(1u);
LABEL_501:
          *v376 = 0;
          v367 = 0u;
          v368 = 0u;
          v366 = 0u;
          memset(v365, 0, sizeof(v365));
          v307 = MEMORY[0x1E69E9C10];
          v308 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v362 = 136315906;
          *&v362[4] = "operator[]";
          *&v362[12] = 1024;
          if (v308)
          {
            v309 = 3;
          }

          else
          {
            v309 = 2;
          }

          *&v362[14] = 476;
          *&v362[18] = 2048;
          *&v362[20] = v9;
          v363 = 2048;
          *v364 = v12;
          _os_log_send_and_compose_impl(v309, v376, v365, 80, &dword_1E1C61000, v307, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v362, 38, v317, v318);
          _os_crash_msg();
          __break(1u);
          goto LABEL_505;
        }

        v25 = re::StringID::operator=(v365, (v23[9] + 16 * v9));
        BYTE8(v366) = 2;
        v9 = *(i + 12);
        HIDWORD(v366) = v9 / 3;
        if (v24)
        {
          v4 = 0;
          a1 = *(&v383 + 1);
          v26 = (v24 + 3) >> 2;
          v27 = 16 * v26;
          v8 = *(&v383 + 1) + 16 * v9 * v26;
          v343 = *(&v383 + 1);
          v344 = ((v24 + 3) & 0x3FFFFFFFFFFFFFFCLL) * v9;
          while (1)
          {
            v6 = *(&v365[1] + 1);
            if (*(&v365[1] + 1) <= v4)
            {
              goto LABEL_461;
            }

            v6 = *(i + 32);
            if (v6 <= v4)
            {
              break;
            }

            v28 = v24;
            v29 = (v366 + 136 * v4);
            v30 = re::StringID::operator=(v29, (*(i + 40) + 16 * v4));
            if (v9)
            {
              v32 = 0;
              v11 = v29[6];
              v33 = a1;
              while (v11 != v32)
              {
                *(v29[7] + 4 * v32) = *v33;
                v32 = (v32 + 1);
                v33 = (v33 + v27);
                if (v9 == v32)
                {
                  goto LABEL_32;
                }
              }

              *&v355 = 0;
              v374 = 0u;
              v375 = 0u;
              memset(v373, 0, sizeof(v373));
              v74 = MEMORY[0x1E69E9C10];
              v77 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v369[0]) = 136315906;
              *(v369 + 4) = "operator[]";
              WORD2(v369[1]) = 1024;
              if (v77)
              {
                v78 = 3;
              }

              else
              {
                v78 = 2;
              }

              *(&v369[1] + 6) = 468;
              WORD1(v369[2]) = 2048;
              *(&v369[2] + 4) = v11;
              WORD2(v369[3]) = 2048;
              *(&v369[3] + 6) = v11;
              _os_log_send_and_compose_impl(v78, &v355, v373, 80, &dword_1E1C61000, v74, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v369, 38, v317, v318);
              _os_crash_msg();
              __break(1u);
              goto LABEL_101;
            }

LABEL_32:
            v34 = (v343 + 4 * v4 + 4 * v344);
            if (*(i + 48))
            {
              if (v9)
              {
                v35 = 0;
                v36 = v29[9];
                v37 = v8;
                while (v36 != v35)
                {
                  *(v29[10] + 4 * v35++) = *v37;
                  v37 = (v37 + v27);
                  if (v9 == v35)
                  {
                    goto LABEL_37;
                  }
                }

                *&v355 = 0;
                v374 = 0u;
                v375 = 0u;
                memset(v373, 0, sizeof(v373));
                v223 = MEMORY[0x1E69E9C10];
                v224 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v369[0]) = 136315906;
                *(v369 + 4) = "operator[]";
                WORD2(v369[1]) = 1024;
                if (v224)
                {
                  v225 = 3;
                }

                else
                {
                  v225 = 2;
                }

                *(&v369[1] + 6) = 468;
                WORD1(v369[2]) = 2048;
                *(&v369[2] + 4) = v36;
                WORD2(v369[3]) = 2048;
                *(&v369[3] + 6) = v36;
                _os_log_send_and_compose_impl(v225, &v355, v373, 80, &dword_1E1C61000, v223, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v369, 38, v317, v318);
                _os_crash_msg();
                __break(1u);
                goto LABEL_399;
              }

LABEL_37:
              v34 += v344;
            }

            if (*(i + 49) == 1)
            {
              if (v9)
              {
                v38 = 0;
                v36 = v29[12];
                v39 = v34;
                while (v36 != v38)
                {
                  *(v29[13] + 4 * v38++) = *v39;
                  v39 = (v39 + v27);
                  if (v9 == v38)
                  {
                    goto LABEL_43;
                  }
                }

LABEL_399:
                *&v355 = 0;
                v374 = 0u;
                v375 = 0u;
                memset(v373, 0, sizeof(v373));
                v226 = MEMORY[0x1E69E9C10];
                v227 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v369[0]) = 136315906;
                *(v369 + 4) = "operator[]";
                WORD2(v369[1]) = 1024;
                if (v227)
                {
                  v228 = 3;
                }

                else
                {
                  v228 = 2;
                }

                *(&v369[1] + 6) = 468;
                WORD1(v369[2]) = 2048;
                *(&v369[2] + 4) = v36;
                WORD2(v369[3]) = 2048;
                *(&v369[3] + 6) = v36;
                _os_log_send_and_compose_impl(v228, &v355, v373, 80, &dword_1E1C61000, v226, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v369, 38, v317, v318);
                _os_crash_msg();
                __break(1u);
                goto LABEL_403;
              }

LABEL_43:
              v34 += v344;
            }

            if (*(i + 50) == 1)
            {
              if (v9)
              {
                v40 = 0;
                v36 = v29[15];
                while (v36 != v40)
                {
                  *(v29[16] + 4 * v40++) = *v34;
                  v34 = (v34 + v27);
                  if (v9 == v40)
                  {
                    goto LABEL_49;
                  }
                }

LABEL_403:
                *&v355 = 0;
                v374 = 0u;
                v375 = 0u;
                memset(v373, 0, sizeof(v373));
                v229 = MEMORY[0x1E69E9C10];
                v230 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                LODWORD(v369[0]) = 136315906;
                *(v369 + 4) = "operator[]";
                WORD2(v369[1]) = 1024;
                if (v230)
                {
                  v231 = 3;
                }

                else
                {
                  v231 = 2;
                }

                *(&v369[1] + 6) = 468;
                WORD1(v369[2]) = 2048;
                *(&v369[2] + 4) = v36;
                WORD2(v369[3]) = 2048;
                *(&v369[3] + 6) = v36;
                _os_log_send_and_compose_impl(v231, &v355, v373, 80, &dword_1E1C61000, v229, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v369, 38, v317, v318);
                _os_crash_msg();
                __break(1u);
LABEL_407:
                *v376 = 0;
                v367 = 0u;
                v368 = 0u;
                v366 = 0u;
                memset(v365, 0, sizeof(v365));
                v232 = MEMORY[0x1E69E9C10];
                v233 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v362 = 136315906;
                *&v362[4] = "operator[]";
                *&v362[12] = 1024;
                if (v233)
                {
                  v234 = 3;
                }

                else
                {
                  v234 = 2;
                }

                *&v362[14] = 468;
                *&v362[18] = 2048;
                *&v362[20] = a1;
                v363 = 2048;
                *v364 = i;
                _os_log_send_and_compose_impl(v234, v376, v365, 80, &dword_1E1C61000, v232, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v362, 38, v317, v318);
                _os_crash_msg();
                __break(1u);
LABEL_411:
                *v376 = 0;
                v367 = 0u;
                v368 = 0u;
                v366 = 0u;
                memset(v365, 0, sizeof(v365));
                v235 = MEMORY[0x1E69E9C10];
                v236 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v362 = 136315906;
                *&v362[4] = "operator[]";
                *&v362[12] = 1024;
                if (v236)
                {
                  v237 = 3;
                }

                else
                {
                  v237 = 2;
                }

                *&v362[14] = 468;
                *&v362[18] = 2048;
                *&v362[20] = v4;
                v363 = 2048;
                *v364 = i;
                _os_log_send_and_compose_impl(v237, v376, v365, 80, &dword_1E1C61000, v235, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v362, 38, v317, v318);
                _os_crash_msg();
                __break(1u);
LABEL_415:
                v238 = std::system_category();
                v239 = v365[0];
                v240 = v365[1];
                *a1 = 0;
                *(a1 + 8) = 0;
                *(a1 + 16) = v238;
                *(a1 + 24) = v239;
                *(a1 + 40) = v240;
                v9 = v343;
LABEL_239:
                if (i)
                {
                  v151 = 16 * v319;
                  v152 = v9;
                  do
                  {
                    v153.n128_f64[0] = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v152);
                    v152 += 6;
                    v151 -= 48;
                  }

                  while (v151);
                  goto LABEL_379;
                }

LABEL_380:
                v222 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v351[16]);
                if (v351[0])
                {
                  if (v351[0])
                  {
                  }
                }

LABEL_383:
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(&v355);
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v369);
LABEL_384:
                if (LOBYTE(v373[0]) == 1)
                {
                  re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v373 + 8));
                  goto LABEL_390;
                }

                v48 = *(&v373[1] + 1);
                if (!*(&v373[1] + 1) || (v373[2] & 1) == 0)
                {
                  goto LABEL_390;
                }

                v47 = *(&v373[2] + 1);
LABEL_389:
                (*(*v48 + 40))(v48, v47);
                goto LABEL_390;
              }
            }

LABEL_49:
            ++v4;
            a1 += 4;
            v8 += 4;
            v24 = v28;
            if (v4 == v28)
            {
              goto LABEL_50;
            }
          }

LABEL_465:
          *&v355 = 0;
          v374 = 0u;
          v375 = 0u;
          memset(v373, 0, sizeof(v373));
          v280 = MEMORY[0x1E69E9C10];
          v281 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v369[0]) = 136315906;
          *(v369 + 4) = "operator[]";
          WORD2(v369[1]) = 1024;
          if (v281)
          {
            v282 = 3;
          }

          else
          {
            v282 = 2;
          }

          *(&v369[1] + 6) = 476;
          WORD1(v369[2]) = 2048;
          *(&v369[2] + 4) = v4;
          WORD2(v369[3]) = 2048;
          *(&v369[3] + 6) = v6;
          _os_log_send_and_compose_impl(v282, &v355, v373, 80, &dword_1E1C61000, v280, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v369, 38, v317, v318);
          _os_crash_msg();
          __break(1u);
LABEL_469:
          *v376 = 0;
          v367 = 0u;
          v368 = 0u;
          v366 = 0u;
          memset(v365, 0, sizeof(v365));
          v283 = MEMORY[0x1E69E9C10];
          v284 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v362 = 136315906;
          *&v362[4] = "operator[]";
          *&v362[12] = 1024;
          if (v284)
          {
            v285 = 3;
          }

          else
          {
            v285 = 2;
          }

          *&v362[14] = 468;
          *&v362[18] = 2048;
          *&v362[20] = i;
          v363 = 2048;
          *v364 = v8;
          _os_log_send_and_compose_impl(v285, v376, v365, 80, &dword_1E1C61000, v283, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v362, 38, v317, v318);
          _os_crash_msg();
          __break(1u);
LABEL_473:
          *v376 = 0;
          v367 = 0u;
          v368 = 0u;
          v366 = 0u;
          memset(v365, 0, sizeof(v365));
          v286 = MEMORY[0x1E69E9C10];
          v287 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v362 = 136315906;
          *&v362[4] = "operator[]";
          *&v362[12] = 1024;
          if (v287)
          {
            v288 = 3;
          }

          else
          {
            v288 = 2;
          }

          *&v362[14] = 468;
          *&v362[18] = 2048;
          *&v362[20] = i;
          v363 = 2048;
          *v364 = v8;
          _os_log_send_and_compose_impl(v288, v376, v365, 80, &dword_1E1C61000, v286, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v362, 38, v317, v318);
          _os_crash_msg();
          __break(1u);
LABEL_477:
          *v376 = 0;
          v367 = 0u;
          v368 = 0u;
          v366 = 0u;
          memset(v365, 0, sizeof(v365));
          v289 = MEMORY[0x1E69E9C10];
          v290 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v362 = 136315906;
          *&v362[4] = "operator[]";
          *&v362[12] = 1024;
          if (v290)
          {
            v291 = 3;
          }

          else
          {
            v291 = 2;
          }

          *&v362[14] = 476;
          *&v362[18] = 2048;
          *&v362[20] = i;
          v363 = 2048;
          *v364 = v8;
          _os_log_send_and_compose_impl(v291, v376, v365, 80, &dword_1E1C61000, v289, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v362, 38, v317, v318);
          _os_crash_msg();
          __break(1u);
LABEL_481:
          *v376 = 0;
          v12 = &v355;
          v367 = 0u;
          v368 = 0u;
          v366 = 0u;
          memset(v365, 0, sizeof(v365));
          v292 = MEMORY[0x1E69E9C10];
          v293 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v362 = 136315906;
          *&v362[4] = "operator[]";
          *&v362[12] = 1024;
          if (v293)
          {
            v294 = 3;
          }

          else
          {
            v294 = 2;
          }

          *&v362[14] = 476;
          *&v362[18] = 2048;
          *&v362[20] = i;
          v363 = 2048;
          *v364 = v8;
          _os_log_send_and_compose_impl(v294, v376, v365, 80, &dword_1E1C61000, v292, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v362, 38, v317, v318);
          _os_crash_msg();
          __break(1u);
          goto LABEL_485;
        }

LABEL_50:
        v41 = *&v365[0];
        v42 = *(&v365[1] + 1);
        v43 = v366;
        *&v366 = 0;
        *v338 = 1;
        *(v338 + 8) = v41;
        *(&v373[0] + 1) = &str_67;
        *&v373[0] = 0;
        v44 = *(v365 + 8);
        *&v365[0] = 0;
        *(&v365[0] + 1) = &str_67;
        v365[1] = 0uLL;
        *(v338 + 16) = v44;
        v373[1] = 0uLL;
        *(v338 + 32) = v42;
        *(v338 + 40) = v43;
        *(&v373[2] + 1) = *(&v43 + 1);
        *&v373[2] = 0;
        *(v338 + 48) = *(&v43 + 1);
        v45 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v373[1]);
        if (v373[0])
        {
          if (v373[0])
          {
          }
        }

        v46 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v365[1]);
        if (v365[0])
        {
          if (v365[0])
          {
            v47 = *(&v365[0] + 1);
            goto LABEL_389;
          }
        }
      }

      else
      {
        v59 = std::system_category();
        v60 = v373[0];
        v61 = v373[1];
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = v59;
        *(a1 + 24) = v60;
        *(a1 + 40) = v61;
      }

LABEL_390:
      if (v383 == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((&v383 + 8));
      }

      else if (*(&v384 + 1) && (v385 & 1) != 0)
      {
        (*(**(&v384 + 1) + 40))();
      }

      goto LABEL_68;
    }

LABEL_485:
    *&v365[0] = 0;
    *(v6 + 19) = 0u;
    *(v6 + 20) = 0u;
    *(v6 + 17) = 0u;
    *(v6 + 18) = 0u;
    *(v6 + 16) = 0u;
    v295 = MEMORY[0x1E69E9C10];
    v296 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v373[0]) = 136315906;
    *(v6 + 100) = "operator[]";
    WORD6(v373[0]) = 1024;
    if (v296)
    {
      v297 = 3;
    }

    else
    {
      v297 = 2;
    }

    *(v6 + 110) = 476;
    WORD1(v373[1]) = 2048;
    *(v6 + 116) = v9;
    WORD6(v373[1]) = 2048;
    *(v6 + 126) = v12;
    _os_log_send_and_compose_impl(v297, v365, &v383, 80, &dword_1E1C61000, v295, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v373, 38, v317, v318);
    _os_crash_msg();
    __break(1u);
LABEL_489:
    *&v365[0] = 0;
    v386 = 0u;
    v387 = 0u;
    v384 = 0u;
    v385 = 0u;
    v383 = 0u;
    v298 = MEMORY[0x1E69E9C10];
    v299 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v373[0]) = 136315906;
    *(v373 + 4) = "operator[]";
    WORD6(v373[0]) = 1024;
    if (v299)
    {
      v300 = 3;
    }

    else
    {
      v300 = 2;
    }

    *(v373 + 14) = 476;
    WORD1(v373[1]) = 2048;
    *(&v373[1] + 4) = v9;
    WORD6(v373[1]) = 2048;
    *(&v373[1] + 14) = v12;
    _os_log_send_and_compose_impl(v300, v365, &v383, 80, &dword_1E1C61000, v298, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v373, 38, v317, v318);
    _os_crash_msg();
    __break(1u);
    goto LABEL_493;
  }

  v11 = *this;
  if (*v7 != 1)
  {
    if (!v11)
    {
      goto LABEL_64;
    }

    v12 = v11[2];
    if (v12 == v11[8])
    {
      if (v12 <= v9)
      {
LABEL_493:
        *&v365[0] = 0;
        v386 = 0u;
        v387 = 0u;
        v384 = 0u;
        v385 = 0u;
        v383 = 0u;
        v301 = MEMORY[0x1E69E9C10];
        v302 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v373[0]) = 136315906;
        *(v373 + 4) = "operator[]";
        WORD6(v373[0]) = 1024;
        if (v302)
        {
          v303 = 3;
        }

        else
        {
          v303 = 2;
        }

        *(v373 + 14) = 476;
        WORD1(v373[1]) = 2048;
        *(&v373[1] + 4) = v9;
        WORD6(v373[1]) = 2048;
        *(&v373[1] + 14) = v12;
        _os_log_send_and_compose_impl(v303, v365, &v383, 80, &dword_1E1C61000, v301, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v373, 38, v317, v318);
        _os_crash_msg();
        __break(1u);
        goto LABEL_497;
      }

      v49 = v11[3] + 336 * v9;
      re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v383, (v49 + 176));
      v50 = v383;
      v51 = v384;
      v342 = v49;
      re::ReadOnlyCPUAccessibleBufferSliceContent::make(v373, (v49 + 96));
      if ((v373[0] & 1) == 0)
      {
        goto LABEL_74;
      }

      v371 = 0;
      v372 = 0;
      memset(v369, 0, sizeof(v369));
      v370 = 0u;
      v359 = 0;
      v360 = 0;
      v355 = 0u;
      v356 = 0u;
      v52 = 2;
      v357 = 0u;
      v358 = 0u;
      if (!v50)
      {
        v53 = v342;
        goto LABEL_249;
      }

      v53 = v342;
      if (!v51)
      {
        goto LABEL_249;
      }

      re::ReadOnlyCPUAccessibleBufferSliceContent::make(v365, (v342 + 256));
      v54 = LOBYTE(v365[0]);
      if (LOBYTE(v365[0]) == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(v369, v365 + 1);
      }

      else
      {
        v69 = std::system_category();
        v70 = *v351;
        v71 = *&v351[16];
        v72 = v352;
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = v69;
        *(a1 + 24) = v70;
        *(a1 + 40) = v71;
        *(a1 + 48) = v72;
      }

      if (LOBYTE(v365[0]) == 1)
      {
        re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v365 + 8));
      }

      else
      {
        v75 = v342;
        if (!*(&v365[1] + 1) || (v366 & 1) == 0)
        {
LABEL_94:
          if (!v54)
          {
            goto LABEL_383;
          }

          re::ReadOnlyCPUAccessibleBufferSliceContent::make(v365, (v75 + 216));
          v76 = LOBYTE(v365[0]);
          if (LOBYTE(v365[0]) == 1)
          {
            re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(&v355, v365 + 1);
          }

          else
          {
            v83 = std::system_category();
            v84 = *v351;
            v85 = *&v351[16];
            v86 = v352;
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v83;
            *(a1 + 24) = v84;
            *(a1 + 40) = v85;
            *(a1 + 48) = v86;
          }

          if (LOBYTE(v365[0]) == 1)
          {
            re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v365 + 8));
          }

          else
          {
            v53 = v342;
            if (!*(&v365[1] + 1) || (v366 & 1) == 0)
            {
              goto LABEL_247;
            }

            (*(**(&v365[1] + 1) + 40))();
          }

          v53 = v342;
LABEL_247:
          if (!v76)
          {
            goto LABEL_383;
          }

          v52 = 1;
LABEL_249:
          i = *v53;
          *v351 = 0;
          *&v351[8] = &str_67;
          HIDWORD(v354) = 0;
          v352 = 0;
          v353 = 0;
          *&v351[16] = 0;
          LOBYTE(v354) = 0;
          v12 = v11[8];
          if (v12 > v9)
          {
            v154 = v53;
            v155 = re::StringID::operator=(v351, (v11[9] + 16 * v9));
            LOBYTE(v354) = v52;
            v335 = *(v154 + 3);
            HIDWORD(v354) = v335 / 3;
            v6 = v355;
            v157 = (*(&v355 + 1) & 0xFFFFFFFFFFFFFFFELL) - 2;
            if ((*(&v355 + 1) & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              v158 = v154;
              v159 = 0;
            }

            else
            {
              v159 = 0;
              v160 = (v355 + 2);
              while (*(v160 - 1) < *v160)
              {
                ++v159;
                ++v160;
                v157 -= 2;
                if (!v157)
                {
                  v159 = ((*(&v355 + 1) - 4) >> 1) + 1;
                  break;
                }
              }

              v158 = v342;
            }

            v325 = *(&v373[0] + 1);
            v327 = v369[0];
            v161 = *(&v383 + 1);
            v162 = (v384 & 0xFFFFFFFFFFFFFFFELL) - 2;
            if ((v384 & 0xFFFFFFFFFFFFFFFELL) == 2)
            {
              v163 = 1;
            }

            else
            {
              v164 = (*(&v383 + 1) + 2);
              v163 = 1;
              while (*(v164 - 1) < *v164)
              {
                ++v163;
                ++v164;
                v162 -= 2;
                if (!v162)
                {
                  v163 = ((v384 - 4) >> 1) + 2;
                  v158 = v342;
                  goto LABEL_266;
                }
              }

              v158 = v342;
            }

            if (v163 != 1 || v159)
            {
LABEL_266:
              if (v159 != v163)
              {
                goto LABEL_280;
              }
            }

            v165 = *(v158 + 48);
            v166 = *(v158 + 16);
            if (*(v158 + 49))
            {
              v167 = *(v158 + 16);
            }

            else
            {
              v167 = 0;
            }

            if (*(v158 + 50))
            {
              v168 = *(v158 + 16);
            }

            else
            {
              v168 = 0;
            }

            v319 = 3 * i;
            if (i)
            {
              if (i > 0x555555555555555)
              {
LABEL_510:
                re::internal::assertLog(6, v169, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, i);
                _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v314, v316);
                __break(1u);
LABEL_511:
                re::internal::assertLog(4, v104, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                _os_crash("assertion failure: (m_data) Out of memory.");
                __break(1u);
LABEL_512:
                re::internal::assertLog(4, v171, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                _os_crash("assertion failure: (m_data) Out of memory.");
                __break(1u);
              }

              if (!v170)
              {
                goto LABEL_512;
              }

              v343 = v170;
              v172 = v170;
              v173 = i - 1;
              if (i != 1)
              {
                v172 = v170;
                do
                {
                  *(v172 + 16) = 0uLL;
                  *(v172 + 32) = 0uLL;
                  *v172 = 0uLL;
                  *(v172 + 36) = 0x7FFFFFFF;
                  v172 += 48;
                  --v173;
                }

                while (v173);
              }

              *(v172 + 16) = 0u;
              *(v172 + 32) = 0u;
              *v172 = 0u;
              *(v172 + 36) = 0x7FFFFFFF;
            }

            else
            {
              v343 = 0;
            }

            v346 = i;
            if (v159)
            {
              v177 = 0;
              v178 = 0;
              v323 = (v166 << v165);
              v321 = v167 + v323 + v168;
              v331 = v159;
              v333 = v6;
              v329 = v161;
              v340 = a1;
              do
              {
                v179 = *(v161 + 2 * v177);
                v180 = *(v6 + v177);
                v181 = *(v6 + (v178 + 1));
                v337 = (v178 + 1);
                if (v335 <= v179)
                {
                  if (v179 >= v323)
                  {
                    if (v167 + v323 <= v179)
                    {
                      if (v321 <= v179)
                      {
                        v241 = std::system_category();
                        v242 = v365[0];
                        v243 = v365[1];
                        *a1 = 0;
                        *(a1 + 8) = 0;
                        *(a1 + 16) = v241;
                        *(a1 + 24) = v242;
                        *(a1 + 40) = v243;
                        v9 = v343;
                        goto LABEL_376;
                      }

                      v182 = 3;
                    }

                    else
                    {
                      v182 = 2;
                    }
                  }

                  else
                  {
                    v182 = 1;
                  }
                }

                else
                {
                  v182 = 0;
                }

                if (v180 < v181)
                {
                  v183 = v179 % *(v342 + 16);
                  v184 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v183) ^ ((0xBF58476D1CE4E5B9 * v183) >> 27));
                  v185 = v184 ^ (v184 >> 31);
                  v4 = *(v327 + 2 * v180);
                  v186 = v180 + 1;
                  v187 = (v325 + 4 * v180);
                  a1 = v327 + 2 + 2 * v180;
                  do
                  {
                    v188 = *v187;
                    if (*v187 != 0.0)
                    {
                      if (i <= v4)
                      {
                        goto LABEL_411;
                      }

                      v189 = v343 + 48 * v4;
                      re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v365, v189, v183, v185);
                      if (HIDWORD(v365[0]) == 0x7FFFFFFF)
                      {
                        memset(v362, 0, 20);
                        memset(v365, 0, 24);
                        re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v365, v189, v183, v185);
                        if (HIDWORD(v365[0]) == 0x7FFFFFFF)
                        {
                          v190 = re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v189, DWORD2(v365[0]), *&v365[0]);
                          *(v190 + 4) = v183;
                          v191 = (v190 + 8);
                          *(v190 + 24) = *&v362[16];
                          *(v190 + 8) = *v362;
                          ++*(v189 + 40);
                          v4 = *(a1 - 2);
                        }

                        else
                        {
                          v191 = (*(v189 + 16) + 40 * HIDWORD(v365[0]) + 8);
                        }

                        *v191 = v183;
                      }

                      else
                      {
                        v191 = (*(v189 + 16) + 40 * HIDWORD(v365[0]) + 8);
                      }

                      i = v346;
                      *&v191[v182 + 1] = v188;
                    }

                    v193 = *a1;
                    a1 += 2;
                    v192 = v193;
                    v194 = v193 <= v4 || v186++ >= v181;
                    ++v187;
                    v4 = v192;
                  }

                  while (!v194);
                }

                v177 = v337;
                a1 = v340;
                v178 = v337;
                v6 = v333;
                v161 = v329;
              }

              while (v331 > v337);
            }

            v9 = v343;
            if (i)
            {
              for (i = 0; i != v346; ++i)
              {
                v8 = v352;
                if (v352 <= i)
                {
                  goto LABEL_473;
                }

                v8 = *(v342 + 32);
                if (v8 <= i)
                {
                  goto LABEL_481;
                }

                v6 = (v353 + 136 * i);
                v4 = v9 + 48 * i;
                v195 = *(v4 + 28);
                v196 = re::StringID::operator=(v6, (*(v342 + 40) + 16 * i));
                if (v195)
                {
                  v199 = v342;
                  if (*(v342 + 48) == 1)
                  {
                    v199 = v342;
                  }

                  if (*(v199 + 49) == 1)
                  {
                    v199 = v342;
                  }

                  if (*(v199 + 50) == 1)
                  {
                  }

                  *&v364[2] = 0;
                  memset(v362, 0, sizeof(v362));
                  v200 = *(v4 + 28);
                  if (v200)
                  {
                    v198 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v362, v200);
                  }

                  v201 = *(v4 + 32);
                  if (v201)
                  {
                    v202 = 0;
                    v203 = *(v4 + 16);
                    while (1)
                    {
                      v204 = *v203;
                      v203 += 10;
                      if (v204 < 0)
                      {
                        break;
                      }

                      if (v201 == ++v202)
                      {
                        LODWORD(v202) = *(v4 + 32);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v202) = 0;
                  }

                  v8 = *&v362[16];
                  if (v202 == v201)
                  {
                    v205 = *&v364[2];
                  }

                  else
                  {
                    v206 = *(v4 + 32);
                    do
                    {
                      v207 = *(v4 + 16);
                      if (v8 >= *&v362[8])
                      {
                        if (*&v362[8] < v8 + 1)
                        {
                          if (*v362)
                          {
                            v208 = 2 * *&v362[8];
                            if (!*&v362[8])
                            {
                              v208 = 8;
                            }

                            if (v208 <= v8 + 1)
                            {
                              v209 = v8 + 1;
                            }

                            else
                            {
                              v209 = v208;
                            }

                            v198 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v362, v209);
                          }

                          else
                          {
                            v198 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v362, v8 + 1);
                            ++*&v362[24];
                          }
                        }

                        v8 = *&v362[16];
                        v206 = *(v4 + 32);
                      }

                      v205 = *&v364[2];
                      *(*&v364[2] + 8 * v8++) = v207 + 40 * v202 + 8;
                      *&v362[16] = v8;
                      ++*&v362[24];
                      if (v206 <= v202 + 1)
                      {
                        v210 = v202 + 1;
                      }

                      else
                      {
                        v210 = v206;
                      }

                      while (v210 - 1 != v202)
                      {
                        LODWORD(v202) = v202 + 1;
                        if ((*(*(v4 + 16) + 40 * v202) & 0x80000000) != 0)
                        {
                          goto LABEL_349;
                        }
                      }

                      LODWORD(v202) = v210;
LABEL_349:
                      ;
                    }

                    while (v202 != v201);
                  }

                  v211 = 126 - 2 * __clz(v8);
                  if (v8)
                  {
                    v212 = v211;
                  }

                  else
                  {
                    v212 = 0;
                  }

                  std::__introsort<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,false>(v205, (v205 + 8 * v8), v212, 1);
                  if (v8)
                  {
                    v143 = 0;
                    v9 = v6[3];
                    while (1)
                    {
                      if (v9 == v143)
                      {
                        goto LABEL_421;
                      }

                      v213 = *(v205 + 8 * v143);
                      *(v6[4] + 4 * v143) = *v213;
                      v4 = v6[6];
                      if (v4 <= v143)
                      {
                        break;
                      }

                      *(v6[7] + 4 * v143) = v213[1];
                      if (*(v342 + 48) == 1)
                      {
                        v4 = v6[9];
                        if (v4 <= v143)
                        {
                          goto LABEL_437;
                        }

                        *(v6[10] + 4 * v143) = v213[2];
                      }

                      if (*(v342 + 49) == 1)
                      {
                        v4 = v6[12];
                        if (v4 <= v143)
                        {
                          goto LABEL_445;
                        }

                        *(v6[13] + 4 * v143) = v213[3];
                      }

                      if (*(v342 + 50) == 1)
                      {
                        v4 = v6[15];
                        if (v4 <= v143)
                        {
                          goto LABEL_453;
                        }

                        *(v6[16] + 4 * v143) = v213[4];
                      }

                      if (v8 == ++v143)
                      {
                        goto LABEL_367;
                      }
                    }

LABEL_429:
                    v361 = 0;
                    v367 = 0u;
                    v368 = 0u;
                    v366 = 0u;
                    memset(v365, 0, sizeof(v365));
                    v253 = MEMORY[0x1E69E9C10];
                    v254 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v376 = 136315906;
                    *&v376[4] = "operator[]";
                    v377 = 1024;
                    if (v254)
                    {
                      v255 = 3;
                    }

                    else
                    {
                      v255 = 2;
                    }

                    v378 = 468;
                    v379 = 2048;
                    v380 = v143;
                    v381 = 2048;
                    v382 = v4;
                    _os_log_send_and_compose_impl(v255, &v361, v365, 80, &dword_1E1C61000, v253, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                    _os_crash_msg();
                    __break(1u);
LABEL_433:
                    v361 = 0;
                    v367 = 0u;
                    v368 = 0u;
                    v366 = 0u;
                    memset(v365, 0, sizeof(v365));
                    v256 = MEMORY[0x1E69E9C10];
                    v257 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v376 = 136315906;
                    *&v376[4] = "operator[]";
                    v377 = 1024;
                    if (v257)
                    {
                      v258 = 3;
                    }

                    else
                    {
                      v258 = 2;
                    }

                    v378 = 468;
                    v379 = 2048;
                    v380 = v143;
                    v381 = 2048;
                    v382 = v4;
                    _os_log_send_and_compose_impl(v258, &v361, v365, 80, &dword_1E1C61000, v256, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                    _os_crash_msg();
                    __break(1u);
LABEL_437:
                    v361 = 0;
                    v367 = 0u;
                    v368 = 0u;
                    v366 = 0u;
                    memset(v365, 0, sizeof(v365));
                    v259 = MEMORY[0x1E69E9C10];
                    v260 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v376 = 136315906;
                    *&v376[4] = "operator[]";
                    v377 = 1024;
                    if (v260)
                    {
                      v261 = 3;
                    }

                    else
                    {
                      v261 = 2;
                    }

                    v378 = 468;
                    v379 = 2048;
                    v380 = v143;
                    v381 = 2048;
                    v382 = v4;
                    _os_log_send_and_compose_impl(v261, &v361, v365, 80, &dword_1E1C61000, v259, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                    _os_crash_msg();
                    __break(1u);
LABEL_441:
                    v361 = 0;
                    v367 = 0u;
                    v368 = 0u;
                    v366 = 0u;
                    memset(v365, 0, sizeof(v365));
                    v262 = MEMORY[0x1E69E9C10];
                    v263 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v376 = 136315906;
                    *&v376[4] = "operator[]";
                    v377 = 1024;
                    if (v263)
                    {
                      v264 = 3;
                    }

                    else
                    {
                      v264 = 2;
                    }

                    v378 = 468;
                    v379 = 2048;
                    v380 = v143;
                    v381 = 2048;
                    v382 = v4;
                    _os_log_send_and_compose_impl(v264, &v361, v365, 80, &dword_1E1C61000, v262, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                    _os_crash_msg();
                    __break(1u);
LABEL_445:
                    v361 = 0;
                    v367 = 0u;
                    v368 = 0u;
                    v366 = 0u;
                    memset(v365, 0, sizeof(v365));
                    v265 = MEMORY[0x1E69E9C10];
                    v266 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v376 = 136315906;
                    *&v376[4] = "operator[]";
                    v377 = 1024;
                    if (v266)
                    {
                      v267 = 3;
                    }

                    else
                    {
                      v267 = 2;
                    }

                    v378 = 468;
                    v379 = 2048;
                    v380 = v143;
                    v381 = 2048;
                    v382 = v4;
                    _os_log_send_and_compose_impl(v267, &v361, v365, 80, &dword_1E1C61000, v265, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                    _os_crash_msg();
                    __break(1u);
LABEL_449:
                    v361 = 0;
                    v367 = 0u;
                    v368 = 0u;
                    v366 = 0u;
                    memset(v365, 0, sizeof(v365));
                    v268 = MEMORY[0x1E69E9C10];
                    v269 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v376 = 136315906;
                    *&v376[4] = "operator[]";
                    v377 = 1024;
                    if (v269)
                    {
                      v270 = 3;
                    }

                    else
                    {
                      v270 = 2;
                    }

                    v378 = 468;
                    v379 = 2048;
                    v380 = v143;
                    v381 = 2048;
                    v382 = v4;
                    _os_log_send_and_compose_impl(v270, &v361, v365, 80, &dword_1E1C61000, v268, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                    _os_crash_msg();
                    __break(1u);
LABEL_453:
                    v361 = 0;
                    v367 = 0u;
                    v368 = 0u;
                    v366 = 0u;
                    memset(v365, 0, sizeof(v365));
                    v271 = MEMORY[0x1E69E9C10];
                    v272 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v376 = 136315906;
                    *&v376[4] = "operator[]";
                    v377 = 1024;
                    if (v272)
                    {
                      v273 = 3;
                    }

                    else
                    {
                      v273 = 2;
                    }

                    v378 = 468;
                    v379 = 2048;
                    v380 = v143;
                    v381 = 2048;
                    v382 = v4;
                    _os_log_send_and_compose_impl(v273, &v361, v365, 80, &dword_1E1C61000, v271, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                    _os_crash_msg();
                    __break(1u);
LABEL_457:
                    *&v365[0] = 0;
                    *(v6 + 19) = 0u;
                    *(v6 + 20) = 0u;
                    *(v6 + 17) = 0u;
                    *(v6 + 18) = 0u;
                    *(v6 + 16) = 0u;
                    v274 = MEMORY[0x1E69E9C10];
                    v275 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v373[0]) = 136315906;
                    *(v6 + 100) = "operator[]";
                    WORD6(v373[0]) = 1024;
                    if (v275)
                    {
                      v276 = 3;
                    }

                    else
                    {
                      v276 = 2;
                    }

                    *(v6 + 110) = 476;
                    WORD1(v373[1]) = 2048;
                    *(v6 + 116) = v9;
                    WORD6(v373[1]) = 2048;
                    *(v6 + 126) = v8;
                    _os_log_send_and_compose_impl(v276, v365, &v383, 80, &dword_1E1C61000, v274, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v373, 38, v317, v318);
                    _os_crash_msg();
                    __break(1u);
LABEL_461:
                    *&v355 = 0;
                    v374 = 0u;
                    v375 = 0u;
                    memset(v373, 0, sizeof(v373));
                    v277 = MEMORY[0x1E69E9C10];
                    v278 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v369[0]) = 136315906;
                    *(v369 + 4) = "operator[]";
                    WORD2(v369[1]) = 1024;
                    if (v278)
                    {
                      v279 = 3;
                    }

                    else
                    {
                      v279 = 2;
                    }

                    *(&v369[1] + 6) = 468;
                    WORD1(v369[2]) = 2048;
                    *(&v369[2] + 4) = v4;
                    WORD2(v369[3]) = 2048;
                    *(&v369[3] + 6) = v6;
                    _os_log_send_and_compose_impl(v279, &v355, v373, 80, &dword_1E1C61000, v277, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v369, 38, v317, v318);
                    _os_crash_msg();
                    __break(1u);
                    goto LABEL_465;
                  }

LABEL_367:
                  if (v205 && *v362)
                  {
                    (*(**v362 + 40))(*v362, v205);
                  }

                  v9 = v343;
                }
              }
            }

            v214 = *v351;
            v215 = v352;
            v216 = v353;
            v217 = v354;
            *a1 = 1;
            *(a1 + 8) = v214;
            *&v365[0] = 0;
            *(&v365[0] + 1) = &str_67;
            v218 = *&v351[8];
            *v351 = 0;
            *&v351[8] = &str_67;
            v352 = 0;
            v353 = 0;
            *&v351[16] = 0;
            *(a1 + 16) = v218;
            v365[1] = 0uLL;
            *(a1 + 32) = v215;
            *(a1 + 40) = v216;
            *(&v366 + 1) = v217;
            *&v366 = 0;
            *(a1 + 48) = v217;
            v219 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v365[1]);
            if (v365[0])
            {
              if (v365[0])
              {
              }
            }

            i = v346;
LABEL_376:
            if (i)
            {
              v220 = 16 * v319;
              v221 = v9;
              do
              {
                v153.n128_f64[0] = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v221);
                v221 += 6;
                v220 -= 48;
              }

              while (v220);
LABEL_379:
            }

            goto LABEL_380;
          }

LABEL_505:
          *v376 = 0;
          v367 = 0u;
          v368 = 0u;
          v366 = 0u;
          memset(v365, 0, sizeof(v365));
          v310 = MEMORY[0x1E69E9C10];
          v311 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v362 = 136315906;
          *&v362[4] = "operator[]";
          *&v362[12] = 1024;
          if (v311)
          {
            v312 = 3;
          }

          else
          {
            v312 = 2;
          }

          *&v362[14] = 476;
          *&v362[18] = 2048;
          *&v362[20] = v9;
          v363 = 2048;
          *v364 = v12;
          _os_log_send_and_compose_impl(v312, v376, v365, 80, &dword_1E1C61000, v310, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v362, 38, v317, v318);
          _os_crash_msg();
          __break(1u);
LABEL_509:
          re::internal::assertLog(6, v102, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 48, i);
          _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v313, v315);
          __break(1u);
          goto LABEL_510;
        }

        (*(**(&v365[1] + 1) + 40))();
      }

      v75 = v342;
      goto LABEL_94;
    }

LABEL_66:
    v55 = std::system_category();
    v56 = "Deformation model has mismatched buffer and name counts";
    goto LABEL_67;
  }

  if (v11)
  {
    v12 = v11[2];
    if (v12 == v11[8])
    {
      if (v12 > v9)
      {
        v13 = v11[3] + 336 * v9;
        re::ReadOnlyCPUAccessibleBufferSliceContent::make(&v383, (v13 + 176));
        v14 = v383;
        v15 = v384;
        v341 = v13;
        re::ReadOnlyCPUAccessibleBufferSliceContent::make(v373, (v13 + 96));
        if (v373[0])
        {
          v371 = 0;
          v372 = 0;
          memset(v369, 0, sizeof(v369));
          v370 = 0u;
          v359 = 0;
          v360 = 0;
          v355 = 0u;
          v356 = 0u;
          v16 = 2;
          v357 = 0u;
          v358 = 0u;
          if (!v14)
          {
            v17 = v341;
            goto LABEL_113;
          }

          v17 = v341;
          if (!v15)
          {
            goto LABEL_113;
          }

          re::ReadOnlyCPUAccessibleBufferSliceContent::make(v365, (v341 + 256));
          v18 = LOBYTE(v365[0]);
          if (LOBYTE(v365[0]) == 1)
          {
            re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(v369, v365 + 1);
          }

          else
          {
            v65 = std::system_category();
            v66 = *v351;
            v67 = *&v351[16];
            v68 = v352;
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v65;
            *(a1 + 24) = v66;
            *(a1 + 40) = v67;
            *(a1 + 48) = v68;
          }

          if (LOBYTE(v365[0]) == 1)
          {
            re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v365 + 8));
          }

          else
          {
            v73 = v341;
            if (!*(&v365[1] + 1) || (v366 & 1) == 0)
            {
LABEL_87:
              if (!v18)
              {
                goto LABEL_383;
              }

              re::ReadOnlyCPUAccessibleBufferSliceContent::make(v365, (v73 + 216));
              LODWORD(v74) = LOBYTE(v365[0]);
              if (LOBYTE(v365[0]) == 1)
              {
                re::ReadOnlyCPUAccessibleBufferSliceContent::operator=(&v355, v365 + 1);
              }

              else
              {
LABEL_101:
                v79 = std::system_category();
                v80 = *v351;
                v81 = *&v351[16];
                v82 = v352;
                *a1 = 0;
                *(a1 + 8) = 0;
                *(a1 + 16) = v79;
                *(a1 + 24) = v80;
                *(a1 + 40) = v81;
                *(a1 + 48) = v82;
              }

              if (LOBYTE(v365[0]) == 1)
              {
                re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent((v365 + 8));
              }

              else
              {
                v17 = v341;
                if (!*(&v365[1] + 1) || (v366 & 1) == 0)
                {
                  goto LABEL_111;
                }

                (*(**(&v365[1] + 1) + 40))();
              }

              v17 = v341;
LABEL_111:
              if (!v74)
              {
                goto LABEL_383;
              }

              v16 = 1;
LABEL_113:
              i = *v17;
              *v351 = 0;
              *&v351[8] = &str_67;
              HIDWORD(v354) = 0;
              v352 = 0;
              v353 = 0;
              *&v351[16] = 0;
              LOBYTE(v354) = 0;
              v12 = v11[8];
              if (v12 > v9)
              {
                v87 = v17;
                v88 = re::StringID::operator=(v351, (v11[9] + 16 * v9));
                LOBYTE(v354) = v16;
                v334 = *(v87 + 3);
                HIDWORD(v354) = v334 / 3;
                v6 = v355;
                v90 = (*(&v355 + 1) & 0xFFFFFFFFFFFFFFFCLL) - 4;
                if ((*(&v355 + 1) & 0xFFFFFFFFFFFFFFFCLL) == 4)
                {
                  v91 = v87;
                  v92 = 0;
                }

                else
                {
                  v92 = 0;
                  v93 = (v355 + 4);
                  while (*(v93 - 1) < *v93)
                  {
                    ++v92;
                    ++v93;
                    v90 -= 4;
                    if (!v90)
                    {
                      v92 = ((*(&v355 + 1) - 8) >> 2) + 1;
                      break;
                    }
                  }

                  v91 = v341;
                }

                v324 = *(&v373[0] + 1);
                v326 = v369[0];
                v94 = *(&v383 + 1);
                v95 = (v384 & 0xFFFFFFFFFFFFFFFCLL) - 4;
                if ((v384 & 0xFFFFFFFFFFFFFFFCLL) == 4)
                {
                  v96 = 1;
                }

                else
                {
                  v97 = (*(&v383 + 1) + 4);
                  v96 = 1;
                  while (*(v97 - 1) < *v97)
                  {
                    ++v96;
                    ++v97;
                    v95 -= 4;
                    if (!v95)
                    {
                      v96 = ((v384 - 8) >> 2) + 2;
                      v91 = v341;
                      goto LABEL_130;
                    }
                  }

                  v91 = v341;
                }

                if (v96 == 1 && !v92)
                {
LABEL_131:
                  v98 = *(v91 + 48);
                  v99 = *(v91 + 16);
                  if (*(v91 + 49))
                  {
                    v100 = *(v91 + 16);
                  }

                  else
                  {
                    v100 = 0;
                  }

                  if (*(v91 + 50))
                  {
                    v101 = *(v91 + 16);
                  }

                  else
                  {
                    v101 = 0;
                  }

                  v319 = 3 * i;
                  if (!i)
                  {
                    v343 = 0;
LABEL_145:
                    v345 = i;
                    if (v92)
                    {
                      v107 = 0;
                      v108 = 0;
                      v322 = (v99 << v98);
                      v320 = v100 + v322 + v101;
                      v330 = v92;
                      v332 = v6;
                      v328 = v94;
                      v339 = a1;
                      do
                      {
                        v109 = *(v94 + 4 * v107);
                        v110 = *(v6 + v107);
                        v111 = *(v6 + (v108 + 1));
                        v336 = (v108 + 1);
                        if (v109 >= v334)
                        {
                          if (v109 >= v322)
                          {
                            if (v100 + v322 <= v109)
                            {
                              if (v320 <= v109)
                              {
                                goto LABEL_415;
                              }

                              v112 = 3;
                            }

                            else
                            {
                              v112 = 2;
                            }
                          }

                          else
                          {
                            v112 = 1;
                          }
                        }

                        else
                        {
                          v112 = 0;
                        }

                        if (v110 < v111)
                        {
                          v113 = v109 % *(v341 + 16);
                          v114 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v113 ^ (v113 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v113 ^ (v113 >> 30))) >> 27));
                          v115 = v114 ^ (v114 >> 31);
                          a1 = *(v326 + 4 * v110);
                          v116 = v110 + 1;
                          v117 = (v324 + 4 * v110);
                          v4 = v326 + 4 + 4 * v110;
                          do
                          {
                            v118 = *v117;
                            if (*v117 != 0.0)
                            {
                              if (i <= a1)
                              {
                                goto LABEL_407;
                              }

                              v119 = v343 + 48 * a1;
                              re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v365, v119, v113, v115);
                              if (HIDWORD(v365[0]) == 0x7FFFFFFF)
                              {
                                memset(v362, 0, 20);
                                memset(v365, 0, 24);
                                re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(v365, v119, v113, v115);
                                if (HIDWORD(v365[0]) == 0x7FFFFFFF)
                                {
                                  v120 = re::HashTable<unsigned int,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v119, DWORD2(v365[0]), *&v365[0]);
                                  *(v120 + 4) = v113;
                                  v121 = (v120 + 8);
                                  *(v120 + 8) = *v362;
                                  *(v120 + 24) = *&v362[16];
                                  ++*(v119 + 40);
                                }

                                else
                                {
                                  v121 = (*(v119 + 16) + 40 * HIDWORD(v365[0]) + 8);
                                }

                                *v121 = v113;
                                a1 = *(v4 - 4);
                              }

                              else
                              {
                                v121 = (*(v119 + 16) + 40 * HIDWORD(v365[0]) + 8);
                              }

                              i = v345;
                              *&v121[v112 + 1] = v118;
                            }

                            v123 = *v4;
                            v4 += 4;
                            v122 = v123;
                            v124 = v123 <= a1 || v116++ >= v111;
                            ++v117;
                            a1 = v122;
                          }

                          while (!v124);
                        }

                        v107 = v336;
                        a1 = v339;
                        v108 = v336;
                        v6 = v332;
                        v94 = v328;
                      }

                      while (v330 > v336);
                    }

                    v9 = v343;
                    if (i)
                    {
                      for (i = 0; i != v345; ++i)
                      {
                        v8 = v352;
                        if (v352 <= i)
                        {
                          goto LABEL_469;
                        }

                        v8 = *(v341 + 32);
                        if (v8 <= i)
                        {
                          goto LABEL_477;
                        }

                        v6 = (v353 + 136 * i);
                        v4 = v9 + 48 * i;
                        v125 = *(v4 + 28);
                        v126 = re::StringID::operator=(v6, (*(v341 + 40) + 16 * i));
                        if (v125)
                        {
                          v129 = v341;
                          if (*(v341 + 48) == 1)
                          {
                            v129 = v341;
                          }

                          if (*(v129 + 49) == 1)
                          {
                            v129 = v341;
                          }

                          if (*(v129 + 50) == 1)
                          {
                          }

                          *&v364[2] = 0;
                          memset(v362, 0, sizeof(v362));
                          v130 = *(v4 + 28);
                          if (v130)
                          {
                            v128 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v362, v130);
                          }

                          v131 = *(v4 + 32);
                          if (v131)
                          {
                            v132 = 0;
                            v133 = *(v4 + 16);
                            while (1)
                            {
                              v134 = *v133;
                              v133 += 10;
                              if (v134 < 0)
                              {
                                break;
                              }

                              if (v131 == ++v132)
                              {
                                LODWORD(v132) = *(v4 + 32);
                                break;
                              }
                            }
                          }

                          else
                          {
                            LODWORD(v132) = 0;
                          }

                          v8 = *&v362[16];
                          if (v132 == v131)
                          {
                            v135 = *&v364[2];
                          }

                          else
                          {
                            v136 = *(v4 + 32);
                            do
                            {
                              v137 = *(v4 + 16);
                              if (v8 >= *&v362[8])
                              {
                                if (*&v362[8] < v8 + 1)
                                {
                                  if (*v362)
                                  {
                                    v138 = 2 * *&v362[8];
                                    if (!*&v362[8])
                                    {
                                      v138 = 8;
                                    }

                                    if (v138 <= v8 + 1)
                                    {
                                      v139 = v8 + 1;
                                    }

                                    else
                                    {
                                      v139 = v138;
                                    }

                                    v128 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v362, v139);
                                  }

                                  else
                                  {
                                    v128 = re::DynamicArray<re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*>::setCapacity(v362, v8 + 1);
                                    ++*&v362[24];
                                  }
                                }

                                v8 = *&v362[16];
                                v136 = *(v4 + 32);
                              }

                              v135 = *&v364[2];
                              *(*&v364[2] + 8 * v8++) = v137 + 40 * v132 + 8;
                              *&v362[16] = v8;
                              ++*&v362[24];
                              if (v136 <= v132 + 1)
                              {
                                v140 = v132 + 1;
                              }

                              else
                              {
                                v140 = v136;
                              }

                              while (v140 - 1 != v132)
                              {
                                LODWORD(v132) = v132 + 1;
                                if ((*(*(v4 + 16) + 40 * v132) & 0x80000000) != 0)
                                {
                                  goto LABEL_212;
                                }
                              }

                              LODWORD(v132) = v140;
LABEL_212:
                              ;
                            }

                            while (v132 != v131);
                          }

                          v141 = 126 - 2 * __clz(v8);
                          if (v8)
                          {
                            v142 = v141;
                          }

                          else
                          {
                            v142 = 0;
                          }

                          std::__introsort<std::_ClassicAlgPolicy,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::{lambda(re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const*)#1} &,re::Result<re::BlendShapeGroupDefinition,re::DetailedError> re::makeSparseBlendShapeGroupDefinitionFromGroup<unsigned int>(re::DeformationModelData const&,unsigned int)::DeltaValues const**,false>(v135, (v135 + 8 * v8), v142, 1);
                          if (v8)
                          {
                            v143 = 0;
                            v9 = v6[3];
                            while (v9 != v143)
                            {
                              v144 = *(v135 + 8 * v143);
                              *(v6[4] + 4 * v143) = *v144;
                              v4 = v6[6];
                              if (v4 <= v143)
                              {
                                goto LABEL_425;
                              }

                              *(v6[7] + 4 * v143) = v144[1];
                              if (*(v341 + 48) == 1)
                              {
                                v4 = v6[9];
                                if (v4 <= v143)
                                {
                                  goto LABEL_433;
                                }

                                *(v6[10] + 4 * v143) = v144[2];
                              }

                              if (*(v341 + 49) == 1)
                              {
                                v4 = v6[12];
                                if (v4 <= v143)
                                {
                                  goto LABEL_441;
                                }

                                *(v6[13] + 4 * v143) = v144[3];
                              }

                              if (*(v341 + 50) == 1)
                              {
                                v4 = v6[15];
                                if (v4 <= v143)
                                {
                                  goto LABEL_449;
                                }

                                *(v6[16] + 4 * v143) = v144[4];
                              }

                              if (v8 == ++v143)
                              {
                                goto LABEL_230;
                              }
                            }

                            v361 = 0;
                            v367 = 0u;
                            v368 = 0u;
                            v366 = 0u;
                            memset(v365, 0, sizeof(v365));
                            v244 = MEMORY[0x1E69E9C10];
                            v245 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            *v376 = 136315906;
                            *&v376[4] = "operator[]";
                            v377 = 1024;
                            if (v245)
                            {
                              v246 = 3;
                            }

                            else
                            {
                              v246 = 2;
                            }

                            v378 = 468;
                            v379 = 2048;
                            v380 = v9;
                            v381 = 2048;
                            v382 = v9;
                            _os_log_send_and_compose_impl(v246, &v361, v365, 80, &dword_1E1C61000, v244, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                            _os_crash_msg();
                            __break(1u);
LABEL_421:
                            v361 = 0;
                            v367 = 0u;
                            v368 = 0u;
                            v366 = 0u;
                            memset(v365, 0, sizeof(v365));
                            v247 = MEMORY[0x1E69E9C10];
                            v248 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            *v376 = 136315906;
                            *&v376[4] = "operator[]";
                            v377 = 1024;
                            if (v248)
                            {
                              v249 = 3;
                            }

                            else
                            {
                              v249 = 2;
                            }

                            v378 = 468;
                            v379 = 2048;
                            v380 = v9;
                            v381 = 2048;
                            v382 = v9;
                            _os_log_send_and_compose_impl(v249, &v361, v365, 80, &dword_1E1C61000, v247, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                            _os_crash_msg();
                            __break(1u);
LABEL_425:
                            v361 = 0;
                            v367 = 0u;
                            v368 = 0u;
                            v366 = 0u;
                            memset(v365, 0, sizeof(v365));
                            v250 = MEMORY[0x1E69E9C10];
                            v251 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                            *v376 = 136315906;
                            *&v376[4] = "operator[]";
                            v377 = 1024;
                            if (v251)
                            {
                              v252 = 3;
                            }

                            else
                            {
                              v252 = 2;
                            }

                            v378 = 468;
                            v379 = 2048;
                            v380 = v143;
                            v381 = 2048;
                            v382 = v4;
                            _os_log_send_and_compose_impl(v252, &v361, v365, 80, &dword_1E1C61000, v250, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v376, 38, v317, v318);
                            _os_crash_msg();
                            __break(1u);
                            goto LABEL_429;
                          }

LABEL_230:
                          if (v135 && *v362)
                          {
                            (*(**v362 + 40))(*v362, v135);
                          }

                          v9 = v343;
                        }
                      }
                    }

                    v145 = *v351;
                    v146 = v352;
                    v147 = v353;
                    v148 = v354;
                    *a1 = 1;
                    *(a1 + 8) = v145;
                    *&v365[0] = 0;
                    *(&v365[0] + 1) = &str_67;
                    v149 = *&v351[8];
                    *v351 = 0;
                    *&v351[8] = &str_67;
                    v352 = 0;
                    v353 = 0;
                    *&v351[16] = 0;
                    *(a1 + 16) = v149;
                    v365[1] = 0uLL;
                    *(a1 + 32) = v146;
                    *(a1 + 40) = v147;
                    *(&v366 + 1) = v148;
                    *&v366 = 0;
                    *(a1 + 48) = v148;
                    v150 = re::FixedArray<re::BlendShapeDefinition>::deinit(&v365[1]);
                    if (v365[0])
                    {
                      if (v365[0])
                      {
                      }
                    }

                    i = v345;
                    goto LABEL_239;
                  }

                  if (i <= 0x555555555555555)
                  {
                    if (v103)
                    {
                      v343 = v103;
                      v105 = v103;
                      v106 = i - 1;
                      if (i != 1)
                      {
                        v105 = v103;
                        do
                        {
                          *(v105 + 16) = 0uLL;
                          *(v105 + 32) = 0uLL;
                          *v105 = 0uLL;
                          *(v105 + 36) = 0x7FFFFFFF;
                          v105 += 48;
                          --v106;
                        }

                        while (v106);
                      }

                      *(v105 + 16) = 0u;
                      *(v105 + 32) = 0u;
                      *v105 = 0u;
                      *(v105 + 36) = 0x7FFFFFFF;
                      goto LABEL_145;
                    }

                    goto LABEL_511;
                  }

                  goto LABEL_509;
                }

LABEL_130:
                if (v92 == v96)
                {
                  goto LABEL_131;
                }

LABEL_280:
                v174 = std::system_category();
                v175 = v365[0];
                v176 = v365[1];
                *a1 = 0;
                *(a1 + 8) = 0;
                *(a1 + 16) = v174;
                *(a1 + 24) = v175;
                *(a1 + 40) = v176;
                goto LABEL_380;
              }

              goto LABEL_501;
            }

            (*(**(&v365[1] + 1) + 40))();
          }

          v73 = v341;
          goto LABEL_87;
        }

LABEL_74:
        v62 = std::system_category();
        v63 = v365[0];
        v64 = v365[1];
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = v62;
        *(a1 + 24) = v63;
        *(a1 + 40) = v64;
        goto LABEL_384;
      }

      goto LABEL_489;
    }

    goto LABEL_66;
  }

LABEL_64:
  v55 = std::system_category();
  v56 = "Deformation model does not contain blendshape data";
LABEL_67:
  v57 = v383;
  v58 = v384;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v55;
  *(a1 + 24) = v57;
  *(a1 + 40) = v58;
LABEL_68:
  if (v347 == 1)
  {
    re::ReadOnlyCPUAccessibleBufferSliceContent::~ReadOnlyCPUAccessibleBufferSliceContent(v348);
  }

  else if (v349)
  {
    if (v350)
    {
      (*(*v349 + 40))();
    }
  }
}

uint64_t re::BlendShapeModelUtil::computeBlendShapeModelSizeExcludingMetalBuffers(re::BlendShapeModelUtil *this, const DeformationModelData *a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = v2[2];
  v4 = 336 * v3 + 80;
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = v2[3] + 336 * i;
      v7 = *(v6 + 32);
      v4 += 16 * v7;
      if (v7)
      {
        v8 = (*(v6 + 40) + 8);
        do
        {
          if (*(v8 - 1))
          {
            v9 = strlen(*v8) + 1;
          }

          else
          {
            v9 = 0;
          }

          v4 += v9;
          v8 += 2;
          --v7;
        }

        while (v7);
      }
    }
  }

  v10 = v2[8];
  v11 = v4 + 4 * v2[5] + 16 * v10;
  if (v10)
  {
    v12 = (v2[9] + 8);
    do
    {
      if (*(v12 - 1))
      {
        v13 = strlen(*v12) + 1;
      }

      else
      {
        v13 = 0;
      }

      v11 += v13;
      v12 += 2;
      --v10;
    }

    while (v10);
  }

  return v11;
}

void re::BlendShapeDeformer::~BlendShapeDeformer(re::BlendShapeDeformer *this)
{
  re::BlendShapeDeformer::~BlendShapeDeformer(this);

  JUMPOUT(0x1E6906520);
}

{
  for (i = 80; i != 48; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  v4 = *(this + 6);
  if (v4)
  {

    *(this + 6) = 0;
  }

  v5 = *(this + 5);
  if (v5)
  {

    *(this + 5) = 0;
  }

  for (j = 32; j != 16; j -= 8)
  {
    v7 = *(this + j);
    if (v7)
    {

      *(this + j) = 0;
    }
  }

  do
  {
    v8 = *(this + j);
    if (v8)
    {

      *(this + j) = 0;
    }

    j -= 8;
  }

  while (j);
}

void re::anonymous namespace::allocateBlendShapeBufferData(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t *a5, int64x2_t *a6)
{
  v72[5] = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 16);
  if (a1)
  {
    if (v10 <= a3)
    {
      v56 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v48 = MEMORY[0x1E69E9C10];
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v57 = 136315906;
      *&v57[4] = "operator[]";
      v58 = 1024;
      if (v49)
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      v59 = 468;
      v60 = 2048;
      v61 = a3;
      v62 = 2048;
      *v63 = v10;
      _os_log_send_and_compose_impl(v50, &v56, &v64, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v57, 38, v54);
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }

    v11 = *(a2 + 24) + 336 * a3;
    v12 = [a1 newBufferWithLength:vaddvq_s64(vaddq_s64(a6[2] options:{vaddq_s64(a6[1], *a6))), 0}];
    *&v64 = v12;
    DWORD2(v65) = 0;
    LODWORD(v66) = 0;
    DWORD1(v66) = [v12 length];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11 + 56, &v64);
    *(v11 + 88) = v66;
    if (DWORD2(v65) != -1)
    {
      (off_1F5D05EF0[DWORD2(v65)])(v57, &v64);
    }

    DWORD2(v65) = -1;
    if (v12)
    {
    }

    v14 = *(v11 + 88);
    re::BufferSlice::buffer(v11 + 56, v13);
    v15 = *(v11 + 56);
    v55 = v11;
    v16 = re::BufferSlice::contents((v11 + 56));
    for (i = 0; i != 240; i += 40)
    {
      v18 = &v64 + i;
      *v18 = 0;
      *(v18 + 6) = 0;
      *(v18 + 4) = 0;
    }

    v19 = 0;
    v20 = 0;
    v21 = a4 + 1;
    do
    {
      v22 = a5[v20];
      *v57 = v15;
      HIDWORD(v61) = 0;
      *&v63[2] = __PAIR64__(v22, v14);
      std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v64 + v19, v57);
      *(&v66 + v19) = *&v63[2];
      if (HIDWORD(v61) != -1)
      {
        (off_1F5D05EF0[HIDWORD(v61)])(&v56, v57);
      }

      v23 = a5[v20];
      *(v21 - 1) = v16 + v14;
      *v21 = v23;
      v14 += a6->i64[v20++];
      v21 += 2;
      v19 += 40;
    }

    while (v20 != 6);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v55 + 17), &v64);
    v55[21] = v66;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v55 + 12), &v66 + 8);
    v55[16] = *(&v68 + 1);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v55 + 22), v69);
    v55[26] = v69[4];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v55 + 27), v70);
    v55[31] = v70[4];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v55 + 32), v71);
    v55[36] = v71[4];
    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>((v55 + 37), v72);
    v24 = 0;
    v55[41] = v72[4];
    do
    {
      v25 = &v64 + v24 * 8;
      v26 = LODWORD(v72[v24 + 3]);
      if (v26 != -1)
      {
        (off_1F5D05EF0[v26])(v57, v25 + 200);
      }

      *(v25 + 56) = -1;
      v24 -= 5;
    }

    while (v24 != -30);
    if (v15)
    {
    }
  }

  else
  {
    if (v10 <= a3)
    {
LABEL_39:
      v56 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v64 = 0u;
      v51 = MEMORY[0x1E69E9C10];
      v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v57 = 136315906;
      *&v57[4] = "operator[]";
      v58 = 1024;
      if (v52)
      {
        v53 = 3;
      }

      else
      {
        v53 = 2;
      }

      v59 = 468;
      v60 = 2048;
      v61 = a3;
      v62 = 2048;
      *v63 = v10;
      _os_log_send_and_compose_impl(v53, &v56, &v64, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v57, 38, v54);
      _os_crash_msg();
      __break(1u);
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    do
    {
      if (v27 == 1)
      {
        v28 += a6->i64[1];
      }

      else
      {
        v29 += a6->i64[v27];
      }

      ++v27;
    }

    while (v27 != 6);
    v30 = (*(a2 + 24) + 184 * a3);
    v31 = re::globalAllocators(0);
    re::FixedArray<BOOL>::init<>(v30 + 5, v31[2], v28);
    v33 = re::globalAllocators(v32);
    re::FixedArray<BOOL>::init<>(v30 + 8, v33[2], v29);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = a6;
    do
    {
      v39 = *a5++;
      v38 = v39;
      if (v39)
      {
        if (v34 == 2)
        {
          a4[2] = v30[7] + v36;
          a4[3] = v38;
          v36 += a6->i64[1];
        }

        else
        {
          v41 = &a4[v34];
          *v41 = v30[10] + v35;
          v41[1] = v38;
          v35 += v37->i64[0];
        }
      }

      else
      {
        v40 = &a4[v34];
        *v40 = 0;
        v40[1] = 0;
      }

      v34 += 2;
      v37 = (v37 + 8);
    }

    while (v34 != 12);
    v42 = a4[1];
    v30[13] = *a4;
    v30[14] = v42;
    v43 = a4[3];
    v30[11] = a4[2];
    v30[12] = v43;
    v44 = a4[5];
    v30[15] = a4[4];
    v30[16] = v44;
    v45 = a4[7];
    v30[17] = a4[6];
    v30[18] = v45;
    v46 = a4[9];
    v30[19] = a4[8];
    v30[20] = v46;
    v47 = a4[11];
    v30[21] = a4[10];
    v30[22] = v47;
  }
}

uint64_t re::internal::Callable<re::BlendShapeDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  re::FixedArray<CoreIKTransform>::deinit(*a2 + 3);

  return re::FixedArray<CoreIKTransform>::deinit(v2);
}

void *re::internal::Callable<re::BlendShapeDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D05F10;
  return result;
}

void *re::internal::Callable<re::BlendShapeDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D05F10;
  return result;
}

void re::FixedArray<re::PerFrameGPUDataBuffer>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v5 = 24 * a3;
  v6 = (*(*a2 + 32))(a2, 24 * a3, 8);
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
    bzero(v6, v5 - 24);
    v8 = (v8 + v5 - 24);
  }

  *v8 = 0;
  v8[1] = 0;
  v8[2] = 0;
}

uint64_t re::internal::Callable<re::BlendShapeDeformer::stitchedFunctionParameters(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationParameters &,re::MutableSlice<re::StitchFunctionParameters> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  re::FixedArray<CoreIKTransform>::deinit(*a2 + 3);

  return re::FixedArray<CoreIKTransform>::deinit(v2);
}

void *re::internal::Callable<re::BlendShapeDeformer::stitchedFunctionParameters(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationParameters &,re::MutableSlice<re::StitchFunctionParameters> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D05F68;
  return result;
}

void *re::internal::Callable<re::BlendShapeDeformer::stitchedFunctionParameters(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationParameters &,re::MutableSlice<re::StitchFunctionParameters> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D05F68;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_22BlendShapeModelPayloadEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D05FC0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_22BlendShapeModelPayloadEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<re::StringID>::deinit((v2 + 56));
    re::FixedArray<CoreIKTransform>::deinit((v2 + 32));
    if (*(v2 + 8))
    {
      v4 = *(v2 + 16);
      if (v4)
      {
        v5 = 184 * v4;
        v6 = (*(v2 + 24) + 64);
        do
        {
          re::FixedArray<CoreIKTransform>::deinit(v6);
          re::FixedArray<CoreIKTransform>::deinit(v6 - 3);
          re::FixedArray<re::StringID>::deinit(v6 - 6);
          v6 += 23;
          v5 -= 184;
        }

        while (v5);
        (*(**(v2 + 8) + 40))(*(v2 + 8), *(v2 + 24));
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 8) = 0;
    }

    v7 = *(*v3 + 40);

    return v7(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_22BlendShapeModelPayloadEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_12_GLOBAL__N_115BlendShapeModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D06040;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_18BlendShapeDeformerENS2_12_GLOBAL__N_115BlendShapeModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISG_EEFvSF_EEclEOSF_(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<re::StringID>::deinit((v2 + 56));
    re::FixedArray<CoreIKTransform>::deinit((v2 + 32));
    if (*(v2 + 8))
    {
      v4 = *(v2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = *(v2 + 24);
        v7 = 336 * v4;
        do
        {
          v8 = v6 + v5;
          v9 = *(v6 + v5 + 320);
          if (v9 != -1)
          {
            (off_1F5D05EF0[v9])(&v19, v8 + 296);
          }

          *(v8 + 320) = -1;
          v10 = *(v8 + 280);
          if (v10 != -1)
          {
            (off_1F5D05EF0[v10])(&v20, v6 + v5 + 256);
          }

          *(v8 + 280) = -1;
          v11 = v6 + v5;
          v12 = *(v6 + v5 + 240);
          if (v12 != -1)
          {
            (off_1F5D05EF0[v12])(&v21, v11 + 216);
          }

          *(v11 + 240) = -1;
          v13 = *(v11 + 200);
          if (v13 != -1)
          {
            (off_1F5D05EF0[v13])(&v22, v6 + v5 + 176);
          }

          *(v11 + 200) = -1;
          v14 = v6 + v5;
          v15 = *(v6 + v5 + 160);
          if (v15 != -1)
          {
            (off_1F5D05EF0[v15])(&v23, v14 + 136);
          }

          *(v14 + 160) = -1;
          v16 = *(v14 + 120);
          if (v16 != -1)
          {
            (off_1F5D05EF0[v16])(&v24, v6 + v5 + 96);
          }

          *(v14 + 120) = -1;
          v17 = v6 + v5;
          v18 = *(v6 + v5 + 80);
          if (v18 != -1)
          {
            (off_1F5D05EF0[v18])(&v25, v17 + 56);
          }

          *(v17 + 80) = -1;
          re::FixedArray<re::StringID>::deinit((v17 + 24));
          v5 += 336;
        }

        while (v7 != v5);
        (*(**(v2 + 8) + 40))(*(v2 + 8), *(v2 + 24));
        *(v2 + 16) = 0;
        *(v2 + 24) = 0;
      }

      *(v2 + 8) = 0;
    }

    return (*(*v3 + 40))(v3, v2);
  }

  return result;
}