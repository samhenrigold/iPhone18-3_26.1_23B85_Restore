uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::beginString(uint64_t a1, char *__dst)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderBinary<re::SeekableInputStream>::beginString((*(a1 + 8) + 24), *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), __dst, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::operator>>(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "BOOL", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "char", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "int8", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "uint8", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "int16", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "uint16", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "int32", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "uint32", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "int64", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "uint64", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "float", 0);
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

  return re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, "double", 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::operator>>(uint64_t a1, uint64_t *a2)
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

  result = re::EncoderBinary<re::SeekableInputStream>::serializeValue<long long>(*(a1 + 8) + 24, *(v3 + 16 * *(a1 + 40) - 16), *(v3 + 16 * *(a1 + 40) - 8), &v5, "uint64", 0);
  *a2 = v5;
  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::deserializeString(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    re::EncoderBinary<re::SeekableInputStream>::serializeString(*(a1 + 8) + 24, a2, 0);
  }

  v4 = (*(a1 + 8) + 24);

  return re::EncoderBinary<re::SeekableInputStream>::endString(v4);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::deserializeData(uint64_t a1, char *a2)
{
  re::EncoderBinary<re::SeekableInputStream>::serializeBLOB(*(a1 + 8) + 24, a2, 0);
  v3 = (*(a1 + 8) + 24);

  return re::EncoderBinary<re::SeekableInputStream>::endBLOB(v3);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  re::EncoderBinary<re::SeekableInputStream>::beginPointer((*(a1 + 8) + 24), *(v6 + 16 * *(a1 + 40) - 16), *(v6 + 16 * *(a1 + 40) - 8), &v8, 0);
  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
  return re::EncoderBinary<re::SeekableInputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderBinary<re::SeekableInputStream>>>::read(uint64_t a1, uint64_t a2, re **this)
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

uint64_t re::EncoderBinary<re::SeekableInputStream>::beginBLOB(_anonymous_namespace_ *a1, uint64_t a2, int a3, char *__dst, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
  }

  else
  {
    v21 = v5;
    v22 = v6;
    if ((a5 & 4) == 0 && (re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, __dst, 4uLL) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, "length", "uint32");
    }

    v12 = *__dst;
    v14[0] = 4;
    v15 = a5;
    v16 = a2;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v18 = v12;
    re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v14);
    v7 = *(a1 + 40) ^ 1;
  }

  return v7 & 1;
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::serializeBLOB(uint64_t result, char *a2, char a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v4 = result;
    v5 = *(result + 128) + 48 * *(result + 112);
    v6 = *(v5 - 24);
    if (a3)
    {
      a2 = 0;
    }

    result = re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(result, a2, *(v5 - 24));
    if (result)
    {
      if ((a3 & 2) == 0)
      {
        v7 = *(v4 + 16) + 48 * *(v4 + 14);
        *(v7 - 16) += v6;
      }
    }

    else
    {

      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v4, 0, "BLOB");
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderBinary<re::SeekableInputStream>::endBLOB(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 4);
      v2 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v2 - 16);
    }

    else
    {
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(result, 0, &v6);
      if (v7)
      {
        v4 = *&v8[7];
      }

      else
      {
        v4 = v8;
      }

      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(v9, "Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v3, v4, *(v5 - 24), *(v5 - 16));
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, v9);
      if (*&v9[0])
      {
        if (BYTE8(v9[0]))
        {
          (*(**&v9[0] + 40))();
        }

        memset(v9, 0, sizeof(v9));
      }

      result = v6;
      if (v6)
      {
        if (v7)
        {
          return (*(*v6 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderBinary<re::SeekableInputStream>::beginPointer(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, int *a4, int a5)
{
  if (*(a1 + 40))
  {
    v7 = 0;
    return v7 & 1;
  }

  v25 = v5;
  v26 = v6;
  v24 = 78;
  if ((re::Encoder<re::EncoderOPACK<re::FixedArrayInputStream>,re::FixedArrayInputStream>::process<re::FixedArrayInputStream,0>(a1, &v24, 1uLL) & 1) == 0)
  {
    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "uint8");
  }

  switch(v24)
  {
    case 'I':
      v12 = 2;
      goto LABEL_11;
    case 'N':
      v12 = 0;
      v13 = 0;
LABEL_12:
      *a4 = v12;
      LOBYTE(v17) = 9;
      DWORD1(v17) = a5;
      *(&v17 + 1) = a2;
      *&v18 = 0;
      v19 = 0;
      v20 = 0;
      *(&v18 + 1) = v13;
      re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::pushState(a1, &v17);
      v7 = *(a1 + 40) ^ 1;
      return v7 & 1;
    case 'R':
      v12 = 1;
LABEL_11:
      v13 = 1;
      goto LABEL_12;
  }

  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::combineLabels(a1, 0, &v21);
  if (v22)
  {
    v15 = *&v23[7];
  }

  else
  {
    v15 = v23;
  }

  re::DynamicString::format(&v17, "Failed to deserialize pointer %s. Invalid tag.", v14, v15);
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v17);
  if (v17)
  {
    if (BYTE8(v17))
    {
      (*(*v17 + 40))();
    }

    v17 = 0u;
    v18 = 0u;
  }

  if (v21 && (v22 & 1) != 0)
  {
    (*(*v21 + 40))();
  }

  v7 = 0;
  return v7 & 1;
}

_anonymous_namespace_ *re::EncoderBinary<re::SeekableInputStream>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == *(*(result + 16) + 48 * *(result + 14) - 24))
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 9);
      v2 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v2 - 16);
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

      re::DynamicString::format(v8, "Failed to deserialize pointer %s. No value was provided.", v3, v4);
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
      if (v5)
      {
        if (v6)
        {
          return (*(*v5 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderBinary<re::SeekableInputStream>>(_BYTE *a1, uint64_t a2, re::TypeInfo *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), &v21);
  if (v21 == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), &v23), v23 == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, v18, a4);
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
                goto LABEL_21;
              }
            }

            if ((a1[64] & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, *(v14 - 1), v11, a2 + v12, v15, v15, a4);
            }
          }
        }
      }

LABEL_21:
      ;
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderBinary<re::SeekableInputStream>>(_BYTE *a1, uint64_t a2, re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), &v44);
  re::TypeRegistry::typeInfo(*a4, *(*(a4 + 2) + 80), &v40);
  if (v40 == 1)
  {
    if ((v44 & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v41)[1];
      v12 = re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Base class %s removed from type %s.", v11, v12[1]);
    }

    if (v45 == v41)
    {
      v14 = *v47;
      v15 = *v43;
      if (*v47 == *v43)
      {
        v17 = WORD1(v14) == WORD1(v15);
        v16 = (v15 ^ v14) & 0xFFFFFF00000000;
        v17 = v17 && v16 == 0;
        if (v17)
        {
          goto LABEL_5;
        }
      }
    }

    else if (re::areSameTranslatedVersion(&v45, &v41, v10))
    {
LABEL_5:
      re::internal::serializeMembersWithoutVersioning<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, &v45, a5);
      goto LABEL_15;
    }

    if (v46 == v42)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, &v45, &v41, a5);
    }

    else
    {
      v18 = re::TypeInfo::name(&v45)[1];
      v19 = re::TypeInfo::name(&v41);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v18, v19[1]);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v39, *a3, *(a3 + 2));
  result = re::TypeMemberCollection::TypeMemberCollection(v37, *a4, *(a4 + 2));
  if (v38)
  {
    for (i = 0; i < v38; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v37, i, v35);
      if (*(v36 + 28) == 1)
      {
        v21 = *(v36 + 16);
        if (strlen(v21) >= 3 && *v21 == 109)
        {
          v21 += 2 * (*(v21 + 1) == 95);
        }

        v22 = *(v36 + 32);
        v23 = *(*a4 + 856);
        if (!v23 || (v23 = re::internal::TypeTranslationTable::translateMember(v23, v35), v23 == -1))
        {
          v27 = *re::foundationSerializationLogObjects(v23);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v49 = v28;
            v50 = 2080;
            v51 = v21;
            _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v29 = *(a1 + 24);
          re::TypeRegistry::typeInfo(v35[0], *v36, buf);
          re::TypeInfo::TypeInfo(v33, &v49 + 4);
          result = re::internal::translateType(buf, v29, v33);
          if ((a1[64] & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v39, v23, v33);
          v24 = *(v34 + 24);
          re::TypeRegistry::typeInfo(v33[0], *v34, buf);
          re::TypeInfo::TypeInfo(v32, &v49 + 4);
          re::TypeRegistry::typeInfo(v35[0], *v36, buf);
          re::TypeInfo::TypeInfo(v31, &v49 + 4);
          if (a1[64] == 1 || (result = (*(*a1 + 72))(a1, v21, v22, a2 + v24, v32, v31, a5), (result & 1) == 0))
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
                  goto LABEL_35;
                }
              }

              v30 = *(v26 - 1);
              re::TypeRegistry::typeInfo(v33[0], *v34, buf);
              re::TypeInfo::TypeInfo(v32, &v49 + 4);
              re::TypeRegistry::typeInfo(v35[0], *v36, buf);
              result = re::TypeInfo::TypeInfo(v31, &v49 + 4);
              if ((a1[64] & 1) == 0)
              {
                result = (*(*a1 + 72))(a1, v30, v22, a2 + v24, v32, v31, a5);
              }
            }
          }
        }
      }

LABEL_35:
      ;
    }
  }

  return result;
}

void *re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::~SerializerV2(void *a1)
{
  *a1 = off_1F5CBAD70;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));

  return re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(a1);
}

void re::SerializerV2<re::EncoderOPACK<re::SeekableInputStream>>::~SerializerV2(void *a1)
{
  *a1 = off_1F5CBAD70;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(a1 + 50);
  re::DynamicArray<unsigned long>::deinit((a1 + 45));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 39);
  re::DynamicArray<unsigned long>::deinit((a1 + 34));
  re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(void *a1, __n128 a2)
{
  re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, int, int, int, re::TypeInfo *this)
{
  if (*a2 != *(a1 + 208))
  {
    return re::serializeType<re::EncoderOPACK<re::SeekableInputStream>>;
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
    return re::serializeType<re::EncoderOPACK<re::SeekableInputStream>>;
  }
}

uint64_t re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::Encoder(uint64_t result, int a2)
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

      re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::Encoder(int)::s_maxSerializationDepth = v7;
      v2 = &unk_1EE186000;
      result = v8;
    }
  }

  v3 = v2[28];
  if (v3)
  {
    *(result + 152) = v3;
  }

  return result;
}

void *re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5CBADD8;
  v2 = (a1 + 1);
  re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(a1 + 28);
  re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::~Encoder(a1 + 24);
  re::StringID::destroyString(v2);
  return a1;
}

void re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>::deinit(void *a1)
{
  if (a1[26])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 28));
    a1[26] = 0;
  }
}

_BYTE *re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::~Encoder(_BYTE *a1)
{
  re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::close(a1);
  re::DynamicArray<unsigned long>::deinit((a1 + 96));
  if (a1[40] == 1)
  {
    re::DynamicString::deinit((a1 + 64));
  }

  return a1;
}

_anonymous_namespace_ *re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::close(_anonymous_namespace_ *result)
{
  if (*result)
  {
    v1 = result;
    if ((*(result + 40) & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 0);
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

uint64_t re::serializeType<re::EncoderOPACK<re::SeekableInputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, uint64_t a6, uint64_t a7)
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
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, this, a6);
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
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Type name changed: Serialized type %s version %u, runtime type %s version %u.");
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
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Unknown serialized type %s version %u. No matching runtime type found.");
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

        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "%s", v29);
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

        return re::serializeOptional<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }

      else
      {
        if (v22 != 4)
        {
          goto LABEL_59;
        }

        return re::serializeArray<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
      }
    }

    else if (v22 == 1)
    {

      return re::serializeBasic<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v22 != 2)
      {
        goto LABEL_59;
      }

      return re::serializeEnum<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else if (*(this + 12) <= 6u)
  {
    if (v22 == 5)
    {

      return re::serializeList<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }

    else
    {
      if (v22 != 6)
      {
        goto LABEL_59;
      }

      return re::serializeDictionary<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
    }
  }

  else
  {
    switch(v22)
    {
      case 7u:

        return re::serializeUnion<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 8u:

        return re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
      case 9u:
        re::TypeInfo::name(this);
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Pointer type (%s) needs to be handled explicitly by the serializer.");
        return 0;
      default:
LABEL_59:
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Invalid type category. Value = %d");
        return 0;
    }
  }
}

uint64_t re::serializeBasic<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7)
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
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, this, a6);
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

            return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<long long>(a1 + 24, a2, a3, a4, v7);
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

      return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned char>(a1 + 24, a2, a3, a4, v7);
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

        return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned int>(a1 + 24, a2, a3, a4, v7);
      }

      if (v15 == 0x3AFE951B1F1F3391)
      {
LABEL_59:

        return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned short>(a1 + 24, a2, a3, a4, v7);
      }

      if (v15 != 0x412A40E9CB79BA35)
      {
        goto LABEL_74;
      }
    }

LABEL_56:

    return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(a1 + 24, a2, a3, a4, v7);
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

            return re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(a1 + 24, a2, a3, a4, v7);
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

        return re::EncoderOPACK<re::SeekableInputStream>::serializeBool(a1 + 24, a2, a3, a4, v7);
      }

LABEL_74:
      v21 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Unsupported basic type %s.", v21[1]);
      return 0;
    }

LABEL_68:

    return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<int>(a1 + 24, a2, a3, a4, v7);
  }

  if (*v14 >> 1 > 0xB9708BDD)
  {
    if (v15 == 3111160798)
    {
LABEL_62:

      return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(a1 + 24, a2, a3, a4, v7);
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

    return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<short>(a1 + 24, a2, a3, a4, v7);
  }

  if (v15 != 2969009105)
  {
    goto LABEL_74;
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(a1 + 24, a2, a3, a4, v7);
}

uint64_t re::serializeEnum<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t re::serializeOptional<re::EncoderOPACK<re::SeekableInputStream>>(_BYTE *a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
    v20 = 0;
    return v20 & 1;
  }

LABEL_11:
  if (a7)
  {
    v24[0] = 0;
    re::EncoderOPACK<re::SeekableInputStream>::beginOptional((a1 + 24), a2, a3, v24, 0);
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
    re::EncoderOPACK<re::SeekableInputStream>::beginOptional((a1 + 24), a2, a3, &v23, 0);
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

  re::EncoderOPACK<re::SeekableInputStream>::endOptional((a1 + 24));
  v20 = a1[64] ^ 1;
  return v20 & 1;
}

uint64_t re::serializeArray<re::EncoderOPACK<re::SeekableInputStream>>(void *a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
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
        if (re::EncoderOPACK<re::SeekableInputStream>::beginBLOB((a1 + 3), a2, a3, &v54, 0))
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
              re::EncoderOPACK<re::SeekableInputStream>::serializeBLOB(v34, v33, v35);
            }

LABEL_48:
            re::EncoderOPACK<re::SeekableInputStream>::endBLOB((a1 + 3));
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
          re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 3));
          goto LABEL_67;
        }
      }

LABEL_71:
      v46 = 0;
      return v46 & 1;
    }

LABEL_23:
    v36 = re::TypeInfo::name(&v58);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v36[1]);
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

    if (re::EncoderOPACK<re::SeekableInputStream>::beginArray((a1 + 3), a2, a3, &v61, v47))
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
  v45 = re::EncoderOPACK<re::SeekableInputStream>::beginBLOB((a1 + 3), a2, a3, v57, 0);
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

uint64_t re::serializeList<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
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
      if (re::EncoderOPACK<re::SeekableInputStream>::beginBLOB(a1 + 24, a2, a3, v41, 0))
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
          re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError((a1 + 24), a2, "BLOB size mismatch: BLOB is %zu bytes, but list only accomodates %zu bytes (%zu elements * %zu bytes/element)", v41[0], v41[0] / v30 * v30, v41[0] / v30, v30);
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
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "List type %s does not provide an indexer or iterator.");
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
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s");
    goto LABEL_52;
  }

  v47 = 0;
  if (v45 != 1)
  {
    v33 = v19;
    v34 = re::EncoderOPACK<re::SeekableInputStream>::beginArray(a1 + 24, a2, a3, &v47, 0);
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
    re::EncoderOPACK<re::SeekableInputStream>::endArray((a1 + 24));
    goto LABEL_43;
  }

  v43[0] = 0;
  v20 = re::EncoderOPACK<re::SeekableInputStream>::beginBLOB(a1 + 24, a2, a3, v43, 0);
  v21 = 0;
  if (v20)
  {
    if (!v43[0])
    {
LABEL_18:
      re::EncoderOPACK<re::SeekableInputStream>::endBLOB((a1 + 24));
LABEL_43:
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_17:
    re::EncoderOPACK<re::SeekableInputStream>::serializeBLOB(v22, v23, v24);
    goto LABEL_18;
  }

  return v21 & 1;
}

uint64_t re::serializeDictionary<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
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
        v31 = re::EncoderOPACK<re::SeekableInputStream>::beginDictionary(a1 + 24, a2, a3, &v41, 0);
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
              re::EncoderOPACK<re::SeekableInputStream>::endDictionaryEntry((a1 + 24));
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
        re::EncoderOPACK<re::SeekableInputStream>::endDictionary((a1 + 24));
        v25 = *(a1 + 64) ^ 1;
        return v25 & 1;
      }

      goto LABEL_35;
    }

LABEL_33:
    v38 = v47;
LABEL_36:
    v39 = re::TypeInfo::name(v38);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v39[1]);
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
  v24 = re::EncoderOPACK<re::SeekableInputStream>::beginDictionary(a1 + 24, a2, a3, v45, 0);
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
        re::EncoderOPACK<re::SeekableInputStream>::endDictionaryEntry((a1 + 24));
        ++v26;
      }

      while (v26 < *v45);
    }

    goto LABEL_32;
  }

  return v25 & 1;
}

uint64_t re::serializeUnion<re::EncoderOPACK<re::SeekableInputStream>>(re::Allocator **a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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
      re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
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
  v14 = re::EncoderOPACK<re::SeekableInputStream>::beginObject((a1 + 3), a2, a3, 16);
  if (!a7)
  {
    if (v14)
    {
      re::TypeInfo::TypeInfo(v23, a5);
      Tag = re::UnionAccessor::readTag(v23, a4);
      re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>((a1 + 3), "tag", 0, &Tag, 0);
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
  re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>((a1 + 3), "tag", 0, v21, 0);
  if (v21[0] < *(*(a6 + 2) + 96))
  {
    re::TypeInfo::unionMember(v23, a6, v21[0]);
    if ((a1[8] & 1) == 0)
    {
      (*(*a1 + 9))(a1, "value", 0, 0, v23, v23, 1);
    }
  }

LABEL_13:
  re::EncoderOPACK<re::SeekableInputStream>::endObject((a1 + 3));
  v15 = *(a1 + 64) ^ 1;
  return v15 & 1;
}

uint64_t re::serializeObject<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re::TypeInfo *this, re::TypeInfo *a6, uint64_t a7)
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

    re::serializeDynamicString<re::EncoderOPACK<re::SeekableInputStream>>(v29, v30, v31, 0, v27, v28, 1);
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
      v39 = &unk_1F5CBAE40;
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
      v39 = &unk_1F5CBAE40;
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
    v23 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(a1 + 24, a2, a3, 0);
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
      re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a4, this, a7);
LABEL_35:
      re::EncoderOPACK<re::SeekableInputStream>::endObject(a1 + 24);
      goto LABEL_36;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a4, this, a6, a7);
    }

    else
    {
      v37 = re::TypeInfo::name(this)[1];
      v38 = re::TypeInfo::name(a6);
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v37, v38[1]);
    }

    goto LABEL_35;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeBool(uint64_t a1, const char *a2, uint64_t a3, _BYTE *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19[5] = v5;
  v19[6] = v6;
  v19[0] = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v19, 0);
  if (result)
  {
    __dst = 0;
    if (*(a1 + 40))
    {
LABEL_5:
      for (i = v19[0]; i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Boolean");
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v26[5] = v5;
  v26[6] = v6;
  v26[0] = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v26, 0);
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
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Float");
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
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v26[5] = v5;
  v26[6] = v6;
  v26[0] = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v26, 0);
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
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Double");
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
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::advance(uint64_t a1, const char *a2, int a3, void *a4, _DWORD *a5)
{
  v9 = *(*(a1 + 128) + 48 * *(a1 + 112) - 48);
  if (v9 == 2)
  {
    if (re::EncoderOPACK<re::SeekableInputStream>::advance_KeyedContainer(a1, a2, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v9 == 1 && !re::EncoderOPACK<re::SeekableInputStream>::advance_UnkeyedContainer(a1, a2))
  {
    return 0;
  }

LABEL_4:

  return re::EncoderOPACK<re::SeekableInputStream>::evaluateConditional(a1, a2, a5, a4);
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readTag(uint64_t a1, const char *a2, char *__dst, uint64_t a4)
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

    re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, a4);
  }

  return 0;
}

BOOL re::EncoderOPACK<re::SeekableInputStream>::advance_UnkeyedContainer(uint64_t a1, const char *a2)
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
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Array element or terminator");
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::advance_KeyedContainer(uint64_t a1, const char *a2, int a3)
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
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, v32);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::evaluateConditional(uint64_t a1, const char *a2, _DWORD *a3, void *a4)
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
          re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Small String");
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
        v4 = re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<int>(a1, a2, &v50);
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

        re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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
  re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, v26);
  return 0;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::skipObject(uint64_t result)
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
      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v8, "unknown", v7);
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
    return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v8, "unknown", v7);
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
      re::EncoderOPACK<re::SeekableInputStream>::readStringTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::SeekableInputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
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
      re::EncoderOPACK<re::SeekableInputStream>::readDataTag(v1, "unknown", __n);
      return re::EncoderOPACK<re::SeekableInputStream>::readRaw(v1, "unknown", 0, __n[0], v5, 1);
    }

    if (__dst - 160 >= 0x21)
    {
      if (__dst - 208 > 0xE)
      {
        if (__dst == 223)
        {
          result = re::EncoderOPACK<re::SeekableInputStream>::readTag(v1, "unknown", &__dst, "Array value/terminator");
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

              re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
              result = re::EncoderOPACK<re::SeekableInputStream>::readTag(v1, "unknown", &__dst, "Array value/terminator");
            }

            while ((result & 1) != 0);
          }
        }

        else if (__dst - 224 > 0xE)
        {
          if (__dst == 239)
          {
            for (result = re::EncoderOPACK<re::SeekableInputStream>::readTag(v1, "unknown", &__dst, "Dictionary key/value/terminator"); result; result = re::EncoderOPACK<re::SeekableInputStream>::readTag(v1, "unknown", &__dst, "Dictionary key/value/terminator"))
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
                re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
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
          result = re::EncoderOPACK<re::SeekableInputStream>::readDictionaryTag(v1, "unknown", __n);
          if (2 * __n[0])
          {
            v26 = -2 * __n[0];
            do
            {
              result = re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
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
        result = re::EncoderOPACK<re::SeekableInputStream>::readArrayTag(v1, "unknown", __n);
        for (i = __n[0]; i; result = re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1))
        {
          --i;
        }
      }
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readRaw(uint64_t a1, const char *a2, _BYTE *a3, size_t __n, uint64_t a5, char a6)
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

  re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, a5);
  return 0;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readStringTag(uint64_t result, const char *a2, uint64_t *a3)
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
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
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

          return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
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

      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
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
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
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
      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "String");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readDataTag(uint64_t result, const char *a2, uint64_t *a3)
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
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
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

          return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
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

      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
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
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
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
      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "BLOB");
    }

LABEL_59:
    v8 = v32;
    goto LABEL_8;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readArrayTag(uint64_t result, const char *a2, char *__dst)
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
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "Array");
      }

      result = __dsta;
    }

    if ((result + 48) > 0xEu)
    {
      if (result == 223)
      {
        return re::EncoderOPACK<re::SeekableInputStream>::readUint64(v5, a2, __dst);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readDictionaryTag(uint64_t result, const char *a2, char *__dst)
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
        return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "Dictionary");
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

    result = re::EncoderOPACK<re::SeekableInputStream>::readUint64(v5, a2, __dst);
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

      return re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v5, a2, "Dictionary");
    }
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readUint64(uint64_t a1, const char *a2, char *__dst)
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
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "UInt64");
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
    if (re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, v20, "Int64"))
    {
      *__dst = v20[0];
      return 1;
    }
  }

  return 0;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readInteger(uint64_t a1, const char *a2, char *__dst, const char *a4)
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
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v25, v26, v27);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<int>(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int32");
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
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

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<signed char>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<signed char>(_anonymous_namespace_ *a1, const char *a2, _BYTE *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int8");
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<short>(uint64_t a1, const char *a2, uint64_t a3, __int16 *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
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

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<short>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<short>(_anonymous_namespace_ *a1, const char *a2, _WORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int16");
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<int>(uint64_t a1, const char *a2, uint64_t a3, int *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
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

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<int>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<long long>(uint64_t a1, const char *a2, uint64_t a3, void *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v13 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v13, 0);
  if (v5)
  {
    if (a5)
    {
      __dst = 0;
      re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int64");
    }

    else
    {
      __dst = 0;
      if (re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "Int64"))
      {
        *a4 = __dst;
      }
    }

    for (i = v13; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned char>(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
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

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned char>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned char>(_anonymous_namespace_ *a1, const char *a2, _BYTE *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "UInt8");
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned short>(uint64_t a1, const char *a2, uint64_t a3, __int16 *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
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

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned short>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned short>(_anonymous_namespace_ *a1, const char *a2, _WORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "UInt16");
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned int>(uint64_t a1, const char *a2, uint64_t a3, int *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
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

    re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned int>(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::readIntegerAs<unsigned int>(_anonymous_namespace_ *a1, const char *a2, _DWORD *a3)
{
  __dst = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::readInteger(a1, a2, &__dst, "UInt32");
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(uint64_t a1, const char *a2, uint64_t a3, char *a4, char a5)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = 0;
  v5 = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, &v17, 0);
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

    re::EncoderOPACK<re::SeekableInputStream>::readUint64(v10, v11, v12);
    for (i = v17; i; --i)
    {
      re::EncoderOPACK<re::SeekableInputStream>::skipObject(a1);
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

uint64_t re::internal::serializeEnumAsBinary<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, void *a4, re::internal *a5, const re::TypeInfo *a6, int a7)
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
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Value %zu is not a valid enum constant of %s.");
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
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Serialized enum constant %s does not exist in runtime type %s.");
    }
  }

  else
  {
    re::TypeInfo::name(v33);
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "Enum type %s has invalid size: %zu bytes.");
  }

  return 0;
}

void re::EncoderOPACK<re::SeekableInputStream>::beginOptional(uint64_t result, const char *a2, uint64_t a3, _BYTE *a4, int a5)
{
  if ((*(result + 40) & 1) == 0)
  {
    v19 = 0;
    if ((re::EncoderOPACK<re::SeekableInputStream>::advance(result, a2, a3, &v19, 0) & 1) == 0)
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
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(result, a2, "Optional");
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

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 3);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginBLOB(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, int a5)
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
    if (re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v21, 0))
    {
      re::EncoderOPACK<re::SeekableInputStream>::readDataTag(a1, a2, a4);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeBLOB(uint64_t result, char *a2, char a3)
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
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v4, 0, "BLOB");
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

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endBLOB(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 4);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginArray(uint64_t a1, const char *a2, uint64_t a3, char *a4, int a5)
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
    if (re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v21, 0))
    {
      re::EncoderOPACK<re::SeekableInputStream>::readArrayTag(a1, a2, a4);
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

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endArray(_anonymous_namespace_ *result)
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
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 5);
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
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v1, 0, "Array");
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

BOOL re::anonymous namespace::resizeArray<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, void ***a2, re::ArrayAccessor *a3, const re::TypeInfo *a4, const re::TypeInfo *a5)
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
      re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", *(v15 + 8), a5);
    }

    return !v13;
  }

  else
  {
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Invalid array size. Expected size = %zu, actual size = %zu", a4, a5);
    return 0;
  }
}

uint64_t *re::Encoder<re::EncoderOPACK<re::SeekableInputStream>,re::SeekableInputStream>::setError(_anonymous_namespace_ *a1, const char *a2, const char *a3, ...)
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

BOOL re::anonymous namespace::resizeList<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>(uint64_t a1, uint64_t a2, const re::TypeInfo *a3, uint64_t a4, unint64_t a5)
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
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Size overflow during deserialization. Element size = %zu, count = %zu", *(v16 + 8), a5);
  }

  return !v12;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginDictionary(uint64_t a1, const char *a2, uint64_t a3, char *a4, int a5)
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
    if (re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v21, 0))
    {
      re::EncoderOPACK<re::SeekableInputStream>::readDictionaryTag(a1, a2, a4);
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

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    if (*(*(result + 16) + 48 * *(result + 14) - 16) == 2)
    {
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(result, 7);
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

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endDictionary(_anonymous_namespace_ *result)
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
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 6);
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
        re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v1, 0, "Dictionary");
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginObject(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v22[5] = v4;
  v22[6] = v5;
  v22[0] = 0;
  result = re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v22, 0);
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

      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Object");
    }

    return 0;
  }

  return result;
}

uint64_t re::EncoderOPACK<re::SeekableInputStream>::endObject(uint64_t result)
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

      result = re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      if (*(v1 + 40) != 1)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v1, 0, "Object");
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
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      while (v9);
      v7 = *(v1 + 128);
      v8 = *(v1 + 112);
    }

    result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, *(v7 + 48 * v8 - 48));
    v10 = *(v1 + 128) + 48 * *(v1 + 112);
    if (*(v10 - 48) != 2)
    {
      ++*(v10 - 16);
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderOPACK<re::SeekableInputStream>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, re::DynamicString *a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
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
    v27 = re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, a3, &v33, 0);
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
    re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, a2, "String size greater than stream size during deserialization. String length = %zu, Stream length = %zu", v29, v30);
LABEL_24:
    v21 = 0;
    return v21 & 1;
  }

  v33 = 0;
  v20 = re::EncoderOPACK<re::SeekableInputStream>::beginString(a1 + 24, a2, a3, &v33, 0);
  v21 = 0;
  if (v20)
  {
    if (!v33)
    {
LABEL_33:
      re::EncoderOPACK<re::SeekableInputStream>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

    v22 = a1 + 24;
    v23 = 0;
    v24 = 1;
LABEL_32:
    re::EncoderOPACK<re::SeekableInputStream>::serializeString(v22, v23, v24);
    goto LABEL_33;
  }

  return v21 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CBAE40;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

uint64_t re::internal::serializeObjectWithOneMember<re::EncoderOPACK<re::SeekableInputStream>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, re *a5, re *a6, uint64_t a7)
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
    re::internal::setTypeMismatchError<re::EncoderBinary<re::SeekableInputStream>>(a1, a2, a5, a6);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginString(uint64_t a1, const char *a2, uint64_t a3, uint64_t *a4, int a5)
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
    if (re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v21, 0))
    {
      re::EncoderOPACK<re::SeekableInputStream>::readStringTag(a1, a2, a4);
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::serializeString(uint64_t result, char *a2, char a3)
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
      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(v4, 0, "String");
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

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 8);
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

void re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5CBAE40;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginObject(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = re::EncoderOPACK<re::SeekableInputStream>::beginObject(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), 0);
  if (v3)
  {
    v5.n128_u64[0] = "";
    v5.n128_u32[2] = 0;
    re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>>::CommonContext,4ul>::add(a1 + 32, &v5);
  }

  return v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::endObject(uint64_t a1)
{
  v1 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v1 + 2;
  return re::EncoderOPACK<re::SeekableInputStream>::endObject(*(a1 + 8) + 24);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginArray(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::beginArray(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderOPACK<re::SeekableInputStream>::endArray((*(a1 + 8) + 24));
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginDictionary(uint64_t a1, char *a2)
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

  re::EncoderOPACK<re::SeekableInputStream>::beginDictionary(*(a1 + 8) + 24, *(v5 + 16 * *(a1 + 40) - 16), *(v5 + 16 * *(a1 + 40) - 8), a2, 0);
  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginDictionaryEntry(uint64_t a1)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginDictionaryValue(uint64_t result)
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

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::endDictionary(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    re::EncoderOPACK<re::SeekableInputStream>::endDictionary((*(a1 + 8) + 24));
    v4 = *(a1 + 48);
    --*(a1 + 40);
    *(a1 + 48) = v4 + 2;
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginData(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::beginBLOB(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginOptional(uint64_t a1)
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

  re::EncoderOPACK<re::SeekableInputStream>::beginOptional(*(a1 + 8) + 24, *(v1 + 16 * *(a1 + 40) - 16), *(v1 + 16 * *(a1 + 40) - 8), &v3, 0);
  return v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::beginString(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::beginString(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeBool(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, char *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
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

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<signed char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
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

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned char>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
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

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
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

  return re::EncoderOPACK<re::SeekableInputStream>::serializeFloat(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
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

  return re::EncoderOPACK<re::SeekableInputStream>::serializeDouble(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, __int16 *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
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

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned short>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, int *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
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

  return re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned int>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, uint64_t *a2)
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

  result = re::EncoderOPACK<re::SeekableInputStream>::serializeUnsignedInteger<unsigned long long>(*(a1 + 8) + 24, *(v3 + 16 * *(a1 + 40) - 16), *(v3 + 16 * *(a1 + 40) - 8), &v5, 0);
  *a2 = v5;
  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::operator>>(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderOPACK<re::SeekableInputStream>::serializeSignedInteger<long long>(*(a1 + 8) + 24, *(v2 + 16 * *(a1 + 40) - 16), *(v2 + 16 * *(a1 + 40) - 8), a2, 0);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::deserializeString(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3)
  {
    re::EncoderOPACK<re::SeekableInputStream>::serializeString(*(a1 + 8) + 24, a2, 0);
  }

  v4 = (*(a1 + 8) + 24);

  return re::EncoderOPACK<re::SeekableInputStream>::endString(v4);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::deserializeData(uint64_t a1, char *a2)
{
  re::EncoderOPACK<re::SeekableInputStream>::serializeBLOB(*(a1 + 8) + 24, a2, 0);
  v3 = (*(a1 + 8) + 24);

  return re::EncoderOPACK<re::SeekableInputStream>::endBLOB(v3);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  re::EncoderOPACK<re::SeekableInputStream>::beginPointer(*(a1 + 8) + 24, *(v6 + 16 * *(a1 + 40) - 16), *(v6 + 16 * *(a1 + 40) - 8), &v8, 0);
  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
  return re::EncoderOPACK<re::SeekableInputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderOPACK<re::SeekableInputStream>>>::read(uint64_t a1, uint64_t a2, re **this)
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

uint64_t re::EncoderOPACK<re::SeekableInputStream>::beginPointer(uint64_t a1, const char *a2, uint64_t a3, int *a4, int a5)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v26[5] = v5;
    v26[6] = v6;
    v26[0] = 0;
    if (!re::EncoderOPACK<re::SeekableInputStream>::advance(a1, a2, a3, v26, 0))
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

      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::setErrorWithType(a1, a2, "Optional");
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

_anonymous_namespace_ *re::EncoderOPACK<re::SeekableInputStream>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16) + 48 * *(result + 14);
    if (*(v2 - 16) == *(v2 - 24))
    {
      for (i = *(v2 - 32); i; --i)
      {
        re::EncoderOPACK<re::SeekableInputStream>::skipObject(v1);
      }

      result = re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 9);
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

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::SeekableInputStream>>(_BYTE *a1, uint64_t a2, re::TypeInfo *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), &v21);
  if (v21 == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), &v23), v23 == 1))
    {
      if (re::EncoderOPACK<re::SeekableInputStream>::beginObject((a1 + 24), "@super", 0, 0))
      {
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, v18, a4);
        re::EncoderOPACK<re::SeekableInputStream>::endObject((a1 + 24));
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

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::SeekableInputStream>>(_BYTE *a1, uint64_t a2, re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), &v44);
  re::TypeRegistry::typeInfo(*a4, *(*(a4 + 2) + 80), &v40);
  if (v40 == 1)
  {
    if ((v44 & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v41)[1];
      v12 = re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Base class %s removed from type %s.", v11, v12[1]);
    }

    if (re::EncoderOPACK<re::SeekableInputStream>::beginObject((a1 + 24), "@super", 0, 0))
    {
      if (v45 == v41)
      {
        v14 = *v47;
        v15 = *v43;
        if (*v47 == *v43)
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

      else if (re::areSameTranslatedVersion(&v45, &v41, v10))
      {
LABEL_6:
        re::internal::serializeMembersWithoutVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, &v45, a5);
LABEL_16:
        re::EncoderOPACK<re::SeekableInputStream>::endObject((a1 + 24));
        goto LABEL_17;
      }

      if (v46 == v42)
      {
        re::internal::serializeMembersWithVersioning<re::EncoderOPACK<re::SeekableInputStream>>(a1, a2, &v45, &v41, a5);
      }

      else
      {
        v18 = re::TypeInfo::name(&v45)[1];
        v19 = re::TypeInfo::name(&v41);
        re::Serializer<re::EncoderBinary<re::SeekableInputStream>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v18, v19[1]);
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  re::TypeMemberCollection::TypeMemberCollection(v39, *a3, *(a3 + 2));
  result = re::TypeMemberCollection::TypeMemberCollection(v37, *a4, *(a4 + 2));
  if (v38)
  {
    for (i = 0; i < v38; ++i)
    {
      if (a1[64])
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v37, i, v35);
      if (*(v36 + 28) == 1)
      {
        v21 = *(v36 + 16);
        if (strlen(v21) >= 3 && *v21 == 109)
        {
          v21 += 2 * (*(v21 + 1) == 95);
        }

        v22 = *(v36 + 32);
        v23 = *(*a4 + 856);
        if (!v23 || (v23 = re::internal::TypeTranslationTable::translateMember(v23, v35), v23 == -1))
        {
          v27 = *re::foundationSerializationLogObjects(v23);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v49 = v28;
            v50 = 2080;
            v51 = v21;
            _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v29 = *(a1 + 26);
          re::TypeRegistry::typeInfo(v35[0], *v36, buf);
          re::TypeInfo::TypeInfo(v33, &v49 + 4);
          result = re::internal::translateType(buf, v29, v33);
          if ((a1[64] & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v39, v23, v33);
          v24 = *(v34 + 24);
          re::TypeRegistry::typeInfo(v33[0], *v34, buf);
          re::TypeInfo::TypeInfo(v32, &v49 + 4);
          re::TypeRegistry::typeInfo(v35[0], *v36, buf);
          re::TypeInfo::TypeInfo(v31, &v49 + 4);
          if (a1[64] == 1 || (result = (*(*a1 + 72))(a1, v21, v22, a2 + v24, v32, v31, a5), (result & 1) == 0))
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

              v30 = *(v26 - 1);
              re::TypeRegistry::typeInfo(v33[0], *v34, buf);
              re::TypeInfo::TypeInfo(v32, &v49 + 4);
              re::TypeRegistry::typeInfo(v35[0], *v36, buf);
              result = re::TypeInfo::TypeInfo(v31, &v49 + 4);
              if ((a1[64] & 1) == 0)
              {
                result = (*(*a1 + 72))(a1, v30, v22, a2 + v24, v32, v31, a5);
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CBAFB8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5CBAFB8;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1, double a2)
{
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s", v16[1]);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, int, int, int, re::TypeInfo *this)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5CBB020;
  re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::close((a1 + 24));
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void *re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::close(void *result)
{
  if (*result)
  {
    v1 = result;
    if (result[21])
    {
      v2 = result[20];
      if (v2)
      {
        String = rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::GetString(v2);
        v4 = *(v1[20] + 24) - *(v1[20] + 16);
        if (String)
        {
          v5 = String;
          while (1)
          {
            v6 = *(v1 + 4);
            if (v4 <= v6)
            {
              break;
            }

            if (v6 >= 1)
            {
              memcpy(v1[1], v5, v6);
              v7 = *(v1 + 4);
              v5 += v7;
              v4 -= v7;
              v1[1] = 0;
              *(v1 + 4) = 0;
            }

            v8 = (*(**v1 + 16))(*v1, v1 + 1, v1 + 2);
            if ((v8 & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          memcpy(v1[1], v5, v4);
LABEL_14:
          v1[1] += v4;
          *(v1 + 4) -= v4;
        }

        else
        {
          do
          {
            v13 = *(v1 + 4);
            if (v4 <= v13)
            {
              bzero(v1[1], v4);
              goto LABEL_14;
            }

            if (v13 >= 1)
            {
              bzero(v1[1], v13);
              v4 -= *(v1 + 4);
              v1[1] = 0;
              *(v1 + 4) = 0;
            }

            v8 = (*(**v1 + 16))(*v1, v1 + 1, v1 + 2);
          }

          while ((v8 & 1) != 0);
LABEL_10:
          re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(v1, &v14);
          if (v14 && (v15 & 1) != 0)
          {
            (*(*v14 + 40))();
          }
        }

        v9 = v1[20];
        if (v9)
        {
          v10 = v1[3];
          rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v1[20]);
          (*(*v10 + 40))(v10, v9);
        }

        v1[20] = 0;
        v11 = v1[21];
        if (v11)
        {
          v12 = v1[3];
          rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(v11 + 8);
          (*(*v12 + 40))(v12, v11);
        }

        v1[21] = 0;
        re::DynamicArray<unsigned long>::deinit((v1 + 24));
      }
    }

    if ((v1[5] & 1) == 0)
    {
      re::Encoder<re::EncoderBinary<re::SeekableInputStream>,re::SeekableInputStream>::popState(v1, 0);
    }

    result = re::DynamicArray<unsigned long>::deinit((v1 + 12));
    if (*(v1 + 4) >= 1)
    {
      result = (*(**v1 + 24))();
      v1[1] = 0;
      *(v1 + 4) = 0;
    }

    *v1 = 0;
    v1[3] = 0;
    v1[4] = 0;
  }

  return result;
}

uint64_t rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>::GetString(void *a1)
{
  v2 = a1[3];
  if ((a1[4] - v2) <= 0)
  {
    rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(a1, 1);
    v2 = a1[3];
  }

  a1[3] = v2 + 1;
  *v2 = 0;
  result = a1[2];
  --a1[3];
  return result;
}

char *rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(a1 + 32) - v4;
    v6 = v5 + ((v5 + 1) >> 1);
    v7 = *a1;
  }

  else
  {
    v7 = *a1;
    if (*a1)
    {
      v4 = 0;
    }

    else
    {
      v7 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, 1, 0);
      *a1 = v7;
      *(a1 + 8) = v7;
      v4 = *(a1 + 16);
    }

    v6 = *(a1 + 40);
    v5 = *(a1 + 32) - v4;
  }

  v8 = *(a1 + 24) - v4;
  if (v6 <= v8 + a2)
  {
    v9 = v8 + a2;
  }

  else
  {
    v9 = v6;
  }

  result = re::internal::RapidJSONAllocator::Realloc(v7, v4, v5, v9);
  *(a1 + 16) = result;
  *(a1 + 24) = &result[v8];
  *(a1 + 32) = &result[v9];
  return result;
}

void *re::internal::RapidJSONAllocator::Realloc(re::internal::RapidJSONAllocator *this, void *a2, size_t a3, size_t a4)
{
  if (a3 != a4)
  {
    if (a4)
    {
      v8 = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 32))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, a4, 0);
      v5 = v8;
      if (a3 && a2 && v8)
      {
        if (a4 >= a3)
        {
          v9 = a3;
        }

        else
        {
          v9 = a4;
        }

        memcpy(v8, a2, v9);
        goto LABEL_13;
      }
    }

    else
    {
      v5 = 0;
    }

    if (!a2)
    {
      return v5;
    }

LABEL_13:
    (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance, a2);
    return v5;
  }

  return a2;
}

uint64_t rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Destroy(uint64_t result)
{
  v1 = result;
  if (*(result + 16))
  {
    result = (*(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40))(re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance);
  }

  if (*(v1 + 8))
  {
    v2 = *(*re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance + 40);

    return v2();
  }

  return result;
}

uint64_t *re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(uint64_t a1, const char *a2, const char *a3, ...)
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

uint64_t re::serializeType<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, re::TypeInfo *this, const re::TypeInfo *a6, uint64_t a7)
{
  v184 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_18;
  }

  if (*this == *a6)
  {
    v14 = **(this + 2);
    v15 = **(a6 + 2);
    if (v14 == v15)
    {
      v17 = WORD1(v14) == WORD1(v15);
      v16 = (v15 ^ v14) & 0xFFFFFF00000000;
      v17 = v17 && v16 == 0;
      if (v17)
      {
        goto LABEL_18;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_18;
  }

  if (*(this + 12) != *(a6 + 12))
  {
    goto LABEL_254;
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

  v20 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
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
    v32 = re::TypeInfo::name(this)[1];
    v33 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    if (v33)
    {
      v34 = *(v33 + 16);
    }

    else
    {
      v34 = 0xFFFFFFFFLL;
    }

    v40 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v40)
    {
      v41 = *(v40 + 16);
    }

    else
    {
      v41 = 0xFFFFFFFFLL;
    }

    v158 = v34;
    v159 = v41;
    v157 = v32;
    v23 = "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.";
    goto LABEL_85;
  }

LABEL_18:
  v22 = *(this + 12);
  if (v22 <= 4)
  {
    if (*(this + 12) <= 2u)
    {
      if (v22 != 1)
      {
        if (v22 != 2)
        {
          goto LABEL_79;
        }

        return re::serializeEnum<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v70 = **(this + 2);
          v71 = **(a6 + 2);
          if (v70 != v71)
          {
            goto LABEL_254;
          }

          v17 = WORD1(v70) == WORD1(v71);
          v72 = (v71 ^ v70) & 0xFFFFFF00000000;
          if (!v17 || v72 != 0)
          {
            goto LABEL_254;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_254;
        }
      }

      v35 = re::TypeInfo::name(this);
      v36 = *v35 >> 1;
      if (v36 <= 0x16749DFF02)
      {
        if (*v35 >> 1 <= 0x685847B)
        {
          if (*v35 >> 1 > 0x2E9355)
          {
            if (v36 == 3052374)
            {

              return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar((a1 + 3), a2, a3, a4, a7);
            }

            if (v36 != 3327612)
            {
              if (v36 == 97526364)
              {

                return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>((a1 + 3), a2, a3, a4, a7);
              }

              goto LABEL_321;
            }

LABEL_264:

            return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>((a1 + 3), a2, a3, a4, a7);
          }

          if (v36 != 104431)
          {
            if (v36 == 3029738)
            {

              return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool((a1 + 3), a2, a3, a4, a7);
            }

            goto LABEL_321;
          }

LABEL_286:

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>((a1 + 3), a2, a3, a4, a7);
        }

        if (*v35 >> 1 <= 0xB9708BDD)
        {
          if (v36 != 109413500)
          {
            if (v36 == 2969009105)
            {

              return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>((a1 + 3), a2, a3, a4, a7);
            }

LABEL_321:
            v157 = re::TypeInfo::name(this)[1];
            v23 = "Unsupported basic type %s.";
            goto LABEL_85;
          }

LABEL_289:

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>((a1 + 3), a2, a3, a4, a7);
        }

        if (v36 == 3111160798)
        {

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>((a1 + 3), a2, a3, a4, a7);
        }

        if (v36 != 3393056694)
        {
          if (v36 != 0x16749D2549)
          {
            goto LABEL_321;
          }

          goto LABEL_289;
        }

LABEL_277:

        return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), a2, a3, a4, a7);
      }

      if (*v35 >> 1 > 0x303EE88E58CLL)
      {
        if (*v35 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v36 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_283;
          }

          if (v36 != 0x3AFE951B1F1F3391)
          {
            if (v36 != 0x412A40E9CB79BA35)
            {
              goto LABEL_321;
            }

            goto LABEL_277;
          }

          goto LABEL_280;
        }

        if (v36 == 0x303EE88E58DLL)
        {
          goto LABEL_277;
        }

        if (v36 != 0x2710786C3AC82DA1)
        {
          goto LABEL_321;
        }
      }

      else
      {
        if (*v35 >> 1 <= 0x18E6A9A092)
        {
          if (v36 != 0x16749DFF03)
          {
            if (v36 != 0x16749F63A2)
            {
              goto LABEL_321;
            }

            goto LABEL_264;
          }

          goto LABEL_286;
        }

        if (v36 != 0x18E6A9A093)
        {
          if (v36 != 0x303EE86A734)
          {
            if (v36 != 0x303EE8780EELL)
            {
              goto LABEL_321;
            }

LABEL_283:

            return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>((a1 + 3), a2, a3, a4, a7);
          }

LABEL_280:

          return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>((a1 + 3), a2, a3, a4, a7);
        }
      }

      return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>((a1 + 3), a2, a3, a4, a7);
    }

    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_79;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v46 = **(this + 2);
          v47 = **(a6 + 2);
          if (v46 == v47)
          {
            v17 = WORD1(v46) == WORD1(v47);
            v48 = (v47 ^ v46) & 0xFFFFFF00000000;
            if (v17 && v48 == 0)
            {
              goto LABEL_112;
            }
          }
        }

        else if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_112;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_254;
        }

        v50 = *(this + 2);
        v51 = *(a6 + 2);
        v52 = *(v51 + 92) & 0xFFFFFF;
        if ((*(v50 + 92) & 0xFFFFFF) != 0)
        {
          if (!v52)
          {
            goto LABEL_254;
          }
        }

        else if (v52 || *(v50 + 96) != *(v51 + 96))
        {
          goto LABEL_254;
        }
      }

LABEL_112:
      if (a7)
      {
        v53 = a1[34];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v179);
        re::TypeInfo::TypeInfo(v174, &v179.n128_i64[1]);
        re::internal::translateType(&v160, v53, v174);
        v54 = (*(*a1 + 80))(a1, &v160);
        if (!v54)
        {
          goto LABEL_208;
        }

        v55 = v54;
        v56 = *(a6 + 2);
        v57 = *(v56 + 92) & 0xFFFFFF;
        if (v57)
        {
          v58 = 0;
          v59 = 8;
        }

        else
        {
          v58 = *(v56 + 96);
          v59 = 4;
        }

        v179.n128_u64[0] = v58;
        v38 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, &v179, v59);
        if (!v38)
        {
          return v38 & 1;
        }

        v129 = v179.n128_u64[0];
        if (v57)
        {
          v130 = v179.n128_u64[0] == 0;
        }

        else
        {
          v130 = 1;
        }

        v131 = v130;
        if (!v130)
        {
          v172[0] = 0;
          v172[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v172);
          v129 = v179.n128_u64[0];
        }

        if (v129)
        {
          v132 = 0;
          do
          {
            v55(a1, 0, 0, 0, &v160, &v160, 1);
            ++v132;
          }

          while (v132 < v179.n128_u64[0]);
        }

        if ((v131 & 1) == 0)
        {
          goto LABEL_249;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v179);
        re::TypeInfo::TypeInfo(&v160, &v179.n128_i64[1]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v179);
        re::TypeInfo::TypeInfo(v174, &v179.n128_i64[1]);
        re::TypeInfo::TypeInfo(&v179, this);
        v60 = (*(*a1 + 80))(a1, &v160);
        if (!v60)
        {
          goto LABEL_208;
        }

        v61 = v60;
        v170[0] = re::ArrayAccessor::size(&v179, a4);
        v62 = *(*(this + 2) + 92) & 0xFFFFFF;
        if (v62)
        {
          v63 = 8;
        }

        else
        {
          v63 = 4;
        }

        v38 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, v170, v63);
        if (!v38)
        {
          return v38 & 1;
        }

        v64 = v170[0];
        if (v62)
        {
          v65 = v170[0] == 0;
        }

        else
        {
          v65 = 1;
        }

        v66 = v65;
        if (!v65)
        {
          v67 = *a4;
          v171[0] = 0;
          v171[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v67, v171);
          v64 = v170[0];
        }

        if (v64)
        {
          v68 = 0;
          do
          {
            v69 = re::ArrayAccessor::elementAt(&v179, a4, v68);
            v61(a1, 0, 0, v69, &v160, v174, 0);
            ++v68;
          }

          while (v68 < v170[0]);
        }

        if ((v66 & 1) == 0)
        {
LABEL_249:
          (*(*a1 + 24))(a1);
        }
      }

LABEL_250:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 3));
      goto LABEL_251;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v74 = **(this + 2);
        v75 = **(a6 + 2);
        if (v74 == v75 && WORD1(v74) == WORD1(v75) && ((v75 ^ v74) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_146;
        }

        v37 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_146;
        }

        v37 = *(this + 12);
      }

      if (v37 != *(a6 + 12))
      {
        goto LABEL_254;
      }
    }

LABEL_146:
    if (a7)
    {
      v174[0] = 0;
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, a3, v174, 0);
      if (v174[0] == 1)
      {
        v76 = a1[34];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v179);
        re::TypeInfo::TypeInfo(&v160, &v179.n128_i64[1]);
        re::internal::translateType(&v179, v76, &v160);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, 0, &v179, &v179, 1);
        }
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v179);
      re::TypeInfo::TypeInfo(&v160, &v179.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v179);
      re::TypeInfo::TypeInfo(v174, &v179.n128_i64[1]);
      re::TypeInfo::TypeInfo(&v179, this);
      LOBYTE(v172[0]) = (*(v180 + 88))(a4) != 0;
      v77 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, a3, v172, 0);
      if (LOBYTE(v172[0]) == 1)
      {
        v78 = (*(v180 + 88))(a4, v77);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v78, &v160, v174, 0);
        }
      }
    }

    re::EncoderBinary<re::SeekableInputStream>::endOptional((a1 + 3));
    goto LABEL_251;
  }

  if (*(this + 12) <= 6u)
  {
    if (v22 != 5)
    {
      if (v22 != 6)
      {
        goto LABEL_79;
      }

      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v179);
      re::TypeInfo::TypeInfo(&v160, &v179.n128_i64[1]);
      v26 = re::TypeInfo::name(&v160);
      v27 = BYTE4(v161);
      if (BYTE4(v161) == 1)
      {
        if (re::TypeInfo::isInteger(&v160))
        {
          v28 = *v26 >> 1;
          if (v28 > 0x303EE8780EDLL)
          {
            if (v28 == 0x303EE8780EELL)
            {
              v134 = v26[1];
              v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (v134 == "uint32_t")
              {
                goto LABEL_314;
              }

              v135 = strcmp(v134, "uint32_t");
              v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
              if (!v135)
              {
                goto LABEL_314;
              }

              goto LABEL_300;
            }

            if (v28 != 0x303EE88E58DLL)
            {
              goto LABEL_300;
            }

            v127 = v26[1];
            v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v127 == "uint64_t")
            {
              goto LABEL_314;
            }

            v128 = "uint64_t";
          }

          else
          {
            if (v28 != 3393056694)
            {
              if (v28 == 0x303EE86A734)
              {
                v29 = v26[1];
                v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (v29 == "uint16_t")
                {
                  goto LABEL_314;
                }

                v31 = strcmp(v29, "uint16_t");
                v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
                if (!v31)
                {
                  goto LABEL_314;
                }
              }

              goto LABEL_300;
            }

            v127 = v26[1];
            v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
            if (v127 == "size_t")
            {
              goto LABEL_314;
            }

            v128 = "size_t";
          }

          v133 = strcmp(v127, v128);
          v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
          if (!v133)
          {
            goto LABEL_314;
          }

LABEL_300:
          v179.n128_u64[0] = 0x18E6A9A093;
          v179.n128_u64[1] = "uint8_t";
          v136 = re::StringID::operator==(v26, &v179);
          v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
          if (v136)
          {
            goto LABEL_314;
          }

          v179.n128_u64[0] = 0x16749F63A2;
          v179.n128_u64[1] = "int64_t";
          if (re::StringID::operator==(v26, &v179))
          {
            LOBYTE(v38) = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, this, a6, a7);
            return v38 & 1;
          }

          *v174 = 3327612;
          *&v174[8] = "long";
          v141 = re::StringID::operator==(v26, v174);
          v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
          if (v141 || (v179.n128_u64[0] = 104431, v179.n128_u64[1] = "int", v142 = re::StringID::operator==(v26, &v179), v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v142) || (v179.n128_u64[0] = 109413500, v179.n128_u64[1] = "short", v143 = re::StringID::operator==(v26, &v179), v30 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v143))
          {
LABEL_314:
            LOBYTE(v38) = v30(a1, a2, a3, a4, this, a6, a7);
            return v38 & 1;
          }

LABEL_192:
          if (this != a6)
          {
            if (*this == *a6)
            {
              v97 = **(this + 2);
              v98 = **(a6 + 2);
              if (v97 == v98 && WORD1(v97) == WORD1(v98) && ((v98 ^ v97) & 0xFFFFFF00000000) == 0)
              {
                goto LABEL_200;
              }
            }

            else if (re::areSameTranslatedVersion(this, a6, v25))
            {
              goto LABEL_200;
            }

            if (*(this + 12) != *(a6 + 12))
            {
              goto LABEL_254;
            }
          }

LABEL_200:
          if (!a7)
          {
            re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v179);
            re::TypeInfo::TypeInfo(v172, &v179.n128_i64[1]);
            re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v179);
            re::TypeInfo::TypeInfo(v171, &v179.n128_i64[1]);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v179);
            re::TypeInfo::TypeInfo(v170, &v179.n128_i64[1]);
            re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v179);
            re::TypeInfo::TypeInfo(v169, &v179.n128_i64[1]);
            re::TypeInfo::TypeInfo(v167, this);
            v109 = (*(*a1 + 80))(a1, v172);
            if (v109)
            {
              v110 = v109;
              v111 = (*(*a1 + 80))(a1, v171);
              if (v111)
              {
                v112 = v111;
                v166 = (*(v168 + 96))(a4);
                v113 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, a3, &v166, 0);
                LOBYTE(v38) = 0;
                if (!v113)
                {
                  return v38 & 1;
                }

                if (v166)
                {
                  v114 = *this;
                  v179.n128_u64[0] = 0x449AD97C4B77BED4;
                  v179.n128_u64[1] = "_CompareFunc";
                  v115 = re::TypeRegistry::typeID(v165, v114, &v179);
                  if (v179.n128_u8[0])
                  {
                    if (v179.n128_u8[0])
                    {
                    }
                  }

                  if (v165[0] && (v116 = *v172[2], v179.n128_u64[0] = v165[1], v179.n128_u64[1] = v116, LODWORD(v180) = -1, (v117 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v172[0] + 768, &v179)) != 0) && (v118 = *v117) != 0)
                  {
                    v164 = 0;
                    v161 = 0;
                    v162 = 0;
                    v163 = 0;
                    v160 = a1[7];
                    re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v160, v166);
                    ++v163;
                    v119 = (*(v168 + 120))(a4, a1[7]);
                    if ((*(v168 + 128))())
                    {
                      do
                      {
                        v120 = (*(v168 + 136))(v119);
                        v121 = (*(v168 + 144))(v119);
                        v179.n128_u64[0] = v120;
                        v179.n128_u64[1] = v121;
                        v122 = re::DynamicArray<re::RigNodeConstraint>::add(&v160, &v179);
                      }

                      while (((*(v168 + 128))(v119, v122) & 1) != 0);
                    }

                    (*(v168 + 152))(v119, a1[7]);
                    v179.n128_u64[0] = v118;
                    std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(v164, &v164[16 * v162], &v179);
                    if (v166)
                    {
                      v123 = 0;
                      for (i = 0; i < v166; ++i)
                      {
                        v125 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
                        if (v162 <= i)
                        {
                          v173 = 0;
                          v182 = 0u;
                          v183 = 0u;
                          v180 = 0u;
                          v181 = 0u;
                          v179 = 0u;
                          v149 = MEMORY[0x1E69E9C10];
                          v150 = v162;
                          v151 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v174 = 136315906;
                          *&v174[4] = "operator[]";
                          *&v174[12] = 1024;
                          if (v151)
                          {
                            v152 = 3;
                          }

                          else
                          {
                            v152 = 2;
                          }

                          *&v174[14] = 789;
                          v175 = 2048;
                          v176 = i;
                          v177 = 2048;
                          v178 = v150;
                          _os_log_send_and_compose_impl(v152, &v173, &v179, 80, &dword_1E1C61000, v149, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v174, 38, v159, v160);
                          _os_crash_msg();
                          __break(1u);
LABEL_331:
                          v173 = 0;
                          v182 = 0u;
                          v183 = 0u;
                          v180 = 0u;
                          v181 = 0u;
                          v179 = 0u;
                          v153 = MEMORY[0x1E69E9C10];
                          v154 = v126;
                          v155 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                          *v174 = 136315906;
                          *&v174[4] = "operator[]";
                          *&v174[12] = 1024;
                          if (v155)
                          {
                            v156 = 3;
                          }

                          else
                          {
                            v156 = 2;
                          }

                          *&v174[14] = 789;
                          v175 = 2048;
                          v176 = i;
                          v177 = 2048;
                          v178 = v154;
                          _os_log_send_and_compose_impl(v156, &v173, &v179, 80, &dword_1E1C61000, v153, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v174, 38, v159, v160);
                          _os_crash_msg();
                          __break(1u);
                        }

                        (v110)(a1, "key", 0, *&v164[v123], v172, v170, 0, v125);
                        v126 = v162;
                        if (v162 <= i)
                        {
                          goto LABEL_331;
                        }

                        v112(a1, "value", 0, *&v164[v123 + 8], v171, v169, 0);
                        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
                        v123 += 16;
                      }
                    }

                    if (v160 && v164)
                    {
                      (*(*v160 + 40))();
                    }
                  }

                  else
                  {
                    v144 = (*(v168 + 120))(a4, a1[7]);
                    (*(v168 + 128))();
                    if (v166)
                    {
                      for (j = 0; j < v166; ++j)
                      {
                        v146 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
                        v147 = (*(v168 + 136))(v144, v146);
                        v110(a1, "key", 0, v147, v172, v170, 0);
                        v148 = (*(v168 + 144))(v144);
                        v112(a1, "value", 0, v148, v171, v169, 0);
                        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
                        (*(v168 + 128))(v144);
                      }
                    }

                    (*(v168 + 152))(v144, a1[7]);
                  }
                }

                goto LABEL_326;
              }

              v108 = v171;
            }

            else
            {
              v108 = v172;
            }

LABEL_209:
            re::TypeInfo::name(v108);
            re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Failed to resolve serialize function for type %s");
            goto LABEL_255;
          }

          v99 = a1[34];
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v179);
          re::TypeInfo::TypeInfo(v174, &v179.n128_i64[1]);
          re::internal::translateType(&v160, v99, v174);
          v100 = a1[34];
          re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v179);
          re::TypeInfo::TypeInfo(v172, &v179.n128_i64[1]);
          re::internal::translateType(v174, v100, v172);
          v101 = (*(*a1 + 80))(a1, &v160);
          if (v101)
          {
            v102 = v101;
            v103 = (*(*a1 + 80))(a1, v174);
            if (v103)
            {
              v104 = v103;
              v179.n128_u64[0] = 0;
              v105 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, a3, &v179, 0);
              LOBYTE(v38) = 0;
              if (!v105)
              {
                return v38 & 1;
              }

              if (v179.n128_u64[0])
              {
                v106 = 0;
                do
                {
                  v107 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 1);
                  v102(a1, "key", 0, 0, &v160, &v160, 1, v107);
                  v104(a1, "value", 0, 0, v174, v174, 1);
                  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
                  ++v106;
                }

                while (v106 < v179.n128_u64[0]);
              }

LABEL_326:
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary((a1 + 3));
              goto LABEL_251;
            }

            v108 = v174;
            goto LABEL_209;
          }

LABEL_208:
          v108 = &v160;
          goto LABEL_209;
        }

        v27 = BYTE4(v161);
      }

      if (v27 == 8)
      {
        v43 = *v26 >> 1;
        if (v43 == 0x22C6ED80D0CLL)
        {
          v95 = v26[1];
          v30 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v95 == "StringID")
          {
            goto LABEL_314;
          }

          v96 = strcmp(v95, "StringID");
          v30 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v96)
          {
            goto LABEL_314;
          }
        }

        else if (v43 == 0x134375A94D9F7110)
        {
          v44 = v26[1];
          v30 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (v44 == "DynamicString")
          {
            goto LABEL_314;
          }

          v45 = strcmp(v44, "DynamicString");
          v30 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
          if (!v45)
          {
            goto LABEL_314;
          }
        }
      }

      goto LABEL_192;
    }

    if (this == a6)
    {
      goto LABEL_166;
    }

    if (*this == *a6)
    {
      v83 = **(this + 2);
      v84 = **(a6 + 2);
      if (v83 == v84 && WORD1(v83) == WORD1(v84) && ((v84 ^ v83) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_166;
      }

      v39 = 5;
    }

    else
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_166;
      }

      v39 = *(this + 12);
    }

    if (v39 != *(a6 + 12))
    {
      goto LABEL_254;
    }

LABEL_166:
    if (a7)
    {
      v85 = a1[34];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v179);
      re::TypeInfo::TypeInfo(v174, &v179.n128_i64[1]);
      re::internal::translateType(&v160, v85, v174);
      v86 = (*(*a1 + 80))(a1, &v160);
      if (!v86)
      {
        goto LABEL_208;
      }

      v87 = v86;
      v179.n128_u64[0] = 0;
      v88 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, &v179, 0);
      LOBYTE(v38) = 0;
      if (!v88)
      {
        return v38 & 1;
      }

      if (v179.n128_u64[0])
      {
        v89 = 0;
        do
        {
          v87(a1, 0, 0, 0, &v160, &v160, 1);
          ++v89;
        }

        while (v89 < v179.n128_u64[0]);
      }
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v179);
      re::TypeInfo::TypeInfo(&v160, &v179.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v179);
      re::TypeInfo::TypeInfo(v174, &v179.n128_i64[1]);
      re::TypeInfo::TypeInfo(&v179, this);
      v90 = (*(*a1 + 80))(a1, &v160);
      if (!v90)
      {
        goto LABEL_208;
      }

      v91 = v90;
      v171[0] = (*(v180 + 88))(a4);
      v92 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, a3, v171, 0);
      LOBYTE(v38) = 0;
      if (!v92)
      {
        return v38 & 1;
      }

      if (*(v180 + 104))
      {
        if (v171[0])
        {
          v93 = 0;
          do
          {
            v94 = (*(v180 + 104))(a4, v93);
            v91(a1, 0, 0, v94, &v160, v174, 0);
            ++v93;
          }

          while (v93 < v171[0]);
        }
      }

      else
      {
        v137 = *(v180 + 112);
        if (!v137 || !*(v180 + 120) || !*(v180 + 128))
        {
          re::TypeInfo::TypeInfo(v172, &v179);
          v157 = re::TypeInfo::name(v172)[1];
          v23 = "List type %s does not provide an indexer or iterator.";
          goto LABEL_85;
        }

        v138 = v137(a4, a1[7]);
        v139 = (*(v180 + 120))();
        if (v139)
        {
          v140 = v139;
          do
          {
            v91(a1, 0, 0, v140, &v160, v174, 0);
            v140 = (*(v180 + 120))(v138);
          }

          while (v140);
        }

        (*(v180 + 128))(v138, a1[7]);
      }
    }

    goto LABEL_250;
  }

  if (v22 == 7)
  {
    if (this == a6)
    {
      goto LABEL_67;
    }

    if (*this == *a6)
    {
      v79 = **(this + 2);
      v80 = **(a6 + 2);
      if (v79 == v80)
      {
        v17 = WORD1(v79) == WORD1(v80);
        v81 = (v80 ^ v79) & 0xFFFFFF00000000;
        if (v17 && v81 == 0)
        {
LABEL_67:
          v38 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), a2, a3, 16);
          if (a7)
          {
            if (v38)
            {
              v160 = 0;
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", 0, &v160, 0);
              if (v160 < *(*(a6 + 2) + 96))
              {
                re::TypeInfo::unionMember(&v179, a6, v160);
                if ((a1[8] & 1) == 0)
                {
                  (*(*a1 + 72))(a1, "value", 0, 0, &v179, &v179, 1);
                }
              }

LABEL_96:
              re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 3));
LABEL_251:
              LOBYTE(v38) = *(a1 + 64) ^ 1;
            }
          }

          else if (v38)
          {
            v42 = re::TypeInfo::TypeInfo(&v179, this);
            *v174 = re::UnionAccessor::readTag(v42, a4);
            re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", 0, v174, 0);
            if (*v174 < *(*(this + 2) + 96))
            {
              re::TypeInfo::unionMember(&v160, this, *v174);
              if ((a1[8] & 1) == 0)
              {
                (*(*a1 + 72))(a1, "value", 0, a4, &v160, &v160, 0);
              }
            }

            goto LABEL_96;
          }

          return v38 & 1;
        }
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_67;
    }

LABEL_254:
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, this, a6);
    goto LABEL_255;
  }

  if (v22 != 8)
  {
    if (v22 == 9)
    {
      v157 = re::TypeInfo::name(this)[1];
      v23 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_85:
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, v23, v157, v158, v159);
LABEL_255:
      LOBYTE(v38) = 0;
      return v38 & 1;
    }

LABEL_79:
    v157 = *(this + 12);
    v23 = "Invalid type category. Value = %d";
    goto LABEL_85;
  }

  return re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t *re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  v8 = re::TypeInfo::name(a4);
  return re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Type mismatch. Runtime type %s and serialized type %s are different.", v7, v8[1]);
}

uint64_t re::serializeEnum<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5, uint64_t a6, uint64_t a7)
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
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
      return 0;
    }
  }

LABEL_12:

  return re::internal::serializeEnumAsString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, a5, a6, v7);
}

uint64_t re::serializeObject<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, uint64_t **this, uint64_t **a6, uint64_t a7)
{
  v50 = *MEMORY[0x1E69E9840];
  if (a7)
  {
    if (*(this[2] + 49))
    {
      v28 = *(a1 + 272);
      v40[0] = 0x2686EB529B3EE220;
      v40[1] = "DynamicString";
      re::TypeRegistry::typeInfo(&v41, v28, v40);
      v29 = re::TypeInfo::TypeInfo(&v47, v42);
      if (v40[0])
      {
        if (v40[0])
        {
        }
      }

      v30 = &v47;
      v31 = &v47;
      v32 = a1;
      v33 = a2;
      v34 = a3;
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

      v32 = a1;
      v33 = a2;
      v34 = a3;
      v30 = this;
      v31 = this;
    }

    re::serializeDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v32, v33, v34, 0, v30, v31, 1);
LABEL_40:
    v22 = *(a1 + 64) ^ 1;
    return v22 & 1;
  }

LABEL_6:
  v16 = this[2];
  v17 = *(v16 + 12);
  if ((v17 & 0x10) == 0 && *(this + 12) == 8)
  {
    v18 = v16[20];
    if (v18)
    {
      v19 = *this;
      v20 = *a6;
      v41 = &unk_1F5CBB088;
      v42[0] = a1;
      v42[1] = v19;
      v42[2] = v20;
      v43[0] = 0;
      v43[1] = 0;
      v44 = 1;
      v45 = 0;
      v46 = 0;
      v47 = a2;
      v48 = a3;
      v49 = 0;
      v21 = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(v43, &v47);
      v18(&v41, a4, v21);
      v22 = *(a1 + 64) ^ 1;
      v41 = &unk_1F5CBB088;
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
    v23 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, a3, 0);
    v22 = 0;
    if (!v23)
    {
      return v22 & 1;
    }

    v24 = re::DataArray<re::TextureAtlasTile>::tryGet((*this + 12), *this[2]);
    if (!v24 || *(v24 + 16) >= 2u)
    {
      v26 = re::DataArray<re::TextureAtlasTile>::tryGet((*this + 12), *this[2]);
      if (v26)
      {
        v27 = *(v26 + 16);
      }

      else
      {
        v27 = -1;
      }

      LODWORD(v41) = v27;
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, "@version", 0, &v41, 0);
    }

    if (this == a6)
    {
      goto LABEL_32;
    }

    if (*this == *a6)
    {
      v36 = *this[2];
      v37 = *a6[2];
      if (v36 == v37 && WORD1(v36) == WORD1(v37) && ((v37 ^ v36) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_32;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v25))
    {
LABEL_32:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
LABEL_39:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      goto LABEL_40;
    }

    if (*(this + 12) == *(a6 + 12))
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
    }

    else
    {
      v38 = re::TypeInfo::name(this)[1];
      v39 = re::TypeInfo::name(a6);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v38, v39[1]);
    }

    goto LABEL_39;
  }

  return re::internal::serializeObjectWithOneMember<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, a4, this, a6, a7);
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(uint64_t a1, const char *a2, uint64_t a3, unsigned __int8 *a4, char a5)
{
  v13 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v13);
    }

    v9 = *(a1 + 168);
    v10 = *a4;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteBool(v9, v10);
    if ((a5 & 2) == 0)
    {
      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v11 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, char a5)
{
  v12 = a2;
  v5 = *(a1 + 40);
  if ((v5 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v12);
    }

    v9 = *(a1 + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v9);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v9, a4, 1u);
    if ((a5 & 2) == 0)
    {
      v10 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v10 - 16);
    }
  }

  return v5 ^ 1u;
}

uint64_t rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(char *a1, const char **a2)
{
  v3 = *a2;
  v4 = strlen(*a2);
  rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(a1);

  return rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(a1, v3, v4);
}

char *rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(char *result)
{
  v1 = *(result + 4);
  if (v1 == *(result + 3))
  {
    result[60] = 1;
  }

  else
  {
    v2 = *(v1 - 16);
    if (v2)
    {
      v3 = *result;
      if (*(v1 - 8) == 1)
      {
        v4 = *(v3 + 24);
        if ((*(v3 + 32) - v4) <= 0)
        {
          result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*result, 1);
          v4 = *(v3 + 24);
        }

        *(v3 + 24) = v4 + 1;
        *v4 = 44;
      }

      else
      {
        if (v2)
        {
          v5 = 58;
        }

        else
        {
          v5 = 44;
        }

        v6 = *(v3 + 24);
        if ((*(v3 + 32) - v6) <= 0)
        {
          result = rapidjson::internal::Stack<re::internal::RapidJSONAllocator>::Expand<char>(*result, 1);
          v6 = *(v3 + 24);
        }

        *(v3 + 24) = v6 + 1;
        *v6 = v5;
      }
    }

    ++*(v1 - 16);
  }

  return result;
}