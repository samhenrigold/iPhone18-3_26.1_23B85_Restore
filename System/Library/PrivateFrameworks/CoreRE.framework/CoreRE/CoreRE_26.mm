uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 32 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
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

uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
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

uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::serializePointer(uint64_t a1, const char *a2, uint64_t a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v22 = **(this + 2);
    v23 = **(a6 + 2);
    if (v22 == v23)
    {
      v25 = WORD1(v22) == WORD1(v23);
      v24 = (v23 ^ v22) & 0xFFFFFF00000000;
      v25 = v25 && v24 == 0;
      if (v25)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v14))
  {
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v26 = re::TypeInfo::name(this), v27 = re::TypeInfo::name(a6), !re::StringID::operator==(v26, v27))))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, this, a6);
    goto LABEL_28;
  }

  v16 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v30);
  re::TypeInfo::TypeInfo(v37, v31);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v30);
  re::TypeInfo::TypeInfo(v36, v31);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v18 = *v37[2];
    v35[0] = v37[0];
    v35[1] = v18;
    if (!v37[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(v35, a4, this);
    if (!v35[0])
    {
LABEL_8:
      v17 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Failed to get actual type of polymorphic object. Type %s.", v17[1]);
LABEL_28:
      v21 = 0;
      return v21 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, v35, &v30);
  re::TypeInfo::TypeInfo(v34, v31);
  if ((a7 & 1) == 0 && *a4)
  {
    if (*(*(this + 2) + 88))
    {
      v19 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 312, a4);
      if (v19)
      {
        v33 = *v19;
      }

      else
      {
        v33 = *(a1 + 288);
        v30 = *a4;
        re::TypeInfo::TypeInfo(v31, v34);
        re::TypeInfo::TypeInfo(v32, v36);
        v32[32] = isPointerToPolymorphicType;
        v32[33] = v16;
        re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::add((a1 + 272), &v30);
        re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::addNew(a1 + 312, a4, &v33);
      }

      LODWORD(v30) = 1;
      if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, &v30, 0))
      {
        goto LABEL_28;
      }

      if ((*(a1 + 64) & 1) == 0)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1 + 24, "ID", v33);
        v29 = *(a1 + 152) + 48 * *(a1 + 136);
        if (*(v29 - 48) != 2)
        {
          ++*(v29 - 16);
        }
      }
    }

    else
    {
      LODWORD(v30) = 2;
      if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, &v30, 0))
      {
        goto LABEL_28;
      }

      if (isPointerToPolymorphicType)
      {
        re::internal::serializePolymorphicObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, *a4, v34, v36, v16);
      }

      else if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, *a4, v37, v36, 0);
      }
    }

    goto LABEL_16;
  }

  LODWORD(v30) = 0;
  v20 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(a1 + 24, a2, a3, &v30, 0);
  v21 = 0;
  if (v20)
  {
LABEL_16:
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
    v21 = *(a1 + 64) ^ 1;
  }

  return v21 & 1;
}

uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 32 * v6 + 16;
  }
}

re::NetworkOPACKDeserializer *re::NetworkOPACKDeserializer::NetworkOPACKDeserializer(re::NetworkOPACKDeserializer *this)
{
  *&v4.var0 = 0xDEED4B9BC35C271ALL;
  v4.var1 = "NetworkOPACKDeserializer";
  v2 = re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SerializerV2(this, &v4);
  *v2 = &unk_1F5CB5D40;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0;
  *(v2 + 200) = v2 + 448;
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CB5C80;
  return this;
}

void re::NetworkOPACKDeserializer::~NetworkOPACKDeserializer(re::NetworkOPACKDeserializer *this)
{
  *this = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(this);
}

{
  *this = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::doClose(uint64_t a1)
{
  re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::deserializeSharedObjects(a1);
  re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);

  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
}

void re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v26 = 6059476;
  v27 = "BOOL";
  v2 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeBool<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6104748;
  v27 = "char";
  v3 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeChar<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x172E117BCLL;
  v27 = "int8_t";
  v4 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI8<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93A4A92;
  v27 = "int16_t";
  v5 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI16<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93BFE06;
  v27 = "int32_t";
  v6 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI32<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2CE93EC744;
  v27 = "int64_t";
  v7 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 6655224;
  v27 = "long";
  v8 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeI64<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x31CD534126;
  v27 = "uint8_t";
  v9 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU8<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0D4E68;
  v27 = "uint16_t";
  v10 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU16<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD0F01DCLL;
  v27 = "uint32_t";
  v11 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU32<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x607DD11CB1ALL;
  v27 = "uint64_t";
  v12 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x1947BDF6CLL;
  v27 = "size_t";
  v13 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeU64<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 195052728;
  v27 = "float";
  v14 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeFloat<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x161EEF7A2;
  v27 = "double";
  v15 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeDouble<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 189247272;
  v27 = "char*";
  v16 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeCString<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x2686EB529B3EE220;
  v27 = "DynamicString";
  v17 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeDynamicString<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v26 = 0x458DDB01A18;
  v27 = "StringID";
  v18 = re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(a1, &v26, re::serializeStringID<re::EncoderOPACK<re::FixedArrayInputStream>>);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v19 = *(a1 + 208);
  v26 = 0x258C98EAAF29A10ALL;
  v27 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v30, v19, &v26);
  if (v26)
  {
    if (v26)
    {
    }
  }

  if (v30)
  {
    v21 = *(a1 + 208);
    v25 = v30;
    re::TypeRegistry::attributesByAttributeType(v21, &v25, &v26);
    if (v28)
    {
      v22 = (v29 + 24);
      v23 = 48 * v28;
      do
      {
        v24 = *v22;
        v22 += 6;
        v32 = re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::FixedArrayInputStream>>;
        v31 = v24 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v31, &v32);
        v23 -= 48;
      }

      while (v23);
    }

    if (v26)
    {
      if (v29)
      {
        (*(*v26 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::doSerialize(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, const re::TypeInfo *a5, const re::TypeInfo *a6, uint64_t a7)
{
  if (!a1[107] && a1[34] == 2)
  {
    v20 = 0;
    v17 = a4;
    re::TypeInfo::TypeInfo(&v18, a5);
    re::TypeInfo::TypeInfo(v19, a6);
    v19[16] = 0;
    re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew((a1 + 100), &v20, &v17);
    a3 = 10;
  }

  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {
    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  v16 = re::TypeInfo::name(a5);
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v16[1]);
  return 0;
}

uint64_t (*re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::serializePointer;
  if (*(a2 + 12) != 9)
  {
    if (*a2 == *(a1 + 208))
    {
      v7[1] = v2;
      v7[2] = v3;
      LODWORD(v7[0]) = **(a2 + 16);
      HIDWORD(v7[0]) = -1;
      v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 224, v7);
      v4 = re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>;
      if (v5)
      {
        return *v5;
      }
    }

    else
    {
      return re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>;
    }
  }

  return v4;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SerializerV2(uint64_t a1, const StringID *a2)
{
  *a1 = &unk_1F5CB5E10;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::Encoder(a1 + 24, 15);
  *(a1 + 256) = 0x7FFFFFFF00000000;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 264) = 0;
  *a1 = &unk_1F5CB5DA8;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 332) = 0u;
  *(a1 + 348) = 0x7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 376) = 0;
  *(a1 + 420) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 436) = 0x7FFFFFFFLL;
  return a1;
}

void *re::NetworkSerializerBase<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);
}

void re::NetworkSerializerBase<re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void *re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::~SerializerV2(void *a1)
{
  *a1 = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);
}

void re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::~SerializerV2(void *a1)
{
  *a1 = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::doOpen(uint64_t a1)
{
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
  result = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, "container", 0, 0);
  if ((result & 1) == 0 && (*(a1 + 64) & 1) == 0)
  {

    return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, "container", "Failed to open container.");
  }

  return result;
}

void re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(void *a1)
{
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, int, int, int, re::TypeInfo *this)
{
  if (*a2 != *(a1 + 208))
  {
    return re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>;
  }

  v6[1] = v2;
  v6[2] = v3;
  LODWORD(v6[0]) = **(a2 + 16);
  HIDWORD(v6[0]) = -1;
  v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 224, v6);
  if (v5)
  {
    return *v5;
  }

  else
  {
    return re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>;
  }
}

uint64_t re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::Encoder(uint64_t result, int a2)
{
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 136) = a2;
  *(result + 140) = 0;
  *(result + 152) = 1024;
  v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v8 = result;
    v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    v6 = v4;
    result = v8;
    if (v6)
    {
      re::Defaults::intValue(&v9, "maxSerializationDepth", v5);
      v7 = SHIDWORD(v9);
      if (!v9)
      {
        v7 = 0;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::Encoder(int)::s_maxSerializationDepth = v7;
      v2 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
      result = v8;
    }
  }

  v3 = *(v2 + 147);
  if (v3)
  {
    *(result + 152) = v3;
  }

  return result;
}

void *re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CB5E10;
  v2 = (a1 + 1);
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1 + 28);
  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::~Encoder(a1 + 24);
  re::StringID::destroyString(v2);
  return a1;
}

void re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::deinit(void *a1)
{
  if (a1[26])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 28));
    a1[26] = 0;
  }
}

_BYTE *re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_anonymous_namespace_ *re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    if ((*(result + 40) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 0);
    }

    result = re::DynamicArray<unsigned long>::deinit(v1 + 96);
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      *(v1 + 1) = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    *(v1 + 3) = 0;
    *(v1 + 4) = 0;
  }

  return result;
}

uint64_t *re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(uint64_t a1, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  re::DynamicString::setCapacity(&v18, 0);
  va_copy(v17, va);
  re::DynamicString::vassignf(&v18, a3, va);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels((a1 + 24), a2, &v10);
  if (v11)
  {
    v7 = *&v12[7];
  }

  else
  {
    v7 = v12;
  }

  if (v19)
  {
    v8 = v20;
  }

  else
  {
    v8 = &v19 + 1;
  }

  re::DynamicString::format(&v13, "Failed to %s %s. Reason: %s", v6, "deserialize", v7, v8);
  *&v16[0] = 400;
  *(&v16[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v16[1] = v13;
  *(&v16[2] + 1) = v15;
  *(&v16[1] + 8) = v14;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1 + 24, v16);
  if (*&v16[1])
  {
    if (BYTE8(v16[1]))
    {
      (*(**&v16[1] + 40))();
    }

    memset(&v16[1], 0, 32);
  }

  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  result = v18;
  if (v18)
  {
    if (v19)
    {
      return (*(*v18 + 40))();
    }
  }

  return result;
}

uint64_t re::serializeType<re::EncoderOPACK<re::FixedArrayInputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7)
{
  if (this == a6)
  {
    goto LABEL_19;
  }

  if (*this == *a6)
  {
    v14 = **(this + 2);
    v15 = **(a6 + 16);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_19;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_19;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, this, a6);
    return 0;
  }

  v18 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
  if (v18)
  {
    v19 = *(v18 + 16);
  }

  else
  {
    v19 = -1;
  }

  v20 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
  if (v20)
  {
    v21 = *(v20 + 16);
  }

  else
  {
    v21 = -1;
  }

  if (v19 != v21)
  {
    v24 = re::TypeInfo::name(this);
    v25 = re::TypeInfo::name(a6);
    if (!re::StringID::operator==(v24, v25))
    {
      re::TypeInfo::name(a6);
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
      re::TypeInfo::name(this);
      re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Type name changed: Serialized type %s version %u, runtime type %s version %u.");
      return 0;
    }

    v26 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
    if (v26)
    {
      v27 = *(v26 + 16);
    }

    else
    {
      v27 = -1;
    }

    re::TypeInfo::atVersion(&v35, this, v27);
    if ((v35 & 1) == 0)
    {
      re::TypeInfo::name(a6);
      re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Unknown serialized type %s version %u. No matching runtime type found.");
      return 0;
    }

    if (a7)
    {
      Instance = 0;
    }

    else
    {
      Instance = re::TypeInfo::createInstance(v36, *(a1 + 6), *(a1 + 25));
    }

    if (a1[64] & 1) != 0 || ((*(*a1 + 72))(a1, a2, a3, Instance, v36, a6, a7), (a1[64]))
    {
      if (Instance)
      {
        re::TypeInfo::releaseInstance(v36, Instance, *(a1 + 6), *(a1 + 25));
      }

      return 0;
    }

    if ((a7 & 1) == 0)
    {
      re::TypeInfo::TypeInfo(v30, v36);
      re::internal::upgradeObject(Instance, v30, a4, this, *(a1 + 6), *(a1 + 25), v31);
      if ((v31[0] & 1) == 0)
      {
        if (v33)
        {
          v29 = *&v34[7];
        }

        else
        {
          v29 = v34;
        }

        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "%s", v29);
        if (v31[0] & 1) == 0 && v32 && (v33)
        {
          (*(*v32 + 40))();
        }

        return 0;
      }
    }

    return 1;
  }

LABEL_19:
  v22 = *(this + 12);
  if (v22 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v22 == 3)
      {

        return re::serializeOptional<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v22 != 4)
        {
          goto LABEL_59;
        }

        return re::serializeArray<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v22 == 1)
    {

      return re::serializeBasic<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v22 != 2)
      {
        goto LABEL_59;
      }

      return re::serializeEnum<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v22 == 5)
    {

      return re::serializeList<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v22 != 6)
      {
        goto LABEL_59;
      }

      return re::serializeDictionary<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v22)
    {
      case 7u:

        return re::serializeUnion<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        re::TypeInfo::name(this);
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.");
        return 0;
      default:
LABEL_59:
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Invalid type category. Value = %d");
        return 0;
    }
  }
}

uint64_t *re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  v8 = re::TypeInfo::name(a4);
  return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Type mismatch. Runtime type %s and serialized type %s are different.", v7, v8[1]);
}

uint64_t re::serializeBasic<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7)
{
  v7 = a7;
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_24:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, this, a6);
      return 0;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_24;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_24;
    }
  }

LABEL_4:
  v14 = re::TypeInfo::name(this);
  v15 = *v14 >> 1;
  if (v15 > 0x16749DFF02)
  {
    if (*v14 >> 1 <= 0x303EE88E58CLL)
    {
      if (*v14 >> 1 <= 0x18E6A9A092)
      {
        if (v15 != 0x16749DFF03)
        {
          if (v15 == 0x16749F63A2)
          {
LABEL_43:

            return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<long long>(a1 + 24, a2, a3, a4, v7);
          }

          goto LABEL_74;
        }

        goto LABEL_68;
      }

      if (v15 != 0x18E6A9A093)
      {
        if (v15 != 0x303EE86A734)
        {
          if (v15 != 0x303EE8780EELL)
          {
            goto LABEL_74;
          }

          goto LABEL_65;
        }

        goto LABEL_59;
      }

LABEL_53:

      return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, a3, a4, v7);
    }

    if (*v14 >> 1 <= 0x2A8CEB1C43F60843)
    {
      if (v15 != 0x303EE88E58DLL)
      {
        if (v15 != 0x2710786C3AC82DA1)
        {
          goto LABEL_74;
        }

        goto LABEL_53;
      }
    }

    else
    {
      if (v15 == 0x2A8CEB1C43F60844)
      {
LABEL_65:

        return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, a3, a4, v7);
      }

      if (v15 == 0x3AFE951B1F1F3391)
      {
LABEL_59:

        return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, a3, a4, v7);
      }

      if (v15 != 0x412A40E9CB79BA35)
      {
        goto LABEL_74;
      }
    }

LABEL_56:

    return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, a3, a4, v7);
  }

  if (*v14 >> 1 <= 0x685847B)
  {
    if (*v14 >> 1 > 0x2E9355)
    {
      if (v15 != 3052374)
      {
        if (v15 != 3327612)
        {
          if (v15 == 97526364)
          {

            return re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1 + 24, a2, a3, a4, v7);
          }

          goto LABEL_74;
        }

        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if (v15 != 104431)
    {
      if (v15 == 3029738)
      {

        return re::EncoderOPACK<re::FixedArrayInputStream>::serializeBool(a1 + 24, a2, a3, a4, v7);
      }

LABEL_74:
      v21 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Unsupported basic type %s.", v21[1]);
      return 0;
    }

LABEL_68:

    return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<int>(a1 + 24, a2, a3, a4, v7);
  }

  if (*v14 >> 1 > 0xB9708BDD)
  {
    if (v15 == 3111160798)
    {
LABEL_62:

      return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, a3, a4, v7);
    }

    if (v15 != 3393056694)
    {
      if (v15 != 0x16749D2549)
      {
        goto LABEL_74;
      }

      goto LABEL_71;
    }

    goto LABEL_56;
  }

  if (v15 == 109413500)
  {
LABEL_71:

    return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<short>(a1 + 24, a2, a3, a4, v7);
  }

  if (v15 != 2969009105)
  {
    goto LABEL_74;
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, a2, a3, a4, v7);
}

uint64_t re::serializeEnum<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v14 = **(a5 + 16);
      v15 = **(a6 + 16);
      if (v14 == v15)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_12;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_12;
    }

    if (*(a5 + 12) != *(a6 + 12) || (v18 = re::TypeInfo::name(a5), v19 = re::TypeInfo::name(a6), !re::StringID::operator==(v18, v19)))
    {
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t re::serializeOptional<re::EncoderOPACK<re::FixedArrayInputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_11:
  if (a7)
  {
    v24[0] = 0;
    re::EncoderOPACK<re::FixedArrayInputStream>::beginOptional((a1 + 24), a2, a3, v24, 0);
    if (v24[0] == 1)
    {
      v18 = *(a1 + 26);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v26);
      re::TypeInfo::TypeInfo(v25, &v27);
      re::internal::translateType(&v26, v18, v25);
      if ((a1[64] & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, 0, &v26, &v26, 1);
      }
    }
  }

  else
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v26);
    re::TypeInfo::TypeInfo(v25, &v27);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v26);
    re::TypeInfo::TypeInfo(v24, &v27);
    re::TypeInfo::TypeInfo(&v26, a5);
    v23 = (*(v28 + 88))(a4) != 0;
    re::EncoderOPACK<re::FixedArrayInputStream>::beginOptional((a1 + 24), a2, a3, &v23, 0);
    if (v23)
    {
      Instance = re::TypeInfo::createInstance(v25, *(a1 + 6), *(a1 + 25));
      (*(v28 + 96))(a4, Instance);
      re::TypeInfo::releaseInstance(v25, Instance, *(a1 + 6), *(a1 + 25));
    }

    else
    {
      (*(v28 + 96))(a4, 0);
    }

    if (v23)
    {
      v21 = (*(v28 + 88))(a4);
      if ((a1[64] & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v21, v25, v24, 0);
      }
    }
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::endOptional((a1 + 24));
  v20 = a1[64] ^ 1;
  return v20 & 1;
}

uint64_t re::serializeArray<re::EncoderOPACK<re::FixedArrayInputStream>>(void *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_13;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(a6 + 12) != 4)
  {
    goto LABEL_70;
  }

  v18 = *(a5 + 2);
  v19 = *(a6 + 2);
  v20 = *(v19 + 92) & 0xFFFFFF;
  if ((*(v18 + 92) & 0xFFFFFF) != 0)
  {
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_70:
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    goto LABEL_71;
  }

  if (v20 || *(v18 + 96) != *(v19 + 96))
  {
    goto LABEL_70;
  }

LABEL_13:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v61);
    re::TypeInfo::TypeInfo(&v58, v62);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v61);
    re::TypeInfo::TypeInfo(v57, v62);
    re::TypeInfo::TypeInfo(&v61, a5);
    v27 = (*(*a1 + 80))(a1, &v58);
    if (v27)
    {
      v28 = v27;
      v29 = re::ArrayAccessor::size(&v61, a4);
      v30 = v29;
      v55 = v29;
      if (v59 == 1)
      {
        v54 = v29 * *(v60 + 8);
        if (re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB((a1 + 3), a2, a3, &v54, 0))
        {
          v31 = v54;
          v32 = *(v60 + 8);
          {
            if (v31 >= v32)
            {
              v33 = re::ArrayAccessor::elementAt(&v61, a4, 0);
              v34 = a1 + 3;
              v35 = 0;
LABEL_47:
              re::EncoderOPACK<re::FixedArrayInputStream>::serializeBLOB(v34, v33, v35);
            }

LABEL_48:
            re::EncoderOPACK<re::FixedArrayInputStream>::endBLOB((a1 + 3));
LABEL_67:
            v46 = *(a1 + 64) ^ 1;
            return v46 & 1;
          }
        }
      }

      else
      {
        v37 = *(*(a5 + 2) + 92) & 0xFFFFFF;
        if (v37)
        {
          v38 = 8;
        }

        else
        {
          v38 = 4;
        }

        {
          v39 = v55;
          if (v37)
          {
            v40 = v55 == 0;
          }

          else
          {
            v40 = 1;
          }

          v41 = v40;
          if (!v40)
          {
            v42 = *a4;
            v53[0] = 0;
            v53[1] = 0xFFFFFFFFLL;
            (*(*a1 + 16))(a1, v42, v53);
            v39 = v55;
          }

          if (v39)
          {
            v43 = 0;
            do
            {
              v44 = re::ArrayAccessor::elementAt(&v61, a4, v43);
              v28(a1, 0, 0, v44, &v58, v57, 0);
              ++v43;
            }

            while (v43 < v55);
          }

          if (v41)
          {
            goto LABEL_66;
          }

LABEL_65:
          (*(*a1 + 24))(a1);
LABEL_66:
          re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 3));
          goto LABEL_67;
        }
      }

LABEL_71:
      v46 = 0;
      return v46 & 1;
    }

LABEL_23:
    v36 = re::TypeInfo::name(&v58);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v36[1]);
    goto LABEL_71;
  }

  v21 = a1[26];
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v61);
  re::TypeInfo::TypeInfo(v57, v62);
  re::internal::translateType(&v58, v21, v57);
  v22 = (*(*a1 + 80))(a1, &v58);
  if (!v22)
  {
    goto LABEL_23;
  }

  v23 = v22;
  v24 = *(a6 + 2);
  v25 = *(v24 + 92) & 0xFFFFFF;
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = *(v24 + 96);
  }

  v61 = v26;
  if (v59 != 1)
  {
    if (v25)
    {
      v47 = 8;
    }

    else
    {
      v47 = 4;
    }

    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginArray((a1 + 3), a2, a3, &v61, v47))
    {
      v48 = v61;
      if (v25)
      {
        v49 = v61 == 0;
      }

      else
      {
        v49 = 1;
      }

      v50 = v49;
      if (!v49)
      {
        v56[0] = 0;
        v56[1] = 0xFFFFFFFFLL;
        (*(*a1 + 16))(a1, 0, v56);
        v48 = v61;
      }

      if (v48)
      {
        v51 = 0;
        do
        {
          v23(a1, 0, 0, 0, &v58, &v58, 1);
          ++v51;
        }

        while (v51 < v61);
      }

      if (v50)
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    goto LABEL_71;
  }

  v57[0] = v26 * *(v60 + 8);
  v45 = re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB((a1 + 3), a2, a3, v57, 0);
  v46 = 0;
  if (v45)
  {
    if (v57[0])
    {
      v34 = a1 + 3;
      v33 = 0;
      v35 = 1;
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  return v46 & 1;
}

uint64_t re::serializeList<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    goto LABEL_52;
  }

LABEL_11:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v47);
    re::TypeInfo::TypeInfo(&v44, &v48);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47);
    re::TypeInfo::TypeInfo(v43, &v48);
    re::TypeInfo::TypeInfo(&v47, a5);
    v25 = (*(*a1 + 80))(a1, &v44);
    if (!v25)
    {
      goto LABEL_28;
    }

    v26 = v25;
    v27 = (*(v49 + 88))(a4);
    v28 = v27;
    v42 = v27;
    if (*(a5 + 12) == 5 && (*(*(a5 + 2) + 48) & 8) != 0 && v45 == 1)
    {
      v41[0] = v27 * *(v46 + 8);
      if (re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB(a1 + 24, a2, a3, v41, 0))
      {
        v29 = v41[0];
        v30 = *(v46 + 8);
        if (v41[0] / v30 * v30 == v41[0])
        {
          {
            if (v29 < v30)
            {
              goto LABEL_18;
            }

            v23 = (*(v49 + 104))(a4, 0);
            v22 = a1 + 24;
            v24 = 0;
            goto LABEL_17;
          }
        }

        else
        {
          re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError((a1 + 24), a2, "BLOB size mismatch: BLOB is %zu bytes, but list only accomodates %zu bytes (%zu elements * %zu bytes/element)", v41[0], v41[0] / v30 * v30, v41[0] / v30, v30);
        }
      }
    }

    {
      if (*(v49 + 104))
      {
        if (v42)
        {
          for (i = 0; i < v42; ++i)
          {
            v32 = (*(v49 + 104))(a4, i);
            v26(a1, 0, 0, v32, &v44, v43, 0);
          }
        }

        goto LABEL_42;
      }

      v36 = *(v49 + 112);
      if (v36 && *(v49 + 120) && *(v49 + 128))
      {
        v37 = v36(a4, *(a1 + 56));
        v38 = (*(v49 + 120))();
        if (v38)
        {
          v39 = v38;
          do
          {
            v26(a1, 0, 0, v39, &v44, v43, 0);
            v39 = (*(v49 + 120))(v37);
          }

          while (v39);
        }

        (*(v49 + 128))(v37, *(a1 + 56));
        goto LABEL_42;
      }

      re::TypeInfo::TypeInfo(v41, &v47);
      re::TypeInfo::name(v41);
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.");
    }

LABEL_52:
    v21 = 0;
    return v21 & 1;
  }

  v18 = *(a1 + 208);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47);
  re::TypeInfo::TypeInfo(v43, &v48);
  re::internal::translateType(&v44, v18, v43);
  v19 = (*(*a1 + 80))(a1, &v44);
  if (!v19)
  {
LABEL_28:
    re::TypeInfo::name(&v44);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s");
    goto LABEL_52;
  }

  v47 = 0;
  if (v45 != 1)
  {
    v33 = v19;
    v34 = re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(a1 + 24, a2, a3, &v47, 0);
    v21 = 0;
    if (!v34)
    {
      return v21 & 1;
    }

    if (v47)
    {
      for (j = 0; j < v47; ++j)
      {
        v33(a1, 0, 0, 0, &v44, &v44, 1);
      }
    }

LABEL_42:
    re::EncoderOPACK<re::FixedArrayInputStream>::endArray((a1 + 24));
    goto LABEL_43;
  }

  v43[0] = 0;
  v20 = re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB(a1 + 24, a2, a3, v43, 0);
  v21 = 0;
  if (v20)
  {
    if (!v43[0])
    {
LABEL_18:
      re::EncoderOPACK<re::FixedArrayInputStream>::endBLOB((a1 + 24));
LABEL_43:
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_17:
    re::EncoderOPACK<re::FixedArrayInputStream>::serializeBLOB(v22, v23, v24);
    goto LABEL_18;
  }

  return v21 & 1;
}

uint64_t re::serializeDictionary<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_11;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_11;
  }

  if (*(a5 + 12) != *(a6 + 12))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
LABEL_37:
    v25 = 0;
    return v25 & 1;
  }

LABEL_11:
  if (!a7)
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), v48);
    re::TypeInfo::TypeInfo(v47, &v50);
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), v48);
    re::TypeInfo::TypeInfo(v46, &v50);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v48);
    re::TypeInfo::TypeInfo(v45, &v50);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), v48);
    re::TypeInfo::TypeInfo(v44, &v50);
    re::TypeInfo::TypeInfo(v42, a5);
    v27 = (*(*a1 + 80))(a1, v47);
    if (v27)
    {
      v28 = v27;
      v29 = (*(*a1 + 80))(a1, v46);
      if (v29)
      {
        v30 = v29;
        v41 = (*(v43 + 96))(a4);
        v31 = re::EncoderOPACK<re::FixedArrayInputStream>::beginDictionary(a1 + 24, a2, a3, &v41, 0);
        v25 = 0;
        if (!v31)
        {
          return v25 & 1;
        }

        v32 = *(a1 + 48);
        v33 = *(v43 + 104);
        re::TypeInfo::TypeInfo(v48, v42);
        v33(a4, v48, v32);
        if (v41)
        {
          Instance = re::TypeInfo::createInstance(v47, *(a1 + 48), *(a1 + 200));
          if (v41)
          {
            v35 = 0;
            while (1)
            {
              if ((*(a1 + 64) & 1) == 0)
              {
                v48[0] = 7;
                v49 = 0;
                v50 = "entry";
                v51 = xmmword_1E3054780;
                v52 = 0;
                v53 = 0;
                re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v48);
              }

              v28(a1, "key", 0, Instance, v47, v45, 0);
              v36 = *(a1 + 48);
              if (*(a1 + 64) == 1)
              {
                break;
              }

              v37 = (*(v43 + 112))(a4, v42, v36, Instance);
              v30(a1, "value", 0, v37, v46, v44, 0);
              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
              if (++v35 >= v41)
              {
                goto LABEL_31;
              }
            }

            re::TypeInfo::releaseInstance(v47, Instance, v36, *(a1 + 200));
            goto LABEL_37;
          }

LABEL_31:
          re::TypeInfo::releaseInstance(v47, Instance, *(a1 + 48), *(a1 + 200));
        }

LABEL_32:
        re::EncoderOPACK<re::FixedArrayInputStream>::endDictionary((a1 + 24));
        v25 = *(a1 + 64) ^ 1;
        return v25 & 1;
      }

      goto LABEL_35;
    }

LABEL_33:
    v38 = v47;
LABEL_36:
    v39 = re::TypeInfo::name(v38);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v39[1]);
    goto LABEL_37;
  }

  v18 = *(a1 + 208);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), v48);
  re::TypeInfo::TypeInfo(v46, &v50);
  re::internal::translateType(v47, v18, v46);
  v19 = *(a1 + 208);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), v48);
  re::TypeInfo::TypeInfo(v45, &v50);
  re::internal::translateType(v46, v19, v45);
  v20 = (*(*a1 + 80))(a1, v47);
  if (!v20)
  {
    goto LABEL_33;
  }

  v21 = v20;
  v22 = (*(*a1 + 80))(a1, v46);
  if (!v22)
  {
LABEL_35:
    v38 = v46;
    goto LABEL_36;
  }

  v23 = v22;
  *v45 = 0;
  v24 = re::EncoderOPACK<re::FixedArrayInputStream>::beginDictionary(a1 + 24, a2, a3, v45, 0);
  v25 = 0;
  if (v24)
  {
    if (*v45)
    {
      v26 = 0;
      do
      {
        if ((*(a1 + 64) & 1) == 0)
        {
          v48[0] = 7;
          v49 = 1;
          v50 = "entry";
          v51 = xmmword_1E3054780;
          v52 = 0;
          v53 = 0;
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), v48);
        }

        v21(a1, "key", 0, 0, v47, v47, 1);
        v23(a1, "value", 0, 0, v46, v46, 1);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
        ++v26;
      }

      while (v26 < *v45);
    }

    goto LABEL_32;
  }

  return v25 & 1;
}

uint64_t re::serializeUnion<re::EncoderOPACK<re::FixedArrayInputStream>>(re::Allocator **a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
      goto LABEL_20;
    }

    v16 = **(a5 + 2);
    v17 = **(a6 + 2);
    if (v16 != v17)
    {
      goto LABEL_19;
    }

    v19 = WORD1(v16) == WORD1(v17);
    v18 = (v17 ^ v16) & 0xFFFFFF00000000;
    v19 = v19 && v18 == 0;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject((a1 + 3), a2, a3, 16);
  if (!a7)
  {
    if (v14)
    {
      re::TypeInfo::TypeInfo(v23, a5);
      Tag = re::UnionAccessor::readTag(v23, a4);
      re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>((a1 + 3), "tag", 0, &Tag, 0);
      re::UnionAccessor::reset(v23, a4, Tag, a1[6]);
      if (Tag < *(*(a5 + 2) + 96))
      {
        re::TypeInfo::unionMember(v21, a5, Tag);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 9))(a1, "value", 0, a4, v21, v21, 0);
        }
      }

      goto LABEL_13;
    }

LABEL_20:
    v15 = 0;
    return v15 & 1;
  }

  if (!v14)
  {
    goto LABEL_20;
  }

  v21[0] = 0;
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>((a1 + 3), "tag", 0, v21, 0);
  if (v21[0] < *(*(a6 + 2) + 96))
  {
    re::TypeInfo::unionMember(v23, a6, v21[0]);
    if ((a1[8] & 1) == 0)
    {
      (*(*a1 + 9))(a1, "value", 0, 0, v23, v23, 1);
    }
  }

LABEL_13:
  re::EncoderOPACK<re::FixedArrayInputStream>::endObject((a1 + 3));
  v15 = *(a1 + 64) ^ 1;
  return v15 & 1;
}

uint64_t re::serializeObject<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
{
  if (a7)
  {
    if (*(*(this + 2) + 49))
    {
      v25 = *(a1 + 208);
      v45[0] = 0x2686EB529B3EE220;
      v45[1] = "DynamicString";
      re::TypeRegistry::typeInfo(&v39, v25, v45);
      v26 = re::TypeInfo::TypeInfo(v46, v40);
      if (v45[0])
      {
        if (v45[0])
        {
        }
      }

      v27 = v46;
      v28 = v46;
      v29 = a1;
      v30 = a2;
      v31 = a3;
    }

    else
    {
      v14 = re::TypeInfo::name(this);
      if ((*v14 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220)
      {
        goto LABEL_6;
      }

      v15 = v14[1];
      if (v15 != "DynamicString")
      {
        if (strcmp(v15, "DynamicString"))
        {
          goto LABEL_6;
        }
      }

      v29 = a1;
      v30 = a2;
      v31 = a3;
      v27 = this;
      v28 = this;
    }

    re::serializeDynamicString<re::EncoderOPACK<re::FixedArrayInputStream>>(v29, v30, v31, 0, v27, v28, 1);
LABEL_36:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

LABEL_6:
  v16 = *(this + 2);
  v17 = *(v16 + 48);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = *(v16 + 168);
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      v39 = &unk_1F5CB5E78;
      v40[0] = a1;
      v40[1] = v19;
      v40[2] = v20;
      v41[0] = 0;
      v41[1] = 0;
      v42 = 1;
      v43 = 0;
      v44 = 0;
      v46[0].n128_u64[0] = a2;
      v46[0].n128_u32[2] = a3;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(v41, v46);
      v18(&v39, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v39 = &unk_1F5CB5E78;
      if (v41[0])
      {
        if ((v42 & 1) == 0)
        {
          (*(*v41[0] + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    v23 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, a2, a3, 0);
    v22 = 0;
    if (!v23)
    {
      return v22 & 1;
    }

    if (this == a6)
    {
      goto LABEL_17;
    }

    if (*this == *a6)
    {
      v33 = **(this + 2);
      v34 = **(a6 + 2);
      if (v33 == v34)
      {
        v36 = WORD1(v33) == WORD1(v34);
        v35 = (v34 ^ v33) & 0xFFFFFF00000000;
        v36 = v36 && v35 == 0;
        if (v36)
        {
          goto LABEL_17;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v24))
    {
LABEL_17:
      re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a4, this, a7);
LABEL_35:
      re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
      goto LABEL_36;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a4, this, a6, a7);
    }

    else
    {
      v37 = re::TypeInfo::name(this)[1];
      v38 = re::TypeInfo::name(a6);
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v37, v38[1]);
    }

    goto LABEL_35;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeBool(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19[5] = v5;
  v19[6] = v6;
  v19[0] = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v19, 0);
  if (result)
  {
    __dst = 0;
    if (*(a1 + 40))
    {
LABEL_5:
      for (i = v19[0]; i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
      }

      result = 1;
      if ((a5 & 2) == 0)
      {
        v13 = *(a1 + 128) + 48 * *(a1 + 112);
        if (*(v13 - 48) != 2)
        {
          ++*(v13 - 16);
        }
      }

      return result;
    }

    v14 = *(a1 + 168);
    if (v14)
    {
      v15 = v14 - 1;
      v16 = *(a1 + v15 + 160);
      __dst = *(a1 + v15 + 160);
      *(a1 + 168) = v15;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Boolean");
        goto LABEL_5;
      }

      v16 = __dst;
    }

    if (v16 == 2)
    {
      if ((a5 & 1) == 0)
      {
        *a4 = 0;
      }
    }

    else
    {
      if (v16 != 1)
      {
        v17 = re::OPACK::toString(v16);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Boolean", v17);
        return 0;
      }

      if ((a5 & 1) == 0)
      {
        *a4 = 1;
      }
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v26[5] = v5;
  v26[6] = v6;
  v26[0] = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v26, 0);
  if (result)
  {
    __dst = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *(a1 + v13 + 160);
        __dst = *(a1 + v13 + 160);
        *(a1 + 168) = v13;
      }

      else
      {
        if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
        {
LABEL_25:
          re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Float");
          goto LABEL_26;
        }

        v14 = __dst;
      }

      if (v14 != 53)
      {
        v21 = re::OPACK::toString(v14);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Float", v21);
        return 0;
      }

      if (*(a1 + 40))
      {
        goto LABEL_26;
      }

      v15 = *(a1 + 168);
      if (v15)
      {
        v16 = 4;
        if (v15 < 4)
        {
          v16 = *(a1 + 168);
        }

        v17 = v15 - v16;
        if ((v15 - 1) >= (v15 - v16))
        {
          v18 = *(a1 + 168);
          do
          {
            *a4++ = *(a1 + 159 + v18);
            v19 = v18 - 2;
            --v18;
          }

          while (v19 >= v17);
        }

        *(a1 + 168) = v17;
        if (v15 > 3)
        {
          goto LABEL_26;
        }

        v20 = 4 - v16;
      }

      else
      {
        v20 = 4;
      }

      if (a5)
      {
        v22 = 0;
      }

      else
      {
        v22 = a4;
      }

      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v22, v20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    for (i = v26[0]; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    result = 1;
    if ((a5 & 2) == 0)
    {
      v24 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v24 - 48) != 2)
      {
        ++*(v24 - 16);
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v26[5] = v5;
  v26[6] = v6;
  v26[0] = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v26, 0);
  if (result)
  {
    __dst = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *(a1 + v13 + 160);
        __dst = *(a1 + v13 + 160);
        *(a1 + 168) = v13;
      }

      else
      {
        if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
        {
LABEL_25:
          re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Double");
          goto LABEL_26;
        }

        v14 = __dst;
      }

      if (v14 != 54)
      {
        v21 = re::OPACK::toString(v14);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Double", v21);
        return 0;
      }

      if (*(a1 + 40))
      {
        goto LABEL_26;
      }

      v15 = *(a1 + 168);
      if (v15)
      {
        v16 = 8;
        if (v15 < 8)
        {
          v16 = *(a1 + 168);
        }

        v17 = v15 - v16;
        if ((v15 - 1) >= (v15 - v16))
        {
          v18 = *(a1 + 168);
          do
          {
            *a4++ = *(a1 + 159 + v18);
            v19 = v18 - 2;
            --v18;
          }

          while (v19 >= v17);
        }

        *(a1 + 168) = v17;
        if (v15 > 7)
        {
          goto LABEL_26;
        }

        v20 = 8 - v16;
      }

      else
      {
        v20 = 8;
      }

      if (a5)
      {
        v22 = 0;
      }

      else
      {
        v22 = a4;
      }

      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v22, v20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

LABEL_26:
    for (i = v26[0]; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    result = 1;
    if ((a5 & 2) == 0)
    {
      v24 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v24 - 48) != 2)
      {
        ++*(v24 - 16);
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::advance(uint64_t a1, const char *a2, int a3, void *a4, _DWORD *a5)
{
  v9 = *(*(a1 + 128) + 48 * *(a1 + 112) - 48);
  if (v9 == 2)
  {
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance_KeyedContainer(a1, a2, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v9 == 1 && !re::EncoderOPACK<re::FixedArrayInputStream>::advance_UnkeyedContainer(a1, a2))
  {
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::evaluateConditional(a1, a2, a5, a4);
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readTag(uint64_t a1, const char *a2, char *__dst, uint64_t a4)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      v7 = v6 - 1;
      *__dst = *(a1 + v7 + 160);
      *(a1 + 168) = v7;
      return 1;
    }

    v4 = 1;
    if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 1uLL))
    {
      return v4;
    }

    re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, a4);
  }

  return 0;
}

BOOL re::EncoderOPACK<re::FixedArrayInputStream>::advance_UnkeyedContainer(uint64_t a1, const char *a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  v6 = *(a1 + 168);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = *(a1 + v6 - 1 + 160);
    *(a1 + 168) = v7;
  }

  else
  {
    __dst = 0;
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
    {
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Array element or terminator");
      return 0;
    }

    v8 = __dst;
    v7 = *(a1 + 168);
  }

  if (v7 <= 7)
  {
    *(a1 + 168) = v7 + 1;
    *(a1 + v7 + 160) = v8;
  }

  return v8 != 3;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::advance_KeyedContainer(uint64_t a1, const char *a2, int a3)
{
  v3 = *(a1 + 128);
  v4 = *(a1 + 112);
  v5 = v3 + 48 * v4;
  if ((*(v5 - 44) & 0x40) != 0)
  {
    return 1;
  }

  v7 = *(v5 - 16);
  v38 = v7;
  if (v7 == a3)
  {
LABEL_3:
    *(v3 + 48 * v4 - 16) = 0xFFFFFFFF80000000;
    return 1;
  }

  v11 = a1 + 160;
  v12 = a1 + 159;
  while (1)
  {
    if (v7 > a3)
    {
      result = 0;
      *(*(a1 + 128) + 48 * *(a1 + 112) - 16) = v7;
      return result;
    }

    if ((v7 & 0x80000000) == 0)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    __dst = 0;
    if (*(a1 + 40))
    {
      return 0;
    }

    v13 = *(a1 + 168);
    if (v13)
    {
      v14 = v13 - 1;
      v15 = *(v11 + v13 - 1);
      __dst = v15;
      *(a1 + 168) = v14;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL) & 1) == 0)
      {
        v32 = "Integer (numeric tag)";
        goto LABEL_63;
      }

      v15 = __dst;
    }

    if (v15 == 3)
    {
      break;
    }

    if ((v15 - 7) <= 0x28)
    {
      LODWORD(v16) = v15 - 8;
      goto LABEL_49;
    }

    if (v15 != 50)
    {
      if (v15 != 49)
      {
        if (v15 != 48)
        {
          v34 = *(a1 + 168);
          if (v34 <= 7)
          {
            *(a1 + 168) = v34 + 1;
            *(v11 + v34) = v15;
          }

          return 0;
        }

        v36 = 0;
        if (*(a1 + 40))
        {
          return 0;
        }

        v16 = *(a1 + 168);
        if (v16)
        {
          v17 = v16 - 1;
          LOBYTE(v16) = *(v11 + v16 - 1);
          *(a1 + 168) = v17;
        }

        else
        {
          if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v36, 1uLL))
          {
            v32 = "8-Bit Signed Integer";
            goto LABEL_63;
          }

          LOBYTE(v16) = v36;
        }

        LODWORD(v16) = v16;
        goto LABEL_49;
      }

      v35 = 0;
      if (*(a1 + 40))
      {
        return 0;
      }

      v18 = *(a1 + 168);
      if (!v18)
      {
        v21 = &v35;
        v24 = 2;
        goto LABEL_44;
      }

      if (v18 >= 2)
      {
        v19 = 2;
      }

      else
      {
        v19 = *(a1 + 168);
      }

      v20 = v18 - v19;
      v21 = &v35;
      if ((v18 - 1) >= (v18 - v19))
      {
        v22 = *(a1 + 168);
        do
        {
          *v21++ = *(v12 + v22);
          v23 = v22 - 2;
          --v22;
        }

        while (v23 >= v20);
      }

      *(a1 + 168) = v20;
      if (v18 == 1)
      {
        v24 = 2 - v19;
LABEL_44:
        if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v21, v24) & 1) == 0)
        {
          v32 = "16-Bit Signed Integer";
          goto LABEL_63;
        }
      }

      LODWORD(v16) = v35;
LABEL_49:
      v38 = v16;
      goto LABEL_50;
    }

    if (*(a1 + 40))
    {
      return 0;
    }

    v25 = *(a1 + 168);
    if (v25)
    {
      if (v25 >= 4)
      {
        v26 = 4;
      }

      else
      {
        v26 = *(a1 + 168);
      }

      v27 = v25 - v26;
      v28 = &v38;
      if ((v25 - 1) >= (v25 - v26))
      {
        v29 = *(a1 + 168);
        do
        {
          *v28++ = *(v12 + v29);
          v30 = v29 - 2;
          --v29;
        }

        while (v30 >= v27);
      }

      *(a1 + 168) = v27;
      if (v25 > 3)
      {
        goto LABEL_50;
      }

      v31 = 4 - v26;
    }

    else
    {
      v28 = &v38;
      v31 = 4;
    }

    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v28, v31) & 1) == 0)
    {
      v32 = "32-Bit Signed Integer";
LABEL_63:
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, v32);
      return 0;
    }

LABEL_50:
    v7 = v38;
    if (v38 == a3)
    {
      v3 = *(a1 + 128);
      v4 = *(a1 + 112);
      goto LABEL_3;
    }
  }

  v33 = *(a1 + 168);
  if (v33 <= 7)
  {
    *(a1 + 168) = v33 + 1;
    *(v11 + v33) = 3;
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::evaluateConditional(uint64_t a1, const char *a2, _DWORD *a3, void *a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  __dst = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *(a1 + v9 - 1 + 160);
    __dst = v11;
    *(a1 + 168) = v10;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
    {
LABEL_62:
      v26 = "Array";
      goto LABEL_63;
    }

    v11 = __dst;
  }

  v12 = v11;
  v13 = v11 - 209;
  if (v11 - 223 < 0xFFFFFFF3 || v11 == 209)
  {
    v15 = *(a1 + 168);
    if (v15 <= 7)
    {
      *(a1 + 168) = v15 + 1;
      *(a1 + v15 + 160) = v12;
    }

    return 1;
  }

  v4 = 0;
  v59 = 0;
  if (*(a1 + 40))
  {
    return v4;
  }

  v17 = *(a1 + 168);
  if (v17)
  {
    v18 = v17 - 1;
    v19 = *(a1 + v17 - 1 + 160);
    v59 = v19;
    *(a1 + 168) = v18;
    goto LABEL_21;
  }

  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v59, 1uLL))
  {
    v19 = v59;
LABEL_21:
    if (v19 != 69)
    {
      v24 = *(a1 + 168);
      if (v24 <= 7)
      {
        v25 = a1 + 160;
        *(a1 + 168) = v24 + 1;
        *(a1 + 160 + v24) = v19;
        goto LABEL_48;
      }

      return 1;
    }

    v58 = 0;
    v57 = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v20 = *(a1 + 168);
      if (!v20)
      {
        v23 = &v57;
        v27 = 5;
        goto LABEL_36;
      }

      v21 = 5;
      if (v20 < 5)
      {
        v21 = *(a1 + 168);
      }

      v22 = v20 - v21;
      if ((v20 - 1) >= (v20 - v21))
      {
        v23 = &v57;
        v28 = *(a1 + 168);
        do
        {
          *v23++ = *(a1 + 159 + v28);
          v29 = v28 - 2;
          --v28;
        }

        while (v29 >= v22);
      }

      else
      {
        v23 = &v57;
      }

      *(a1 + 168) = v22;
      if (v20 <= 4)
      {
        v27 = 5 - v21;
LABEL_36:
        if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v23, v27) & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Small String");
        }
      }
    }

    if (v57 == 1852793664 && v58 == 100)
    {
      v38 = 0;
      v39 = v12 - 210;
      v40 = 1;
      while ((*(a1 + 40) & 1) == 0)
      {
        v41 = *(a1 + 168);
        if (v41)
        {
          v42 = v41 - 1;
          v43 = *(a1 + 160 + v41 - 1);
          __dst = v43;
          *(a1 + 168) = v42;
        }

        else
        {
          if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
          {
            goto LABEL_62;
          }

          v43 = __dst;
        }

        if ((v43 - 210) >= 0xD)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v51);
          if (v52)
          {
            v47 = v54;
          }

          else
          {
            v47 = v53;
          }

          re::DynamicString::format(&v55, "Failed to read version conditional %s. Invalid condition.", v46, v47);
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v55);
          if (v55)
          {
            if (BYTE8(v55))
            {
              (*(*v55 + 40))();
            }

            v55 = 0u;
            v56 = 0u;
          }

          if (v51 && (v52 & 1) != 0)
          {
            (*(*v51 + 40))();
          }

          return 0;
        }

        v50 = 0;
        v4 = re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<int>(a1, a2, &v50);
        if ((v4 & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v51);
          if (v52)
          {
            v49 = v54;
          }

          else
          {
            v49 = v53;
          }

          re::DynamicString::format(&v55, "Failed to read version conditional %s. Failed to read version.", v48, v49);
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v55);
          if (v55)
          {
            if (BYTE8(v55))
            {
              (*(*v55 + 40))();
            }

            v55 = 0u;
            v56 = 0u;
          }

          if (v51 && (v52 & 1) != 0)
          {
            (*(*v51 + 40))();
          }

          return v4;
        }

        if (*(a1 + 136) <= v50 || v39 == v38)
        {
          if (a3)
          {
            *a3 = v50;
          }

          *a4 = v13 + ~v38;
          return v4;
        }

        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
        v38 = v40;
        if (v13 <= v40++)
        {
          re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "evaluateConditional", 2285);
          _os_crash("assertion failure: (!Unreachable code) ");
          __break(1u);
          goto LABEL_62;
        }
      }

      return 0;
    }

    v31 = *(a1 + 168);
    if (v31 + 4 <= 7)
    {
      for (i = 4; i != -1; --i)
      {
        v33 = *(&v57 + i);
        v34 = *(a1 + 168);
        *(a1 + 168) = v34 + 1;
        *(a1 + 160 + v34) = v33;
      }

      v31 = *(a1 + 168);
    }

    if (v31 <= 7)
    {
      v35 = v59;
      v25 = a1 + 160;
      *(a1 + 168) = v31 + 1;
      *(a1 + 160 + v31) = v35;
LABEL_48:
      v36 = *(a1 + 168);
      if (v36 <= 7)
      {
        v37 = __dst;
        *(a1 + 168) = v36 + 1;
        *(v25 + v36) = v37;
      }

      return 1;
    }

    return 1;
  }

  v26 = "Small String";
LABEL_63:
  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, v26);
  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(uint64_t result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  __dst = 0;
  v2 = *(result + 168);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(result + v3 + 160);
    __dst = v4;
    *(v1 + 168) = v3;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dst, 1uLL))
    {
      v7 = "Member";
      v8 = v1;
      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v8, "unknown", v7);
    }

    v4 = __dst;
  }

  result = re::OPACK::toString(v4);
  v5 = result;
  v6 = __dst;
  if (__dst > 0x31u)
  {
    if (__dst > 0xC0u)
    {
      if (__dst <= 0xC2u)
      {
        if (__dst != 193)
        {
LABEL_34:
          if (*(v1 + 40))
          {
            return result;
          }

          v12 = *(v1 + 168);
          if (!v12)
          {
            v15 = 2;
            goto LABEL_80;
          }

          v10 = 2;
          if (v12 >= 2)
          {
            v11 = 2;
          }

          else
          {
            v11 = *(v1 + 168);
          }

          *(v1 + 168) = v12 - v11;
          if (v12 != 1)
          {
            return result;
          }

          goto LABEL_63;
        }

LABEL_50:
        if (*(v1 + 40))
        {
          return result;
        }

        v14 = v1;
        v15 = 1;
        goto LABEL_81;
      }

      if (__dst == 195)
      {
        if (*(v1 + 40))
        {
          return result;
        }

        v18 = *(v1 + 168);
        if (v18)
        {
          v19 = 3;
          if (v18 < 3)
          {
            v19 = *(v1 + 168);
          }

          *(v1 + 168) = v18 - v19;
          if (v18 > 2)
          {
            return result;
          }

          v15 = v19 ^ 3;
        }

        else
        {
          v15 = 3;
        }

        goto LABEL_80;
      }

      if (__dst != 196)
      {
        goto LABEL_52;
      }
    }

    else if (__dst > 0x34u)
    {
      if (__dst != 53)
      {
        if (__dst != 54)
        {
          goto LABEL_52;
        }

        goto LABEL_25;
      }
    }

    else if (__dst != 50)
    {
      if (__dst != 51)
      {
        goto LABEL_52;
      }

      goto LABEL_25;
    }

    if (*(v1 + 40))
    {
      return result;
    }

    v13 = *(v1 + 168);
    if (!v13)
    {
      v15 = 4;
      goto LABEL_80;
    }

    v10 = 4;
    if (v13 >= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v13 - v11;
    if (v13 > 3)
    {
      return result;
    }

    goto LABEL_63;
  }

  if (__dst <= 4u)
  {
    if (__dst - 1 < 4)
    {
      return result;
    }

    goto LABEL_52;
  }

  if (__dst > 0x2Fu)
  {
    if (__dst != 48)
    {
      if (__dst != 49)
      {
        goto LABEL_52;
      }

      goto LABEL_34;
    }

    goto LABEL_50;
  }

  if (__dst == 5)
  {
    if (*(v1 + 40))
    {
      return result;
    }

    v17 = *(v1 + 168);
    if (!v17)
    {
      v15 = 16;
      goto LABEL_80;
    }

    v10 = 16;
    if (v17 >= 0x10)
    {
      v11 = 16;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v17 - v11;
    if (v17 > 0xF)
    {
      return result;
    }

    goto LABEL_63;
  }

  if (__dst == 6)
  {
LABEL_25:
    if (*(v1 + 40))
    {
      return result;
    }

    v9 = *(v1 + 168);
    if (!v9)
    {
      v15 = 8;
      goto LABEL_80;
    }

    v10 = 8;
    if (v9 >= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = *(v1 + 168);
    }

    *(v1 + 168) = v9 - v11;
    if (v9 > 7)
    {
      return result;
    }

LABEL_63:
    v15 = v10 - v11;
LABEL_80:
    v14 = v1;
LABEL_81:
    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v14, 0, v15);
    if (result)
    {
      return result;
    }

    v8 = v1;
    v7 = v5;
    return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v8, "unknown", v7);
  }

LABEL_52:
  if (__dst - 7 >= 0x29)
  {
    if (__dst - 64 <= 0x24)
    {
      v16 = *(v1 + 168);
      if (v16 <= 7)
      {
        *(v1 + 168) = v16 + 1;
        *(v1 + v16 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::FixedArrayInputStream>::readStringTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::FixedArrayInputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__dst - 112 <= 0x24)
    {
      v20 = *(v1 + 168);
      if (v20 <= 7)
      {
        *(v1 + 168) = v20 + 1;
        *(v1 + v20 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::FixedArrayInputStream>::readDataTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::FixedArrayInputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__dst - 160 >= 0x21)
    {
      if (__dst - 208 > 0xE)
      {
        if (__dst == 223)
        {
          result = re::EncoderOPACK<re::FixedArrayInputStream>::readTag(v1, "unknown", &__dst, "Array value/terminator");
          if (result)
          {
            do
            {
              v23 = __dst;
              if (__dst == 3)
              {
                break;
              }

              v24 = *(v1 + 168);
              if (v24 <= 7)
              {
                *(v1 + 168) = v24 + 1;
                *(v1 + 160 + v24) = v23;
              }

              re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
              result = re::EncoderOPACK<re::FixedArrayInputStream>::readTag(v1, "unknown", &__dst, "Array value/terminator");
            }

            while ((result & 1) != 0);
          }
        }

        else if (__dst - 224 > 0xE)
        {
          if (__dst == 239)
          {
            for (result = re::EncoderOPACK<re::FixedArrayInputStream>::readTag(v1, "unknown", &__dst, "Dictionary key/value/terminator"); result; result = re::EncoderOPACK<re::FixedArrayInputStream>::readTag(v1, "unknown", &__dst, "Dictionary key/value/terminator"))
            {
              v28 = __dst;
              if (__dst == 3)
              {
                break;
              }

              v29 = *(v1 + 168);
              if (v29 <= 7)
              {
                *(v1 + 168) = v29 + 1;
                *(v1 + 160 + v29) = v28;
              }

              v30 = -2;
              do
              {
                re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
                v27 = __CFADD__(v30++, 1);
              }

              while (!v27);
            }
          }

          else
          {
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(v1, 0, &v33);
            if (v34)
            {
              v32 = *&v35[7];
            }

            else
            {
              v32 = v35;
            }

            re::DynamicString::format(&v36, "Failed to deserialize %s. Found unsupported tag while skipping over data.", v31, v32);
            __n[0] = 400;
            __n[1] = re::FoundationErrorCategory(void)::instance;
            __n[2] = v36;
            __n[5] = v38;
            *&__n[3] = v37;
            re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __n);
            if (__n[2])
            {
              if (__n[3])
              {
                (*(*__n[2] + 40))();
              }

              memset(&__n[2], 0, 32);
            }

            result = v33;
            if (v33 && (v34 & 1) != 0)
            {
              return (*(*v33 + 40))();
            }
          }
        }

        else
        {
          v25 = *(v1 + 168);
          if (v25 <= 7)
          {
            *(v1 + 168) = v25 + 1;
            *(v1 + v25 + 160) = v6;
          }

          __n[0] = 0;
          result = re::EncoderOPACK<re::FixedArrayInputStream>::readDictionaryTag(v1, "unknown", __n);
          if (2 * __n[0])
          {
            v26 = -2 * __n[0];
            do
            {
              result = re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
              v27 = __CFADD__(v26++, 1);
            }

            while (!v27);
          }
        }
      }

      else
      {
        v21 = *(v1 + 168);
        if (v21 <= 7)
        {
          *(v1 + 168) = v21 + 1;
          *(v1 + v21 + 160) = v6;
        }

        __n[0] = 0;
        result = re::EncoderOPACK<re::FixedArrayInputStream>::readArrayTag(v1, "unknown", __n);
        for (i = __n[0]; i; result = re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1))
        {
          --i;
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readRaw(uint64_t a1, const char *a2, _BYTE *a3, size_t __n, uint64_t a5, char a6)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v10 = *(a1 + 168);
  if (v10)
  {
    if (v10 >= __n)
    {
      v11 = __n;
    }

    else
    {
      v11 = *(a1 + 168);
    }

    v12 = v10 - v11;
    if ((v10 - 1) >= (v10 - v11))
    {
      do
      {
        *a3++ = *(a1 + 159 + v10);
        v13 = v10 - 2;
        --v10;
      }

      while (v13 >= v12);
    }

    *(a1 + 168) = v12;
    __n -= v11;
  }

  if (!__n)
  {
    return 1;
  }

  v14 = (a6 & 1) != 0 ? 0 : a3;
  if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v14, __n))
  {
    return 1;
  }

  re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, a5);
  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readStringTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dst = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dst = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dst, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
      }

      result = __dst;
    }

    if ((result - 64) <= 0x20)
    {
      v8 = result - 64;
LABEL_8:
      *a3 = v8;
      return result;
    }

    if (result <= 98)
    {
      if (result != 97)
      {
        if (result == 98)
        {
          LOWORD(v32) = 0;
          if (*(v5 + 40))
          {
            return result;
          }

          v9 = *(v5 + 168);
          if (v9)
          {
            v10 = 2;
            if (v9 < 2)
            {
              v10 = *(v5 + 168);
            }

            v11 = v9 - v10;
            if ((v9 - 1) >= (v9 - v10))
            {
              v12 = &v32;
              v26 = *(v5 + 168);
              do
              {
                *v12 = *(v5 + 159 + v26);
                v12 = (v12 + 1);
                v27 = v26 - 2;
                --v26;
              }

              while (v27 >= v11);
            }

            else
            {
              v12 = &v32;
            }

            *(v5 + 168) = v11;
            if (v9 != 1)
            {
              goto LABEL_47;
            }

            v23 = 2 - v10;
          }

          else
          {
            v12 = &v32;
            v23 = 2;
          }

          result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
        }

LABEL_26:
        v17 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "String", v17);
      }

      LOBYTE(v32) = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v8 = *(v5 + 168);
      if (v8)
      {
        v18 = v8 - 1;
        LODWORD(v8) = *(v5 + v8 - 1 + 160);
        *(v5 + 168) = v18;
LABEL_40:
        v8 = v8;
        goto LABEL_8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
    }

    if (result != 99)
    {
      if (result != 100)
      {
        goto LABEL_26;
      }

      v32 = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v13 = *(v5 + 168);
      if (v13)
      {
        v14 = 8;
        if (v13 < 8)
        {
          v14 = *(v5 + 168);
        }

        v15 = v13 - v14;
        if ((v13 - 1) >= (v13 - v14))
        {
          v16 = &v32;
          v28 = *(v5 + 168);
          do
          {
            *v16 = *(v5 + 159 + v28);
            v16 = (v16 + 1);
            v29 = v28 - 2;
            --v28;
          }

          while (v29 >= v15);
        }

        else
        {
          v16 = &v32;
        }

        *(v5 + 168) = v15;
        if (v13 > 7)
        {
          goto LABEL_53;
        }

        v24 = 8 - v14;
      }

      else
      {
        v16 = &v32;
        v24 = 8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
      }

LABEL_53:
      v8 = v32;
      goto LABEL_8;
    }

    LODWORD(v32) = 0;
    if (*(v5 + 40))
    {
      return result;
    }

    v19 = *(v5 + 168);
    if (v19)
    {
      v20 = 4;
      if (v19 < 4)
      {
        v20 = *(v5 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = &v32;
        v30 = *(v5 + 168);
        do
        {
          *v22 = *(v5 + 159 + v30);
          v22 = (v22 + 1);
          v31 = v30 - 2;
          --v30;
        }

        while (v31 >= v21);
      }

      else
      {
        v22 = &v32;
      }

      *(v5 + 168) = v21;
      if (v19 > 3)
      {
        goto LABEL_59;
      }

      v25 = 4 - v20;
    }

    else
    {
      v22 = &v32;
      v25 = 4;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "String");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readDataTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dst = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dst = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dst, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
      }

      result = __dst;
    }

    if ((result - 112) <= 0x20)
    {
      v8 = result - 112;
LABEL_8:
      *a3 = v8;
      return result;
    }

    if (result <= 146)
    {
      if (result != 145)
      {
        if (result == 146)
        {
          LOWORD(v32) = 0;
          if (*(v5 + 40))
          {
            return result;
          }

          v9 = *(v5 + 168);
          if (v9)
          {
            v10 = 2;
            if (v9 < 2)
            {
              v10 = *(v5 + 168);
            }

            v11 = v9 - v10;
            if ((v9 - 1) >= (v9 - v10))
            {
              v12 = &v32;
              v26 = *(v5 + 168);
              do
              {
                *v12 = *(v5 + 159 + v26);
                v12 = (v12 + 1);
                v27 = v26 - 2;
                --v26;
              }

              while (v27 >= v11);
            }

            else
            {
              v12 = &v32;
            }

            *(v5 + 168) = v11;
            if (v9 != 1)
            {
              goto LABEL_47;
            }

            v23 = 2 - v10;
          }

          else
          {
            v12 = &v32;
            v23 = 2;
          }

          result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
        }

LABEL_26:
        v17 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "BLOB", v17);
      }

      LOBYTE(v32) = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v8 = *(v5 + 168);
      if (v8)
      {
        v18 = v8 - 1;
        LODWORD(v8) = *(v5 + v8 - 1 + 160);
        *(v5 + 168) = v18;
LABEL_40:
        v8 = v8;
        goto LABEL_8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
    }

    if (result != 147)
    {
      if (result != 148)
      {
        goto LABEL_26;
      }

      v32 = 0;
      if (*(v5 + 40))
      {
        return result;
      }

      v13 = *(v5 + 168);
      if (v13)
      {
        v14 = 8;
        if (v13 < 8)
        {
          v14 = *(v5 + 168);
        }

        v15 = v13 - v14;
        if ((v13 - 1) >= (v13 - v14))
        {
          v16 = &v32;
          v28 = *(v5 + 168);
          do
          {
            *v16 = *(v5 + 159 + v28);
            v16 = (v16 + 1);
            v29 = v28 - 2;
            --v28;
          }

          while (v29 >= v15);
        }

        else
        {
          v16 = &v32;
        }

        *(v5 + 168) = v15;
        if (v13 > 7)
        {
          goto LABEL_53;
        }

        v24 = 8 - v14;
      }

      else
      {
        v16 = &v32;
        v24 = 8;
      }

      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
      }

LABEL_53:
      v8 = v32;
      goto LABEL_8;
    }

    LODWORD(v32) = 0;
    if (*(v5 + 40))
    {
      return result;
    }

    v19 = *(v5 + 168);
    if (v19)
    {
      v20 = 4;
      if (v19 < 4)
      {
        v20 = *(v5 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = &v32;
        v30 = *(v5 + 168);
        do
        {
          *v22 = *(v5 + 159 + v30);
          v22 = (v22 + 1);
          v31 = v30 - 2;
          --v30;
        }

        while (v31 >= v21);
      }

      else
      {
        v22 = &v32;
      }

      *(v5 + 168) = v21;
      if (v19 > 3)
      {
        goto LABEL_59;
      }

      v25 = 4 - v20;
    }

    else
    {
      v22 = &v32;
      v25 = 4;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "BLOB");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readArrayTag(uint64_t result, const char *a2, char *__dst)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dsta = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dsta = *(v5 + v7 + 160);
      v5[21] = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dsta, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "Array");
      }

      result = __dsta;
    }

    if ((result + 48) > 0xEu)
    {
      if (result == 223)
      {
        return re::EncoderOPACK<re::FixedArrayInputStream>::readUint64(v5, a2, __dst);
      }

      else
      {
        v8 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Array", v8);
      }
    }

    else
    {
      *__dst = result - 208;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readDictionaryTag(uint64_t result, const char *a2, char *__dst)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __dsta = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __dsta = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, &__dsta, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "Dictionary");
      }

      result = __dsta;
    }

    if ((result + 32) <= 0xEu)
    {
      *__dst = result - 224;
      return result;
    }

    if (result != 210)
    {
LABEL_16:
      v10 = re::OPACK::toString(result);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Dictionary", v10);
    }

    result = re::EncoderOPACK<re::FixedArrayInputStream>::readUint64(v5, a2, __dst);
    if (result && (*(v5 + 40) & 1) == 0)
    {
      v8 = *(v5 + 168);
      if (v8)
      {
        v9 = v8 - 1;
        result = *(v5 + v9 + 160);
        __dsta = *(v5 + v9 + 160);
        *(v5 + 168) = v9;
        goto LABEL_15;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v5, &__dsta, 1uLL))
      {
        result = __dsta;
LABEL_15:
        if (result == 239)
        {
          return result;
        }

        goto LABEL_16;
      }

      return re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v5, a2, "Dictionary");
    }
  }

  return result;
}

uint64_t re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(void *a1, char *__dst, size_t __n)
{
  v3 = __n;
  if (__dst)
  {
    v5 = __dst;
    while (1)
    {
      v6 = *(a1 + 4);
      if (v3 <= v6)
      {
        break;
      }

      if (v6 >= 1)
      {
        memcpy(v5, a1[1], v6);
        v7 = *(a1 + 4);
        v5 += v7;
        v3 -= v7;
        a1[1] = 0;
        *(a1 + 4) = 0;
      }

      if (((*(**a1 + 16))(*a1, a1 + 1, a1 + 2) & 1) == 0)
      {
        return 0;
      }
    }

    memcpy(v5, a1[1], v3);
    a1[1] += v3;
    *(a1 + 4) -= v3;
    return 1;
  }

  v9 = *(a1 + 4);
  if (__n <= v9)
  {
    a1[1] += __n;
    *(a1 + 4) = v9 - __n;
    return 1;
  }

  if (v9 >= 1)
  {
    a1[1] = 0;
    *(a1 + 4) = 0;
  }

  v10 = *(**a1 + 32);

  return v10();
}

uint64_t re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(_anonymous_namespace_ *a1, const char *a2, uint64_t a3)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v8);
  if (v9)
  {
    v6 = *&v10[7];
  }

  else
  {
    v6 = v10;
  }

  re::DynamicString::format(v11, "Failed to %s %s. Reason: Error %s type %s.", v5, "deserialize", v6, "reading", a3);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v11);
  if (*&v11[0])
  {
    if (BYTE8(v11[0]))
    {
      (*(**&v11[0] + 40))();
    }

    memset(v11, 0, sizeof(v11));
  }

  result = v8;
  if (v8)
  {
    if (v9)
    {
      return (*(*v8 + 40))();
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readUint64(uint64_t a1, const char *a2, char *__dst)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v20[5] = v3;
  v20[6] = v4;
  __dsta = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *(a1 + v9 - 1 + 160);
    __dsta = v11;
    *(a1 + 168) = v10;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dsta, 1uLL) & 1) == 0)
    {
LABEL_24:
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "UInt64");
      return 0;
    }

    v11 = __dsta;
  }

  if (v11 == 120)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = 8;
        if (v12 < 8)
        {
          v13 = *(a1 + 168);
        }

        v14 = v12 - v13;
        if ((v12 - 1) >= (v12 - v13))
        {
          v15 = *(a1 + 168);
          do
          {
            *__dst++ = *(a1 + 159 + v15);
            v16 = v15 - 2;
            --v15;
          }

          while (v16 >= v14);
        }

        *(a1 + 168) = v14;
        if (v12 > 7)
        {
          return 1;
        }

        v17 = 8 - v13;
      }

      else
      {
        v17 = 8;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, v17))
      {
        return 1;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18 <= 7)
    {
      *(a1 + 168) = v18 + 1;
      *(a1 + v18 + 160) = v11;
    }

    v20[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, v20, "Int64"))
    {
      *__dst = v20[0];
      return 1;
    }
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(uint64_t a1, const char *a2, char *__dst, const char *a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v44 = v4;
  v45 = v5;
  __dsta = 0;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = v11 - 1;
    v13 = *(a1 + v12 + 160);
    __dsta = *(a1 + v12 + 160);
    *(a1 + 168) = v12;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dsta, 1uLL) & 1) == 0)
    {
      v25 = a1;
      v26 = a2;
      v27 = a4;
LABEL_66:
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v25, v26, v27);
      return 0;
    }

    v13 = __dsta;
  }

  if ((v13 - 7) <= 0x28)
  {
    v14 = v13 - 8;
LABEL_9:
    *__dst = v14;
    return 1;
  }

  if (v13 <= 49)
  {
    if (v13 != 48)
    {
      if (v13 == 49)
      {
        result = 0;
        v41 = 0;
        if (*(a1 + 40))
        {
          return result;
        }

        v15 = *(a1 + 168);
        if (v15)
        {
          v16 = 2;
          if (v15 < 2)
          {
            v16 = *(a1 + 168);
          }

          v17 = v15 - v16;
          if ((v15 - 1) >= (v15 - v16))
          {
            v18 = &v41;
            v36 = *(a1 + 168);
            do
            {
              *v18++ = *(a1 + 159 + v36);
              v37 = v36 - 2;
              --v36;
            }

            while (v37 >= v17);
          }

          else
          {
            v18 = &v41;
          }

          *(a1 + 168) = v17;
          if (v15 != 1)
          {
            goto LABEL_55;
          }

          v34 = 2 - v16;
        }

        else
        {
          v18 = &v41;
          v34 = 2;
        }

        if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v18, v34))
        {
LABEL_55:
          v14 = v41;
          goto LABEL_9;
        }

        v27 = "16-Bit Signed Integer";
        goto LABEL_65;
      }

      goto LABEL_32;
    }

    result = 0;
    v42 = 0;
    if (*(a1 + 40))
    {
      return result;
    }

    v14 = *(a1 + 168);
    if (v14)
    {
      v29 = v14 - 1;
      LOBYTE(v14) = *(a1 + v14 - 1 + 160);
      *(a1 + 168) = v29;
LABEL_48:
      v14 = v14;
      goto LABEL_9;
    }

    if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v42, 1uLL))
    {
      LOBYTE(v14) = v42;
      goto LABEL_48;
    }

    v27 = "8-Bit Signed Integer";
LABEL_65:
    v25 = a1;
    v26 = a2;
    goto LABEL_66;
  }

  if (v13 == 50)
  {
    result = 0;
    v40 = 0;
    if (*(a1 + 40))
    {
      return result;
    }

    v30 = *(a1 + 168);
    if (v30)
    {
      v31 = 4;
      if (v30 < 4)
      {
        v31 = *(a1 + 168);
      }

      v32 = v30 - v31;
      if ((v30 - 1) >= (v30 - v31))
      {
        v33 = &v40;
        v38 = *(a1 + 168);
        do
        {
          *v33++ = *(a1 + 159 + v38);
          v39 = v38 - 2;
          --v38;
        }

        while (v39 >= v32);
      }

      else
      {
        v33 = &v40;
      }

      *(a1 + 168) = v32;
      if (v30 > 3)
      {
        goto LABEL_62;
      }

      v35 = 4 - v31;
    }

    else
    {
      v33 = &v40;
      v35 = 4;
    }

    if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, v33, v35) & 1) == 0)
    {
      v27 = "32-Bit Signed Integer";
      goto LABEL_65;
    }

LABEL_62:
    v14 = v40;
    goto LABEL_9;
  }

  if (v13 != 51)
  {
LABEL_32:
    v28 = re::OPACK::toString(v13);
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, a4, v28);
    return 0;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v19 = *(a1 + 168);
    if (v19)
    {
      v20 = 8;
      if (v19 < 8)
      {
        v20 = *(a1 + 168);
      }

      v21 = v19 - v20;
      if ((v19 - 1) >= (v19 - v20))
      {
        v22 = *(a1 + 168);
        do
        {
          *__dst++ = *(a1 + 159 + v22);
          v23 = v22 - 2;
          --v22;
        }

        while (v23 >= v21);
      }

      *(a1 + 168) = v21;
      if (v19 > 7)
      {
        return 1;
      }

      v24 = 8 - v20;
    }

    else
    {
      v24 = 8;
    }

    if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, v24))
    {
      return 1;
    }

    v27 = "64-Bit Signed Integer";
    goto LABEL_65;
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<int>(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int32");
  if (result)
  {
    if (__dst == __dst)
    {
      *a3 = __dst;
      return 1;
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v9);
      if (v10)
      {
        v8 = *&v11[7];
      }

      else
      {
        v8 = v11;
      }

      re::DynamicString::format(v12, "Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v7, v8, "Int32", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v12);
      if (*&v12[0])
      {
        if (BYTE8(v12[0]))
        {
          (*(**&v12[0] + 40))();
        }

        memset(v12, 0, sizeof(v12));
      }

      if (v9)
      {
        if (v10)
        {
          (*(*v9 + 40))();
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<signed char>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<signed char>(_anonymous_namespace_ *a1, const char *a2, _BYTE *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int8");
  if (result)
  {
    if (__dst == __dst)
    {
      *a3 = __dst;
      return 1;
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v9);
      if (v10)
      {
        v8 = *&v11[7];
      }

      else
      {
        v8 = v11;
      }

      re::DynamicString::format(v12, "Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v7, v8, "Int8", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v12);
      if (*&v12[0])
      {
        if (BYTE8(v12[0]))
        {
          (*(**&v12[0] + 40))();
        }

        memset(v12, 0, sizeof(v12));
      }

      if (v9)
      {
        if (v10)
        {
          (*(*v9 + 40))();
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<short>(uint64_t a1, const char *a2, uint64_t a3, __int16 *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<short>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<short>(_anonymous_namespace_ *a1, const char *a2, _WORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int16");
  if (result)
  {
    if (__dst == __dst)
    {
      *a3 = __dst;
      return 1;
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v9);
      if (v10)
      {
        v8 = *&v11[7];
      }

      else
      {
        v8 = v11;
      }

      re::DynamicString::format(v12, "Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v7, v8, "Int16", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v12);
      if (*&v12[0])
      {
        if (BYTE8(v12[0]))
        {
          (*(**&v12[0] + 40))();
        }

        memset(v12, 0, sizeof(v12));
      }

      if (v9)
      {
        if (v10)
        {
          (*(*v9 + 40))();
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<int>(uint64_t a1, const char *a2, uint64_t a3, int *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<int>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<long long>(uint64_t a1, const char *a2, uint64_t a3, void *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v13 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v13, 0);
  if (v5)
  {
    if (a5)
    {
      __dst = 0;
      re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int64");
    }

    else
    {
      __dst = 0;
      if (re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "Int64"))
      {
        *a4 = __dst;
      }
    }

    for (i = v13; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned char>(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned char>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned char>(_anonymous_namespace_ *a1, const char *a2, _BYTE *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "UInt8");
  if (result)
  {
    if (__dst > 0xFF)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v9);
      if (v10)
      {
        v8 = *&v11[7];
      }

      else
      {
        v8 = v11;
      }

      re::DynamicString::format(v12, "Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v7, v8, "UInt8", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v12);
      if (*&v12[0])
      {
        if (BYTE8(v12[0]))
        {
          (*(**&v12[0] + 40))();
        }

        memset(v12, 0, sizeof(v12));
      }

      if (v9)
      {
        if (v10)
        {
          (*(*v9 + 40))();
        }
      }

      return 0;
    }

    else
    {
      *a3 = __dst;
      return 1;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned short>(uint64_t a1, const char *a2, uint64_t a3, __int16 *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned short>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned short>(_anonymous_namespace_ *a1, const char *a2, _WORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "UInt16");
  if (result)
  {
    if (__dst >> 16)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v9);
      if (v10)
      {
        v8 = *&v11[7];
      }

      else
      {
        v8 = v11;
      }

      re::DynamicString::format(v12, "Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v7, v8, "UInt16", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v12);
      if (*&v12[0])
      {
        if (BYTE8(v12[0]))
        {
          (*(**&v12[0] + 40))();
        }

        memset(v12, 0, sizeof(v12));
      }

      if (v9)
      {
        if (v10)
        {
          (*(*v9 + 40))();
        }
      }

      return 0;
    }

    else
    {
      *a3 = __dst;
      return 1;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned int>(uint64_t a1, const char *a2, uint64_t a3, int *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned int>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::readIntegerAs<unsigned int>(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::readInteger(a1, a2, &__dst, "UInt32");
  if (result)
  {
    if (HIDWORD(__dst))
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v9);
      if (v10)
      {
        v8 = *&v11[7];
      }

      else
      {
        v8 = v11;
      }

      re::DynamicString::format(v12, "Failed to deserialize %s. Integer of type %s expected. Value (%lld) is out of range.", v7, v8, "UInt32", __dst);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v12);
      if (*&v12[0])
      {
        if (BYTE8(v12[0]))
        {
          (*(**&v12[0] + 40))();
        }

        memset(v12, 0, sizeof(v12));
      }

      if (v9)
      {
        if (v10)
        {
          (*(*v9 + 40))();
        }
      }

      return 0;
    }

    else
    {
      *a3 = __dst;
      return 1;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, &v17, 0);
  if (v5)
  {
    if (a5)
    {
      v16 = 0;
      v12 = &v16;
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v10 = a1;
      v11 = a2;
      v12 = a4;
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::readUint64(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(a1);
    }

    if ((a5 & 2) == 0)
    {
      v14 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v14 - 48) != 2)
      {
        ++*(v14 - 16);
      }
    }
  }

  return v5;
}

uint64_t re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re::internal *a5, const re::TypeInfo *a6, int a7)
{
  if (a7)
  {
    v11 = *(a1 + 208);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__src);
    re::TypeInfo::TypeInfo(v33, v35);
    re::internal::translateType(&__src, v11, v33);
    if ((*(a1 + 64) & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, 0, &__src, &__src, 1);
    }

    return 0;
  }

  v15 = *a5;
  if (a5 == a6)
  {
    goto LABEL_8;
  }

  v16 = *a6;
  if (v15 == *a6)
  {
    v20 = **(a5 + 2);
    v21 = *(a6 + 2);
    v22 = *v21;
    if (v20 != *v21)
    {
      goto LABEL_21;
    }

    v24 = WORD1(v20) == WORD1(v22);
    v23 = (v22 ^ v20) & 0xFFFFFF00000000;
    v24 = v24 && v23 == 0;
    if (!v24)
    {
      goto LABEL_21;
    }

LABEL_8:
    re::TypeRegistry::typeInfo(v15, *(*(a5 + 2) + 80), &__src);
    re::TypeInfo::TypeInfo(v33, v35);
    __src = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      result = (*(*a1 + 72))(a1, a2, a3, &__src, v33, v33, 0);
      if (!result)
      {
        return result;
      }

      if ((re::internal::getEnumConstantIndex(a5, &__src, v17) & 0x80000000) == 0)
      {
        v18 = *(*(a5 + 2) + 8);
        p_src = &__src;
LABEL_12:
        memcpy(a4, p_src, v18);
        return 1;
      }

      re::TypeInfo::name(a5);
      goto LABEL_32;
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    v15 = *a5;
    goto LABEL_8;
  }

  v16 = *a6;
  v21 = *(a6 + 2);
LABEL_21:
  v25 = *(a1 + 208);
  re::TypeRegistry::typeInfo(v16, v21[10], &__src);
  re::TypeInfo::TypeInfo(v32, v35);
  re::internal::translateType(v33, v25, v32);
  if (*(v33[2] + 8) < 9u)
  {
    v32[0] = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      result = (*(*a1 + 72))(a1, a2, a3, v32, v33, v33, 0);
      if (!result)
      {
        return result;
      }

      EnumConstantIndex = re::internal::getEnumConstantIndex(a6, v32, v26);
      if ((EnumConstantIndex & 0x80000000) != 0)
      {
        re::TypeInfo::name(a6);
LABEL_32:
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Value %zu is not a valid enum constant of %s.");
        return 0;
      }

      v28 = EnumConstantIndex;
      v29 = *(*a6 + 856);
      if (v29)
      {
        v30 = re::internal::TypeTranslationTable::translateSerializedEnum(v29, a6, v28, a5);
        if (v30)
        {
          p_src = v30;
          v18 = *(*(a5 + 2) + 8);
          goto LABEL_12;
        }
      }

      __src = re::TypeInfo::enumConstants(a6);
      v35[0] = v31;
      re::Slice<re::EnumConstant>::operator[](&__src, v28);
      re::TypeInfo::name(a5);
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Serialized enum constant %s does not exist in runtime type %s.");
    }
  }

  else
  {
    re::TypeInfo::name(v33);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Enum type %s has invalid size: %zu bytes.");
  }

  return 0;
}

void re::EncoderOPACK<re::FixedArrayInputStream>::beginOptional(uint64_t result, const char *a2, uint64_t a3, _BYTE *a4, int a5)
{
  if ((*(result + 40) & 1) == 0)
  {
    v19 = 0;
    if ((re::EncoderOPACK<re::FixedArrayInputStream>::advance(result, a2, a3, &v19, 0) & 1) == 0)
    {
      *a4 = 0;
      __dst[0] = 3;
      v15 = a5;
      v16 = a2;
      v17 = 0u;
      v18 = 0u;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(result, __dst);
      return;
    }

    __dst[0] = 0;
    if (*(result + 40))
    {
      goto LABEL_14;
    }

    v9 = *(result + 168);
    if (v9)
    {
      v10 = v9 - 1;
      v11 = *(result + v9 - 1 + 160);
      *(result + 168) = v10;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, __dst, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(result, a2, "Optional");
LABEL_14:
        v13 = *a4;
        __dst[0] = 3;
        v15 = a5;
        v16 = a2;
        *&v17 = 0;
        v18 = 0uLL;
        *(&v17 + 1) = v13;
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(result, __dst);
        *(*(result + 128) + 48 * *(result + 112) - 32) = v19;
        return;
      }

      v11 = __dst[0];
    }

    if (v11 == 4)
    {
      *a4 = 0;
    }

    else
    {
      *a4 = 1;
      v12 = *(result + 168);
      if (v12 <= 7)
      {
        *(result + 168) = v12 + 1;
        *(result + v12 + 160) = v11;
      }
    }

    goto LABEL_14;
  }
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 3);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v8);
      if (v9)
      {
        v6 = *&v10[7];
      }

      else
      {
        v6 = v10;
      }

      if (*(*(v1 + 16) + 48 * *(v1 + 14) - 24) <= 0)
      {
        v7 = "Optional should not have a value.";
      }

      else
      {
        v7 = "Optional requires a value.";
      }

      re::DynamicString::format(v11, "Failed to serialize optional type %s. %s", v5, v6, v7);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      result = v8;
      if (v8 && (v9 & 1) != 0)
      {
        return (*(*v8 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v21[5] = v5;
    v21[6] = v6;
    v21[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v21, 0))
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::readDataTag(a1, a2, a4);
      v12 = *a4;
      v14[0] = 4;
      v15 = a5;
      v16 = a2;
      v17 = 0;
      v19 = 0;
      v20 = 0;
      v18 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v21[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeBLOB(uint64_t result, char *a2, char a3)
{
  if (*(result + 40))
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 128) + 48 * *(result + 112);
  v6 = *(v5 - 24);
  v7 = *(result + 168);
  if (v7)
  {
    if (v7 >= v6)
    {
      v8 = *(v5 - 24);
    }

    else
    {
      v8 = *(result + 168);
    }

    v9 = v7 - v8;
    if ((v7 - 1) >= (v7 - v8))
    {
      do
      {
        *a2++ = *(result + 159 + v7);
        v10 = v7 - 2;
        --v7;
      }

      while (v10 >= v9);
    }

    *(result + 168) = v9;
    v11 = v6 - v8;
    if (v6 == v8)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v11 = *(v5 - 24);
  if (v6)
  {
LABEL_11:
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, v11);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v4, 0, "BLOB");
    }
  }

LABEL_15:
  if ((a3 & 2) == 0)
  {
    v12 = *(v4 + 16) + 48 * *(v4 + 14);
    if (*(v12 - 48) != 2)
    {
      *(v12 - 16) += v6;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endBLOB(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 4);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v8);
      if (v9)
      {
        v6 = *&v10[7];
      }

      else
      {
        v6 = v10;
      }

      v7 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(v11, "Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v5, v6, *(v7 - 24), *(v7 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      result = v8;
      if (v8 && (v9 & 1) != 0)
      {
        return (*(*v8 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(uint64_t a1, const char *a2, uint64_t a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v21[5] = v5;
    v21[6] = v6;
    v21[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v21, 0))
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::readArrayTag(a1, a2, a4);
      v12 = *a4;
      v14[0] = 5;
      v15 = a5;
      v16 = a2;
      v17 = 0;
      v19 = 0;
      v20 = 0;
      v18 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v21[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endArray(_anonymous_namespace_ *result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 14);
  v4 = *(v2 + 48 * v3 - 16);
  if (v4 == *(v2 + 48 * v3 - 24))
  {
    if (v4 < 0xF)
    {
LABEL_22:
      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 5);
      v13 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v13 - 48) != 2)
      {
        ++*(v13 - 16);
      }

      return result;
    }

    LOBYTE(__dst[0]) = 0;
    v5 = *(result + 21);
    if (v5)
    {
      v6 = v5 - 1;
      v7 = *(result + v6 + 160);
      LOBYTE(__dst[0]) = v7;
      *(v1 + 21) = v6;
    }

    else
    {
      if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, __dst, 1uLL))
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v1, 0, "Array");
LABEL_21:
        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
        goto LABEL_22;
      }

      v7 = LOBYTE(__dst[0]);
    }

    if (v7 != 3)
    {
      v11 = re::OPACK::toString(v7);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v1, "Array", v11);
    }

    goto LABEL_21;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v14);
  if (v15)
  {
    v9 = *&v16[7];
  }

  else
  {
    v9 = v16;
  }

  v10 = *(v1 + 16) + 48 * *(v1 + 14);
  re::DynamicString::format(__dst, "Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", v8, v9, *(v10 - 24), *(v10 - 16));
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __dst);
  if (*&__dst[0])
  {
    if (BYTE8(__dst[0]))
    {
      (*(**&__dst[0] + 40))();
    }

    memset(__dst, 0, sizeof(__dst));
  }

  result = v14;
  if (v14 && (v15 & 1) != 0)
  {
    return (*(*v14 + 40))();
  }

  return result;
}

BOOL re::anonymous namespace::resizeArray<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, void ***a2, re::ArrayAccessor *a3, const re::TypeInfo *a4, const re::TypeInfo *a5)
{
  if (a4 == a5)
  {
    return 1;
  }

  v17[10] = v5;
  v17[11] = v6;
  v11 = *(a3 + 2);
  if ((*(v11 + 92) & 0xFFFFFF) != 0)
  {
    re::TypeRegistry::typeInfo(*a3, *(v11 + 80), &v16);
    re::TypeInfo::TypeInfo(v14, v17);
    v13 = !is_mul_ok(*(v15 + 8), a5);
    if (is_mul_ok(*(v15 + 8), a5))
    {
      re::ArrayAccessor::reset(a3, a2, *(a1 + 48), a5);
    }

    else
    {
      re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", *(v15 + 8), a5);
    }

    return !v13;
  }

  else
  {
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Invalid array size. Expected size = %zu, actual size = %zu", a4, a5);
    return 0;
  }
}

uint64_t *re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setError(_anonymous_namespace_ *a1, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  re::DynamicString::setCapacity(&v18, 0);
  va_copy(v17, va);
  re::DynamicString::vassignf(&v18, a3, va);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, a2, &v10);
  if (v11)
  {
    v7 = *&v12[7];
  }

  else
  {
    v7 = v12;
  }

  if (v19)
  {
    v8 = v20;
  }

  else
  {
    v8 = &v19 + 1;
  }

  re::DynamicString::format(&v13, "Failed to %s %s. Reason: %s", v6, "deserialize", v7, v8);
  *&v16[0] = 400;
  *(&v16[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v16[1] = v13;
  *(&v16[2] + 1) = v15;
  *(&v16[1] + 8) = v14;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v16);
  if (*&v16[1])
  {
    if (BYTE8(v16[1]))
    {
      (*(**&v16[1] + 40))();
    }

    memset(&v16[1], 0, 32);
  }

  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  result = v18;
  if (v18)
  {
    if (v19)
    {
      return (*(*v18 + 40))();
    }
  }

  return result;
}

BOOL re::anonymous namespace::resizeList<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>(uint64_t a1, uint64_t a2, const re::TypeInfo *a3, uint64_t a4, unint64_t a5)
{
  if (a4 == a5)
  {
    return 1;
  }

  v18[10] = v5;
  v18[11] = v6;
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), &v17);
  re::TypeInfo::TypeInfo(v15, v18);
  v12 = !is_mul_ok(*(v16 + 8), a5);
  if (is_mul_ok(*(v16 + 8), a5))
  {
    v13 = *(a1 + 48);
    v14 = *(*(a3 + 2) + 96);
    re::TypeInfo::TypeInfo(&v17, a3);
    v14(a2, &v17, v13, a5);
  }

  else
  {
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", *(v16 + 8), a5);
  }

  return !v12;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginDictionary(uint64_t a1, const char *a2, uint64_t a3, char *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v21[5] = v5;
    v21[6] = v6;
    v21[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v21, 0))
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::readDictionaryTag(a1, a2, a4);
      v12 = *a4;
      v14[0] = 6;
      v15 = a5;
      v16 = a2;
      v17 = 0;
      v19 = 0;
      v20 = 0;
      v18 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v21[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endDictionary(_anonymous_namespace_ *result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  v2 = *(result + 16);
  v3 = *(result + 14);
  v4 = *(v2 + 48 * v3 - 16);
  if (v4 == *(v2 + 48 * v3 - 24))
  {
    if (v4 < 0xF)
    {
LABEL_22:
      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 6);
      v13 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v13 - 48) != 2)
      {
        ++*(v13 - 16);
      }

      return result;
    }

    LOBYTE(__dst[0]) = 0;
    v5 = *(result + 21);
    if (v5)
    {
      v6 = v5 - 1;
      v7 = *(result + v6 + 160);
      LOBYTE(__dst[0]) = v7;
      *(v1 + 21) = v6;
    }

    else
    {
      if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, __dst, 1uLL))
      {
        re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v1, 0, "Dictionary");
LABEL_21:
        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
        goto LABEL_22;
      }

      v7 = LOBYTE(__dst[0]);
    }

    if (v7 != 3)
    {
      v11 = re::OPACK::toString(v7);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v1, "Dictionary", v11);
    }

    goto LABEL_21;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v14);
  if (v15)
  {
    v9 = *&v16[7];
  }

  else
  {
    v9 = v16;
  }

  v10 = *(v1 + 16) + 48 * *(v1 + 14);
  re::DynamicString::format(__dst, "Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", v8, v9, *(v10 - 24), *(v10 - 16));
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __dst);
  if (*&__dst[0])
  {
    if (BYTE8(__dst[0]))
    {
      (*(**&__dst[0] + 40))();
    }

    memset(__dst, 0, sizeof(__dst));
  }

  result = v14;
  if (v14 && (v15 & 1) != 0)
  {
    return (*(*v14 + 40))();
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v22[5] = v4;
  v22[6] = v5;
  v22[0] = 0;
  result = re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v22, 0);
  if (result)
  {
    __dst[0] = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v10 = *(a1 + 168);
      if (v10)
      {
        v11 = v10 - 1;
        v12 = *(a1 + v11 + 160);
        __dst[0] = *(a1 + v11 + 160);
        *(a1 + 168) = v11;
LABEL_9:
        if (v12 == 223)
        {
          v13 = 1;
          goto LABEL_13;
        }

        if (v12 == 239)
        {
          v13 = 2;
LABEL_13:
          __dst[0] = v13;
          v16 = a4;
          v17 = a2;
          v18 = 0;
          v19 = 0;
          v20 = 0xFFFFFFFF80000000;
          v21 = 0;
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, __dst);
          *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v22[0];
          return 1;
        }

        v14 = re::OPACK::toString(v12);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(a1, "Object", v14);
        return 0;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 1uLL))
      {
        v12 = __dst[0];
        goto LABEL_9;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Object");
    }

    return 0;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::endObject(uint64_t result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  __dst = 0;
  v2 = result + 160;
  while (1)
  {
    v3 = *(v1 + 168);
    if (v3)
    {
      v4 = v3 - 1;
      v5 = *(v2 + v3 - 1);
      __dst = v5;
      *(v1 + 168) = v4;
      goto LABEL_7;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(v1, &__dst, 1uLL);
    if (!result)
    {
      break;
    }

    v5 = __dst;
LABEL_7:
    if (v5 != 3)
    {
      v6 = *(v1 + 168);
      if (v6 <= 7)
      {
        *(v1 + 168) = v6 + 1;
        *(v2 + v6) = v5;
      }

      result = re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      if (*(v1 + 40) != 1)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v1, 0, "Object");
LABEL_13:
  if ((*(v1 + 40) & 1) == 0)
  {
    v7 = *(v1 + 128);
    v8 = *(v1 + 112);
    v9 = *(v7 + 48 * v8 - 32);
    if (v9)
    {
      do
      {
        --v9;
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      while (v9);
      v7 = *(v1 + 128);
      v8 = *(v1 + 112);
    }

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, *(v7 + 48 * v8 - 48));
    v10 = *(v1 + 128) + 48 * *(v1 + 112);
    if (*(v10 - 48) != 2)
    {
      ++*(v10 - 16);
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, re::DynamicString *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x22C6ED80D0CLL || (v19 = v18[1], v19 != "StringID") && strcmp(v19, "StringID"))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    goto LABEL_24;
  }

LABEL_14:
  if (!a7)
  {
    v25 = *(a4 + 1);
    if (v25)
    {
      v26 = v25 >> 1;
    }

    else
    {
      v26 = v25 >> 1;
    }

    v33 = v26;
    v27 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, a3, &v33, 0);
    v21 = 0;
    if (!v27)
    {
      return v21 & 1;
    }

    v28 = v33;
    if (v28 <= (*(**(a1 + 24) + 64))(*(a1 + 24)))
    {
      if (!*a4)
      {
        v31 = v33;
        *a4 = *(a1 + 48);
        re::DynamicString::setCapacity(a4, v31 + 1);
      }

      re::DynamicString::resize(a4, v33, 0);
      if (!v33)
      {
        goto LABEL_33;
      }

      if (*(a4 + 8))
      {
        v23 = *(a4 + 2);
      }

      else
      {
        v23 = a4 + 9;
      }

      v22 = a1 + 24;
      v24 = 0;
      goto LABEL_32;
    }

    v29 = v33;
    v30 = (*(**(a1 + 24) + 64))(*(a1 + 24));
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v29, v30);
LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  v33 = 0;
  v20 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, a3, &v33, 0);
  v21 = 0;
  if (v20)
  {
    if (!v33)
    {
LABEL_33:
      re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_32:
    re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(v22, v23, v24);
    goto LABEL_33;
  }

  return v21 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CB5E78;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::FixedArrayInputStream>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, re *a5, re *a6, uint64_t a7)
{
  v14 = re::TypeMemberCollection::TypeMemberCollection(&v29, *a5, *(a5 + 2));
  re::TypeMemberCollection::operator[](v14, 0, &v27);
  v15 = *(v28 + 24);
  re::TypeRegistry::typeInfo(v27, *v28, &v29);
  re::TypeInfo::TypeInfo(v26, v30);
  if (a5 == a6)
  {
    goto LABEL_4;
  }

  if (*a5 == *a6)
  {
    v18 = **(a5 + 2);
    v19 = *(a6 + 2);
    v20 = *v19;
    if (v18 != *v19)
    {
      goto LABEL_14;
    }

    v22 = WORD1(v18) == WORD1(v20);
    v21 = (v20 ^ v18) & 0xFFFFFF00000000;
    v22 = v22 && v21 == 0;
    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v26, a7);
    }

    return 0;
  }

  if (re::areSameTranslatedVersion(a5, a6, v16))
  {
    goto LABEL_4;
  }

  v19 = *(a6 + 2);
LABEL_14:
  if (*(v19 + 96) != 1)
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

  re::TypeMemberCollection::TypeMemberCollection(v23, *a6, v19);
  re::TypeMemberCollection::operator[](v23, 0, v24);
  re::TypeRegistry::typeInfo(v24[0], *v24[2], &v29);
  re::TypeInfo::TypeInfo(v25, v30);
  if (a1[64])
  {
    return 0;
  }

  return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v25, a7);
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginString(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v21[5] = v5;
    v21[6] = v6;
    v21[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v21, 0))
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::readStringTag(a1, a2, a4);
      v12 = *a4;
      v14[0] = 8;
      v15 = a5;
      v16 = a2;
      v17 = 0;
      v19 = 0;
      v20 = 0;
      v18 = v12;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v14);
      *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v21[0];
      v7 = *(a1 + 40) ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(uint64_t result, char *a2, char a3)
{
  if (*(result + 40))
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 128) + 48 * *(result + 112);
  v6 = *(v5 - 24);
  v7 = *(result + 168);
  if (v7)
  {
    if (v7 >= v6)
    {
      v8 = *(v5 - 24);
    }

    else
    {
      v8 = *(result + 168);
    }

    v9 = v7 - v8;
    if ((v7 - 1) >= (v7 - v8))
    {
      do
      {
        *a2++ = *(result + 159 + v7);
        v10 = v7 - 2;
        --v7;
      }

      while (v10 >= v9);
    }

    *(result + 168) = v9;
    v11 = v6 - v8;
    if (v6 == v8)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v11 = *(v5 - 24);
  if (v6)
  {
LABEL_11:
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, v11);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(v4, 0, "String");
    }
  }

LABEL_15:
  if ((a3 & 2) == 0)
  {
    v12 = *(v4 + 16) + 48 * *(v4 + 14);
    if (*(v12 - 48) != 2)
    {
      *(v12 - 16) += v6;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 8);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v8);
      if (v9)
      {
        v6 = *&v10[7];
      }

      else
      {
        v6 = v10;
      }

      v7 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(v11, "Failed to serialize string %s. Expected number of characters: %lld. Actual number of characters: %lld.", v5, v6, *(v7 - 24), *(v7 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v11);
      if (*&v11[0])
      {
        if (BYTE8(v11[0]))
        {
          (*(**&v11[0] + 40))();
        }

        memset(v11, 0, sizeof(v11));
      }

      result = v8;
      if (v8 && (v9 & 1) != 0)
      {
        return (*(*v8 + 40))();
      }
    }
  }

  return result;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CB5E78;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if ((*(*(result + 1) + 64) & 1) == 0)
  {
    v9 = result;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    re::DynamicString::setCapacity(&v15, 0);
    va_copy(v14, va);
    re::DynamicString::vappendf(&v15, a2, va);
    v10 = *(v9 + 1);
    *&v11 = 400;
    *(&v11 + 1) = re::FoundationErrorCategory(void)::instance;
    re::DynamicString::DynamicString(&v12, &v15);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v10 + 24, &v11);
    if (v12 && (v13 & 1) != 0)
    {
      (*(*v12 + 40))();
    }

    result = v15;
    if (v15)
    {
      if (v16)
      {
        return (*(*v15 + 40))(v15, v17);
      }
    }
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginField(uint64_t a1, int a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  *(v3 + 16 * v4 - 8) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 16 * v4 - 16) = a3;
  return 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), 0);
  if (v3)
  {
    v5.n128_u64[0] = "";
    v5.n128_u32[2] = 0;
    re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, &v5);
  }

  return v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::endObject(uint64_t a1)
{
  v1 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v1 + 2;
  return re::EncoderOPACK<re::FixedArrayInputStream>::endObject(*(a1 + 8) + 24);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginArray(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::beginArray(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderOPACK<re::FixedArrayInputStream>::endArray((*(a1 + 8) + 24));
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginDictionary(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, (v4 + 16 * *(a1 + 40) - 16));
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::beginDictionary(*(a1 + 8) + 24, *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), a2, 0);
  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginDictionaryEntry(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext::beginDictionaryEntry(v1 + 16 * *(a1 + 40) - 16, *(a1 + 8) + 24);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 16 * *(result + 40);
  *(v2 - 8) = 1;
  *(v2 - 16) = "value";
  return result;
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::endDictionary(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderOPACK<re::FixedArrayInputStream>::endDictionary((*(a1 + 8) + 24));
    v4 = *(a1 + 48);
    --*(a1 + 40);
    *(a1 + 48) = v4 + 2;
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginData(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::beginBLOB(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginOptional(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 48))
  {
    v1 = a1 + 56;
  }

  else
  {
    v1 = *(a1 + 64);
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::beginOptional(*(a1 + 8) + 24, *(v1 + 16 * *(a1 + 40) - 16), *(v1 + 16 * *(a1 + 40) - 8), &v3, 0);
  return v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::beginString(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::beginString(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeBool(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, __int16 *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, int *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  result = re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v3 + 16 * *(a1 + 40) - 16), *(v3 + 16 * *(a1 + 40) - 8), &v5, 0);
  *a2 = v5;
  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::operator>>(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::deserializeString(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(*(a1 + 8) + 24, a2, 0);
  }

  v4 = (*(a1 + 8) + 24);

  return re::EncoderOPACK<re::FixedArrayInputStream>::endString(v4);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::deserializeData(uint64_t a1, char *a2)
{
  re::EncoderOPACK<re::FixedArrayInputStream>::serializeBLOB(*(a1 + 8) + 24, a2, 0);
  v3 = (*(a1 + 8) + 24);

  return re::EncoderOPACK<re::FixedArrayInputStream>::endBLOB(v3);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(*(a1 + 8) + 24, *(v6 + 16 * *(a1 + 40) - 16), *(v6 + 16 * *(a1 + 40) - 8), &v8, 0);
  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
  return re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>>::read(uint64_t a1, uint64_t a2, re **this)
{
  v17[0] = 0;
  v5 = *(a1 + 16);
  if (this[4] == v5)
  {
    re::TypeRegistry::typeInfo(v5, this + 4, &v15);
    re::Optional<re::TypeInfo>::operator=(v17, &v15);
  }

  else
  {
    re::getPrettyTypeName(&v13, this);
    re::TypeRegistry::typeInfo(&v15, *(a1 + 16), &v13);
    re::Optional<re::TypeInfo>::operator=(v17, &v15);
    if (v13 && (v14 & 1) != 0)
    {
      (*(*v13 + 40))();
    }
  }

  if (v17[0])
  {
    v6 = *(a1 + 16);
    v7 = re::TypeInfo::name(v18);
    re::TypeRegistry::typeInfo(&v15, v6, v7);
    if (v15)
    {
      result = *(a1 + 8);
      if (*(a1 + 48))
      {
        v9 = a1 + 56;
      }

      else
      {
        v9 = *(a1 + 64);
      }

      if ((result[64] & 1) == 0)
      {
        return (*(*result + 72))(result, *(v9 + 16 * *(a1 + 40) - 16), *(v9 + 16 * *(a1 + 40) - 8), a2, v18, &v16, 0);
      }
    }

    else
    {
      v11 = re::TypeInfo::name(v18)[1];
      if (*(a1 + 48))
      {
        v12 = a1 + 56;
      }

      else
      {
        v12 = *(a1 + 64);
      }

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', reading field '%s'(%d)", v11, *(v12 + 16 * *(a1 + 40) - 16), *(v12 + 16 * *(a1 + 40) - 8));
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v10 = a1 + 56;
    }

    else
    {
      v10 = *(a1 + 64);
    }

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 16 * *(a1 + 40) - 16), *(v10 + 16 * *(a1 + 40) - 8));
  }

  return result;
}

uint64_t re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(uint64_t a1, const char *a2, uint64_t a3, int *a4, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v26[5] = v5;
    v26[6] = v6;
    v26[0] = 0;
    if (!re::EncoderOPACK<re::FixedArrayInputStream>::advance(a1, a2, a3, v26, 0))
    {
      v7 = 0;
      return v7 & 1;
    }

    __dst[0] = 0;
    if ((*(a1 + 40) & 1) == 0)
    {
      v12 = *(a1 + 168);
      if (v12)
      {
        v13 = v12 - 1;
        v14 = *(a1 + v12 - 1 + 160);
        __dst[0] = v14;
        *(a1 + 168) = v13;
        goto LABEL_10;
      }

      if (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 1uLL))
      {
        v14 = __dst[0];
LABEL_10:
        if (v14 == 4)
        {
          *a4 = 0;
        }

        else
        {
          if ((v14 - 7) > 0x2C)
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          *a4 = v15;
          v16 = *(a1 + 168);
          if (v16 <= 7)
          {
            *(a1 + 168) = v16 + 1;
            *(a1 + v16 + 160) = v14;
          }
        }

        goto LABEL_18;
      }

      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, a2, "Optional");
    }

LABEL_18:
    v17 = *a4 != 0;
    __dst[0] = 9;
    v20 = a5;
    v21 = a2;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    v23 = v17;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, __dst);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = v26[0];
    v7 = *(a1 + 40) ^ 1;
    return v7 & 1;
  }

  v7 = 0;
  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::FixedArrayInputStream>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::FixedArrayInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 9);
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v4 - 48) != 2)
      {
        ++*(v4 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v7);
      if (v8)
      {
        v6 = *&v9[7];
      }

      else
      {
        v6 = v9;
      }

      re::DynamicString::format(v10, "Failed to deserialize pointer %s. No value was provided.", v5, v6);
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v10);
      if (*&v10[0])
      {
        if (BYTE8(v10[0]))
        {
          (*(**&v10[0] + 40))();
        }

        memset(v10, 0, sizeof(v10));
      }

      result = v7;
      if (v7 && (v8 & 1) != 0)
      {
        return (*(*v7 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(_BYTE *a1, uint64_t a2, re::TypeInfo *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), &v21);
  if (v21 == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), &v23), v23 == 1))
    {
      if (re::EncoderOPACK<re::FixedArrayInputStream>::beginObject((a1 + 24), "@super", 0, 0))
      {
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, v18, a4);
        re::EncoderOPACK<re::FixedArrayInputStream>::endObject((a1 + 24));
      }
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v18, *a3, *(a3 + 2));
  if (v20)
  {
    for (i = 0; i < v20; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v18, i, &v16);
      if (*(v17 + 28) == 1)
      {
        v10 = *(v17 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v17 + 32);
        v12 = *(v17 + 24);
        re::TypeRegistry::typeInfo(v16, *v17, &v23);
        re::TypeInfo::TypeInfo(v15, &v24);
        if ((a1[64] & 1) != 0 || (result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v15, v15, a4), (result & 1) == 0))
        {
          result = re::TypeInfo::renamedObjectMembers(a3);
          if (v13)
          {
            v14 = (result + 16);
            while (i != *v14)
            {
              v14 += 6;
              if (!--v13)
              {
                goto LABEL_22;
              }
            }

            if ((a1[64] & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, *(v14 - 1), v11, a2 + v12, v15, v15, a4);
            }
          }
        }
      }

LABEL_22:
      ;
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(_BYTE *a1, uint64_t a2, re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5)
{
  v53 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), &v45);
  re::TypeRegistry::typeInfo(*a4, *(*(a4 + 2) + 80), &v41);
  if (v41 == 1)
  {
    if ((v45 & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v42)[1];
      v12 = re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Base class %s removed from type %s.", v11, v12[1]);
    }

    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginObject((a1 + 24), "@super", 0, 0))
    {
      if (v46 == v42)
      {
        v14 = *v48;
        v15 = *v44;
        if (*v48 == *v44)
        {
          v17 = WORD1(v14) == WORD1(v15);
          v16 = (v15 ^ v14) & 0xFFFFFF00000000;
          v17 = v17 && v16 == 0;
          if (v17)
          {
            goto LABEL_6;
          }
        }
      }

      else if (re::areSameTranslatedVersion(&v46, &v42, v10))
      {
LABEL_6:
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, &v46, a5);
LABEL_16:
        re::EncoderOPACK<re::FixedArrayInputStream>::endObject((a1 + 24));
        goto LABEL_17;
      }

      if (v47 == v43)
      {
        re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, &v46, &v42, a5);
      }

      else
      {
        v18 = re::TypeInfo::name(&v46)[1];
        v19 = re::TypeInfo::name(&v42);
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v18, v19[1]);
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  re::TypeMemberCollection::TypeMemberCollection(v40, *a3, *(a3 + 2));
  result = re::TypeMemberCollection::TypeMemberCollection(v38, *a4, *(a4 + 2));
  if (v39)
  {
    for (i = 0; i < v39; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v38, i, v36);
      if (*(v37 + 28) == 1)
      {
        v21 = *(v37 + 16);
        if (strlen(v21) >= 3 && *v21 == 109)
        {
          v21 += 2 * (*(v21 + 1) == 95);
        }

        v22 = *(v37 + 32);
        v23 = *(*a4 + 856);
        if (!v23 || (v23 = re::internal::TypeTranslationTable::translateMember(v23, v36), v23 == -1))
        {
          v27 = *re::foundationSerializationLogObjects(v23);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = v27;
            v29 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v50 = v29;
            v51 = 2080;
            v52 = v21;
            _os_log_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v30 = *(a1 + 26);
          re::TypeRegistry::typeInfo(v36[0], *v37, buf);
          re::TypeInfo::TypeInfo(v34, &v50 + 4);
          result = re::internal::translateType(buf, v30, v34);
          if ((a1[64] & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v40, v23, v34);
          v24 = *(v35 + 24);
          re::TypeRegistry::typeInfo(v34[0], *v35, buf);
          re::TypeInfo::TypeInfo(v33, &v50 + 4);
          re::TypeRegistry::typeInfo(v36[0], *v37, buf);
          re::TypeInfo::TypeInfo(v32, &v50 + 4);
          if (a1[64] == 1 || (result = (*(*a1 + 72))(a1, v21, v22, a2 + v24, v33, v32, a5), (result & 1) == 0))
          {
            result = re::TypeInfo::renamedObjectMembers(a4);
            if (v25)
            {
              v26 = (result + 16);
              while (i != *v26)
              {
                v26 += 6;
                if (!--v25)
                {
                  goto LABEL_37;
                }
              }

              v31 = *(v26 - 1);
              re::TypeRegistry::typeInfo(v34[0], *v35, buf);
              re::TypeInfo::TypeInfo(v33, &v50 + 4);
              re::TypeRegistry::typeInfo(v36[0], *v37, buf);
              result = re::TypeInfo::TypeInfo(v32, &v50 + 4);
              if ((a1[64] & 1) == 0)
              {
                result = (*(*a1 + 72))(a1, v31, v22, a2 + v24, v33, v32, a5);
              }
            }
          }
        }
      }

LABEL_37:
      ;
    }
  }

  return result;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::deserializeSharedObjects(uint64_t result)
{
  if ((*(result + 64) & 1) == 0)
  {
    v1 = result;
    result = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(result + 24, "@shared", 20, 0);
    if (result)
    {
      v2 = *(v1 + 56);
      v55 = 0;
      v56 = 0;
      v53 = v2;
      v54 = 0;
      re::DynamicString::setCapacity(&v53, 8uLL);
      LODWORD(v47) = 0;
      v3 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v1 + 400, &v47);
      if (v3)
      {
        *(&v52 + 1) = **(v3 + 24);
      }

      else
      {
        *(&v52 + 1) = 0xFFFFFFFFLL;
      }

      if (*(v1 + 376))
      {
        v4 = 0;
        v5 = 0;
        LODWORD(v6) = *(v1 + 428) - 1;
        v7 = "%u";
        do
        {
          v8 = (*(v1 + 392) + v4);
          v47 = *v8;
          re::TypeInfo::TypeInfo(v48, (v8 + 1));
          re::TypeInfo::TypeInfo(v50, (v8 + 3));
          v51 = *(v8 + 40);
          if ((v47 & 0x80000000) != 0)
          {
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v1, 0, "Invalid referenceID %u.");
            goto LABEL_71;
          }

          re::TypeRegistry::typeInfo(v48[0], *(v49 + 80), &v37);
          re::TypeInfo::TypeInfo(v46, &v38);
          re::TypeRegistry::typeInfo(v50[0], v50[2][10], &v37);
          re::TypeInfo::TypeInfo(&v42, &v38);
          if (v47 > v6)
          {
            re::DynamicString::assignf(&v53, v7, v47);
            v6 = v47;
            if (v51 == 1)
            {
              if (v54)
              {
                v9 = v55;
              }

              else
              {
                v9 = &v54 + 1;
              }

              if ((re::internal::deserializePolymorphicObject<re::EncoderOPACK<re::FixedArrayInputStream>,false>(v1, v9, v47, *(&v47 + 1), v48, v46, &v42, HIBYTE(v51), 0) & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            else
            {
              v10 = v7;
              v11 = **(&v47 + 1);
              if (!**(&v47 + 1))
              {
                Instance = re::TypeInfo::createInstance(v46, *(v1 + 48), *(v1 + 200));
                **(&v47 + 1) = Instance;
                v11 = **(&v47 + 1);
              }

              v14 = v54;
              v13 = v55;
              re::TypeRegistry::typeInfo(v48[0], *(v49 + 80), &v37);
              re::TypeInfo::TypeInfo(v41, &v38);
              if (*(v1 + 64))
              {
                goto LABEL_69;
              }

              if (v14)
              {
                v15 = v13;
              }

              else
              {
                v15 = &v54 + 1;
              }

              v16 = (*(*v1 + 72))(v1, v15, v6, v11, v41, &v42, 0);
              v7 = v10;
              if ((v16 & 1) == 0)
              {
LABEL_64:
                if ((*(v1 + 64) & 1) == 0)
                {
                  if (v54)
                  {
                    v34 = v55;
                  }

                  else
                  {
                    v34 = &v54 + 1;
                  }

                  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v1, v34, "Failed to deserialize shared object (reference ID = %d).", v6);
                }

LABEL_69:
                if (**(&v47 + 1))
                {
                  re::TypeInfo::releaseInstance(v46, **(&v47 + 1), *(v1 + 48), *(v1 + 200));
                  **(&v47 + 1) = 0;
                }

                goto LABEL_71;
              }
            }

            v17 = **(&v47 + 1);
            v41[0] = v6;
            v37 = v17;
            re::TypeInfo::TypeInfo(&v38, v46);
            re::TypeInfo::TypeInfo(v40, &v42);
            v40[16] = v51;
            re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(v1 + 400, v41, &v37);
          }

          ++v5;
          v18 = *(v1 + 376);
          v4 += 88;
        }

        while (v18 > v5);
        *&v52 = 0;
        *(&v52 + 1) = 0xFFFFFFFFLL;
        if (v18)
        {
          v19 = 0;
          v20 = *(v1 + 392);
          v21 = 88 * v18;
          v22 = 0xFFFFFFFFLL;
          do
          {
            re::TypeRegistry::typeInfo(*(v20 + 2), *(*(v20 + 4) + 80), &v47);
            re::TypeInfo::TypeInfo(&v37, &v47 + 8);
            re::TypeRegistry::typeInfo(*(v20 + 6), *(*(v20 + 8) + 80), &v47);
            re::TypeInfo::TypeInfo(v46, &v47 + 8);
            v23 = *v20;
            if (v23 == v22)
            {
              v36 = v52;
              if (!re::internal::areCompatible(v20 + 2, &v36))
              {
                re::TypeInfo::name(&v37);
                re::TypeRegistry::typeName(*(v1 + 208), &v52);
                re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v1, 0, "Invalid reference. Objects are not compatible. Expected type %s. Actual type %s.");
                goto LABEL_71;
              }

              v24 = **(v20 + 1);
              if (v24)
              {
                v25 = v24 == v19;
              }

              else
              {
                v25 = 1;
              }

              if (!v25)
              {
                re::TypeInfo::releaseInstance(&v37, v24, *(v1 + 48), *(v1 + 200));
              }

              re::TypeInfo::TypeInfo(&v47, &v37);
              if (*(v20 + 80) == 1)
              {
                if (!v52)
                {
                  re::TypeInfo::name(&v37);
                  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v1, 0, "Invalid reference. Polymorphic type %s has invalid actual type.");
                  goto LABEL_71;
                }

                LODWORD(v42) = v22;
                v26 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(v1 + 400, &v42);
                if (!v26)
                {
                  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v1, 0, "Invalid reference. No such object %z", v22);
                  goto LABEL_71;
                }

                re::TypeInfo::operator=(&v47, v26 + 8);
              }

              v27 = *(v20 + 1);
              if ((*(v39 + 49) & 2) != 0)
              {
                *v27 = v19;
                v31 = v39[4];
                if (v31)
                {
                  v31(v19);
                }

                if (*(v20 + 80) == 1)
                {
                  v32 = *(v20 + 1);
                  v33 = *v48[0];
                  v35[0] = v47;
                  v35[1] = v33;
                  re::TypeInfo::setActualTypeForPointer(v20 + 2, v32, v35);
                }
              }

              else
              {
                if (*v27)
                {
                  if (*(v20 + 80) == 1)
                  {
                    re::TypeInfo::getActualTypeFromPointer(&v42, &v37, *v27);
                    if (v42 != v47 || (v28 = *v48[0], v43 != *v48[0]) || v44 != WORD1(v28) || ((v45 ^ HIDWORD(v28)) & 0xFFFFFF) != 0)
                    {
                      re::TypeInfo::releaseInstance(&v37, **(v20 + 1), *(v1 + 48), 0);
                    }
                  }
                }

                v29 = **(v20 + 1);
                if (!v29)
                {
                  **(v20 + 1) = re::TypeInfo::createInstance(&v47, *(v1 + 48), *(v1 + 200));
                  v29 = **(v20 + 1);
                }

                re::TypeInfo::copy(&v47, v29, v19, *(v1 + 48), *(v1 + 200));
              }
            }

            else if (v23 > v22)
            {
              v19 = **(v20 + 1);
              v30 = *v39;
              *&v52 = v37;
              *(&v52 + 1) = v30;
              v22 = v23;
            }

            v20 += 22;
            v21 -= 88;
          }

          while (v21);
        }
      }

      re::EncoderOPACK<re::FixedArrayInputStream>::endObject(v1 + 24);
LABEL_71:
      result = v53;
      if (v53)
      {
        if (v54)
        {
          return (*(*v53 + 40))();
        }
      }
    }

    else if ((*(v1 + 64) & 1) == 0 && *(v1 + 376))
    {

      return re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v1, "@shared", "Failed to deserialize shared objects. Entry not found.");
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::tryGet(uint64_t a1, unsigned int *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 96 * v6 + 8;
  }
}

uint64_t re::internal::deserializePolymorphicObject<re::EncoderOPACK<re::FixedArrayInputStream>,false>(uint64_t a1, const char *a2, uint64_t a3, void **a4, re::TypeRegistry **a5, re ***a6, re::TypeInfo *a7, int a8, char a9)
{
  v53 = *MEMORY[0x1E69E9840];
  v15 = re::EncoderOPACK<re::FixedArrayInputStream>::beginObject(a1 + 24, a2, 0, 0);
  v16 = 0;
  if (v15)
  {
    v48 = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "customClassID", 1, &v48, 0))
    {
      re::TypeInfo::typeIDForCustomClassID(v47, a7, v48);
      if (v47[0])
      {
        if ((a9 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(a6, *a4, *(a1 + 48), *(a1 + 200));
          *a4 = 0;
        }

        re::TypeRegistry::typeInfo(*a7, v47, buf);
        re::TypeInfo::TypeInfo(&v43, &v50 + 4);
        if (a8)
        {
          v17 = *(a1 + 208);
        }

        else
        {
          v17 = *(a1 + 208);
          if (*a5 == v17)
          {
            re::TypeInfo::operator=(a6, &v43);
            v27 = v47[0];
            v28 = v47[1];
            if (a9)
            {
LABEL_33:
              Instance = 0;
              goto LABEL_40;
            }

LABEL_39:
            Instance = re::TypeInfo::createInstance(a6, *(a1 + 48), *(a1 + 200));
            *a4 = Instance;
            v38[0] = v27;
            v38[1] = v28;
            re::internal::setActualType(a4, a5, v38);
LABEL_40:
            v37[0] = v27;
            v37[1] = v28;
            (*(*a1 + 16))(a1, Instance, v37);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, "object", 10, Instance, a6, &v43, Instance == 0);
            }

LABEL_42:
            (*(*a1 + 24))(a1);
            re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
            v16 = *(a1 + 64) ^ 1;
            return v16 & 1;
          }
        }

        v25 = re::TypeInfo::name(&v43);
        v26 = re::TypeRegistry::typeInfo(buf, v17, v25);
        if (buf[0] != 1 || *(*&v52[10] + 128) != 1)
        {
          v30 = *re::foundationSerializationLogObjects(v26);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v30;
            v32 = re::TypeInfo::name(&v43)[1];
            *buf = 136315138;
            v50 = v32;
            _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", buf, 0xCu);
          }

          v39[0] = 0;
          v39[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v39);
          if ((*(a1 + 64) & 1) == 0)
          {
            (*(*a1 + 72))(a1, "object", 10, 0, &v43, &v43, 1);
          }

          goto LABEL_42;
        }

        re::TypeInfo::operator=(a6, &v50 + 4);
        v27 = *a6;
        v28 = *a6[2];
        if (a9)
        {
          goto LABEL_33;
        }

        goto LABEL_39;
      }

      if ((a9 & 1) == 0 && *a4)
      {
        re::TypeInfo::releaseInstance(a6, *a4, *(a1 + 48), *(a1 + 200));
        *a4 = 0;
      }

      v18 = re::TypeInfo::name(a7);
      if (*v18 >> 1 == 0x36D724013CDDLL)
      {
        v19 = v18[1];
        if (v19 == "Component" || (v18 = strcmp(v19, "Component"), !v18))
        {
          v18 = re::EncoderOPACK<re::FixedArrayInputStream>::checkForString(a1 + 24, 10);
          if (v18)
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            re::DynamicString::setCapacity(&v43, 0);
            v20 = *(a1 + 208);
            v40 = 0x2686EB529B3EE220;
            v41 = "DynamicString";
            re::TypeRegistry::typeInfo(buf, v20, &v40);
            v21 = re::TypeInfo::TypeInfo(v42, &v50 + 4);
            if (v40)
            {
              if (v40)
              {
              }
            }

            v22 = re::serializeDynamicString<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, "object", 0xA, &v43, v42, v42, 0);
            if (v22)
            {
              v23 = *re::foundationSerializationLogObjects(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                if (v44)
                {
                  v24 = v45;
                }

                else
                {
                  v24 = &v44 + 1;
                }

                *buf = 134218498;
                v50 = v48;
                v51 = 1040;
                *v52 = 256;
                *&v52[4] = 2080;
                *&v52[6] = v24;
                _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "Skipping unknown Component %llu. String data: %.256s", buf, 0x1Cu);
              }

              if (v43 && (v44 & 1) != 0)
              {
                (*(*v43 + 40))();
              }

LABEL_48:
              re::EncoderOPACK<re::FixedArrayInputStream>::endObject(a1 + 24);
              v16 = 1;
              return v16 & 1;
            }

            v18 = v43;
            if (v43 && (v44 & 1) != 0)
            {
              v18 = (*(*v43 + 40))();
            }
          }
        }
      }

      v33 = *re::foundationSerializationLogObjects(v18);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v33;
        v35 = re::TypeInfo::name(a7)[1];
        *buf = 136315394;
        v50 = v35;
        v51 = 2048;
        *v52 = v48;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "Skipping unknown polymorphic %s type. Custom class ID = %llu", buf, 0x16u);
      }

      goto LABEL_48;
    }

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addNew(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addInternal<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 96 * HIDWORD(v9) + 8;
  }
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::findEntry<unsigned int>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 96 * v6 + 4) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 96 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 96 * v8 + 4) == *a2)
      {
        break;
      }

      v8 = *(v7 + 96 * v8) & 0x7FFFFFFF;
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

BOOL re::EncoderOPACK<re::FixedArrayInputStream>::checkForString(uint64_t a1, char a2)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19 = v2;
  v20 = v3;
  __dst = 0;
  v7 = *(a1 + 168);
  if (v7)
  {
    v8 = v7 - 1;
    v9 = *(a1 + v7 - 1 + 160);
    __dst = v9;
    *(a1 + 168) = v8;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &__dst, 1uLL))
    {
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, "check", "Key");
      return 0;
    }

    v9 = __dst;
  }

  if (v9 != (a2 + 8))
  {
    v12 = *(a1 + 168);
    if (v12 <= 7)
    {
      result = 0;
      *(a1 + 168) = v12 + 1;
      *(a1 + v12 + 160) = v9;
      return result;
    }

    return 0;
  }

  v17 = 0;
  v10 = *(a1 + 168);
  if (*(a1 + 40))
  {
LABEL_9:
    if (v10 <= 7)
    {
      result = 0;
      v11 = __dst;
      *(a1 + 168) = v10 + 1;
      *(a1 + v10 + 160) = v11;
      return result;
    }

    return 0;
  }

  if (v10)
  {
    v13 = v10 - 1;
    v14 = *(a1 + v13 + 160);
    *(a1 + 168) = v13;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v17, 1uLL))
    {
      re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::setErrorWithType(a1, "check", "String");
      v10 = *(a1 + 168);
      goto LABEL_9;
    }

    v14 = v17;
    v13 = *(a1 + 168);
  }

  result = (v14 - 64) < 0x30;
  if (v13 <= 7)
  {
    *(a1 + 168) = v13 + 1;
    *(a1 + 160 + v13) = v14;
    v15 = *(a1 + 168);
    if (v15 <= 7)
    {
      v16 = __dst;
      *(a1 + 168) = v15 + 1;
      *(a1 + 160 + v15) = v16;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::addInternal<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 8) = *a4;
  v9 = v7 + 8;
  *(v7 + 4) = v8;
  re::TypeInfo::TypeInfo(v7 + 16, a4 + 8);
  re::TypeInfo::TypeInfo(v9 + 40, a4 + 40);
  *(v9 + 72) = *(a4 + 72);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 96 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 96 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 88) = a3;
  ++*(a1 + 28);
  return v7 + 96 * v5;
}

void re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(v9, v4, v2);
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
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(a1, v9);
      re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(v9);
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

uint64_t re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::allocEntry(v4, *(v7 + v5 + 88) % *(v4 + 24), *(v7 + v5 + 88));
        v9 = *(a2 + 16) + v5;
        *(v8 + 4) = *(v9 + 4);
        *(v8 + 8) = *(v9 + 8);
        re::TypeInfo::TypeInfo(v8 + 16, v9 + 16);
        result = re::TypeInfo::TypeInfo(v8 + 48, v9 + 48);
        *(v8 + 80) = *(v9 + 80);
        v2 = *(a2 + 32);
      }

      v5 += 96;
    }
  }

  return result;
}

void re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 96 * v10, 16);
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

uint64_t *re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(&v6, *(a1 + 208), a2);
  if (v6)
  {
    v9 = a3;
    v8 = v7 | 0xFFFFFFFF00000000;
    return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v8, &v9);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, _BYTE *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeBool(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeChar<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeI8<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeI16<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<short>(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeI32<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, int *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<int>(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeI64<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeSignedInteger<long long>(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeU8<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeU16<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeU32<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, int *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeU64<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeFloat<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeFloat(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeDouble<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v15 = **(a5 + 2);
      v16 = **(a6 + 2);
      if (v15 == v16)
      {
        v18 = WORD1(v15) == WORD1(v16);
        v17 = (v16 ^ v15) & 0xFFFFFF00000000;
        v18 = v18 && v17 == 0;
        if (v18)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::FixedArrayInputStream>::serializeDouble(a1 + 24, a2, a3, a4, a7);
}

uint64_t re::serializeCString<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char **a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_22:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
      goto LABEL_23;
    }

    v18 = **(a5 + 2);
    v19 = **(a6 + 2);
    if (v18 != v19)
    {
      goto LABEL_22;
    }

    v21 = WORD1(v18) == WORD1(v19);
    v20 = (v19 ^ v18) & 0xFFFFFF00000000;
    v21 = v21 && v20 == 0;
    if (!v21)
    {
      goto LABEL_22;
    }
  }

LABEL_4:
  if (!a7)
  {
    v28 = 2 * (*a4 != 0);
    v16 = re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(a1 + 24, a2, a3, &v28, 0);
    v15 = 0;
    if (!v16)
    {
      return v15 & 1;
    }

    v17 = v28;
    if (v28)
    {
      if (v28 == 1)
      {
LABEL_16:
        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Found pointer reference instead of C string.");
LABEL_23:
        v15 = 0;
        return v15 & 1;
      }
    }

    else
    {
      if (!*a4)
      {
        goto LABEL_44;
      }

      (*(**(a1 + 48) + 40))(*(a1 + 48));
      *a4 = 0;
      v17 = v28;
    }

    if (v17 == 2)
    {
      v22 = *a4 ? strlen(*a4) : 0;
      v27 = v22;
      if (re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, 0, &v27, 0))
      {
        v23 = *a4;
        v24 = v27;
        if (*a4 && v27 == v22)
        {
          if (v22)
          {
LABEL_34:
            re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, v23, 0);
            v23 = *a4;
            v25 = v27;
LABEL_43:
            v23[v25] = 0;
            re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
            goto LABEL_44;
          }
        }

        else
        {
          if (v23)
          {
            (*(**(a1 + 48) + 40))(*(a1 + 48));
            *a4 = 0;
            v24 = v27;
          }

          if (v24 > (*(**(a1 + 24) + 64))(*(a1 + 24)))
          {
            (*(**(a1 + 24) + 64))(*(a1 + 24));
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu");
            goto LABEL_23;
          }

          if (((v27 == -1) << 63) >> 63 != (v27 == -1))
          {
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu");
            goto LABEL_23;
          }

          v23 = (*(**(a1 + 48) + 32))(*(a1 + 48), v27 + 1, 0);
          *a4 = v23;
          if (v27)
          {
            goto LABEL_34;
          }
        }

        v25 = 0;
        goto LABEL_43;
      }
    }

LABEL_44:
    re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((a1 + 24));
    if (*a4 && *(a1 + 64) == 1)
    {
      (*(**(a1 + 48) + 40))(*(a1 + 48));
      *a4 = 0;
    }

    goto LABEL_47;
  }

  v28 = 0;
  v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginPointer(a1 + 24, a2, a3, &v28, 0);
  v15 = 0;
  if (v14)
  {
    if (!v28)
    {
LABEL_12:
      re::EncoderOPACK<re::FixedArrayInputStream>::endPointer((a1 + 24));
LABEL_47:
      v15 = *(a1 + 64) ^ 1;
      return v15 & 1;
    }

    if (v28 != 1)
    {
      v27 = 0;
      if (re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, 0, &v27, 0))
      {
        if (v27)
        {
          re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, 0, 1);
        }

        re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
      }

      goto LABEL_12;
    }

    goto LABEL_16;
  }

  return v15 & 1;
}

uint64_t re::serializeStringID<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 == a6)
  {
    goto LABEL_14;
  }

  if (*a5 == *a6)
  {
    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_14;
  }

  v18 = re::TypeInfo::name(a6);
  if (*v18 >> 1 != 0x134375A94D9F7110 || (v19 = v18[1], v19 != "DynamicString") && strcmp(v19, "DynamicString"))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    goto LABEL_26;
  }

LABEL_14:
  if (!a7)
  {
    v31 = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, a3, &v31, 0))
    {
      v22 = v31;
      if (v31)
      {
        if (v22 > (*(**(a1 + 24) + 64))(*(a1 + 24)))
        {
          (*(**(a1 + 24) + 64))(*(a1 + 24));
          re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu");
          goto LABEL_26;
        }

        if (((v31 == -1) << 63) >> 63 != (v31 == -1))
        {
          re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu");
          goto LABEL_26;
        }

        v25 = (*(**(a1 + 56) + 32))(*(a1 + 56), v31 + 1, 0);
        v26 = re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, v25, 0);
        v25[v31] = 0;
        v29 = 0;
        v30 = &str_67;
        v27 = re::StringID::operator=(a4, &v29);
        if (v29)
        {
          if (v29)
          {
          }
        }

        v24 = *(**(a1 + 56) + 40);
      }

      else
      {
        v29 = 0;
        v30 = &str_67;
        v23 = re::StringID::operator=(a4, &v29);
        if ((v29 & 1) == 0)
        {
LABEL_32:
          re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
          v21 = *(a1 + 64) ^ 1;
          return v21 & 1;
        }
      }

      v24();
      goto LABEL_32;
    }

LABEL_26:
    v21 = 0;
    return v21 & 1;
  }

  v29 = 0;
  v20 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, a3, &v29, 0);
  v21 = 0;
  if (v20)
  {
    if (v29)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, 0, 1);
    }

    goto LABEL_32;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v43 = *MEMORY[0x1E69E9840];
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_17:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
      goto LABEL_40;
    }

    v20 = **(a5 + 2);
    v21 = **(a6 + 2);
    if (v20 != v21)
    {
      goto LABEL_17;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if (!a7)
  {
    v16 = *a5;
    v17 = **(a5 + 2);
    v39[0] = 0x258C98EAAF29A10ALL;
    v39[1] = "CallbackSerializerAttribute";
    v18 = re::TypeRegistry::typeID(buf, v16, v39);
    if (*buf && (v35 = *&buf[8], v36 = v17, LODWORD(v37) = -1, (v18 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v16 + 768, &v35)) != 0))
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    if (v39[0])
    {
      if (v39[0])
      {
      }
    }

    v24 = *v19;
    v25 = *(a1 + 200);
    v39[0] = 0;
    if (re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, a3, v39, 0))
    {
      v26 = *(a1 + 56);
      v37 = 0;
      v38 = 0;
      v35 = v26;
      v36 = 0;
      re::DynamicString::setCapacity(&v35, 0);
      if (v39[0])
      {
        re::DynamicString::resize(&v35, v39[0], 0);
        if (v36)
        {
          v27 = v37;
        }

        else
        {
          v27 = &v36 + 1;
        }

        re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, v27, 0);
      }

      re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
      v28 = &v36 + 1;
      if (v36)
      {
        v29 = v37;
      }

      else
      {
        v29 = &v36 + 1;
      }

      v30 = (*(v24 + 80))(*(a1 + 48), v25, v24, a4, v29);
      if ((v30 & 1) == 0)
      {
        v31 = *re::foundationSerializationLogObjects(v30);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          if (v36)
          {
            v28 = v37;
          }

          v32 = v31;
          v33 = re::TypeInfo::name(a5)[1];
          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v28;
          v41 = 2080;
          v42 = v33;
          _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_INFO, "Failed to parse %s: %s (type %s) using deserialization callback - skipping.", buf, 0x20u);
        }
      }

      if (v35 && (v36 & 1) != 0)
      {
        (*(*v35 + 40))();
      }

      goto LABEL_39;
    }

LABEL_40:
    v15 = 0;
    return v15 & 1;
  }

  v35 = 0;
  v14 = re::EncoderOPACK<re::FixedArrayInputStream>::beginString(a1 + 24, a2, a3, &v35, 0);
  v15 = 0;
  if (v14)
  {
    if (v35)
    {
      re::EncoderOPACK<re::FixedArrayInputStream>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderOPACK<re::FixedArrayInputStream>::endString((a1 + 24));
LABEL_39:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = *a2;
  if (!*a1)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v6 % *(a1 + 24);
  v8 = *(*(a1 + 8) + 4 * v7);
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, v7, v6);
    *(v10 + 4) = *a2;
    *(v10 + 16) = *a3;
    result = v10 + 16;
    ++*(a1 + 40);
    return result;
  }

  v9 = *(a1 + 16);
  while (*(v9 + 24 * v8 + 4) != v6)
  {
    v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  ++*(a1 + 40);
  v12 = v9 + 24 * v8;
  *(v12 + 16) = *a3;
  return v12 + 16;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v9, v4, a2);
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
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(a1, v9);
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(v9);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(v4, *(v7 + v5 + 4) % *(v4 + 24), *(v7 + v5 + 4));
        *(result + 4) = *(*(a2 + 16) + v5 + 4);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}