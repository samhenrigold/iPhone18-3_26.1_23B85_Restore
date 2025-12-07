uint64_t re::serializeI16<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<short>(a1 + 24, a2, a3, a4, "int16", a7);
}

uint64_t re::serializeI32<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1 + 24, a2, a3, a4, "int32", a7);
}

uint64_t re::serializeI64<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, a2, a3, a4, "int64", a7);
}

uint64_t re::serializeU8<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<unsigned char>(a1 + 24, a2, a3, a4, "uint8", a7);
}

uint64_t re::serializeU16<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<short>(a1 + 24, a2, a3, a4, "uint16", a7);
}

uint64_t re::serializeU32<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1 + 24, a2, a3, a4, "uint32", a7);
}

uint64_t re::serializeU64<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, a2, a3, a4, "uint64", a7);
}

uint64_t re::serializeFloat<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1 + 24, a2, a3, a4, "float", a7);
}

uint64_t re::serializeDouble<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, char a7)
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

  return re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, a2, a3, a4, "double", a7);
}

uint64_t re::serializeCString<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char **a4, re *a5, const re::TypeInfo *a6, int a7)
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
    v16 = re::EncoderBinary<re::FixedArrayInputStream>::beginPointer((a1 + 24), a2, a3, &v28, 0);
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
      __dst = v22;
      if (re::EncoderBinary<re::FixedArrayInputStream>::beginString((a1 + 24), a2, 0, &__dst, 0))
      {
        v23 = *a4;
        v24 = __dst;
        if (*a4 && __dst == v22)
        {
          if (v22)
          {
LABEL_34:
            re::EncoderBinary<re::FixedArrayInputStream>::serializeString(a1 + 24, v23, 0);
            v23 = *a4;
            v25 = __dst;
LABEL_43:
            v23[v25] = 0;
            re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
            goto LABEL_44;
          }
        }

        else
        {
          if (v23)
          {
            (*(**(a1 + 48) + 40))(*(a1 + 48));
            *a4 = 0;
            v24 = __dst;
          }

          if (v24 > (*(**(a1 + 24) + 64))(*(a1 + 24)))
          {
            (*(**(a1 + 24) + 64))(*(a1 + 24));
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu");
            goto LABEL_23;
          }

          if (((__dst == -1) << 63) >> 63 != (__dst == -1))
          {
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, a2, "Size overflow during string deserialization. String length = %zu");
            goto LABEL_23;
          }

          v23 = (*(**(a1 + 48) + 32))(*(a1 + 48), __dst + 1, 0);
          *a4 = v23;
          if (__dst)
          {
            goto LABEL_34;
          }
        }

        v25 = 0;
        goto LABEL_43;
      }
    }

LABEL_44:
    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
    if (*a4 && *(a1 + 64) == 1)
    {
      (*(**(a1 + 48) + 40))(*(a1 + 48));
      *a4 = 0;
    }

    goto LABEL_47;
  }

  v28 = 0;
  v14 = re::EncoderBinary<re::FixedArrayInputStream>::beginPointer((a1 + 24), a2, a3, &v28, 0);
  v15 = 0;
  if (v14)
  {
    if (!v28)
    {
LABEL_12:
      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
LABEL_47:
      v15 = *(a1 + 64) ^ 1;
      return v15 & 1;
    }

    if (v28 != 1)
    {
      __dst = 0;
      if (re::EncoderBinary<re::FixedArrayInputStream>::beginString((a1 + 24), a2, 0, &__dst, 0))
      {
        if (__dst)
        {
          re::EncoderBinary<re::FixedArrayInputStream>::serializeString(a1 + 24, 0, 1);
        }

        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
      }

      goto LABEL_12;
    }

    goto LABEL_16;
  }

  return v15 & 1;
}

uint64_t re::serializeStringID<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
    goto LABEL_26;
  }

LABEL_14:
  if (!a7)
  {
    v31 = 0;
    if (re::EncoderBinary<re::FixedArrayInputStream>::beginString((a1 + 24), a2, v9, &v31, 0))
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
        v26 = re::EncoderBinary<re::FixedArrayInputStream>::serializeString(a1 + 24, v25, 0);
        v25[v31] = 0;
        __dst = 0;
        v30 = &str_67;
        v27 = re::StringID::operator=(a4, &__dst);
        if (__dst)
        {
          if (__dst)
          {
          }
        }

        v24 = *(**(a1 + 56) + 40);
      }

      else
      {
        __dst = 0;
        v30 = &str_67;
        v23 = re::StringID::operator=(a4, &__dst);
        if ((__dst & 1) == 0)
        {
LABEL_32:
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
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

  __dst = 0;
  v20 = re::EncoderBinary<re::FixedArrayInputStream>::beginString((a1 + 24), a2, v9, &__dst, 0);
  v21 = 0;
  if (v20)
  {
    if (__dst)
    {
      re::EncoderBinary<re::FixedArrayInputStream>::serializeString(a1 + 24, 0, 1);
    }

    goto LABEL_32;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderBinary<re::FixedArrayInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
{
  v10 = a3;
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
    __dst[0] = 0x258C98EAAF29A10ALL;
    __dst[1] = "CallbackSerializerAttribute";
    v18 = re::TypeRegistry::typeID(buf, v16, __dst);
    if (*buf && (v35 = *&buf[8], v36 = v17, LODWORD(v37) = -1, (v18 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v16 + 768, &v35)) != 0))
    {
      v19 = *v18;
    }

    else
    {
      v19 = 0;
    }

    if (__dst[0])
    {
      if (__dst[0])
      {
      }
    }

    v24 = *v19;
    v25 = *(a1 + 184);
    __dst[0] = 0;
    if (re::EncoderBinary<re::FixedArrayInputStream>::beginString((a1 + 24), a2, v10, __dst, 0))
    {
      v26 = *(a1 + 56);
      v37 = 0;
      v38 = 0;
      v35 = v26;
      v36 = 0;
      re::DynamicString::setCapacity(&v35, 0);
      if (__dst[0])
      {
        re::DynamicString::resize(&v35, __dst[0], 0);
        if (v36)
        {
          v27 = v37;
        }

        else
        {
          v27 = &v36 + 1;
        }

        re::EncoderBinary<re::FixedArrayInputStream>::serializeString(a1 + 24, v27, 0);
      }

      re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
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
  v14 = re::EncoderBinary<re::FixedArrayInputStream>::beginString((a1 + 24), a2, v10, &v35, 0);
  v15 = 0;
  if (v14)
  {
    if (v35)
    {
      re::EncoderBinary<re::FixedArrayInputStream>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
LABEL_39:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
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
    v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, v7, v6);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(a1, v9);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(v4, *(v7 + v5 + 4) % *(v4 + 24), *(v7 + v5 + 4));
        *(result + 4) = *(*(a2 + 16) + v5 + 4);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::serializeCString(uint64_t a1, const char *a2, const re::TypeInfo *a3, char **a4, re *a5, const re::TypeInfo *a6, char a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_15:
      re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, a5, a6);
      goto LABEL_16;
    }

    v14 = **(a5 + 2);
    v15 = **(a6 + 2);
    if (v14 != v15)
    {
      goto LABEL_15;
    }

    v17 = WORD1(v14) == WORD1(v15);
    v16 = (v15 ^ v14) & 0xFFFFFF00000000;
    v17 = v17 && v16 == 0;
    if (!v17)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  v33 = 0;
  if (re::EncoderBinary<re::FixedArrayInputStream>::beginPointer((a1 + 24), a2, a3, &v33, 0))
  {
    if (v33 == 1)
    {
      v32 = 0;
      if ((*(a1 + 64) & 1) == 0)
      {
        re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1 + 24, "ID", 0, &v32, "Reference ID", 0);
        if ((*(a1 + 64) & 1) == 0)
        {
          if (*(a1 + 328) <= v32)
          {
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Invalid reference ID for shared object: %u");
          }

          else
          {
            re::internal::SharedObjectGraph::typeID(&__dst, (a1 + 256), v32);
            if (__dst == *a5)
            {
              v20 = **(a5 + 2);
              if (v29 == v20 && v30 == WORD1(v20) && ((v31 ^ HIDWORD(v20)) & 0xFFFFFF) == 0)
              {
                if ((a7 & 1) == 0)
                {
                  if (*a4)
                  {
                    v26 = *a4;
                    if (v26 != re::internal::SharedObjectGraph::object((a1 + 256), v32))
                    {
                      (*(**(a1 + 48) + 40))(*(a1 + 48), *a4);
                      *a4 = 0;
                    }
                  }

                  *a4 = re::internal::SharedObjectGraph::object((a1 + 256), v32);
                  if (*(a1 + 256) == 1 && *(a1 + 257) == 1)
                  {
                    re::internal::SharedObjectGraph::addChild((a1 + 256), *(*(a1 + 424) + 4 * *(a1 + 408) - 4), v32);
                  }
                }

                goto LABEL_37;
              }
            }

            v21 = *(a1 + 192);
            re::internal::SharedObjectGraph::typeID(&__dst, (a1 + 256), v32);
            re::TypeRegistry::typeName(v21, &__dst);
            re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Invalid reference ID for shared object. Expected type char *. Actual type %s.");
          }
        }
      }
    }

    else
    {
      if (!v33)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          (*(**(a1 + 48) + 40))(*(a1 + 48));
          *a4 = 0;
        }

LABEL_37:
        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        v18 = *(a1 + 64) ^ 1;
        return v18 & 1;
      }

      if ((a7 & 1) == 0 && *a4)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      __dst = 0;
      if (re::EncoderBinary<re::FixedArrayInputStream>::beginString((a1 + 24), a2, 0, &__dst, 0))
      {
        if (((__dst == -1) << 63) >> 63 == (__dst == -1))
        {
          v22 = (*(**(a1 + 48) + 32))(*(a1 + 48), __dst + 1, 0);
          v23 = v22;
          if ((a7 & 1) == 0)
          {
            *a4 = v22;
          }

          v24 = __dst;
          if (__dst)
          {
            re::EncoderBinary<re::FixedArrayInputStream>::serializeString(a1 + 24, v22, 0);
            v24 = __dst;
          }

          *(v23 + v24) = 0;
          re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endString((a1 + 24));
          v25 = **(a5 + 2);
          *&v27 = *a5;
          *(&v27 + 1) = v25;
          re::internal::SharedObjectGraph::addObject(a1 + 256, v23, &v27);
          goto LABEL_37;
        }

        re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Size overflow during string deserialization. String length = %zu");
      }
    }
  }

LABEL_16:
  v18 = 0;
  return v18 & 1;
}

uint64_t re::SerializerV1<re::EncoderBinary<re::FixedArrayInputStream>>::serializePointer(uint64_t a1, const char *a2, uint64_t a3, void **a4, re::TypeInfo *this, const re::TypeInfo *a6, int a7)
{
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v21 = **(this + 2);
    v22 = **(a6 + 2);
    if (v21 == v22)
    {
      v24 = WORD1(v21) == WORD1(v22);
      v23 = (v22 ^ v21) & 0xFFFFFF00000000;
      v24 = v24 && v23 == 0;
      if (v24)
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

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v25 = re::TypeInfo::name(this), v26 = re::TypeInfo::name(a6), !re::StringID::operator==(v25, v26))))
  {
    re::internal::setTypeMismatchError<re::EncoderOPACK<re::FixedArrayInputStream>>(a1, a2, this, a6);
    goto LABEL_28;
  }

  v16 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v55);
  re::TypeInfo::TypeInfo(v53, v56);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v55);
  re::TypeInfo::TypeInfo(v52, v56);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v20 = *v54;
    v51[0] = v53[0];
    v51[1] = v20;
    if (!v53[0])
    {
      goto LABEL_8;
    }

LABEL_11:
    re::TypeRegistry::typeInfo(*this, v51, &v55);
    re::TypeInfo::TypeInfo(v49, v56);
    v48 = 0;
    if (!re::EncoderBinary<re::FixedArrayInputStream>::beginPointer((a1 + 24), a2, a3, &v48, 0))
    {
      goto LABEL_28;
    }

    if (v48 != 1)
    {
      if (!v48)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(v49, *a4, *(a1 + 48), *(a1 + 184));
          *a4 = 0;
        }

        goto LABEL_59;
      }

      if (isPointerToPolymorphicType)
      {
        re::internal::deserializePolymorphicObject<re::EncoderBinary<re::FixedArrayInputStream>,true>(a1, a2, a3, a4, this, v49, v52, v16, a7);
        goto LABEL_59;
      }

      if (!a7)
      {
        Instance = *a4;
        if (!*a4)
        {
          Instance = re::TypeInfo::createInstance(v53, *(a1 + 48), 0);
        }

        v36 = 0;
        *a4 = Instance;
        goto LABEL_55;
      }

      v33 = *(a1 + 192);
      if (v53[0] != v33)
      {
        v34 = re::TypeInfo::name(v53);
        re::TypeRegistry::typeInfo(&v55, v33, v34);
        if ((v55 & 1) == 0)
        {
          Instance = 0;
          v36 = 1;
          goto LABEL_55;
        }

        re::TypeInfo::operator=(v53, v56);
      }

      Instance = re::TypeInfo::createInstance(v53, *(a1 + 48), 0);
      v36 = 0;
LABEL_55:
      v37 = *v54;
      *&v43 = v53[0];
      *(&v43 + 1) = v37;
      re::internal::SharedObjectGraph::beginObject((a1 + 256), Instance, &v43);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, Instance, v53, v52, v36);
      }

      if (*(a1 + 256) == 1)
      {
        --*(a1 + 408);
        ++*(a1 + 416);
      }

      goto LABEL_59;
    }

    v47 = 0;
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<int>(a1 + 24, "ID", 0, &v47, "Reference ID", 0);
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    if (*(a1 + 328) > v47)
    {
      re::internal::SharedObjectGraph::typeID(v46, (a1 + 256), v47);
      if (!re::internal::areCompatible(this, v46))
      {
        v38 = re::TypeInfo::name(v53)[1];
        v39 = *(a1 + 192);
        re::internal::SharedObjectGraph::typeID(&v55, (a1 + 256), v47);
        v41 = v38;
        v42 = *(re::TypeRegistry::typeName(v39, &v55) + 1);
        v17 = "Invalid reference. Objects are not compatible. Expected type %s. Actual type %s.";
        goto LABEL_61;
      }

      if (a7)
      {
LABEL_59:
        re::EncoderBinary<re::DynamicArrayBufferedOutputStream>::endPointer((a1 + 24));
        v27 = *(a1 + 64) ^ 1;
        return v27 & 1;
      }

      if (*a4)
      {
        v29 = *a4;
        if (v29 != re::internal::SharedObjectGraph::object((a1 + 256), v47))
        {
          re::TypeInfo::releaseInstance(v49, *a4, *(a1 + 48), *(a1 + 184));
          *a4 = 0;
        }
      }

      v30 = re::internal::SharedObjectGraph::object((a1 + 256), v47);
      v31 = v30;
      *a4 = v30;
      if ((*(v50 + 49) & 2) != 0)
      {
        v40 = *(v50 + 32);
        if (v40)
        {
          v40(v30);
        }

        if (*(a1 + 256) == 1 && *(a1 + 257) == 1)
        {
          re::internal::SharedObjectGraph::addChild((a1 + 256), *(*(a1 + 424) + 4 * *(a1 + 408) - 4), v47);
        }
      }

      else
      {
        re::internal::SharedObjectGraph::typeID(v45, (a1 + 256), v47);
        if (!v45[0])
        {
          v41 = v47;
          v17 = "TypeID for shared object at index %d is invalid.";
          goto LABEL_61;
        }

        re::TypeRegistry::typeInfo(v45[0], v45, &v55);
        if ((v55 & 1) == 0)
        {
          v41 = v47;
          v17 = "No TypeInfo found for shared object at index %d.";
          goto LABEL_61;
        }

        v32 = re::TypeInfo::createInstance(v56, *(a1 + 48), *(a1 + 184));
        *a4 = v32;
        if ((re::TypeInfo::copy(v56, v32, v31, *(a1 + 48), *(a1 + 184)) & 1) == 0)
        {
          v41 = re::TypeInfo::name(v56)[1];
          v17 = "Failed to copy non-shareable object of type '%s'.";
LABEL_61:
          v18 = a1;
          v19 = 0;
          goto LABEL_9;
        }
      }

      re::internal::SharedObjectGraph::typeID(v44, (a1 + 256), v47);
      re::TypeInfo::setActualTypeForPointer(this, a4, v44);
      goto LABEL_59;
    }

    v41 = v47;
    v17 = "Invalid reference ID for shared object: %u";
    goto LABEL_61;
  }

  re::internal::actualType(v51, a4, this);
  if (v51[0])
  {
    goto LABEL_11;
  }

LABEL_8:
  v41 = re::TypeInfo::name(this)[1];
  v17 = "Failed to get actual type of polymorphic object. Type %s.";
  v18 = a1;
  v19 = a2;
LABEL_9:
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(v18, v19, v17, v41, v42);
LABEL_28:
  v27 = 0;
  return v27 & 1;
}

uint64_t re::internal::deserializePolymorphicObject<re::EncoderBinary<re::FixedArrayInputStream>,true>(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, re::TypeRegistry **a5, re ***a6, re::TypeInfo *a7, int a8, char a9)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    goto LABEL_10;
  }

  buf[0] = 1;
  *v36 = 0;
  *&v36[4] = a2;
  v37 = 0u;
  v38 = 0u;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState((a1 + 24), buf);
  v34 = 0;
  if (!re::EncoderBinary<re::FixedArrayInputStream>::serializeValue<long long>(a1 + 24, "customClassID", 1, &v34, "uint64", 0))
  {
    goto LABEL_10;
  }

  re::TypeInfo::typeIDForCustomClassID(v33, a7, v34);
  if (!v33[0])
  {
    v16 = re::TypeInfo::name(a7);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::setError(a1, 0, "Unknown polymorphic %s type. Custom class ID = %llu", v16[1], v34);
    goto LABEL_10;
  }

  if ((a9 & 1) == 0 && *a4)
  {
    re::TypeInfo::releaseInstance(a6, *a4, *(a1 + 48), *(a1 + 184));
    *a4 = 0;
  }

  re::TypeRegistry::typeInfo(*a7, v33, buf);
  re::TypeInfo::TypeInfo(v32, &v36[4]);
  if (a8)
  {
    v15 = *(a1 + 192);
  }

  else
  {
    v15 = *(a1 + 192);
    if (*a5 == v15)
    {
      re::TypeInfo::operator=(a6, v32);
      v21 = v33[0];
      v22 = v33[1];
      goto LABEL_21;
    }
  }

  v19 = re::TypeInfo::name(v32);
  v20 = re::TypeRegistry::typeInfo(buf, v15, v19);
  if (buf[0] == 1 && *(*(&v37 + 1) + 128) == 1)
  {
    re::TypeInfo::operator=(a6, &v36[4]);
    v21 = *a6;
    v22 = *a6[2];
LABEL_21:
    Instance = re::TypeInfo::createInstance(a6, *(a1 + 48), *(a1 + 184));
    v27 = Instance;
    if ((a9 & 1) == 0)
    {
      *a4 = Instance;
      v30[0] = v21;
      v30[1] = v22;
      re::internal::setActualType(a4, a5, v30);
    }

    v29[0] = v21;
    v29[1] = v22;
    (*(*a1 + 16))(a1, v27, v29);
    if ((*(a1 + 64) & 1) == 0)
    {
      (*(*a1 + 72))(a1, "object", 10, v27, a6, v32, v27 == 0);
    }

    goto LABEL_25;
  }

  v23 = *re::foundationSerializationLogObjects(v20);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v23;
    v25 = re::TypeInfo::name(v32)[1];
    *buf = 136315138;
    *v36 = v25;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", buf, 0xCu);
  }

  v31[0] = 0;
  v31[1] = 0xFFFFFFFFLL;
  (*(*a1 + 16))(a1, 0, v31);
  if ((*(a1 + 64) & 1) == 0)
  {
    (*(*a1 + 72))(a1, "object", 10, 0, v32, v32, 1);
  }

LABEL_25:
  (*(*a1 + 24))(a1);
  if ((*(a1 + 64) & 1) == 0)
  {
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::popState((a1 + 24), 1);
    v28 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v28 - 16);
    v17 = *(a1 + 64) ^ 1;
    return v17 & 1;
  }

LABEL_10:
  v17 = 0;
  return v17 & 1;
}

double re::ColorManager::ColorManager(re::ColorManager *this)
{
  *this = 0;
  *(this + 1) = xmmword_1E3047670;
  *(this + 2) = xmmword_1E3047680;
  *(this + 3) = xmmword_1E30476A0;
  *(this + 4) = xmmword_1E3047670;
  *(this + 5) = xmmword_1E3047680;
  *(this + 6) = xmmword_1E30476A0;
  *(this + 120) = 0u;
  *(this + 28) = 0;
  *(this + 136) = xmmword_1E3054790;
  *(this + 152) = xmmword_1E304F3C0;
  *(this + 168) = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(this + 172) = _D1;
  *(this + 180) = 0;
  *(this + 23) = 0x3F80000000000000;
  *(this + 192) = 0;
  *(this + 196) = xmmword_1E30547A0;
  *(this + 220) = 0;
  *(this + 212) = 0;
  *(this + 221) = 257;
  *(this + 782) = 0u;
  result = 0.000000381469872;
  *(this + 1568) = 0x3F8000003F800000;
  *(this + 1569) = 1065353216;
  *(this + 3140) = 1048576000;
  *(this + 783) = xmmword_1E30547B0;
  *(this + 12564) = 0;
  return result;
}

uint64_t re::RealityDataPipeFactory::makeRenderGraphDataPipe(re *a1, uint64_t a2)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 2200, 8);

  return re::RealityDataPipe::RealityDataPipe(v4, a2);
}

void *re::internal::Callable<re::Engine::init(re::EngineConfiguration const&)::$_0,BOOL ()(void)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6710;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::init(re::EngineConfiguration const&)::$_0,BOOL ()(void)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6710;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,BOOL ()(void)>::destroyCallable(uint64_t a1))(void)
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

void re::ecs2::RenderOptionsManager::~RenderOptionsManager(re::ecs2::RenderOptionsManager *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::~HierarchyStateTracking(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::~HierarchyStateTracking(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::RenderOptionsManager::renderOptions(re::ecs2::RenderOptionsManager *this)
{
  if (*(this + 35))
  {
    re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::updatePerEntityStateData(this + 8, 1);
  }

  return this + 8;
}

uint64_t re::ecs2::RenderOptionsManager::registerScene(re::ecs2::RenderOptionsManager *this, re::EventBus **a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v44 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track entity state changes.");
    __break(1u);
  }

  v4 = (this + 8);
  v38[0] = 0;
  v38[1] = 0;
  v39 = 1;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = 0;
  v5 = (*(*v4 + 16))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v46 = re::globalAllocators(v5)[2];
      v10 = (*(*v46 + 32))(v46, 32, 0);
      *v10 = &unk_1F5CB67E0;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v47 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v45, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v45);
      re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v38, v9);
      v5 = re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v38, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v15 = (*(*v4 + 24))(v4);
  if (v16)
  {
    v17 = v15;
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v38, v19);
      v15 = re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v38, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v46 = re::globalAllocators(v15)[2];
  v20 = (*(*v46 + 32))(v46, 32, 0);
  *v20 = &unk_1F5CB68E8;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v20[3] = 0;
  v47 = v20;
  v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v45, 0, 0);
  v23 = v22;
  v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v24 = v21;
  v24[1] = v23;
  v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v45);
  v46 = re::globalAllocators(v25)[2];
  v26 = (*(*v46 + 32))(v46, 32, 0);
  *v26 = &unk_1F5CB6940;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v26[3] = 0;
  v47 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v45, 0, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v45);
  v46 = re::globalAllocators(v31)[2];
  v32 = (*(*v46 + 32))(v46, 32, 0);
  *v32 = &unk_1F5CB6998;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v47 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v45, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v45);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v44, v38);
  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 16, &v44);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v38);
  result = v38[0];
  if (v38[0])
  {
    if ((v39 & 1) == 0)
    {
      return (*(*v38[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::RenderOptionsManager::unregisterScene(re::ecs2::RenderOptionsManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 16, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 1) + 40))(this + 8);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
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

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 160, &v13);
  }

  return result;
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CB7C30;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

void re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::clearEntityHierarchyStateData(_DWORD *a1, uint64_t a2)
{
  if (a1[21])
  {
    if (a1[74] != a1[24])
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((a1 + 62));
    }

    re::StackScratchAllocator::StackScratchAllocator(v15);
    v9[0] = 0;
    v9[1] = 0;
    v10 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v9, v15, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = a2;
    while (v13)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, v13 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, --v13);
      ++v14;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains((a1 + 62), &v8))
      {
        re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove((a1 + 14), &v8);
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add((a1 + 62), &v8);
        v4 = *(v8 + 344);
        if (v4)
        {
          v5 = *(v8 + 360);
          v6 = 8 * v4;
          do
          {
            v7 = *v5++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = v7;
            v6 -= 8;
          }

          while (v6);
        }
      }
    }

    a1[74] = a1[24];
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v9);
    if (v9[0] && (v10 & 1) == 0)
    {
      (*(*v9[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v15);
  }
}

double re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(a1, v3++);
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

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (*(result + 16) + 80 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = (v2 + 4);
    re::BucketArray<RESubscriptionHandle,8ul>::deinit(v3);

    return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3);
  }

  return result;
}

BOOL re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::removeInternal(a1, v5);
}

uint64_t re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(uint64_t a1, unint64_t *a2)
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
    v12 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addAsCopy(a1, v8, v6, a2, a2);
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

_anonymous_namespace_ *re::BucketArray<re::ecs2::Entity const*,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::Entity const*,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

_anonymous_namespace_ *re::BucketArray<re::ecs2::Entity const*,32ul>::setBucketsCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (*(result + 5) < 32 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 256, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::ecs2::Entity const*,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 5)
  {
    v10 = 0;
    memset(v19, 0, sizeof(v19));
    v7 = MEMORY[0x1E69E9C10];
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v14 = 858;
    v15 = 2048;
    v16 = v2 >> 5;
    v17 = 2048;
    v18 = v3;
    _os_log_send_and_compose_impl(v8, &v10, v19, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v11, 38, v9);
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 0x1F);
}

unint64_t re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  v2 = a2 >> 5;
  v3 = *(a1 + 8);
  if (v3 <= a2 >> 5)
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

  return *(v5 + 8 * v2) + 8 * (a2 & 0x1F);
}

BOOL re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(a1 + 16);
    v5 = *(v4 + 56 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v5;
      v6 = a2[3];
      v7 = v6;
    }

    else
    {
      *(v4 + 56 * v3) = *(v4 + 56 * v3) & 0x80000000 | v5;
      v6 = v2;
      v7 = v2;
    }

    v8 = *(a1 + 40);
    *(v4 + 56 * v6) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v8 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 56 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 56 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 56 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 56 * v8) & 0x7FFFFFFF;
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

uint64_t re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CB6838;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CB6890;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addInternal<re::ecs2::Scene const* const&,re::BucketArray<RESubscriptionHandle,8ul>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 80 * HIDWORD(v9) + 16;
  }
}

uint64_t re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(uint64_t result, unint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
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
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB67E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB67E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6838;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6838;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6890;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6890;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RESceneEntityDidReparentEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(a3, v5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB7D30;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB7D88;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneEntityDidReparentEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneEntityDidReparentEvent>(void)const::s_id = re::EventBus::typeStringToId(("29RESceneEntityDidReparentEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[12];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB7D30;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB7D30;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB7D30;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB7D30;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB7D88;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB7D88;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB7D88;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidReparentEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB7D88;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB68E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB68E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6940;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6940;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v9[3] = *(a2 + 24);
  v9[4] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator=<24ul>(v9, a2);
  v7 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(a1, 0, v9, a3, a4);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v9);
  return v7;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RESceneEntityWillDeactivateEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(a3, v5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB7DE0;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB7E38;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneEntityWillDeactivateEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneEntityWillDeactivateEvent>(void)const::s_id = re::EventBus::typeStringToId(("32RESceneEntityWillDeactivateEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[7];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB7DE0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB7DE0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB7DE0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB7DE0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB7E38;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB7E38;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB7E38;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB7E38;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6998;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6998;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addInternal<re::ecs2::Scene const* const&,re::BucketArray<RESubscriptionHandle,8ul>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 1;
  *(v7 + 64) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 40) = 0;
  re::BucketArray<RESubscriptionHandle,8ul>::swap(v7 + 16, a4);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 80 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 80 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 80 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 80 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 80 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 80 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 72) = a3;
  ++*(a1 + 28);
  return v7 + 80 * v5;
}

void re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v9, v4, v2);
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
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(v4, *(v7 + v5 + 72) % *(v4 + 24), *(v7 + v5 + 72));
        *(v8 + 8) = *(*(a2 + 16) + v5 + 8);
        v9 = *(a2 + 16) + v5;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v8 += 16;
        *(v8 + 16) = 1;
        *(v8 + 48) = 0;
        *(v8 + 32) = 0;
        *(v8 + 40) = 0;
        *(v8 + 24) = 0;
        result = re::BucketArray<RESubscriptionHandle,8ul>::swap(v8, v9 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 80;
    }
  }

  return result;
}

void re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 80 * v10, 16);
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

uint64_t re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
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
            re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
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

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 80 * v6 + 16;
  }
}

BOOL re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 80 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 80 * v5) = *(v6 + 80 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 80 * v9) = *(*(a1 + 16) + 80 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

void re::ecs2::VisualProxyScopeManager::~VisualProxyScopeManager(re::ecs2::VisualProxyScopeManager *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::~HierarchyStateTracking(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::~HierarchyStateTracking(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::VisualProxyScopeManager::updateScopeMaskData(re::ecs2::VisualProxyScopeManager *this)
{
  v1 = this + 8;
  (*(*(this + 1) + 32))(this + 8, this + 112);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((v1 + 104));
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((v1 + 200));

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((v1 + 248));
}

uint64_t re::ecs2::VisualProxyScopeManager::registerScene(re::ecs2::VisualProxyScopeManager *this, re::EventBus **a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v44 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash("assertion failure: (eventBus) An event bus is expected for this system to track entity state changes.");
    __break(1u);
  }

  v4 = (this + 8);
  v38[0] = 0;
  v38[1] = 0;
  v39 = 1;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v43 = 0;
  v5 = (*(*v4 + 16))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v46 = re::globalAllocators(v5)[2];
      v10 = (*(*v46 + 32))(v46, 32, 0);
      *v10 = &unk_1F5CB6A58;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v47 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v45, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v45);
      re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v38, v9);
      v5 = re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v38, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v15 = (*(*v4 + 24))(v4);
  if (v16)
  {
    v17 = v15;
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v38, v19);
      v15 = re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v38, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v46 = re::globalAllocators(v15)[2];
  v20 = (*(*v46 + 32))(v46, 32, 0);
  *v20 = &unk_1F5CB6B60;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v20[3] = 0;
  v47 = v20;
  v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v45, 0, 0);
  v23 = v22;
  v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v24 = v21;
  v24[1] = v23;
  v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v45);
  v46 = re::globalAllocators(v25)[2];
  v26 = (*(*v46 + 32))(v46, 32, 0);
  *v26 = &unk_1F5CB6BB8;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v26[3] = 0;
  v47 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v45, 0, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v45);
  v46 = re::globalAllocators(v31)[2];
  v32 = (*(*v46 + 32))(v46, 32, 0);
  *v32 = &unk_1F5CB6C10;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v47 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v45, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v38);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v45);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v44, v38);
  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 16, &v44);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v38);
  result = v38[0];
  if (v38[0])
  {
    if ((v39 & 1) == 0)
    {
      return (*(*v38[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::VisualProxyScopeManager::unregisterScene(re::ecs2::VisualProxyScopeManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 16, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 1) + 40))(this + 8);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
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

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 160, &v13);
  }

  return result;
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CB7CD0;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

void re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::clearEntityHierarchyStateData(_DWORD *a1, uint64_t a2)
{
  if (a1[21])
  {
    if (a1[74] != a1[24])
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((a1 + 62));
    }

    re::StackScratchAllocator::StackScratchAllocator(v15);
    v9[0] = 0;
    v9[1] = 0;
    v10 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v9, v15, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = a2;
    while (v13)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, v13 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, --v13);
      ++v14;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains((a1 + 62), &v8))
      {
        re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove((a1 + 14), &v8);
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add((a1 + 62), &v8);
        v4 = *(v8 + 344);
        if (v4)
        {
          v5 = *(v8 + 360);
          v6 = 8 * v4;
          do
          {
            v7 = *v5++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = v7;
            v6 -= 8;
          }

          while (v6);
        }
      }
    }

    a1[74] = a1[24];
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v9);
    if (v9[0] && (v10 & 1) == 0)
    {
      (*(*v9[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v15);
  }
}

BOOL re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityVisualProxyScopeData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CB6AB0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CB6B08;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6A58;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6A58;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6AB0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6AB0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6B08;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6B08;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, unint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6B60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6B60;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6BB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6BB8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, unint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6C10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6C10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::ecs2::ShadowScopeManager::~ShadowScopeManager(re::ecs2::ShadowScopeManager *this)
{
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(this + 23);
  re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(this + 120);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 56);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 1);
}

{
  re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(this + 23);
  re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(this + 120);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 56);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::ShadowScopeManager::getScope(re::ecs2::ShadowScopeManager *this, const re::ecs2::Entity *a2)
{
  v5 = a2;
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 7, &v5);
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(this + 8) + 16 * v3 + 8);
  }
}

uint64_t re::ecs2::ShadowScopeManager::getTrackedEntities(re::ecs2::ShadowScopeManager *this, const re::ecs2::ShadowScopeComponent *a2)
{
  v5 = a2;
  v3 = re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::find(this + 15, &v5);
  if (v3 == -1)
  {
    return 0;
  }

  else
  {
    return *(this + 16) + 56 * v3 + 8;
  }
}

double re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::deinit(uint64_t *a1)
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
        v6 = a1[2] + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          objc_destroyWeak((v6 + 16));
          *(v6 + 16) = 0;
          v3 = *(a1 + 8);
        }

        v4 += 24;
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

double re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((*(a1 + 8) + 56 * v8 + 8));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 16);
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

uint64_t (***re::internal::Callable<re::Engine::init(re::EngineConfiguration const&)::$_1,void ()(re::Function<void ()(void)> const&)>::operator()(uint64_t a1, uint64_t a2))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 24);
  v7 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v5, a2);
  v3 = *(*(a1 + 8) + 872);
  v9 = v6;
  v10 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v8, v5);
  re::ResourceFetchManager::executeWithMostRecentTransportVoucher(v3, v8);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v8);
  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(v5);
}

void *re::internal::Callable<re::Engine::init(re::EngineConfiguration const&)::$_1,void ()(re::Function<void ()(void)> const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6CD8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::init(re::EngineConfiguration const&)::$_1,void ()(re::Function<void ()(void)> const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6CD8;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(re::Function<void ()(void)> const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::internal::Callable<re::Engine::init(re::EngineConfiguration const&)::$_2,void ()(unsigned long long,re::Function<void ()(void)> const&)>::operator()(uint64_t a1, void **a2, uint64_t a3))(void)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v8 = *(a3 + 24);
  v9 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v7, a3);
  v5 = *(*(a1 + 8) + 872);
  v11 = v8;
  v12 = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v10, v7);
  re::ResourceFetchManager::executeWithMostRecentTransportVoucherForPeerID(v5, v4, v10);
  re::FunctionBase<24ul,void ()(void)>::destroyCallable(v10);
  return re::FunctionBase<24ul,void ()(void)>::destroyCallable(v7);
}

void *re::internal::Callable<re::Engine::init(re::EngineConfiguration const&)::$_2,void ()(unsigned long long,re::Function<void ()(void)> const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6D40;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::init(re::EngineConfiguration const&)::$_2,void ()(unsigned long long,re::Function<void ()(void)> const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6D40;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,void ()(unsigned long long,re::Function<void ()(void)> const&)>::destroyCallable(uint64_t a1))(void)
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

void re::VideoManager::VideoManager(re::VideoManager *this)
{
  *this = &unk_1F5CF8250;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 100) = 0u;
  *(this + 116) = 0x7FFFFFFFLL;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 0;
  *(this + 164) = 0x7FFFFFFFLL;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 0;
  *(this + 212) = 0x7FFFFFFFLL;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 250) = 0u;
  *(this + 34) = 0;
  re::VideoAutoCounter::VideoAutoCounter((this + 280));
}

uint64_t re::DynamicArray<re::Scheduler::TaskDescriptor>::deinit(uint64_t a1)
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
        v5 = v4 << 7;
        do
        {
          re::DynamicArray<unsigned long>::deinit(v3 + 88);
          re::FunctionBase<24ul,void ()(float)>::destroyCallable(v3 + 40);
          re::StringID::destroyString(v3);
          v3 = (v3 + 128);
          v5 -= 128;
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

uint64_t re::DynamicArray<re::Scheduler::TaskDescriptor>::add(_anonymous_namespace_ *this, uint64_t *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::Scheduler::TaskDescriptor>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 7);
  v6 = *a2;
  *v5 = *v5 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v5 = *a2 & 0xFFFFFFFFFFFFFFFELL | v6 & 1;
  *(v5 + 8) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
  v7 = *(a2 + 1);
  *(v5 + 29) = *(a2 + 29);
  *(v5 + 16) = v7;
  *(v5 + 64) = a2[8];
  *(v5 + 72) = 0;
  result = re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(v5 + 40, (a2 + 5));
  v9 = a2[10];
  *(v5 + 120) = 0;
  *(v5 + 112) = 0;
  *(v5 + 96) = 0;
  *(v5 + 104) = 0;
  *(v5 + 80) = v9;
  *(v5 + 88) = 0;
  v10 = a2[12];
  *(v5 + 88) = a2[11];
  *(v5 + 96) = v10;
  a2[11] = 0;
  a2[12] = 0;
  v11 = *(v5 + 104);
  *(v5 + 104) = a2[13];
  a2[13] = v11;
  v12 = *(v5 + 120);
  *(v5 + 120) = a2[15];
  a2[15] = v12;
  ++*(a2 + 28);
  ++*(v5 + 112);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::Scheduler::TaskDescriptor>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::Scheduler::TaskDescriptor>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::Scheduler::TaskDescriptor>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::Scheduler::TaskDescriptor>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Scheduler::TaskDescriptor>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v18, v20);
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 8);
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
        v10 = &v8[16 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *v11 = *v11 & 0xFFFFFFFFFFFFFFFELL | *v8 & 1;
          *v11 = *v8 & 0xFFFFFFFFFFFFFFFELL | v12 & 1;
          v11[1] = v8[1];
          *v8 = 0;
          v8[1] = &str_67;
          v13 = *(v8 + 1);
          *(v11 + 29) = *(v8 + 29);
          *(v11 + 1) = v13;
          v11[8] = v8[8];
          v11[9] = 0;
          re::FunctionBase<24ul,void ()(float)>::operator=<24ul>((v11 + 5), (v8 + 5));
          v14 = v8[10];
          v11[15] = 0;
          *(v11 + 28) = 0;
          v11[12] = 0;
          v11[13] = 0;
          v11[10] = v14;
          v11[11] = 0;
          v15 = v8[12];
          v11[11] = v8[11];
          v8[11] = 0;
          v11[12] = v15;
          v8[12] = 0;
          v16 = v11[13];
          v11[13] = v8[13];
          v8[13] = v16;
          v17 = v11[15];
          v11[15] = v8[15];
          v8[15] = v17;
          ++*(v8 + 28);
          ++*(v11 + 28);
          re::DynamicArray<unsigned long>::deinit((v8 + 11));
          re::FunctionBase<24ul,void ()(float)>::destroyCallable((v8 + 5));
          re::StringID::destroyString(v8);
          v8 += 16;
          v11 += 16;
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

uint64_t re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(float)>::destroyCallable(a1);
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
        re::FunctionBase<24ul,void ()(float)>::destroyCallable(a2);
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
    re::FunctionBase<24ul,void ()(float)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(float)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  v2 = *(*(*(a1 + 1) + 896) + 24) & 0xFFFFFFFFFFFFFFFLL;
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v4 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v4, *(*(a1 + 1) + 1024), v2 + 1, 1);
  }

  v5 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v5)
  {
    v6 = re::profilerThreadContext(v5);
    re::ProfilerThreadContext::pushTimeScope(v6);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6DA8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6DA8;
  a2[1] = v2;
  return a2;
}

void re::ProfilerThreadContext::pushTimeScope(re::ProfilerThreadContext *this)
{
  if (*(this + 19))
  {
    v2 = mach_absolute_time();
    v4 = *(this + 16);
    v3 = *(this + 17);
    if (v4 >= v3)
    {
      v6 = *(this + 15);
      v7 = v4 - v6;
      v8 = (v4 - v6) >> 3;
      v9 = v8 + 1;
      if ((v8 + 1) >> 61)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v10 = v3 - v6;
      if (v10 >> 2 > v9)
      {
        v9 = v10 >> 2;
      }

      v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
      v12 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v11)
      {
        v12 = v9;
      }

      if (v12)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(this + 120, v12);
      }

      v13 = (v4 - v6) >> 3;
      v14 = (8 * v8);
      v15 = (8 * v8 - 8 * v13);
      *v14 = v2;
      v5 = v14 + 1;
      memcpy(v15, v6, v7);
      v16 = *(this + 15);
      *(this + 15) = v15;
      *(this + 16) = v5;
      *(this + 17) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v4 = v2;
      v5 = v4 + 8;
    }

    *(this + 16) = v5;
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::operator()(uint64_t a1)
{
  v2 = **(a1 + 16);
  v3 = mach_absolute_time();
  **(a1 + 16) = v3;
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v3);
  if (isStatisticCollectionEnabled)
  {
    v9 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v10 = *(v9 + 152);
    if (v10)
    {
      v11 = **(a1 + 16) - v2;
      v12 = v10[16].u64[0];
      v13 = v10[16].u64[1];
      if (v12 >= v11)
      {
        v12 = **(a1 + 16) - v2;
      }

      if (v13 <= v11)
      {
        v13 = **(a1 + 16) - v2;
      }

      v10[16].i64[0] = v12;
      v10[16].i64[1] = v13;
      v14 = vdupq_n_s64(1uLL);
      v14.i64[0] = v11;
      v10[17] = vaddq_s64(v10[17], v14);
      *(v9 + 184) = 0;
    }
  }

  v15 = *(a1 + 8);

  return re::FrameManager::nextFrame(v15, v5, v6, v7, v8);
}

uint64_t re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6E00;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6E00;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6E58;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6E58;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_4,void ()(float)>::operator()(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = re::internal::enableSignposts(0, 0);
  if (v3)
  {
    v3 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v3);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::popTimeScope(v5, 2u);
  }

  v6 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v6)
  {
    v7 = re::profilerThreadContext(v6);

    re::ProfilerThreadContext::end(v7);
  }
}

uint64_t re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_4,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6EB0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_4,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB6EB0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

int64x2_t re::ProfilerThreadContext::popTimeScope(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 152))
  {
    v4 = mach_absolute_time();
    v6 = *(a1 + 128);
    v7 = *(v6 - 8);
    *(a1 + 128) = v6 - 8;
    v8 = *(a1 + 152);
    if (v8)
    {
      v9 = v4 - v7;
      v10 = (v8 + (a2 << 7));
      v11 = v10[8].u64[0];
      v12 = v10[8].u64[1];
      if (v11 >= v9)
      {
        v11 = v9;
      }

      if (v12 <= v9)
      {
        v12 = v9;
      }

      v10[8].i64[0] = v11;
      v10[8].i64[1] = v12;
      v13 = vdupq_n_s64(1uLL);
      v13.i64[0] = v9;
      result = vaddq_s64(v10[9], v13);
      v10[9] = result;
      *(a1 + 184) = 0;
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  v2 = *(*(*(a1 + 1) + 896) + 24);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v4 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v4, *(*(a1 + 1) + 1024), v2 & 0xFFFFFFFFFFFFFFFLL, 1);
  }

  v5 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v5)
  {
    v6 = re::profilerThreadContext(v5);
    re::ProfilerThreadContext::pushTimeScope(v6);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6F08;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6F08;
  a2[1] = v2;
  return a2;
}

double re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_1,void ()(float)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 8) = 0;
  v2 = *(v1 + 64);
  *(v1 + 80) = *(v1 + 48);
  *(v1 + 96) = v2;
  v3 = *(v1 + 32);
  *(v1 + 48) = *(v1 + 16);
  *(v1 + 64) = v3;
  *(v1 + 168) = *(v1 + 140);
  *(v1 + 180) = *(v1 + 152);
  *(v1 + 140) = *(v1 + 112);
  *(v1 + 152) = *(v1 + 124);
  result = 0.0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  v5 = *(v1 + 216);
  *(v1 + 252) = *(v1 + 232);
  *(v1 + 236) = v5;
  v6 = *(v1 + 196);
  *(v1 + 232) = *(v1 + 212);
  *(v1 + 216) = v6;
  *(v1 + 196) = 0;
  return result;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6F60;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6F60;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_2,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6FB8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_2,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB6FB8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_3,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7010;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_3,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7010;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_4,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7068;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_4,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7068;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_5,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB70C0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_5,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB70C0;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_6,void ()(float)>::operator()(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v3[0] = &unk_1F5CB8C60;
  v3[1] = v1;
  v4 = 1;
  v7 = v3;
  v5 = 0;
  v6 = 0;
  re::runInLocalAutoreleasePool(v3);
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v3);
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_6,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7118;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_6,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7118;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_7,void ()(float)>::operator()(uint64_t a1, float *a2)
{
  if ((*(*(a1 + 8) + 428) & 1) == 0)
  {
    re::AnimationManager::update(*(a1 + 16), *a2);
    v4 = *(a1 + 16);

    re::AnimationManager::applyAnimations(v4);
  }
}

uint64_t re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_7,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7170;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_7,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7170;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_8,void ()(float)>::operator()(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = re::internal::enableSignposts(0, 0);
  if (v3)
  {
    v3 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v3);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::popTimeScope(v5, 3u);
  }

  v6 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v6)
  {
    v7 = re::profilerThreadContext(v6);

    re::ProfilerThreadContext::end(v7);
  }
}

uint64_t re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_8,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB71C8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configurePreparePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_8,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB71C8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  v2 = *(*(*(a1 + 1) + 896) + 24);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v4 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v4, *(*(a1 + 1) + 1024), v2 & 0xFFFFFFFFFFFFFFFLL, 1);
  }

  v5 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v5)
  {
    v6 = re::profilerThreadContext(v5);
    re::ProfilerThreadContext::pushTimeScope(v6);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7220;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7220;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7278;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7278;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_2,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB72D0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_2,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB72D0;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_3,void ()(float)>::operator()(void *result, float *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = result[1];
  if ((*(v2 + 428) & 1) == 0)
  {
    v4 = *a2;
    v5 = v2 + 160;
    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v46, v2 + 160, 0);
    v35 = *&v46[0];
    v36 = DWORD2(v46[0]);
    if (v5 != *&v46[0] || DWORD2(v46[0]) != 0xFFFFFFFFLL)
    {
      v7 = 3.4028e38;
      do
      {
        v8 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v35);
        if (*(v8 + 8) != 2)
        {
          v9 = *(v8 + 200);
          if (v9)
          {
            v10 = *(v8 + 216);
            v11 = &v10[v9];
            do
            {
              v12 = result[2];
              *&v46[0] = *v10;
              v13 = re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(v12 + 480, v46);
              if (v13)
              {
                v14 = v13;
                re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v46, v13, 0);
                v15 = *&v46[0];
                v33 = *&v46[0];
                v34 = DWORD2(v46[0]);
                v16 = WORD4(v46[0]);
                v17 = HIWORD(DWORD2(v46[0]));
                v18 = v14 == *&v46[0] && WORD4(v46[0]) == 0xFFFF;
                if (!v18 || v17 != 0xFFFF)
                {
                  do
                  {
                    v20 = v17;
                    v21 = *(v15 + 16);
                    if (v21 <= v17)
                    {
                      v37 = 0;
                      memset(v46, 0, sizeof(v46));
                      v29 = MEMORY[0x1E69E9C10];
                      v30 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                      v38 = 136315906;
                      v39 = "operator[]";
                      v40 = 1024;
                      if (v30)
                      {
                        v31 = 3;
                      }

                      else
                      {
                        v31 = 2;
                      }

                      v41 = 797;
                      v42 = 2048;
                      v43 = v20;
                      v44 = 2048;
                      v45 = v21;
                      _os_log_send_and_compose_impl(v31, &v37, v46, 80, &dword_1E1C61000, v29, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v38, 38, v32, v33);
                      _os_crash_msg();
                      __break(1u);
                    }

                    v22 = *(*(v15 + 32) + 16 * v17) + 272 * v16;
                    v25 = *(v22 + 16);
                    v24 = v22 + 16;
                    v23 = v25;
                    if (v25)
                    {
                      re::PhysicsSimulation::update(v23, v4);
                      if ((*(**v24 + 104))())
                      {
                        v26 = *(*v24 + 888);
                        if ((*(*v24 + 68) - v26) <= v7)
                        {
                          v7 = *(*v24 + 68) - v26;
                        }
                      }
                    }

                    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v33);
                    v15 = v33;
                    v16 = v34;
                    v17 = HIWORD(v34);
                  }

                  while (v33 != v14 || v34 != 0xFFFF || HIWORD(v34) != 0xFFFF);
                }
              }

              ++v10;
            }

            while (v10 != v11);
          }
        }

        re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v35);
      }

      while (v35 != v5 || v36 != 0xFFFF || HIWORD(v36) != 0xFFFF);
      if (v7 != 3.4028e38)
      {
        re::Scheduler::enqueueTaskWithDeadline(*(result[3] + 720), *(result[3] + 208), v7);
      }
    }
  }
}

uint64_t re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_3,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7328;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_3,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7328;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 88 * v6 + 16;
  }
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 88 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 88 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 88 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 88 * v8) & 0x7FFFFFFF;
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

void re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_4,void ()(float)>::operator()(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = re::internal::enableSignposts(0, 0);
  if (v3)
  {
    v3 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v3);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::popTimeScope(v5, 4u);
  }

  v6 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v6)
  {
    v7 = re::profilerThreadContext(v6);

    re::ProfilerThreadContext::end(v7);
  }
}

uint64_t re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_4,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7380;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureSimulatePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_4,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7380;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  v2 = *(*(*(a1 + 1) + 896) + 24);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v4 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v4, *(*(a1 + 1) + 1024), v2 & 0xFFFFFFFFFFFFFFFLL, 1);
  }

  v5 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v5)
  {
    v6 = re::profilerThreadContext(v5);
    re::ProfilerThreadContext::pushTimeScope(v6);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB73D8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB73D8;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_1,void ()(float)>::~Callable(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_1F5CB7430;
  a2[1] = v3;
  a2[2] = v4;
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_1,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7430;
  v2 = *(a1 + 8);
  *(a1 + 16) = 0;
  *(a2 + 8) = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_2,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7488;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_2,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7488;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_3,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB74E0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_3,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB74E0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_4,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7538;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_4,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7538;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_5,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7590;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_5,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7590;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_7,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB75E8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_7,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB75E8;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_8,void ()(float)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(v1 + 688));
  v3 = re::ServiceLocator::serviceOrNull<re::ColorManager>(*(v1 + 688));
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || ((v6 = (*(*v2 + 288))(v2) + 120, re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v20, v6, 0), v18 = v20, v19 = v21, v6 == v20) ? (v7 = v21 == 0xFFFFFFFFLL) : (v7 = 0), v7))
  {
LABEL_22:
    *(v4 + 3135) = 1065353216;
  }

  else
  {
    while (1)
    {
      v8 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v18);
      v9 = *(v8 + 200);
      if (v9)
      {
        break;
      }

LABEL_14:
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v18);
      if (v18 == v6 && v19 == 0xFFFF && HIWORD(v19) == 0xFFFF)
      {
        goto LABEL_22;
      }
    }

    v10 = *(v8 + 216);
    v11 = 8 * v9;
    while (1)
    {
      v12 = *v10;
      LOBYTE(v20) = 0;
      SceneDataEntity = makeSceneDataEntity(v12, &v20, 0, re::ecs2::Scene::kLocalSceneDataEntityID, 0);
      if (SceneDataEntity)
      {
        v14 = re::ecs2::EntityComponentCollection::get((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::EDRColorManagementComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v14)
        {
          break;
        }
      }

      ++v10;
      v11 -= 8;
      if (!v11)
      {
        goto LABEL_14;
      }
    }

    v17 = *(v14 + 32);
    if (v17)
    {
      *(v4 + 3135) = (*(v17 + 16))();
    }
  }
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_8,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7640;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_8,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7640;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_9,void ()(float)>::operator()(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = re::internal::enableSignposts(0, 0);
  if (v3)
  {
    v3 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v3);
  if (isStatisticCollectionEnabled)
  {
    v5 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::popTimeScope(v5, 5u);
  }

  v6 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v6)
  {
    v7 = re::profilerThreadContext(v6);

    re::ProfilerThreadContext::end(v7);
  }
}

uint64_t re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_9,void ()(float)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7698;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_9,void ()(float)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7698;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::internal::Callable<re::Engine::configureRenderPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  v2 = *(*(*(a1 + 1) + 896) + 24);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v4 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v5 = *(*(a1 + 1) + 1024);

    re::ProfilerThreadContext::begin(v4, v5, v2 & 0xFFFFFFFFFFFFFFFLL, 1);
  }
}

void *re::internal::Callable<re::Engine::configureRenderPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB76F0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureRenderPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB76F0;
  a2[1] = v2;
  return a2;
}

int64x2_t re::internal::Callable<re::Engine::configureRenderPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = (*(**(v2 + 992) + 104))(*(v2 + 992));
  if (!v3)
  {
    v5 = *(*(v2 + 896) + 24);
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v3);
    if (isStatisticCollectionEnabled)
    {
      v7 = re::profilerThreadContext(isStatisticCollectionEnabled);
      if (*(v7 + 152))
      {
        v1 = mach_absolute_time();
      }
    }

    else
    {
      v7 = 0;
    }

    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v15, 1520, v2, v5 & 0xFFFFFFFFFFFFFFFLL, 0, 0);
    (*(*v2 + 56))(v2);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v15, v8, v9);
    if (v7)
    {
      if (*(v7 + 152))
      {
        v10 = mach_absolute_time();
        v11 = *(v7 + 152);
        if (v11)
        {
          v12 = v11[56].u64[0];
          if (v12 >= v10 - v1)
          {
            v12 = v10 - v1;
          }

          v11[56].i64[0] = v12;
          v13 = v11[56].u64[1];
          if (v13 <= v10 - v1)
          {
            v13 = v10 - v1;
          }

          v11[56].i64[1] = v13;
          v14 = vdupq_n_s64(1uLL);
          v14.i64[0] = v10 - v1;
          result = vaddq_s64(v11[57], v14);
          v11[57] = result;
          *(v7 + 184) = 0;
        }
      }
    }
  }

  return result;
}

void *re::internal::Callable<re::Engine::configureRenderPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7748;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureRenderPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7748;
  a2[1] = v2;
  return a2;
}

void re::internal::Callable<re::Engine::configureRenderPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v2 = re::profilerThreadContext(isStatisticCollectionEnabled);

    re::ProfilerThreadContext::end(v2);
  }
}

void *re::internal::Callable<re::Engine::configureRenderPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CB77A0;
  return result;
}

void *re::internal::Callable<re::Engine::configureRenderPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CB77A0;
  return result;
}

uint64_t re::internal::Callable<re::Engine::configureEndTickPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v2 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::pushTimeScope(v2);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::Engine::configureEndTickPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB77F8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureEndTickPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB77F8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureEndTickPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7850;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureEndTickPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7850;
  a2[1] = v2;
  return a2;
}

double re::internal::Callable<re::Engine::configureEndTickPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::operator()(uint64_t a1, uint64_t a2, BOOL a3)
{
  v3 = re::internal::enableSignposts(0, 0);
  if (v3)
  {
    v3 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v3);
  if (isStatisticCollectionEnabled)
  {
    v6 = re::profilerThreadContext(isStatisticCollectionEnabled);

    *&result = re::ProfilerThreadContext::popTimeScope(v6, 7u).u64[0];
  }

  return result;
}

void *re::internal::Callable<re::Engine::configureEndTickPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB78A8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureEndTickPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB78A8;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::operator()(re::ProfilerConfig *a1)
{
  v2 = *(*(*(a1 + 1) + 896) + 24);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(a1);
  if (isStatisticCollectionEnabled)
  {
    v4 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::begin(v4, *(*(a1 + 1) + 1024), v2 & 0xFFFFFFFFFFFFFFFLL, 1);
  }

  result = re::internal::enableSignposts(0, 0);
  if (result)
  {

    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7900;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_0,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7900;
  a2[1] = v2;
  return a2;
}

re::FrameProfiler *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::operator()(uint64_t a1)
{
  result = *(a1 + 8);
  if (*(result + 204) == 1 && (*(result + 17) & 1) == 0)
  {
    return re::FrameProfiler::frameUpdateFinished(result);
  }

  return result;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7958;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_1,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7958;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::operator()(uint64_t a1, uint64_t a2, BOOL a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v4 = re::internal::enableSignposts(0, 0);
  if (v4)
  {
    v4 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v4);
  if (isStatisticCollectionEnabled)
  {
    v6 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::end(v6);
  }

  re::ProfilerManager::process(*(*(a1 + 8) + 1024), v8);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v8);
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB79B0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_2,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB79B0;
  a2[1] = v2;
  return a2;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_3,void ()(float)>::operator()(uint64_t a1, uint64_t a2, BOOL a3)
{
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v4 = re::internal::enableSignposts(0, 0);
  if (v4)
  {
    v4 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v4);
  if (isStatisticCollectionEnabled)
  {
    v6 = re::profilerThreadContext(isStatisticCollectionEnabled);
    re::ProfilerThreadContext::end(v6);
  }

  v7 = *(*(a1 + 8) + 1024);
  memset(v9, 0, sizeof(v9));
  v10 = 1065353216;
  re::ProfilerManager::process(v7, v9);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(v9);
  result = re::internal::enableSignposts(0, 0);
  if (result)
  {
    return kdebug_trace();
  }

  return result;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_3,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7A08;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_3,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7A08;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_4,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7A60;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_4,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7A60;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_5,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7AB8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::Engine::configureExitFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_5,void ()(float)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CB7AB8;
  a2[1] = v2;
  return a2;
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t re::Event<re::Engine>::~Event(uint64_t a1)
{
  if (*a1)
  {
    re::DynamicArray<unsigned long>::deinit(a1);
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(a1 + 72))
    {
      (*(*v2 + 40))(v2);
    }

    *(a1 + 72) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    ++*(a1 + 64);
  }

  re::DynamicArray<unsigned long>::deinit(a1);
  return a1;
}

uint64_t re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = re::internal::ServiceKeyHash::operator()(&v15, a2);
  v5 = v4;
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_9;
  }

  v7 = v4 % v6;
  v8 = *(*(a1 + 8) + 4 * (v4 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_9:
    result = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::addAsCopy(a1, v7, v5, a2, a2);
    ++*(a1 + 40);
    return result;
  }

  v9 = *a2;
  v10 = *(a1 + 16);
  while (1)
  {
    v11 = v10 + 40 * v8;
    v13 = *(v11 + 8);
    v12 = v11 + 8;
    if (v13 == v9)
    {
      result = re::StringID::operator==((v12 + 8), a2 + 1);
      if (result)
      {
        return result;
      }
    }

    v8 = *(v10 + 40 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }
}

re::ServiceRegistration *re::ServiceRegistration::ServiceRegistration(re::ServiceRegistration *this, const re::IntrospectionBase *a2, StringID *a3, void *a4)
{
  re::StringID::StringID(&v9, a3);
  *this = a2;
  v7 = re::StringID::StringID((this + 8), &v9);
  if (*&v9.var0)
  {
    if (*&v9.var0)
    {
    }
  }

  *(this + 3) = a4;
  return this;
}

uint64_t re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 40 * v8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 40 * v8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  v13 = 40 * v8;
  *(v11 + v13) = v12 | 0x80000000;
  *(*(a1 + 16) + v13) = *(*(a1 + 16) + 40 * v8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  v14 = (*(a1 + 16) + 40 * v8);
  v14[1] = *a5;
  re::StringID::StringID((v14 + 2), (a5 + 8));
  v14[4] = *(a5 + 24);
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

unint64_t re::internal::ServiceKeyHash::operator()(uint64_t a1, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((a2[1] >> 31) ^ (a2[1] >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((a2[1] >> 31) ^ (a2[1] >> 1))) >> 27));
  return ((v4 ^ (v4 >> 31)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
}

void re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::setCapacity(_anonymous_namespace_ *result, uint64_t a2)
{
  v2 = a2;
  v4 = *result;
  if (*result)
  {
    if (v2 && *(result + 6) != v2 && *(result + 7) <= v2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::init(v14, v4, v2);
      v5 = *v14;
      *v14 = *result;
      *result = v5;
      v6 = *&v14[16];
      *&v14[16] = *(result + 2);
      *(result + 2) = v6;
      v8 = *&v14[24];
      *&v14[24] = *(result + 24);
      v7 = *&v14[32];
      *(result + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v14[16] + v10) & 0x80000000) != 0)
          {
            v12 = re::internal::ServiceKeyHash::operator()(&v15, (*&v14[16] + v10 + 8));
            re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::addAsMove(result, v12 % *(result + 6), v12, *&v14[16] + v10 + 8, (*&v14[16] + v10 + 8));
            v9 = *&v14[32];
          }

          ++v11;
          v10 += 40;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(v14);
    }
  }

  else
  {
    if (v2)
    {
      v13 = v2;
    }

    else
    {
      v13 = 3;
    }
  }
}

void re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
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
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 40 * v7);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 40 * v7);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  v12 = 40 * v7;
  *(v10 + v12) = v11 | 0x80000000;
  *(*(a1 + 16) + v12) = *(*(a1 + 16) + 40 * v7) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  v13 = (*(a1 + 16) + 40 * v7);
  v13[1] = *a5;
  v14 = a5[1];
  v13[2] = v13[2] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v13[2] = a5[1] & 0xFFFFFFFFFFFFFFFELL | v14 & 1;
  v15 = a5[3];
  v13[3] = a5[2];
  a5[1] = 0;
  a5[2] = &str_67;
  v13[4] = v15;
  *(*(a1 + 8) + 4 * a2) = v7;
  ++*(a1 + 28);
  return v7;
}

double re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(uint64_t *a1)
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
          re::StringID::destroyString((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 40;
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

void re::make::shared::object<re::EventBus>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 200, 8);
  re::EventBus::EventBus(v4);
  *a2 = v5;
}

uint64_t *re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::registerSerializeFuncs(void (***a1)(re::TypeRegistry **))
{
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 28));
  (*a1)[8](a1);
  result = re::TypeRegistry::typeID(&v12, a1[26], (a1 + 1));
  if (v12)
  {
    v3 = a1[26];
    v8 = v12;
    re::TypeRegistry::attributesByAttributeType(v3, &v8, &v9);
    if (v10)
    {
      v4 = (v11 + 40);
      v5 = 48 * v10;
      do
      {
        v6 = *(v4 - 2);
        v7 = *v4;
        v4 += 6;
        v14 = v7;
        v13 = v6 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace((a1 + 28), &v13, &v14);
        v5 -= 48;
      }

      while (v5);
    }

    result = v9;
    if (v9)
    {
      if (v11)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t *re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::registerSerializeFuncs(void (***a1)(re::TypeRegistry **))
{
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 28));
  (*a1)[8](a1);
  result = re::TypeRegistry::typeID(&v12, a1[26], (a1 + 1));
  if (v12)
  {
    v3 = a1[26];
    v8 = v12;
    re::TypeRegistry::attributesByAttributeType(v3, &v8, &v9);
    if (v10)
    {
      v4 = (v11 + 40);
      v5 = 48 * v10;
      do
      {
        v6 = *(v4 - 2);
        v7 = *v4;
        v4 += 6;
        v14 = v7;
        v13 = v6 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace((a1 + 28), &v13, &v14);
        v5 -= 48;
      }

      while (v5);
    }

    result = v9;
    if (v9)
    {
      if (v11)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t *re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>>::registerSerializeFuncs(void (***a1)(re::TypeRegistry **))
{
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 26));
  (*a1)[8](a1);
  result = re::TypeRegistry::typeID(&v12, a1[24], (a1 + 1));
  if (v12)
  {
    v3 = a1[24];
    v8 = v12;
    re::TypeRegistry::attributesByAttributeType(v3, &v8, &v9);
    if (v10)
    {
      v4 = (v11 + 40);
      v5 = 48 * v10;
      do
      {
        v6 = *(v4 - 2);
        v7 = *v4;
        v4 += 6;
        v14 = v7;
        v13 = v6 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace((a1 + 26), &v13, &v14);
        v5 -= 48;
      }

      while (v5);
    }

    result = v9;
    if (v9)
    {
      if (v11)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t *re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>>::registerSerializeFuncs(void (***a1)(re::TypeRegistry **))
{
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 26));
  (*a1)[8](a1);
  result = re::TypeRegistry::typeID(&v12, a1[24], (a1 + 1));
  if (v12)
  {
    v3 = a1[24];
    v8 = v12;
    re::TypeRegistry::attributesByAttributeType(v3, &v8, &v9);
    if (v10)
    {
      v4 = (v11 + 40);
      v5 = 48 * v10;
      do
      {
        v6 = *(v4 - 2);
        v7 = *v4;
        v4 += 6;
        v14 = v7;
        v13 = v6 | 0xFFFFFFFF00000000;
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::FixedArrayInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace((a1 + 26), &v13, &v14);
        v5 -= 48;
      }

      while (v5);
    }

    result = v9;
    if (v9)
    {
      if (v11)
      {
        return (*(*v9 + 40))();
      }
    }
  }

  return result;
}

uint64_t re::ProfilerManager::getProcessorId<re::FrameProfiler>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::ProfilerManager::getProcessorId<re::FrameProfiler>(void)::processorId = atomic_fetch_add(&re::ProfilerManager::s_nextProcessorId, 1uLL) + 1;
      v0 = &unk_1EE187000;
    }
  }

  return v0[36];
}

void std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t re::ProfilerManager::getProcessorId<re::ProfilerFlameChartProcessor>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::ProfilerManager::getProcessorId<re::ProfilerFlameChartProcessor>(void)::processorId = atomic_fetch_add(&re::ProfilerManager::s_nextProcessorId, 1uLL) + 1;
      v0 = &unk_1EE187000;
    }
  }

  return v0[34];
}

uint64_t re::ProfilerManager::getProcessorId<re::ProfilerMiniHUDProcessor>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::ProfilerManager::getProcessorId<re::ProfilerMiniHUDProcessor>(void)::processorId = atomic_fetch_add(&re::ProfilerManager::s_nextProcessorId, 1uLL) + 1;
      v0 = &unk_1EE187000;
    }
  }

  return v0[35];
}

uint64_t re::ProfilerManager::getProcessorId<re::ProfilerDetailedHUDProcessor>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::ProfilerManager::getProcessorId<re::ProfilerDetailedHUDProcessor>(void)::processorId = atomic_fetch_add(&re::ProfilerManager::s_nextProcessorId, 1uLL) + 1;
      v0 = &unk_1EE187000;
    }
  }

  return v0[33];
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ProfilerProcessor *>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t re::ProfilerManager::getProcessorId<re::ProfilerLogProcessor>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::ProfilerManager::getProcessorId<re::ProfilerLogProcessor>(void)::processorId = atomic_fetch_add(&re::ProfilerManager::s_nextProcessorId, 1uLL) + 1;
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 150);
}

uint64_t re::ProfilerManager::getProcessorId<re::ProfilerCsvProcessor>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::ProfilerManager::getProcessorId<re::ProfilerCsvProcessor>(void)::processorId = atomic_fetch_add(&re::ProfilerManager::s_nextProcessorId, 1uLL) + 1;
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 152);
}

uint64_t re::introspect<re::ecs2::ECSService>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ecs2::ECSService>(BOOL)::info = re::ecs2::introspect_ECSService(a1, v4, v5, v6, v7, v8);
      v1 = &unk_1EE187000;
    }
  }

  return v1[167];
}

re::ecs2::DrawableQueueSyncSystem *re::ecs2::DrawableQueueSyncSystem::DrawableQueueSyncSystem(re::ecs2::DrawableQueueSyncSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CF14F8;
  v3 = v2 + 312;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 312) = &unk_1F5CF1490;
  *(v2 + 336) = 1;
  *(v2 + 352) = 0;
  *(v2 + 360) = 0;
  *(v2 + 344) = 0;
  *(v2 + 368) = 0;
  v4 = (v2 + 376);
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 1;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0;
  *(v2 + 504) = 1;
  *(v2 + 512) = 0u;
  *(v2 + 528) = 0u;
  *(v2 + 537) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 440), 0);
  *(this + 114) += 2;
  *(this + 60) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((this + 488), 0);
  *(this + 126) += 2;
  *(this + 66) = 0;
  *(this + 67) = this;
  *(this + 68) = v3;
  *(this + 552) = 1;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 0;
  *(this + 596) = 0x7FFFFFFFLL;
  return this;
}

uint64_t re::ecs2::System::System(uint64_t a1, char a2, char a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D00FD8;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = a2;
  *(a1 + 49) = a3;
  *(a1 + 52) = 0;
  *(a1 + 56) = 260;
  *(a1 + 60) = 1023969417;
  *(a1 + 64) = 0;
  v6 = re::DataArray<re::ecs2::System::SystemScheduling>::DataArray(a1 + 72, 4);
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 172) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  return a1;
}

uint64_t re::DataArray<re::ecs2::System::SystemScheduling>::DataArray(uint64_t a1, int a2)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 52) = 0x1FFFFFFFFLL;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  *(a1 + 44) = a2;
  re::DataArray<re::ecs2::System::SystemScheduling>::allocBlock(a1);
  return a1;
}

void re::DataArray<re::ecs2::System::SystemScheduling>::allocBlock(_anonymous_namespace_ *a1)
{
  v2 = 40 * *(a1 + 11);
  v9.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v9.n128_u64[0])
  {
    v2 = 4 * *(a1 + 11);
    v9.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v9.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v9);
      *(a1 + 12) = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash("assertion failure: (block.elements) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v5, v7);
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash("assertion failure: (block.allocationCounters) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v6, v8);
  __break(1u);
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v6 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 17 * (v5 & 0x3FFFFFFFFFFFFF0), 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v7 = 0;
      *&v8 = -1;
      *(&v8 + 1) = -1;
      do
      {
        *(*v3 + 16 * v7++) = v8;
      }

      while (v6 != v7);
      result = *v3;
    }

    v3[1] = &result[2 * v6];
    v9 = v3[2];
  }

  else
  {
    v9 = 0;
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v9;
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

double re::ecs2::ThrottleManager::ThrottleManager(re::ecs2::ThrottleManager *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5D00730;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0x7FFFFFFFLL;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 56) = 0;
  return result;
}

uint64_t re::introspect<re::SimulationClock>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::SimulationClock>(BOOL)::info = re::introspect_SimulationClock(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[220];
}

double re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::addSubscription(_anonymous_namespace_ *a1, __int128 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, a2, &v6);
  if ((v6 & 1) == 0)
  {
    if (*(a1 + 20))
    {
      LOBYTE(v6) = 1;
      v5 = a2[1];
      v7 = *a2;
      v8 = v5;
      *&result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(a1 + 40, &v6).n128_u64[0];
    }

    else
    {
      *&result = re::DynamicArray<re::EvaluationRegister>::add(a1, a2).n128_u64[0];
    }
  }

  return result;
}

__n128 re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
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

        re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 40 * v5;
  result = *a2;
  v13 = *(a2 + 16);
  *(v11 + 32) = *(a2 + 32);
  *v11 = result;
  *(v11 + 16) = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 32);
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 32 * v4;
    v6 = *(result + 32);
    while (*v6 != *a2 || v6[1] != a2[1] || v6[2] != a2[2])
    {
      v6 += 4;
      v5 -= 32;
      if (!v5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v6 = *(result + 32);
  }

  if (v6 == (v3 + 32 * v4))
  {
LABEL_13:
    v8 = 0;
  }

  else
  {
    *(a3 + 8) = (v6 - v3) >> 5;
    v8 = 1;
  }

  *a3 = v8;
  return result;
}

void *re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x28uLL))
        {
          v2 = 40 * a2;
          result = (*(*result + 32))(result, 40 * a2, 8);
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
            memcpy(v7, v5[4], 40 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 40, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v8, v10);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v9, v11);
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::createSubscription<re::Engine>(re::Engine *,REEventHandlerResult (re::Engine::*)(re::SimulationTimer*,re::SimulationTimerEventArgs const&))::{lambda(re::SimulationTimer*,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription const&,re::SimulationTimerEventArgs const&)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = (*a2 + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, a1);
}

uint64_t re::ecs2::System::System(uint64_t a1, char a2)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5D00FD8;
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 49) = a2;
  *(a1 + 52) = 0;
  *(a1 + 56) = 260;
  *(a1 + 60) = 1023969417;
  *(a1 + 64) = 0;
  v4 = re::DataArray<re::ecs2::System::SystemScheduling>::DataArray(a1 + 72, 4);
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 172) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  return a1;
}

uint64_t re::ProfilerManager::getProcessorId<re::FrameAnalysisProfilerProcessor>()
{
  if ((atomic_load_explicit(&qword_1EE191778, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE191778))
  {
    qword_1EE191770 = atomic_fetch_add(&re::ProfilerManager::s_nextProcessorId, 1uLL) + 1;
    __cxa_guard_release(&qword_1EE191778);
  }

  return qword_1EE191770;
}

void re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::removeSubscription(uint64_t a1, __int128 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, a2, v5);
  if (v5[0] == 1)
  {
    if (*(a1 + 80))
    {
      v5[0] = 0;
      v4 = a2[1];
      v6 = *a2;
      v7 = v4;
      re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::add(a1 + 40, v5);
    }

    else
    {
      re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(a1, a2);
    }
  }
}

uint64_t re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(void *a1, void *a2)
{
  re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, a2, v5);
  v3 = v5[0];
  if (v5[0] == 1)
  {
    re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v6);
  }

  return v3;
}

void *re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(void *result, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = result[2];
  if (v3 <= a2)
  {
    v11 = 0;
    memset(v20, 0, sizeof(v20));
    v8 = MEMORY[0x1E69E9C10];
    v12 = 136315906;
    v13 = "removeStableAt";
    v14 = 1024;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v15 = 969;
    v16 = 2048;
    v17 = a2;
    v18 = 2048;
    v19 = v3;
    _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
    _os_crash_msg();
    __break(1u);
  }

  v4 = result;
  v5 = v3 - 1;
  if (v3 - 1 > a2)
  {
    v6 = result[4];
    result = (v6 + 32 * a2);
    v7 = (v6 + 32 * v3);
    if (v7 != (result + 4))
    {
      result = memmove(result, result + 4, v7 - (result + 4));
      v5 = v4[2] - 1;
    }
  }

  v4[2] = v5;
  ++*(v4 + 6);
  return result;
}

double re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::FunctionBase<24ul,void ()(void)>::destroyCallable(v6 + v4 + 16);
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

double re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::ecs2::EntityHandle::reset((v6 + v4 + 16));
          objc_destroyWeak((v8 + 16));
          *(v8 + 16) = 0;
          v3 = *(a1 + 8);
        }

        v4 += 48;
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

uint64_t re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(uint64_t a1, uint64_t *a2)
{
  v4 = re::internal::ServiceKeyHash::operator()(&v23, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    return 0;
  }

  v6 = v4 % v5;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * (v4 % v5));
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v11 = *a2;
  v9 = a2 + 1;
  v10 = v11;
  v12 = *(a1 + 16);
  v13 = 0x7FFFFFFFLL;
  while (1)
  {
    v14 = v12 + 40 * v8;
    v16 = *(v14 + 8);
    v15 = v14 + 8;
    if (v16 == v10 && re::StringID::operator==((v15 + 8), v9))
    {
      break;
    }

    v13 = v8;
    v8 = *(v12 + 40 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  v18 = *(v12 + 40 * v8) & 0x7FFFFFFF;
  if (v13 == 0x7FFFFFFF)
  {
    *(v7 + 4 * v6) = v18;
  }

  else
  {
    *(v12 + 40 * v13) = *(v12 + 40 * v13) & 0x80000000 | v18;
  }

  v19 = *(a1 + 16);
  v20 = (v19 + 40 * v8);
  v21 = *v20;
  if (*v20 < 0)
  {
    *v20 = v21 & 0x7FFFFFFF;
    re::StringID::destroyString((v20 + 4));
    v19 = *(a1 + 16);
    v21 = *(v19 + 40 * v8);
  }

  v22 = *(a1 + 40);
  *(v19 + 40 * v8) = *(a1 + 36) | v21 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v22 + 1;
  return 1;
}

double re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 16);
          if (v9)
          {

            *(v8 + 16) = 0;
            v3 = *(a1 + 8);
          }
        }

        v4 += 32;
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

double re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::__deallocate_node(uint64_t a1, re::ecs2::Entity **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      re::ecs2::RemoteEffectAudioPlaybackData::~RemoteEffectAudioPlaybackData(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

double re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::ecs2::RemoteEffectShaderData::~RemoteEffectShaderData((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 832;
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

double re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
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

double re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::free(a1, v3++);
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

void re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 24 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 8);
    if (v3)
    {

      *(v2 + 8) = 0;
    }
  }
}

double re::HashTable<unsigned long long,re::VFXManager::VFXEffectData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;

          v3 = *(a1 + 8);
        }

        v4 += 56;
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

double re::HashTable<unsigned long long,re::VFXManager::VFXRuntimeData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;

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

void re::ecs2::PhysicsSimulationTracking::~PhysicsSimulationTracking(re::ecs2::PhysicsSimulationTracking *this)
{
  *(this + 44) = 0;
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 70);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 64);
  re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 58);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(this + 408);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 408);
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::~HierarchyStateTracking(this);
}

{
  re::ecs2::PhysicsSimulationTracking::~PhysicsSimulationTracking(this);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CB7C80;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 19);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

double re::HashTable<re::ecs2::Scene const*,re::DataArray<re::ecs2::PhysicsSimulationData>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4 + 16;
          re::DataArray<re::ecs2::PhysicsSimulationData>::deinit(v8);
          re::DynamicArray<unsigned long>::deinit(v8);
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

uint64_t re::DataArray<re::ecs2::PhysicsSimulationData>::deinit(uint64_t result)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(result + 44))
  {
    v1 = result;
    v2 = re::DataArray<re::ecs2::PhysicsSimulationData>::clear(result);
    if (!v1[2])
    {
      v7 = 0;
      memset(v16, 0, sizeof(v16));
      v4 = MEMORY[0x1E69E9C10];
      v8 = 136315906;
      v9 = "operator[]";
      v10 = 1024;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      v11 = 789;
      v12 = 2048;
      v13 = 0;
      v14 = 2048;
      v15 = 0;
      _os_log_send_and_compose_impl(v5, &v7, v16, 80, &dword_1E1C61000, v4, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v8, 38, v6);
      _os_crash_msg();
      __break(1u);
    }

    v3 = v1[4];
    (*(**v1 + 40))(*v1, *v3, v2);
    (*(**v1 + 40))(*v1, v3[1]);
    result = re::DynamicArray<unsigned long>::deinit(v1);
    *(v1 + 11) = 0;
  }

  return result;
}

double re::DataArray<re::ecs2::PhysicsSimulationData>::clear(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v24, a1, 0);
  if (*&v24[0] != a1 || DWORD2(v24[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v3 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(v24);
      re::DataArray<re::ecs2::PhysicsSimulationData>::destroy(a1, v3);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(v24);
    }

    while (*&v24[0] != a1 || WORD4(v24[0]) != 0xFFFF || WORD5(v24[0]) != 0xFFFF);
  }

  v6 = a1[2];
  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 16 * v6;
    do
    {
      v9 = a1[2];
      if (v9 <= v7)
      {
        v15 = 0;
        memset(v24, 0, sizeof(v24));
        v12 = MEMORY[0x1E69E9C10];
        v16 = 136315906;
        v17 = "operator[]";
        v18 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v13 = 3;
        }

        else
        {
          v13 = 2;
        }

        v19 = 789;
        v20 = 2048;
        v21 = v7;
        v22 = 2048;
        v23 = v9;
        _os_log_send_and_compose_impl(v13, &v15, v24, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v16, 38, v14);
        _os_crash_msg();
        __break(1u);
      }

      v10 = a1[4] + v8;
      (*(**a1 + 40))(*a1, *(v10 - 16));
      (*(**a1 + 40))(*a1, *(v10 - 8));
      re::DynamicArray<re::DataArray<re::RigGraphOperatorDefinition>::ElementBlock>::removeAt(a1, v7);
      v8 -= 16;
      --v7;
    }

    while (v7);
  }

  result = NAN;
  a1[6] = 0xFFFFFFFF00000000;
  return result;
}

void re::DataArray<re::ecs2::PhysicsSimulationData>::destroy(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 16;
  v5 = re::DataArray<re::ecs2::PhysicsSimulationData>::tryGet(a1, a2 & 0xFFFFFFFF00000000 | (WORD1(a2) << 16) | a2);
  if (v5)
  {
    v6 = v5;
    re::ecs2::PhysicsSimulationData::deinit(v5);
    objc_destroyWeak(v6 + 7);
    *(v6 + 7) = 0;
    v7 = *(a1 + 16);
    if (v7 <= HIWORD(v2))
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

      v15 = 789;
      v16 = 2048;
      v17 = HIWORD(v2);
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    *(*(*(a1 + 32) + 16 * HIWORD(v2) + 8) + 4 * v2) = 0;
    *v6 = *(a1 + 52);
    *(a1 + 52) = v2;
    *(a1 + 54) = v4;
    --*(a1 + 40);
  }
}

uint64_t re::DataArray<re::ecs2::PhysicsSimulationData>::tryGet(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (WORD1(a2) < v2 && ((v2 - 1) != WORD1(a2) ? (v3 = *(a1 + 44)) : (v3 = *(a1 + 48)), a2 < v3 && ((v4 = (*(a1 + 32) + 16 * WORD1(a2)), (v5 = *(v4[1] + 4 * a2)) != 0) ? (v6 = v5 == (HIDWORD(a2) & 0xFFFFFF)) : (v6 = 0), v6)))
  {
    return *v4 + 272 * a2;
  }

  else
  {
    return 0;
  }
}

void re::ecs2::HierarchyStateTracking<re::ecs2::RootPhysicsSimulationData>::clearEntityHierarchyStateData(_DWORD *a1, uint64_t a2)
{
  if (a1[21])
  {
    if (a1[74] != a1[24])
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((a1 + 62));
    }

    re::StackScratchAllocator::StackScratchAllocator(v15);
    v9[0] = 0;
    v9[1] = 0;
    v10 = 1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v9, v15, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = a2;
    while (v13)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, v13 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, --v13);
      ++v14;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains((a1 + 62), &v8))
      {
        re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove((a1 + 14), &v8);
        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add((a1 + 62), &v8);
        v4 = *(v8 + 344);
        if (v4)
        {
          v5 = *(v8 + 360);
          v6 = 8 * v4;
          do
          {
            v7 = *v5++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v9) = v7;
            v6 -= 8;
          }

          while (v6);
        }
      }
    }

    a1[74] = a1[24];
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v9);
    if (v9[0] && (v10 & 1) == 0)
    {
      (*(*v9[0] + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v15);
  }
}

void re::Scheduler::~Scheduler(re::Scheduler *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 101);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(this + 98);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(this + 95);
  re::DynamicArray<unsigned long>::deinit(this + 704);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(this + 85);
  re::FixedArray<CoreIKTransform>::deinit(this + 82);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(this + 79);
  re::FixedArray<CoreIKTransform>::deinit(this + 76);
  re::FixedArray<CoreIKTransform>::deinit(this + 73);
  re::FixedArray<CoreIKTransform>::deinit(this + 70);
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::FixedArray<re::Function<void ()(float)>>::deinit(this + 64);
  re::FixedArray<CoreIKTransform>::deinit(this + 61);
  re::FixedArray<CoreIKTransform>::deinit(this + 58);
  re::FixedArray<CoreIKTransform>::deinit(this + 55);
  re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(this + 52);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 344);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 272);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 200);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 128);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 56);
  re::FixedArray<re::StringID>::deinit(this + 4);
  re::FixedArray<re::StringID>::deinit(this + 1);
}

void *re::FixedArray<re::DynamicBitset<unsigned long long,256ul>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 72 * v2;
      do
      {
        re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
        v4 += 72;
        v5 -= 72;
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

void *re::FixedArray<re::Function<void ()(float)>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 40 * v2;
      do
      {
        re::FunctionBase<24ul,void ()(float)>::destroyCallable(v4);
        v4 += 40;
        v5 -= 40;
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

uint64_t re::EventBus::getTypeId<REEngineDoUpdateEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REEngineDoUpdateEvent>(void)const::s_id = re::EventBus::typeStringToId(("21REEngineDoUpdateEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[23];
}

__n128 std::__function::__func<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_3,std::allocator<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_3>,void ()(re::Scheduler::TaskDescriptor)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7B10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_3,std::allocator<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_3>,void ()(re::Scheduler::TaskDescriptor)>::operator()(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  *&v8.var0 = *a2;
  v8.var1 = v4;
  *a2 = 0;
  *(a2 + 8) = &str_67;
  *v9 = *(a2 + 16);
  *&v9[13] = *(a2 + 29);
  v10[3] = *(a2 + 64);
  v10[4] = 0;
  re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(v10, a2 + 40);
  v5 = *(a2 + 88);
  v10[5] = *(a2 + 80);
  v11 = v5;
  v12 = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v14 = *(a2 + 120);
  *(a2 + 120) = 0;
  ++*(a2 + 112);
  v13 = 1;
  v6 = *(a1 + 8);
  *(v6 + 88) = re::Scheduler::ScheduleDescriptor::addTask(*(a1 + 16), &v8);
  if (v11)
  {
    if (v14)
    {
      (*(*v11 + 40))();
    }

    v14 = 0;
    v12 = 0uLL;
    v11 = 0;
    ++v13;
  }

  v7 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v10);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

uint64_t std::__function::__func<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_3,std::allocator<re::Engine::configureEnterFramePhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&)::$_3>,void ()(re::Scheduler::TaskDescriptor)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::Scheduler::ScheduleDescriptor::addTask(uint64_t a1, StringID *a2)
{
  if (a2[4].var1)
  {
    v4 = *(a1 + 56);
    if (v4 >= *(a1 + 48))
    {
      re::DynamicArray<re::Scheduler::TaskDescriptor>::growCapacity((a1 + 40), v4 + 1);
      v4 = *(a1 + 56);
    }

    v5 = *(a1 + 72) + (v4 << 7);
    re::StringID::StringID(v5, a2);
    v6 = a2[1];
    *(v5 + 29) = *(&a2[1].var1 + 5);
    *(v5 + 16) = v6;
    *(v5 + 64) = *&a2[4].var0;
    *(v5 + 72) = 0;
    re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(v5 + 40, &a2[2].var1);
    *(v5 + 80) = *&a2[5].var0;
    re::DynamicArray<unsigned long>::DynamicArray(v5 + 88, &a2[5].var1);
    result = *(a1 + 56);
    *(a1 + 56) = result + 1;
    ++*(a1 + 64);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Task Descriptor does not contain an update function", "taskDescriptor.taskFunction", "addTask", 142);
    result = _os_crash("assertion failure: (taskDescriptor.taskFunction) Task Descriptor does not contain an update function");
    __break(1u);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::Scheduler::TaskDescriptor)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

re::EventBus::EventInfo *re::EventBus::subscriptionCountInternal<re::Engine,REEngineDoUpdateEvent>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  result = re::EventBus::getEventInfo<REEngineDoUpdateEvent>(a1);
  if (result)
  {
    result = re::EventBus::EventInfo::getSubscriptions(result, a2, a3);
    if (result)
    {
      return *(result + 15);
    }
  }

  return result;
}

uint64_t re::EventBus::getEventInfo<REEngineDoUpdateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<REEngineDoUpdateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

unint64_t re::EventBus::EventInfo::getSubscriptions(re::EventBus::EventInfo *this, unint64_t a2, unint64_t a3)
{
  if (!(a2 | a3))
  {
    return this + 88;
  }

  v6[0] = a2;
  v6[1] = a3;
  v4 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(this + 27, v6);
  if (v4 == -1)
  {
    return 0;
  }

  else
  {
    return *(this + 28) + 144 * v4 + 16;
  }
}

__n128 std::__function::__func<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_6,std::allocator<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_6>,void ()(re::Scheduler::TaskDescriptor)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CB7BA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_6,std::allocator<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_6>,void ()(re::Scheduler::TaskDescriptor)>::operator()(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  *&v8.var0 = *a2;
  v8.var1 = v4;
  *a2 = 0;
  *(a2 + 8) = &str_67;
  *v9 = *(a2 + 16);
  *&v9[13] = *(a2 + 29);
  v10[3] = *(a2 + 64);
  v10[4] = 0;
  re::FunctionBase<24ul,void ()(float)>::operator=<24ul>(v10, a2 + 40);
  v5 = *(a2 + 88);
  v10[5] = *(a2 + 80);
  v11 = v5;
  v12 = *(a2 + 96);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  v14 = *(a2 + 120);
  *(a2 + 120) = 0;
  ++*(a2 + 112);
  v13 = 1;
  v6 = *(a1 + 8);
  *(v6 + 224) = re::Scheduler::ScheduleDescriptor::addTask(*(a1 + 16), &v8);
  if (v11)
  {
    if (v14)
    {
      (*(*v11 + 40))();
    }

    v14 = 0;
    v12 = 0uLL;
    v11 = 0;
    ++v13;
  }

  v7 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(v10);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

uint64_t std::__function::__func<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_6,std::allocator<re::Engine::configureCommitPhase(re::FrameTaskHandles &,re::Scheduler::ScheduleDescriptor &,re::FrameTaskSet const&,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_6>,void ()(re::Scheduler::TaskDescriptor)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,5ul>::resize(_anonymous_namespace_ *result, unint64_t a2, void *a3)
{
  v4 = result;
  v5 = *(result + 1);
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<unsigned long long,5ul>::reserve(result, a2);
    v7 = *(v4 + 1);
    if (v7 < a2)
    {
      do
      {
        v8 = v4 + 24;
        if ((*(v4 + 16) & 1) == 0)
        {
          v8 = *(v4 + 4);
        }

        *&v8[8 * v7++] = *a3;
      }

      while (a2 != v7);
    }
  }

  *(v4 + 1) = a2;
  *(v4 + 4) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,5ul>::reserve(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if ((*(result + 4) & 1) == 0)
    {
LABEL_3:
      v4 = *(v3 + 3);
      goto LABEL_6;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
    *(v3 + 4) = v5;
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 5;
LABEL_6:
  if (v4 < a2)
  {

    return re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v3, a2);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<unsigned long long,5ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 5;
  }

  else
  {
    v8 = *(result + 3);
  }

  if (v8 != a2)
  {
    v9 = *(result + 1);
    if (v9 <= a2 && (a2 > 5 || (v7 & 1) == 0))
    {
      if (a2 < 6)
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

uint64_t re::DynamicOverflowArray<unsigned long long,2ul>::DynamicOverflowArray(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    *a1 = v3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, v5);
    *(a1 + 16) += 2;
    re::DynamicOverflowArray<unsigned long long,2ul>::copy(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<unsigned long long,2ul>::copy(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, *(a2 + 8));
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 8 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 8 * v12), 8 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 8 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 8 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,2ul>::resize(_anonymous_namespace_ *result, unint64_t a2, void *a3)
{
  v4 = result;
  v5 = *(result + 1);
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<unsigned long long,2ul>::reserve(result, a2);
    v7 = *(v4 + 1);
    if (v7 < a2)
    {
      do
      {
        v8 = v4 + 24;
        if ((*(v4 + 16) & 1) == 0)
        {
          v8 = *(v4 + 4);
        }

        *&v8[8 * v7++] = *a3;
      }

      while (a2 != v7);
    }
  }

  *(v4 + 1) = a2;
  *(v4 + 4) += 2;
  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,2ul>::reserve(_anonymous_namespace_ *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if ((*(result + 4) & 1) == 0)
    {
LABEL_3:
      v4 = *(v3 + 3);
      goto LABEL_6;
    }
  }

  else
  {
    result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    v5 = *(v3 + 4) + 2;
    *(v3 + 4) = v5;
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 2;
LABEL_6:
  if (v4 < a2)
  {

    return re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
  }

  return result;
}

void re::NetworkAssetManager::init(re::Bundle *a1, uint64_t a2, uint64_t a3, char a4)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a1 + 2) = a2;
  if (a2)
  {
    *&v16 = a1;
    *(&v16 + 1) = re::NetworkAssetManager::onComponentUpdated;
    *&v17 = 0;
    *(&v17 + 1) = re::Event<re::NetworkSystem,re::ecs2::Component *>::createSubscription<re::NetworkAssetManager>(re::NetworkAssetManager *,REEventHandlerResult (re::NetworkAssetManager::*)(re::NetworkSystem*,re::ecs2::Component *))::{lambda(re::NetworkSystem*,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription const&,re::ecs2::Component *&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((a2 + 352), &v16);
  }

  *(a1 + 1) = a3;
  *(a1 + 216) = a4;
  re::Bundle::application(&v15);
  v7 = (*(*a1 + 104))(a1);
  re::Bundle::ID(&v11, &v15);
  if (v12)
  {
    v9 = *&v13[7];
  }

  else
  {
    v9 = v13;
  }

  re::DynamicString::format(&v16, "RootAssetEntity-%llu-%s", v8, v7, v9);
  re::StringID::StringID(v14, &v16);
  v10 = re::StringID::operator=((a1 + 200), v14);
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  v14[0] = 0;
  v14[1] = &str_67;
  if (v16)
  {
    if (BYTE8(v16))
    {
      (*(*v16 + 40))();
    }

    v16 = 0u;
    v17 = 0u;
  }

  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }
}

uint64_t re::NetworkAssetManager::onComponentUpdated(re::NetworkAssetManager *this, re::NetworkSystem *a2, re::ecs2::Component *a3)
{
  v5 = (*(*a3 + 40))(a3, a2);
  v6 = (*(*v5 + 48))(v5);
  v7 = &unk_1EE187000;
  do
  {
    {
      v11 = v7;
      v7 = v11;
      if (v12)
      {
        v11[96] = re::ecs2::introspect_NetworkAssetComponent(0, v13, v14, v15, v16, v17);
        v7 = v11;
      }
    }

    if (v6 == v7[96])
    {
      v31 = *(a3 + 4);
      v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v36, this + 32, v31, v32 ^ (v32 >> 31));
      if (v37 == 0x7FFFFFFF)
      {
        (*(*this + 136))(this, v31, a3 + 72, *(a3 + 2));
        v31 = *(a3 + 4);
      }

      (*(*this + 216))(this, v31);
      return 0;
    }

    v8 = *(v6 + 56);
    if (!v8)
    {
      break;
    }

    v9 = *(v6 + 64);
    while (1)
    {
      v10 = *v9;
      if (**v9 == 1 && v10[10] == 3)
      {
        break;
      }

      ++v9;
      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    v6 = *(v10 + 2);
  }

  while (v6);
LABEL_14:
  v18 = (*(*a3 + 40))(a3);
  v19 = (*(*v18 + 48))(v18);
  v20 = &unk_1EE187000;
  while (1)
  {
    {
      v24 = v20;
      v20 = v24;
      if (v25)
      {
        v24[114] = re::ecs2::introspect_AssetStateComponent(0, v26, v27, v28, v29, v30);
        v20 = v24;
      }
    }

    if (v19 == v20[114])
    {
      break;
    }

    v21 = *(v19 + 56);
    if (v21)
    {
      for (i = *(v19 + 64); ; ++i)
      {
        v23 = *i;
        if (**i == 1 && v23[10] == 3)
        {
          break;
        }

        if (!--v21)
        {
          return 0;
        }
      }

      v19 = *(v23 + 2);
      if (v19)
      {
        continue;
      }
    }

    return 0;
  }

  v33 = *(a3 + 5);
  if (v33 != (*(*this + 104))(this))
  {
    v34 = *(this + 28);
    if (v34)
    {
      (**v34)(v34, *(a3 + 4), *(a3 + 5), *(a3 + 48), 0, 0);
    }
  }

  return 0;
}

void re::NetworkAssetManager::deinit(re::NetworkAssetManager *this)
{
  v3 = (this + 184);
  v2 = *(this + 23);
  if (v2)
  {
    if (!*(v2 + 56) || ((*(**(this + 1) + 120))(*(this + 1), v3), (v2 = *(this + 23)) != 0))
    {

      *v3 = 0;
    }
  }

  v4 = *(this + 3);
  if (v4)
  {

    *(this + 3) = 0;
  }

  *(this + 1) = 0;
  v5 = *(this + 2);
  if (v5)
  {
    re::Event<re::NetworkSystem,re::ecs2::Component *>::unsubscribe<re::NetworkAssetManager>((v5 + 352), this);
  }

  *(this + 2) = 0;
}

void re::Event<re::NetworkSystem,re::ecs2::Component *>::unsubscribe<re::NetworkAssetManager>(void *result, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (result[2])
  {
    v4 = 0;
    do
    {
      v5 = (result[4] + 32 * v4);
      if (*v5 == a2)
      {
        if (!*(result + 20))
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(result, v4);
          continue;
        }

        v7[0] = 0;
        v6 = *v5;
        v9 = v5[1];
        v8 = v6;
        re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::add((result + 5), v7);
      }

      ++v4;
    }

    while (v4 < result[2]);
  }
}

id *re::NetworkAssetManager::assetLoadDescriptors@<X0>(re::NetworkAssetManager *this@<X0>, _BYTE *a2@<X8>, unint64_t a3@<X1>)
{
  result = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, a3);
  if (result && (result = re::ecs2::EntityHandle::resolve(result, *(this + 1))) != 0 && (result = re::ecs2::EntityComponentCollection::get((result + 6), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0)
  {
    *a2 = 1;

    return re::DynamicArray<re::AssetLoadDescriptor>::DynamicArray((a2 + 8), result + 9);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v6 + 16;
  }
}

void re::NetworkAssetManager::dependencyAssetId(re::NetworkAssetManager *this@<X0>, char *a2@<X2>, unint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, a3);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = re::ecs2::EntityHandle::resolve(v8, *(this + 1));
  if (!v9)
  {
    v19 = *re::assetsLogObjects(0);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v32 = 134217984;
    v33 = a3;
    v16 = "Failed to resolve entity from entity handle for asset with id %llu.";
LABEL_23:
    v17 = v19;
    v18 = 12;
    goto LABEL_24;
  }

  v10 = re::ecs2::EntityComponentCollection::get((v9 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v10)
  {
    v19 = *re::assetsLogObjects(0);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v32 = 134217984;
    v33 = a3;
    v16 = "Network asset entity with asset id %llu has no NetworkAssetComponent.";
    goto LABEL_23;
  }

  v11 = v10;
  v12 = re::Hash<re::DynamicString>::operator()(&v32, a2);
  if (!*(v11 + 112))
  {
    goto LABEL_6;
  }

  v13 = *(*(v11 + 120) + 4 * (v12 % *(v11 + 136)));
  if (v13 == 0x7FFFFFFF)
  {
    goto LABEL_6;
  }

  v20 = *(v11 + 128);
  v21 = v20 + 56 * v13;
  v22 = *(v21 + 16);
  v23 = *(v21 + 24);
  v24 = (v21 + 17);
  if (v22)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v12 = strcmp(v25, a2);
  if (v12)
  {
    while (1)
    {
      v26 = *(v20 + 56 * v13);
      v13 = v26 & 0x7FFFFFFF;
      if ((v26 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        break;
      }

      v27 = v20 + 56 * v13;
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);
      v30 = (v27 + 17);
      if (v28)
      {
        v31 = v29;
      }

      else
      {
        v31 = v30;
      }

      v12 = strcmp(v31, a2);
      if (!v12)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    v14 = *re::assetsLogObjects(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(v11 + 140);
      v32 = 134218498;
      v33 = a3;
      v34 = 2080;
      v35 = a2;
      v36 = 1024;
      v37 = v15;
      v16 = "Network asset entity with asset id %llu does not have any dependencies registered for relative path '%s'. Dependencies count = %u";
      v17 = v14;
      v18 = 28;
LABEL_24:
      _os_log_debug_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEBUG, v16, &v32, v18);
    }

LABEL_11:
    *a4 = 0;
    return;
  }

LABEL_21:
  *a4 = 1;
  *(a4 + 8) = *(v20 + 56 * v13 + 40);
}

id *re::NetworkAssetManager::netComponent(re::NetworkAssetManager *this, unint64_t a2)
{
  result = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, a2);
  if (result)
  {
    result = re::ecs2::EntityHandle::resolve(result, *(this + 1));
    if (result)
    {
      return re::ecs2::EntityComponentCollection::get((result + 6), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    }
  }

  return result;
}

id *re::NetworkAssetManager::ownerPeerID@<X0>(re::NetworkAssetManager *this@<X0>, unint64_t a2@<X1>, re::NetworkAssetManager *a3@<X8>)
{
  result = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, a2);
  if (result)
  {
    v6 = re::ecs2::EntityHandle::resolve(result, *(this + 1));

    return re::NetworkAssetManager::ownerPeerID(a3, this, v6);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

_BYTE *re::NetworkAssetManager::ownerPeerID(_BYTE *this, const re::ecs2::Entity *a2, uint64_t a3)
{
  v3 = this;
  if (a3 && (v4 = *(a3 + 216)) != 0)
  {
    v5 = *(a3 + 32);
    if (v5 && (*(v5 + 304) & 0x80) != 0)
    {
      v5 = 0;
    }

    v6 = *(a2 + 3);
    if (v6 != v5 || v6 == 0)
    {
      if (*(v4 + 32))
      {
        this = RESyncableGetOwnerPeerID();
      }

      else
      {
        this = *(v4 + 64);
      }
    }

    else
    {
      this = RESyncServiceGetLocalPeerId();
    }

    *v3 = 1;
    *(v3 + 1) = this;
  }

  else
  {
    *this = 0;
  }

  return this;
}

uint64_t re::NetworkAssetManager::fromPeerID@<X0>(re::NetworkAssetManager *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, a2);
  if (result && (result = re::ecs2::EntityHandle::resolve(result, *(this + 1))) != 0 && (v6 = *(result + 216)) != 0)
  {
    if (*(v6 + 32))
    {
      result = RESyncableGetFromPeerID();
    }

    else
    {
      result = *(v6 + 64);
    }

    *a3 = 1;
    *(a3 + 8) = result;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

char *re::NetworkAssetManager::setUseIndependentScene(char *this, uint64_t a2)
{
  if (this[192] != a2)
  {
    if (*(this + 22))
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Network asset manager has already attached to a scene", "m_activeScene == nullptr", "setUseIndependentScene", 223, v2, v3);
      this = _os_crash("assertion failure: (m_activeScene == nullptr) Network asset manager has already attached to a scene");
      __break(1u);
    }

    else
    {
      this[192] = a2;
      if (*(this + 3))
      {

        return re::NetworkAssetManager::getOrCreateAssetRootEntity(this);
      }
    }
  }

  return this;
}

char *re::NetworkAssetManager::getOrCreateAssetRootEntity(re::NetworkAssetManager *this)
{
  v1 = this;
  if (*(this + 192) == 1)
  {
    v2 = (this + 184);
    if (!*(this + 23))
    {
      v15[0] = 0x70790C8A86948A1ELL;
      v15[1] = "RootAssetScene";
      re::make::shared::object<re::ecs2::Scene,re::ConstStringID>(v15, &v16);
      v4 = *v2;
      v5 = v16;
      *v2 = v16;
      v16 = v4;
      if (v4)
      {

        v5 = *v2;
      }

      this = re::ecs2::Scene::setHiddenFromSwiftAPI(v5, v3);
      if (*(v1 + 193) == 1)
      {
        this = (*(**(v1 + 1) + 112))(*(v1 + 1), v1 + 184, 0xFFFFFFFFLL);
      }

      v6 = *(v1 + 3);
      v7 = *(v1 + 23);
      *(v1 + 22) = v7;
      if (v6)
      {
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(v7 + 104) + 320), v1 + 3);
      }
    }
  }

  v8 = (v1 + 24);
  if (!*(v1 + 3))
  {
    v9 = re::ecs2::EntityFactory::instance(this);
    re::ecs2::EntityFactory::make(v15, v9, 4uLL);
    v10 = *v8;
    v11 = v15[0];
    *v8 = v15[0];
    if (v10)
    {

      v11 = *v8;
    }

    *(v11 + 76) |= 0x1400u;
    re::StringID::StringID(v15, (v1 + 200));
    v12 = re::StringID::operator=(v11 + 36, v15);
    if (v15[0])
    {
      if (v15[0])
      {
      }
    }

    re::ecs2::EntityComponentCollection::add((*(v1 + 3) + 48), re::ecs2::ComponentImpl<re::ecs2::LinkedTLEComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    re::ecs2::EntityComponentCollection::add((*(v1 + 3) + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v13 = *(v1 + 22);
    if (v13)
    {
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(v13 + 104) + 320), v1 + 3);
    }
  }

  return *v8;
}

void re::NetworkAssetManager::hackOneTimeSetUp(re::NetworkAssetManager *this)
{
  if ((*(this + 193) & 1) == 0)
  {
    if (*(this + 192) != 1)
    {
LABEL_8:
      *(this + 193) = 1;
      return;
    }

    v2 = (*(**(this + 1) + 288))(*(this + 1));
    v3 = re::ecs2::SceneGroupCollection::sceneCount(v2);
    if (v3)
    {
      if (*(this + 23))
      {
        v4 = *re::assetsLogObjects(v3);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Network asset one-time set up: adding asset scene to ECS service", v6, 2u);
        }

        (*(**(this + 1) + 112))(*(this + 1), this + 184, 0xFFFFFFFFLL);
      }

      goto LABEL_8;
    }

    v5 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEBUG, "Delaying network asset one-time set up: no other scenes yet", buf, 2u);
    }
  }
}

void re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(void *a1, uint64_t *a2)
{
  v3 = a1[3];
  v4 = *a2;
  v7 = v4;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  (*(*a1 + 24))(a1, v3, &v7);
  v6 = a1[3];
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((a1 + 1), &v7);
  (*(*a1 + 48))(a1, v6, &v7);
  if (v7)
  {
  }
}

BOOL re::NetworkAssetManager::shareAsset(re::NetworkAssetManager *a1, unint64_t a2, uint64_t *a3, const char **a4, char a5, uint64_t a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v12 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, a2);
  if (v12)
  {
    return v12 == 0;
  }

  AssetRootEntity = re::NetworkAssetManager::getOrCreateAssetRootEntity(a1);
  v15 = strlen(*a4);
  v31[1] = 0;
  v32 = 1;
  v33 = 0;
  v34 = 0;
  re::DynamicOverflowArray<char,91ul>::setCapacity(v31, v15 + 28);
  v16 = v32;
  v32 += 2;
  if (v16)
  {
    v17 = &v33;
  }

  else
  {
    v17 = v34;
  }

  if (v16)
  {
    v18 = 91;
  }

  else
  {
    v18 = v33;
  }

  snprintf(v17, v18, "%s Asset:%llu", *a4, a2);
  if (v32)
  {
    v19 = &v33;
  }

  else
  {
    v19 = v34;
  }

  v20 = (*(**(re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 232, 0);
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  *(v20 + 48) = 0u;
  *(v20 + 64) = 0u;
  *(v20 + 80) = 0u;
  *(v20 + 96) = 0u;
  *(v20 + 112) = 0u;
  *(v20 + 128) = 0u;
  *(v20 + 144) = 0u;
  *(v20 + 160) = 0u;
  *(v20 + 176) = 0u;
  *(v20 + 192) = 0u;
  *(v20 + 208) = 0u;
  *(v20 + 224) = 0;
  ArcSharedObject::ArcSharedObject(v20, 0);
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *v21 = &unk_1F5CB8088;
  *(v21 + 56) = 0u;
  *(v21 + 40) = 0u;
  v22 = (v21 + 40);
  re::DynamicString::setCapacity(v22, 0);
  *(v20 + 96) = 0;
  *(v20 + 88) = 0;
  *(v20 + 72) = 0u;
  *(v20 + 104) = 0u;
  *(v20 + 120) = 0u;
  *(v20 + 132) = 0u;
  *(v20 + 148) = 0x7FFFFFFFLL;
  *(v20 + 160) = 0;
  *(v20 + 168) = 0u;
  *(v20 + 184) = 0u;
  *(v20 + 200) = 0;
  *(v20 + 204) = 0x7FFFFFFFLL;
  *(v20 + 216) = 0;
  *(v20 + 32) = a2;
  v23 = *a4;
  v24 = strlen(v23);
  v30[0] = v23;
  v30[1] = v24;
  re::DynamicString::operator=(v22, v30);
  re::DynamicArray<re::AssetLoadDescriptor>::operator=(v20 + 72, a3);
  *(v20 + 160) = a5;
  if ((*(v20 + 216) & 1) == 0)
  {
    if ((*a6 & 1) == 0)
    {
      goto LABEL_18;
    }

    *(v20 + 216) = 1;
LABEL_17:
    *(v20 + 224) = *(a6 + 8);
    goto LABEL_18;
  }

  if (*a6)
  {
    goto LABEL_17;
  }

  *(v20 + 216) = 0;
LABEL_18:
  v25 = v29;
  v26 = re::ecs2::EntityComponentCollection::add((v29 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v28 = v20;
  v27 = (v20 + 8);
  re::ecs2::EntityComponentCollection::add(v25 + 48, &v28, 1);
  if (v28)
  {

    v28 = 0;
  }

  re::ecs2::NetworkComponent::markDirty(v26, v20);
  (*(*a1 + 136))(a1, a2, a3, v25);

  if (v25)
  {
  }

  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))();
  }

  return v12 == 0;
}

void anonymous namespace::makeAssetEntity(_anonymous_namespace_ *this, const char *a2, re::ecs2::Entity *a3)
{
  v6 = re::ecs2::EntityFactory::instance(this);
  v7 = re::ecs2::EntityFactory::make(this, v6, 4uLL);
  v8 = *this;
  *(v8 + 304) |= 0x1400u;
  v10 = 0;
  v11 = &str_67;
  v9 = re::StringID::operator=((v8 + 288), &v10);
  if (v10)
  {
    if (v10)
    {
    }
  }

  re::ecs2::Entity::setParentInternal(v8, a3, 0xFFFFFFFFFFFFFFFFLL);
}

uint64_t re::DynamicArray<re::AssetLoadDescriptor>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::AssetLoadDescriptor>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::AssetLoadDescriptor>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::AssetLoadDescriptor>::copy(a1, a2);
    }
  }

  return a1;
}

BOOL re::NetworkAssetManager::preloadAsset(uint64_t a1, re::AssetHandle *this, __int16 ***a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = re::AssetHandle::assetInfo(this);
  v7 = *(v6 + 10);
  if (v7 + 1 <= 1)
  {
    v8 = *re::assetsLogObjects(v6);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *__str = 0;
    v10 = "Will not preload asset with assetID: 0.";
    v11 = v8;
    v12 = 2;
    goto LABEL_41;
  }

  if (!a3[1])
  {
    v35 = *re::assetsLogObjects(v6);
    result = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v36 = *(re::AssetHandle::assetInfo(this) + 10);
    if (v36 == -1)
    {
      v36 = 0;
    }

    v37 = **(*(this + 1) + 280);
    *__str = 134218242;
    v48 = v36;
    v49 = 2080;
    v50 = v37;
    v10 = "Will not preload assetId:%llu, asset type: %s, because there are 0 peerIDs.";
LABEL_40:
    v11 = v35;
    v12 = 22;
LABEL_41:
    _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, v10, __str, v12);
    return 0;
  }

  v13 = re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, v7);
  if (!v13)
  {
    v35 = *re::assetsLogObjects(0);
    result = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v38 = *(re::AssetHandle::assetInfo(this) + 10);
    if (v38 == -1)
    {
      v38 = 0;
    }

    v39 = **(*(this + 1) + 280);
    *__str = 134218242;
    v48 = v38;
    v49 = 2080;
    v50 = v39;
    v10 = "Failed to preload assetId:%llu, asset type: %s, because there is no assetEntityHandle.";
    goto LABEL_40;
  }

  v14 = *(a1 + 8);
  if (!v14)
  {
    v35 = *re::assetsLogObjects(v13);
    result = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v40 = *(re::AssetHandle::assetInfo(this) + 10);
    if (v40 == -1)
    {
      v40 = 0;
    }

    v41 = **(*(this + 1) + 280);
    *__str = 134218242;
    v48 = v40;
    v49 = 2080;
    v50 = v41;
    v10 = "Failed to preload assetId:%llu, asset type: %s, because there is no ECS Service.";
    goto LABEL_40;
  }

  v15 = re::ecs2::EntityHandle::resolve(v13, v14);
  if (!v15)
  {
    v35 = *re::assetsLogObjects(0);
    result = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v42 = *(re::AssetHandle::assetInfo(this) + 10);
    if (v42 == -1)
    {
      v42 = 0;
    }

    v43 = **(*(this + 1) + 280);
    *__str = 134218242;
    v48 = v42;
    v49 = 2080;
    v50 = v43;
    v10 = "Failed to preload assetId:%llu, asset type: %s, because there is no Asset Entity.";
    goto LABEL_40;
  }

  v16 = v15;
  v17 = *(v15 + 43);
  if (v17)
  {
    v18 = *(v15 + 45);
    v19 = 8 * v17;
    do
    {
      v20 = *v18;
      if (*v18)
      {
        v21 = (v20 + 8);
        v22 = re::ecs2::EntityComponentCollection::get((v20 + 48), re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);

        if (v22)
        {
          return 0;
        }
      }

      else if (re::ecs2::EntityComponentCollection::get(0x30, re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
      {
        return 0;
      }

      ++v18;
      v19 -= 8;
    }

    while (v19);
  }

  if (snprintf(__str, 0x34uLL, "AssetPreload for Asset:%llu", v7) >= 0x34)
  {
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) buffer is not big enough", "snprintfRes < bufferSize", "preloadAsset", 397);
    _os_crash("assertion failure: (snprintfRes < bufferSize) buffer is not big enough");
    __break(1u);
  }

  v24 = (*(**(re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 56, 0);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0;
  ArcSharedObject::ArcSharedObject(v24, 0);
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *v25 = &unk_1F5CB8110;
  *(v25 + 40) = 0;
  *(v25 + 48) = 0;
  *(v25 + 32) = 0;
  v26 = v46;
  v45 = v25;
  v27 = (v25 + 8);
  re::ecs2::EntityComponentCollection::add(v26 + 48, &v45, 1);
  if (v45)
  {

    v45 = 0;
  }

  v28 = re::ecs2::EntityComponentCollection::add((v26 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::ecs2::NetworkComponent::setNetworkShareMode(v28, 0, v29, v30);
  v44[0] = 0x300000001;
  v31 = a3[1];
  if (v31)
  {
    v32 = *a3;
    v33 = 8 * v31;
    do
    {
      v34 = *v32++;
      re::ecs2::SyncAccessControl::addEntry(v44, v34, 0);
      v33 -= 8;
    }

    while (v33);
  }

  re::ecs2::NetworkComponent::setAccessControl(v28, v44);
  re::ecs2::NetworkComponent::markDirty(v28, v24);
  re::ecs2::SyncAccessControl::~SyncAccessControl(v44);

  if (v26)
  {
  }

  return 1;
}