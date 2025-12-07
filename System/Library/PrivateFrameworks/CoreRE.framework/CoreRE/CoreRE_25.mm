uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doSerialize(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, unint64_t a4, const re::TypeInfo *a5, const re::TypeInfo *a6, uint64_t a7)
{
  v10 = a4;
  v21 = a4;
  if (!*(a1 + 36))
  {
    if (*(a1 + 34) == 2)
    {
      v17 = a4;
      re::TypeInfo::TypeInfo(v18, a5);
      re::TypeInfo::TypeInfo(v19, a6);
      v20 = 0;
      re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::add((a1 + 272), &v17);
      LODWORD(v17) = 0;
      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::addNew(a1 + 312, &v21, &v17);
      a3 = 10;
      v10 = v21;
    }

    else
    {
      v17 = 0;
      re::TypeInfo::TypeInfo(v18, a5);
      re::TypeInfo::TypeInfo(v19, a6);
      v20 = 0;
      re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::add((a1 + 272), &v17);
    }
  }

  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {
    return v14(a1, a2, a3, v10, a5, a6, a7);
  }

  v16 = re::TypeInfo::name(a5);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v16[1]);
  return 0;
}

re::TypeInfo *(*re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7)
{
  v4 = re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::serializePointer;
  if (*(a2 + 12) != 9)
  {
    if (*a2 == *(a1 + 208))
    {
      v7[1] = v2;
      v7[2] = v3;
      LODWORD(v7[0]) = **(a2 + 16);
      HIDWORD(v7[0]) = -1;
      v5 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 224, v7);
      v4 = re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
      if (v5)
      {
        return *v5;
      }
    }

    else
    {
      return re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
    }
  }

  return v4;
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SerializerV2(uint64_t a1, const StringID *a2)
{
  *a1 = &unk_1F5CB5AB0;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(a1 + 24, 15);
  *(a1 + 256) = 0x7FFFFFFF00000000;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 216) = 0;
  *(a1 + 264) = 0;
  *a1 = off_1F5CB5A48;
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

void *re::NetworkSerializerBase<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);
}

void re::NetworkSerializerBase<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::~NetworkSerializerBase(void *a1)
{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void *re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~SerializerV2(void *a1)
{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);
}

{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);
}

void re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~SerializerV2(void *a1)
{
  *a1 = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doOpen(uint64_t a1)
{
  *(a1 + 288) = 0;
  ++*(a1 + 296);
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 312);
  *(a1 + 376) = 0;
  ++*(a1 + 384);
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(a1 + 400);
  result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, "container", 0, 0);
  if ((result & 1) == 0 && (*(a1 + 64) & 1) == 0)
  {

    return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, "container", "Failed to open container.");
  }

  return result;
}

void re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(void *a1)
{
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doSerialize(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v16[1]);
    return 0;
  }
}

re::TypeInfo *(*re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7)
{
  if (*a2 != *(a1 + 208))
  {
    return re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
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
    return re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>;
  }
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(uint64_t result, int a2)
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
  v2 = &unk_1EE186000;
  {
    v8 = result;
    v2 = &unk_1EE186000;
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

      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::Encoder(int)::s_maxSerializationDepth = v7;
      v2 = &unk_1EE186000;
      result = v8;
    }
  }

  v3 = v2[27];
  if (v3)
  {
    *(result + 152) = v3;
  }

  return result;
}

void *re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CB5AB0;
  v2 = (a1 + 1);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1 + 28);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::~Encoder(a1 + 24);
  re::StringID::destroyString(v2);
  return a1;
}

void re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::deinit(void *result)
{
  if (result[26])
  {
    (*(*result + 40))(result);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((result + 28));
    result[26] = 0;
  }
}

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
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

        v4 += 6;
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

double re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(uint64_t *a1)
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
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

_BYTE *re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_BYTE *re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::close(_BYTE *result)
{
  if (*result)
  {
    v1 = result;
    if ((result[40] & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 0);
    }

    result = re::DynamicArray<unsigned long>::deinit((v1 + 96));
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

_anonymous_namespace_ *re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(_anonymous_namespace_ *result, int a2)
{
  v3 = result;
  v4 = *(result + 14);
  if (!v4)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v3, &v5);
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 14);
  }

  if (*(*(v3 + 16) + 48 * v4 - 48) != a2)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v3, &v5);
    result = v5;
    if (v5 && (v6 & 1) != 0)
    {
      result = (*(*v5 + 40))();
    }

    v4 = *(v3 + 14);
  }

  *(v3 + 14) = v4 - 1;
  ++*(v3 + 30);
  return result;
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(uint64_t a1, uint64_t a2)
{
  *&v3 = 400;
  *(&v3 + 1) = re::FoundationErrorCategory(void)::instance;
  v4 = *a2;
  v6 = *(a2 + 24);
  v5 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v3);
  result = v4;
  if (v4)
  {
    if (v5)
    {
      return (*(*v4 + 40))();
    }
  }

  return result;
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(uint64_t a1, __int128 *a2)
{
  v4[0] = 1;
  v5 = *a2;
  re::DynamicString::DynamicString(&v6, (a2 + 1));
  result = re::Optional<re::DetailedError>::operator=(a1 + 40, v4);
  if (v4[0] == 1)
  {
    result = v6;
    if (v6)
    {
      if (v7)
      {
        return (*(*v6 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::Optional<re::DetailedError>::operator=(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*a2)
    {
      *(a1 + 8) = *(a2 + 8);
      re::DynamicString::operator=((a1 + 24), (a2 + 24));
    }

    else
    {
      re::DynamicString::deinit((a1 + 24));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 48) = *(a2 + 48);
    v3 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a2 + 40);
    *(a2 + 48) = 0;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    *(a1 + 32) = v3;
    *(a1 + 40) = v4;
    *(a2 + 32) = v6;
    *(a2 + 40) = v5;
  }

  return a1;
}

uint64_t *re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(_anonymous_namespace_ *a1, const char *a2, const char *a3, ...)
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

  re::DynamicString::format(&v13, "Failed to %s %s. Reason: %s", v6, "serialize", v7, v8);
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

void *re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels@<X0>(_anonymous_namespace_ *a1@<X0>, const char *a2@<X1>, re::DynamicString *a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 14);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *(a3 + 1) = 0;
  result = re::DynamicString::setCapacity(a3, 0);
  if (v6 >= 2)
  {
    v8 = v6 - 1;
    v9 = v5 + 48;
    do
    {
      v10 = *(v9 - 48);
      v11 = v10 > 0xA;
      v12 = (1 << v10) & 0x608;
      if (v11 || v12 == 0)
      {
        v14 = *(v9 + 8);
        if (v14 && *v14)
        {
          __src = 47;
          re::DynamicString::append(a3, &__src, 1uLL);
          v15 = strlen(*(v9 + 8));
          result = re::DynamicString::append(a3, *(v9 + 8), v15);
        }

        if (*v9 == 5)
        {
          result = re::DynamicString::appendf(a3, "/%lld", *(v9 + 32));
        }
      }

      v9 += 48;
      --v8;
    }

    while (v8);
  }

  if (a2 && *a2)
  {
    v18 = 47;
    re::DynamicString::append(a3, &v18, 1uLL);
    v16 = strlen(a2);

    return re::DynamicString::append(a3, a2, v16);
  }

  return result;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(uint64_t a1, void *a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = *(*(a1 + 8) + 4 * (*a2 % *(a1 + 24)));
  if (v2 == 0x7FFFFFFF)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  while (*(v3 + 24 * v2 + 4) != *a2)
  {
    v2 = *(v3 + 24 * v2) & 0x7FFFFFFF;
    if (v2 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return v3 + 24 * v2 + 16;
}

re::TypeInfo *re::serializeType<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7)
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, this, a6);
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
    re::TypeInfo::name(this);
    re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 16));
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.");
    return 0;
  }

LABEL_19:
  v22 = *(this + 12);
  if (v22 <= 4)
  {
    if (*(this + 12) > 2u)
    {
      if (v22 == 3)
      {

        return re::serializeOptional<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v22 != 4)
        {
          goto LABEL_57;
        }

        return re::serializeArray<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v22 == 1)
    {

      return re::serializeBasic<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v22 != 2)
      {
        goto LABEL_57;
      }

      return re::serializeEnum<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v22 == 5)
    {

      return re::serializeList<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v22 != 6)
      {
        goto LABEL_57;
      }

      return re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v22)
    {
      case 7u:

        return re::serializeUnion<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        re::TypeInfo::name(this);
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.");
        return 0;
      default:
LABEL_57:
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Invalid type category. Value = %d");
        return 0;
    }
  }
}

BOOL re::areSameVersion(re *this, const re::TypeInfo *a2, const re::TypeInfo *a3)
{
  if (this == a2)
  {
    return 1;
  }

  if (*this != *a2)
  {
    return re::areSameTranslatedVersion(this, a2, a3);
  }

  v4 = **(this + 2);
  v5 = **(a2 + 2);
  if (v4 == v5 && ((v7 = WORD1(v4) == WORD1(v5), v6 = (v5 ^ v4) & 0xFFFFFF00000000, v7) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  v8 = re::TypeInfo::name(a4);
  return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Type mismatch. Runtime type %s and serialized type %s are different.", v7, v8[1]);
}

uint64_t re::serializeBasic<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_24:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, this, a6);
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

            return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<long long>(a1 + 24, a2, a3, a4, a7);
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

      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, a3, a4, a7);
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

        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, a3, a4, a7);
      }

      if (v15 == 0x3AFE951B1F1F3391)
      {
LABEL_59:

        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, a3, a4, a7);
      }

      if (v15 != 0x412A40E9CB79BA35)
      {
        goto LABEL_74;
      }
    }

LABEL_56:

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, a3, a4, a7);
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

            return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1 + 24, a2, a3, a4, a7);
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

        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, a2, a3, a4, a7);
      }

LABEL_74:
      v21 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Unsupported basic type %s.", v21[1]);
      return 0;
    }

LABEL_68:

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<int>(a1 + 24, a2, a3, a4, a7);
  }

  if (*v14 >> 1 > 0xB9708BDD)
  {
    if (v15 == 3111160798)
    {
LABEL_62:

      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, a3, a4, a7);
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

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<short>(a1 + 24, a2, a3, a4, a7);
  }

  if (v15 != 2969009105)
  {
    goto LABEL_74;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, a2, a3, a4, a7);
}

re::TypeInfo *re::serializeEnum<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t re::serializeOptional<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::internal **a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_11:
  if (a7)
  {
    v23[0] = 0;
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginOptional((a1 + 3), a2, v11, v23, 0);
    if (v23[0] == 1)
    {
      v18 = a1[26];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v25);
      re::TypeInfo::TypeInfo(v24, &v26);
      re::internal::translateType(&v25, v18, v24);
      if ((a1[8] & 1) == 0)
      {
        (*(*a1 + 9))(a1, a2, 0, 0, &v25, &v25, 1);
      }
    }
  }

  else
  {
    re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v25);
    re::TypeInfo::TypeInfo(v24, &v26);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v25);
    re::TypeInfo::TypeInfo(v23, &v26);
    re::TypeInfo::TypeInfo(&v25, a5);
    v22 = (*(v27 + 88))(a4) != 0;
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginOptional((a1 + 3), a2, v11, &v22, 0);
    if (v22)
    {
      v19 = (*(v27 + 88))(a4);
      if ((a1[8] & 1) == 0)
      {
        (*(*a1 + 9))(a1, a2, 0, v19, v24, v23, 0);
      }
    }
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endOptional((a1 + 3));
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeArray<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
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
    goto LABEL_68;
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

LABEL_68:
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    goto LABEL_69;
  }

  if (v20 || *(v18 + 96) != *(v19 + 96))
  {
    goto LABEL_68;
  }

LABEL_13:
  if (a7)
  {
    v21 = *(a1 + 208);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v60);
    re::TypeInfo::TypeInfo(v56, v61);
    re::internal::translateType(&v57, v21, v56);
    v22 = (*(*a1 + 80))(a1, &v57);
    if (v22)
    {
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

      v60 = v26;
      if (v58 == 1)
      {
        v56[0] = v26 * *(v59 + 8);
        v45 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(a1 + 24, a2, v11, v56, 0);
        v32 = 0;
        if (v45)
        {
          if (v56[0])
          {
            v34 = a1 + 24;
            v33 = 0;
            v35 = 1;
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        return v32 & 1;
      }

      if (v25)
      {
        v46 = 8;
      }

      else
      {
        v46 = 4;
      }

      if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, v11, &v60, v46))
      {
        v47 = v60;
        if (v25)
        {
          v48 = v60 == 0;
        }

        else
        {
          v48 = 1;
        }

        v49 = v48;
        if (!v48)
        {
          v55[0] = 0;
          v55[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v55);
          v47 = v60;
        }

        if (v47)
        {
          v50 = 0;
          do
          {
            v23(a1, 0, 0, 0, &v57, &v57, 1);
            ++v50;
          }

          while (v50 < v60);
        }

        if (v49)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      goto LABEL_69;
    }

LABEL_22:
    v36 = re::TypeInfo::name(&v57);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v36[1]);
    goto LABEL_69;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v60);
  re::TypeInfo::TypeInfo(&v57, v61);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v60);
  re::TypeInfo::TypeInfo(v56, v61);
  re::TypeInfo::TypeInfo(&v60, a5);
  v27 = (*(*a1 + 80))(a1, &v57);
  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = v27;
  v29 = re::ArrayAccessor::size(&v60, a4);
  v54 = v29;
  if (v58 != 1)
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

    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, v11, &v54, v38))
    {
      v39 = v54;
      if (v37)
      {
        v40 = v54 == 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = v40;
      if (!v40)
      {
        v42 = *a4;
        v52[0] = 0;
        v52[1] = 0xFFFFFFFFLL;
        (*(*a1 + 16))(a1, v42, v52);
        v39 = v54;
      }

      if (v39)
      {
        v43 = 0;
        do
        {
          v44 = re::ArrayAccessor::elementAt(&v60, a4, v43);
          v28(a1, 0, 0, v44, &v57, v56, 0);
          ++v43;
        }

        while (v43 < v54);
      }

      if (v41)
      {
        goto LABEL_40;
      }

LABEL_39:
      (*(*a1 + 24))(a1);
LABEL_40:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
LABEL_48:
      v32 = *(a1 + 64) ^ 1;
      return v32 & 1;
    }

LABEL_69:
    v32 = 0;
    return v32 & 1;
  }

  v30 = v29;
  v53 = v29 * *(v59 + 8);
  v31 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(a1 + 24, a2, v11, &v53, 0);
  v32 = 0;
  if (v31)
  {
    if (v30)
    {
      v33 = re::ArrayAccessor::elementAt(&v60, a4, 0);
      v34 = a1 + 24;
      v35 = 0;
LABEL_46:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBLOB(v34, v33, v35);
    }

LABEL_47:
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endBLOB((a1 + 24));
    goto LABEL_48;
  }

  return v32 & 1;
}

uint64_t re::serializeList<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    goto LABEL_29;
  }

LABEL_11:
  if (a7)
  {
    v18 = *(a1 + 208);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47);
    re::TypeInfo::TypeInfo(v43, &v48);
    re::internal::translateType(&v44, v18, v43);
    v19 = (*(*a1 + 80))(a1, &v44);
    if (v19)
    {
      v47 = 0;
      if (v45 == 1)
      {
        v43[0] = 0;
        v20 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(a1 + 24, a2, v11, v43, 0);
        v21 = 0;
        if (v20)
        {
          if (v43[0])
          {
            v22 = a1 + 24;
            v23 = 0;
            v24 = 1;
LABEL_24:
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBLOB(v22, v23, v24);
            goto LABEL_25;
          }

          goto LABEL_25;
        }

        return v21 & 1;
      }

      v33 = v19;
      v34 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, v11, &v47, 0);
      v21 = 0;
      if (!v34)
      {
        return v21 & 1;
      }

      if (v47)
      {
        for (i = 0; i < v47; ++i)
        {
          v33(a1, 0, 0, 0, &v44, &v44, 1);
        }
      }

LABEL_40:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray((a1 + 24));
      goto LABEL_41;
    }

    goto LABEL_26;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v47);
  re::TypeInfo::TypeInfo(&v44, &v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v47);
  re::TypeInfo::TypeInfo(v43, &v48);
  re::TypeInfo::TypeInfo(&v47, a5);
  v25 = (*(*a1 + 80))(a1, &v44);
  if (!v25)
  {
LABEL_26:
    re::TypeInfo::name(&v44);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s");
    goto LABEL_29;
  }

  v26 = v25;
  v27 = (*(v49 + 88))(a4);
  v42 = v27;
  if (*(a5 + 12) != 5 || (*(*(a5 + 2) + 48) & 8) == 0 || v45 != 1)
  {
    v30 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(a1 + 24, a2, v11, &v42, 0);
    v21 = 0;
    if (!v30)
    {
      return v21 & 1;
    }

    if (*(v49 + 104))
    {
      if (v42)
      {
        for (j = 0; j < v42; ++j)
        {
          v32 = (*(v49 + 104))(a4, j);
          v26(a1, 0, 0, v32, &v44, v43, 0);
        }
      }

      goto LABEL_40;
    }

    v37 = *(v49 + 112);
    if (v37 && *(v49 + 120) && *(v49 + 128))
    {
      v38 = v37(a4, *(a1 + 56));
      v39 = (*(v49 + 120))();
      if (v39)
      {
        v40 = v39;
        do
        {
          v26(a1, 0, 0, v40, &v44, v43, 0);
          v40 = (*(v49 + 120))(v38);
        }

        while (v40);
      }

      (*(v49 + 128))(v38, *(a1 + 56));
      goto LABEL_40;
    }

    re::TypeInfo::TypeInfo(v41, &v47);
    re::TypeInfo::name(v41);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.");
LABEL_29:
    v21 = 0;
    return v21 & 1;
  }

  v28 = v27;
  v41[0] = v27 * *(v46 + 8);
  v29 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(a1 + 24, a2, v11, v41, 0);
  v21 = 0;
  if (v29)
  {
    if (v28)
    {
      v23 = (*(v49 + 104))(a4, 0);
      v22 = a1 + 24;
      v24 = 0;
      goto LABEL_24;
    }

LABEL_25:
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endBLOB((a1 + 24));
LABEL_41:
    v21 = *(a1 + 64) ^ 1;
  }

  return v21 & 1;
}

uint64_t re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  v87 = *MEMORY[0x1E69E9840];
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
LABEL_52:
    v25 = 0;
    return v25 & 1;
  }

LABEL_11:
  if (a7)
  {
    v18 = *(a1 + 208);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v82);
    re::TypeInfo::TypeInfo(&v74, &v82.n128_i64[1]);
    re::internal::translateType(v61, v18, &v74);
    v19 = *(a1 + 208);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v82);
    re::TypeInfo::TypeInfo(v72, &v82.n128_i64[1]);
    re::internal::translateType(&v74, v19, v72);
    v20 = (*(*a1 + 80))(a1, v61);
    if (v20)
    {
      v21 = v20;
      v22 = (*(*a1 + 80))(a1, &v74);
      if (v22)
      {
        v23 = v22;
        v72[0] = 0;
        v24 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginDictionary(a1 + 24, a2, v11, v72, 0);
        v25 = 0;
        if (v24)
        {
          if (v72[0])
          {
            v26 = 0;
            do
            {
              if ((*(a1 + 64) & 1) == 0)
              {
                v82.n128_u8[0] = 7;
                v82.n128_u32[1] = 1;
                v82.n128_u64[1] = "entry";
                v83 = xmmword_1E3054780;
                v84 = 0uLL;
                re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v82);
              }

              v21(a1, "key", 0, 0, v61, v61, 1);
              v23(a1, "value", 0, 0, &v74, &v74, 1);
              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
              ++v26;
            }

            while (v26 < v72[0]);
          }

LABEL_60:
          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionary((a1 + 24));
          v25 = *(a1 + 64) ^ 1;
          return v25 & 1;
        }

        return v25 & 1;
      }

      v47 = &v74;
    }

    else
    {
      v47 = v61;
    }

    goto LABEL_51;
  }

  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 80), &v82);
  re::TypeInfo::TypeInfo(v72, &v82.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a5, *(*(a5 + 2) + 88), &v82);
  re::TypeInfo::TypeInfo(v71, &v82.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v82);
  re::TypeInfo::TypeInfo(v70, &v82.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v82);
  re::TypeInfo::TypeInfo(v69, &v82.n128_i64[1]);
  re::TypeInfo::TypeInfo(v67, a5);
  v27 = (*(*a1 + 80))(a1, v72);
  if (!v27)
  {
    v47 = v72;
LABEL_51:
    v48 = re::TypeInfo::name(v47);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v48[1]);
    goto LABEL_52;
  }

  v28 = v27;
  v29 = (*(*a1 + 80))(a1, v71);
  if (!v29)
  {
    v47 = v71;
    goto LABEL_51;
  }

  v30 = v29;
  v66 = (*(v68 + 96))(a4);
  v31 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginDictionary(a1 + 24, a2, v11, &v66, 0);
  v25 = 0;
  if (v31)
  {
    if (v66)
    {
      v32 = *a5;
      v82.n128_u64[0] = 0x449AD97C4B77BED4;
      v82.n128_u64[1] = "_CompareFunc";
      v33 = re::TypeRegistry::typeID(v65, v32, &v82);
      if (v82.n128_u8[0])
      {
        if (v82.n128_u8[0])
        {
        }
      }

      if (v65[0] && (v34 = *v72[2], v82.n128_u64[0] = v65[1], v82.n128_u64[1] = v34, LODWORD(v83) = -1, (v35 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v72[0] + 768, &v82)) != 0) && (v36 = *v35) != 0)
      {
        v64 = 0;
        v61[1] = 0;
        v62 = 0;
        v63 = 0;
        v61[0] = *(a1 + 56);
        re::DynamicArray<re::RigNodeConstraint>::setCapacity(v61, v66);
        ++v63;
        v37 = (*(v68 + 120))(a4, *(a1 + 56));
        if ((*(v68 + 128))())
        {
          do
          {
            v38 = (*(v68 + 136))(v37);
            v39 = (*(v68 + 144))(v37);
            v82.n128_u64[0] = v38;
            v82.n128_u64[1] = v39;
            v40 = re::DynamicArray<re::RigNodeConstraint>::add(v61, &v82);
          }

          while (((*(v68 + 128))(v37, v40) & 1) != 0);
        }

        (*(v68 + 152))(v37, *(a1 + 56));
        v82.n128_u64[0] = v36;
        v42 = 126 - 2 * __clz(v62);
        if (v62)
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(v64, &v64[2 * v62], &v82, v43, 1, v41);
        if (v66)
        {
          v44 = 0;
          v45 = 0;
          v60 = xmmword_1E3054780;
          do
          {
            if ((*(a1 + 64) & 1) == 0)
            {
              v82.n128_u8[0] = 7;
              v82.n128_u32[1] = 0;
              v82.n128_u64[1] = "entry";
              v83 = xmmword_1E3054780;
              v84 = 0uLL;
              re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v82);
            }

            v46 = v62;
            if (v62 <= v45)
            {
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v54 = MEMORY[0x1E69E9C10];
              v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              v76 = 1024;
              if (v55)
              {
                v56 = 3;
              }

              else
              {
                v56 = 2;
              }

              v77 = 789;
              v78 = 2048;
              v79 = v45;
              v80 = 2048;
              v81 = v46;
              _os_log_send_and_compose_impl(v56, &v73, &v82, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, 0, 2uLL);
              _os_crash_msg();
              __break(1u);
LABEL_65:
              v73 = 0;
              v85 = 0u;
              v86 = 0u;
              v83 = 0u;
              v84 = 0u;
              v82 = 0u;
              v57 = MEMORY[0x1E69E9C10];
              v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v74 = 136315906;
              v75 = "operator[]";
              v76 = 1024;
              if (v58)
              {
                v59 = 3;
              }

              else
              {
                v59 = 2;
              }

              v77 = 789;
              v78 = 2048;
              v79 = v45;
              v80 = 2048;
              v81 = v46;
              _os_log_send_and_compose_impl(v59, &v73, &v82, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v74, 38, v60, *(&v60 + 1));
              _os_crash_msg();
              __break(1u);
            }

            v28(a1, "key", 0, v64[v44], v72, v70, 0);
            v46 = v62;
            if (v62 <= v45)
            {
              goto LABEL_65;
            }

            v30(a1, "value", 0, v64[v44 + 1], v71, v69, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
            ++v45;
            v44 += 2;
          }

          while (v45 < v66);
        }

        if (v61[0] && v64)
        {
          (*(*v61[0] + 40))();
        }
      }

      else
      {
        v50 = (*(v68 + 120))(a4, *(a1 + 56));
        (*(v68 + 128))();
        if (v66)
        {
          for (i = 0; i < v66; ++i)
          {
            if ((*(a1 + 64) & 1) == 0)
            {
              v82.n128_u8[0] = 7;
              v82.n128_u32[1] = 0;
              v82.n128_u64[1] = "entry";
              v83 = xmmword_1E3054780;
              v84 = 0uLL;
              re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), &v82);
            }

            v52 = (*(v68 + 136))(v50);
            v28(a1, "key", 0, v52, v72, v70, 0);
            v53 = (*(v68 + 144))(v50);
            v30(a1, "value", 0, v53, v71, v69, 0);
            re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry((a1 + 24));
            (*(v68 + 128))(v50);
          }
        }

        (*(v68 + 152))(v50, *(a1 + 56));
      }
    }

    goto LABEL_60;
  }

  return v25 & 1;
}

uint64_t re::serializeUnion<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v11 = a3;
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
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
  v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, a2, v11, 16);
  if (!a7)
  {
    if (v14)
    {
      re::TypeInfo::TypeInfo(v23, a5);
      Tag = re::UnionAccessor::readTag(v23, a4);
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "tag", 0, &Tag, 0);
      if (Tag < *(*(a5 + 2) + 96))
      {
        re::TypeInfo::unionMember(v21, a5, Tag);
        if ((*(a1 + 64) & 1) == 0)
        {
          (*(*a1 + 72))(a1, "value", 0, a4, v21, v21, 0);
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
  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, "tag", 0, v21, 0);
  if (v21[0] < *(*(a6 + 2) + 96))
  {
    re::TypeInfo::unionMember(v23, a6, v21[0]);
    if ((*(a1 + 64) & 1) == 0)
    {
      (*(*a1 + 72))(a1, "value", 0, 0, v23, v23, 1);
    }
  }

LABEL_13:
  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
  v15 = *(a1 + 64) ^ 1;
  return v15 & 1;
}

uint64_t re::serializeObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    if (*(*(this + 2) + 49))
    {
      v25 = *(a1 + 208);
      v39[0] = 0x2686EB529B3EE220;
      v39[1] = "DynamicString";
      re::TypeRegistry::typeInfo(&v41, v25, v39);
      v26 = re::TypeInfo::TypeInfo(v40, v42);
      if (v39[0])
      {
        if (v39[0])
        {
        }
      }

      v27 = v40;
      v28 = v40;
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

    re::serializeDynamicString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(v29, v30, v31, 0, v27, v28, 1);
LABEL_36:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

LABEL_6:
  v16 = *(this + 2);
  v17 = *(v16 + 48);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = *(v16 + 160);
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      v41 = &unk_1F5CB5B18;
      v42[0] = a1;
      v42[1] = v19;
      v42[2] = v20;
      v43[0] = 0;
      v43[1] = 0;
      v44 = 1;
      v45 = 0;
      v46 = 0;
      v40[0].n128_u64[0] = a2;
      v40[0].n128_u32[2] = a3;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(v43, v40);
      v18(&v41, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v41 = &unk_1F5CB5B18;
      if (v43[0])
      {
        if ((v44 & 1) == 0)
        {
          (*(*v43[0] + 40))();
        }
      }

      return v22 & 1;
    }
  }

  if ((v17 & 4) == 0)
  {
    v23 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, a2, a3, 0);
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
      re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a4, this, a7);
LABEL_35:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
      goto LABEL_36;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a4, this, a6, a7);
    }

    else
    {
      v37 = re::TypeInfo::name(this)[1];
      v38 = re::TypeInfo::name(a6);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v37, v38[1]);
    }

    goto LABEL_35;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, char a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    return v5 ^ 1u;
  }

  v10 = *(a1 + 128) + 48 * *(a1 + 112);
  if (*(v10 - 48) != 2 || (*(v10 - 44) & 0x40) != 0)
  {
    if (*a4)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    __src = v13;
LABEL_13:
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Boolean");
    }

    goto LABEL_15;
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  v11 = *(a1 + 40);
  if (*a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  __src = v12;
  if ((v11 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  if ((a5 & 2) == 0)
  {
    v14 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v14 - 48) != 2)
    {
      ++*(v14 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    return v5 ^ 1u;
  }

  v10 = *(a1 + 128) + 48 * *(a1 + 112);
  if (*(v10 - 48) != 2 || (*(v10 - 44) & 0x40) != 0)
  {
    __src = 53;
LABEL_7:
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Float");
    }

    goto LABEL_9;
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  v11 = *(a1 + 40);
  __src = 53;
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 4uLL) & 1) == 0)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Float");
  }

  if ((a5 & 2) == 0)
  {
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) != 2)
    {
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  v5 = *(a1 + 40);
  if (v5)
  {
    return v5 ^ 1u;
  }

  v10 = *(a1 + 128) + 48 * *(a1 + 112);
  if (*(v10 - 48) != 2 || (*(v10 - 44) & 0x40) != 0)
  {
    __src = 54;
LABEL_7:
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Double");
    }

    goto LABEL_9;
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  v11 = *(a1 + 40);
  __src = 54;
  if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, a4, 8uLL) & 1) == 0)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Double");
  }

  if ((a5 & 2) == 0)
  {
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) != 2)
    {
      ++*(v12 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(uint64_t result, const char *a2, uint64_t a3)
{
  v5 = result;
  if ((a3 + 1) > 0x28)
  {
    if (a3 == a3)
    {
      LOBYTE(__src) = 48;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "8-Bit Signed Integer");
        }
      }

      LOBYTE(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          v6 = "8-Bit Signed Integer";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }

    else
    {
      LOBYTE(__src) = 51;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "64-Bit Signed Integer");
        }
      }

      __src = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 8uLL);
        if ((result & 1) == 0)
        {
          v6 = "64-Bit Signed Integer";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }
  }

  else
  {
    LOBYTE(__src) = a3 + 8;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Small Signed Integer";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  return result;
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(void *a1, char *__src, size_t __n)
{
  if (__src)
  {
    v5 = __src;
    while (1)
    {
      v6 = *(a1 + 4);
      if (__n <= v6)
      {
        break;
      }

      if (v6 >= 1)
      {
        memcpy(a1[1], v5, v6);
        v7 = *(a1 + 4);
        v5 += v7;
        __n -= v7;
        a1[1] = 0;
        *(a1 + 4) = 0;
      }

      if (((*(**a1 + 16))(*a1, a1 + 1, a1 + 2) & 1) == 0)
      {
        return 0;
      }
    }

    memcpy(a1[1], v5, __n);
  }

  else
  {
    while (1)
    {
      v10 = *(a1 + 4);
      if (__n <= v10)
      {
        break;
      }

      if (v10 >= 1)
      {
        bzero(a1[1], v10);
        __n -= *(a1 + 4);
        a1[1] = 0;
        *(a1 + 4) = 0;
      }

      v9 = (*(**a1 + 16))(*a1, a1 + 1, a1 + 2);
      result = 0;
      if ((v9 & 1) == 0)
      {
        return result;
      }
    }

    bzero(a1[1], __n);
  }

  a1[1] += __n;
  *(a1 + 4) -= __n;
  return 1;
}

uint64_t re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(_anonymous_namespace_ *a1, const char *a2, uint64_t a3)
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

  re::DynamicString::format(v11, "Failed to %s %s. Reason: Error %s type %s.", v5, "serialize", v6, "writing", a3);
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

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(uint64_t result)
{
  if (*(result + 40))
  {
    return result;
  }

  v1 = result;
  __src = 0;
  v2 = *(result + 168);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = *(result + v3 + 160);
    __src = v4;
    *(v1 + 168) = v3;
  }

  else
  {
    if (!re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL))
    {
      v7 = "Member";
      v8 = v1;
      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v8, "unknown", v7);
    }

    v4 = __src;
  }

  result = re::OPACK::toString(v4);
  v5 = result;
  v6 = __src;
  if (__src > 0x31u)
  {
    if (__src > 0xC0u)
    {
      if (__src <= 0xC2u)
      {
        if (__src != 193)
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

      if (__src == 195)
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

      if (__src != 196)
      {
        goto LABEL_52;
      }
    }

    else if (__src > 0x34u)
    {
      if (__src != 53)
      {
        if (__src != 54)
        {
          goto LABEL_52;
        }

        goto LABEL_25;
      }
    }

    else if (__src != 50)
    {
      if (__src != 51)
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

  if (__src <= 4u)
  {
    if (__src - 1 < 4)
    {
      return result;
    }

    goto LABEL_52;
  }

  if (__src > 0x2Fu)
  {
    if (__src != 48)
    {
      if (__src != 49)
      {
        goto LABEL_52;
      }

      goto LABEL_34;
    }

    goto LABEL_50;
  }

  if (__src == 5)
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

  if (__src == 6)
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
    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v14, 0, v15);
    if (result)
    {
      return result;
    }

    v8 = v1;
    v7 = v5;
    return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v8, "unknown", v7);
  }

LABEL_52:
  if (__src - 7 >= 0x29)
  {
    if (__src - 64 <= 0x24)
    {
      v16 = *(v1 + 168);
      if (v16 <= 7)
      {
        *(v1 + 168) = v16 + 1;
        *(v1 + v16 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readStringTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__src - 112 <= 0x24)
    {
      v20 = *(v1 + 168);
      if (v20 <= 7)
      {
        *(v1 + 168) = v20 + 1;
        *(v1 + v20 + 160) = v6;
      }

      __n[0] = 0;
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readDataTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__src - 160 >= 0x21)
    {
      if (__src - 208 > 0xE)
      {
        if (__src == 223)
        {
          result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(v1, "unknown", &__src, "Array value/terminator");
          if (result)
          {
            do
            {
              v23 = __src;
              if (__src == 3)
              {
                break;
              }

              v24 = *(v1 + 168);
              if (v24 <= 7)
              {
                *(v1 + 168) = v24 + 1;
                *(v1 + 160 + v24) = v23;
              }

              re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
              result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(v1, "unknown", &__src, "Array value/terminator");
            }

            while ((result & 1) != 0);
          }
        }

        else if (__src - 224 > 0xE)
        {
          if (__src == 239)
          {
            for (result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(v1, "unknown", &__src, "Dictionary key/value/terminator"); result; result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(v1, "unknown", &__src, "Dictionary key/value/terminator"))
            {
              v28 = __src;
              if (__src == 3)
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
                re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
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
          result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readDictionaryTag(v1, "unknown", __n);
          if (2 * __n[0])
          {
            v26 = -2 * __n[0];
            do
            {
              result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
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
        result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readArrayTag(v1, "unknown", __n);
        for (i = __n[0]; i; result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1))
        {
          --i;
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readTag(uint64_t a1, const char *a2, char *__src, uint64_t a4)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 168);
    if (v6)
    {
      v7 = v6 - 1;
      *__src = *(a1 + v7 + 160);
      *(a1 + 168) = v7;
      return 1;
    }

    v4 = 1;
    if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, __src, 1uLL))
    {
      return v4;
    }

    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, a4);
  }

  return 0;
}

const char *re::OPACK::toString(int a1)
{
  if (a1 <= 97)
  {
    if (a1 > 47)
    {
      if (a1 <= 50)
      {
        if (a1 == 48)
        {
          return "8-Bit Signed Integer";
        }

        if (a1 == 49)
        {
          return "16-Bit Signed Integer";
        }

        return "32-Bit Signed Integer";
      }

      if (a1 > 53)
      {
        if (a1 == 54)
        {
          return "64-Bit Floating Point";
        }

        if (a1 == 97)
        {
          return "String(8-Bit Length)";
        }
      }

      else
      {
        if (a1 == 51)
        {
          return "64-Bit Signed Integer";
        }

        if (a1 == 53)
        {
          return "32-Bit Floating Point";
        }
      }
    }

    else if (a1 <= 2)
    {
      switch(a1)
      {
        case 0:
          return "Invalid";
        case 1:
          return "Boolean(True)";
        case 2:
          return "Boolean(False)";
      }
    }

    else
    {
      if (a1 <= 4)
      {
        if (a1 == 3)
        {
          return "Terminator";
        }

        else
        {
          return "Null";
        }
      }

      if (a1 == 5)
      {
        return "UUID";
      }

      if (a1 == 6)
      {
        return "Date";
      }
    }

LABEL_67:
    if (a1 < 0x30)
    {
      return "Small Signed Integer";
    }

    if ((a1 - 64) < 0x21)
    {
      return "Small String";
    }

    if ((a1 - 112) < 0x21)
    {
      return "Small Data";
    }

    if ((a1 - 160) < 0x21)
    {
      return "Small UID";
    }

    if ((a1 - 208) < 0xF)
    {
      return "Small Array";
    }

    if ((a1 - 224) >= 0xF)
    {
      return "Unknown Tag";
    }

    return "Small Dictionary";
  }

  if (a1 <= 147)
  {
    if (a1 <= 110)
    {
      switch(a1)
      {
        case 'b':
          return "String(16-Bit Length)";
        case 'c':
          return "String(32-Bit Length)";
        case 'd':
          return "String(64-Bit Length)";
      }
    }

    else
    {
      if (a1 > 145)
      {
        if (a1 == 146)
        {
          return "Data(16-Bit Length)";
        }

        else
        {
          return "Data(32-Bit Length)";
        }
      }

      if (a1 == 111)
      {
        return "Null-Terminated String";
      }

      if (a1 == 145)
      {
        return "Data(8-Bit Length)";
      }
    }

    goto LABEL_67;
  }

  if (a1 > 194)
  {
    if (a1 > 222)
    {
      if (a1 == 223)
      {
        return "Array";
      }

      if (a1 == 239)
      {
        return "Dictionary";
      }
    }

    else
    {
      if (a1 == 195)
      {
        return "24-Bit UID";
      }

      if (a1 == 196)
      {
        return "32-Bit UID";
      }
    }

    goto LABEL_67;
  }

  if (a1 <= 192)
  {
    if (a1 == 148)
    {
      return "Data(64-Bit Length)";
    }

    if (a1 == 159)
    {
      return "Data(Chunked)";
    }

    goto LABEL_67;
  }

  if (a1 == 193)
  {
    return "8-Bit UID";
  }

  else
  {
    return "16-Bit UID";
  }
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readRaw(uint64_t a1, const char *a2, _BYTE *a3, size_t __n, uint64_t a5, char a6)
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
  if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, v14, __n))
  {
    return 1;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, a5);
  return 0;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readStringTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __src = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __src = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
      }

      result = __src;
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

          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
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

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
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

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
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

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readDataTag(uint64_t result, const char *a2, uint64_t *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __src = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __src = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
      }

      result = __src;
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

          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v12, v23);
          if (result)
          {
LABEL_47:
            v8 = v32;
            goto LABEL_8;
          }

          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
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

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &v32, 1uLL);
      if (result)
      {
        LODWORD(v8) = v32;
        goto LABEL_40;
      }

      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
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

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v16, v24);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
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

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, v22, v25);
    if ((result & 1) == 0)
    {
      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "BLOB");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readArrayTag(uint64_t result, const char *a2, char *__src)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __srca = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __srca = *(v5 + v7 + 160);
      v5[21] = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__srca, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Array");
      }

      result = __srca;
    }

    if ((result + 48) > 0xEu)
    {
      if (result == 223)
      {
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readUint64(v5, a2, __src);
      }

      else
      {
        v8 = re::OPACK::toString(result);
        return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Array", v8);
      }
    }

    else
    {
      *__src = result - 208;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readDictionaryTag(uint64_t result, const char *a2, char *__src)
{
  if ((*(result + 40) & 1) == 0)
  {
    v5 = result;
    __srca = 0;
    v6 = *(result + 168);
    if (v6)
    {
      v7 = v6 - 1;
      result = *(result + v7 + 160);
      __srca = *(v5 + v7 + 160);
      *(v5 + 168) = v7;
    }

    else
    {
      if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__srca, 1uLL) & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Dictionary");
      }

      result = __srca;
    }

    if ((result + 32) <= 0xEu)
    {
      *__src = result - 224;
      return result;
    }

    if (result != 210)
    {
LABEL_16:
      v10 = re::OPACK::toString(result);
      return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(v5, "Dictionary", v10);
    }

    result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readUint64(v5, a2, __src);
    if (result && (*(v5 + 40) & 1) == 0)
    {
      v8 = *(v5 + 168);
      if (v8)
      {
        v9 = v8 - 1;
        result = *(v5 + v9 + 160);
        __srca = *(v5 + v9 + 160);
        *(v5 + 168) = v9;
        goto LABEL_15;
      }

      if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__srca, 1uLL))
      {
        result = __srca;
LABEL_15:
        if (result == 239)
        {
          return result;
        }

        goto LABEL_16;
      }

      return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Dictionary");
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::setErrorUnexpectedTag(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, 0, &v9);
  if (v10)
  {
    v7 = *&v11[7];
  }

  else
  {
    v7 = v11;
  }

  re::DynamicString::format(&v12, "Failed to deserialize %s. Expected type: %s. Actual type: %s.", v6, v7, a2, a3);
  *&v15[0] = 400;
  *(&v15[0] + 1) = re::FoundationErrorCategory(void)::instance;
  *&v15[1] = v12;
  *(&v15[2] + 1) = v14;
  *(&v15[1] + 8) = v13;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v15);
  if (*&v15[1])
  {
    if (BYTE8(v15[1]))
    {
      (*(**&v15[1] + 40))();
    }

    memset(&v15[1], 0, 32);
  }

  result = v9;
  if (v9)
  {
    if (v10)
    {
      return (*(*v9 + 40))();
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readUint64(uint64_t a1, const char *a2, char *__src)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v20[5] = v3;
  v20[6] = v4;
  __srca = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    v10 = v9 - 1;
    v11 = *(a1 + v9 - 1 + 160);
    __srca = v11;
    *(a1 + 168) = v10;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__srca, 1uLL) & 1) == 0)
    {
LABEL_24:
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "UInt64");
      return 0;
    }

    v11 = __srca;
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
            *__src++ = *(a1 + 159 + v15);
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

      if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, __src, v17))
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
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readInteger(a1, a2, v20, "Int64"))
    {
      *__src = v20[0];
      return 1;
    }
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::readInteger(uint64_t a1, const char *a2, char *__src, const char *a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v44 = v4;
  v45 = v5;
  __srca = 0;
  v11 = *(a1 + 168);
  if (v11)
  {
    v12 = v11 - 1;
    v13 = *(a1 + v12 + 160);
    __srca = *(a1 + v12 + 160);
    *(a1 + 168) = v12;
  }

  else
  {
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__srca, 1uLL) & 1) == 0)
    {
      v25 = a1;
      v26 = a2;
      v27 = a4;
LABEL_66:
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v25, v26, v27);
      return 0;
    }

    v13 = __srca;
  }

  if ((v13 - 7) <= 0x28)
  {
    v14 = v13 - 8;
LABEL_9:
    *__src = v14;
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

        if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, v18, v34))
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

    if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &v42, 1uLL))
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

    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, v33, v35) & 1) == 0)
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
          *__src++ = *(a1 + 159 + v22);
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

    if (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, __src, v24))
    {
      return 1;
    }

    v27 = "64-Bit Signed Integer";
    goto LABEL_65;
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(uint64_t a1, const char *a2, int a3, char *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<short>(uint64_t a1, const char *a2, int a3, __int16 *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<int>(uint64_t a1, const char *a2, int a3, int *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<long long>(uint64_t a1, const char *a2, int a3, uint64_t *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned char>(uint64_t a1, const char *a2, int a3, unsigned __int8 *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned short>(uint64_t a1, const char *a2, int a3, unsigned __int16 *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned int>(uint64_t a1, const char *a2, int a3, unsigned int *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(uint64_t a1, const char *a2, int a3, uint64_t *a4, char a5)
{
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeUint64(a1, a2, *a4);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      if (*(v11 - 48) != 2)
      {
        ++*(v11 - 16);
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeUint64(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDataTag(a1, a2, 8uLL);
    __src = a3;
    if ((*(a1 + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, &__src, 8uLL);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "UInt64");
      }
    }
  }

  else
  {

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDataTag(uint64_t result, const char *a2, unint64_t a3)
{
  v5 = result;
  if (a3 > 0x20)
  {
    if (a3 <= 0xFF)
    {
      LOBYTE(__src) = -111;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Data(8-Bit Length)");
        }
      }

      LOBYTE(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          v6 = "Data(8-Bit Length)";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }

    else if (a3 >> 16)
    {
      if (HIDWORD(a3))
      {
        LOBYTE(__src) = -108;
        if ((*(result + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
          if ((result & 1) == 0)
          {
            result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Data(64-Bit Length)");
          }
        }

        __src = a3;
        if ((*(v5 + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 8uLL);
          if ((result & 1) == 0)
          {
            v6 = "Data(64-Bit Length)";
            return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
          }
        }
      }

      else
      {
        LOBYTE(__src) = -109;
        if ((*(result + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
          if ((result & 1) == 0)
          {
            result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Data(32-Bit Length)");
          }
        }

        LODWORD(__src) = a3;
        if ((*(v5 + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 4uLL);
          if ((result & 1) == 0)
          {
            v6 = "Data(32-Bit Length)";
            return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
          }
        }
      }
    }

    else
    {
      LOBYTE(__src) = -110;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Data(16-Bit Length)");
        }
      }

      LOWORD(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 2uLL);
        if ((result & 1) == 0)
        {
          v6 = "Data(16-Bit Length)";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }
  }

  else
  {
    LOBYTE(__src) = a3 + 112;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Small Data";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  return result;
}

re::TypeInfo *re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, const re::TypeInfo *a5, const re::TypeInfo *a6, int a7)
{
  if (a7)
  {
    v11 = *(a1 + 26);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v25);
    re::TypeInfo::TypeInfo(v24, v26);
    re::internal::translateType(&v25, v11, v24);
    if ((a1[64] & 1) == 0)
    {
      return (*(*a1 + 72))(a1, a2, a3, 0, &v25, &v25, 1);
    }

    return 0;
  }

  v15 = *a5;
  if (a5 == a6)
  {
    goto LABEL_8;
  }

  if (v15 == *a6)
  {
    v19 = **(a5 + 2);
    v20 = **(a6 + 2);
    if (v19 == v20)
    {
      v22 = WORD1(v19) == WORD1(v20);
      v21 = (v20 ^ v19) & 0xFFFFFF00000000;
      v22 = v22 && v21 == 0;
      if (v22)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    result = re::internal::findEnumConstantToSerialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a4, a5, a6, 1);
    if (!result)
    {
      return result;
    }

    a4 = result;
    v23 = *(a1 + 26);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v25);
    re::TypeInfo::TypeInfo(v24, v26);
    re::internal::translateType(&v25, v23, v24);
    if (a1[64])
    {
      return 0;
    }

    v16 = *(*a1 + 72);
    v17 = &v25;
    v18 = &v25;
    return v16(a1, a2, a3, a4, v17, v18, 0);
  }

  if (!re::areSameTranslatedVersion(a5, a6, a3))
  {
    goto LABEL_15;
  }

  v15 = *a5;
LABEL_8:
  re::TypeRegistry::typeInfo(v15, *(*(a5 + 2) + 80), &v25);
  re::TypeInfo::TypeInfo(v24, v26);
  if (a1[64])
  {
    return 0;
  }

  v16 = *(*a1 + 72);
  v17 = v24;
  v18 = v24;
  return v16(a1, a2, a3, a4, v17, v18, 0);
}

uint64_t re::internal::findEnumConstantToSerialize<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, re::TypeInfo *a3, re::internal *this, re::TypeInfo *a5, int a6)
{
  if (*(*(this + 2) + 8) >= 9u)
  {
    re::TypeInfo::name(this);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Enum type %s has invalid size: %zu bytes");
    return 0;
  }

  EnumConstantIndex = re::internal::getEnumConstantIndex(this, a3, a3);
  if ((EnumConstantIndex & 0x80000000) != 0)
  {
    __dst = 0;
    memcpy(&__dst, a3, *(*(this + 2) + 8));
    re::TypeInfo::name(this);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Value %zu is not a valid enum constant of %s.");
    return 0;
  }

  v13 = EnumConstantIndex;
  if (!a6)
  {
    v18 = re::TypeInfo::enumConstants(this);
    if (v19 > v13)
    {
      return v18 + 24 * v13;
    }

    re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, v19);
    _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v20, v22);
    __break(1u);
    goto LABEL_15;
  }

  v14 = *(*a5 + 856);
  if (!v14 || (result = re::internal::TypeTranslationTable::translateRuntimeEnum(v14, this, v13, a5)) == 0)
  {
    re::TypeInfo::enumConstants(this);
    v17 = v13;
    if (v16 > v13)
    {
      re::TypeInfo::name(a5);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Runtime enum constant %s does not exist in serialized type %s.");
      return 0;
    }

LABEL_15:
    re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v16);
    result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v21, v23);
    __break(1u);
  }

  return result;
}

unint64_t re::Slice<re::EnumConstant>::operator[](void *a1, unint64_t a2)
{
  v4 = a1[1];
  if (v4 > a2)
  {
    return *a1 + 24 * a2;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v4, v2, v3);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v6, v7);
  __break(1u);
  return result;
}

void re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginOptional(uint64_t result, const char *a2, int a3, unsigned __int8 *a4, int a5)
{
  if ((*(result + 40) & 1) == 0)
  {
    v9 = *(result + 128) + 48 * *(result + 112);
    if (*(v9 - 48) == 2 && (*(v9 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(result, a2, a3);
    }

    v10 = *a4;
    if ((v10 & 1) == 0)
    {
      v11[0] = 4;
      if ((*(result + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, v11, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(result, a2, "Optional");
      }

      v10 = *a4;
    }

    v11[0] = 3;
    v12 = a5;
    v13 = a2;
    v14 = 0;
    v16 = 0;
    v17 = 0;
    v15 = v10;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(result, v11);
    *(*(result + 128) + 48 * *(result + 112) - 32) = 0;
  }
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
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

double re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(void *a1, uint64_t a2)
{
  if (a1[14] >= a1[19])
  {
    re::DynamicString::format(v6, "State stack overflow (max depth is %zu). Increase user default com.apple.maxSerializationDepth to allow deeper hierarchies.", a2, a1[19]);
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, v6);
    if (*&v6[0])
    {
      if (BYTE8(v6[0]))
      {
        (*(**&v6[0] + 40))();
      }
    }
  }

  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = *(a2 + 32);
  *&result = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add((a1 + 12), v6).n128_u64[0];
  return result;
}

__n128 re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
            memcpy(v7, v5[4], 48 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(uint64_t a1, const char *a2, int a3, unint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v22 = v5;
    v23 = v6;
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) == 2 && (*(v12 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDataTag(a1, a2, *a4);
    v13 = *a4;
    v15[0] = 4;
    v16 = a5;
    v17 = a2;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = v13;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v15);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBLOB(uint64_t result, char *a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v4 = result;
    v5 = *(*(result + 128) + 48 * *(result + 112) - 24);
    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, a2, v5);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v4, 0, "BLOB");
    }

    if ((a3 & 2) == 0)
    {
      v6 = *(v4 + 16) + 48 * *(v4 + 14);
      if (*(v6 - 48) != 2)
      {
        *(v6 - 16) += v5;
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endBLOB(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
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

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(uint64_t a1, const char *a2, int a3, unint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v22 = v5;
    v23 = v6;
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) == 2 && (*(v12 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeArrayTag(a1, a2, *a4);
    v13 = *a4;
    v15[0] = 5;
    v16 = a5;
    v17 = a2;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = v13;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v15);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endArray(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    v4 = *(v2 + 48 * v3 - 16);
    if (v4 == *(v2 + 48 * v3 - 24))
    {
      if (v4 >= 0xF)
      {
        LOBYTE(__src[0]) = 3;
        if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, __src, 1uLL) & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v1, 0, "Array");
        }

        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
      }

      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 5);
      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v6 - 48) != 2)
      {
        ++*(v6 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v10);
      if (v11)
      {
        v8 = *&v12[7];
      }

      else
      {
        v8 = v12;
      }

      v9 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(__src, "Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", v7, v8, *(v9 - 24), *(v9 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __src);
      if (*&__src[0])
      {
        if (BYTE8(__src[0]))
        {
          (*(**&__src[0] + 40))();
        }

        memset(__src, 0, sizeof(__src));
      }

      result = v10;
      if (v10 && (v11 & 1) != 0)
      {
        return (*(*v10 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::ArrayAccessor::elementAt(re::ArrayAccessor *this, char *a2, unint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (re::ArrayAccessor::size(this, a2) <= a3)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v11 = 136315906;
    v12 = "elementAt";
    v13 = 1024;
    v14 = 42;
    v15 = 2048;
    v16 = a3;
    v17 = 2048;
    v18 = re::ArrayAccessor::size(this, a2);
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  return re::ArrayAccessor::elementAtUnchecked(this, a2, a3);
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeArrayTag(uint64_t result, const char *a2, unint64_t a3)
{
  v5 = result;
  if (a3 > 0xE)
  {
    v7 = -33;
    if ((*(result + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &v7, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Array");
    }

    return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeUint64(v5, a2, a3);
  }

  else
  {
    __src = a3 | 0xD0;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Small Array");
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginDictionary(uint64_t a1, const char *a2, int a3, unint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v22 = v5;
    v23 = v6;
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) == 2 && (*(v12 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDictionaryTag(a1, a2, *a4);
    v13 = *a4;
    v15[0] = 6;
    v16 = a5;
    v17 = a2;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = v13;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v15);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == 2)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(result, 7);
      v2 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v2 - 48) != 2)
      {
        ++*(v2 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v5);
      if (v6)
      {
        v4 = *&v7[7];
      }

      else
      {
        v4 = v7;
      }

      re::DynamicString::format(v8, "Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", v3, v4, *(*(v1 + 16) + 48 * *(v1 + 14) - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v8);
      if (*&v8[0])
      {
        if (BYTE8(v8[0]))
        {
          (*(**&v8[0] + 40))();
        }

        memset(v8, 0, sizeof(v8));
      }

      result = v5;
      if (v5 && (v6 & 1) != 0)
      {
        return (*(*v5 + 40))();
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    v4 = *(v2 + 48 * v3 - 16);
    if (v4 == *(v2 + 48 * v3 - 24))
    {
      if (v4 >= 0xF)
      {
        LOBYTE(__src[0]) = 3;
        if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, __src, 1uLL) & 1) == 0)
        {
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v1, 0, "Dictionary");
        }

        v2 = *(v1 + 16);
        v3 = *(v1 + 14);
      }

      for (i = *(v2 + 48 * v3 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, 6);
      v6 = *(v1 + 16) + 48 * *(v1 + 14);
      if (*(v6 - 48) != 2)
      {
        ++*(v6 - 16);
      }
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v10);
      if (v11)
      {
        v8 = *&v12[7];
      }

      else
      {
        v8 = v12;
      }

      v9 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(__src, "Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", v7, v8, *(v9 - 24), *(v9 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, __src);
      if (*&__src[0])
      {
        if (BYTE8(__src[0]))
        {
          (*(**&__src[0] + 40))();
        }

        memset(__src, 0, sizeof(__src));
      }

      result = v10;
      if (v10 && (v11 & 1) != 0)
      {
        return (*(*v10 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeDictionaryTag(uint64_t result, const char *a2, unint64_t a3)
{
  v5 = result;
  if (a3 > 0xE)
  {
    v8 = -46;
    if ((*(result + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &v8, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "Dictionary container");
    }

    result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeUint64(v5, a2, a3);
    v9 = -17;
    if ((*(v5 + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &v9, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Dictionary";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  else
  {
    __src = a3 | 0xE0;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Small Dictionary";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(uint64_t *result, char *a2, uint64_t (**a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, __n128 a6)
{
LABEL_1:
  v10 = (a2 - 16);
  v58 = (a2 - 48);
  v59 = (a2 - 32);
  v11 = result;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    result = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 4;
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v55 = *(a2 - 2);
      v54 = (a2 - 16);
      if ((*a3)(v55, *v11))
      {
LABEL_80:
        v80 = *v11;
        *v11 = *v54;
        v47 = v80;
        goto LABEL_81;
      }

      return;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(v11, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(v11, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,re::Pair<void const*,void *,true>*>(v11, a2, a2, a3, a6);
      }

      return;
    }

    v15 = &v11[2 * (v14 >> 1)];
    v16 = *a3;
    if (v14 >= 0x81)
    {
      v17 = v16(*v15, *v11);
      v18 = (*a3)(*v10, *v15);
      if (v17)
      {
        if (v18)
        {
          v60 = *v11;
          *v11 = *v10;
          goto LABEL_28;
        }

        v66 = *v11;
        *v11 = *v15;
        *v15 = v66;
        if ((*a3)(*v10, *v15))
        {
          v60 = *v15;
          *v15 = *v10;
LABEL_28:
          *v10 = v60;
        }
      }

      else if (v18)
      {
        v62 = *v15;
        *v15 = *v10;
        *v10 = v62;
        if ((*a3)(*v15, *v11))
        {
          v63 = *v11;
          *v11 = *v15;
          *v15 = v63;
        }
      }

      v21 = v11 + 2;
      v22 = v15 - 2;
      v23 = (*a3)(*(v15 - 2), result[2]);
      v24 = (*a3)(*v59, *(v15 - 2));
      v25 = a5;
      if (v23)
      {
        if (v24)
        {
          v26 = *v21;
          v27 = a2 - 32;
          *v21 = *v59;
          goto LABEL_42;
        }

        v29 = *v21;
        *v21 = *v22;
        *v22 = v29;
        if ((*a3)(*v59, *v22))
        {
          v69 = *v22;
          v27 = a2 - 32;
          *v22 = *v59;
          v26 = v69;
LABEL_42:
          *v27 = v26;
        }
      }

      else if (v24)
      {
        v67 = *v22;
        *v22 = *v59;
        *v59 = v67;
        if ((*a3)(*v22, *v21))
        {
          v28 = *v21;
          *v21 = *v22;
          *v22 = v28;
        }
      }

      v30 = result + 4;
      v31 = v15 + 2;
      v32 = (*a3)(v15[2], result[4]);
      v33 = (*a3)(*v58, v15[2]);
      if (v32)
      {
        if (v33)
        {
          v34 = *v30;
          v35 = a2 - 48;
          *v30 = *v58;
          goto LABEL_51;
        }

        v37 = *v30;
        *v30 = *v31;
        *v31 = v37;
        if ((*a3)(*v58, *v31))
        {
          v71 = *v31;
          v35 = a2 - 48;
          *v31 = *v58;
          v34 = v71;
LABEL_51:
          *v35 = v34;
        }
      }

      else if (v33)
      {
        v70 = *v31;
        *v31 = *v58;
        *v58 = v70;
        if ((*a3)(*v31, *v30))
        {
          v36 = *v30;
          *v30 = *v31;
          *v31 = v36;
        }
      }

      v38 = (*a3)(*v15, *v22);
      v39 = (*a3)(*v31, *v15);
      a5 = v25;
      if (v38)
      {
        if (v39)
        {
          v72 = *v22;
          *v22 = *v31;
          *v31 = v72;
          v10 = (a2 - 16);
        }

        else
        {
          v75 = *v22;
          *v22 = *v15;
          *v15 = v75;
          v10 = (a2 - 16);
          if ((*a3)(*v31, *v15))
          {
            v76 = *v15;
            *v15 = *v31;
            *v31 = v76;
          }
        }
      }

      else
      {
        v10 = (a2 - 16);
        if (v39)
        {
          v73 = *v15;
          *v15 = *v31;
          *v31 = v73;
          if ((*a3)(*v15, *v22))
          {
            v74 = *v22;
            *v22 = *v15;
            *v15 = v74;
          }
        }
      }

      v77 = *result;
      *result = *v15;
      *v15 = v77;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v19 = v16(*v11, *v15);
    v20 = (*a3)(*v10, *v11);
    if (v19)
    {
      if (v20)
      {
        v61 = *v15;
        *v15 = *v10;
        goto LABEL_37;
      }

      v68 = *v15;
      *v15 = *v11;
      *v11 = v68;
      if ((*a3)(*v10, *v11))
      {
        v61 = *v11;
        *v11 = *v10;
LABEL_37:
        *v10 = v61;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (!v20)
    {
      goto LABEL_38;
    }

    v64 = *v11;
    *v11 = *v10;
    *v10 = v64;
    if (!(*a3)(*v11, *v15))
    {
      goto LABEL_38;
    }

    v65 = *v15;
    *v15 = *v11;
    *v11 = v65;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (((*a3)(*(result - 2), *result) & 1) == 0)
    {
      v11 = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &>(result, a2, a3);
      goto LABEL_67;
    }

LABEL_62:
    v40 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &>(result, a2, a3);
    if ((v41 & 1) == 0)
    {
      goto LABEL_65;
    }

    v42 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(result, v40, a3);
    v11 = (v40 + 16);
    if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(v40 + 16, a2, a3))
    {
      a4 = -v13;
      a2 = v40;
      if (v42)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v42)
    {
LABEL_65:
      std::__introsort<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,false>(result, v40, a3, -v13, a5 & 1);
      v11 = (v40 + 16);
LABEL_67:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(v11, v11 + 2, v11 + 4, v10, a3);
      return;
    }

    if (v14 == 5)
    {
      v48 = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(v11, v11 + 2, v11 + 4, v11 + 6, a3);
      v50 = *(a2 - 2);
      v49 = a2 - 16;
      if ((*a3)(v50, v11[6], v48))
      {
        v51 = *(v11 + 3);
        *(v11 + 3) = *v49;
        *v49 = v51;
        if ((*a3)(v11[6], v11[4]))
        {
          v52 = *(v11 + 2);
          *(v11 + 2) = *(v11 + 3);
          *(v11 + 3) = v52;
          if ((*a3)(v11[4], v11[2]))
          {
            v53 = *(v11 + 1);
            *(v11 + 1) = *(v11 + 2);
            *(v11 + 2) = v53;
            if ((*a3)(v11[2], *v11))
            {
              v79 = *v11;
              *v11 = *(v11 + 1);
              *(v11 + 1) = v79;
            }
          }
        }
      }

      return;
    }

    goto LABEL_10;
  }

  v43 = v11 + 2;
  v44 = (*a3)(v11[2], *v11);
  v45 = *(a2 - 2);
  v54 = (a2 - 16);
  v46 = (*a3)(v45, v11[2]);
  if (v44)
  {
    if (v46)
    {
      goto LABEL_80;
    }

    v78 = *v11;
    *v11 = *v43;
    *v43 = v78;
    if ((*a3)(*v54, v11[2]))
    {
      v47 = *v43;
      *v43 = *v54;
LABEL_81:
      *v54 = v47;
    }
  }

  else if (v46)
  {
    v57 = *v43;
    *v43 = *v54;
    *v54 = v57;
    if ((*a3)(v11[2], *v11))
    {
      v81 = *v11;
      *v11 = *v43;
      *v43 = v81;
    }
  }
}

__n128 std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(void *a1, void *a2, void *a3, void *a4, uint64_t (**a5)(void, void))
{
  v10 = (*a5)(*a2, *a1);
  v11 = (*a5)(*a3, *a2);
  if (v10)
  {
    if (v11)
    {
      v12 = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = v12;
      goto LABEL_10;
    }

    v15 = *a1;
    *a1 = *a2;
    *a2 = v15;
    if ((*a5)(*a3, *a2))
    {
      v12 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if ((*a5)(*a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

LABEL_10:
  if ((*a5)(*a4, *a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a5)(*a3, *a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a5)(*a2, *a1))
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 16);
    if ((result + 16) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8[2];
        v10 = *v8;
        v8 = v5;
        result = (*a3)(v9, v10);
        if (result)
        {
          v14 = *v8;
          v11 = *v8;
          v12 = v7;
          while (1)
          {
            *(v4 + v12 + 16) = *(v4 + v12);
            if (!v12)
            {
              break;
            }

            result = (*a3)(v11, *(v4 + v12 - 16));
            v12 -= 16;
            if ((result & 1) == 0)
            {
              v13 = (v4 + v12 + 16);
              goto LABEL_10;
            }
          }

          v13 = v4;
LABEL_10:
          *v13 = v14;
        }

        v5 = v8 + 2;
        v7 += 16;
      }

      while (v8 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(uint64_t result, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  if (result != a2)
  {
    v4 = result;
    for (i = (result + 16); v4 + 2 != a2; i = v4 + 2)
    {
      v7 = v4[2];
      v8 = *v4;
      v4 = i;
      result = (*a3)(v7, v8);
      if (result)
      {
        v12 = *v4;
        v9 = *v4;
        v10 = v4;
        do
        {
          v11 = v10 - 2;
          *v10 = *(v10 - 1);
          result = (*a3)(v9, *(v10 - 4));
          v10 = v11;
        }

        while ((result & 1) != 0);
        *v11 = v12;
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v4 = a2;
  v14 = *a1;
  v6 = *a1;
  if ((*a3)(*a1, *(a2 - 2)))
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v7 += 2;
    }

    while (((*a3)(v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 2;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      v9 += 2;
    }

    while (!(*a3)(v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *(v4 - 2);
      v4 -= 2;
    }

    while (((*a3)(v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v15 = *v7;
    *v7 = *v4;
    *v4 = v15;
    do
    {
      v11 = v7[2];
      v7 += 2;
    }

    while (!(*a3)(v6, v11));
    do
    {
      v12 = *(v4 - 2);
      v4 -= 2;
    }

    while (((*a3)(v6, v12) & 1) != 0);
  }

  if (v7 - 2 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v14;
  return v7;
}

__int128 *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &>(__int128 *a1, __int128 *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = 0;
  v19 = *a1;
  v7 = *a1;
  do
  {
    v8 = (*a3)(*&a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *(a2-- - 2);
    }

    while (((*a3)(v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *(a2-- - 2);
    }

    while (!(*a3)(v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = *(v13++ + 2);
      }

      while (((*a3)(v16, v7) & 1) != 0);
      do
      {
        v17 = *(v14-- - 2);
      }

      while (!(*a3)(v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v19;
  return v10;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(char *a1, char *a2, uint64_t (**a3)(uint64_t, uint64_t))
{
  v6 = (a2 - a1) >> 4;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = (a1 + 16);
        v16 = (*a3)(*(a1 + 2), *a1);
        v17 = *(a2 - 2);
        v7 = (a2 - 16);
        v18 = (*a3)(v17, *v15);
        if ((v16 & 1) == 0)
        {
          if (v18)
          {
            v25 = *v15;
            *v15 = *v7;
            *v7 = v25;
            if ((*a3)(*(a1 + 2), *a1))
            {
              v26 = *a1;
              *a1 = *v15;
              *v15 = v26;
            }
          }

          return 1;
        }

        if (!v18)
        {
          v29 = *a1;
          *a1 = *v15;
          *v15 = v29;
          if (!(*a3)(*v7, *(a1 + 2)))
          {
            return 1;
          }

          v19 = *v15;
          *v15 = *v7;
          goto LABEL_17;
        }

LABEL_16:
        v19 = *a1;
        *a1 = *v7;
LABEL_17:
        *v7 = v19;
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        v8 = std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        v10 = *(a2 - 2);
        v9 = a2 - 16;
        if ((*a3)(v10, *(a1 + 6), v8))
        {
          v11 = *(a1 + 3);
          *(a1 + 3) = *v9;
          *v9 = v11;
          if ((*a3)(*(a1 + 6), *(a1 + 4)))
          {
            v12 = *(a1 + 2);
            *(a1 + 2) = *(a1 + 3);
            *(a1 + 3) = v12;
            if ((*a3)(*(a1 + 4), *(a1 + 2)))
            {
              v13 = *(a1 + 1);
              *(a1 + 1) = *(a1 + 2);
              *(a1 + 2) = v13;
              if ((*a3)(*(a1 + 2), *a1))
              {
                v14 = *a1;
                *a1 = *(a1 + 1);
                *(a1 + 1) = v14;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = (a2 - 16);
      if (!(*a3)(*(a2 - 2), *a1))
      {
        return 1;
      }

      goto LABEL_16;
    }
  }

  v20 = (a1 + 16);
  v21 = (*a3)(*(a1 + 2), *a1);
  v22 = (a1 + 32);
  v23 = (*a3)(*(a1 + 4), *v20);
  if (v21)
  {
    if (v23)
    {
      v24 = *a1;
      *a1 = *v22;
    }

    else
    {
      v30 = *a1;
      *a1 = *v20;
      *v20 = v30;
      if (!(*a3)(*(a1 + 4), *(a1 + 2)))
      {
        goto LABEL_33;
      }

      v24 = *v20;
      *v20 = *v22;
    }

    *v22 = v24;
  }

  else if (v23)
  {
    v27 = *v20;
    *v20 = *v22;
    *v22 = v27;
    if ((*a3)(*(a1 + 2), *a1))
    {
      v28 = *a1;
      *a1 = *v20;
      *v20 = v28;
    }
  }

LABEL_33:
  v31 = (a1 + 48);
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (1)
  {
    if ((*a3)(*v31, *v22))
    {
      v39 = *v31;
      v34 = *v31;
      v35 = v32;
      while (1)
      {
        *&a1[v35 + 48] = *&a1[v35 + 32];
        if (v35 == -32)
        {
          break;
        }

        v36 = (*a3)(v34, *&a1[v35 + 16]);
        v35 -= 16;
        if ((v36 & 1) == 0)
        {
          v37 = &a1[v35 + 48];
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      *v37 = v39;
      if (++v33 == 8)
      {
        return v31 + 2 == a2;
      }
    }

    v22 = v31;
    v32 += 16;
    v31 += 2;
    if (v31 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*,re::Pair<void const*,void *,true>*>(char *a1, char *a2, char *a3, unsigned int (**a4)(uint64_t, uint64_t), __n128 a5)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = (a2 - a1) >> 4;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[16 * v10];
      do
      {
        a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(a1, a4, v9, v12);
        v12 -= 2;
        --v11;
      }

      while (v11);
    }

    v13 = v7;
    if (v7 != a3)
    {
      v13 = v7;
      do
      {
        if ((*a4)(*v13, *a1, a5))
        {
          v14 = *v13;
          *v13 = *a1;
          *a1 = v14;
          a5 = std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(a1, a4, v9, a1);
        }

        v13 += 16;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      do
      {
        v25 = v7;
        v15 = 0;
        v26 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[16 * v15];
          v18 = v17 + 16;
          v19 = (2 * v15) | 1;
          v20 = 2 * v15 + 2;
          if (v20 >= v9)
          {
            v15 = (2 * v15) | 1;
          }

          else
          {
            v22 = *(v17 + 4);
            v21 = v17 + 32;
            if ((*a4)(*(v21 - 2), v22))
            {
              v18 = v21;
              v15 = v20;
            }

            else
            {
              v15 = v19;
            }
          }

          *v16 = *v18;
          v16 = v18;
        }

        while (v15 <= ((v9 - 2) >> 1));
        v7 = v25 - 16;
        if (v18 == v25 - 16)
        {
          *v18 = v26;
        }

        else
        {
          *v18 = *v7;
          *v7 = v26;
          std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(a1, (v18 + 16), a4, (v18 + 16 - a1) >> 4);
        }
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v10 = (a4 - a1) >> 3;
      v11 = v10 + 1;
      v12 = (a1 + 16 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && (*a2)(*v12, v12[2]))
      {
        v12 += 2;
        v11 = v13;
      }

      if (((*a2)(*v12, *v5) & 1) == 0)
      {
        v19 = *v5;
        v15 = *v5;
        do
        {
          v16 = v5;
          v5 = v12;
          *v16 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = (a1 + 16 * v17);
          v18 = 2 * v11 + 2;
          if (v18 < a3)
          {
            if ((*a2)(*v12, v12[2]))
            {
              v12 += 2;
              v17 = v18;
            }
          }

          v11 = v17;
        }

        while (!(*a2)(*v12, v15));
        result = v19;
        *v5 = v19;
      }
    }
  }

  return result;
}

__n128 std::__sift_up[abi:nn200100]<std::_ClassicAlgPolicy,BOOL re::serializeDictionary<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1} &,re::Pair<void const*,void *,true>*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(unint64_t, unint64_t), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = (a1 + 16 * (v4 >> 1));
    v9 = (a2 - 16);
    if ((*a3)(*v8, *(a2 - 16)))
    {
      v13 = *v9;
      v11 = v9->n128_u64[0];
      do
      {
        v12 = v9;
        v9 = v8;
        *v12 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (a1 + 16 * v7);
      }

      while (((*a3)(*v8, v11) & 1) != 0);
      result = v13;
      *v9 = v13;
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(uint64_t a1, const char *a2, int a3, int a4)
{
  v4 = *(a1 + 40);
  if ((v4 & 1) == 0)
  {
    v8 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v8 - 48) == 2 && (*(v8 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    if ((a4 & 0x10) != 0)
    {
      v11[0] = -33;
      if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, v11, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Object");
      }

      v9 = 1;
    }

    else
    {
      v11[0] = -17;
      if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, v11, 1uLL) & 1) == 0)
      {
        re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Object");
      }

      v9 = 2;
    }

    v11[0] = v9;
    v12 = a4;
    v13 = a2;
    v14 = 0;
    v15 = 0;
    v16 = 0xFFFFFFFF80000000;
    v17 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v11);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
  }

  return v4 ^ 1u;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    __src = 3;
    if ((re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v1, 0, "Object");
    }

    v2 = *(v1 + 16);
    v3 = *(v1 + 14);
    v4 = *(v2 + 48 * v3 - 32);
    if (v4)
    {
      do
      {
        --v4;
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
      }

      while (v4);
      v2 = *(v1 + 16);
      v3 = *(v1 + 14);
    }

    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState(v1, *(v2 + 48 * v3 - 48));
    v5 = *(v1 + 16) + 48 * *(v1 + 14);
    if (*(v5 - 48) != 2)
    {
      ++*(v5 - 16);
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_14:
  if (a7)
  {
    v29 = 0;
    v21 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v9, &v29, 0);
    v20 = 0;
    if (v21)
    {
      if (v29)
      {
        v22 = a1 + 24;
        v23 = 0;
        v24 = 1;
LABEL_27:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(v22, v23, v24);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v25 = *(a4 + 8);
    if (v25)
    {
      v26 = v25 >> 1;
    }

    else
    {
      v26 = v25 >> 1;
    }

    v29 = v26;
    v27 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v9, &v29, 0);
    v20 = 0;
    if (v27)
    {
      if (v29)
      {
        if (*(a4 + 8))
        {
          v23 = *(a4 + 16);
        }

        else
        {
          v23 = (a4 + 9);
        }

        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_27;
      }

LABEL_28:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
      v20 = *(a1 + 64) ^ 1;
    }
  }

  return v20 & 1;
}

void *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CB5B18;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, uint64_t a4, re *a5, re *a6, uint64_t a7)
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
    if ((*(a1 + 64) & 1) == 0)
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

  re::TypeMemberCollection::TypeMemberCollection(v23, *a6, v19);
  re::TypeMemberCollection::operator[](v23, 0, v24);
  re::TypeRegistry::typeInfo(v24[0], *v24[2], &v29);
  re::TypeInfo::TypeInfo(v25, v30);
  if (*(a1 + 64))
  {
    return 0;
  }

  return (*(*a1 + 72))(a1, a2, a3, a4 + v15, v26, v25, a7);
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(uint64_t a1, const char *a2, int a3, unint64_t *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v22 = v5;
    v23 = v6;
    v12 = *(a1 + 128) + 48 * *(a1 + 112);
    if (*(v12 - 48) == 2 && (*(v12 - 44) & 0x40) == 0)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeStringTag(a1, a2, *a4);
    v13 = *a4;
    v15[0] = 8;
    v16 = a5;
    v17 = a2;
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = v13;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v15);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(uint64_t result, char *a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v4 = result;
    v5 = *(*(result + 128) + 48 * *(result + 112) - 24);
    result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, a2, v5);
    if ((result & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v4, 0, "String");
    }

    if ((a3 & 2) == 0)
    {
      v6 = *(v4 + 16) + 48 * *(v4 + 14);
      if (*(v6 - 48) != 2)
      {
        *(v6 - 16) += v5;
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
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

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeStringTag(uint64_t result, const char *a2, unint64_t a3)
{
  v5 = result;
  if (a3 > 0x20)
  {
    if (a3 <= 0xFF)
    {
      LOBYTE(__src) = 97;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String(8-Bit Length)");
        }
      }

      LOBYTE(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          v6 = "String(8-Bit Length)";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }

    else if (a3 >> 16)
    {
      if (HIDWORD(a3))
      {
        LOBYTE(__src) = 100;
        if ((*(result + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
          if ((result & 1) == 0)
          {
            result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String(64-Bit Length)");
          }
        }

        __src = a3;
        if ((*(v5 + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 8uLL);
          if ((result & 1) == 0)
          {
            v6 = "String(64-Bit Length)";
            return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
          }
        }
      }

      else
      {
        LOBYTE(__src) = 99;
        if ((*(result + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
          if ((result & 1) == 0)
          {
            result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String(32-Bit Length)");
          }
        }

        LODWORD(__src) = a3;
        if ((*(v5 + 40) & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 4uLL);
          if ((result & 1) == 0)
          {
            v6 = "String(32-Bit Length)";
            return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
          }
        }
      }
    }

    else
    {
      LOBYTE(__src) = 98;
      if ((*(result + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
        if ((result & 1) == 0)
        {
          result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, "String(16-Bit Length)");
        }
      }

      LOWORD(__src) = a3;
      if ((*(v5 + 40) & 1) == 0)
      {
        result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(v5, &__src, 2uLL);
        if ((result & 1) == 0)
        {
          v6 = "String(16-Bit Length)";
          return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
        }
      }
    }
  }

  else
  {
    LOBYTE(__src) = a3 | 0x40;
    if ((*(result + 40) & 1) == 0)
    {
      result = re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(result, &__src, 1uLL);
      if ((result & 1) == 0)
      {
        v6 = "Small String";
        return re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(v5, a2, v6);
      }
    }
  }

  return result;
}

__n128 re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(uint64_t a1, __n128 *a2)
{
  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  result = *a2;
  *(v4 + 16 * (*(a1 + 8))++) = *a2;
  *(a1 + 16) += 2;
  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CB5B18;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

double re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), 0);
  v4.n128_u64[0] = "";
  v4.n128_u32[2] = 0;
  *&result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, &v4).n128_u64[0];
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::endObject(uint64_t a1)
{
  v1 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v1 + 2;
  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((*(a1 + 8) + 24));
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginArray(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginArray(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginDictionary(uint64_t a1, unint64_t a2)
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

  v6 = v5 + 16 * *(a1 + 40);
  v7 = *(a1 + 8);
  v9 = a2;
  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginDictionary(v7 + 24, *(v6 - 16), *(v6 - 8), &v9, 0);
}

void re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginDictionaryEntry(uint64_t a1)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginDictionaryValue(uint64_t result)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::endDictionary(uint64_t a1)
{
  result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endDictionary((*(a1 + 8) + 24));
  v3 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v3 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::beginOptional(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginOptional(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
  return v4;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, char a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, __int16 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, unsigned __int16 a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, int a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, unsigned int a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, float a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::operator<<(uint64_t a1, double a2)
{
  v4 = a2;
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), &v4, 0);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::serializeString(uint64_t a1, char *a2, unint64_t a3)
{
  v8 = a3;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(*(a1 + 8) + 24, *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), &v8, 0))
  {
    v6 = v8 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(*(a1 + 8) + 24, a2, 0);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((*(a1 + 8) + 24));
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::serializeData(uint64_t a1, char *a2, unint64_t a3)
{
  v7 = a3;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginBLOB(*(a1 + 8) + 24, *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), &v7, 0))
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBLOB(*(a1 + 8) + 24, a2, 0);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endBLOB((*(a1 + 8) + 24));
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 2 * (a2 != 0);
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(*(a1 + 8) + 24, *(v6 + 16 * *(a1 + 40) - 16), *(v6 + 16 * *(a1 + 40) - 8), &v8, 0);
  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::write(uint64_t a1, uint64_t a2, re **this)
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

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', writing field '%s'(%d)", v11, *(v12 + 16 * *(a1 + 40) - 16), *(v12 + 16 * *(a1 + 40) - 8));
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

_anonymous_namespace_ *re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 4;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 4)
    {
      return result;
    }

    v5 = 8;
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

  return re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(result, a2);
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 4;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 4 || (v7 & 1) == 0))
    {
      if (a2 < 5)
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

        memcpy(v14, v16, 16 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 60)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 16, a2);
        _os_crash("assertion failure: (!overflow) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
        __break(1u);
      }

      else
      {
        v2 = 16 * a2;
        v10 = (*(*v5 + 32))(*result, 16 * a2, 8);
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

          result = memcpy(v10, v13, 16 * *(v4 + 1));
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

void re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext::beginDictionaryEntry(uint64_t result, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    v3[0] = 7;
    v4 = 0;
    v5 = "entry";
    v6 = xmmword_1E3054780;
    v7 = 0;
    v8 = 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a2, v3);
  }

  *(result + 8) = 0;
  *result = "key";
}

uint64_t re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer(uint64_t a1, const char *a2, uint64_t a3, int *a4, int a5)
{
  if (*(a1 + 40))
  {
    v5 = 0;
    return v5 & 1;
  }

  v10 = *(a1 + 128) + 48 * *(a1 + 112);
  if (*(v10 - 48) == 2 && (*(v10 - 44) & 0x40) == 0)
  {
    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::writeInteger(a1, a2, a3);
  }

  v11 = *a4;
  if ((*a4 - 1) < 2)
  {
LABEL_12:
    __src[0] = 9;
    v14 = a5;
    v15 = a2;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = v11 != 0;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, __src);
    *(*(a1 + 128) + 48 * *(a1 + 112) - 32) = 0;
    v5 = *(a1 + 40) ^ 1;
    return v5 & 1;
  }

  if (!v11)
  {
    __src[0] = 4;
    if ((*(a1 + 40) & 1) == 0 && (re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::process<re::DynamicArrayBufferedOutputStream,0>(a1, __src, 1uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setErrorWithType(a1, a2, "Optional");
    }

    v11 = *a4;
    goto LABEL_12;
  }

  re::internal::assertLog(4, a2, a3, "assertion failure: '%s' (%s:line %i) Unexpected PointerEncoding.", "!Unreachable code", "beginPointer", 927);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected PointerEncoding.");
  __break(1u);
  return result;
}

_anonymous_namespace_ *re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::skipObject(v1);
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

_BYTE *re::Optional<re::TypeInfo>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::TypeInfo::operator=((a1 + 8), (a2 + 8));
    }

    else
    {
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::TypeInfo::TypeInfo((a1 + 8), (a2 + 8));
  }

  return a1;
}

void *re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), &v19);
  if (v19 == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), &v21), v21 == 1))
    {
      if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject((a1 + 24), "@super", 0, 0))
      {
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, v16, a4);
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
      }
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v16, *a3, a3[2]);
  if (v18)
  {
    for (i = 0; i < v18; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v16, i, &v14);
      if (*(v15 + 28) == 1)
      {
        v10 = *(v15 + 16);
        if (strlen(v10) >= 3 && *v10 == 109)
        {
          v10 += 2 * (*(v10 + 1) == 95);
        }

        v11 = *(v15 + 32);
        v12 = *(v15 + 24);
        re::TypeRegistry::typeInfo(v14, *v15, &v21);
        result = re::TypeInfo::TypeInfo(v13, &v22);
        if ((a1[64] & 1) == 0)
        {
          result = (*(*a1 + 72))(a1, v10, v11, a2 + v12, v13, v13, a4);
        }
      }
    }
  }

  return result;
}

uint64_t *re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, uint64_t a2, re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5)
{
  v50 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), &v42);
  re::TypeRegistry::typeInfo(*a4, *(*(a4 + 2) + 80), &v38);
  if (v38 == 1)
  {
    if ((v42 & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v39)[1];
      v12 = re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Base class %s removed from type %s.", v11, v12[1]);
    }

    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(a1 + 24, "@super", 0, 0))
    {
      if (v43 == v39)
      {
        v14 = *v45;
        v15 = *v41;
        if (*v45 == *v41)
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

      else if (re::areSameTranslatedVersion(&v43, &v39, v10))
      {
LABEL_6:
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, &v43, a5);
LABEL_16:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
        goto LABEL_17;
      }

      if (v44 == v40)
      {
        re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, &v43, &v39, a5);
      }

      else
      {
        v18 = re::TypeInfo::name(&v43)[1];
        v19 = re::TypeInfo::name(&v39);
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v18, v19[1]);
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  re::TypeMemberCollection::TypeMemberCollection(v37, *a3, *(a3 + 2));
  result = re::TypeMemberCollection::TypeMemberCollection(v35, *a4, *(a4 + 2));
  if (v36)
  {
    for (i = 0; i < v36; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v35, i, v33);
      if (*(v34 + 28) == 1)
      {
        v21 = *(v34 + 16);
        if (strlen(v21) >= 3 && *v21 == 109)
        {
          v21 += 2 * (*(v21 + 1) == 95);
        }

        v22 = *(v34 + 32);
        v23 = *(*a4 + 856);
        if (!v23 || (v23 = re::internal::TypeTranslationTable::translateMember(v23, v33), v23 == -1))
        {
          v25 = *re::foundationSerializationLogObjects(v23);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = v25;
            v27 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v47 = v27;
            v48 = 2080;
            v49 = v21;
            _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v28 = *(a1 + 208);
          re::TypeRegistry::typeInfo(v33[0], *v34, buf);
          re::TypeInfo::TypeInfo(v31, &v47 + 4);
          result = re::internal::translateType(buf, v28, v31);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v37, v23, v31);
          v24 = *(v32 + 24);
          re::TypeRegistry::typeInfo(v31[0], *v32, buf);
          re::TypeInfo::TypeInfo(v30, &v47 + 4);
          re::TypeRegistry::typeInfo(v33[0], *v34, buf);
          result = re::TypeInfo::TypeInfo(v29, &v47 + 4);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, a2 + v24, v30, v29, a5);
          }
        }
      }
    }
  }

  return result;
}

double re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(uint64_t *a1)
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

        v4 += 24;
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

void re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
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

void re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
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

        v4 += 24;
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

uint64_t re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::serializeSharedObjects(uint64_t result)
{
  v31 = *MEMORY[0x1E69E9840];
  if (*(result + 288) >= 2uLL)
  {
    v1 = result;
    result = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject(result + 24, "@shared", 20, 0);
    if (result)
    {
      v2 = *(v1 + 56);
      v19 = 0;
      v20 = 0;
      v17 = v2;
      v18 = 0;
      re::DynamicString::setCapacity(&v17, 8uLL);
      if (*(v1 + 288) < 2uLL)
      {
LABEL_18:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((v1 + 24));
      }

      else
      {
        v3 = 0;
        v4 = 1;
        while ((*(v1 + 64) & 1) == 0)
        {
          re::DynamicString::assignf(&v17, "%u", v4);
          v5 = *(v1 + 288);
          if (v5 <= v4)
          {
            v21 = 0;
            memset(v30, 0, 80);
            v9 = MEMORY[0x1E69E9C10];
            v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v22 = 136315906;
            v23 = "operator[]";
            v24 = 1024;
            if (v10)
            {
              v11 = 3;
            }

            else
            {
              v11 = 2;
            }

            v25 = 789;
            v26 = 2048;
            v27 = v4;
            v28 = 2048;
            v29 = v5;
            _os_log_send_and_compose_impl(v11, &v21, v30, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v22, 38, v12, v13);
            _os_crash_msg();
            __break(1u);
          }

          v6 = *(v1 + 304) + v3;
          v13 = *(v6 + 80);
          re::TypeInfo::TypeInfo(v14, v6 + 88);
          re::TypeInfo::TypeInfo(v15, v6 + 120);
          v16 = *(v6 + 152);
          if (v16)
          {
            if (v18)
            {
              v7 = v19;
            }

            else
            {
              v7 = &v18 + 1;
            }

            re::internal::serializePolymorphicObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(v1, v7, v4, v13, v14, v15, HIBYTE(v16) & 1);
          }

          else if ((*(v1 + 64) & 1) == 0)
          {
            if (v18)
            {
              v8 = v19;
            }

            else
            {
              v8 = &v18 + 1;
            }

            (*(*v1 + 72))(v1, v8, v4, v13, v14, v15, 0);
          }

          ++v4;
          v3 += 80;
          if (*(v1 + 288) <= v4)
          {
            goto LABEL_18;
          }
        }
      }

      result = v17;
      if (v17)
      {
        if (v18)
        {
          return (*(*v17 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializePolymorphicObject<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, const re::TypeInfo *a5, re::TypeRegistry **a6, int a7)
{
  re::TypeInfo::TypeInfo(v19, a5);
  if (a7)
  {
    v13 = *a6;
    v14 = re::TypeInfo::name(a5);
    re::TypeRegistry::typeInfo(&v17, v13, v14);
    if (v17 != 1)
    {
      re::TypeInfo::name(a5);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "No matching type found for polymorphic type %s to serialize.");
      goto LABEL_11;
    }

    re::TypeInfo::operator=(v19, v18);
  }

  LOBYTE(v17) = *(v20 + 128);
  if ((v17 & 1) == 0)
  {
    re::TypeInfo::name(v19);
    re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Failed to get custom class ID for type %s.");
    goto LABEL_11;
  }

  v18[0] = *(v20 + 136);
  if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginObject((a1 + 24), a2, 0, 0))
  {
LABEL_11:
    v15 = 0;
    return v15 & 1;
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>((a1 + 24), "customClassID", 1, v18, 0);
  if ((a1[64] & 1) == 0)
  {
    (*(*a1 + 72))(a1, "object", 10, a4, a5, v19, 0);
  }

  re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endObject((a1 + 24));
  v15 = a1[64] ^ 1;
  return v15 & 1;
}

uint64_t *re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(&v6, *(a1 + 208), a2);
  if (v6)
  {
    v9 = a3;
    v8 = v7 | 0xFFFFFFFF00000000;
    return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 224, &v8, &v9);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeBool(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeChar<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeI8<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeI16<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<short>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeI32<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, int *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<int>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeI64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeSignedInteger<long long>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeU8<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeU16<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeU32<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeU64<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, uint64_t *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, v9, v14, a7);
}

uint64_t re::serializeFloat<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeFloat(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeDouble<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_anonymous_namespace_ *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v20 = 0;
  if (a5 != a6)
  {
    if (*a5 == *a6)
    {
      v16 = **(a5 + 2);
      v17 = **(a6 + 2);
      if (v16 == v17)
      {
        v19 = WORD1(v16) == WORD1(v17);
        v18 = (v17 ^ v16) & 0xFFFFFF00000000;
        v19 = v19 && v18 == 0;
        if (v19)
        {
          goto LABEL_4;
        }
      }
    }

    else if (re::areSameTranslatedVersion(a5, a6, a3))
    {
      goto LABEL_4;
    }

    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    return 0;
  }

LABEL_4:
  if (a7)
  {
    v14 = &v20;
  }

  else
  {
    v14 = a4;
  }

  return re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeDouble(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeCString<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_21:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
      goto LABEL_22;
    }

    v21 = **(a5 + 2);
    v22 = **(a6 + 2);
    if (v21 != v22)
    {
      goto LABEL_21;
    }

    v24 = WORD1(v21) == WORD1(v22);
    v23 = (v22 ^ v21) & 0xFFFFFF00000000;
    v24 = v24 && v23 == 0;
    if (!v24)
    {
      goto LABEL_21;
    }
  }

LABEL_4:
  if (a7)
  {
    v27 = 0;
    v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v27, 0);
    v15 = 0;
    if (v14)
    {
      if (!v27)
      {
        goto LABEL_28;
      }

      if (v27 == 1)
      {
        re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Found pointer reference instead of C string.");
LABEL_22:
        v15 = 0;
        return v15 & 1;
      }

      v26 = 0;
      if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, 0, &v26, 0))
      {
LABEL_28:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        v15 = a1[64] ^ 1;
        return v15 & 1;
      }

      if (!v26)
      {
LABEL_27:
        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
        goto LABEL_28;
      }

      v19 = a1 + 24;
      v18 = 0;
      v20 = 1;
LABEL_26:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(v19, v18, v20);
      goto LABEL_27;
    }
  }

  else
  {
    v27 = 2 * (*a4 != 0);
    v16 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginPointer((a1 + 24), a2, a3, &v27, 0);
    v15 = 0;
    if (v16)
    {
      if (v27 != 2)
      {
        goto LABEL_28;
      }

      v17 = *a4;
      if (*a4)
      {
        v17 = strlen(v17);
      }

      v26 = v17;
      if (!re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, 0, &v26, 0))
      {
        goto LABEL_28;
      }

      if (!v26)
      {
        goto LABEL_27;
      }

      v18 = *a4;
      v19 = a1 + 24;
      v20 = 0;
      goto LABEL_26;
    }
  }

  return v15 & 1;
}

uint64_t re::serializeStringID<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v9 = a3;
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
    goto LABEL_23;
  }

LABEL_14:
  if (!a7)
  {
    v26 = strlen(*(a4 + 8));
    if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, v9, &v26, 0))
    {
      if (v26)
      {
        v23 = *(a4 + 8);
        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_21;
      }

LABEL_22:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
      v21 = a1[64] ^ 1;
      return v21 & 1;
    }

LABEL_23:
    v21 = 0;
    return v21 & 1;
  }

  v26 = 0;
  v20 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString((a1 + 24), a2, v9, &v26, 0);
  v21 = 0;
  if (v20)
  {
    if (v26)
    {
      v22 = a1 + 24;
      v23 = 0;
      v24 = 1;
LABEL_21:
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(v22, v23, v24);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, unint64_t **a5, unint64_t **a6, int a7)
{
  v10 = a3;
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_18:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>(a1, a2, a5, a6);
      goto LABEL_19;
    }

    v20 = *a5[2];
    v21 = *a6[2];
    if (v20 != v21)
    {
      goto LABEL_18;
    }

    v23 = WORD1(v20) == WORD1(v21);
    v22 = (v21 ^ v20) & 0xFFFFFF00000000;
    v23 = v23 && v22 == 0;
    if (!v23)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if (!a7)
  {
    v16 = *a5;
    v17 = *a5[2];
    v35[0] = 0x258C98EAAF29A10ALL;
    v35[1] = "CallbackSerializerAttribute";
    v18 = re::TypeRegistry::typeID(v36, v16, v35);
    if (v36[0] && (v31 = v36[1], v32 = v17, LODWORD(v33) = -1, (v18 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v16 + 768, &v31)) != 0))
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    if (v35[0])
    {
      if (v35[0])
      {
      }
    }

    v25 = *v19;
    v26 = *(a1 + 200);
    v27 = *(a1 + 56);
    v33 = 0;
    v34 = 0;
    v31 = v27;
    v32 = 0;
    re::DynamicString::setCapacity(&v31, 0);
    if ((*(v25 + 72))(v26, v25, a4, &v31))
    {
      if (v32)
      {
        v28 = (v32 >> 1);
      }

      else
      {
        v28 = (v32 >> 1);
      }

      v36[0] = v28;
      if (re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v10, v36, 0))
      {
        if (v36[0])
        {
          if (v32)
          {
            v29 = v33;
          }

          else
          {
            v29 = &v32 + 1;
          }

          re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, v29, 0);
        }

        re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
        if (v31 && (v32 & 1) != 0)
        {
          (*(*v31 + 40))();
        }

        goto LABEL_9;
      }
    }

    else
    {
      v30 = re::TypeInfo::name(a5);
      re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::setError(a1, a2, "Failed to write string for %s (type %s) using serialization callback.", a2, v30[1]);
    }

    if (v31 && (v32 & 1) != 0)
    {
      (*(*v31 + 40))();
    }

LABEL_19:
    v15 = 0;
    return v15 & 1;
  }

  v31 = 0;
  v14 = re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::beginString(a1 + 24, a2, v10, &v31, 0);
  v15 = 0;
  if (v14)
  {
    if (v31)
    {
      re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
LABEL_9:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
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
    v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, v7, v6);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(a1, (2 * *(a1 + 28)));
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

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v9, v4, v2);
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
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(a1, v9);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(v4, *(v7 + v5 + 4) % *(v4 + 24), *(v7 + v5 + 4));
        *(result + 4) = *(*(a2 + 16) + v5 + 4);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(uint64_t a1, uint64_t a2, signed int a3)
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

uint64_t re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 80 * v4;
  *v5 = *a2;
  re::TypeInfo::TypeInfo(v5 + 8, a2 + 8);
  result = re::TypeInfo::TypeInfo(v5 + 40, a2 + 40);
  *(v5 + 72) = *(a2 + 72);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::addNew(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  if (HIDWORD(v11) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 32 * HIDWORD(v11) + 16;
  }

  v7 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
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
        v10 = v8 + 80 * v9;
        v11 = (v7 + 5);
        v12 = v8 + 40;
        do
        {
          *(v11 - 40) = *(v12 - 40);
          re::TypeInfo::TypeInfo(v11 - 32, v12 - 32);
          re::TypeInfo::TypeInfo(v11, v12);
          *(v11 + 32) = *(v12 + 32);
          v11 += 80;
          v13 = v12 + 40;
          v12 += 80;
        }

        while (v13 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}