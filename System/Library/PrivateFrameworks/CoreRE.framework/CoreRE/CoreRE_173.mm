re *re::internal::destroyPersistent<re::TechniqueStage>(re *result, uint64_t a2, re::TechniqueStage *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::TechniqueStage::~TechniqueStage(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

unint64_t re::TypedArgument::resolutionHash(re::TypedArgument *this)
{
  v1 = 0xBF58476D1CE4E5B9 * ((*this >> 31) ^ (*this >> 1));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(this + 8)) ^ ((0xBF58476D1CE4E5B9 * *(this + 8)) >> 27));
  return ((v2 << 6) + (v2 >> 2) + ((re::MetalTypeInfo::resolutionHash((this + 24)) + ((v3 ^ (v3 >> 31)) << 6) + ((v3 ^ (v3 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v3 ^ (v3 >> 31)) - 0x61C8864680B583E9) ^ v2;
}

void re::makeAttributeArguments(id *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  v4 = [objc_msgSend(*a1 vertexAttributes)];
  if (v4)
  {
    v5 = v4;
    re::DynamicArray<re::BlendParameterInputNode>::setCapacity(a2, v4);
    for (i = 0; i != v5; ++i)
    {
      v7 = [objc_msgSend(*a1 vertexAttributes)];
      if ([v7 isActive])
      {
        v8 = [objc_msgSend(v7 name)];
        *&v12.var0 = 0;
        v12.var1 = &str_67;
        LOWORD(v8) = [v7 attributeIndex];
        v9 = [v7 attributeType];
        v10 = re::StringID::StringID(v13, &v12);
        v14 = v8;
        v15 = v9;
        if (*&v12.var0)
        {
          if (*&v12.var0)
          {
          }
        }

        v11 = re::DynamicArray<re::AttributeArgument>::add(a2, v13);
        if (v13[0])
        {
          if (v13[0])
          {
          }
        }
      }
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::AttributeArgument>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v3 = this;
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    this = re::DynamicArray<re::AttributeArgument>::growCapacity(this, v4 + 1);
    v4 = *(v3 + 2);
  }

  v5 = *(v3 + 4) + 24 * v4;
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v5 + 16) = *(a2 + 4);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return this;
}

uint64_t re::TechniqueDefinitionBuilder::hashFunctionConstants(uint64_t a1, uint64_t a2, int a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = (a1 + 36);
  v6 = 104 * a2;
  do
  {
    if (*(v5 - 28))
    {
      v7 = *(v5 - 20);
    }

    else
    {
      v7 = v5 - 27;
    }

    v8 = strlen(v7);
    v9 = 0x9E3779B97F4A7C17;
    if (v8)
    {
      MurmurHash3_x64_128(v7, v8, 0, v16);
      v9 = ((v16[1] - 0x61C8864680B583E9 + (v16[0] << 6) + (v16[0] >> 2)) ^ v16[0]) - 0x61C8864680B583E9;
    }

    v10 = 0xBF58476D1CE4E5B9 * (*v5 ^ (*v5 >> 30));
    v11 = ((v9 << 6) - 0x61C8864680B583E9 + (v9 >> 2) + ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31))) ^ v9;
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v5 - 2)) ^ ((0xBF58476D1CE4E5B9 * *(v5 - 2)) >> 27));
    v13 = ((v12 ^ (v12 >> 31)) - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
    if (a3)
    {
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v5 - 1)) ^ ((0xBF58476D1CE4E5B9 * *(v5 - 1)) >> 27));
      v13 ^= (v13 << 6) - 0x61C8864680B583E9 + (v13 >> 2) + (v14 ^ (v14 >> 31));
    }

    v4 ^= v13;
    v5 += 13;
    v6 -= 104;
  }

  while (v6);
  return v4;
}

uint64_t re::TechniqueDefinitionBuilder::hashFunctionConstants(uint64_t a1, uint64_t a2, re::FunctionConstantUsageMask *this)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = (a1 + 36);
  v6 = 104 * a2;
  do
  {
    if (re::FunctionConstantUsageMask::getIndexUsage(this, *(v5 - 1)))
    {
      if (*(v5 - 28))
      {
        v7 = *(v5 - 20);
      }

      else
      {
        v7 = v5 - 27;
      }

      v8 = strlen(v7);
      v9 = 0x9E3779B97F4A7C17;
      if (v8)
      {
        MurmurHash3_x64_128(v7, v8, 0, v16);
        v9 = ((v16[1] - 0x61C8864680B583E9 + (v16[0] << 6) + (v16[0] >> 2)) ^ v16[0]) - 0x61C8864680B583E9;
      }

      v10 = 0xBF58476D1CE4E5B9 * (*v5 ^ (*v5 >> 30));
      v11 = ((v9 << 6) - 0x61C8864680B583E9 + (v9 >> 2) + ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31))) ^ v9;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v5 - 2)) ^ ((0xBF58476D1CE4E5B9 * *(v5 - 2)) >> 27));
      v13 = ((v12 ^ (v12 >> 31)) - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11;
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *(v5 - 1)) ^ ((0xBF58476D1CE4E5B9 * *(v5 - 1)) >> 27));
      v4 ^= v13 ^ ((v14 ^ (v14 >> 31)) - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2));
    }

    v5 += 13;
    v6 -= 104;
  }

  while (v6);
  return v4;
}

BOOL re::FunctionConstantUsageMask::getIndexUsage(re::FunctionConstantUsageMask *this, unsigned int a2)
{
  v3 = a2;
  if (a2 > 0x7F)
  {
    return re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(this + 16, &v3);
  }

  else
  {
    return (*(this + re::Bitset<128>::toWordIndex(this, a2)) >> a2) & 1;
  }
}

void re::TechniqueDefinitionBuilder::buildPipelineData(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v13 = a2;
  v11 = a3;
  v10 = a7;
  v9[1] = 0;
  if (v15)
  {
    v8 = *&v16[7];
  }

  else
  {
    v8 = v16;
  }

  re::WrappedError::make(v9, @"REMaterialBuilderErrorDomain", 0, v8);
  if (v14)
  {
    if (v15)
    {
      (*(*v14 + 40))();
    }
  }

  operator new();
}

re::DynamicString *re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(re::DynamicString *a1, re::DynamicString *a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 7);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 7) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 7);
        }

        re::HashTable<re::DynamicString,re::MaterialTechniqueQualityLevelSetData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v5, v6);
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

_anonymous_namespace_ *re::FixedArray<re::TechniqueFunctionConstant>::operator=(re::DynamicString **a1, uint64_t *a2)
{
  if (!*a1)
  {
    v4 = a2[1];
    if (!v4)
    {
      return a1;
    }
  }

  v5 = a2[1];
  if (a1[1] == v5)
  {
    if (v5)
    {
      v6 = *a2;
      v7 = a1[2];
      v8 = 104 * v5;
      do
      {
        v9 = re::DynamicString::operator=(v7, v6);
        *(v9 + 2) = *(v6 + 32);
        v10 = *(v6 + 48);
        v11 = *(v6 + 64);
        v12 = *(v6 + 80);
        *(v9 + 24) = *(v6 + 96);
        *(v9 + 4) = v11;
        *(v9 + 5) = v12;
        *(v9 + 3) = v10;
        v6 += 104;
        v7 = (v9 + 104);
        v8 -= 104;
      }

      while (v8);
    }

    return a1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
  result = _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
  __break(1u);
  return result;
}

void re::MaterialDefinitionBuilder::result(re::MaterialDefinitionBuilder *this@<X0>, re::RenderManager *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = this;
  v325 = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 1440, 8);
  bzero(v5, 0x5A0uLL);
  ArcSharedObject::ArcSharedObject(v5, 0);
  *v5 = &unk_1F5D03CB0;
  *(v5 + 1) = 0u;
  v296 = (v5 + 2);
  *(v5 + 2) = 0u;
  *(v5 + 12) = 0;
  v6 = 0x7FFFFFFFLL;
  *(v5 + 52) = 0x7FFFFFFFLL;
  *(v5 + 4) = 0u;
  v300 = (v5 + 8);
  *(v5 + 5) = 0u;
  *(v5 + 24) = 0;
  *(v5 + 100) = 0x7FFFFFFFLL;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 156) = 0u;
  *(v5 + 172) = 0x7FFFFFFFLL;
  *(v5 + 23) = 0u;
  *(v5 + 25) = 0u;
  *(v5 + 27) = 0u;
  *(v5 + 29) = 0u;
  re::MaterialParameterTable::MaterialParameterTable((v5 + 31));
  *(v5 + 352) = 0;
  *(v5 + 87) = 0u;
  *(v5 + 86) = 0u;
  *(v5 + 1412) = 0x7FFFFFFFLL;
  v5[178] = 0;
  *(v5 + 716) = 0;
  if (*(v3 + 8))
  {
    v7 = *(v3 + 16);
  }

  else
  {
    v7 = (v3 + 9);
  }

  v8 = strlen(v7);
  v9 = re::globalAllocators(v8);
  v10 = (*(*v9[2] + 32))(v9[2], v8 + 1, 0);
  memcpy(v10, v7, v8 + 1);
  v5[178] = v10;
  re::DynamicString::DynamicString(v317, (v3 + 32));
  *(v5 + 1432) = 0;
  v11 = *&v317[0];
  if (*&v317[0])
  {
    if (BYTE8(v317[0]))
    {
      v11 = (*(**&v317[0] + 40))();
    }

    memset(v317, 0, sizeof(v317));
  }

  v294 = v5 + 14;
  v314 = 0;
  v315 = 0;
  v316 = 0;
  v12 = *(v3 + 1148);
  v312 = 0;
  v310 = 0u;
  v311 = 0u;
  v313 = 0x7FFFFFFFLL;
  v298 = *(v3 + 1152);
  if (v298)
  {
    v15 = 0;
    v16 = *(v3 + 1136);
    while (1)
    {
      v17 = *v16;
      v16 += 14;
      if (v17 < 0)
      {
        break;
      }

      if (v298 == ++v15)
      {
        LODWORD(v15) = *(v3 + 1152);
        break;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  v295 = (v5 + 23);
  v303 = v3;
  if (v15 != v298)
  {
    v302 = 0;
    v25 = v5 + 1;
    if (!v5)
    {
      v25 = 0;
    }

    obj = v25;
    while (1)
    {
      v19 = *(*(v3 + 1136) + 56 * v15 + 40);
      v26 = re::globalAllocators(v13);
      v27 = (*(*v26[2] + 32))(v26[2], 2856, 8);
      bzero(v27, 0xB28uLL);
      v27[5] = 1;
      v27[6] = 0;
      *(v27 + 7) = 0u;
      *(v27 + 36) = 0;
      *(v27 + 74) = 1;
      *(v27 + 76) = 1;
      *(v27 + 39) = -1;
      *(v27 + 81) = 1031;
      *(v27 + 84) = 0x500000001;
      v27[12] = 0x500000001;
      *(v27 + 27) = 15;
      v27[16] = 0;
      *(v27 + 17) = 0u;
      *(v27 + 38) = 0;
      v27[14] = 0;
      *(v27 + 117) = 0;
      re::MaterialParameterTable::MaterialParameterTable((v27 + 21));
      re::MaterialParameterTable::MaterialParameterTable((v27 + 162));
      *(v27 + 305) = 0u;
      *(v27 + 307) = 0u;
      v29 = re::DynamicString::setCapacity(v27 + 305, 0);
      *(v27 + 309) = 0u;
      *(v27 + 311) = 0u;
      re::DynamicString::setCapacity(v27 + 309, 0);
      *(v27 + 315) = 0u;
      *(v27 + 317) = 0u;
      *(v27 + 313) = 0u;
      v27[319] = 0x7FFFFFFF00000000;
      *(v27 + 640) = 0;
      *(v27 + 321) = 0u;
      *(v27 + 323) = 0u;
      *(v27 + 325) = 0u;
      *(v27 + 654) = 0;
      *(v27 + 2620) = 0x7FFFFFFF;
      *(v27 + 2632) = 0;
      *(v27 + 331) = 0u;
      *(v27 + 333) = 0u;
      *(v27 + 670) = 0;
      v299 = (v27 + 2676);
      *(v27 + 2684) = 0x7FFFFFFF;
      v27[339] = 0;
      *(v27 + 337) = 0u;
      objc_initWeak(v27 + 342, 0);
      v18 = (v27 + 343);
      *(v27 + 343) = 0u;
      *(v27 + 345) = 0u;
      *(v27 + 694) = 0;
      *(v27 + 2780) = 0x7FFFFFFF;
      *(v27 + 349) = 0u;
      *(v27 + 351) = 0u;
      *(v27 + 706) = 0;
      *(v27 + 2828) = 0x7FFFFFFF;
      *(v27 + 710) = 0;
      *(v27 + 1422) = 0;
      *(v27 + 2846) = 1;
      *(v27 + 2847) = 0;
      *(v27 + 2850) = 0;
      if (*(v19 + 8))
      {
        v30 = *(v19 + 16);
      }

      else
      {
        v30 = (v19 + 9);
      }

      v31 = strlen(v30);
      v32 = re::globalAllocators(v31);
      v33 = (*(*v32[2] + 32))(v32[2], v31 + 1, 0);
      memcpy(v33, v30, v31 + 1);
      *v27 = v33;
      v34 = *(v19 + 240);
      v35 = *(v19 + 256);
      v36 = *(v19 + 272);
      *(v27 + 30) = *(v19 + 288);
      *(v27 + 13) = v36;
      *(v27 + 11) = v35;
      *(v27 + 9) = v34;
      if (*(v27 + 124))
      {
        v37 = (v27 + 331);
        v39 = (v27 + 305);
        v38 = (v27 + 309);
        if (*(v19 + 292))
        {
          *(v27 + 125) = *(v19 + 293);
        }

        else
        {
          *(v27 + 124) = 0;
        }

        v40 = (v27 + 16);
      }

      else
      {
        v40 = (v27 + 16);
        v37 = (v27 + 331);
        v39 = (v27 + 305);
        v38 = (v27 + 309);
        if (*(v19 + 292))
        {
          *(v27 + 124) = 1;
          *(v27 + 125) = *(v19 + 293);
        }
      }

      re::DynamicArray<re::RenderAttachmentState>::operator=(v40, (v19 + 296));
      v27[303] = *(v19 + 32);
      re::DynamicString::operator=(v39, (v19 + 40));
      *(v27 + 313) = *(v19 + 72);
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=((v27 + 315), v19 + 88);
      v27[304] = *(v19 + 136);
      re::DynamicString::operator=(v38, (v19 + 144));
      *(v27 + 321) = *(v19 + 176);
      v41 = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=((v27 + 323), v19 + 192);
      v43 = *(*(a2 + 6) + 368);
      if (*(v19 + 32) != v43 || (v44 = *(v19 + 136)) != 0 && v44 != v43)
      {
        *(v27 + 2853) = 1;
      }

      if (v27[329])
      {
        if ((*(v19 + 520) & 1) == 0)
        {
          v27[330] = 0;
          *(v27 + 2632) = 0;
          goto LABEL_45;
        }
      }

      else
      {
        if ((*(v19 + 520) & 1) == 0)
        {
          goto LABEL_45;
        }

        *(v27 + 2632) = 1;
      }

      v27[330] = *(v19 + 528);
LABEL_45:
      v45 = (v19 + 536);
      if (v37 != (v19 + 536))
      {
        if (*v37)
        {
          if (*v299)
          {
            v46 = *(v27 + 668);
            if (v46)
            {
              memset_pattern16(v27[332], &memset_pattern_211, 4 * v46);
            }

            v47 = *(v27 + 670);
            if (v47)
            {
              v48 = 0;
              for (i = 0; i < v47; ++i)
              {
                v50 = v27[333];
                v51 = *&v50[v48];
                if (v51 < 0)
                {
                  v52 = &v50[v48];
                  *v52 = v51 & 0x7FFFFFFF;
                  *(v52 + 1) = 0;
                  *(v52 + 2) = 0;
                  v47 = *(v27 + 670);
                }

                v48 += 24;
              }
            }

            *(v27 + 671) = 0x7FFFFFFF;
            *v299 = 0;
            ++*(v27 + 672);
          }

          if (*v45)
          {
            v53 = *(v19 + 564);
            if (*(v27 + 668) < v53)
            {
              re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(v37, v53);
            }

            v41 = re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(v37, v19 + 536);
            ++*(v27 + 672);
          }
        }

        else
        {
          v42 = *v45;
          if (*v45)
          {
            if (*(v19 + 564) <= 3u)
            {
              v54 = 3;
            }

            else
            {
              v54 = *(v19 + 564);
            }

            re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(v37, v42, v54);
            v41 = re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(v37, v19 + 536);
          }
        }
      }

      v55 = *(v19 + 512);
      v56 = *(v19 + 496);
      if (!v27[337])
      {
        if (!v56)
        {
          goto LABEL_80;
        }

        v27[338] = v56;
        if (v56 >> 61)
        {
          goto LABEL_491;
        }

        v27[339] = v58;
        if (!v58)
        {
LABEL_492:
          re::internal::assertLog(4, v42, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash("assertion failure: (m_data) Out of memory.");
          __break(1u);
LABEL_493:
          *&v307 = 0;
          v320 = 0u;
          v321 = 0u;
          memset(v319, 0, sizeof(v319));
          v280 = MEMORY[0x1E69E9C10];
          v281 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "slice";
          *&buf[12] = 1024;
          if (v281)
          {
            v282 = 3;
          }

          else
          {
            v282 = 2;
          }

          *&buf[14] = 502;
          *&buf[18] = 2048;
          *&buf[20] = 0;
          v323 = 2048;
          v324 = 0;
          _os_log_send_and_compose_impl(v282, &v307, v319, 80, &dword_1E1C61000, v280, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v290, v292);
          _os_crash_msg();
          __break(1u);
LABEL_497:
          re::internal::assertLog(7, v14, "assertion failure: '%s' (%s:line %i) Invalid count. index = %zu, count = %zu, array size = %zu", "endIndexExclusive <= m_size", "slice", 512, 0, v18, v129);
          _os_crash("assertion failure: (endIndexExclusive <= m_size) Invalid count. index = %zu, count = %zu, array size = %zu", v287, v289, v291);
          __break(1u);
LABEL_498:
          v318 = 0;
          *(v19 + 96) = 0u;
          *(v19 + 112) = 0u;
          *(v19 + 64) = 0u;
          *(v19 + 80) = 0u;
          *(v19 + 48) = 0u;
          v283 = MEMORY[0x1E69E9C10];
          v284 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          *&buf[12] = 1024;
          if (v284)
          {
            v285 = 3;
          }

          else
          {
            v285 = 2;
          }

          *&buf[14] = 789;
          *&buf[18] = 2048;
          *&buf[20] = 0;
          v323 = 2048;
          v324 = 0;
          _os_log_send_and_compose_impl(v285, &v318, v319, 80, &dword_1E1C61000, v283, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v290, v292);
          _os_crash_msg();
          __break(1u);
LABEL_502:
          re::internal::assertLog(4, v136, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
          _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
          __break(1u);
        }

        v59 = v58;
        if (v56 != 1)
        {
          bzero(v58, 8 * v56 - 8);
          v59 += 8 * v56 - 8;
        }

        *v59 = 0;
      }

      if (v27[338] != v56)
      {
        goto LABEL_490;
      }

      if (v56)
      {
        v60 = v27[339];
        v61 = 8 * v56;
        do
        {
          v62 = *v55++;
          *v60 = v62;
          v60 += 8;
          v61 -= 8;
        }

        while (v61);
      }

      v63 = *(v19 + 496);
      if (!v63)
      {
LABEL_80:
        v64 = 0;
        v56 = (v27 + 6);
        goto LABEL_81;
      }

      v64 = 0;
      v65 = *(v19 + 512);
      v66 = 8 * v63;
      v56 = (v27 + 6);
      do
      {
        v67 = *v65++;
        v64 = (v67 ^ v64);
        v66 -= 8;
      }

      while (v66);
LABEL_81:
      v27[340] = v64;
      *(v27 + 2845) = *(v19 + 685);
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v27 + 343), (v19 + 584));
      *(v27 + 710) = *(v19 + 680);
      re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v27 + 349), v19 + 632);
      *(v27 + 2844) = 0;
      if ((atomic_load_explicit(&qword_1EE1B8690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8690))
      {
        _MergedGlobals_435 = re::mtl::Device::supportsDynamicAttributeStride(a2 + 26);
        __cxa_guard_release(&qword_1EE1B8690);
      }

      if (_MergedGlobals_435 == 1)
      {
        if (v27[306])
        {
          v68 = v27[307];
        }

        else
        {
          v68 = v27 + 2449;
        }

        v69 = strcmp(v68, "vsRealityPbrOpenSubdiv");
        v70 = *(v19 + 684);
        if (!v69)
        {
          v70 = 0;
        }

        *(v27 + 2844) = v70;
      }

      if (*(v27 + 2846))
      {
        if (*(v19 + 686))
        {
          *(v27 + 2847) = *(v19 + 687);
        }

        else
        {
          *(v27 + 2846) = 0;
        }
      }

      else if (*(v19 + 686))
      {
        *(v27 + 2846) = 1;
        *(v27 + 2847) = *(v19 + 687);
      }

      *(v27 + 2848) = *(v19 + 688);
      if ((*(v27 + 2853) & 1) == 0)
      {
        if (v27[306])
        {
          v71 = v27[307];
        }

        else
        {
          v71 = v27 + 2449;
        }

        re::MaterialManager::getEngineShaderMetadata(v319, *(a2 + 3), v71);
        if (*(v19 + 152))
        {
          v72 = *(v19 + 160);
        }

        else
        {
          v72 = (v19 + 153);
        }

        re::MaterialManager::getEngineShaderMetadata(buf, *(a2 + 3), v72);
        if (v319[0] == 1)
        {
          *(v27 + 2849) = *&v319[1];
        }

        if (buf[0] == 1)
        {
          *(v27 + 2851) = *&buf[1];
        }
      }

      v73 = *(a2 + 3);
      re::FunctionConstantsEnumerator::createEnumerator(v19 + 376, *(v19 + 472), *(v19 + 456), v19 + 336, (v73 + 976), v319);
      re::FixedArray<float>::operator=(v27 + 1, v319);
      *(v27 + 2) = *&v319[24];
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(v319);
      re::FunctionConstantsEnumerator::createPermutation((v27 + 1), 0, *(v19 + 368), *(v19 + 352), v319);
      *buf = *&v319[32];
      *&buf[8] = *&v319[16];
      re::FixedArray<re::TechniqueFunctionConstant>::operator=(v56, buf);
      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v319);
      if (*(v27 + 2845) == 1)
      {
        *buf = v19 + 376;
        v74 = *(v19 + 392);
        if (v74 >= 0x10)
        {
          v75 = 0;
          v76 = *(v19 + 376);
          v77 = v74 >> 4;
          while (1)
          {
            v78 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v76), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
            *&buf[8] = v78 ^ 0xFFFFLL;
            if (v78 != 0xFFFFLL)
            {
              break;
            }

            v75 -= 16;
            ++v76;
            if (!--v77)
            {
              goto LABEL_113;
            }
          }

          v79 = __clz(__rbit64(v78 ^ 0xFFFFLL));
          v80 = v79 - v75;
          *&buf[16] = v79 - v75;
          if (v79 + 1 != v75)
          {
            do
            {
              v94 = *(*buf + 8) + 96 * v80;
              v95 = re::Hash<re::DynamicString>::operator()(v319, v94);
              v96 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((v27 + 343), v94, v95, v319);
              if (*&v319[12] == 0x7FFFFFFF)
              {
                v56 = *re::graphicsLogObjects(v96);
                if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                {
                  if (*(v94 + 8))
                  {
                    v97 = *(v94 + 16);
                  }

                  else
                  {
                    v97 = v94 + 9;
                  }

                  *v319 = 136315138;
                  *&v319[4] = v97;
                  _os_log_error_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_ERROR, "Missing runtime function constant fallback value for varying function constant %s. Please add fallback values to the material definition.", v319, 0xCu);
                }
              }

              re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(buf);
              v80 = *&buf[16];
            }

            while (*&buf[16] != -1);
          }
        }

LABEL_113:
        v81 = *(v19 + 456);
        if (v81)
        {
          v19 = *(v19 + 472);
          v82 = (v19 + 8 * v81);
          do
          {
            v318 = *v19;
            v83 = re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::find((v73 + 976), &v318);
            re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::HashBrown(v319, *(v73 + 984) + 72 * v83 + 8);
            *&v307 = v319;
            *(&v307 + 1) = 0;
            if (*&v319[16] >= 0x10uLL)
            {
              v84 = 0;
              v85 = *v319;
              v86 = *&v319[16] >> 4;
              while (1)
              {
                v87 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v85), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
                *(&v307 + 1) = v87 ^ 0xFFFFLL;
                if (v87 != 0xFFFFLL)
                {
                  break;
                }

                v84 -= 16;
                ++v85;
                if (!--v86)
                {
                  goto LABEL_121;
                }
              }

              v88 = __clz(__rbit64(v87 ^ 0xFFFFLL));
              v89 = v88 - v84;
              v308 = v88 - v84;
              if (v88 + 1 != v84)
              {
                do
                {
                  v90 = *(v307 + 8) + 96 * v89;
                  v91 = re::Hash<re::DynamicString>::operator()(buf, v90);
                  v92 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>((v27 + 343), v90, v91, buf);
                  if (*&buf[12] == 0x7FFFFFFF)
                  {
                    v56 = *re::graphicsLogObjects(v92);
                    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
                    {
                      if (*(v90 + 8))
                      {
                        v93 = *(v90 + 16);
                      }

                      else
                      {
                        v93 = v90 + 9;
                      }

                      *buf = 136315394;
                      *&buf[4] = v93;
                      *&buf[12] = 2048;
                      *&buf[14] = v318;
                      _os_log_error_impl(&dword_1E1C61000, v56, OS_LOG_TYPE_ERROR, "Missing runtime function constant fallback value for varying function constant %s in default variation %lu. This is an RE bug.", buf, 0x16u);
                    }
                  }

                  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v307);
                  v89 = v308;
                }

                while (v308 != -1);
              }
            }

LABEL_121:
            re::HashBrown<re::DynamicString,re::VariedFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,void,false>::deinit(v319);
            v19 += 8;
          }

          while (v19 != v82);
        }
      }

      v98 = v302;
      v18 = v315;
      if (v315 <= v302)
      {
        goto LABEL_486;
      }

      v99 = v316;
      v316[v302] = v27;
      objc_storeWeak(v27 + 342, obj);
      v100 = strlen(*v27);
      if (v100)
      {
        MurmurHash3_x64_128(*v27, v100, 0, v319);
        v101 = (*&v319[8] - 0x61C8864680B583E9 + (*v319 << 6) + (*v319 >> 2)) ^ *v319;
      }

      else
      {
        v101 = 0;
      }

      v3 = v303;
      v102 = strlen(v5[178]);
      v103 = 0x9E3779B97F4A7C17;
      if (v102)
      {
        MurmurHash3_x64_128(v5[178], v102, 0, v319);
        v103 = ((*&v319[8] - 0x61C8864680B583E9 + (*v319 << 6) + (*v319 >> 2)) ^ *v319) - 0x61C8864680B583E9;
      }

      *(v99[v302] + 2728) = ((v101 >> 2) + (v101 << 6) + v103) ^ v101;
      v104 = *v27;
      v105 = re::Hash<re::DynamicString>::operator()(v319, *v27);
      v106 = v105;
      if (v310)
      {
        v107 = v105 % DWORD2(v311);
        v108 = *(*(&v310 + 1) + 4 * v107);
        if (v108 != 0x7FFFFFFF)
        {
          v109 = v311;
          do
          {
            v110 = v109 + 56 * v108;
            v111 = *(v110 + 16);
            v112 = *(v110 + 24);
            v113 = v110 + 17;
            v114 = ((v111 & 1) != 0 ? v112 : v113);
            v13 = strcmp(v114, v104);
            if (!v13)
            {
              goto LABEL_156;
            }

            LODWORD(v108) = *(v109 + 56 * v108) & 0x7FFFFFFF;
          }

          while (v108 != 0x7FFFFFFF);
        }
      }

      else
      {
        LODWORD(v107) = 0;
      }

      v115 = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(&v310, v107, v106);
      v115[10] = v302;
      ++HIDWORD(v313);
LABEL_156:
      ++v302;
      v116 = *(v303 + 1152);
      if (v116 <= v15 + 1)
      {
        v116 = v15 + 1;
      }

      while (v116 - 1 != v15)
      {
        LODWORD(v15) = v15 + 1;
        if ((*(*(v303 + 1136) + 56 * v15) & 0x80000000) != 0)
        {
          goto LABEL_162;
        }
      }

      LODWORD(v15) = v116;
LABEL_162:
      if (v15 == v298)
      {
        goto LABEL_16;
      }
    }
  }

  v302 = 0;
LABEL_16:
  v18 = v3 + 1312;
  v19 = (v5 + 23);
  if (v295 == (v3 + 1312))
  {
    goto LABEL_178;
  }

  v5[28] = 0;
  v5[29] = 0;
  v20 = v5[25];
  v5[26] = 0;
  v5[27] = v20;
  *v319 = v5 + 23;
  if (v20 > 0xF)
  {
    v21 = 0;
    v22 = *v295;
    v23 = v20 >> 4;
    while (1)
    {
      v24 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v22), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      *&v319[8] = v24 ^ 0xFFFFLL;
      if (v24 != 0xFFFFLL)
      {
        break;
      }

      v21 -= 16;
      ++v22;
      if (!--v23)
      {
        goto LABEL_169;
      }
    }

    v117 = __clz(__rbit64(v24 ^ 0xFFFFLL));
    v118 = v117 - v21;
    *&v319[16] = v117 - v21;
    if (v117 + 1 != v21)
    {
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v5[24] + 72 * v118 + 8);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v319);
        v118 = *&v319[16];
      }

      while (*&v319[16] != -1);
      v20 = v5[25];
    }

LABEL_169:
    if (v20 >= 0x10)
    {
      v119 = 0;
      *&v120 = -1;
      *(&v120 + 1) = -1;
      do
      {
        *(v5[23] + 16 * v119++) = v120;
      }

      while (v119 < v5[25] >> 4);
    }
  }

  v121 = *(v3 + 1328);
  if (v121 < 0x10)
  {
    goto LABEL_178;
  }

  v122 = 0;
  v123 = *v18;
  v124 = v121 >> 4;
  v125 = xmmword_1E304FAD0;
  v6 = 0x3830282018100800;
  while (1)
  {
    v126 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v123), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
    if (v126 != 0xFFFFLL)
    {
      break;
    }

    v122 -= 16;
    ++v123;
    if (!--v124)
    {
      goto LABEL_178;
    }
  }

  v127 = v126 ^ 0xFFFFLL;
  v128 = __clz(__rbit64(v127));
  if (v128 + 1 != v122)
  {
    goto LABEL_468;
  }

  while (1)
  {
LABEL_178:
    v129 = v315;
    if (v315 == -1)
    {
      goto LABEL_493;
    }

    v18 = v302;
    v19 = v317;
    if (v315 < v302)
    {
      goto LABEL_497;
    }

    v130 = v316;
    re::MaterialParameterTable::MaterialParameterTable(v319, (v3 + 64), (v3 + 592));
    re::MaterialParameterTable::operator=((v5 + 31), v319);
    re::MaterialParameterTable::~MaterialParameterTable(v319);
    v132 = (v3 + 1072);
    if (v5 + 172 != (v3 + 1072))
    {
      if (v5[172])
      {
        re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear((v5 + 172));
        if (*v132)
        {
          v133 = *(v3 + 1100);
          if (*(v5 + 350) < v133)
          {
            re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity((v5 + 172), v133);
          }

          v131 = re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy((v5 + 172), v3 + 1072);
          ++*(v5 + 354);
        }
      }

      else if (*v132)
      {
        if (*(v3 + 1100) <= 3u)
        {
          v134 = 3;
        }

        else
        {
          v134 = *(v3 + 1100);
        }

        re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init((v5 + 172), *v132, v134);
        v131 = re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy((v5 + 172), v3 + 1072);
      }
    }

    if (!*v294)
    {
      if (!v302)
      {
        goto LABEL_197;
      }
    }

    if (v5[15] != v302)
    {
      goto LABEL_502;
    }

    if (v302)
    {
      v135 = memmove(v5[16], v130, 8 * v302);
    }

LABEL_197:
    if (v5[15])
    {
      v137 = 0;
      do
      {
        v138 = *(v5[16] + 8 * v137);
        v307 = 0uLL;
        v308 = 0;
        *v319 = v137;
        v139 = *v138;
        v140 = strlen(v139);
        if (v140)
        {
          MurmurHash3_x64_128(v139, v140, 0, v319);
          v141 = (*&v319[8] - 0x61C8864680B583E9 + (*v319 << 6) + (*v319 >> 2)) ^ *v319;
        }

        else
        {
          v141 = 0;
        }

        v318 = v141;
        *v319 = v307;
        v142 = v308;
        v308 = 0;
        v307 = 0uLL;
        *&v319[16] = v142;
        v319[24] = -1;
        memset(buf, 0, 24);
        re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>((v5 + 17), &v318, v141, buf);
        v143 = *&buf[12];
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v144 = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry((v5 + 17), *&buf[8], *buf);
          *(v144 + 8) = v318;
          *(v144 + 16) = *v319;
          v145 = *&v319[16];
          memset(v319, 0, 24);
          *(v144 + 32) = v145;
          *(v144 + 40) = v319[24];
          ++*(v5 + 44);
        }

        else
        {
          ++*(v5 + 44);
          v146 = v5[19] + 48 * v143;
          re::FixedArray<float>::operator=((v146 + 16), v319);
          *(v146 + 40) = v319[24];
          if (*v319 && *&v319[8])
          {
            (*(**v319 + 40))();
          }
        }

        v135 = v307;
        if (v307 && *(&v307 + 1))
        {
          v135 = (*(*v307 + 40))();
        }

        ++v137;
      }

      while (v137 < v5[15]);
    }

    v147 = *(v3 + 1296);
    if (v147)
    {
      v148 = 0;
      v149 = *(v3 + 1280);
      while (1)
      {
        v150 = *v149;
        v149 += 22;
        if (v150 < 0)
        {
          break;
        }

        if (v147 == ++v148)
        {
          LODWORD(v148) = *(v3 + 1296);
          break;
        }
      }
    }

    else
    {
      LODWORD(v148) = 0;
    }

    if (v148 != v147)
    {
      v302 = 136315394;
      do
      {
        v56 = v317;
        v151 = *(v303 + 1280) + 88 * v148;
        v98 = v151 + 8;
        v152 = re::Hash<re::DynamicString>::operator()(v319, (v151 + 8));
        v153 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v310, v152, v319, v151 + 8);
        if (*&v319[12] == 0x7FFFFFFF)
        {
          v307 = 0uLL;
          v308 = 0;
          v154 = *(v151 + 56);
          if (*(v151 + 56))
          {
            v155 = 0;
            v19 = 0;
            while (1)
            {
              v156 = *(v151 + 72);
              v157 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v310, (v155 + v156));
              if (!v157)
              {
                break;
              }

              v18 = *(&v307 + 1);
              if (*(&v307 + 1) <= v19)
              {
                v318 = 0;
                v320 = 0u;
                v321 = 0u;
                memset(v319, 0, sizeof(v319));
                v271 = MEMORY[0x1E69E9C10];
                v272 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *buf = 136315906;
                *&buf[4] = "operator[]";
                *&buf[12] = 1024;
                if (v272)
                {
                  v273 = 3;
                }

                else
                {
                  v273 = 2;
                }

                *&buf[14] = 468;
                *&buf[18] = 2048;
                *&buf[20] = v19;
                v323 = 2048;
                v324 = v18;
                _os_log_send_and_compose_impl(v273, &v318, v319, 80, &dword_1E1C61000, v271, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v290, v292);
                _os_crash_msg();
                __break(1u);
LABEL_482:
                v318 = 0;
                v320 = 0u;
                v321 = 0u;
                memset(v319, 0, sizeof(v319));
                v274 = MEMORY[0x1E69E9C10];
                v275 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *buf = 136315906;
                *&buf[4] = "operator[]";
                *&buf[12] = 1024;
                if (v275)
                {
                  v276 = 3;
                }

                else
                {
                  v276 = 2;
                }

                *&buf[14] = 468;
                *&buf[18] = 2048;
                *&buf[20] = v18;
                v323 = 2048;
                v324 = v155;
                _os_log_send_and_compose_impl(v276, &v318, v319, 80, &dword_1E1C61000, v274, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v290, v292);
                _os_crash_msg();
                __break(1u);
LABEL_486:
                *&v307 = 0;
                v320 = 0u;
                v321 = 0u;
                memset(v319, 0, sizeof(v319));
                v277 = MEMORY[0x1E69E9C10];
                v278 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *buf = 136315906;
                *&buf[4] = "operator[]";
                *&buf[12] = 1024;
                if (v278)
                {
                  v279 = 3;
                }

                else
                {
                  v279 = 2;
                }

                *&buf[14] = 468;
                *&buf[18] = 2048;
                *&buf[20] = v98;
                v323 = 2048;
                v324 = v18;
                _os_log_send_and_compose_impl(v279, &v307, v319, 80, &dword_1E1C61000, v277, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v290, v292);
                _os_crash_msg();
                __break(1u);
LABEL_490:
                re::internal::assertLog(4, v42, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
                _os_crash("assertion failure: (m_size == other.size()) Cannot copy from a Slice of a different size");
                __break(1u);
LABEL_491:
                re::internal::assertLog(6, v57, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v56);
                _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v286, v288);
                __break(1u);
                goto LABEL_492;
              }

              *(v308 + 4 * v19++) = *v157;
              v155 += 4;
              if (v19 >= *(v151 + 56))
              {
                goto LABEL_225;
              }
            }

            v161 = *re::graphicsLogObjects(0);
            if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v151 + 16))
              {
                v162 = *(v151 + 24);
              }

              else
              {
                v162 = v151 + 17;
              }

              v163 = v155 + v156;
              if (*(v155 + v156 + 8))
              {
                v164 = *(v163 + 16);
              }

              else
              {
                v164 = v163 + 9;
              }

              *v319 = 136315394;
              *&v319[4] = v162;
              *&v319[12] = 2080;
              *&v319[14] = v164;
              _os_log_impl(&dword_1E1C61000, v161, OS_LOG_TYPE_DEFAULT, "In technique group %s, technique %s does not exist. Skipping the group.", v319, 0x16u);
            }
          }

          else
          {
LABEL_225:
            *buf = re::Hash<re::DynamicString>::operator()(v319, (v151 + 8));
            *v319 = v307;
            v158 = v308;
            v308 = 0;
            v307 = 0uLL;
            *&v319[16] = v158;
            v319[24] = -1;
            re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((v5 + 17), buf, v319);
            if (*v319 && *&v319[8])
            {
              (*(**v319 + 40))();
            }
          }

          v135 = v307;
          if (v307 && *(&v307 + 1))
          {
            v135 = (*(*v307 + 40))();
          }
        }

        else
        {
          v159 = *re::graphicsLogObjects(v153);
          v135 = os_log_type_enabled(v159, OS_LOG_TYPE_DEFAULT);
          if (v135)
          {
            if (*(v151 + 16))
            {
              v160 = *(v151 + 24);
            }

            else
            {
              v160 = v151 + 17;
            }

            *v319 = 136315138;
            *&v319[4] = v160;
            _os_log_impl(&dword_1E1C61000, v159, OS_LOG_TYPE_DEFAULT, "Technique group %s has the same name as an existing technique.  Skipping the group", v319, 0xCu);
          }
        }

        v165 = *(v303 + 1296);
        if (v165 <= v148 + 1)
        {
          v165 = v148 + 1;
        }

        v19 = v317;
        while (v165 - 1 != v148)
        {
          LODWORD(v148) = v148 + 1;
          if ((*(*(v303 + 1280) + 88 * v148) & 0x80000000) != 0)
          {
            goto LABEL_251;
          }
        }

        LODWORD(v148) = v165;
LABEL_251:
        ;
      }

      while (v148 != v147);
    }

    v166 = v303;
    v167 = *(v303 + 1408);
    if (v167)
    {
      v168 = 0;
      v169 = *(v303 + 1392);
      while (1)
      {
        v170 = *v169;
        v169 += 30;
        if (v170 < 0)
        {
          break;
        }

        if (v167 == ++v168)
        {
          LODWORD(v168) = *(v303 + 1408);
          break;
        }
      }
    }

    else
    {
      LODWORD(v168) = 0;
    }

    if (v168 != v167)
    {
      v98 = 0x7FFFFFFFLL;
      v302 = *(v303 + 1408);
      while (1)
      {
        v171 = *(v166 + 1392) + 120 * v168;
        v172 = v171 + 8;
        v173 = re::Hash<re::DynamicString>::operator()(v319, (v171 + 8));
        v174 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v310, v173, v319, v171 + 8);
        if (*&v319[12] != 0x7FFFFFFF)
        {
          break;
        }

        v175 = re::Hash<re::DynamicString>::operator()(v319, (v171 + 8));
        v309 = v175;
        if (v5[17])
        {
          v176 = *(v5[18] + 4 * (v175 % *(v5 + 40)));
          if (v176 != 0x7FFFFFFF)
          {
            v177 = v5[19];
            while (*(v177 + 48 * v176 + 8) != v175)
            {
              v176 = *(v177 + 48 * v176) & 0x7FFFFFFF;
              if (v176 == 0x7FFFFFFF)
              {
                goto LABEL_266;
              }
            }

            v194 = *re::graphicsLogObjects(v175);
            v135 = os_log_type_enabled(v194, OS_LOG_TYPE_DEFAULT);
            if (!v135)
            {
              goto LABEL_319;
            }

            if (*(v171 + 16))
            {
              v195 = *(v171 + 24);
            }

            else
            {
              v195 = v171 + 17;
            }

            *v319 = 136315138;
            *&v319[4] = v195;
            v188 = v194;
            v189 = "Technique quality set %s has the same name as an existing technique group.  Skipping the quality set";
LABEL_318:
            _os_log_impl(&dword_1E1C61000, v188, OS_LOG_TYPE_DEFAULT, v189, v319, 0xCu);
            goto LABEL_319;
          }
        }

LABEL_266:
        v56 = v171 + 40;
        if (!*(v171 + 56))
        {
          v186 = *re::graphicsLogObjects(v175);
          v135 = os_log_type_enabled(v186, OS_LOG_TYPE_DEFAULT);
          if (!v135)
          {
            goto LABEL_319;
          }

          if (*(v171 + 16))
          {
            v187 = *(v171 + 24);
          }

          else
          {
            v187 = v171 + 17;
          }

          *v319 = 136315138;
          *&v319[4] = v187;
          v188 = v186;
          v189 = "In technique quality level set %s ,techniques array is empty. Skipping the set.";
          goto LABEL_318;
        }

        v178 = *(v171 + 56);
        v307 = 0uLL;
        v308 = 0;
        if (!*(v171 + 56))
        {
          v183 = re::Hash<re::DynamicString>::operator()(v319, (v171 + 8));
          v309 = v183;
          goto LABEL_286;
        }

        v19 = 0;
        v18 = 0;
        LOBYTE(v179) = -1;
        do
        {
          v180 = *(v56 + 32);
          v181 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&v310, (v180 + v19));
          if (!v181)
          {
            v192 = *re::graphicsLogObjects(0);
            LODWORD(v167) = v302;
            if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v172 + 8))
              {
                v193 = *(v172 + 16);
              }

              else
              {
                v193 = v172 + 9;
              }

              v199 = v180 + v19;
              if (*(v180 + v19 + 8))
              {
                v200 = *(v199 + 2);
              }

              else
              {
                v200 = v199 + 9;
              }

              *v319 = 136315394;
              *&v319[4] = v193;
              *&v319[12] = 2080;
              *&v319[14] = v200;
              _os_log_impl(&dword_1E1C61000, v192, OS_LOG_TYPE_DEFAULT, "In technique quality level set %s, technique %s does not exist. Skipping the set.", v319, 0x16u);
            }

            goto LABEL_307;
          }

          v155 = *(&v307 + 1);
          if (*(&v307 + 1) <= v18)
          {
            goto LABEL_482;
          }

          v98 = v181;
          if (re::DynamicString::operator==(v180 + v19, v56 + 40))
          {
            v182 = v18;
          }

          else
          {
            v182 = v179;
          }

          v179 = v182;
          *(v308 + 4 * v18++) = *v98;
          v19 += 32;
        }

        while (v18 < *(v56 + 16));
        v183 = re::Hash<re::DynamicString>::operator()(v319, v172);
        v309 = v183;
        v19 = v317;
        if ((v179 & 0x80000000) == 0)
        {
          goto LABEL_303;
        }

LABEL_286:
        v190 = *re::graphicsLogObjects(v183);
        LOBYTE(v179) = 0;
        if (!os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_303;
        }

        if (*(v172 + 8))
        {
          v191 = *(v172 + 16);
        }

        else
        {
          v191 = v172 + 9;
        }

        if (!*(v56 + 16))
        {
          goto LABEL_498;
        }

        v196 = *(v56 + 32);
        if (*(v196 + 8))
        {
          v197 = *(v196 + 2);
        }

        else
        {
          v197 = v196 + 9;
        }

        *v319 = 136315394;
        *&v319[4] = v191;
        *&v319[12] = 2080;
        *&v319[14] = v197;
        _os_log_impl(&dword_1E1C61000, v190, OS_LOG_TYPE_DEFAULT, "In technique quality level set %s, techniqueSetBaseline does not exist. It will be set to technique %s by default.", v319, 0x16u);
        LOBYTE(v179) = 0;
LABEL_303:
        *v319 = v307;
        v198 = v308;
        v308 = 0;
        v307 = 0uLL;
        *&v319[16] = v198;
        v319[24] = v179;
        re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew((v5 + 17), &v309, v319);
        if (*v319 && *&v319[8])
        {
          (*(**v319 + 40))();
        }

        LODWORD(v167) = v302;
LABEL_307:
        v135 = v307;
        if (v307 && *(&v307 + 1))
        {
          v135 = (*(*v307 + 40))();
        }

        v19 = v317;
        v166 = v303;
LABEL_319:
        v201 = *(v166 + 1408);
        if (v201 <= v168 + 1)
        {
          v201 = v168 + 1;
        }

        v98 = 0x7FFFFFFFLL;
        while (v201 - 1 != v168)
        {
          LODWORD(v168) = v168 + 1;
          if ((*(*(v166 + 1392) + 120 * v168) & 0x80000000) != 0)
          {
            goto LABEL_326;
          }
        }

        LODWORD(v168) = v201;
LABEL_326:
        if (v168 == v167)
        {
          goto LABEL_327;
        }
      }

      v184 = *re::graphicsLogObjects(v174);
      v135 = os_log_type_enabled(v184, OS_LOG_TYPE_DEFAULT);
      if (!v135)
      {
        goto LABEL_319;
      }

      if (*(v171 + 16))
      {
        v185 = *(v171 + 24);
      }

      else
      {
        v185 = v171 + 17;
      }

      *v319 = 136315138;
      *&v319[4] = v185;
      v188 = v184;
      v189 = "Technique quality set %s has the same name as an existing technique.  Skipping the quality set";
      goto LABEL_318;
    }

LABEL_327:
    v202 = *(v166 + 1200);
    if (v202)
    {
      v203 = 0;
      v204 = *(v166 + 1184);
      while (1)
      {
        v205 = *v204;
        v204 += 20;
        if (v205 < 0)
        {
          break;
        }

        if (v202 == ++v203)
        {
          LODWORD(v203) = *(v166 + 1200);
          break;
        }
      }
    }

    else
    {
      LODWORD(v203) = 0;
    }

    while (v203 != v202)
    {
      v206 = *(v166 + 1184) + 80 * v203;
      v135 = re::Hash<re::DynamicString>::operator()(v319, (v206 + 40));
      *buf = v135;
      if (v5[17])
      {
        v207 = *(v5[18] + 4 * (v135 % *(v5 + 40)));
        if (v207 != 0x7FFFFFFF)
        {
          v208 = v5[19];
          while (*(v208 + 48 * v207 + 8) != v135)
          {
            v207 = *(v208 + 48 * v207) & 0x7FFFFFFF;
            if (v207 == 0x7FFFFFFF)
            {
              goto LABEL_341;
            }
          }

          *&v307 = re::Hash<re::DynamicString>::operator()(v319, (v206 + 8));
          re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v296, &v307, buf);
          MurmurHash3_x64_128("Default", 7uLL, 0, v319);
          v318 = (*&v319[8] - 0x61C8864680B583E9 + (*v319 << 6) + (*v319 >> 2)) ^ *v319;
          memset(v319, 0, sizeof(v319));
          *&v319[36] = 0x7FFFFFFF;
          v209 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v300, &v318, v319);
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v319);
          v135 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v209, &v307, buf);
        }
      }

LABEL_341:
      v210 = *(v166 + 1200);
      if (v210 <= v203 + 1)
      {
        v210 = v203 + 1;
      }

      while (v210 - 1 != v203)
      {
        LODWORD(v203) = v203 + 1;
        if ((*(*(v166 + 1184) + 80 * v203) & 0x80000000) != 0)
        {
          goto LABEL_347;
        }
      }

      LODWORD(v203) = v210;
LABEL_347:
      ;
    }

    v304 = *(v166 + 1248);
    if (v304)
    {
      v211 = 0;
      v212 = *(v166 + 1232);
      while (1)
      {
        v213 = *v212;
        v212 += 24;
        if (v213 < 0)
        {
          break;
        }

        if (v304 == ++v211)
        {
          LODWORD(v211) = *(v166 + 1248);
          break;
        }
      }
    }

    else
    {
      LODWORD(v211) = 0;
    }

    if (v211 != v304)
    {
      v214 = *(v166 + 1248);
      do
      {
        v215 = *(v166 + 1232) + 96 * v211;
        v216 = *(v215 + 72);
        if (v216)
        {
          v217 = 0;
          v218 = *(v215 + 56);
          while (1)
          {
            v219 = *v218;
            v218 += 20;
            if (v219 < 0)
            {
              break;
            }

            if (v216 == ++v217)
            {
              LODWORD(v217) = *(v215 + 72);
              break;
            }
          }
        }

        else
        {
          LODWORD(v217) = 0;
        }

        if (v217 != v216)
        {
          do
          {
            v220 = *(v215 + 56) + 80 * v217;
            v135 = re::Hash<re::DynamicString>::operator()(v319, (v220 + 40));
            *buf = v135;
            if (v5[17])
            {
              v221 = *(v5[18] + 4 * (v135 % *(v5 + 40)));
              if (v221 != 0x7FFFFFFF)
              {
                v222 = v5[19];
                while (*(v222 + 48 * v221 + 8) != v135)
                {
                  v221 = *(v222 + 48 * v221) & 0x7FFFFFFF;
                  if (v221 == 0x7FFFFFFF)
                  {
                    goto LABEL_370;
                  }
                }

                *&v307 = re::Hash<re::DynamicString>::operator()(v319, (v220 + 8));
                v318 = re::Hash<re::DynamicString>::operator()(v319, (v215 + 8));
                memset(v319, 0, sizeof(v319));
                *&v319[36] = 0x7FFFFFFF;
                v223 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v300, &v318, v319);
                re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v319);
                v135 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(v223, &v307, buf);
              }
            }

LABEL_370:
            v224 = *(v215 + 72);
            if (v224 <= v217 + 1)
            {
              v224 = v217 + 1;
            }

            while (v224 - 1 != v217)
            {
              LODWORD(v217) = v217 + 1;
              if ((*(*(v215 + 56) + 80 * v217) & 0x80000000) != 0)
              {
                goto LABEL_376;
              }
            }

            LODWORD(v217) = v224;
LABEL_376:
            ;
          }

          while (v217 != v216);
          v214 = *(v303 + 1248);
        }

        if (v214 <= v211 + 1)
        {
          v225 = v211 + 1;
        }

        else
        {
          v225 = v214;
        }

        v166 = v303;
        while (v225 - 1 != v211)
        {
          LODWORD(v211) = v211 + 1;
          if ((*(*(v303 + 1232) + 96 * v211) & 0x80000000) != 0)
          {
            goto LABEL_386;
          }
        }

        LODWORD(v211) = v225;
LABEL_386:
        ;
      }

      while (v211 != v304);
    }

    v18 = *(v5 + 12);
    if (v18)
    {
      v226 = 0;
      v227 = v5[4];
      while (1)
      {
        v228 = *v227;
        v227 += 6;
        if (v228 < 0)
        {
          break;
        }

        if (v18 == ++v226)
        {
          LODWORD(v226) = *(v5 + 12);
          break;
        }
      }
    }

    else
    {
      LODWORD(v226) = 0;
    }

    if (v226 == v18)
    {
      break;
    }

    v127 = 0x7FFFFFFFLL;
    while (1)
    {
      v229 = v5[4] + 24 * v226;
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>((v5 + 17), (v229 + 16), *(v229 + 16), v319);
      v230 = v5[19] + 48 * *&v319[12];
      v231 = *(v230 + 24);
      if (v231)
      {
        break;
      }

LABEL_402:
      v236 = *(v5 + 12);
      if (v236 <= v226 + 1)
      {
        v236 = v226 + 1;
      }

      while (v236 - 1 != v226)
      {
        LODWORD(v226) = v226 + 1;
        if ((*(v5[4] + 24 * v226) & 0x80000000) != 0)
        {
          goto LABEL_408;
        }
      }

      LODWORD(v226) = v236;
LABEL_408:
      if (v226 == v18)
      {
        goto LABEL_409;
      }
    }

    v19 = *(v230 + 32);
    v232 = 4 * v231;
    while (1)
    {
      v3 = *v19;
      v233 = v5[15];
      if (v233 <= v3)
      {
        break;
      }

      v234 = *(v5[16] + 8 * v3);
      if (*(v234 + 2845) == 1)
      {
        v235 = re::Hash<re::DynamicString>::operator()(v319, &v307);
        re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v234 + 2744, &v307, v235, v319);
        if (*&v319[12] != 0x7FFFFFFF)
        {
          *(v5 + 1433) = 1;
        }
      }

      v19 += 4;
      v232 -= 4;
      if (!v232)
      {
        goto LABEL_402;
      }
    }

LABEL_464:
    v318 = 0;
    v320 = 0u;
    v321 = 0u;
    memset(v319, 0, sizeof(v319));
    v5 = MEMORY[0x1E69E9C10];
    v258 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *buf = 136315906;
    *&buf[4] = "operator[]";
    *&buf[12] = 1024;
    if (v258)
    {
      v259 = 3;
    }

    else
    {
      v259 = 2;
    }

    *&buf[14] = 468;
    *&buf[18] = 2048;
    *&buf[20] = v3;
    v323 = 2048;
    v324 = v233;
    _os_log_send_and_compose_impl(v259, &v318, v319, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v290, v292);
    _os_crash_msg();
    __break(1u);
LABEL_468:
    v260 = v128 - v122;
    v306 = v125;
    while (1)
    {
      v261 = (*(v3 + 1320) + 72 * v260);
      *v319 = *v261;
      re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::HashBrown(&v319[8], (v261 + 1));
      re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::internalAdd(v19, v319, &v319[8]);
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v319[8]);
      v262 = v260 >> 4;
      v263 = *(v3 + 1328);
      if (v260 >> 4 >= v263 >> 4)
      {
        break;
      }

      v264 = __clz(__rbit64((-2 << (v260 & 0xF)) & v127));
      if (v264 >= 0x40)
      {
        v265 = v263 >> 4;
        v266 = -16 * v262;
        v267 = (*v18 + 16 * v262 + 16);
        v268 = ~v262 + v265;
        while (v268)
        {
          v269 = *v267++;
          v127 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(v269), v306)))), v6);
          v270 = __clz(__rbit64(v127));
          v266 -= 16;
          --v268;
          if (v270 <= 0x3F)
          {
            v260 = v270 - v266;
            goto LABEL_476;
          }
        }

        goto LABEL_178;
      }

      v260 = v264 + (v260 & 0xFFFFFFFFFFFFFFF0);
LABEL_476:
      if (v260 == -1)
      {
        goto LABEL_178;
      }
    }
  }

LABEL_409:
  v237 = *(v5 + 24);
  if (v237)
  {
    v238 = 0;
    v239 = v5[10];
    while (1)
    {
      v240 = *v239;
      v239 += 18;
      if (v240 < 0)
      {
        break;
      }

      if (v237 == ++v238)
      {
        LODWORD(v238) = *(v5 + 24);
        break;
      }
    }
  }

  else
  {
    LODWORD(v238) = 0;
  }

  if (v238 == v237)
  {
    goto LABEL_416;
  }

  v233 = 24;
  v243 = *(v5 + 24);
  v303 = v243;
  do
  {
    v244 = v5[10] + 72 * v238;
    v305 = *(v244 + 48);
    if (v305)
    {
      v3 = 0;
      v245 = *(v244 + 32);
      while (1)
      {
        v246 = *v245;
        v245 += 6;
        if (v246 < 0)
        {
          break;
        }

        if (v305 == ++v3)
        {
          v3 = *(v244 + 48);
          break;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    if (v3 == v305)
    {
      goto LABEL_451;
    }

    do
    {
      v247 = *(v244 + 32) + 24 * v3;
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>((v5 + 17), (v247 + 16), *(v247 + 16), v319);
      v248 = v5[19] + 48 * *&v319[12];
      v249 = *(v248 + 24);
      if (v249)
      {
        v127 = *(v248 + 32);
        v250 = 4 * v249;
        while (1)
        {
          v19 = *v127;
          v18 = v5[15];
          if (v18 <= v19)
          {
            break;
          }

          v251 = *(v5[16] + 8 * v19);
          if (*(v251 + 2845) == 1)
          {
            v252 = re::Hash<re::DynamicString>::operator()(v319, &v307);
            re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(v251 + 2744, &v307, v252, v319);
            if (*&v319[12] != 0x7FFFFFFF)
            {
              *(v5 + 1433) = 1;
            }
          }

          v127 += 4;
          v250 -= 4;
          if (!v250)
          {
            goto LABEL_442;
          }
        }

        v318 = 0;
        v320 = 0u;
        v321 = 0u;
        memset(v319, 0, sizeof(v319));
        v255 = MEMORY[0x1E69E9C10];
        v256 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *buf = 136315906;
        *&buf[4] = "operator[]";
        *&buf[12] = 1024;
        if (v256)
        {
          v257 = 3;
        }

        else
        {
          v257 = 2;
        }

        *&buf[14] = 468;
        *&buf[18] = 2048;
        *&buf[20] = v19;
        v323 = 2048;
        v324 = v18;
        _os_log_send_and_compose_impl(v257, &v318, v319, 80, &dword_1E1C61000, v255, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v290, v292);
        _os_crash_msg();
        __break(1u);
        goto LABEL_464;
      }

LABEL_442:
      LODWORD(v253) = *(v244 + 48);
      if (v253 <= v3 + 1)
      {
        v253 = (v3 + 1);
      }

      else
      {
        v253 = v253;
      }

      while (v253 - 1 != v3)
      {
        v3 = (v3 + 1);
        if ((*(*(v244 + 32) + 24 * v3) & 0x80000000) != 0)
        {
          goto LABEL_449;
        }
      }

      v3 = v253;
LABEL_449:
      ;
    }

    while (v3 != v305);
    v243 = *(v5 + 24);
LABEL_451:
    if (v243 <= v238 + 1)
    {
      v254 = v238 + 1;
    }

    else
    {
      v254 = v243;
    }

    while (v254 - 1 != v238)
    {
      LODWORD(v238) = v238 + 1;
      if ((*(v5[10] + 72 * v238) & 0x80000000) != 0)
      {
        goto LABEL_458;
      }
    }

    LODWORD(v238) = v254;
LABEL_458:
    ;
  }

  while (v238 != v303);
LABEL_416:
  if (v5)
  {
    v241 = v5 + 1;
  }

  *a3 = 1;
  *(a3 + 8) = v5;
  if (v307 && (BYTE8(v307) & 1) != 0)
  {
    (*(*v307 + 40))();
  }

  v242 = re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v310);
  if (v314 && v315)
  {
    (*(*v314 + 40))(v242);
  }

  if (v5)
  {
  }
}

uint64_t re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  result = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, *a2, &v9);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v10, v9);
    *(result + 8) = *a2;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    v7 = *(a3 + 8);
    *(result + 16) = *a3;
    *(result + 24) = v7;
    *a3 = 0;
    *(a3 + 8) = 0;
    v8 = *(result + 32);
    *(result + 32) = *(a3 + 16);
    *(a3 + 16) = v8;
    *(result + 40) = *(a3 + 24);
    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 72 * HIDWORD(v12) + 16;
  }

  v7 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v12, v11);
  v8 = *a2;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 16), a3);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(uint64_t a1, const re::DynamicString *a2, const re::DynamicString *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t *a10)
{
  v17 = re::DynamicString::DynamicString(a1, a2);
  re::DynamicString::DynamicString((v17 + 32), a3);
  *(a1 + 64) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 192) = &unk_1F5CC38C8;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 488) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0;
  re::ShaderParameterTable::operator=((a1 + 64), a4);
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = &unk_1F5CC8148;
  *(a1 + 832) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 908) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1072) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 1108) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 1072), a5);
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1152) = 0x7FFFFFFF00000000;
  *(a1 + 1160) = 0;
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(a1 + 1168, a6);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(a1 + 1216, a7);
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1296) = 0x7FFFFFFF00000000;
  *(a1 + 1304) = 0;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 1264), a8);
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 1312), a9);
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1408) = 0x7FFFFFFF00000000;
  *(a1 + 1416) = 0;
  v18 = re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 1376), a10);
  *(a1 + 1424) = 0u;
  re::make::shared::object<re::FunctionReflectionCache>(v18, &v23);
  v19 = *(a1 + 1432);
  *(a1 + 1432) = v23;
  v23 = v19;
  if (v19)
  {
  }

  v20 = dispatch_group_create();

  v21 = *(a1 + 1424);
  *(a1 + 1424) = v20;

  return a1;
}

uint64_t re::MaterialDefinitionBuilder::MaterialDefinitionBuilder(uint64_t a1, uint64_t *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v4 = re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 32) = 0u;
  re::DynamicString::setCapacity((a1 + 32), 0);
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 192) = &unk_1F5CC38C8;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 464) = 1;
  *(a1 + 472) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 488) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 584) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0;
  *(a1 + 824) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 720) = &unk_1F5CC8148;
  *(a1 + 908) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 848) = 0u;
  *(a1 + 864) = 0u;
  *(a1 + 832) = 0u;
  *(a1 + 1104) = 0;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 1108) = 0x7FFFFFFFLL;
  *(a1 + 1152) = 0;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1156) = 0x7FFFFFFFLL;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1204) = 0x7FFFFFFFLL;
  *(a1 + 1248) = 0;
  *(a1 + 1232) = 0u;
  *(a1 + 1216) = 0u;
  *(a1 + 1252) = 0x7FFFFFFFLL;
  *(a1 + 1296) = 0;
  *(a1 + 1280) = 0u;
  *(a1 + 1264) = 0u;
  *(a1 + 1300) = 0x7FFFFFFFLL;
  *(a1 + 1408) = 0;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1360) = 0u;
  *(a1 + 1344) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1412) = 0x7FFFFFFFLL;
  *(a1 + 1424) = 0u;
  re::DynamicString::operator=(a1, a2);
  re::DynamicString::operator=((a1 + 32), (a2 + 4));
  re::ShaderParameterTable::operator=((a1 + 64), a2 + 8);
  re::TextureParameterTable::operator=((a1 + 592), a2 + 74);
  re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(a1 + 1072, (a2 + 134));
  re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1120, (a2 + 140));
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1168, (a2 + 146));
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1216, (a2 + 152));
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1264, (a2 + 158));
  re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 1376, (a2 + 172));
  if (a1 == a2)
  {
    v5 = a2 + 179;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 1432), a2[179]);
  }

  else
  {
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap((a1 + 1312), a2 + 164);
    v5 = a2 + 179;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 1432), a2[179]);
    v6 = a2[178];
    a2[178] = 0;
    v7 = *(a1 + 1424);
    *(a1 + 1424) = v6;
  }

  if (*v5)
  {

    *v5 = 0;
  }

  return a1;
}

uint64_t re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

re::MaterialDefinitionBuilder *re::MaterialDefinitionBuilder::operator=(re::MaterialDefinitionBuilder *this, uint64_t *a2)
{
  if (this != a2)
  {
    re::MaterialDefinitionBuilder::destroy(this);
    re::DynamicString::operator=(this, a2);
    re::DynamicString::operator=((this + 32), (a2 + 4));
    re::ShaderParameterTable::operator=(this + 8, a2 + 8);
    re::TextureParameterTable::operator=(this + 74, a2 + 74);
    re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator=(this + 1072, (a2 + 134));
    re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1120, (a2 + 140));
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1168, (a2 + 146));
    re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1216, (a2 + 152));
    re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1264, (a2 + 158));
    re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 1376, (a2 + 172));
    re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::swap(this + 164, a2 + 164);
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(this + 179, a2[179]);
    v4 = a2[178];
    a2[178] = 0;
    v5 = *(this + 178);
    *(this + 178) = v4;

    v6 = a2[179];
    if (v6)
    {

      a2[179] = 0;
    }
  }

  return this;
}

void re::MaterialDefinitionBuilder::destroy(re::MaterialDefinitionBuilder *this)
{
  v2 = *(this + 178);
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  v3 = *(this + 179);
  if (v3)
  {

    *(this + 179) = 0;
  }

  v4 = *(this + 288);
  if (v4)
  {
    v5 = 0;
    v6 = *(this + 142);
    while (1)
    {
      v7 = *v6;
      v6 += 14;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(this + 288);
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
    re::internal::destroyPersistent<re::TechniqueDefinitionBuilder>("destroy", 1394, *(*(this + 142) + 56 * v5 + 40));
    v8 = *(this + 288);
    if (v8 <= v5 + 1)
    {
      v8 = v5 + 1;
    }

    while (v8 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(this + 142) + 56 * v5) & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v5) = v8;
LABEL_18:
    ;
  }

  re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(this + 1120);
}

void re::MaterialDefinitionBuilder::~MaterialDefinitionBuilder(re::MaterialDefinitionBuilder *this)
{
  re::MaterialDefinitionBuilder::destroy(this);
  v2 = *(this + 179);
  if (v2)
  {

    *(this + 179) = 0;
  }

  re::HashTable<re::DynamicString,re::Pair<re::DynamicArray<re::DynamicString>,re::DynamicString,true>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 172);
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(this + 1312);
  re::HashTable<re::DynamicString,re::DynamicArray<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 158);
  re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 152);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 146);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 140);
  re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 134);
  re::TextureParameterTable::~TextureParameterTable((this + 592));
  re::ShaderParameterTable::~ShaderParameterTable((this + 64));
  re::DynamicString::deinit((this + 32));
  re::DynamicString::deinit(this);
}

re *re::internal::destroyPersistent<re::TechniqueDefinitionBuilder>(re *result, uint64_t a2, re::TechniqueDefinitionBuilder *a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::TechniqueDefinitionBuilder::~TechniqueDefinitionBuilder(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

void re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_207, 4 * v2);
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
          re::DynamicString::deinit((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 56;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t *re::MaterialDefinitionBuilder::addTechnique@<X0>(uint64_t *__return_ptr a1@<X8>, re::MaterialDefinitionBuilder *this@<X0>, const re::DynamicString *a3@<X1>)
{
  v6 = re::Hash<re::DynamicString>::operator()(&v21, a3);
  v7 = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v21, this + 1120, a3, v6);
  if (HIDWORD(v21) == 0x7FFFFFFF)
  {
    v9 = re::globalAllocators(v7);
    v10 = (*(*v9[2] + 32))(v9[2], 696, 8);
    bzero(v10, 0x2B8uLL);
    v12 = re::DynamicString::setCapacity(v10, 0);
    *(v10 + 7) = 0u;
    *(v10 + 5) = 0u;
    v13 = re::DynamicString::setCapacity(v10 + 5, 0);
    *(v10 + 30) = 0;
    *(v10 + 13) = 0u;
    *(v10 + 11) = 0u;
    *(v10 + 9) = 0u;
    *(v10 + 124) = 0x7FFFFFFFLL;
    *(v10 + 10) = 0u;
    *(v10 + 9) = 0u;
    re::DynamicString::setCapacity(v10 + 18, 0);
    *(v10 + 56) = 0;
    *(v10 + 12) = 0u;
    *(v10 + 13) = 0u;
    *(v10 + 11) = 0u;
    *(v10 + 228) = 0x7FFFFFFFLL;
    v10[30] = 0xFFFF000100010000;
    *(v10 + 124) = 1792;
    *(v10 + 250) = 4;
    *(v10 + 252) = xmmword_1E30A1FE0;
    *(v10 + 67) = 5;
    v10[34] = 0xF00000000;
    v10[38] = 0;
    v10[39] = 0;
    v10[37] = 0;
    *(v10 + 80) = 0;
    v10[35] = 0;
    *(v10 + 285) = 0;
    v10[64] = 0;
    *(v10 + 520) = 0;
    *(v10 + 67) = 0u;
    *(v10 + 69) = 0u;
    *(v10 + 142) = 0;
    *(v10 + 41) = 0u;
    *(v10 + 43) = 0u;
    *(v10 + 90) = 0;
    *(v10 + 23) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 25) = 0u;
    *(v10 + 26) = 0u;
    *(v10 + 27) = 0u;
    *(v10 + 28) = 0u;
    *(v10 + 116) = 0;
    *(v10 + 59) = 0u;
    *(v10 + 61) = 0u;
    *(v10 + 126) = 0;
    *(v10 + 572) = 0x7FFFFFFFLL;
    *(v10 + 154) = 0;
    *(v10 + 73) = 0u;
    *(v10 + 75) = 0u;
    *(v10 + 620) = 0x7FFFFFFFLL;
    *(v10 + 166) = 0;
    *(v10 + 79) = 0u;
    *(v10 + 81) = 0u;
    *(v10 + 668) = 0x7FFFFFFFLL;
    *(v10 + 170) = 0;
    *(v10 + 171) = 0x10000;
    *(v10 + 688) = 0;
    re::DynamicString::operator=(v10, a3);
    v21 = 0uLL;
    v22 = 0;
    v14 = re::Hash<re::DynamicString>::operator()(&v24, a3);
    result = re::HashTable<re::DynamicString,std::__list_iterator<re::Pair<re::DynamicString,re::Pair<re::SharedPtr<re::RealityFile>,unsigned int,true>,true>,void *>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(&v21, this + 1120, a3, v14);
    if (HIDWORD(v21) == 0x7FFFFFFF)
    {
      v16 = re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(this + 1120, DWORD2(v21), v21);
      result = re::DynamicString::DynamicString((v16 + 8), a3);
      *(v16 + 40) = v10;
      ++*(this + 290);
    }

    *a1 = 1;
    a1[1] = v10;
  }

  else
  {
    if (*(a3 + 1))
    {
      v17 = *(a3 + 2);
    }

    else
    {
      v17 = a3 + 9;
    }

    result = re::DynamicString::format(&v21, "Duplicate technique added to MaterialBuilder %s", v8, v17);
    v18 = v21;
    v19 = v22;
    v20 = v23;
    *a1 = 0;
    *(a1 + 1) = v18;
    a1[3] = v19;
    a1[4] = v20;
  }

  return result;
}

uint64_t re::MaterialBuilder::MaterialBuilder(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unsigned __int8 *a5, uint64_t *a6, uint64_t a7, uint64_t a8, char a9)
{
  v16 = *a5;
  *(a1 + 8) = v16;
  if (v16 == 1)
  {
    *(a1 + 9) = a5[1];
  }

  v17 = a5[2];
  *(a1 + 10) = v17;
  if (v17 == 1)
  {
    *(a1 + 11) = a5[3];
  }

  v18 = a5[4];
  *(a1 + 12) = v18;
  if (v18 == 1)
  {
    *(a1 + 13) = a5[5];
  }

  v19 = a5[6];
  *(a1 + 14) = v19;
  if (v19 == 1)
  {
    *(a1 + 15) = a5[7];
  }

  v20 = a5[8];
  *(a1 + 16) = v20;
  if (v20 == 1)
  {
    *(a1 + 17) = a5[9];
  }

  v21 = a5[10];
  *(a1 + 18) = v21;
  if (v21 == 1)
  {
    *(a1 + 19) = a5[11];
  }

  v22 = a5[12];
  *(a1 + 20) = v22;
  if (v22 == 1)
  {
    *(a1 + 21) = a5[13];
  }

  v23 = a5[14];
  *(a1 + 22) = v23;
  if (v23 == 1)
  {
    *(a1 + 23) = a5[15];
  }

  v24 = a5[16];
  *(a1 + 24) = v24;
  if (v24 == 1)
  {
    *(a1 + 25) = a5[17];
  }

  v25 = a5[18];
  *(a1 + 26) = v25;
  if (v25 == 1)
  {
    *(a1 + 27) = a5[19];
  }

  v26 = *a2;
  *(a1 + 32) = *a2;
  if (v26)
  {
    v27 = (v26 + 8);
  }

  *(a1 + 72) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 76) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((a1 + 40), a4);
  *(a1 + 144) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 124) = 0x7FFFFFFFLL;
  *(a1 + 136) = 1;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = &unk_1F5CC38C8;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 544) = 1;
  *(a1 + 568) = 0;
  *(a1 + 576) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 608) = 0;
  *(a1 + 600) = 0;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0;
  v28 = re::ShaderParameterTable::operator=((a1 + 144), a3);
  v28[95] = 0;
  *(v28 + 91) = 0u;
  *(v28 + 93) = 0u;
  *(v28 + 87) = 0u;
  *(v28 + 89) = 0u;
  *(v28 + 83) = 0u;
  *(v28 + 85) = 0u;
  *(v28 + 33) = 0u;
  *(v28 + 34) = 0u;
  *(v28 + 35) = 0u;
  *(v28 + 36) = 0u;
  *(v28 + 37) = 0u;
  *(v28 + 38) = 0u;
  *(v28 + 39) = 0u;
  *(v28 + 40) = 0u;
  v28[82] = &unk_1F5CC8148;
  *(v28 + 48) = 0u;
  *(v28 + 49) = 0u;
  *(v28 + 50) = 0u;
  *(v28 + 51) = 0u;
  *(v28 + 52) = 0u;
  *(v28 + 844) = 0u;
  v28[128] = 0;
  *(v28 + 62) = 0u;
  *(v28 + 63) = 0u;
  *(v28 + 60) = 0u;
  *(v28 + 61) = 0u;
  *(v28 + 58) = 0u;
  *(v28 + 59) = 0u;
  *(v28 + 56) = 0u;
  *(v28 + 57) = 0u;
  *(v28 + 54) = 0u;
  *(v28 + 55) = 0u;
  v29 = a6[1];
  v28[126] = *a6;
  v28[127] = v29;
  *a6 = 0;
  a6[1] = 0;
  v30 = v28[128];
  v28[128] = a6[2];
  a6[2] = v30;
  v28[131] = 0;
  *(v28 + 129) = 0u;
  v31 = a6[4];
  v28[129] = a6[3];
  v28[130] = v31;
  a6[3] = 0;
  a6[4] = 0;
  v32 = v28[131];
  v28[131] = a6[5];
  a6[5] = v32;
  *(v28 + 264) = 0;
  *(v28 + 133) = 0u;
  *(v28 + 135) = 0u;
  *(v28 + 137) = 0u;
  *(v28 + 139) = 0u;
  v28[141] = 0;
  v28[142] = a8;
  *(v28 + 1144) = 0;
  *(v28 + 1192) = a9;
  if (*(v28 - 14))
  {
    v33 = *(a7 + 8);
    if (v33)
    {
      v34 = v33 >> 1;
    }

    else
    {
      v34 = v33 >> 1;
    }

    if (v34)
    {
      v35 = re::globalAllocators(v28);
      v36 = (*(*v35[2] + 32))(v35[2], v34 + 1, 0);
      *a1 = v36;
      if (*(a7 + 8))
      {
        v37 = *(a7 + 16);
      }

      else
      {
        v37 = (a7 + 9);
      }
    }

    else
    {
      v38 = strlen(*(*a2 + 1424));
      v39 = re::globalAllocators(v38);
      v36 = (*(*v39[2] + 32))(v39[2], v38 + 1, 0);
      *a1 = v36;
      v37 = *(*a2 + 1424);
    }

    v40 = strcpy(v36, v37);
    re::make::shared::object<re::FunctionReflectionCache>(v40, &v47);
    v41 = *(a1 + 1224);
    *(a1 + 1224) = v47;
    v47 = v41;
    if (v41)
    {
    }

    v42 = dispatch_group_create();

    v43 = *(a1 + 1208);
    *(a1 + 1208) = v42;

    v44 = dispatch_group_create();
    v45 = *(a1 + 1216);
    *(a1 + 1216) = v44;
  }

  else
  {
    *a1 = 0;
    *(a1 + 1200) = 8;
  }

  return a1;
}

re::MaterialBuilder *re::MaterialBuilder::MaterialBuilder(re::MaterialBuilder *this)
{
  v42 = 0;
  bzero(v11, 0x210uLL);
  v11[16] = &unk_1F5CC38C8;
  memset(&v11[17], 0, 24);
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = 0;
  v23 = 0;
  v30 = 1;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v37 = 0;
  v38 = 0;
  v35 = 0;
  v36 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  DWORD1(v10) = 0x7FFFFFFF;
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  memset(v6, 0, sizeof(v6));
  re::MaterialBuilder::MaterialBuilder(this, &v42, v11, v9, v7, v6, &v4, 0, 0);
  if (v4 && (v5 & 1) != 0)
  {
    (*(*v4 + 40))();
  }

  re::FixedArray<re::LinkedFunction>::deinit(&v6[1] + 1);
  re::FixedArray<re::LinkedFunction>::deinit(v6);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
  re::ShaderParameterTable::~ShaderParameterTable(v11);
  *(this + 300) = 8;
  return this;
}

uint64_t re::MaterialBuilder::MaterialBuilder(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 10) = 0;
  *(a1 + 12) = 0;
  *(a1 + 14) = 0;
  *(a1 + 16) = 0;
  *(a1 + 18) = 0;
  *(a1 + 20) = 0;
  *(a1 + 22) = 0;
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *(a1 + 76) = 0x7FFFFFFFLL;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 124) = 0x7FFFFFFFLL;
  *(a1 + 136) = 1;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 272) = &unk_1F5CC38C8;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  *(a1 + 536) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 544) = 1;
  *(a1 + 552) = 0u;
  *(a1 + 576) = 0;
  *(a1 + 568) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 664) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 904) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 800) = &unk_1F5CC8148;
  *(a1 + 988) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 1288) = 0;
  *(a1 + 1336) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1136) = 0u;
  *(a1 + 1120) = 0u;
  *(a1 + 1104) = 0u;
  *(a1 + 1088) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1040) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 1272) = 0;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1208) = 0u;
  *(a1 + 1224) = 0u;
  *a1 = *a2;
  re::MaterialRenderFlags::operator=((a1 + 8), (a2 + 8));
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v4;
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a1 + 40, a2 + 40);
  re::ShaderParameterTable::operator=((a1 + 144), (a2 + 144));
  re::TextureParameterTable::operator=((a1 + 672), (a2 + 672));
  *(a1 + 1200) = *(a2 + 1200);
  if (a1 != a2)
  {
    v5 = *(a2 + 1208);
    *(a2 + 1208) = 0;
    v6 = *(a1 + 1208);
    *(a1 + 1208) = v5;

    v7 = *(a2 + 1216);
    *(a2 + 1216) = 0;
    v8 = *(a1 + 1216);
    *(a1 + 1216) = v7;
  }

  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((a1 + 1224), *(a2 + 1224));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=((a1 + 1152), (a2 + 1152));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=((a1 + 1176), (a2 + 1176));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=((a1 + 1232), (a2 + 1232));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=((a1 + 1256), (a2 + 1256));
  *(a1 + 1280) = *(a2 + 1280);
  if ((*(a1 + 1288) & 1) == 0)
  {
    if ((*(a2 + 1288) & 1) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 1288) = 1;
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray((a1 + 1296), (a2 + 1296));
    goto LABEL_15;
  }

  if ((*(a2 + 1288) & 1) == 0)
  {
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit((a1 + 1296));
    *(a1 + 1288) = 0;
    goto LABEL_16;
  }

  if (a1 != a2)
  {
    v9 = *(a2 + 1296);
    if (*(a1 + 1296))
    {
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    if (v9)
    {
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::init<>((a1 + 1296), v9, *(a2 + 1304));
LABEL_14:
      re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::copy(a1 + 1296, a2 + 1296);
    }
  }

LABEL_15:
  *(a1 + 1320) = *(a2 + 1320);
LABEL_16:
  *(a1 + 1336) = *(a2 + 1336);
  v10 = *(a2 + 32);
  if (v10)
  {

    *(a2 + 32) = 0;
  }

  *a2 = 0;
  v11 = *(a2 + 1224);
  if (v11)
  {

    *(a2 + 1224) = 0;
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      v4 = *a1 == *a2;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(a1, a2);
    }

    else
    {
      re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
      if (*a2)
      {
        v5 = *(a2 + 28);
        if (*(a1 + 24) < v5)
        {
          re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, v5);
        }

        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, a2);
        ++*(a1 + 40);
      }
    }
  }

  return a1;
}

uint64_t *re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v4 == v5;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      *result = v5;
      *a2 = v4;
      v7 = result[1];
      v8 = result[2];
      v9 = a2[2];
      result[1] = a2[1];
      result[2] = v9;
      a2[1] = v7;
      a2[2] = v8;
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

re::MaterialBuilder *re::MaterialBuilder::operator=(re::MaterialBuilder *this, uint64_t a2)
{
  if (this != a2)
  {
    re::MaterialBuilder::destroy(this);
    *this = *a2;
    re::MaterialRenderFlags::operator=(this + 8, (a2 + 8));
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 32);
    *(a2 + 32) = v4;
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(this + 40, a2 + 40);
    re::ShaderParameterTable::operator=(this + 18, (a2 + 144));
    re::TextureParameterTable::operator=(this + 84, (a2 + 672));
    *(this + 300) = *(a2 + 1200);
    v5 = *(a2 + 1208);
    *(a2 + 1208) = 0;
    v6 = *(this + 151);
    *(this + 151) = v5;

    v7 = *(a2 + 1216);
    *(a2 + 1216) = 0;
    v8 = *(this + 152);
    *(this + 152) = v7;

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(this + 153, *(a2 + 1224));
    re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(this + 144, (a2 + 1152));
    re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(this + 147, (a2 + 1176));
    re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(this + 154, (a2 + 1232));
    re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(this + 157, (a2 + 1256));
    *(this + 160) = *(a2 + 1280);
    re::Optional<re::FunctionConstantsEnumerator>::operator=(this + 1288, a2 + 1288);
    *(this + 1336) = *(a2 + 1336);
    v9 = *(a2 + 32);
    if (v9)
    {

      *(a2 + 32) = 0;
    }

    *a2 = 0;
    v10 = *(a2 + 1224);
    if (v10)
    {

      *(a2 + 1224) = 0;
    }
  }

  return this;
}

void re::MaterialBuilder::destroy(re::MaterialBuilder *this)
{
  v2 = *(this + 4);
  if (v2)
  {

    *(this + 4) = 0;
  }

  v3 = *this;
  if (*this)
  {
    v4 = re::globalAllocators(this);
    (*(*v4[2] + 40))(v4[2], v3);
    *this = 0;
  }

  re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(this + 154);
  v5 = *(this + 153);
  if (v5)
  {

    *(this + 153) = 0;
  }

  *(this + 300) = 8;
}

void re::MaterialBuilder::~MaterialBuilder(re::MaterialBuilder *this)
{
  re::MaterialBuilder::destroy(this);
  if (*(this + 1288) == 1)
  {
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(this + 162);
  }

  re::FixedArray<re::DynamicOverflowArray<re::SharedPtr<re::CachedPipelineState>,1ul>>::deinit(this + 157);
  re::FixedArray<re::SharedPtr<re::MaterialParameterBlock>>::deinit(this + 154);
  v2 = *(this + 153);
  if (v2)
  {

    *(this + 153) = 0;
  }

  re::FixedArray<re::LinkedFunction>::deinit(this + 147);
  re::FixedArray<re::LinkedFunction>::deinit(this + 144);
  re::TextureParameterTable::~TextureParameterTable((this + 672));
  re::ShaderParameterTable::~ShaderParameterTable((this + 144));
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 11);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(this + 5);
  v3 = *(this + 4);
  if (v3)
  {

    *(this + 4) = 0;
  }
}

double re::MaterialBuilder::addOrReplaceFunctionConstants@<D0>(_anonymous_namespace_ *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v40 = *MEMORY[0x1E69E9840];
  *(a4 + 32) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(a4, a2);
  ++*(a4 + 24);
  if (a2)
  {
    v9 = 0;
    v10 = (v6 + 104 * a2);
    v11 = 104 * a2;
    v12 = v6;
    do
    {
      if (*(v12 + 8))
      {
        v13 = *(v12 + 2);
      }

      else
      {
        v13 = v12 + 9;
      }

      v14 = re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(a3, v13);
      if (v14)
      {
        *&result = re::DynamicArray<re::TechniqueFunctionConstant>::add(a4, v14).n128_u64[0];
        ++v9;
      }

      else
      {
        *&result = re::DynamicArray<re::TechniqueFunctionConstant>::add(a4, v12).n128_u64[0];
      }

      v12 = (v12 + 104);
      v11 -= 104;
    }

    while (v11);
    if (v9 >= *(a3 + 28))
    {
      return result;
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v31 = 0x7FFFFFFFLL;
    do
    {
      re::DynamicString::DynamicString(&v32, v6);
      v35 = *(v6 + 2);
      v15 = *(v6 + 3);
      v16 = *(v6 + 4);
      v17 = *(v6 + 5);
      v39 = *(v6 + 24);
      v37 = v16;
      v38 = v17;
      v36 = v15;
      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(&v28, &v32);
      if (v32 && (v33 & 1) != 0)
      {
        (*(*v32 + 40))(v32, v34, v18, v19, v20, v21);
      }

      v6 = (v6 + 104);
    }

    while (v6 != v10);
  }

  else
  {
    if (!*(a3 + 28))
    {
      return result;
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    v31 = 0x7FFFFFFFLL;
  }

  v22 = *(a3 + 32);
  if (v22)
  {
    v23 = 0;
    v24 = *(a3 + 16);
    while (1)
    {
      v25 = *v24;
      v24 += 38;
      if (v25 < 0)
      {
        break;
      }

      if (v22 == ++v23)
      {
        LODWORD(v23) = *(a3 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v23) = 0;
  }

  if (v23 != v22)
  {
    v26 = *(a3 + 16);
    do
    {
      if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(&v28, (v26 + 152 * v23 + 8)))
      {
        re::DynamicArray<re::TechniqueFunctionConstant>::add(a4, (v26 + 152 * v23 + 40));
      }

      v27 = *(a3 + 32);
      if (v27 <= v23 + 1)
      {
        v27 = v23 + 1;
      }

      v26 = *(a3 + 16);
      while (v27 - 1 != v23)
      {
        LODWORD(v23) = v23 + 1;
        if ((*(v26 + 152 * v23) & 0x80000000) != 0)
        {
          goto LABEL_36;
        }
      }

      LODWORD(v23) = v27;
LABEL_36:
      ;
    }

    while (v23 != v22);
  }

  return re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v28);
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet<void>(uint64_t a1, char *a2)
{
  v7 = a2;
  v3 = re::Hash<re::DynamicString>::operator()(v5, a2);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v7, v3, v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 152 * v6 + 40;
  }
}

void re::MaterialBuilder::tickBuilder(uint64_t *__return_ptr a1@<X8>, re::MaterialBuilder *this@<X0>, re::RenderManager *a3@<X1>)
{
  v3 = a3;
  v4 = this;
  v143[10] = *MEMORY[0x1E69E9840];
  v6 = *(this + 300);
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v7 = *(this + 153);
      v8 = *(this + 145);
      if (v8)
      {
        v9 = 0;
        v10 = 1;
        do
        {
          v11 = *(v4 + 146) + 200 * v9;
          if (!*(v11 + 48))
          {
            info = 0uLL;
            LODWORD(v138) = 0;
            v137 = 0;
            memset(v139, 0, 40);
            re::DynamicString::setCapacity(&v139[8], 0);
            v135 = 0;
            v134 = 0;
            v12 = *(v11 + 72);
            v134 = *(v11 + 80);
            v135 = v12;
            re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&info, &v134);
            v13 = strlen(*(v11 + 32));
            v134 = *(v11 + 32);
            v135 = v13;
            re::DynamicString::operator=(&v139[8], &v134);
            *&v139[40] = *(v11 + 40);
            *&v140 = (((*&v139[40] << 6) - 0x61C8864680B583E9 + (*&v139[40] >> 2) + (*(v11 + 24) >> 1)) ^ *&v139[40]) - 0x61C8864680B583E9;
            re::FunctionReflectionCache::addTask(v7, &info);
            if (*&v139[8])
            {
              if (v139[16])
              {
                (*(**&v139[8] + 40))();
              }

              memset(&v139[8], 0, 32);
            }

            this = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&info);
            v8 = *(v4 + 145);
          }

          v9 = v10;
          v14 = v8 > v10++;
        }

        while (v14);
      }

      v15 = *(v4 + 148);
      if (v15)
      {
        v16 = 0;
        v17 = 1;
        do
        {
          v18 = *(v4 + 149) + 200 * v16;
          if (!*(v18 + 48))
          {
            info = 0uLL;
            LODWORD(v138) = 0;
            v137 = 0;
            memset(v139, 0, 40);
            re::DynamicString::setCapacity(&v139[8], 0);
            v135 = 0;
            v134 = 0;
            v19 = *(v18 + 72);
            v134 = *(v18 + 80);
            v135 = v19;
            re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&info, &v134);
            v20 = strlen(*(v18 + 32));
            v134 = *(v18 + 32);
            v135 = v20;
            re::DynamicString::operator=(&v139[8], &v134);
            *&v139[40] = *(v18 + 40);
            *&v140 = (((*&v139[40] << 6) - 0x61C8864680B583E9 + (*&v139[40] >> 2) + (*(v18 + 24) >> 1)) ^ *&v139[40]) - 0x61C8864680B583E9;
            re::FunctionReflectionCache::addTask(v7, &info);
            if (*&v139[8])
            {
              if (v139[16])
              {
                (*(**&v139[8] + 40))();
              }

              memset(&v139[8], 0, 32);
            }

            this = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&info);
            v15 = *(v4 + 148);
          }

          v16 = v17;
          v14 = v15 > v17++;
        }

        while (v14);
      }

      v3 = a3;
      if (*(*(v4 + 153) + 88))
      {
        *(v4 + 300) = 1;
        v21 = *(*(v4 + 4) + 120);
        v22 = *(*(v4 + 4) + 120);
        v24 = mach_absolute_time();
        v25 = *(v4 + 153);
        v25[2] = v24;
        v133 = *(v4 + 151);
        re::FunctionReflectionCache::scheduleAllFunctionBuildTasks(v25, a3, &v133, 1, *(v4 + 160), v26);
      }

      if (*(v4 + 300) != 1)
      {
LABEL_32:
        *(v4 + 300) = 2;
        goto LABEL_33;
      }
    }

    if (dispatch_group_wait(*(v4 + 151), 0))
    {
      goto LABEL_34;
    }

    v27 = *(v4 + 153);
    if (*(v27 + 88))
    {
      goto LABEL_34;
    }

    v132 = *(v4 + 152);
    re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(v27, v3, &v132, 1, *(v4 + 160));

    goto LABEL_32;
  }

  if (v6 == 2)
  {
LABEL_33:
    if (dispatch_group_wait(*(v4 + 152), 0))
    {
      goto LABEL_34;
    }

    re::fillLinkedArgumentsWithReflection((v4 + 1152), *(v4 + 153), v130);
    if (v130[0] == 1)
    {
    }

    re::fillLinkedArgumentsWithReflection((v4 + 1176), *(v4 + 153), v128);
    if (v128[0] == 1)
    {
    }

    re::validateMaterialFunctionReflection(v3 + 26, v4 + 1152, 3, "realitykit::geometry_parameters", "realitykit::geometry_parameters_private", "realitykit::ui_geometry_parameters_private", &v134);
    if (v134 == 1)
    {
      v28 = re::ObjCObject::description(&v135);
      v29 = 0;
      v30 = info;
      v31 = v137;
      v32 = v138;
      *a1 = 0;
      *(a1 + 1) = v30;
      a1[3] = v31;
      a1[4] = v32;
    }

    else
    {
      re::validateMaterialFunctionReflection(v3 + 26, v4 + 1176, 4, "realitykit::surface_parameters", "realitykit::surface_parameters_private", "realitykit::ui_surface_parameters_private", &v142);
      if (v142 == 1)
      {
        v33 = re::ObjCObject::description(v143);
        v29 = 0;
        v34 = info;
        v35 = v137;
        v36 = v138;
        *a1 = 0;
        *(a1 + 1) = v34;
        a1[3] = v35;
        a1[4] = v36;
      }

      else if (*(v3 + 205))
      {
        re::completeLinkedFunctions(v4 + 1152, v4 + 88, v4 + 136);
        re::MaterialBuilder::createFunctionBuildTasks(v4, v37, v38);
        v40 = *(v4 + 153);
        if (v40[11])
        {
          *(v4 + 300) = 3;
          if (!*(v4 + 154))
          {
            v41 = *(*(v4 + 4) + 120);
            v42 = *(*(v4 + 4) + 120);
            v44 = mach_absolute_time();
            v40 = *(v4 + 153);
            v40[2] = v44;
          }

          v127 = *(v4 + 151);
          re::FunctionReflectionCache::scheduleAllFunctionBuildTasks(v40, v3, &v127, 1, *(v4 + 160), v45);
        }

        if (*(v4 + 300) != 3)
        {
          *(v4 + 300) = 6;
        }

        v29 = 1;
      }

      else
      {
        v29 = 0;
        *(v4 + 300) = 7;
        *a1 = 1;
        *(a1 + 2) = 1;
      }

      if (v142 == 1)
      {
      }
    }

    if (v134 == 1)
    {
    }

    if (!v29)
    {
      return;
    }

    v6 = *(v4 + 300);
    v3 = a3;
    goto LABEL_59;
  }

  if (v6 == 8)
  {
LABEL_34:
    *a1 = 1;
    *(a1 + 2) = 0;
    return;
  }

LABEL_59:
  if (v6 == 5)
  {
    v112 = a1;
    v77 = *(v4 + 158);
    if (v77)
    {
      v78 = *(v4 + 159);
      v79 = v78 + 40 * v77;
      do
      {
        info = 0uLL;
        LODWORD(v137) = 1;
        v138 = 0;
        *v139 = 0;
        if (*v78)
        {
          v80 = *(v78 + 8);
          *&info = *v78;
          re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(&info, v80);
          v81 = v137;
          v82 = v137 + 2;
          LODWORD(v137) = v137 + 2;
          v83 = *(v78 + 8);
          v84 = *(&info + 1);
          if (v83 >= *(&info + 1))
          {
            re::DynamicOverflowArray<re::SharedPtr<re::ResourceFetchManager::Request const>,1ul>::setCapacity(&info, *(v78 + 8));
            v93 = *(v78 + 16) & 1;
            v94 = *(v78 + 32);
            if (v93)
            {
              v95 = (v78 + 24);
            }

            else
            {
              v95 = *(v78 + 32);
            }

            v96 = *(&info + 1);
            v97 = v137;
            if (*(&info + 1))
            {
              if (v137)
              {
                v98 = &v138;
              }

              else
              {
                v98 = *v139;
              }

              v99 = 8 * *(&info + 1);
              do
              {
                v100 = *v95++;
                re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v98++, v100);
                v99 -= 8;
              }

              while (v99);
              v97 = v137;
              v96 = *(&info + 1);
              v94 = *(v78 + 32);
              v93 = *(v78 + 16) & 1;
            }

            if (v93)
            {
              v94 = v78 + 24;
            }

            if (v96 != v83)
            {
              if (v97)
              {
                v101 = &v138;
              }

              else
              {
                v101 = *v139;
              }

              v102 = (v94 + 8 * v96);
              v103 = &v101[v96];
              v104 = 8 * v83 - 8 * v96;
              do
              {
                v105 = *v102;
                *v103 = *v102;
                if (v105)
                {
                  v106 = (v105 + 8);
                }

                ++v102;
                ++v103;
                v104 -= 8;
              }

              while (v104);
            }
          }

          else
          {
            if (*(v78 + 16))
            {
              v85 = (v78 + 24);
            }

            else
            {
              v85 = *(v78 + 32);
            }

            v86 = *v139;
            if (v83)
            {
              if (v81)
              {
                v87 = &v138;
              }

              else
              {
                v87 = *v139;
              }

              v88 = 8 * v83;
              do
              {
                v89 = *v85++;
                re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v87++, v89);
                v88 -= 8;
              }

              while (v88);
              v82 = v137;
              v86 = *v139;
              v84 = *(&info + 1);
            }

            if (v82)
            {
              v90 = &v138;
            }

            else
            {
              v90 = v86;
            }

            if (v83 != v84)
            {
              v91 = &v90[v83];
              v92 = 8 * v84 - 8 * v83;
              do
              {
                if (*v91)
                {

                  *v91 = 0;
                }

                ++v91;
                v92 -= 8;
              }

              while (v92);
            }
          }

          *(&info + 1) = v83;
          v107 = (v137 & 1) != 0 ? &v138 : *v139;
          if (v83)
          {
            for (i = 8 * v83; i; i -= 8)
            {
              v109 = *v107;
              if (*v107)
              {
                v110 = (v109 + 8);
                v111 = atomic_load((v109 + 208));
                if (v111 == 1)
                {
                  *v112 = 1;
                  *(v112 + 2) = 0;

                  re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(&info);
                  return;
                }
              }

              ++v107;
            }
          }
        }

        re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::deinit(&info);
        v78 += 40;
      }

      while (v78 != v79);
    }

    *(v4 + 300) = 6;
    a1 = v112;
    goto LABEL_171;
  }

  if (v6 == 4)
  {
    goto LABEL_65;
  }

  if (v6 != 3)
  {
LABEL_171:
    *a1 = 1;
    *(a1 + 2) = 1;
    return;
  }

  if (dispatch_group_wait(*(v4 + 151), 0))
  {
    goto LABEL_34;
  }

  v46 = *(v4 + 153);
  if (*(v46 + 88))
  {
    goto LABEL_34;
  }

  v126 = *(v4 + 152);
  re::FunctionReflectionCache::scheduleReflectionTasksForBuiltFunctions(v46, v3, &v126, 1, *(v4 + 160));

  *(v4 + 300) = 4;
LABEL_65:
  if (dispatch_group_wait(*(v4 + 152), 0))
  {
    goto LABEL_34;
  }

  v47 = *(v4 + 4);
  if (*(v47 + 120))
  {
    v48 = 0;
    v49 = 0;
    do
    {
      v50 = *(*(v47 + 128) + 8 * v48);
      if (*(v50 + 2845) == 1 && re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(v50, v49))
      {
        re::MaterialBuilder::addOrReplaceFunctionConstants(*(v50 + 64), *(v50 + 56), v4 + 40, v123);
        v121 = 0;
        memset(v120, 0, sizeof(v120));
        v122 = 0x7FFFFFFFLL;
        v119 = 0;
        memset(v117, 0, sizeof(v117));
        v118 = 0;
        v51 = *(v50 + 2776);
        if (v51)
        {
          v52 = 0;
          v53 = *(v50 + 2760);
          do
          {
            v54 = *v53;
            v53 += 38;
            if (v54 < 0)
            {
              goto LABEL_87;
            }

            ++v52;
          }

          while (v51 != v52);
          LODWORD(v52) = *(v50 + 2776);
        }

        else
        {
          LODWORD(v52) = 0;
        }

        while (1)
        {
LABEL_87:
          if (v52 == v51)
          {
            v61 = *(v4 + 30);
            if (v61)
            {
              v62 = 0;
              v63 = *(v4 + 13);
              do
              {
                v64 = *v63;
                v63 += 38;
                if (v64 < 0)
                {
                  goto LABEL_105;
                }

                ++v62;
              }

              while (v61 != v62);
              LODWORD(v62) = *(v4 + 30);
            }

            else
            {
              LODWORD(v62) = 0;
            }

            while (1)
            {
LABEL_105:
              if (v62 == v61)
              {
                if (v124)
                {
                  v71 = v125;
                  v72 = (v125 + 104 * v124);
                  do
                  {
                    re::DynamicString::DynamicString(&info, v71);
                    *v139 = *(v71 + 2);
                    v73 = *(v71 + 3);
                    v74 = *(v71 + 4);
                    v75 = *(v71 + 5);
                    v141 = *(v71 + 24);
                    *&v139[32] = v74;
                    v140 = v75;
                    *&v139[16] = v73;
                    if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v120, &info))
                    {
                      re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v120, &info);
                      v76 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v117, &info);
                    }

                    if (info)
                    {
                      if (BYTE8(info))
                      {
                        (*(*info + 40))(v76);
                      }
                    }

                    v71 = (v71 + 104);
                  }

                  while (v71 != v72);
                }

                re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(v114, v117);
                re::TechniqueDefinitionBuilder::buildPipelineData(v116, v115, v50, v4 + 1152, a3, *(v4 + 153), 1);
              }

              v65 = *(v4 + 13) + 152 * v62;
              re::DynamicString::DynamicString(&info, (v65 + 40));
              *v139 = *(v65 + 72);
              v66 = *(v65 + 88);
              v67 = *(v65 + 104);
              v68 = *(v65 + 120);
              v141 = *(v65 + 136);
              *&v139[32] = v67;
              v140 = v68;
              *&v139[16] = v66;
              if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v120, &info))
              {
                re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v120, &info);
                v69 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v117, &info);
              }

              if (info && (BYTE8(info) & 1) != 0)
              {
                (*(*info + 40))(v69);
              }

              v70 = *(v4 + 30);
              if (v70 <= v62 + 1)
              {
                v70 = v62 + 1;
              }

              while (v70 - 1 != v62)
              {
                LODWORD(v62) = v62 + 1;
                if ((*(*(v4 + 13) + 152 * v62) & 0x80000000) != 0)
                {
                  goto LABEL_105;
                }
              }

              LODWORD(v62) = v70;
            }
          }

          v55 = *(v50 + 2760) + 152 * v52;
          re::DynamicString::DynamicString(&info, (v55 + 40));
          *v139 = *(v55 + 72);
          v56 = *(v55 + 88);
          v57 = *(v55 + 104);
          v58 = *(v55 + 120);
          v141 = *(v55 + 136);
          *&v139[32] = v57;
          v140 = v58;
          *&v139[16] = v56;
          if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v120, &info))
          {
            re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v120, &info);
            v59 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v117, &info);
          }

          if (info && (BYTE8(info) & 1) != 0)
          {
            (*(*info + 40))(v59);
          }

          v60 = *(v50 + 2776);
          if (v60 <= v52 + 1)
          {
            v60 = v52 + 1;
          }

          while (v60 - 1 != v52)
          {
            LODWORD(v52) = v52 + 1;
            if ((*(*(v50 + 2760) + 152 * v52) & 0x80000000) != 0)
            {
              goto LABEL_87;
            }
          }

          LODWORD(v52) = v60;
        }
      }

      v47 = *(v4 + 4);
      v48 = ++v49;
    }

    while (*(v47 + 120) > v49);
  }

  *(v4 + 300) = 5;
  *a1 = 1;
  *(a1 + 2) = 0;
}

void re::MaterialBuilder::createFunctionBuildTasks(re::MaterialBuilder *this, uint64_t a2, int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1B8768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8768))
  {
    re::Defaults::BOOLValue(buf, "enableShaderDebugLogs", v27);
    if (buf[0])
    {
      v28 = buf[1];
    }

    else
    {
      v28 = 0;
    }

    byte_1EE1B8689 = v28;
    __cxa_guard_release(&qword_1EE1B8768);
  }

  v4 = *(this + 4);
  if (*(v4 + 120))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(*(v4 + 128) + 8 * v5);
      if (*(v7 + 2845) == 1)
      {
        shouldCompileFallbackShaderForTechnique = re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(v7, v6);
        if (shouldCompileFallbackShaderForTechnique)
        {
          re::MaterialBuilder::addOrReplaceFunctionConstants(*(v7 + 64), *(v7 + 56), this + 40, v36);
          re::MaterialBuilder::addOrReplaceFunctionConstants(v38, v37, this + 88, buf);
          re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v36, buf);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(buf);
          v34 = 0;
          memset(v33, 0, sizeof(v33));
          v35 = 0x7FFFFFFFLL;
          v32 = 0;
          memset(v30, 0, sizeof(v30));
          v31 = 0;
          v9 = *(v7 + 2776);
          if (v9)
          {
            v10 = 0;
            v11 = *(v7 + 2760);
            while (1)
            {
              v12 = *v11;
              v11 += 38;
              if (v12 < 0)
              {
                break;
              }

              if (v9 == ++v10)
              {
                LODWORD(v10) = *(v7 + 2776);
                break;
              }
            }
          }

          else
          {
            LODWORD(v10) = 0;
          }

LABEL_26:
          while (v10 != v9)
          {
            v15 = *(v7 + 2760) + 152 * v10;
            re::DynamicString::DynamicString(buf, (v15 + 40));
            v41 = *(v15 + 72);
            v16 = *(v15 + 88);
            v17 = *(v15 + 104);
            v18 = *(v15 + 120);
            v45 = *(v15 + 136);
            v43 = v17;
            v44 = v18;
            v42 = v16;
            if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v33, buf))
            {
              re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v33, buf);
              v19 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v30, buf);
            }

            if (*buf && (buf[8] & 1) != 0)
            {
              (*(**buf + 40))(v19);
            }

            v20 = *(v7 + 2776);
            if (v20 <= v10 + 1)
            {
              v20 = v10 + 1;
            }

            while (v20 - 1 != v10)
            {
              LODWORD(v10) = v10 + 1;
              if ((*(*(v7 + 2760) + 152 * v10) & 0x80000000) != 0)
              {
                goto LABEL_26;
              }
            }

            LODWORD(v10) = v20;
          }

          if (v37)
          {
            v21 = v38;
            v22 = (v38 + 104 * v37);
            do
            {
              re::DynamicString::DynamicString(buf, v21);
              v41 = *(v21 + 2);
              v23 = *(v21 + 3);
              v24 = *(v21 + 4);
              v25 = *(v21 + 5);
              v45 = *(v21 + 24);
              v43 = v24;
              v44 = v25;
              v42 = v23;
              if (!re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::containsKey(v33, buf))
              {
                re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::add(v33, buf);
                v26 = re::DynamicArray<re::TechniqueFunctionConstant>::add(v30, buf);
              }

              if (*buf)
              {
                if (buf[8])
                {
                  (*(**buf + 40))(v26);
                }
              }

              v21 = (v21 + 104);
            }

            while (v21 != v22);
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::DynamicArray(buf, v30);
          v29[0] = v41;
          v29[1] = v40;
          re::MaterialBuilder::addFunctionsToReflectionCache(v7, v29, *(this + 153));
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(buf);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v30);
          re::HashSetBase<re::DynamicString,re::DynamicString,re::internal::ValueAsKey<re::DynamicString>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v33);
          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v36);
        }

        else if (byte_1EE1B8689 == 1)
        {
          v13 = *re::graphicsLogObjects(shouldCompileFallbackShaderForTechnique);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = *v7;
            *buf = 136315138;
            *&buf[4] = v14;
            _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Skipping fallback shader compilation for technique %s", buf, 0xCu);
          }
        }
      }

      v4 = *(this + 4);
      v5 = ++v6;
    }

    while (*(v4 + 120) > v6);
  }
}

uint64_t re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(_anonymous_namespace_ *a1, int a2)
{
  v3 = a1;
  v41 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1B8760, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B8760);
    if (a1)
    {
      re::Defaults::intValue(&v37, "shaderCompilationMode", v33);
      if (v37)
      {
        v34 = HIDWORD(v37);
      }

      else
      {
        v34 = 0;
      }

      dword_1EE1B868C = v34;
      __cxa_guard_release(&qword_1EE1B8760);
    }
  }

  if (dword_1EE1B868C == 2)
  {
    goto LABEL_7;
  }

  if (dword_1EE1B868C == 1)
  {
LABEL_6:
    v5 = 1;
    return v5 & 1;
  }

  v4 = *(v3 + 710);
  if (v4 == 2)
  {
LABEL_7:
    v5 = 0;
    return v5 & 1;
  }

  if (v4 == 1)
  {
    goto LABEL_6;
  }

  v7 = *v3;
  re::DynamicString::find(&v39, &v37, "_BackCompat", 11, 0);
  if ((v39 & 1) == 0)
  {
    v8 = strlen(*v3);
    if (v8)
    {
      MurmurHash3_x64_128(*v3, v8, 0, &v39);
      v9 = (&v40[8 * v39 - 0xC3910C8D016B07DLL] + (v39 >> 2) - 1) ^ v39;
    }

    else
    {
      v9 = 0;
    }

    v36 = v9;
    WeakRetained = objc_loadWeakRetained(v3 + 342);
    v11 = WeakRetained - 8;
    if (!WeakRetained)
    {
      v11 = 0;
    }

    v35 = v11;
    if (!*(v11 + 2) || (v12 = *(*(v11 + 3) + 4 * (v9 % *(v11 + 10))), v12 == 0x7FFFFFFF))
    {
LABEL_21:
      v15 = -1;
    }

    else
    {
      v13 = *(v11 + 4);
      v14 = *(*(v11 + 3) + 4 * (v9 % *(v11 + 10)));
      while (*(v13 + 24 * v14 + 8) != v9)
      {
        v14 = *(v13 + 24 * v14) & 0x7FFFFFFF;
        if (v14 == 0x7FFFFFFF)
        {
          goto LABEL_21;
        }
      }

      v22 = 0x7FFFFFFFLL;
      while (*(v13 + 24 * v12 + 8) != v9)
      {
        v12 = *(v13 + 24 * v12) & 0x7FFFFFFF;
        if (v12 == 0x7FFFFFFF)
        {
          goto LABEL_58;
        }
      }

      v22 = v12;
LABEL_58:
      v15 = *(v13 + 24 * v22 + 16);
    }

    if (*(v11 + 17))
    {
      v16 = *(v11 + 40);
      v17 = *(v11 + 18);
      v18 = *(v17 + 4 * (v15 % v16));
      if (v18 != 0x7FFFFFFF)
      {
        v19 = *(v11 + 19);
        while (*(v19 + 48 * v18 + 8) != v15)
        {
          v18 = *(v19 + 48 * v18) & 0x7FFFFFFF;
          if (v18 == 0x7FFFFFFF)
          {
            goto LABEL_27;
          }
        }

        v23 = v19 + 48 * v18;
        v24 = *(v23 + 24);
        if (v24)
        {
          v5 = 0;
          v25 = *(v23 + 32);
          v26 = 4 * v24;
          do
          {
            v27 = *v25++;
            v5 |= v27 == a2;
            v26 -= 4;
          }

          while (v26);
          goto LABEL_32;
        }

LABEL_56:
        v5 = 0;
LABEL_32:
        v39 = &v36;
        v40 = &v35;
        if (re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "OpaqueLite", "Opaque") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "TransparentLite", "Transparent") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "SurfaceShaderOpaqueLite", "SurfaceShaderOpaque") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "SurfaceShaderTransparentLite", "SurfaceShaderTransparent") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "FadeOpaqueLite", "FadeOpaque") || re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(&v39, "SurfaceShaderFadeOpaqueLite", "SurfaceShaderFadeOpaque"))
        {
          v5 = 0;
        }

        if (v35)
        {
        }

        goto LABEL_41;
      }

LABEL_27:
      v20 = *(v17 + 4 * (v9 % v16));
      if (v20 != 0x7FFFFFFF)
      {
        v21 = *(v11 + 19);
        while (*(v21 + 48 * v20 + 8) != v9)
        {
          v20 = *(v21 + 48 * v20) & 0x7FFFFFFF;
          if (v20 == 0x7FFFFFFF)
          {
            goto LABEL_31;
          }
        }

        v28 = v21 + 48 * v20;
        v29 = *(v28 + 24);
        if (v29)
        {
          v5 = 0;
          v30 = *(v28 + 32);
          v31 = 4 * v29;
          do
          {
            v32 = *v30++;
            v5 |= v32 == a2;
            v31 -= 4;
          }

          while (v31);
          goto LABEL_32;
        }

        goto LABEL_56;
      }
    }

LABEL_31:
    v5 = 1;
    goto LABEL_32;
  }

  v5 = 0;
LABEL_41:
  if (v37 && (v38 & 1) != 0)
  {
    (*(*v37 + 40))();
  }

  return v5 & 1;
}

uint64_t re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, unint64_t *a2, _WORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::mtl::DataType,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 8) = *(v7 + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v7 + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v7 + 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v7 + 24) = *a3;
  result = v7 + 24;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, unint64_t *a2, _BYTE *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 24;
  }

  v7 = re::HashTable<re::StringID,re::mtl::VertexStepFunction,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 8) = *(v7 + 8) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v7 + 8) = *a2 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  *(v7 + 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  *(v7 + 24) = *a3;
  result = v7 + 24;
  ++*(a1 + 40);
  return result;
}

BOOL re::MaterialBuilder::shouldCompileFallbackShaderForTechnique(re::MaterialTechniqueDefinition const*,int)::$_0::operator()(uint64_t **a1, char *__s, const char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = **a1;
  v7 = strlen(__s);
  if (v7)
  {
    MurmurHash3_x64_128(__s, v7, 0, &v16);
    v8 = (v17 + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583E9) ^ v16;
  }

  else
  {
    v8 = 0;
  }

  if (v6 != v8)
  {
    return 0;
  }

  v9 = *a1[1];
  v10 = strlen(a3);
  if (v10)
  {
    MurmurHash3_x64_128(a3, v10, 0, &v16);
    v11 = (v17 + (v16 << 6) + (v16 >> 2) - 0x61C8864680B583E9) ^ v16;
  }

  else
  {
    v11 = 0;
  }

  if (!*(v9 + 136))
  {
    return 0;
  }

  v12 = *(*(v9 + 144) + 4 * (v11 % *(v9 + 160)));
  if (v12 == 0x7FFFFFFF)
  {
    return 0;
  }

  v14 = *(v9 + 152);
  do
  {
    v15 = *(v14 + 48 * v12 + 8);
    result = v15 == v11;
    if (v15 == v11)
    {
      break;
    }

    v12 = *(v14 + 48 * v12) & 0x7FFFFFFF;
  }

  while (v12 != 0x7FFFFFFF);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::TechniqueFunctionConstant>::operator=(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*this)
  {
    if (v4)
    {
      re::DynamicArray<re::TechniqueFunctionConstant>::copy(this, 0, *a2, v4);
      re::DynamicArray<re::TechniqueFunctionConstant>::resize(this, *(a2 + 8));
    }

    else
    {
      re::DynamicArray<re::TechniqueFunctionConstant>::clear(this);
    }
  }

  else if (v4)
  {
    re::DynamicArray<re::TechniqueFunctionConstant>::setCapacity(this, v4);
    ++*(this + 6);
    re::DynamicArray<re::TechniqueFunctionConstant>::copy(this, 0, *a2, *(a2 + 8));
  }

  return this;
}

uint64_t re::MaterialBuilder::addFunctionsToReflectionCache(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = a2[1];
  if (*(a1 + 2448))
  {
    v8 = *(a1 + 2456);
  }

  else
  {
    v8 = (a1 + 2449);
  }

  v9 = re::FunctionReflectionCache::hashFunction(v6, v7, (a1 + 2504), v8, *(a1 + 2424));
  v15 = 0;
  v16 = 0;
  v18 = 0;
  v17 = 0;
  *v19 = 0;
  memset(&v19[16], 0, 24);
  re::DynamicString::setCapacity(&v19[8], 0);
  re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v15, a2);
  re::DynamicString::operator=(&v19[8], (a1 + 2440));
  v20 = *(a1 + 2424);
  v21 = v9;
  re::FunctionReflectionCache::addTask(a3, &v15);
  if (*&v19[8])
  {
    if (v19[16])
    {
      (*(**&v19[8] + 40))();
    }

    memset(&v19[8], 0, 32);
  }

  result = re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v15);
  v11 = *(a1 + 2480);
  v12 = v11 >> 1;
  if ((v11 & 1) == 0)
  {
    v12 = v11 >> 1;
  }

  if (v12)
  {
    if (v11)
    {
      v13 = *(a1 + 2488);
    }

    else
    {
      v13 = (a1 + 2481);
    }

    v14 = re::FunctionReflectionCache::hashFunction(*a2, a2[1], (a1 + 2568), v13, *(a1 + 2432));
    v15 = 0;
    v16 = 0;
    v18 = 0;
    v17 = 0;
    memset(v19, 0, sizeof(v19));
    re::DynamicString::setCapacity(&v19[8], 0);
    re::DynamicArray<re::TechniqueFunctionConstant>::operator=(&v15, a2);
    re::DynamicString::operator=(&v19[8], (a1 + 2472));
    v20 = *(a1 + 2432);
    v21 = v14;
    re::FunctionReflectionCache::addTask(a3, &v15);
    if (*&v19[8])
    {
      if (v19[16])
      {
        (*(**&v19[8] + 40))();
      }

      memset(&v19[8], 0, 32);
    }

    return re::DynamicArray<re::TechniqueFunctionConstant>::deinit(&v15);
  }

  return result;
}

uint64_t *re::DynamicArray<re::TechniqueFunctionConstant>::operator=(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = result[1];
      v9 = a2[1];
      *result = v5;
      result[1] = v9;
      *a2 = v4;
      a2[1] = v8;
      v10 = result[2];
      result[2] = a2[2];
      a2[2] = v10;
      v11 = result[4];
      result[4] = a2[4];
      a2[4] = v11;
      ++*(a2 + 6);
      ++*(result + 6);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash("assertion failure: (!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator) ");
      __break(1u);
    }
  }

  return result;
}

void re::MaterialBuilder::overlayBlurTechniquesAndTextures(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&qword_1EE1B8778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8778))
  {
    qword_1EE1B8770 = re::hashString("SFBPassthroughDownsample2D", v26);
    __cxa_guard_release(&qword_1EE1B8778);
  }

  if ((atomic_load_explicit(&qword_1EE1B8788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8788))
  {
    qword_1EE1B8780 = re::hashString("SFBCopyTextureBilinear", v27);
    __cxa_guard_release(&qword_1EE1B8788);
  }

  if ((atomic_load_explicit(&qword_1EE1B8798, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B8798))
  {
    qword_1EE1B8790 = re::hashString("PlattersOnly", v28);
    __cxa_guard_release(&qword_1EE1B8798);
  }

  if ((atomic_load_explicit(&qword_1EE1B87A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87A8))
  {
    qword_1EE1B87A0 = re::hashString("OnlyPlattersVS", v29);
    __cxa_guard_release(&qword_1EE1B87A8);
  }

  if ((atomic_load_explicit(&qword_1EE1B87B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87B8))
  {
    qword_1EE1B87B0 = re::hashString("OnlyPlattersBreakthrough", v30);
    __cxa_guard_release(&qword_1EE1B87B8);
  }

  if ((atomic_load_explicit(&qword_1EE1B87C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87C8))
  {
    qword_1EE1B87C0 = re::hashString("PlatterContentsOnly", v31);
    __cxa_guard_release(&qword_1EE1B87C8);
  }

  if ((atomic_load_explicit(&qword_1EE1B87D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B87D8))
  {
    qword_1EE1B87D0 = re::hashString("StenciledRenderNoPlatter", v32);
    __cxa_guard_release(&qword_1EE1B87D8);
  }

  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
  }

  *&v43 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
  v6 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 1032, &v43);
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  *&v43 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
  v7 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(a2 + 1032, &v43);
  v8 = v7;
  v9 = *a3;
  if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
  {
    dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
  }

  if (*(v9 + 64) && (v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash ^ (re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash >> 30))) ^ ((0xBF58476D1CE4E5B9 * (re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash ^ (re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash >> 30))) >> 27)), v11 = *(*(v9 + 72) + 4 * ((v10 ^ (v10 >> 31)) % *(v9 + 88))), v11 != 0x7FFFFFFF))
  {
    v13 = *(v9 + 80);
    v14 = 0x7FFFFFFFLL;
    while (*(v13 + 72 * v11 + 8) != re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash)
    {
      v11 = *(v13 + 72 * v11) & 0x7FFFFFFF;
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_22;
      }
    }

    v14 = v11;
LABEL_22:
    v12 = v14 == 0x7FFFFFFF;
  }

  else
  {
    v12 = 1;
  }

  if (*(a1 + 22) == 1 && (*(a1 + 23) & 1) != 0 || *(a1 + 24) == 1 && *(a1 + 25) == 1)
  {
    if (!v6)
    {
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      v37 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
      v15 = *(*(a1 + 32) + 64);
      v43 = 0u;
      v44 = 0u;
      *v45 = 0;
      *&v45[4] = 0x7FFFFFFFLL;
      re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(&v43, v15, 3);
      v6 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 1032, &v37, &v43);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v43);
    }

    if (v8)
    {
      v16 = 1;
    }

    else
    {
      v16 = v12;
    }

    if ((v16 & 1) == 0)
    {
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      v37 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;
      v17 = *(*(a1 + 32) + 64);
      v43 = 0u;
      v44 = 0u;
      *v45 = 0;
      *&v45[4] = 0x7FFFFFFFLL;
      re::HashTable<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::init(&v43, v17, 2);
      v8 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(a2 + 1032, &v37, &v43);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(&v43);
    }
  }

  if (*(a1 + 22) == 1 && *(a1 + 23) == 1)
  {
    v43 = 0u;
    v44 = 0u;
    re::DynamicString::setCapacity(&v43, 0);
    memset(v47, 0, sizeof(v47));
    v46 = 0u;
    *&v45[8] = 0u;
    *v45 = 0x1002D0035;
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 40, "EnablePassthroughBlurPlane", &v43);
    v37 = 0;
    v18 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, &qword_1EE1B8770, &v37);
    if (!*(a2 + 608))
    {
    }

    v19 = re::StringID::invalid(&v33);
    if (v33)
    {
      if (v33)
      {
      }
    }

    v20 = re::StringID::invalid(&v33);
    if (v33)
    {
      if (v33)
      {
      }
    }

    LODWORD(v37) = 1;
    v39 = 9;
    v40 = 0x23D59F1355F7D636;
    v38 = 0x7F03C6932F573C08;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((a2 + 552), &v38, &v37);
    v7 = v43;
    if (v43 && (BYTE8(v43) & 1) != 0)
    {
      v7 = (*(*v43 + 40))();
    }
  }

  if (*(a1 + 24) == 1 && *(a1 + 25) == 1)
  {
    *(&v43 + 1) = 0;
    v44 = 0uLL;
    re::DynamicString::setCapacity(&v43, 0);
    memset(v47, 0, sizeof(v47));
    v46 = 0u;
    *&v45[8] = 0u;
    *v45 = 0x100430035;
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(a1 + 40, "EnableVCABlurPlane", &v43);
    v37 = 0;
    re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, &qword_1EE1B8780, &v37);
    re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, &qword_1EE1B8790, &qword_1EE1B87A0);
    v21 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v6, &qword_1EE1B87C0, &qword_1EE1B87D0);
    if (v8)
    {
      re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v8, &qword_1EE1B8790, &qword_1EE1B87B0);
      v21 = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(v8, &qword_1EE1B87C0, &qword_1EE1B87D0);
    }

    if (!*(a2 + 608))
    {
    }

    v22 = re::StringID::invalid(&v33);
    if (v33)
    {
      if (v33)
      {
      }
    }

    v23 = re::StringID::invalid(&v33);
    if (v33)
    {
      if (v33)
      {
      }
    }

    LODWORD(v37) = 1;
    v39 = 9;
    v40 = 0x60DF09E0AF8AD07;
    v38 = 0x2AC55919B0708E48;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((a2 + 552), &v38, &v37);
    v24 = re::StringID::invalid(&v41);
    if (v41)
    {
      if (v41)
      {
      }
    }

    v25 = re::StringID::invalid(&v41);
    if (v41)
    {
      if (v41)
      {
      }
    }

    v33 = 1;
    v35 = 9;
    v36 = 0x2B6EE9216B5DB7CCLL;
    v34 = 0x165DA6A7F4273B43;
    re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::addOrReplace((a2 + 552), &v34, &v33);
    if (v43)
    {
      if (BYTE8(v43))
      {
        (*(*v43 + 40))();
      }
    }
  }
}

__n128 re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(uint64_t a1, char *a2, uint64_t a3)
{
  v13 = 0;
  v14 = a2;
  v11 = 0;
  v12 = 0;
  v5 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(a1, &v14, v5, &v11);
  v6 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addInternal<char const*&,re::TechniqueFunctionConstant const&>(a1, &v11, &v14, a3);
  }

  else
  {
    ++*(a1 + 40);
    v8 = *(a1 + 16) + 152 * v6;
    re::DynamicString::operator=((v8 + 40), a3);
    *(v8 + 72) = *(a3 + 32);
    result = *(a3 + 48);
    v9 = *(a3 + 64);
    v10 = *(a3 + 80);
    *(v8 + 136) = *(a3 + 96);
    *(v8 + 120) = v10;
    *(v8 + 104) = v9;
    *(v8 + 88) = result;
  }

  return result;
}

void re::MaterialBuilder::result(re::MaterialBuilder *this@<X0>, re::RenderManager *a2@<X1>, uint64_t a3@<X8>)
{
  v118 = *MEMORY[0x1E69E9840];
  v5 = *(this + 4);
  if (*(v5 + 120))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(*(*(v5 + 128) + 8 * v6) + 2848) == 1 && *(this + 1336) == 1 && *(this + 157))
      {
        v8 = *(this + 158);
        if (v8 <= v6)
        {
LABEL_124:
          *v95 = 0;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v102 = 0u;
          v57 = MEMORY[0x1E69E9C10];
          v78 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          *&buf[4] = "operator[]";
          *&buf[12] = 1024;
          if (v78)
          {
            v79 = 3;
          }

          else
          {
            v79 = 2;
          }

          *&buf[14] = 468;
          *&buf[18] = 2048;
          *&buf[20] = v6;
          *&buf[28] = 2048;
          *&buf[30] = v8;
          _os_log_send_and_compose_impl(v79, v95, &v102, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", buf, 38, v80, v81);
          _os_crash_msg();
          __break(1u);
          goto LABEL_128;
        }

        v9 = *(this + 159) + 40 * v6;
        if (*(v9 + 16))
        {
          v10 = (v9 + 24);
        }

        else
        {
          v10 = *(v9 + 32);
        }

        v11 = *(v9 + 8);
        if (v11)
        {
          v12 = 8 * v11;
          while (1)
          {
            v13 = *v10;
            if (*v10)
            {
              v14 = (v13 + 8);
              v16 = atomic_load((v13 + 208));
              if (v16 == 2)
              {
                re::DynamicString::format(&v102, "Shaders not precompiled", v15);
                v22 = v102;
                v23 = v103;
                *a3 = 0;
                *(a3 + 8) = v22;
                *(a3 + 24) = v23;

                return;
              }
            }

            ++v10;
            v12 -= 8;
            if (!v12)
            {
              v5 = *(this + 4);
              break;
            }
          }
        }
      }

      v6 = ++v7;
    }

    while (*(v5 + 120) > v7);
  }

  v17 = *(a2 + 3);
  v18 = re::globalAllocators(this);
  a2 = (*(*v18[2] + 32))(v18[2], 1472, 8);
  v19 = re::MaterialInstance::MaterialInstance(a2, v17);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v19 + 2, *(this + 4));
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(a2 + 31, this + 144);
  re::FixedArray<re::SharedPtr<re::MaterialPipelineData const>>::operator=(a2 + 34, this + 147);
  re::fillTablesWithLinkedFunctionParameterDefaults(a2 + 248, this + 144, this + 84);
  re::fillTablesWithLinkedFunctionParameterDefaults(a2 + 272, this + 144, this + 84);
  *(a2 + 179) = *this;
  *this = 0;
  re::MaterialParameterTable::MaterialParameterTable(&v102, this + 18, this + 84);
  v20 = *(this + 4);
  v90 = v20;
  if (v20)
  {
    v21 = (v20 + 8);
    re::MaterialBuilder::overlayBlurTechniquesAndTextures(this, &v102, &v90);

    v90 = 0;
  }

  else
  {
    re::MaterialBuilder::overlayBlurTechniquesAndTextures(this, &v102, &v90);
  }

  re::MaterialParameterTable::operator=(a2 + 304, &v102);
  v24 = re::MaterialRenderFlags::flattenToOverrideFlags((this + 8));
  *(a2 + 37) = v24;
  v25 = *(*(this + 4) + 120);
  if (v25 >= 0xFFFFFFFF)
  {
    v26 = *re::graphicsLogObjects(v24);
    v24 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      *buf = 134217984;
      *&buf[4] = v25;
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "Reached max supported material definitions (%zu)", buf, 0xCu);
    }

    v25 = 4294967294;
  }

  v85 = a2;
  if (v25)
  {
    v8 = 0;
    v6 = &v95[8];
    v82 = &v93 + 1;
    v27 = 16;
    v84 = v25;
    while (1)
    {
      v28 = *(this + 4);
      v29 = *(v28 + 120);
      if (v29 <= v8)
      {
        *&v92 = 0;
        v116 = 0u;
        v117 = 0u;
        memset(buf, 0, sizeof(buf));
        v66 = MEMORY[0x1E69E9C10];
        v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v95 = 136315906;
        *&v95[4] = "operator[]";
        v96 = 1024;
        if (v67)
        {
          v68 = 3;
        }

        else
        {
          v68 = 2;
        }

        v97 = 468;
        v98 = 2048;
        v99 = v8;
        v100 = 2048;
        v101 = v29;
        _os_log_send_and_compose_impl(v68, &v92, buf, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v95, 38, v80, &v93 + 1);
        _os_crash_msg();
        __break(1u);
LABEL_112:
        v91 = 0;
        v116 = 0u;
        v117 = 0u;
        memset(buf, 0, sizeof(buf));
        v69 = MEMORY[0x1E69E9C10];
        v70 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v70)
        {
          v71 = 3;
        }

        else
        {
          v71 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v8;
        v113 = 2048;
        v114 = v6;
        _os_log_send_and_compose_impl(v71, &v91, buf, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v82);
        _os_crash_msg();
        __break(1u);
LABEL_116:
        v91 = 0;
        v116 = 0u;
        v117 = 0u;
        memset(buf, 0, sizeof(buf));
        v72 = MEMORY[0x1E69E9C10];
        v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v73)
        {
          v74 = 3;
        }

        else
        {
          v74 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v8;
        v113 = 2048;
        v114 = a2;
        _os_log_send_and_compose_impl(v74, &v91, buf, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v82);
        _os_crash_msg();
        __break(1u);
LABEL_120:
        v91 = 0;
        v116 = 0u;
        v117 = 0u;
        memset(buf, 0, sizeof(buf));
        v75 = MEMORY[0x1E69E9C10];
        v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v76)
        {
          v77 = 3;
        }

        else
        {
          v77 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v8;
        v113 = 2048;
        v114 = a2;
        _os_log_send_and_compose_impl(v77, &v91, buf, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v80, v82);
        _os_crash_msg();
        __break(1u);
        goto LABEL_124;
      }

      v30 = *(*(v28 + 128) + 8 * v8);
      re::MaterialBuilder::addOrReplaceFunctionConstants(*(v30 + 64), *(v30 + 56), this + 40, v87);
      re::MaterialBuilder::addOrReplaceFunctionConstants(v89, v88, this + 88, buf);
      re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v87, buf);
      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(buf);
      v31 = (v30 + 8);
      v32 = re::FunctionConstantsEnumerator::overrideEnumerator((v30 + 8), this + 40, v95);
      if (*(this + 1288) == 1)
      {
        if (v95[0])
        {
          v33 = &v95[8];
        }

        else
        {
          v33 = (v30 + 8);
        }

        re::FunctionConstantsEnumerator::appendEnumerator(&v92, v33, (this + 1296));
        buf[0] = 1;
        *&buf[8] = v92;
        v34 = v93;
        v93 = 0;
        v92 = 0uLL;
        *&buf[24] = v34;
        *&buf[32] = v94;
        re::Optional<re::FunctionConstantsEnumerator>::operator=(v95, buf);
        if (buf[0] == 1)
        {
          re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&buf[8]);
        }

        v32 = re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v92);
      }

      if (v95[0])
      {
        v31 = &v95[8];
      }

      v35 = v89;
      v36 = v88;
      if (*(this + 154))
      {
        v6 = *(this + 155);
        if (v6 <= v8)
        {
          goto LABEL_112;
        }

        v6 = *(*(this + 156) + 8 * v8);
        v86 = v6;
        if (v6)
        {
          v32 = (v6 + 8);
        }
      }

      else
      {
        v6 = 0;
        v86 = 0;
      }

      v37 = *(this + 157);
      if (v37)
      {
        a2 = *(this + 158);
        if (a2 <= v8)
        {
          goto LABEL_116;
        }

        v38 = *(this + 159);
        v39 = (*(v38 + v27) & 1) != 0 ? (v38 + v27 + 8) : *(v38 + v27 + 16);
        a2 = v85;
        v37 = *(v38 + v27 - 8);
      }

      else
      {
        v39 = 0;
      }

      re::MaterialBuilder::generateTechnique(v32, v30, a2, v35, v36, v31, &v92, &v86, v39, v37);
      if (v6)
      {

        v86 = 0;
      }

      v41 = v92;
      if (v92)
      {
        v6 = a2;
        a2 = *(a2 + 10);
        if (a2 <= v8)
        {
          goto LABEL_120;
        }

        std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::operator=[abi:nn200100]((*(v6 + 88) + v27 - 16), &v92 + 1);
        a2 = v6;
      }

      else
      {
        v42 = &v93 + 1;
        if (v93)
        {
          v42 = v94;
        }

        re::DynamicString::format(buf, "[%s] %s", v40, *v30, v42);
        v43 = *buf;
        v44 = *&buf[16];
        *a3 = 0;
        *(a3 + 8) = v43;
        *(a3 + 24) = v44;
      }

      v6 = &v95[8];
      if (v92 == 1)
      {
        std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](&v92 + 1);
      }

      else if (*(&v92 + 1) && (v93 & 1) != 0)
      {
        (*(**(&v92 + 1) + 40))();
      }

      if (v95[0] == 1)
      {
        re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v95[8]);
      }

      re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v87);
      if ((v41 & 1) == 0)
      {
        break;
      }

      ++v8;
      v27 += 40;
      if (v84 == v8)
      {
        goto LABEL_69;
      }
    }

    re::MaterialParameterTable::~MaterialParameterTable(&v102);
    if (a2)
    {
      goto LABEL_107;
    }
  }

  else
  {
LABEL_69:
    v45 = *(this + 4);
    v46 = (v45 + 136);
    v47 = (a2 + 24);
    if ((a2 + 24) != (v45 + 136))
    {
      if (*v47)
      {
        if (*(a2 + 13))
        {
          v48 = *(a2 + 12);
          if (v48)
          {
            memset_pattern16(*(a2 + 4), &memset_pattern_211, 4 * v48);
          }

          v49 = *(a2 + 14);
          if (v49)
          {
            v50 = 0;
            for (i = 0; i < v49; ++i)
            {
              v52 = *(v85 + 5);
              v53 = *(v52 + v50);
              if (v53 < 0)
              {
                *(v52 + v50) = v53 & 0x7FFFFFFF;
                re::FixedArray<CoreIKTransform>::deinit((v52 + v50 + 16));
                v49 = *(v85 + 14);
              }

              v50 += 48;
            }
          }

          a2 = v85;
          *(v85 + 13) = 0;
          *(v85 + 14) = 0;
          v54 = *(v85 + 16) + 1;
          *(v85 + 15) = 0x7FFFFFFF;
          *(v85 + 16) = v54;
        }

        if (*v46)
        {
          v55 = *(v45 + 164);
          if (*(a2 + 12) < v55)
          {
            re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(v47, v55);
          }

          re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::copy(v47, v45 + 136);
          ++*(a2 + 16);
        }
      }

      else if (*v46)
      {
        if (*(v45 + 164) <= 3u)
        {
          v56 = 3;
        }

        else
        {
          v56 = *(v45 + 164);
        }

        re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(a2 + 24, *v46, v56);
        re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::copy(a2 + 3, v45 + 136);
      }
    }

    v57 = *(this + 4);
    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
LABEL_128:
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    re::MaterialParameterTable::appendPassTechniqueMappingsFrom((a2 + 304), v57 + 16, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    v58 = *(this + 4);
    v59 = *(v58 + 96);
    if (v59)
    {
      v60 = 0;
      v61 = *(v58 + 80);
      while (1)
      {
        v62 = *v61;
        v61 += 18;
        if (v62 < 0)
        {
          break;
        }

        if (v59 == ++v60)
        {
          LODWORD(v60) = *(v58 + 96);
          break;
        }
      }
    }

    else
    {
      LODWORD(v60) = 0;
    }

    while (v60 != v59)
    {
      v63 = *(v58 + 80) + 72 * v60;
      re::MaterialParameterTable::appendPassTechniqueMappingsFrom((a2 + 304), v63 + 16, *(v63 + 8));
      v64 = *(v58 + 96);
      if (v64 <= v60 + 1)
      {
        v64 = v60 + 1;
      }

      while (v64 - 1 != v60)
      {
        LODWORD(v60) = v60 + 1;
        if ((*(*(v58 + 80) + 72 * v60) & 0x80000000) != 0)
        {
          goto LABEL_105;
        }
      }

      LODWORD(v60) = v64;
LABEL_105:
      ;
    }

    *(a2 + 180) = *(this + 160);
    re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=(a2 + 200, this + 88);
    *(a2 + 192) = *(this + 136);
    v65 = a2 + 8;
    *a3 = 1;
    *(a3 + 8) = a2;
    re::MaterialParameterTable::~MaterialParameterTable(&v102);
LABEL_107:
  }
}

unint64_t re::MaterialRenderFlags::flattenToOverrideFlags(re::MaterialRenderFlags *this)
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
    if (*(this + 7))
    {
      v3 = 2048;
    }

    else
    {
      v3 = 0;
    }

    v1 |= v3;
    v2 = v2 | 0x800;
  }

  if (*(this + 8) == 1)
  {
    if (*(this + 9))
    {
      v4 = 4096;
    }

    else
    {
      v4 = 0;
    }

    v1 |= v4;
    v2 = v2 | 0x1000;
  }

  if (*(this + 2) == 1)
  {
    v1 = v1 & 0xFFFFFF9F | (32 * (*(this + 3) == 1)) | ((*(this + 3) == 0) << 6);
    v2 = v2 | 0x60;
  }

  if (*(this + 4) == 1)
  {
    v1 = v1 & 0xFFCFFFFF | ((*(this + 5) == 0) << 20) | ((*(this + 5) == 1) << 21);
    v2 = v2 | 0x300000;
  }

  if (*(this + 10) == 1)
  {
    if (*(this + 11))
    {
      v5 = 0x800000;
    }

    else
    {
      v5 = 0;
    }

    v1 = v5 | v1 & 0xFF7FFFFF;
    v2 = v2 | 0x800000;
  }

  if (*(this + 12) == 1)
  {
    if (*(this + 13))
    {
      v6 = 0x1000000;
    }

    else
    {
      v6 = 0;
    }

    v1 = v6 | v1 & 0xFEFFFFFF;
    v2 = v2 | 0x1000000;
  }

  if (*(this + 14) == 1)
  {
    if (*(this + 15))
    {
      v7 = 0x2000000;
    }

    else
    {
      v7 = 0;
    }

    v1 = v7 | v1 & 0xFDFFFFFF;
    v2 = v2 | 0x2000000;
  }

  if (*(this + 16) == 1)
  {
    if (*(this + 17))
    {
      v8 = 0x4000000;
    }

    else
    {
      v8 = 0;
    }

    v1 = v8 | v1 & 0xFBFFFFFF;
    v2 = v2 | 0x4000000;
  }

  if (*(this + 18) == 1)
  {
    if (*(this + 19))
    {
      v9 = 0x10000000;
    }

    else
    {
      v9 = 0;
    }

    v1 = v9 | v1 & 0xEFFFFFFF;
    v2 = v2 | 0x10000000;
  }

  return v1 | (v2 << 32);
}

uint64_t *re::MaterialBuilder::generateTechnique@<X0>(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, re::DynamicString *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, uint64_t *a8, size_t *a9, uint64_t a10)
{
  v73 = *MEMORY[0x1E69E9840];
  v16 = re::globalAllocators(a1);
  v17 = (*(*v16[2] + 32))(v16[2], 136, 8);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 112) = 0u;
  *(v17 + 128) = 0;
  *(v17 + 124) = 0x7FFFFFFF;
  *&v68 = &unk_1F5D03D10;
  *(&v69 + 1) = &v68;
  v59 = v58;
  v57 = v17;
  v58[0] = &unk_1F5D03D10;
  std::__function::__value_func<void ()(re::MaterialTechnique *)>::~__value_func[abi:nn200100](&v68);
  v18 = v57;
  *v57 = a2;
  *(v18 + 1) = a3;
  Permutation = re::FunctionConstantsEnumerator::createPermutation(a6, 0, a4, a5, v53);
  v20 = v54;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = v20 & 0x7FFFFFFF;
    v23 = 32;
    do
    {
      v24 = v54;
      if (v54 <= v21)
      {
        v56 = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v60 = 136315906;
        v61 = "operator[]";
        v62 = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        v63 = 789;
        v64 = 2048;
        v65 = v21;
        v66 = 2048;
        v67 = v24;
        _os_log_send_and_compose_impl(v44, &v56, &v68, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v48, v49);
        _os_crash_msg();
        __break(1u);
LABEL_31:
        v56 = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v60 = 136315906;
        v61 = "operator[]";
        v62 = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v63 = 468;
        v64 = 2048;
        v65 = v21;
        v66 = 2048;
        v67 = v24;
        _os_log_send_and_compose_impl(v47, &v56, &v68, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v60, 38, v48, v49);
        _os_crash_msg();
        __break(1u);
      }

      v24 = v51;
      if (v51 <= v21)
      {
        goto LABEL_31;
      }

      v25 = v55 + v23;
      v26 = v52 + v23;
      re::DynamicString::operator=((v52 + v23 - 32), (v55 + v23 - 32));
      *v26 = *v25;
      v27 = *(v25 + 16);
      v28 = *(v25 + 32);
      v29 = *(v25 + 48);
      *(v26 + 64) = *(v25 + 64);
      *(v26 + 32) = v28;
      *(v26 + 48) = v29;
      *(v26 + 16) = v27;
      ++v21;
      v23 += 104;
    }

    while (v22 != v21);
  }

  re::FixedArray<float>::operator=(v57 + 2, &v50);
  re::FixedArray<re::TechniqueFunctionConstant>::deinit(&v50);
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v53);
  LOBYTE(v68) = 1;
  re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray(&v68 + 1, a6);
  v70 = *(a6 + 24);
  re::Optional<re::FunctionConstantsEnumerator>::operator=(v57 + 40, &v68);
  if (v68 == 1)
  {
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::deinit(&v68 + 1);
  }

  if (*(a2 + 2845))
  {
    TechniqueVariant = re::MaterialTechnique::getOrCreateTechniqueVariant(v57, *(a6 + 32), 1);
    if (*a8)
    {
      v31 = TechniqueVariant;
      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((TechniqueVariant + 8), *a8);
      atomic_store(1u, (v31 + 17));
      if (a10)
      {
        v34 = 8 * a10;
        do
        {
          v35 = *a9;
          if (*a9)
          {
            v36 = (v35 + 8);
            v49 = v35;
            v37 = (v35 + 8);
            re::HashTable<re::PipelineStateCacheKey,re::SharedPtr<re::CachedPipelineState>,re::Hash<re::PipelineStateCacheKey>,re::EqualTo<re::PipelineStateCacheKey>,true,false>::addNew(v31 + 24, (v35 + 24), &v49);
            if (v49)
            {

              v49 = 0;
            }
          }

          ++a9;
          v34 -= 8;
        }

        while (v34);
      }
    }
  }

  v38 = v57;
  v39 = v59;
  v57 = 0;
  *&v68 = v38;
  if (!v59)
  {
    *a7 = 1;
    *&v70 = 0;
    *&v68 = 0;
    *(a7 + 8) = v38;
    goto LABEL_21;
  }

  if (v59 != v58)
  {
    v59 = 0;
    *a7 = 1;
    *&v70 = v39;
    *&v68 = 0;
    *(a7 + 8) = v38;
    goto LABEL_23;
  }

  *&v70 = &v68 + 8;
  (*(*v59 + 24))();
  v40 = v68;
  v39 = v70;
  *a7 = 1;
  *&v68 = 0;
  *(a7 + 8) = v40;
  if (!v39)
  {
LABEL_21:
    *(a7 + 40) = 0;
    goto LABEL_26;
  }

LABEL_23:
  if (v39 == (&v68 + 8))
  {
    *(a7 + 40) = a7 + 16;
    (*(*v39 + 24))(v39);
  }

  else
  {
    *(a7 + 40) = v39;
    *&v70 = 0;
  }

LABEL_26:
  std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](&v68);
  return std::unique_ptr<re::MaterialTechnique,std::function<void ()(re::MaterialTechnique*)>>::~unique_ptr[abi:nn200100](&v57);
}

uint64_t re::MaterialTechnique::getOrCreateTechniqueVariant(re::MaterialTechnique *this, unint64_t a2, char a3)
{
  v4 = this + 88;
  if (!*(this + 11) || (v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27)), v6 = *(*(this + 12) + 4 * ((v5 ^ (v5 >> 31)) % *(this + 28))), v6 == 0x7FFFFFFF))
  {
LABEL_6:
    re::MaterialTechnique::createNewTechniqueVariant(this, a2, a3);
    v10 = a2;
    v11 = v8;
    re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(v4, &v10, &v11);
  }

  else
  {
    v7 = *(this + 13);
    while (*(v7 + 32 * v6 + 8) != a2)
    {
      v6 = *(v7 + 32 * v6) & 0x7FFFFFFF;
      if (v6 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  v11 = a2;
  return *re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator[](v4, &v11);
}

void *re::DynamicArray<unsigned char>::resizeUninitialized(void *result, unint64_t a2)
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

  else if (result[1] < a2)
  {
    result = re::DynamicArray<BOOL>::setCapacity(result, a2);
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

unint64_t re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::addNew(uint64_t *a1, void *a2, _BYTE *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::internalAdd(a1, a2, a3);
}

id re::validateArgumentMatchesStandardResource(id *a1)
{
  v2 = [*a1 index];
  result = 0;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 == 4)
      {
        result = *a1;
        if (*a1)
        {
          if (![result type] && objc_msgSend(*a1, sel_bufferDataType) == 1)
          {
            v4 = 64;
            return ([*a1 bufferDataSize] == v4);
          }

          return 0;
        }
      }

      return result;
    }

    result = *a1;
    if (!*a1)
    {
      return result;
    }

    if (![result type] && objc_msgSend(*a1, sel_bufferDataType) == 1)
    {
      v4 = 1024;
      return ([*a1 bufferDataSize] == v4);
    }

    return 0;
  }

  if (v2 == 1)
  {
    result = *a1;
    if (!*a1)
    {
      return result;
    }

    if (![result type] && objc_msgSend(*a1, sel_bufferDataType) == 1)
    {
      v4 = 256;
      return ([*a1 bufferDataSize] == v4);
    }

    return 0;
  }

  if (v2 == 2)
  {
    result = *a1;
    if (*a1)
    {
      if (![result type] && objc_msgSend(*a1, sel_bufferDataType) == 1)
      {
        v4 = 160;
        return ([*a1 bufferDataSize] == v4);
      }

      return 0;
    }
  }

  return result;
}

unint64_t re::MetalTypeInfo::resolutionHash(re::MetalTypeInfo *this)
{
  v1 = 0xBF58476D1CE4E5B9 * ((*(this + 2) >> 31) ^ (*(this + 2) >> 1));
  v2 = (0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) ^ ((0x94D049BB133111EBLL * (v1 ^ (v1 >> 27))) >> 31);
  v3 = (*(this + 1) | (*this << 32)) ^ ((*(this + 1) | (*this << 32)) >> 30);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27));
  v5 = ((v2 << 6) + (v2 >> 2) + (v4 ^ (v4 >> 31)) - 0x61C8864680B583E9) ^ v2;
  v6 = *(this + 6);
  if (v6)
  {
    v7 = *(this + 7);
    v8 = 80 * v6;
    do
    {
      v5 ^= (v5 << 6) - 0x61C8864680B583E9 + (v5 >> 2) + re::MetalTypeInfo::resolutionHash(v7);
      v7 = (v7 + 80);
      v8 -= 80;
    }

    while (v8);
  }

  return v5;
}

uint64_t re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::clear(a1);
      }
    }

    else if (v4)
    {
      if (*(a2 + 28) <= 3u)
      {
        v5 = 3;
      }

      else
      {
        v5 = *(a2 + 28);
      }

      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(a1, v4, v5);
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::FixedArray(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  if (v4)
  {
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::init<>(a1, v4, a2[1]);
    re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::copy(a1, a2);
  }

  return a1;
}

uint64_t *re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2E8BA2E8BA2E8BBLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v9, v10);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  v5 = (*(*a2 + 32))(a2, 88 * a3, 8);
  v4[2] = v5;
  if (!v5)
  {
LABEL_9:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash("assertion failure: (m_data) Out of memory.");
    __break(1u);
    return result;
  }

  v7 = v5;
  for (i = a3 - 1; i; --i)
  {
    *v7 = 0u;
    *(v7 + 1) = 0u;
    v5 = re::DynamicString::setCapacity(v7, 0);
    *(v7 + 4) = 0;
    *(v7 + 10) = 0;
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 80) = 0;
    v7 = (v7 + 88);
  }

  *v7 = 0u;
  *(v7 + 1) = 0u;
  result = re::DynamicString::setCapacity(v7, 0);
  *(v7 + 4) = 0;
  *(v7 + 10) = 0;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 80) = 0;
  return result;
}

uint64_t re::FixedArray<re::FunctionConstantsEnumerator::PermutationLayer>::copy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    return std::__copy_impl::operator()[abi:nn200100]<re::FunctionConstantsEnumerator::PermutationLayer *,re::FunctionConstantsEnumerator::PermutationLayer *,re::FunctionConstantsEnumerator::PermutationLayer *>(&v4, *(a2 + 16), *(a2 + 16) + 88 * v2, *(a1 + 16));
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::FunctionConstantsEnumerator::PermutationLayer *,re::FunctionConstantsEnumerator::PermutationLayer *,re::FunctionConstantsEnumerator::PermutationLayer *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v4 = a3;
  v5 = a4 + 48;
  v6 = a2 + 48;
  do
  {
    re::DynamicString::operator=((v5 - 48), (v6 - 48));
    v7 = *(v6 - 16);
    *(v5 - 8) = *(v6 - 8);
    *(v5 - 16) = v7;
    re::FixedArray<re::Optional<unsigned long long>>::operator=(v5, v6);
    v8 = *(v6 + 32);
    *(v5 + 24) = *(v6 + 24);
    *(v5 + 32) = v8;
    v5 += 88;
    v9 = v6 + 40;
    v6 += 88;
  }

  while (v9 != v4);
  return v4;
}

uint64_t *re::FixedArray<re::Optional<unsigned long long>>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::Optional<unsigned long long>>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<re::Optional<unsigned long long>>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t *re::FixedArray<re::Optional<unsigned long long>>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 60)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 16, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 16 * a3, 8);
  v4[2] = result;
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
      *result = 0;
      result += 2;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  return result;
}

uint64_t re::FixedArray<re::Optional<unsigned long long>>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 == *(a2 + 8))
  {
    if (v2)
    {
      v3 = *(result + 16);
      v4 = 16 * v2;
      v5 = (*(a2 + 16) + 8);
      do
      {
        if (*v3)
        {
          if (*(v5 - 1))
          {
            goto LABEL_9;
          }

          *v3 = 0;
        }

        else if (*(v5 - 1))
        {
          *v3 = 1;
LABEL_9:
          *(v3 + 8) = *v5;
        }

        v3 += 16;
        v5 += 2;
        v4 -= 16;
      }

      while (v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
    result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
    __break(1u);
  }

  return result;
}

double re::MaterialTechnique::createNewTechniqueVariant(re::MaterialTechnique *this, unint64_t a2, char a3)
{
  v5 = re::globalAllocators(this);
  v6 = (*(*v5[2] + 32))(v5[2], 408, 8);
  result = 0.0;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0u;
  *(v6 + 18) = 1;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0x7FFFFFFF00000000;
  *(v6 + 72) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0x7FFFFFFF00000000;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0x7FFFFFFF00000000;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0x7FFFFFFF00000000;
  *(v6 + 232) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 248) = 0x7FFFFFFF00000000;
  *(v6 + 296) = 0;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 300) = 0x7FFFFFFF;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0x7FFFFFFF00000000;
  *(v6 + 360) = 0u;
  *(v6 + 376) = 0u;
  *(v6 + 392) = 0x7FFFFFFF00000000;
  *v6 = this;
  *(v6 + 16) = a3;
  return result;
}

uint64_t re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::add(uint64_t a1, unint64_t *a2, void *a3)
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

  v7 = re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 32 * v6 + 16;
}

uint64_t re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
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

void re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(v9, v4, v2);
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
      re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
        v8 = *(a2 + 16) + v5;
        v10 = *(v8 + 8);
        v9 = *(v8 + 16);
        *(result + 8) = v10;
        *(result + 16) = v9;
        v2 = *(a2 + 32);
      }

      v5 += 32;
    }
  }

  return result;
}

void re::HashTable<unsigned long,re::MaterialTechniqueVariant *,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_211, 4 * v10);
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

void *re::FixedArray<re::AttributeArgument>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 24 * v2;
      do
      {
        re::StringID::destroyString(v4);
        v4 = (v4 + 24);
        v5 -= 24;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

unint64_t re::Bitset<256>::toWordIndex(unint64_t a1, uint64_t a2)
{
  if (a1 < 0x100)
  {
    return a1 >> 6;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %d.", "b < kBitCount", "toWordIndex", 345, a1, 256, v2, v3);
  result = _os_crash("assertion failure: (b < kBitCount) Index out of range. index = %zu, size = %d.", v5, v6);
  __break(1u);
  return result;
}

uint64_t re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t *a1, unsigned int a2, unint64_t a3)
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
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = a1[2];
          *&v31[16] = v13;
          a1[2] = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 3);
          v14 = *&v31[32];
          *(a1 + 3) = v15;
          ++*&v31[40];
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
                v20 = re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 6), *(v13 + v17 + 48));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v31[16];
                *(v20 + 40) = *(*&v31[16] + v17 + 40);
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 6);
      v6 = *(a1 + 8);
    }

    *(a1 + 8) = v6 + 1;
    v25 = a1[2];
    v26 = *(v25 + 56 * v5);
  }

  else
  {
    v25 = a1[2];
    v26 = *(v25 + 56 * v5);
    *(a1 + 9) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + 56 * v5;
  *v28 = v26 | 0x80000000;
  v29 = a1[1];
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v5;
  *(v28 + 48) = a3;
  ++*(a1 + 7);
  return v25 + 56 * v5;
}

void re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_211, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, v2);
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
      re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        v7 = *(a2 + 16);
        *(result + 40) = *(v7 + v5 + 40);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 56;
    }

    while (v6 < v2);
  }

  return result;
}

void re::HashTable<re::DynamicString,unsigned int,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_187, 4 * v10);
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

_anonymous_namespace_ *re::DynamicArray<re::BufferSlice>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::BufferSlice>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BufferSlice>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::BufferSlice>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BufferSlice>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
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
        v10 = 40 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          *(v11 + 24) = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v11, v8);
          *(v11 + 32) = *(v8 + 32);
          v12 = *(v8 + 24);
          if (v12 != -1)
          {
            (off_1F5D03C10[v12])(&v17, v8);
          }

          *(v8 + 24) = -1;
          v8 += 40;
          v11 += 40;
          v10 -= 40;
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

uint64_t re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
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
                v20 = re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, *(v13 + v17 + 48) % *(a1 + 24), *(v13 + v17 + 48));
                *(v20 + 24) = 0u;
                *(v20 + 8) = 0u;
                *(v20 + 32) = v19[4];
                v21 = v19[2];
                *(v20 + 8) = v19[1];
                v19[1] = 0;
                v22 = v19[3];
                v19[4] = 0;
                v24 = *(v20 + 16);
                v23 = *(v20 + 24);
                *(v20 + 16) = v21;
                *(v20 + 24) = v22;
                v19[2] = v24;
                v19[3] = v23;
                v13 = *&v31[16];
                *(v20 + 40) = *(*&v31[16] + v17 + 40);
              }

              ++v18;
              v17 += 56;
            }

            while (v18 < v16);
          }

          re::HashTable<re::DynamicString,re::WeakStringID,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + 56 * v5);
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + 56 * v5;
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v29 + 4 * a2) = v5;
  *(v28 + 48) = a3;
  ++*(a1 + 28);
  return v25 + 56 * v5;
}

uint64_t re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = *(a2 + 11);
  v5 = *(a2 + 8) | (v4 << 24) | (*(a2 + 10) << 16);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v4 >> 6))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v4 >> 6))) >> 27));
  *(result + 48) ^= v3 ^ ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + (v6 ^ (v6 >> 31)));
  return result;
}

uint64_t re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 24), *(v7 + v5 + 64));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        result = re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::HashTable(v8 + 16, v9 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::MetalTypeInfo>::deinit(uint64_t a1)
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
        v5 = 80 * v4;
        v6 = (v3 + 40);
        do
        {
          re::FixedArray<re::MetalTypeInfo>::deinit(v6);
          re::StringID::destroyString((v6 - 3));
          v6 += 10;
          v5 -= 80;
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

void re::TechniqueStage::~TechniqueStage(re::TechniqueStage *this)
{
  re::TechniqueStage::deinit(this);
  re::FixedArray<re::AttributeArgument>::deinit(this + 33);
  re::FixedArray<re::AttributeArgument>::deinit(this + 29);
  re::FixedArray<re::AttributeArgument>::deinit(this + 25);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 18);
  re::FixedArray<re::TextureArgument>::deinit(this + 14);
  re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(this + 10);
  re::FixedArray<re::TypedArgument>::deinit(this + 7);
  re::FixedArray<re::TypedArgument>::deinit(this + 3);
}

void *re::FixedArray<re::TextureArgument>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 32 * v2;
      do
      {
        re::StringID::destroyString(v4);
        v4 = (v4 + 32);
        v5 -= 32;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 8 * v2;
      do
      {
        if (*v4)
        {

          *v4 = 0;
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

uint64_t *re::FixedArray<re::BufferArgument>::init<>(uint64_t *result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  result[1] = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
  v4[2] = result;
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
      *result = 0;
      result[1] = &str_67;
      result[2] = 0;
      result += 3;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  result[1] = &str_67;
  result[2] = 0;
  return result;
}

void re::FixedArray<NS::SharedPtr<MTL::ArgumentEncoder>>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
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

uint64_t re::FixedArray<re::TextureArgument>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >> 59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 32, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 32 * a3, 8);
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
      *result = 0;
      *(result + 8) = &str_67;
      *(result + 24) = 0;
      *(result + 16) = 0;
      *(result + 19) = 0;
      result += 32;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = &str_67;
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(result + 19) = 0;
  return result;
}

uint64_t re::FixedArray<re::SamplerArgument>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
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
      *result = 0;
      *(result + 8) = &str_67;
      *(result + 16) = 0;
      *(result + 18) = 0;
      result += 24;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  *(result + 18) = 0;
  return result;
}

uint64_t re::FixedArray<re::AttributeArgument>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0xAAAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 24, a3);
    _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v7, v8);
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 24 * a3, 8);
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
      *result = 0;
      *(result + 8) = &str_67;
      *(result + 16) = 0;
      result += 24;
      --v6;
    }

    while (v6);
  }

  *result = 0;
  *(result + 8) = &str_67;
  *(result + 16) = 0;
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::AttributeArgument>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendParameterInputNode>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendParameterInputNode>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

__n128 std::__function::__func<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0,std::allocator<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D03C30;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0,std::allocator<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 192, 8);
  ArcSharedObject::ArcSharedObject(v3, 0);
  *v4 = &unk_1F5D09270;
  *(v4 + 16) = 0u;
  v5 = (v4 + 16);
  *(v4 + 176) = 0;
  *(v4 + 184) = 0;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 32) = 0u;
  v6 = (v4 + 32);
  *(v4 + 144) = 0;
  *(v4 + 128) = 0u;
  v83 = v3;
  re::FixedArray<re::TechniqueFunctionConstant>::operator=((v4 + 128), *(a1 + 8));
  *(v3 + 168) = re::TechniqueDefinitionBuilder::hashFunctionConstants(*(v3 + 144), *(v3 + 136), 1);
  v7 = *(a1 + 16);
  re::FixedArray<re::LinkedFunction>::operator=(v6, v7);
  re::FixedArray<re::LinkedFunction>::operator=((v3 + 56), v7 + 3);
  v81 = 0;
  v82 = 0;
  v8 = **(a1 + 24);
  if (*(v8 + 2448))
  {
    v9 = *(v8 + 2456);
  }

  else
  {
    v9 = (v8 + 2449);
  }

  v10 = re::FunctionReflectionCache::hashFunction(*(v3 + 144), *(v3 + 136), (v8 + 2504), v9, *(v8 + 2424));
  CachedFunction = re::FunctionReflectionCache::tryGetCachedFunction(*(a1 + 32), v10);
  if (CachedFunction)
  {
    v13 = CachedFunction;
    v14 = NS::SharedPtr<MTL::Buffer>::operator=(&v82, CachedFunction);
    v15 = **(a1 + 24);
    v16 = v15[310];
    v17 = v16 >> 1;
    if ((v16 & 1) == 0)
    {
      v17 = v16 >> 1;
    }

    if (!v17)
    {
      v21 = 0;
LABEL_16:
      v80 = 0;
      memset(v78, 0, sizeof(v78));
      v79 = 0;
      if (**(a1 + 48) == 1 && *(**(a1 + 24) + 2849) == 1)
      {
        v26 = *(*(a1 + 56) + 32);
        v27 = *(v26 + 160);
        if (v27)
        {
          v28 = *(v26 + 168);
          re::DynamicArray<re::BlendParameterInputNode>::setCapacity(v78, v27);
          ++v79;
          re::DynamicArray<re::AttributeArgument>::copy(v78, v28, v27);
        }
      }

      else
      {
        re::makeAttributeArguments(&v82, &v84);
        re::DynamicArray<re::TechniqueFunctionConstant>::operator=(v78, &v84);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v84);
      }

      v29 = **(a1 + 24);
      if (*(v29 + 2448))
      {
        v30 = *(v29 + 2456);
      }

      else
      {
        v30 = (v29 + 2449);
      }

      re::makeStage(1, &v82, v30, *(v29 + 2424), *(v29 + 2849), *(v29 + 2850), *(*(a1 + 56) + 373), (v13 + 1), v76, *(a1 + 16), v72, v78);
      if (v76[0] == 1)
      {
        v32 = v77;
        *v5 = v77;
        v33 = **(a1 + 24);
        v34 = *(v33 + 2480);
        v35 = v34 >> 1;
        if ((v34 & 1) == 0)
        {
          v35 = v34 >> 1;
        }

        if (!v35)
        {
          goto LABEL_38;
        }

        if (v34)
        {
          v36 = *(v33 + 2488);
        }

        else
        {
          v36 = (v33 + 2481);
        }

        v40 = *(v33 + 2432);
        v41 = *(v33 + 2852);
        v42 = *(*(a1 + 56) + 373);
        v43 = (*(a1 + 16) + 24);
        v88 = 0;
        v85 = 0;
        v86 = 0;
        v84 = 0;
        v87 = 0;
        re::makeStage(2, &v81, v36, v40, 0, v41, v42, v21, &v74, v43, v73, &v84);
        re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v84);
        if (v74)
        {
          *(v3 + 24) = v75;
          v32 = *(v3 + 16);
LABEL_38:
          if (*(v32 + 332) && (v44 = *(v3 + 24)) != 0 && *(v44 + 332) && (*(v32 + 332) != *(v44 + 332) || *(v32 + 165) != *(v44 + 330)))
          {
            v65 = **(a1 + 24);
            if (*(v65 + 2448))
            {
              v66 = *(v65 + 2456);
            }

            else
            {
              v66 = v65 + 2449;
            }

            if (*(v65 + 2480))
            {
              v67 = *(v65 + 2488);
            }

            else
            {
              v67 = v65 + 2481;
            }

            re::DynamicString::format(&v84, "Vertex shader function %s and fragment shader function %s do not have matching dynamicSamplers arrays.", v31, v66, v67);
            if (v85)
            {
              v68 = v86;
            }

            else
            {
              v68 = &v85 + 1;
            }

            re::WrappedError::make(&v74, @"REMaterialBuilderErrorDomain", 0x46, v68);
            v69 = *(a1 + 40);
            if (v69 != &v74)
            {
              v70 = v74;
              v74 = 0;
              v71 = *v69;
              *v69 = v70;
            }

            if (v84 && (v85 & 1) != 0)
            {
              (*(*v84 + 40))();
            }
          }

          else
          {
            v45 = *(**(a1 + 24) + 2480);
            if (v45)
            {
              v46 = v45 >> 1;
            }

            else
            {
              v46 = v45 >> 1;
            }

            v47 = v32[6];
            v48 = (v47 << 6) + (v47 >> 2) - 0x61C8864680B583E9;
            if (v46)
            {
              v49 = *(v3 + 24);
              v50 = v49[6];
              v51 = (v50 + v48) ^ v47;
              v52 = ((((v32[32] + v48) ^ v47) << 6) - 0x61C8864680B583E9 + (((v32[32] + v48) ^ v47) >> 2) + (((v50 << 6) - 0x61C8864680B583E9 + (v50 >> 2) + v49[32]) ^ v50)) ^ (v32[32] + v48) ^ v47;
              v53 = (v49[17] - 0x61C8864680B583E9 + (v32[17] << 6) + (v32[17] >> 2)) ^ v32[17];
              v54 = (v49[24] - 0x61C8864680B583E9 + (v32[24] << 6) + (v32[24] >> 2)) ^ v32[24];
              v55 = (v49[28] - 0x61C8864680B583E9 + (v32[28] << 6) + (v32[28] >> 2)) ^ v32[28];
              v56 = (v49[13] - 0x61C8864680B583E9 + (v32[13] << 6) + (v32[13] >> 2)) ^ v32[13];
            }

            else
            {
              v52 = (v32[32] + v48) ^ v47;
              v53 = v32[17];
              v54 = v32[24];
              v55 = v32[28];
              v56 = v32[13];
              v51 = v47;
            }

            *(v3 + 80) = v51;
            *(v3 + 88) = v53;
            *(v3 + 96) = v54;
            *(v3 + 104) = v52;
            *(v3 + 112) = v55;
            *(v3 + 120) = v56;
            *(v3 + 184) = [v82 patchType];
            if ([v82 patchControlPointCount] == -1)
            {
              v61 = 0;
            }

            else
            {
              v61 = [v82 patchControlPointCount];
            }

            *(v3 + 176) = v61;
            re::MaterialPipelineData::generatePipelineStateKey(v3);
            re::MaterialManager::tryGetMaterialPipelineData(&v84, *(*(a1 + 56) + 24), *(v3 + 152));
            v62 = *(a1 + 64);
            v63 = *v62;
            *v62 = v84;
            if (v63)
            {
            }

            v64 = *(a1 + 64);
            if (!*v64)
            {
              re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v64, v3);
              re::MaterialManager::installMaterialPipelineData(*(*(a1 + 56) + 24), &v83);
            }
          }

          goto LABEL_68;
        }

        re::ObjCObject::operator=(*(a1 + 40), &v75);
        v37 = v75;
      }

      else
      {
        re::ObjCObject::operator=(*(a1 + 40), &v77);
        v37 = v77;
      }

LABEL_68:
      re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v78);
      goto LABEL_69;
    }

    if (v16)
    {
      v18 = v15[311];
    }

    else
    {
      v18 = v15 + 2481;
    }

    v22 = re::FunctionReflectionCache::hashFunction(*(v3 + 144), *(v3 + 136), (v15 + 321), v18, v15[304]);
    v23 = re::FunctionReflectionCache::tryGetCachedFunction(*(a1 + 32), v22);
    if (v23)
    {
      v25 = v23;
      v14 = NS::SharedPtr<MTL::Buffer>::operator=(&v81, v23);
      v21 = (v25 + 1);
      goto LABEL_16;
    }

    v38 = **(a1 + 24);
    if (*(v38 + 2480))
    {
      v39 = *(v38 + 2488);
    }

    else
    {
      v39 = v38 + 2481;
    }

    re::DynamicString::format(&v84, "makeFunction failed for fragment shader function %s.", v24, v39);
  }

  else
  {
    v19 = **(a1 + 24);
    if (*(v19 + 2448))
    {
      v20 = *(v19 + 2456);
    }

    else
    {
      v20 = v19 + 2449;
    }

    re::DynamicString::format(&v84, "makeFunction failed for vertex shader function %s.", v12, v20);
  }

  if (v85)
  {
    v57 = v86;
  }

  else
  {
    v57 = &v85 + 1;
  }

  re::WrappedError::make(v78, @"REMaterialBuilderErrorDomain", 0x3C, v57);
  v58 = *(a1 + 40);
  if (v58 != v78)
  {
    v59 = v78[0];
    v78[0] = 0;
    v60 = *v58;
    *v58 = v59;
  }

  if (v84 && (v85 & 1) != 0)
  {
    (*(*v84 + 40))();
  }

LABEL_69:
  if (v81)
  {
  }

  if (v82)
  {
  }

  if (v83)
  {
  }
}

uint64_t std::__function::__func<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0,std::allocator<re::TechniqueDefinitionBuilder::buildPipelineData(re::Slice<re::TechniqueFunctionConstant>,re::MaterialTechniqueDefinition const*,re::StageLinkedFunctions const&,re::RenderManager &,re::FunctionReflectionCache &,BOOL)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::FixedArray<re::LinkedFunction>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return a1;
    }
  }

  else
  {
    if (!v4)
    {
      return a1;
    }

    re::FixedArray<re::LinkedFunction>::init<>(a1, v4, a2[1]);
  }

  v5 = a2[1];
  if (a1[1] == v5)
  {
    if (v5)
    {
      v6 = 0;
      v7 = a2[2];
      v8 = (v7 + 200 * v5);
      v9 = a1[2];
      while (1)
      {
        v10 = (v7 + v6);
        v11 = v9 + v6;
        *(v9 + v6) = *(v7 + v6);
        re::StringID::operator=((v9 + v6 + 8), (v7 + v6 + 8));
        re::StringID::operator=((v9 + v6 + 24), (v7 + v6 + 24));
        v12 = *(v7 + v6 + 48);
        *(v11 + 40) = *(v7 + v6 + 40);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v9 + v6 + 48), v12);
        *(v11 + 56) = *(v7 + v6 + 56);
        if (v9 != v7)
        {
          break;
        }

        *(v11 + 88) = v10[11];
        re::FixedArray<re::TypedArgument>::operator=((v11 + 96), v10 + 12);
LABEL_32:
        v6 += 200;
        if (v10 + 25 == v8)
        {
          return a1;
        }
      }

      v13 = v10[8];
      if (*(v11 + 64))
      {
        if (!v13)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!v13)
        {
LABEL_18:
          *(v9 + v6 + 88) = *(v7 + v6 + 88);
          re::FixedArray<re::TypedArgument>::operator=((v9 + v6 + 96), (v7 + v6 + 96));
          v14 = (v9 + v6 + 120);
          v16 = (v7 + v6 + 120);
          v15 = *v16;
          if (*v14)
          {
            if (v15)
            {
              re::DynamicArray<re::RigNodeChannel>::copy(v14, v16);
              v17 = v9 + v6;
            }

            else
            {
              v17 = v9 + v6;
              *(v9 + v6 + 136) = 0;
            }

            ++*(v17 + 144);
          }

          else if (v15)
          {
            v18 = *(v7 + v6 + 136);
            *v14 = v15;
            re::DynamicArray<re::RigNodeConstraint>::setCapacity(v14, v18);
            ++*(v9 + v6 + 144);
            re::DynamicArray<re::RigNodeChannel>::copy(v14, v16);
          }

          v19 = *(v7 + v6 + 160);
          if (*(v9 + v6 + 160))
          {
            if (v19)
            {
              re::DynamicArray<char const*>::copy((v9 + v6 + 160), v7 + v6 + 160);
              v20 = v9 + v6;
            }

            else
            {
              v20 = v9 + v6;
              *(v9 + v6 + 176) = 0;
            }

            ++*(v20 + 184);
          }

          else if (v19)
          {
            v21 = *(v7 + v6 + 176);
            *(v9 + v6 + 160) = v19;
            re::DynamicArray<float *>::setCapacity((v9 + v6 + 160), v21);
            ++*(v9 + v6 + 184);
            re::DynamicArray<char const*>::copy((v9 + v6 + 160), v7 + v6 + 160);
          }

          goto LABEL_32;
        }

        re::FixedArray<re::TechniqueFunctionConstant>::init<>((v11 + 64), v13, *(v7 + v6 + 72));
      }

      re::FixedArray<re::TechniqueFunctionConstant>::copy((v11 + 64), (v10 + 8));
      goto LABEL_18;
    }

    return a1;
  }

  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
  result = _os_crash("assertion failure: (m_size == other.m_size) Cannot copy from a FixedArray of a different size");
  __break(1u);
  return result;
}

uint64_t *re::FixedArray<re::TypedArgument>::operator=(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (!v4)
      {
        return a1;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      re::FixedArray<re::TypedArgument>::init<>(a1, v4, a2[1]);
LABEL_7:
      re::FixedArray<re::TypedArgument>::copy(a1, a2);
    }
  }

  return a1;
}

unint64_t *re::DynamicArray<re::AttributeArgument>::copy(unint64_t *this, uint64_t a2, unint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = this;
    v4 = this[2];
    if (v4 == -1)
    {
      v20 = 0;
      memset(v29, 0, sizeof(v29));
      v17 = MEMORY[0x1E69E9C10];
      v21 = 136315906;
      v22 = "copy";
      v23 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v24 = 643;
      v25 = 2048;
      v26 = 0;
      v27 = 2048;
      v28 = 0;
      _os_log_send_and_compose_impl(v18, &v20, v29, 80, &dword_1E1C61000, v17, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v21, 38, v19);
      _os_crash_msg();
      __break(1u);
    }

    if (v4 >= a3)
    {
      this = this[4];
      v12 = 24 * a3;
      do
      {
        v13 = re::StringID::operator=(this, a2);
        *(v13 + 4) = *(a2 + 16);
        a2 += 24;
        this = v13 + 3;
        v12 -= 24;
      }

      while (v12);
    }

    else
    {
      re::DynamicArray<re::AttributeArgument>::growCapacity(this, a3);
      v7 = v3[2];
      this = v3[4];
      if (v7)
      {
        v8 = 24 * v7;
        v9 = a2;
        do
        {
          v10 = re::StringID::operator=(this, v9);
          *(v10 + 4) = *(v9 + 16);
          v9 += 24;
          this = v10 + 3;
          v8 -= 24;
        }

        while (v8);
        this = v3[4];
        v11 = v3[2];
      }

      else
      {
        v11 = 0;
      }

      if (v7 != a3)
      {
        v14 = a2 + 24 * v7;
        this += 3 * v11;
        v15 = 24 * a3 - 24 * v7;
        do
        {
          v16 = re::StringID::StringID(this, v14);
          *(v16 + 4) = *(v14 + 16);
          v14 += 24;
          this = (v16 + 24);
          v15 -= 24;
        }

        while (v15);
      }

      v3[2] = a3;
    }

    ++*(v3 + 6);
  }

  return this;
}

void re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_199, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 152;
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

void re::MaterialDefinition::~MaterialDefinition(re::MaterialDefinition *this)
{
  re::MaterialDefinition::~MaterialDefinition(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5D03CB0;
  v2 = (this + 16);
  re::MaterialDefinition::deinit(this);
  re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::deinit(this + 172);
  re::MaterialParameterTable::~MaterialParameterTable((this + 248));
  re::HashBrown<unsigned long,re::HashBrown<unsigned long,unsigned short,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,void,false>::deinit(this + 184);
  re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(this + 17);
  re::FixedArray<CoreIKTransform>::deinit(this + 14);
  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 8);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

re::DynamicString *re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::copy(re::DynamicString *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * (*(v7 + v5 + 8) ^ (*(v7 + v5 + 8) >> 30));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::allocEntry(v4, v9 % *(v4 + 6), v9);
        v11 = *(a2 + 16) + v5;
        *(v10 + 8) = *(v11 + 8);
        result = re::DynamicString::DynamicString((v10 + 16), (v11 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

void re::HashTable<re::WeakStringID,re::MaterialParameterProperties,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_211, 4 * v2);
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
          v8 = v6 + v4;
          *v8 = v7 & 0x7FFFFFFF;
          *(v8 + 8) = 0;
          re::DynamicString::deinit((v8 + 16));
          v3 = *(a1 + 32);
        }

        v4 += 48;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v9 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v9;
  }
}

uint64_t re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 48 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 48 * v4;
}

void re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v17, 0, 36);
      *&v17[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(v17, v4, a2);
      v5 = *v17;
      *v17 = *a1;
      *a1 = v5;
      v6 = *&v17[16];
      v7 = *(a1 + 16);
      *&v17[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v17[24];
      *&v17[24] = *(a1 + 24);
      v8 = *&v17[32];
      *(a1 + 24) = v9;
      ++*&v17[40];
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = (v7 + 24);
        do
        {
          if ((*(v12 - 3) & 0x80000000) != 0)
          {
            v13 = re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, *(v12 - 2) % *(a1 + 24), *(v12 - 2));
            *(v13 + 8) = *(v12 - 2);
            *(v13 + 16) = 0;
            *(v13 + 24) = 0;
            *(v13 + 32) = 0;
            v14 = *v12;
            *(v13 + 16) = *(v12 - 1);
            *(v13 + 24) = v14;
            *(v12 - 1) = 0;
            *v12 = 0;
            v15 = *(v13 + 32);
            *(v13 + 32) = v12[1];
            v12[1] = v15;
            *(v13 + 40) = *(v12 + 16);
          }

          ++v11;
          v12 += 6;
        }

        while (v11 < v10);
      }

      re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::deinit(v17);
    }
  }

  else
  {
    if (a2)
    {
      v16 = a2;
    }

    else
    {
      v16 = 3;
    }
  }
}

void re::HashTable<unsigned long,re::Pair<re::FixedArray<unsigned int>,signed char,true>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_211, 4 * v10);
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

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(uint64_t a1, uint64_t a2)
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

    re::HashTable<re::DynamicString,re::OptionalMaterialParameterProperties,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, v4, v5);
    re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::copy(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 88) % *(v4 + 24), *(v7 + v5 + 88));
        re::DynamicString::DynamicString((v8 + 8), (*(a2 + 16) + v5 + 8));
        result = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::HashTable(v8 + 40, *(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 96;
    }
  }

  return result;
}

double re::make::shared::object<re::FunctionReflectionCache>@<D0>(re *a1@<X0>, void *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 184, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *v5 = &unk_1F5D033E8;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 44) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v5 + 60) = 0x7FFFFFFFLL;
  *(v5 + 104) = 0;
  *(v5 + 80) = 0;
  *(v5 + 88) = 0;
  *(v5 + 72) = 0;
  *(v5 + 96) = 0;
  *(v5 + 112) = 0;
  *(v5 + 120) = 0u;
  *(v5 + 136) = 0u;
  *(v5 + 152) = 0u;
  *(v5 + 168) = 0u;
  *a2 = v5;
  return result;
}

void re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::DynamicString,re::ConstantLocation,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(a1, v9);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        v8 = (*(a2 + 16) + v5);
        *(result + 24) = 0u;
        *(result + 8) = 0u;
        *(result + 32) = v8[4];
        v9 = v8[2];
        *(result + 8) = v8[1];
        v8[1] = 0;
        v10 = v8[3];
        v8[4] = 0;
        v12 = *(result + 16);
        v11 = *(result + 24);
        *(result + 16) = v9;
        *(result + 24) = v10;
        v8[2] = v12;
        v8[3] = v11;
        *(result + 40) = *(*(a2 + 16) + v5 + 40);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

uint64_t re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DynamicString,re::TechniqueDefinitionBuilder *,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_210, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::DynamicString,re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::EntryBase::free((*(a1 + 16) + v3));
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