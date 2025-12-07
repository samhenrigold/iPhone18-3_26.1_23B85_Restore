uint64_t re::serializeBool<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, a2, v13);
}

uint64_t re::serializeChar<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(a1 + 24, a2, v13);
}

uint64_t re::serializeI8<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(a1 + 24, a2, v13);
}

uint64_t re::serializeI16<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(a1 + 24, a2, v13);
}

uint64_t re::serializeI32<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(a1 + 24, a2, v13);
}

uint64_t re::serializeI64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(a1 + 24, a2, v13);
}

uint64_t re::serializeU8<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(a1 + 24, a2, v13);
}

uint64_t re::serializeU16<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(a1 + 24, a2, v13);
}

uint64_t re::serializeU32<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, a2, v13);
}

uint64_t re::serializeU64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, a2, v13);
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, v13);
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, v13);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_18:
      goto LABEL_19;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_18;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if (a7)
  {
    LODWORD(v22) = 0;
    v13 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v22);
    v14 = 0;
    if (!v13)
    {
      return v14 & 1;
    }

    goto LABEL_22;
  }

  v15 = *a4;
  v23 = 2 * (*a4 != 0);
  if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v23))
  {
    if (v15)
    {
      if (*a4)
      {
        v16 = strlen(*a4);
        v22 = v16;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
        {
          if (v16)
          {
            re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, *a4);
          }

          goto LABEL_21;
        }
      }

      else
      {
        v22 = 0;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
        {
LABEL_21:
        }
      }
    }

LABEL_22:
    v14 = *(a1 + 64) ^ 1;
    return v14 & 1;
  }

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x134375A94D9F7110 || (v18 = v17[1], v18 != "DynamicString") && strcmp(v18, "DynamicString"))
  {
    goto LABEL_21;
  }

LABEL_14:
  if (!a7)
  {
    v19 = strlen(*(a4 + 8));
    v22 = v19;
    if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
    {
      if (v19)
      {
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, *(a4 + 8));
      }

      goto LABEL_20;
    }

LABEL_21:
    v20 = 0;
    return v20 & 1;
  }

  v22 = 0;
  if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
  {
    goto LABEL_21;
  }

LABEL_20:
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, unint64_t **this, unint64_t **a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_16:
      goto LABEL_17;
    }

    v18 = *this[2];
    v19 = *a6[2];
    if (v18 != v19)
    {
      goto LABEL_16;
    }

    v21 = WORD1(v18) == WORD1(v19);
    v20 = (v19 ^ v18) & 0xFFFFFF00000000;
    v21 = v21 && v20 == 0;
    if (!v21)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if (!a7)
  {
    v14 = *this;
    v15 = *this[2];
    v33[0] = 0x258C98EAAF29A10ALL;
    v33[1] = "CallbackSerializerAttribute";
    v16 = re::TypeRegistry::typeID(v34, v14, v33);
    if (v34[0] && (v29 = v34[1], v30 = v15, LODWORD(v31) = -1, (v16 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v14 + 768, &v29)) != 0))
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    if (v33[0])
    {
      if (v33[0])
      {
      }
    }

    v23 = *v17;
    v24 = *(a1 + 264);
    v25 = *(a1 + 56);
    v31 = 0;
    v32 = 0;
    v29 = v25;
    v30 = 0;
    re::DynamicString::setCapacity(&v29, 0);
    if ((*(v23 + 72))(v24, v23, a4, &v29))
    {
      if (v30)
      {
        v26 = (v30 >> 1);
      }

      else
      {
        v26 = (v30 >> 1);
      }

      v34[0] = v26;
      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, v34))
      {
        if (v26)
        {
          if (v30)
          {
            v27 = v31;
          }

          else
          {
            v27 = &v30 + 1;
          }

          re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v27);
        }

        if (v29 && (v30 & 1) != 0)
        {
          (*(*v29 + 40))();
        }

        goto LABEL_7;
      }
    }

    else
    {
      v28 = re::TypeInfo::name(this);
    }

    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }

LABEL_17:
    v13 = 0;
    return v13 & 1;
  }

  v29 = 0;
  if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v29))
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = *(a1 + 64) ^ 1;
  return v13 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(_BYTE *a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
LABEL_20:
      v20 = 0;
      return v20 & 1;
    }

    v16 = **(this + 2);
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
  if (*a4)
  {
    if (a1[336] == 1 && (v25 = *a4, (v11 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 344), &v25)) != 0))
    {
      v12 = *v11;
      v24 = 1;
      LODWORD(v25) = v12;
      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v24))
      {
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v25);
LABEL_22:
LABEL_23:
        v20 = a1[64] ^ 1;
        return v20 & 1;
      }
    }

    else
    {
      v24 = 2;
      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v24))
      {
        v13 = strlen(*a4);
        v25 = v13;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v25))
        {
          if (v13)
          {
            re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString((a1 + 24), *a4);
          }

          v14 = *a4;
          v15 = **(this + 2);
          *&v23 = *this;
          *(&v23 + 1) = v15;
          re::internal::SharedObjectGraph::addObject((a1 + 336), v14, &v23);
          goto LABEL_23;
        }
      }
    }

    goto LABEL_20;
  }

  LODWORD(v25) = 0;
  v21 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v25);
  v20 = 0;
  if (v21)
  {
    goto LABEL_22;
  }

  return v20 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(_BYTE *a1, const char *a2, int a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
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

  else if (re::areSameTranslatedVersion(this, a6, v13))
  {
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v26 = re::TypeInfo::name(this), v27 = re::TypeInfo::name(a6), !re::StringID::operator==(v26, v27))))
  {
    goto LABEL_30;
  }

  v15 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v40);
  re::TypeInfo::TypeInfo(v39, v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40);
  re::TypeInfo::TypeInfo(v38, v41);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v17 = *v39[2];
    *&v37 = v39[0];
    *(&v37 + 1) = v17;
    if (!v39[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(&v37, a4, this);
    if (!v37)
    {
LABEL_8:
      v16 = re::TypeInfo::name(this);
LABEL_30:
      v21 = 0;
      return v21 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, &v37, &v40);
  re::TypeInfo::TypeInfo(v36, v41);
  if ((a7 & 1) == 0)
  {
    v18 = *a4;
    if (*a4)
    {
      if (a1[336] == 1)
      {
        v40 = *a4;
        v19 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 344), &v40);
        if (v19)
        {
          LODWORD(v40) = *v19;
          v42[0] = 1;
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, v42))
          {
            goto LABEL_30;
          }

          re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v40);
          goto LABEL_17;
        }

        v18 = *a4;
      }

      v35 = v37;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v18, &v35);
      v34 = 2;
      if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v34))
      {
        goto LABEL_30;
      }

      if (!isPointerToPolymorphicType)
      {
        if ((a1[64] & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, *a4, v39, v38, 0);
        }

        goto LABEL_45;
      }

      v29 = *a4;
      re::TypeInfo::TypeInfo(v42, v36);
      if (v15)
      {
        v30 = v38[0];
        v31 = re::TypeInfo::name(v36);
        re::TypeRegistry::typeInfo(&v40, v30, v31);
        if (v40 != 1)
        {
          v33 = re::TypeInfo::name(v36);
LABEL_45:
          if (a1[336] == 1)
          {
            --*(a1 + 61);
            ++*(a1 + 124);
          }

          goto LABEL_18;
        }

        re::TypeInfo::operator=(v42, v41);
      }

      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, 0))
      {
        v32 = re::TypeInfo::polymorphicObjectName(v42);
        if ((a1[64] & 1) == 0)
        {
          (*(*a1 + 72))(a1, v32[1], 0, v29, v36, v42, 0);
        }

        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      }

      goto LABEL_45;
    }
  }

  LODWORD(v40) = 0;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v40);
  v21 = 0;
  if (v20)
  {
LABEL_17:
LABEL_18:
    v21 = a1[64] ^ 1;
  }

  return v21 & 1;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_anonymous_namespace_ *result, unsigned int *a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    result = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(result, 0, 0);
    if (result)
    {
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(v3, "@ref", a2);

      return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(v3);
    }
  }

  return result;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
{
  a1[34] = a2;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*(*a1 + 8))(a1);
  re::TypeRegistry::typeID(&v13, a1[34], (a1 + 1));
  if (v13)
  {
    v3 = a1[34];
    v9 = v13;
    re::TypeRegistry::attributesByAttributeType(v3, &v9, &v10);
    if (v11)
    {
      v4 = 48 * v11;
      v5 = (v12 + 40);
      do
      {
        v8 = *(v5 - 3);
        v6 = *v5;
        v5 += 6;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v8, v6);
        v4 -= 48;
      }

      while (v4);
    }

    if (v10 && v12)
    {
      (*(*v10 + 40))();
    }
  }

  result = (*(*a1 + 4))(a1);
  *(a1 + 70) = *(a1[34] + 6);
  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D195A0;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D195A0;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
{
  *(a1 + 337) = 0;
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v19 = *(a1 + 272);
  v27 = 0x258C98EAAF29A10ALL;
  v28 = "CallbackSerializerAttribute";
  v20 = re::TypeRegistry::typeID(&v31, v19, &v27);
  if (v27)
  {
    if (v27)
    {
    }
  }

  if (v31)
  {
    v21 = *(a1 + 272);
    v26 = v31;
    re::TypeRegistry::attributesByAttributeType(v21, &v26, &v27);
    if (v29)
    {
      v22 = 48 * v29;
      v23 = (v30 + 16);
      do
      {
        v24 = *v23;
        v23 += 3;
        v25 = v24;
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
        v22 -= 48;
      }

      while (v22);
    }

    if (v27)
    {
      if (v30)
      {
        (*(*v27 + 40))();
      }
    }
  }
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a1 + 488);
  if (!v14)
  {
    if (a7)
    {
      v15 = 0;
    }

    else
    {
      v15 = a4;
    }

    v16 = **(a5 + 2);
    *&v20 = *a5;
    *(&v20 + 1) = v16;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v15, &v20);
  }

  v17 = (*(*a1 + 80))(a1, a5);
  if (v17)
  {
    result = v17(a1, a2, a3, a4, a5, a6, a7);
    if (!v14 && *(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }
  }

  else
  {
    v19 = re::TypeInfo::name(a5);
    return 0;
  }

  return result;
}

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
    if (v9 >= 2)
    {
      if (v9 != 2)
      {
        re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Invalid PointerSharing type.", "!Unreachable code", "doResolveSerializeFunc", 84);
        result = _os_crash("assertion failure: (!Unreachable code) Invalid PointerSharing type.");
        __break(1u);
        return result;
      }

      re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) External references are not supported by the SerializerV1.", "!Unreachable code", "doResolveSerializeFunc", 82);
      _os_crash("assertion failure: (!Unreachable code) External references are not supported by the SerializerV1.");
      __break(1u);
      goto LABEL_9;
    }
  }

  return v7;
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1, double a2)
{
  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
{
  v14 = (*(*a1 + 80))(a1, a5);
  if (v14)
  {

    return v14(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    v16 = re::TypeInfo::name(a5);
    return 0;
  }
}

uint64_t (*re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, int, int, int, re *this, re::TypeInfo *)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D19608;
  re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

uint64_t re::serializeType<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, const char *a2, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7)
{
  v224 = *MEMORY[0x1E69E9840];
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
    goto LABEL_361;
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
    v33 = re::TypeInfo::name(this)[1];
    v34 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    if (v34)
    {
      v35 = *(v34 + 16);
    }

    else
    {
      v35 = 0xFFFFFFFFLL;
    }

    v52 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v52)
    {
      v53 = *(v52 + 16);
    }

    else
    {
      v53 = 0xFFFFFFFFLL;
    }

    v197 = v35;
    v200 = v53;
    v194 = v33;
    v23 = "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.";
    goto LABEL_94;
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
          goto LABEL_88;
        }

        if (this == a6)
        {
          goto LABEL_257;
        }

        if (*this == *a6)
        {
          v68 = **(this + 2);
          v69 = **(a6 + 2);
          if (v68 == v69 && WORD1(v68) == WORD1(v69) && ((v69 ^ v68) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_128;
          }

          v24 = 2;
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, a3))
          {
            goto LABEL_128;
          }

          v24 = *(this + 12);
        }

        if (v24 != *(a6 + 12))
        {
          goto LABEL_361;
        }

        v70 = re::TypeInfo::name(this);
        v71 = re::TypeInfo::name(a6);
        if (!re::StringID::operator==(v70, v71))
        {
          goto LABEL_361;
        }

LABEL_128:
        if (*this != *a6)
        {
          v72 = !re::areSameTranslatedVersion(this, a6, a3);
          goto LABEL_258;
        }

        v145 = **(this + 2);
        v146 = **(a6 + 2);
        if (v145 != v146 || WORD1(v145) != WORD1(v146) || ((v146 ^ v145) & 0xFFFFFF00000000) != 0)
        {
          v72 = 1;
          goto LABEL_258;
        }

LABEL_257:
        v72 = 0;
LABEL_258:
        if (a7)
        {
          __dst.n128_u64[0] = 0;
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), a2, &__dst))
          {
            goto LABEL_362;
          }
        }

        else
        {
          if (*(*(this + 2) + 8) >= 9u)
          {
            v194 = re::TypeInfo::name(this)[1];
            v197 = *(*(this + 2) + 8);
            v23 = "Enum type %s has invalid size: %zu bytes";
            goto LABEL_94;
          }

          EnumConstantIndex = re::internal::getEnumConstantIndex(this, a4, a3);
          if ((EnumConstantIndex & 0x80000000) != 0)
          {
            __dst.n128_u64[0] = 0;
            memcpy(&__dst, a4, *(*(this + 2) + 8));
            v194 = __dst.n128_u64[0];
            v197 = re::TypeInfo::name(this)[1];
            v23 = "Value %zu is not a valid enum constant of %s.";
            goto LABEL_94;
          }

          v148 = EnumConstantIndex;
          if (v72)
          {
            v149 = *(*a6 + 856);
            if (!v149 || (v150 = re::internal::TypeTranslationTable::translateRuntimeEnum(v149, this, v148, a6)) == 0)
            {
              v151 = re::TypeInfo::enumConstants(this);
              v153 = v148;
              if (v152 > v148)
              {
                v194 = *(v151 + 24 * v148 + 16);
                v197 = re::TypeInfo::name(a6)[1];
                v23 = "Runtime enum constant %s does not exist in serialized type %s.";
                goto LABEL_94;
              }

LABEL_404:
              re::internal::assertLog(6, v152, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v153, v152);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v196, v199);
              __break(1u);
            }
          }

          else
          {
            v159 = re::TypeInfo::enumConstants(this);
            v161 = v148;
            if (v160 <= v148)
            {
LABEL_403:
              re::internal::assertLog(6, v160, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v161, v160);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v195, v198);
              __break(1u);
              goto LABEL_404;
            }

            if (!v159)
            {
              goto LABEL_362;
            }

            v150 = v159 + 24 * v148;
          }

          v162 = *(v150 + 16);
          __dst.n128_u64[0] = strlen(v162);
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 3), a2, &__dst))
          {
            goto LABEL_362;
          }

          re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString((a1 + 3), v162);
        }

        goto LABEL_390;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v94 = **(this + 2);
          v95 = **(a6 + 2);
          if (v94 != v95)
          {
            goto LABEL_361;
          }

          v17 = WORD1(v94) == WORD1(v95);
          v96 = (v95 ^ v94) & 0xFFFFFF00000000;
          if (!v17 || v96 != 0)
          {
            goto LABEL_361;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_361;
        }
      }

      v36 = re::TypeInfo::name(this);
      v37 = *v36 >> 1;
      if (v37 <= 0x16749DFF02)
      {
        if (*v36 >> 1 <= 0x685847B)
        {
          if (*v36 >> 1 > 0x2E9355)
          {
            if (v37 == 3052374)
            {

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar((a1 + 3), a2, a4);
            }

            if (v37 != 3327612)
            {
              if (v37 == 97526364)
              {

                return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>((a1 + 3), a2, a4);
              }

              goto LABEL_382;
            }

LABEL_297:

            return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>((a1 + 3), a2, a4);
          }

          if (v37 != 104431)
          {
            if (v37 == 3029738)
            {

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool((a1 + 3), a2, a4);
            }

            goto LABEL_382;
          }

LABEL_319:

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>((a1 + 3), a2, a4);
        }

        if (*v36 >> 1 <= 0xB9708BDD)
        {
          if (v37 != 109413500)
          {
            if (v37 == 2969009105)
            {

              return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>((a1 + 3), a2, a4);
            }

            goto LABEL_382;
          }

          goto LABEL_322;
        }

        if (v37 == 3111160798)
        {

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>((a1 + 3), a2, a4);
        }

        if (v37 != 3393056694)
        {
          if (v37 != 0x16749D2549)
          {
            goto LABEL_382;
          }

LABEL_322:

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>((a1 + 3), a2, a4);
        }

LABEL_310:

        return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), a2, a4);
      }

      if (*v36 >> 1 > 0x303EE88E58CLL)
      {
        if (*v36 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v37 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_316;
          }

          if (v37 != 0x3AFE951B1F1F3391)
          {
            if (v37 != 0x412A40E9CB79BA35)
            {
              goto LABEL_382;
            }

            goto LABEL_310;
          }

          goto LABEL_313;
        }

        if (v37 == 0x303EE88E58DLL)
        {
          goto LABEL_310;
        }

        if (v37 == 0x2710786C3AC82DA1)
        {
LABEL_307:

          return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>((a1 + 3), a2, a4);
        }
      }

      else
      {
        if (*v36 >> 1 > 0x18E6A9A092)
        {
          if (v37 != 0x18E6A9A093)
          {
            if (v37 != 0x303EE86A734)
            {
              if (v37 != 0x303EE8780EELL)
              {
                goto LABEL_382;
              }

LABEL_316:

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>((a1 + 3), a2, a4);
            }

LABEL_313:

            return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>((a1 + 3), a2, a4);
          }

          goto LABEL_307;
        }

        if (v37 == 0x16749DFF03)
        {
          goto LABEL_319;
        }

        if (v37 == 0x16749F63A2)
        {
          goto LABEL_297;
        }
      }

LABEL_382:
      v194 = re::TypeInfo::name(this)[1];
      v23 = "Unsupported basic type %s.";
      goto LABEL_94;
    }

    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_88;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v73 = **(this + 2);
          v74 = **(a6 + 2);
          if (v73 == v74)
          {
            v17 = WORD1(v73) == WORD1(v74);
            v75 = (v74 ^ v73) & 0xFFFFFF00000000;
            if (v17 && v75 == 0)
            {
              goto LABEL_138;
            }
          }
        }

        else if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_138;
        }

        if (*(a6 + 12) != 4)
        {
          goto LABEL_361;
        }

        v77 = *(this + 2);
        v78 = *(a6 + 2);
        v79 = *(v78 + 92) & 0xFFFFFF;
        if ((*(v77 + 92) & 0xFFFFFF) != 0)
        {
          if (!v79)
          {
            goto LABEL_361;
          }
        }

        else if (v79 || *(v77 + 96) != *(v78 + 96))
        {
          goto LABEL_361;
        }
      }

LABEL_138:
      if (a7)
      {
        v80 = a1[34];
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
        re::internal::translateType(&v219, v80, v211);
        v81 = (*(*a1 + 80))(a1, &v219);
        if (!v81)
        {
          goto LABEL_228;
        }

        v82 = v81;
        v83 = *(a6 + 2);
        v84 = *(v83 + 92) & 0xFFFFFF;
        if (v84)
        {
          v85 = 0;
          v86 = 8;
        }

        else
        {
          v85 = *(v83 + 96);
          v86 = 4;
        }

        __dst.n128_u64[0] = v85;
        if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, &__dst, v86))
        {
          goto LABEL_362;
        }

        if (v84)
        {
          v154 = v85 == 0;
        }

        else
        {
          v154 = 1;
        }

        v155 = v154;
        if (!v154)
        {
          v210[0] = 0;
          v210[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, 0, v210);
        }

        for (; v85; --v85)
        {
          v82(a1, 0, 0, 0, &v219, &v219, 1);
        }

        if (v155)
        {
          goto LABEL_340;
        }
      }

      else
      {
        re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
        re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
        re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
        re::TypeInfo::TypeInfo(&__dst, this);
        v87 = (*(*a1 + 80))(a1, &v219);
        if (!v87)
        {
          goto LABEL_228;
        }

        v88 = v87;
        v89 = re::ArrayAccessor::size(&__dst, a4);
        v208[0] = v89;
        v90 = *(*(this + 2) + 92) & 0xFFFFFF;
        if (v90)
        {
          v91 = 8;
        }

        else
        {
          v91 = 4;
        }

        if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, v208, v91))
        {
          goto LABEL_362;
        }

        if (v90)
        {
          v92 = v89 == 0;
        }

        else
        {
          v92 = 1;
        }

        v93 = v92;
        if (v92)
        {
          if (!v89)
          {
            goto LABEL_340;
          }
        }

        else
        {
          v163 = *a4;
          v209[0] = 0;
          v209[1] = 0xFFFFFFFFLL;
          (*(*a1 + 16))(a1, v163, v209);
        }

        v164 = 0;
        do
        {
          v165 = re::ArrayAccessor::elementAt(&__dst, a4, v164);
          v88(a1, 0, 0, v165, &v219, v211, 0);
          ++v164;
        }

        while (v89 != v164);
        if (v93)
        {
          goto LABEL_340;
        }
      }

      (*(*a1 + 24))(a1);
      goto LABEL_340;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v98 = **(this + 2);
        v99 = **(a6 + 2);
        if (v98 == v99 && WORD1(v98) == WORD1(v99) && ((v99 ^ v98) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_169;
        }

        v39 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_169;
        }

        v39 = *(this + 12);
      }

      if (v39 != *(a6 + 12))
      {
        goto LABEL_361;
      }
    }

LABEL_169:
    if (a7)
    {
      __dst.n128_u8[0] = 0;
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, &__dst);
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
      re::TypeInfo::TypeInfo(&__dst, this);
      v100 = (*(v215 + 88))(a4);
      LOBYTE(v210[0]) = v100 != 0;
      v101 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional((a1 + 3), a2, v210);
      if (v100)
      {
        v102 = (*(v215 + 88))(a4, v101);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, v102, &v219, v211, 0);
        }
      }
    }

    goto LABEL_390;
  }

  if (*(this + 12) > 6u)
  {
    if (v22 == 7)
    {
      if (this != a6)
      {
        if (*this == *a6)
        {
          v103 = **(this + 2);
          v104 = **(a6 + 2);
          if (v103 != v104)
          {
            goto LABEL_361;
          }

          v17 = WORD1(v103) == WORD1(v104);
          v105 = (v104 ^ v103) & 0xFFFFFF00000000;
          if (!v17 || v105 != 0)
          {
            goto LABEL_361;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_361;
        }
      }

      v40 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), a2, 16);
      if (a7)
      {
        if (!v40)
        {
LABEL_362:
          v51 = 0;
          return v51 & 1;
        }

        v219 = 0;
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", &v219);
        if (*(*(a6 + 2) + 96))
        {
          re::TypeInfo::unionMember(&__dst, a6, 0);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, 0, &__dst, &__dst, 1);
          }
        }
      }

      else
      {
        if (!v40)
        {
          goto LABEL_362;
        }

        re::TypeInfo::TypeInfo(&__dst, this);
        Tag = re::UnionAccessor::readTag(&__dst, a4);
        *v211 = Tag;
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>((a1 + 3), "tag", v211);
        if (Tag < *(*(this + 2) + 96))
        {
          re::TypeInfo::unionMember(&v219, this, Tag);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, a4, &v219, &v219, 0);
          }
        }
      }

LABEL_389:
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 3));
      goto LABEL_390;
    }

    if (v22 != 8)
    {
      if (v22 == 9)
      {
        v194 = re::TypeInfo::name(this)[1];
        v23 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_94:
        goto LABEL_362;
      }

LABEL_88:
      v194 = *(this + 12);
      v23 = "Invalid type category. Value = %d";
      goto LABEL_94;
    }

    if (!a7)
    {
      goto LABEL_82;
    }

    if (*(*(this + 2) + 49))
    {
      v62 = a1[34];
      *v211 = 0x2686EB529B3EE220;
      *&v211[8] = "DynamicString";
      re::TypeRegistry::typeInfo(&__dst, v62, v211);
      v63 = re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
      if (v211[0])
      {
        if (v211[0])
        {
        }
      }

      v64 = &v219;
      v65 = &v219;
      v66 = a1;
      v67 = a2;
    }

    else
    {
      v42 = re::TypeInfo::name(this);
      if ((*v42 & 0xFFFFFFFFFFFFFFFELL) != 0x2686EB529B3EE220 || (v44 = v42[1], v44 != "DynamicString") && strcmp(v44, "DynamicString"))
      {
LABEL_82:
        v45 = *(this + 2);
        v46 = *(v45 + 48);
        if ((v46 & 0x10) == 0 && *(this + 12) == 8)
        {
          v47 = *(v45 + 160);
          if (v47)
          {
            v48 = *this;
            v49 = *a6;
            __dst.n128_u64[0] = &unk_1F5D19670;
            __dst.n128_u64[1] = a1;
            *&v215 = v48;
            *(&v215 + 1) = v49;
            v216 = 0uLL;
            LODWORD(v217) = 1;
            *(&v217 + 1) = 0;
            *&v218 = 0;
            v219 = a2;
            LODWORD(v220) = a3;
            BYTE4(v220) = 0;
            v47(&__dst, a4, v50);
            v51 = *(a1 + 64) ^ 1;
            __dst.n128_u64[0] = &unk_1F5D19670;
            if (v216)
            {
              if ((v217 & 1) == 0)
              {
                (*(*v216 + 40))();
              }
            }

            return v51 & 1;
          }
        }

        if ((v46 & 4) == 0)
        {
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 3), a2, 0))
          {
            goto LABEL_362;
          }

          v54 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
          if (!v54 || *(v54 + 16) >= 2u)
          {
            v56 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
            if (v56)
            {
              v57 = *(v56 + 16);
            }

            else
            {
              v57 = -1;
            }

            __dst.n128_u32[0] = v57;
            re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>((a1 + 3), "@version", &__dst);
          }

          if (this == a6)
          {
            goto LABEL_375;
          }

          if (*this == *a6)
          {
            v178 = **(this + 2);
            v179 = **(a6 + 2);
            if (v178 == v179 && WORD1(v178) == WORD1(v179) && ((v179 ^ v178) & 0xFFFFFF00000000) == 0)
            {
              goto LABEL_375;
            }
          }

          else if (re::areSameTranslatedVersion(this, a6, v55))
          {
LABEL_375:
            re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
            goto LABEL_389;
          }

          if (*(this + 12) == *(a6 + 12))
          {
            re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
          }

          else
          {
            v180 = re::TypeInfo::name(this)[1];
            v181 = re::TypeInfo::name(a6);
          }

          goto LABEL_389;
        }

        re::TypeMemberCollection::TypeMemberCollection(&__dst, *this, v45);
        re::TypeMemberCollection::operator[](&__dst, 0, v211);
        v115 = *(*&v211[16] + 24);
        re::TypeRegistry::typeInfo(*v211, **&v211[16], &__dst);
        re::TypeInfo::TypeInfo(v210, &__dst.n128_i64[1]);
        if (this == a6)
        {
          goto LABEL_201;
        }

        if (*this == *a6)
        {
          v156 = **(this + 2);
          v157 = *(a6 + 2);
          v158 = *v157;
          if (v156 == *v157 && WORD1(v156) == WORD1(v158) && ((v158 ^ v156) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_201;
          }
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, v116))
          {
LABEL_201:
            if (a1[8])
            {
              goto LABEL_362;
            }

            v117 = (*(*a1 + 72))(a1, a2, a3, a4 + v115, v210, v210, a7);
LABEL_369:
            v51 = v117;
            return v51 & 1;
          }

          v157 = *(a6 + 2);
        }

        if (*(v157 + 96) == 1)
        {
          v174 = re::TypeMemberCollection::TypeMemberCollection(&v219, *a6, v157);
          re::TypeMemberCollection::operator[](v174, 0, v208);
          re::TypeRegistry::typeInfo(v208[0], *v208[2], &__dst);
          re::TypeInfo::TypeInfo(v209, &__dst.n128_i64[1]);
          if (a1[8])
          {
            goto LABEL_362;
          }

          v117 = (*(*a1 + 72))(a1, a2, a3, a4 + v115, v210, v209, a7);
          goto LABEL_369;
        }

LABEL_361:
        goto LABEL_362;
      }

      v66 = a1;
      v67 = a2;
      v64 = this;
      v65 = this;
    }

    re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v66, v67, v43, 0, v64, v65, 1);
    goto LABEL_390;
  }

  if (v22 == 5)
  {
    if (this != a6)
    {
      if (*this == *a6)
      {
        v107 = **(this + 2);
        v108 = **(a6 + 2);
        if (v107 != v108 || WORD1(v107) != WORD1(v108) || ((v108 ^ v107) & 0xFFFFFF00000000) != 0)
        {
          v41 = 5;
LABEL_186:
          if (v41 != *(a6 + 12))
          {
            goto LABEL_361;
          }
        }
      }

      else if (!re::areSameTranslatedVersion(this, a6, a3))
      {
        v41 = *(this + 12);
        goto LABEL_186;
      }
    }

    if (a7)
    {
      v109 = a1[34];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
      re::internal::translateType(&v219, v109, v211);
      if ((*(*a1 + 80))(a1, &v219))
      {
        __dst.n128_u64[0] = 0;
        v51 = 0;
        if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, &__dst, 0))
        {
          return v51 & 1;
        }

        goto LABEL_340;
      }

LABEL_228:
      v124 = &v219;
LABEL_229:
      re::TypeInfo::name(v124);
      goto LABEL_362;
    }

    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
    re::TypeInfo::TypeInfo(&__dst, this);
    v110 = (*(*a1 + 80))(a1, &v219);
    if (!v110)
    {
      goto LABEL_228;
    }

    v111 = v110;
    v112 = (*(v215 + 88))(a4);
    v209[0] = v112;
    v51 = 0;
    if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray((a1 + 3), a2, v209, 0))
    {
      return v51 & 1;
    }

    if (*(v215 + 104))
    {
      if (v112)
      {
        for (i = 0; i != v112; ++i)
        {
          v114 = (*(v215 + 104))(a4, i);
          v111(a1, 0, 0, v114, &v219, v211, 0);
        }
      }
    }

    else
    {
      v170 = *(v215 + 112);
      if (!v170 || !*(v215 + 120) || !*(v215 + 128))
      {
        re::TypeInfo::TypeInfo(v210, &__dst);
        v194 = re::TypeInfo::name(v210)[1];
        v23 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_94;
      }

      v171 = v170(a4, a1[7]);
      v172 = (*(v215 + 120))();
      if (v172)
      {
        v173 = v172;
        do
        {
          v111(a1, 0, 0, v173, &v219, v211, 0);
          v173 = (*(v215 + 120))(v171);
        }

        while (v173);
      }

      (*(v215 + 128))(v171, a1[7]);
    }

LABEL_340:
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray((a1 + 3));
    goto LABEL_390;
  }

  if (v22 != 6)
  {
    goto LABEL_88;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  v25 = re::TypeInfo::TypeInfo(&v219, &__dst.n128_i64[1]);
  v27 = re::TypeInfo::name(v25);
  v28 = BYTE4(v220);
  if (BYTE4(v220) != 1)
  {
LABEL_112:
    if (v28 == 8)
    {
      v59 = *v27 >> 1;
      if (v59 == 0x22C6ED80D0CLL)
      {
        v118 = v27[1];
        v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v118 == "StringID")
        {
          goto LABEL_368;
        }

        v119 = strcmp(v118, "StringID");
        v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v119)
        {
          goto LABEL_368;
        }
      }

      else if (v59 == 0x134375A94D9F7110)
      {
        v60 = v27[1];
        v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v60 == "DynamicString")
        {
          goto LABEL_368;
        }

        v61 = strcmp(v60, "DynamicString");
        v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v61)
        {
          goto LABEL_368;
        }
      }
    }

    goto LABEL_215;
  }

  if (!re::TypeInfo::isInteger(&v219))
  {
    v28 = BYTE4(v220);
    goto LABEL_112;
  }

  v29 = *v27 >> 1;
  if (v29 > 0x303EE8780EDLL)
  {
    if (v29 == 0x303EE8780EELL)
    {
      v167 = v27[1];
      v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (v167 == "uint32_t")
      {
        goto LABEL_368;
      }

      v168 = strcmp(v167, "uint32_t");
      v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (!v168)
      {
        goto LABEL_368;
      }

      goto LABEL_347;
    }

    if (v29 != 0x303EE88E58DLL)
    {
      goto LABEL_347;
    }

    v143 = v27[1];
    v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v143 == "uint64_t")
    {
      goto LABEL_368;
    }

    v144 = "uint64_t";
  }

  else
  {
    if (v29 != 3393056694)
    {
      if (v29 == 0x303EE86A734)
      {
        v30 = v27[1];
        v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (v30 == "uint16_t")
        {
          goto LABEL_368;
        }

        v32 = strcmp(v30, "uint16_t");
        v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (!v32)
        {
          goto LABEL_368;
        }
      }

      goto LABEL_347;
    }

    v143 = v27[1];
    v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v143 == "size_t")
    {
      goto LABEL_368;
    }

    v144 = "size_t";
  }

  v166 = strcmp(v143, v144);
  v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
  if (!v166)
  {
    goto LABEL_368;
  }

LABEL_347:
  __dst.n128_u64[0] = 0x18E6A9A093;
  __dst.n128_u64[1] = "uint8_t";
  v169 = re::StringID::operator==(v27, &__dst);
  v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
  if (v169)
  {
    goto LABEL_368;
  }

  __dst.n128_u64[0] = 0x16749F63A2;
  __dst.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v27, &__dst))
  {
    v117 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, this, a6, a7);
    goto LABEL_369;
  }

  *v211 = 3327612;
  *&v211[8] = "long";
  v175 = re::StringID::operator==(v27, v211);
  v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
  if (v175 || (__dst.n128_u64[0] = 104431, __dst.n128_u64[1] = "int", v176 = re::StringID::operator==(v27, &__dst), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v176) || (__dst.n128_u64[0] = 109413500, __dst.n128_u64[1] = "short", v177 = re::StringID::operator==(v27, &__dst), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v177))
  {
LABEL_368:
    v117 = v31(a1, a2, a3, a4, this, a6, a7);
    goto LABEL_369;
  }

LABEL_215:
  if (this != a6)
  {
    if (*this == *a6)
    {
      v120 = **(this + 2);
      v121 = **(a6 + 2);
      if (v120 == v121 && WORD1(v120) == WORD1(v121) && ((v121 ^ v120) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_223;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v26))
    {
      goto LABEL_223;
    }

    if (*(this + 12) != *(a6 + 12))
    {
      goto LABEL_361;
    }
  }

LABEL_223:
  if (a7)
  {
    v122 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v211, &__dst.n128_i64[1]);
    re::internal::translateType(&v219, v122, v211);
    v123 = a1[34];
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
    re::TypeInfo::TypeInfo(v210, &__dst.n128_i64[1]);
    re::internal::translateType(v211, v123, v210);
    if ((*(*a1 + 80))(a1, &v219))
    {
      if ((*(*a1 + 80))(a1, v211))
      {
        __dst.n128_u64[0] = 0;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, &__dst))
        {
          goto LABEL_394;
        }

        goto LABEL_362;
      }

      v124 = v211;
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v210, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v209, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
  re::TypeInfo::TypeInfo(v208, &__dst.n128_i64[1]);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &__dst);
  re::TypeInfo::TypeInfo(v206, &__dst.n128_i64[1]);
  re::TypeInfo::TypeInfo(v204, this);
  v125 = (*(*a1 + 80))(a1, v210);
  if (!v125)
  {
    v124 = v210;
    goto LABEL_229;
  }

  v126 = v125;
  v127 = (*(*a1 + 80))(a1, v209);
  if (!v127)
  {
    v124 = v209;
    goto LABEL_229;
  }

  v128 = v127;
  v129 = (*(v205 + 96))(a4);
  v203 = v129;
  if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary((a1 + 3), a2, &v203))
  {
    goto LABEL_362;
  }

  if (!v129)
  {
    goto LABEL_394;
  }

  v130 = *this;
  __dst.n128_u64[0] = 0x449AD97C4B77BED4;
  __dst.n128_u64[1] = "_CompareFunc";
  v131 = re::TypeRegistry::typeID(v202, v130, &__dst);
  if (__dst.n128_u8[0])
  {
    if (__dst.n128_u8[0])
    {
    }
  }

  if (!v202[0] || (v132 = *v210[2], __dst.n128_u64[0] = v202[1], __dst.n128_u64[1] = v132, LODWORD(v215) = -1, (v133 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v210[0] + 768, &__dst)) == 0) || (v134 = *v133) == 0)
  {
    v182 = (*(v205 + 120))(a4, a1[7]);
    (*(v205 + 128))();
    do
    {
      v183 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
      v184 = (*(v205 + 136))(v182, v183);
      v126(a1, "key", 0, v184, v210, v208, 0);
      v185 = (*(v205 + 144))(v182);
      v128(a1, "value", 0, v185, v209, v206, 0);
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
      (*(v205 + 128))(v182);
      --v129;
    }

    while (v129);
    (*(v205 + 152))(v182, a1[7]);
    goto LABEL_394;
  }

  v223 = 0;
  v220 = 0;
  v221 = 0;
  v222 = 0;
  v219 = a1[7];
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v219, v129);
  ++v222;
  v135 = (*(v205 + 120))(a4, a1[7]);
  if ((*(v205 + 128))())
  {
    do
    {
      v136 = (*(v205 + 136))(v135);
      v137 = (*(v205 + 144))(v135);
      __dst.n128_u64[0] = v136;
      __dst.n128_u64[1] = v137;
      v138 = re::DynamicArray<re::RigNodeConstraint>::add(&v219, &__dst);
    }

    while (((*(v205 + 128))(v135, v138) & 1) != 0);
  }

  (*(v205 + 152))(v135, a1[7]);
  __dst.n128_u64[0] = v134;
  std::__sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,re::Pair<void const*,void *,true> *,BOOL re::serializeDictionary<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<void const*,void *,true> const&,re::Pair<void const*,void *,true> const&)#1}>(v223, &v223[16 * v221], &__dst);
  v139 = 0;
  for (j = 0; j != v129; ++j)
  {
    v141 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry((a1 + 3), 0);
    if (v221 <= j)
    {
      v207 = 0;
      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      __dst = 0u;
      v186 = MEMORY[0x1E69E9C10];
      v187 = v221;
      v188 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v211 = 136315906;
      *&v211[4] = "operator[]";
      *&v211[12] = 1024;
      if (v188)
      {
        v189 = 3;
      }

      else
      {
        v189 = 2;
      }

      *&v211[14] = 789;
      *&v211[18] = 2048;
      *&v211[20] = j;
      v212 = 2048;
      v213 = v187;
      _os_log_send_and_compose_impl(v189, &v207, &__dst, 80, &dword_1E1C61000, v186, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v211, 38, v200, v201);
      _os_crash_msg();
      __break(1u);
LABEL_399:
      v207 = 0;
      v217 = 0u;
      v218 = 0u;
      v215 = 0u;
      v216 = 0u;
      __dst = 0u;
      v190 = MEMORY[0x1E69E9C10];
      v191 = v142;
      v192 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v211 = 136315906;
      *&v211[4] = "operator[]";
      *&v211[12] = 1024;
      if (v192)
      {
        v193 = 3;
      }

      else
      {
        v193 = 2;
      }

      *&v211[14] = 789;
      *&v211[18] = 2048;
      *&v211[20] = j;
      v212 = 2048;
      v213 = v191;
      _os_log_send_and_compose_impl(v193, &v207, &__dst, 80, &dword_1E1C61000, v190, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v211, 38, v200, v201);
      _os_crash_msg();
      __break(1u);
      goto LABEL_403;
    }

    (v126)(a1, "key", 0, *&v223[v139], v210, v208, 0, v141);
    v142 = v221;
    if (v221 <= j)
    {
      goto LABEL_399;
    }

    v128(a1, "value", 0, *&v223[v139 + 8], v209, v206, 0);
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((a1 + 3));
    v139 += 16;
  }

  if (v219 && v223)
  {
    (*(*v219 + 40))(v219);
  }

LABEL_394:
  re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary((a1 + 3));
LABEL_390:
  v51 = *(a1 + 64) ^ 1;
  return v51 & 1;
}

uint64_t re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, const char *a2, float *a3)
{
  v13 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v13);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabsf(v6) == INFINITY)
    {
      v8 = "-Infinity";
      if (v6 > 0.0)
      {
        v8 = "Infinity";
      }

      v12 = v8;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(v7, &v12);
    }

    else
    {
      v9 = v6;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v9);
    }

    v10 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v10 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, const char *a2, double *a3)
{
  v12 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v12);
    }

    v6 = *a3;
    v7 = *(a1 + 168);
    if (fabs(v6) == INFINITY)
    {
      v8 = "-Infinity";
      if (v6 > 0.0)
      {
        v8 = "Infinity";
      }

      v11 = v8;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(v7, &v11);
    }

    else
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(a1 + 168));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteDouble(v7, v6);
    }

    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v50 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v44), re::TypeInfo::TypeInfo(v43, &v45), v43[12] != 1) || !re::TypeInfo::isInteger(v43))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v43, &v45);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v42, &v45);
  re::TypeInfo::TypeInfo(v40, this);
  v18 = (*(*a1 + 80))(a1, v43);
  if (!v18)
  {
    v38 = re::TypeInfo::name(v43);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v41 + 96))(a4);
    if (v22)
    {
      v48 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v44 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v44, v22);
      ++v47;
      v23 = (*(v41 + 120))(a4, v17);
      if ((*(v41 + 128))())
      {
        do
        {
          v24 = (*(v41 + 136))(v23);
          v25 = (*(v41 + 144))(v23);
          v49[0].n128_u64[0] = v24;
          v49[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v44, v49);
        }

        while (((*(v41 + 128))(v23, v26) & 1) != 0);
      }

      (*(v41 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v46);
      if (v46)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned long long const*,void *,true> const&,re::Pair<unsigned long long const*,void *,true> const&)#1} &,re::Pair<unsigned long long const*,void *,true>*,false>(v48, &v48[v46], v29, 1, v27);
      if (v46)
      {
        v31 = v48;
        v32 = &v48[v46];
        do
        {
          v33 = v31->n128_u64[1];
          v34 = *v31->n128_u64[0];
          if (HIDWORD(v34))
          {
            if (v34 <= 0x2540BE3FFLL)
            {
              v36 = v49;
            }

            else
            {
              v36 = std::__itoa::__base_10_u32[abi:nn200100](v49, v34 / 0x2540BE400);
              v34 %= 0x2540BE400uLL;
            }

            v36->n128_u16[0] = std::__itoa::__digits_base_10[v34 / 0x5F5E100];
            v37 = v34 % 0x5F5E100;
            v36->n128_u16[1] = std::__itoa::__digits_base_10[v37 / 0xF4240uLL];
            v37 %= 0xF4240u;
            v36->n128_u16[2] = std::__itoa::__digits_base_10[v37 / 0x2710uLL];
            v37 %= 0x2710u;
            v36->n128_u16[3] = std::__itoa::__digits_base_10[v37 / 0x64u];
            v36->n128_u16[4] = std::__itoa::__digits_base_10[v37 % 0x64u];
            v35 = &v36->n128_i8[10];
          }

          else
          {
            v35 = std::__itoa::__base_10_u32[abi:nn200100](v49, *v31->n128_u64[0]);
          }

          *v35 = 0;
          v19(a1, v49, 0, v33, v43, v42, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v44 && v48)
      {
        (*(*v44 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v41), re::TypeInfo::TypeInfo(v40, &v42), v40[12] != 1) || !re::TypeInfo::isInteger(v40))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v40, &v42);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v39, &v42);
  re::TypeInfo::TypeInfo(v37, this);
  v18 = (*(*a1 + 80))(a1, v40);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v40);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v38 + 96))(a4);
    if (v22)
    {
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v41 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v41, v22);
      ++v44;
      v23 = (*(v38 + 120))(a4, v17);
      if ((*(v38 + 128))())
      {
        do
        {
          v24 = (*(v38 + 136))(v23);
          v25 = (*(v38 + 144))(v23);
          v46[0].n128_u64[0] = v24;
          v46[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v41, v46);
        }

        while (((*(v38 + 128))(v23, v26) & 1) != 0);
      }

      (*(v38 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v43);
      if (v43)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned int const*,void *,true> const&,re::Pair<unsigned int const*,void *,true> const&)#1} &,re::Pair<unsigned int const*,void *,true>*,false>(v45, &v45[v43], v29, 1, v27);
      if (v43)
      {
        v31 = v45;
        v32 = &v45[v43];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v46, *v33) = 0;
          v19(a1, v46, 0, v34, v40, v39, 0);
        }

        while (v31 != v32);
      }

      if (v41 && v45)
      {
        (*(*v41 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v41), re::TypeInfo::TypeInfo(v40, &v42), v40[12] != 1) || !re::TypeInfo::isInteger(v40))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v40, &v42);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v39, &v42);
  re::TypeInfo::TypeInfo(v37, this);
  v18 = (*(*a1 + 80))(a1, v40);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v40);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v38 + 96))(a4);
    if (v22)
    {
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v41 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v41, v22);
      ++v44;
      v23 = (*(v38 + 120))(a4, v17);
      if ((*(v38 + 128))())
      {
        do
        {
          v24 = (*(v38 + 136))(v23);
          v25 = (*(v38 + 144))(v23);
          v46[0].n128_u64[0] = v24;
          v46[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v41, v46);
        }

        while (((*(v38 + 128))(v23, v26) & 1) != 0);
      }

      (*(v38 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v43);
      if (v43)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned short const*,void *,true> const&,re::Pair<unsigned short const*,void *,true> const&)#1} &,re::Pair<unsigned short const*,void *,true>*,false>(v45, &v45[v43], v29, 1, v27);
      if (v43)
      {
        v31 = v45;
        v32 = &v45[v43];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v46, *v33) = 0;
          v19(a1, v46, 0, v34, v40, v39, 0);
        }

        while (v31 != v32);
      }

      if (v41 && v45)
      {
        (*(*v41 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v47 = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v41), re::TypeInfo::TypeInfo(v40, &v42), v40[12] != 1) || !re::TypeInfo::isInteger(v40))
  {
LABEL_32:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_29:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v40, &v42);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v41);
  re::TypeInfo::TypeInfo(v39, &v42);
  re::TypeInfo::TypeInfo(v37, this);
  v18 = (*(*a1 + 80))(a1, v40);
  if (!v18)
  {
    v35 = re::TypeInfo::name(v40);
    goto LABEL_32;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v38 + 96))(a4);
    if (v22)
    {
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v41 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v41, v22);
      ++v44;
      v23 = (*(v38 + 120))(a4, v17);
      if ((*(v38 + 128))())
      {
        do
        {
          v24 = (*(v38 + 136))(v23);
          v25 = (*(v38 + 144))(v23);
          v46[0].n128_u64[0] = v24;
          v46[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v41, v46);
        }

        while (((*(v38 + 128))(v23, v26) & 1) != 0);
      }

      (*(v38 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v43);
      if (v43)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<unsigned char const*,void *,true> const&,re::Pair<unsigned char const*,void *,true> const&)#1} &,re::Pair<unsigned char const*,void *,true>*,false>(v45, &v45[v43], v29, 1, v27);
      if (v43)
      {
        v31 = v45;
        v32 = &v45[v43];
        do
        {
          v33 = v31->n128_u64[0];
          v34 = v31->n128_u64[1];
          ++v31;
          *std::__itoa::__base_10_u32[abi:nn200100](v46, *v33) = 0;
          v19(a1, v46, 0, v34, v40, v39, 0);
        }

        while (v31 != v32);
      }

      if (v41 && v45)
      {
        (*(*v41 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_29;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v52[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v46), re::TypeInfo::TypeInfo(v45, &v47), v45[12] != 1) || !re::TypeInfo::isInteger(v45))
  {
LABEL_42:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_39:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v18 = (*(*a1 + 80))(a1, v45);
  if (!v18)
  {
    v40 = re::TypeInfo::name(v45);
    goto LABEL_42;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v43 + 96))(a4);
    if (v22)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v22);
      ++v49;
      v23 = (*(v43 + 120))(a4, v17);
      if ((*(v43 + 128))())
      {
        do
        {
          v24 = (*(v43 + 136))(v23);
          v25 = (*(v43 + 144))(v23);
          v51[0].n128_u64[0] = v24;
          v51[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, v51);
        }

        while (((*(v43 + 128))(v23, v26) & 1) != 0);
      }

      (*(v43 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<long long const*,void *,true> const&,re::Pair<long long const*,void *,true> const&)#1} &,re::Pair<long long const*,void *,true>*,false>(v50, &v50[v48], v29, 1, v27);
      if (v48)
      {
        v31 = v50;
        v32 = &v50[v48];
        do
        {
          v33 = *v31->n128_u64[0];
          if ((v33 & 0x8000000000000000) != 0)
          {
            v51[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v51[0].n128_u64 + 1);
          }

          else
          {
            v34 = v51;
          }

          v35 = v31->n128_u64[1];
          if (v52 - v34 > 19 || (v36 = (1233 * (64 - __clz(v33 | 1))) >> 12, v37 = v36 - (std::__itoa::__pow10_64[v36] > v33) + 1, v38 = v52, v52 - v34 >= v37))
          {
            if (HIDWORD(v33))
            {
              if (v33 > 0x2540BE3FFLL)
              {
                v34 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33 / 0x2540BE400);
                v33 %= 0x2540BE400uLL;
              }

              v34->n128_u16[0] = std::__itoa::__digits_base_10[v33 / 0x5F5E100];
              v39 = v33 % 0x5F5E100;
              v34->n128_u16[1] = std::__itoa::__digits_base_10[v39 / 0xF4240uLL];
              v39 %= 0xF4240u;
              v34->n128_u16[2] = std::__itoa::__digits_base_10[v39 / 0x2710uLL];
              v39 %= 0x2710u;
              v34->n128_u16[3] = std::__itoa::__digits_base_10[v39 / 0x64u];
              v34->n128_u16[4] = std::__itoa::__digits_base_10[v39 % 0x64u];
              v38 = &v34->n128_i8[10];
            }

            else
            {
              v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
            }
          }

          *v38 = 0;
          v19(a1, v51, 0, v35, v45, v44, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_39;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v51[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v45), re::TypeInfo::TypeInfo(v44, &v46), v44[12] != 1) || !re::TypeInfo::isInteger(v44))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v44, &v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, &v46);
  re::TypeInfo::TypeInfo(v41, this);
  v18 = (*(*a1 + 80))(a1, v44);
  if (!v18)
  {
    v39 = re::TypeInfo::name(v44);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v42 + 96))(a4);
    if (v22)
    {
      v49 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v45 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v45, v22);
      ++v48;
      v23 = (*(v42 + 120))(a4, v17);
      if ((*(v42 + 128))())
      {
        do
        {
          v24 = (*(v42 + 136))(v23);
          v25 = (*(v42 + 144))(v23);
          v50[0].n128_u64[0] = v24;
          v50[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v45, v50);
        }

        while (((*(v42 + 128))(v23, v26) & 1) != 0);
      }

      (*(v42 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v47);
      if (v47)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<int const*,void *,true> const&,re::Pair<int const*,void *,true> const&)#1} &,re::Pair<int const*,void *,true>*,false>(v49, &v49[v47], v29, 1, v27);
      if (v47)
      {
        v31 = v49;
        v32 = &v49[v47];
        do
        {
          v33 = *v31->n128_u64[0];
          if ((v33 & 0x80000000) != 0)
          {
            v50[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v50[0].n128_u64 + 1);
          }

          else
          {
            v34 = v50;
          }

          v35 = v31->n128_u64[1];
          if (v51 - v34 > 9 || (v36 = (1233 * (32 - __clz(v33 | 1))) >> 12, v37 = (((__PAIR64__(v36, v33) - std::__itoa::__pow10_32[v36]) >> 32) + 1), v38 = v51, v51 - v34 >= v37))
          {
            v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
          }

          *v38 = 0;
          v19(a1, v50, 0, v35, v44, v43, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v45 && v49)
      {
        (*(*v45 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v51[0] = *MEMORY[0x1E69E9840];
  if (this == a6)
  {
    goto LABEL_13;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_13;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_13;
  }

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v45), re::TypeInfo::TypeInfo(v44, &v46), v44[12] != 1) || !re::TypeInfo::isInteger(v44))
  {
LABEL_38:
    v21 = 0;
    return v21 & 1;
  }

LABEL_13:
  if (a7)
  {
LABEL_35:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v17 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v44, &v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, &v46);
  re::TypeInfo::TypeInfo(v41, this);
  v18 = (*(*a1 + 80))(a1, v44);
  if (!v18)
  {
    v39 = re::TypeInfo::name(v44);
    goto LABEL_38;
  }

  v19 = v18;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v21 = 0;
  if (v20)
  {
    v22 = (*(v42 + 96))(a4);
    if (v22)
    {
      v49 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v45 = v17;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v45, v22);
      ++v48;
      v23 = (*(v42 + 120))(a4, v17);
      if ((*(v42 + 128))())
      {
        do
        {
          v24 = (*(v42 + 136))(v23);
          v25 = (*(v42 + 144))(v23);
          v50[0].n128_u64[0] = v24;
          v50[0].n128_u64[1] = v25;
          v26 = re::DynamicArray<re::RigNodeConstraint>::add(&v45, v50);
        }

        while (((*(v42 + 128))(v23, v26) & 1) != 0);
      }

      (*(v42 + 152))(v23, v17);
      v28 = 126 - 2 * __clz(v47);
      if (v47)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<short const*,void *,true> const&,re::Pair<short const*,void *,true> const&)#1} &,re::Pair<short const*,void *,true>*,false>(v49, &v49[v47], v29, 1, v27);
      if (v47)
      {
        v31 = v49;
        v32 = &v49[v47];
        do
        {
          v33 = *v31->n128_u64[0];
          if ((v33 & 0x80000000) != 0)
          {
            v50[0].n128_u8[0] = 45;
            v33 = -v33;
            v34 = (v50[0].n128_u64 + 1);
          }

          else
          {
            v34 = v50;
          }

          v35 = v31->n128_u64[1];
          if (v51 - v34 > 9 || (v36 = (1233 * (32 - __clz(v33 | 1))) >> 12, v37 = (((__PAIR64__(v36, v33) - std::__itoa::__pow10_32[v36]) >> 32) + 1), v38 = v51, v51 - v34 >= v37))
          {
            v38 = std::__itoa::__base_10_u32[abi:nn200100](v34, v33);
          }

          *v38 = 0;
          v19(a1, v50, 0, v35, v44, v43, 0);
          ++v31;
        }

        while (v31 != v32);
      }

      if (v45 && v49)
      {
        (*(*v45 + 40))(v30);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_35;
  }

  return v21 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v44);
  re::TypeInfo::TypeInfo(v43, &v45);
  v19 = re::TypeInfo::name(v43);
  if (*v19 >> 1 != 0x22C6ED80D0CLL || (v20 = v19[1], v20 != "StringID") && strcmp(v20, "StringID"))
  {
LABEL_35:
    v25 = 0;
    return v25 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_33:
    v25 = *(a1 + 64) ^ 1;
    return v25 & 1;
  }

  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v43, &v45);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v42, &v45);
  re::TypeInfo::TypeInfo(v40, this);
  v22 = (*(*a1 + 80))(a1, v43);
  if (!v22)
  {
    v37 = re::TypeInfo::name(v43);
    goto LABEL_35;
  }

  v23 = v22;
  v24 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v25 = 0;
  if (v24)
  {
    v26 = (*(v41 + 96))(a4);
    if (v26)
    {
      v48 = 0;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v44 = v21;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v44, v26);
      ++v47;
      v27 = (*(v41 + 120))(a4, v21);
      if ((*(v41 + 128))())
      {
        do
        {
          v28 = (*(v41 + 136))(v27);
          v29 = (*(v41 + 144))(v27);
          v39.n128_u64[0] = v28;
          v39.n128_u64[1] = v29;
          v30 = re::DynamicArray<re::RigNodeConstraint>::add(&v44, &v39);
        }

        while (((*(v41 + 128))(v27, v30) & 1) != 0);
      }

      (*(v41 + 152))(v27, v21);
      v31 = 126 - 2 * __clz(v46);
      if (v46)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::DynamicString const*,void *,true> const&,re::Pair<re::DynamicString const*,void *,true> const&)#1} &,re::Pair<re::DynamicString const*,void *,true>*,false>(v48, &v48[2 * v46], v32, 1);
      if (v46)
      {
        v33 = v48;
        v34 = &v48[2 * v46];
        do
        {
          v35 = *v33;
          if (*(*v33 + 8))
          {
            v36 = *(v35 + 16);
          }

          else
          {
            v36 = v35 + 9;
          }

          v23(a1, v36, 0, v33[1], v43, v42, 0);
          v33 += 2;
        }

        while (v33 != v34);
      }

      if (v44 && v48)
      {
        (*(*v44 + 40))();
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_33;
  }

  return v25 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  v13 = *a6;
  if (*this == *a6)
  {
    v15 = **(this + 2);
    v14 = *(a6 + 2);
    v16 = *v14;
    if (v15 == *v14)
    {
      v18 = WORD1(v15) == WORD1(v16);
      v17 = (v16 ^ v15) & 0xFFFFFF00000000;
      v18 = v18 && v17 == 0;
      if (v18)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_14;
    }

    v13 = *a6;
    v14 = *(a6 + 2);
  }

  re::TypeRegistry::typeInfo(v13, v14[10], &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  v19 = re::TypeInfo::name(v45);
  if (*v19 >> 1 != 0x134375A94D9F7110 || (v20 = v19[1], v20 != "DynamicString") && strcmp(v20, "DynamicString"))
  {
LABEL_32:
    v25 = 0;
    return v25 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_30:
    v25 = *(a1 + 64) ^ 1;
    return v25 & 1;
  }

  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v45, &v47);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v46);
  re::TypeInfo::TypeInfo(v44, &v47);
  re::TypeInfo::TypeInfo(v42, this);
  v22 = (*(*a1 + 80))(a1, v45);
  if (!v22)
  {
    v39 = re::TypeInfo::name(v45);
    goto LABEL_32;
  }

  v23 = v22;
  v24 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
  v25 = 0;
  if (v24)
  {
    v26 = (*(v43 + 96))(a4);
    if (v26)
    {
      v50 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v46 = v21;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v46, v26);
      ++v49;
      v27 = (*(v43 + 120))(a4, v21);
      if ((*(v43 + 128))())
      {
        do
        {
          v28 = (*(v43 + 136))(v27);
          v29 = (*(v43 + 144))(v27);
          v41.n128_u64[0] = v28;
          v41.n128_u64[1] = v29;
          v30 = re::DynamicArray<re::RigNodeConstraint>::add(&v46, &v41);
        }

        while (((*(v43 + 128))(v27, v30) & 1) != 0);
      }

      (*(v43 + 152))(v27, v21);
      v32 = 126 - 2 * __clz(v48);
      if (v48)
      {
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v34 = std::__introsort<std::_ClassicAlgPolicy,BOOL re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL)::{lambda(re::Pair<re::StringID const*,void *,true> const&,re::Pair<re::StringID const*,void *,true> const&)#1} &,re::Pair<re::StringID const*,void *,true>*,false>(v50, &v50[v48], v33, 1, v31);
      if (v48)
      {
        v35 = v50;
        v36 = &v50[v48];
        do
        {
          v38 = v35->n128_u64[0];
          v37 = v35->n128_u64[1];
          ++v35;
          v23(a1, *(v38 + 8), 0, v37, v45, v44, 0, v34);
        }

        while (v35 != v36);
      }

      if (v46 && v50)
      {
        (*(*v46 + 40))(v34);
      }
    }

    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    goto LABEL_30;
  }

  return v25 & 1;
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x22C6ED80D0CLL || (v18 = v17[1], v18 != "StringID") && strcmp(v18, "StringID"))
  {
    goto LABEL_24;
  }

LABEL_14:
  if (a7)
  {
    v24 = 0;
    if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v24))
    {
LABEL_27:
      v22 = *(a1 + 64) ^ 1;
      return v22 & 1;
    }
  }

  else
  {
    v19 = *(a4 + 8);
    if (v19)
    {
      v20 = v19 >> 1;
    }

    else
    {
      v20 = v19 >> 1;
    }

    v24 = v20;
    if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v24))
    {
      if (v20)
      {
        if (*(a4 + 8))
        {
          v21 = *(a4 + 16);
        }

        else
        {
          v21 = a4 + 9;
        }

        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v21);
      }

      goto LABEL_27;
    }
  }

LABEL_24:
  v22 = 0;
  return v22 & 1;
}

void *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D19670;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D19670;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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
  *(v3 + 40 * v4 - 32) = a2;
  if (*(a1 + 48))
  {
    v5 = a1 + 56;
  }

  else
  {
    v5 = *(a1 + 64);
  }

  *(v5 + 40 * v4 - 40) = a3;
  return 1;
}

double re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = v2 + 40 * *(a1 + 40);
  v4 = *(v3 - 40);
  if (*(v3 - 32) || *v4 != 64)
  {
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v4, 0);
  }

  v6 = "";
  v7 = 0;
  v8 = 0;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
{
  v1 = *(result + 12);
  v2 = *(result + 5) - 1;
  *(result + 5) = v2;
  *(result + 12) = v1 + 2;
  if (v1)
  {
    v3 = result + 56;
  }

  else
  {
    v3 = *(result + 8);
  }

  v4 = &v3[40 * v2];
  if (*(v4 - 8) || **(v4 - 5) != 64)
  {
    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((*(result + 1) + 24));
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, uint64_t a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  v7 = v6 + 40 * *(a1 + 40) - 40;
  if (*(a1 + 48))
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = v8 + 40 * *(a1 + 40);
  v10 = *v7;
  v11 = *(v7 + 16);
  *(v9 + 32) = *(v7 + 32);
  *v9 = v10;
  *(v9 + 16) = v11;
  v12 = *(a1 + 40) + 1;
  *(a1 + 40) = v12;
  v13 = *(a1 + 48);
  *(a1 + 48) = v13 + 2;
  if (v13)
  {
    v14 = a1 + 56;
  }

  else
  {
    v14 = *(a1 + 64);
  }

  v15 = v14 + 40 * v12;
  v16 = *(a1 + 8);
  if (a3)
  {
    *(v15 - 28) = 1;
    v17 = *(v15 - 40);

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(v16 + 24, v17, 0);
  }

  else
  {
    *(v15 - 28) = 0;
    v19 = a2;
    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(v16 + 24, *(v15 - 40), &v19);
  }
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 40 * *(result + 40);
  if (*(v2 - 28))
  {
    v3 = -1;
  }

  else
  {
    re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(result + 8) + 24, 0);
    v3 = 0;
    *(v2 - 40) = "key";
  }

  *(v2 - 32) = v3;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 64);
  }

  v2 = v1 + 40 * *(result + 40);
  if (*(v2 - 28))
  {
    v3 = 0;
  }

  else
  {
    *(v2 - 40) = "value";
    v3 = 1;
  }

  *(v2 - 32) = v3;
  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 8);
  }

  if ((v1[40 * *(result + 5) - 28] & 1) == 0)
  {
    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((*(result + 1) + 24));
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  v3 = *(v2 + 40 * *(a1 + 40) - 28);
  v4 = (*(a1 + 8) + 24);
  if (v3 == 1)
  {
    result = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(v4);
  }

  else
  {
    result = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(v4);
  }

  v6 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v6 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(*(a1 + 8) + 24, *(v3 + 40 * *(a1 + 40) - 40), &v5);
  return a2;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, char a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned int a2)
{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = v5 - 27;
    if ((a2 & 0x80000000) != 0)
    {
      v8 = v5 - 26;
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (&result[-v8] > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, &result[-v8] >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v10);
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    v8 = v5 - 27;
    if ((a2 & 0x80000000) != 0)
    {
      v8 = v5 - 26;
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    if (&result[-v8] > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, &result[-v8] >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v10);
  }

  return result;
}

{
  v10 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = (v5 - 3);
    if ((a2 & 0x80000000) != 0)
    {
      v8 = v5 - 26;
      *(v5 - 27) = 45;
      a2 = -a2;
    }

    else
    {
      v8 = v5 - 27;
    }

    if (&result[-v8] > 9 || (v9 = (1233 * (32 - __clz(a2 | 1))) >> 12, &result[-v8] >= (((__PAIR64__(v9, a2) - std::__itoa::__pow10_32[v9]) >> 32) + 1)))
    {
      result = std::__itoa::__base_10_u32[abi:nn200100](v8, a2);
    }

    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v10);
  }

  return result;
}

{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v8);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v8);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int16 a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__itoa::__base_10_u32[abi:nn200100]((v5 - 27), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v8);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    v11 = a2;
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(*(a1 + 8) + 24, *(v7 + 40 * v5 - 40), &v11);
  }

  return result;
}

{
  v2 = a2;
  v11 = a2;
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v5 = *(a1 + 40);
  v6 = v4 + 40 * v5;
  if (*(v6 - 28) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    if (HIDWORD(a2))
    {
      if (a2 <= 0x2540BE3FFLL)
      {
        v9 = (v6 - 27);
      }

      else
      {
        v9 = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2 / 0x2540BE400);
        v2 %= 0x2540BE400uLL;
      }

      *v9 = std::__itoa::__digits_base_10[v2 / 0x5F5E100];
      *(v9 + 1) = std::__itoa::__digits_base_10[v2 % 0x5F5E100 / 0xF4240];
      v10 = v2 % 0x5F5E100 % 0xF4240;
      *(v9 + 2) = std::__itoa::__digits_base_10[v10 / 0x2710uLL];
      v10 %= 0x2710u;
      *(v9 + 3) = std::__itoa::__digits_base_10[v10 / 0x64u];
      *(v9 + 4) = std::__itoa::__digits_base_10[v10 % 0x64u];
      result = v9 + 10;
    }

    else
    {
      result = std::__itoa::__base_10_u32[abi:nn200100]((v6 - 27), a2);
    }

    *result = 0;
    *(v6 - 40) = v6 - 27;
  }

  else
  {
    if (v3)
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(*(a1 + 8) + 24, *(v7 + 40 * v5 - 40), &v11);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = *(a1 + 40);
  v5 = v3 + 40 * v4;
  if (*(v5 - 28) == 1 && (*(v5 - 32) & 0x80000000) != 0)
  {
    result = std::__to_chars_itoa[abi:nn200100]<long long>((v5 - 27), (v5 - 3), a2);
    *result = 0;
    *(v5 - 40) = v5 - 27;
  }

  else
  {
    if (v2)
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }

    return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), &v8);
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, float a2)
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

  return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, double a2)
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

  return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeString(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v13 = a3;
  v6 = *(result + 12);
  if (v6)
  {
    v7 = result + 56;
  }

  else
  {
    v7 = *(result + 8);
  }

  v8 = *(result + 5);
  v9 = &v7[40 * v8];
  if (*(v9 - 28) == 1 && (*(v9 - 8) & 0x80000000) != 0)
  {
    *(v9 - 5) = a2;
  }

  else
  {
    if (v6)
    {
      v10 = result + 56;
    }

    else
    {
      v10 = *(result + 8);
    }

    v11 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(*(result + 1) + 24, *&v10[40 * v8 - 40], &v13);
    if (a3 && v11)
    {
      re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(*(v5 + 1) + 24, a2);
    }

    v12 = (*(v5 + 1) + 24);
  }

  return result;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeData(char *result, uint64_t a2, uint64_t a3)
{
  v6 = *(result + 1);
  if (result[48])
  {
    v7 = result + 56;
  }

  else
  {
    v7 = *(result + 8);
  }

  v29 = *&v7[40 * *(result + 5) - 40];
  if ((*(v6 + 64) & 1) == 0)
  {
    if ((*(*(v6 + 152) + 48 * *(v6 + 136) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(v6 + 192), &v29);
    }

    if (!a3)
    {
      v8 = *(v6 + 192);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v8);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v8);
    }

    LOBYTE(v23) = 4;
    HIDWORD(v23) = 0;
    v24 = v29;
    v25 = 0;
    v27 = 0;
    v28 = 0;
    v26 = a3;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(v6 + 24, &v23);
    v10 = *(result + 1);
    if ((*(v10 + 64) & 1) == 0)
    {
      v11 = *(*(v10 + 152) + 48 * *(v10 + 136) - 24);
      v24 = 0;
      v25 = 0;
      v26 = 0;
      re::DynamicString::setCapacity(&v23, 0);
      v23 = *(v10 + 56);
      re::DynamicString::setCapacity(&v23, ((2863311531u * v11) >> 31) & 0x1FFFFFFFCLL);
      re::EncoderHelper::encodeBase64(a2, v11, &v23);
      v12 = *(v10 + 192);
      if (v24)
      {
        v13 = v25;
      }

      else
      {
        v13 = &v24 + 1;
      }

      if (v24)
      {
        v14 = v24 >> 1;
      }

      else
      {
        v14 = v24 >> 1;
      }

      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(*(v10 + 192));
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v12, v13, v14);
      if (v23 && (v24 & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v15 = *(v10 + 152) + 48 * *(v10 + 136);
      *(v15 - 16) += v11;
      v16 = *(result + 1);
      if ((*(v16 + 64) & 1) == 0)
      {
        v17 = *(v16 + 152);
        v18 = *(v16 + 136);
        if (*(v17 + 48 * v18 - 16) == *(v17 + 48 * v18 - 24))
        {
          *(v16 + 232) = 0;
          ++*(v16 + 240);
          v19 = *(v16 + 152) + 48 * *(v16 + 136);
          ++*(v19 - 16);
        }

        else
        {
          if (v30)
          {
            v21 = *&v31[7];
          }

          else
          {
            v21 = v31;
          }

          v22 = *(v16 + 152) + 48 * *(v16 + 136);
          re::DynamicString::format(&v23, "Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v20, v21, *(v22 - 24), *(v22 - 16));
          if (v23 && (v24 & 1) != 0)
          {
            (*(*v23 + 40))();
          }

          if (v29)
          {
            if (v30)
            {
              (*(*v29 + 40))();
            }
          }
        }
      }
    }
  }
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), &v8);
  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::write(uint64_t a1, uint64_t a2, re **this)
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
        return (*(*result + 72))(result, *(v9 + 40 * *(a1 + 40) - 40), *(v9 + 40 * *(a1 + 40) - 32), a2, v18, &v16, 0);
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

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', writing field '%s'(%d)", v11, *(v12 + 40 * *(a1 + 40) - 40), *(v12 + 40 * *(a1 + 40) - 32));
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

    return (*(*a1 + 56))(a1, "No typeinfo while writing field '%s'(%d)", *(v10 + 40 * *(a1 + 40) - 40), *(v10 + 40 * *(a1 + 40) - 32));
  }

  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v16, a4);
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
        re::TypeRegistry::typeInfo(v14, *v15, v21);
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

uint64_t *re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, re::TypeInfo *a3, uint64_t *a4, uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), v41);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v37);
  if (v37[0] == 1)
  {
    if ((v41[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v38)[1];
      v12 = re::TypeInfo::name(a3);
    }

    if (v42 == v38)
    {
      v14 = *v44;
      v15 = *v40;
      if (*v44 == *v40)
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

    else if (re::areSameTranslatedVersion(&v42, &v38, v10))
    {
LABEL_5:
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v42, a5);
      goto LABEL_15;
    }

    if (v43 == v39)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v42, &v38, a5);
    }

    else
    {
      v18 = re::TypeInfo::name(&v42)[1];
      v19 = re::TypeInfo::name(&v38);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v36, *a3, *(a3 + 2));
  result = re::TypeMemberCollection::TypeMemberCollection(v34, *a4, a4[2]);
  if (v35)
  {
    for (i = 0; i < v35; ++i)
    {
      if (*(a1 + 64))
      {
        break;
      }

      result = re::TypeMemberCollection::operator[](v34, i, v32);
      if (*(v33 + 28) == 1)
      {
        v21 = *(v33 + 16);
        if (strlen(v21) >= 3 && *v21 == 109)
        {
          v21 += 2 * (*(v21 + 1) == 95);
        }

        v22 = *(v33 + 32);
        v23 = *(*a4 + 856);
        if (!v23 || (v23 = re::internal::TypeTranslationTable::translateMember(v23, v32), v23 == -1))
        {
          v25 = *re::foundationSerializationLogObjects(v23);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = re::TypeInfo::name(a4)[1];
            *buf = 136315394;
            v46 = v26;
            v47 = 2080;
            v48 = v21;
            _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
          }

          v27 = *(a1 + 272);
          re::TypeRegistry::typeInfo(v32[0], *v33, buf);
          re::TypeInfo::TypeInfo(v30, &v46 + 4);
          result = re::internal::translateType(buf, v27, v30);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, 0, buf, buf, 1);
          }
        }

        else
        {
          re::TypeMemberCollection::operator[](v36, v23, v30);
          v24 = *(v31 + 24);
          re::TypeRegistry::typeInfo(v30[0], *v31, buf);
          re::TypeInfo::TypeInfo(v29, &v46 + 4);
          re::TypeRegistry::typeInfo(v32[0], *v33, buf);
          result = re::TypeInfo::TypeInfo(v28, &v46 + 4);
          if ((*(a1 + 64) & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, a2 + v24, v29, v28, a5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, a2, v13);
}

uint64_t re::serializeChar<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(a1 + 24, a2, v13);
}

uint64_t re::serializeI8<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(a1 + 24, a2, v13);
}

uint64_t re::serializeI16<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(a1 + 24, a2, v13);
}

uint64_t re::serializeI32<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(a1 + 24, a2, v13);
}

uint64_t re::serializeI64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(a1 + 24, a2, v13);
}

uint64_t re::serializeU8<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(a1 + 24, a2, v13);
}

uint64_t re::serializeU16<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(a1 + 24, a2, v13);
}

uint64_t re::serializeU32<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, a2, v13);
}

uint64_t re::serializeU64<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, a2, v13);
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, v13);
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, int a7)
{
  v19 = 0;
  if (this != a6)
  {
    if (*this == *a6)
    {
      v15 = **(this + 2);
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

    else if (re::areSameTranslatedVersion(this, a6, a3))
    {
      goto LABEL_4;
    }

    return 0;
  }

LABEL_4:
  if (a7)
  {
    v13 = &v19;
  }

  else
  {
    v13 = a4;
  }

  return re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, v13);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_18:
      goto LABEL_19;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_18;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_18;
    }
  }

LABEL_4:
  if (a7)
  {
    LODWORD(v22) = 0;
    v13 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v22);
    v14 = 0;
    if (!v13)
    {
      return v14 & 1;
    }

    goto LABEL_22;
  }

  v15 = *a4;
  v23 = 2 * (*a4 != 0);
  if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v23))
  {
    if (v15)
    {
      if (*a4)
      {
        v16 = strlen(*a4);
        v22 = v16;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
        {
          if (v16)
          {
            re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, *a4);
          }

          goto LABEL_21;
        }
      }

      else
      {
        v22 = 0;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
        {
LABEL_21:
        }
      }
    }

LABEL_22:
    v14 = *(a1 + 64) ^ 1;
    return v14 & 1;
  }

LABEL_19:
  v14 = 0;
  return v14 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this == a6)
  {
    goto LABEL_14;
  }

  if (*this == *a6)
  {
    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 == v14)
    {
      v16 = WORD1(v13) == WORD1(v14);
      v15 = (v14 ^ v13) & 0xFFFFFF00000000;
      v16 = v16 && v15 == 0;
      if (v16)
      {
        goto LABEL_14;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, a3))
  {
    goto LABEL_14;
  }

  v17 = re::TypeInfo::name(a6);
  if (*v17 >> 1 != 0x134375A94D9F7110 || (v18 = v17[1], v18 != "DynamicString") && strcmp(v18, "DynamicString"))
  {
    goto LABEL_21;
  }

LABEL_14:
  if (!a7)
  {
    v19 = strlen(*(a4 + 8));
    v22 = v19;
    if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
    {
      if (v19)
      {
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, *(a4 + 8));
      }

      goto LABEL_20;
    }

LABEL_21:
    v20 = 0;
    return v20 & 1;
  }

  v22 = 0;
  if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v22))
  {
    goto LABEL_21;
  }

LABEL_20:
  v20 = *(a1 + 64) ^ 1;
  return v20 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, unint64_t **this, unint64_t **a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_16:
      goto LABEL_17;
    }

    v18 = *this[2];
    v19 = *a6[2];
    if (v18 != v19)
    {
      goto LABEL_16;
    }

    v21 = WORD1(v18) == WORD1(v19);
    v20 = (v19 ^ v18) & 0xFFFFFF00000000;
    v21 = v21 && v20 == 0;
    if (!v21)
    {
      goto LABEL_16;
    }
  }

LABEL_4:
  if (!a7)
  {
    v14 = *this;
    v15 = *this[2];
    v33[0] = 0x258C98EAAF29A10ALL;
    v33[1] = "CallbackSerializerAttribute";
    v16 = re::TypeRegistry::typeID(v34, v14, v33);
    if (v34[0] && (v29 = v34[1], v30 = v15, LODWORD(v31) = -1, (v16 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v14 + 768, &v29)) != 0))
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    if (v33[0])
    {
      if (v33[0])
      {
      }
    }

    v23 = *v17;
    v24 = *(a1 + 264);
    v25 = *(a1 + 56);
    v31 = 0;
    v32 = 0;
    v29 = v25;
    v30 = 0;
    re::DynamicString::setCapacity(&v29, 0);
    if ((*(v23 + 72))(v24, v23, a4, &v29))
    {
      if (v30)
      {
        v26 = (v30 >> 1);
      }

      else
      {
        v26 = (v30 >> 1);
      }

      v34[0] = v26;
      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, v34))
      {
        if (v26)
        {
          if (v30)
          {
            v27 = v31;
          }

          else
          {
            v27 = &v30 + 1;
          }

          re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v27);
        }

        if (v29 && (v30 & 1) != 0)
        {
          (*(*v29 + 40))();
        }

        goto LABEL_7;
      }
    }

    else
    {
      v28 = re::TypeInfo::name(this);
    }

    if (v29 && (v30 & 1) != 0)
    {
      (*(*v29 + 40))();
    }

LABEL_17:
    v13 = 0;
    return v13 & 1;
  }

  v29 = 0;
  if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, &v29))
  {
    goto LABEL_17;
  }

LABEL_7:
  v13 = *(a1 + 64) ^ 1;
  return v13 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(_BYTE *a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *this, re::TypeInfo *a6)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_19:
LABEL_20:
      v20 = 0;
      return v20 & 1;
    }

    v16 = **(this + 2);
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
  if (*a4)
  {
    if (a1[336] == 1 && (v25 = *a4, (v11 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 344), &v25)) != 0))
    {
      v12 = *v11;
      v24 = 1;
      LODWORD(v25) = v12;
      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v24))
      {
        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v25);
LABEL_22:
LABEL_23:
        v20 = a1[64] ^ 1;
        return v20 & 1;
      }
    }

    else
    {
      v24 = 2;
      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v24))
      {
        v13 = strlen(*a4);
        v25 = v13;
        if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v25))
        {
          if (v13)
          {
            re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString((a1 + 24), *a4);
          }

          v14 = *a4;
          v15 = **(this + 2);
          *&v23 = *this;
          *(&v23 + 1) = v15;
          re::internal::SharedObjectGraph::addObject((a1 + 336), v14, &v23);
          goto LABEL_23;
        }
      }
    }

    goto LABEL_20;
  }

  LODWORD(v25) = 0;
  v21 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v25);
  v20 = 0;
  if (v21)
  {
    goto LABEL_22;
  }

  return v20 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(_BYTE *a1, const char *a2, int a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
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

  else if (re::areSameTranslatedVersion(this, a6, v13))
  {
LABEL_4:
    v15 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v26 = re::TypeInfo::name(this), v27 = re::TypeInfo::name(a6), !re::StringID::operator==(v26, v27))))
  {
    goto LABEL_30;
  }

  v15 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v40);
  re::TypeInfo::TypeInfo(v39, v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40);
  re::TypeInfo::TypeInfo(v38, v41);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v17 = *v39[2];
    *&v37 = v39[0];
    *(&v37 + 1) = v17;
    if (!v39[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(&v37, a4, this);
    if (!v37)
    {
LABEL_8:
      v16 = re::TypeInfo::name(this);
LABEL_30:
      v21 = 0;
      return v21 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, &v37, &v40);
  re::TypeInfo::TypeInfo(v36, v41);
  if ((a7 & 1) == 0)
  {
    v18 = *a4;
    if (*a4)
    {
      if (a1[336] == 1)
      {
        v40 = *a4;
        v19 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 344), &v40);
        if (v19)
        {
          LODWORD(v40) = *v19;
          v42[0] = 1;
          if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, v42))
          {
            goto LABEL_30;
          }

          re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v40);
          goto LABEL_17;
        }

        v18 = *a4;
      }

      v35 = v37;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v18, &v35);
      v34 = 2;
      if (!re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v34))
      {
        goto LABEL_30;
      }

      if (!isPointerToPolymorphicType)
      {
        if ((a1[64] & 1) == 0)
        {
          (*(*a1 + 72))(a1, a2, 0, *a4, v39, v38, 0);
        }

        goto LABEL_45;
      }

      v29 = *a4;
      re::TypeInfo::TypeInfo(v42, v36);
      if (v15)
      {
        v30 = v38[0];
        v31 = re::TypeInfo::name(v36);
        re::TypeRegistry::typeInfo(&v40, v30, v31);
        if (v40 != 1)
        {
          v33 = re::TypeInfo::name(v36);
LABEL_45:
          if (a1[336] == 1)
          {
            --*(a1 + 61);
            ++*(a1 + 124);
          }

          goto LABEL_18;
        }

        re::TypeInfo::operator=(v42, v41);
      }

      if (re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, 0))
      {
        v32 = re::TypeInfo::polymorphicObjectName(v42);
        if ((a1[64] & 1) == 0)
        {
          (*(*a1 + 72))(a1, v32[1], 0, v29, v36, v42, 0);
        }

        re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
      }

      goto LABEL_45;
    }
  }

  LODWORD(v40) = 0;
  v20 = re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, &v40);
  v21 = 0;
  if (v20)
  {
LABEL_17:
LABEL_18:
    v21 = a1[64] ^ 1;
  }

  return v21 & 1;
}

void re::ServiceRegistry::~ServiceRegistry(re::ServiceRegistry *this)
{
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(this + 2);
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(this + 2);
}

{
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(this + 2);
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit(this + 2);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ServiceRegistry::doGetService(re::ServiceRegistry *this, const re::IntrospectionBase *a2, StringID *a3)
{
  re::StringID::StringID(&v18, a3);
  v19 = a2;
  v5 = re::StringID::StringID(v20, &v18);
  if (*&v18.var0)
  {
    if (*&v18.var0)
    {
    }
  }

  *&v18.var0 = 0;
  v18.var1 = &str_67;
  v6 = re::internal::ServiceKeyHash::operator()(&v21, &v19);
  v7 = *(this + 10);
  if (!v7)
  {
    v16 = 0;
    if ((v20[0] & 1) == 0)
    {
      return v16;
    }

    goto LABEL_15;
  }

  v8 = *(*(this + 3) + 4 * (v6 % v7));
  v9 = v20[0];
  if (v8 == 0x7FFFFFFF)
  {
LABEL_12:
    v16 = 0;
    if ((v9 & 1) == 0)
    {
      return v16;
    }

    goto LABEL_15;
  }

  v10 = *(this + 4);
  v11 = v19;
  v12 = v20[1];
  while (1)
  {
    v13 = v10 + 40 * v8;
    v15 = *(v13 + 8);
    v14 = (v13 + 8);
    if (v15 == v11 && (v9 ^ v14[1]) <= 1)
    {
      v6 = v14[2];
      if (v6 == v12)
      {
        break;
      }

      v6 = strcmp(v6, v12);
      if (!v6)
      {
        break;
      }
    }

    v8 = *(v10 + 40 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }
  }

  v16 = v14[3];
  if (v9)
  {
LABEL_15:
    if (v20[0])
    {
    }
  }

  return v16;
}

void *re::allocInfo_ServiceRegistry(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_559, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_559))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3D10, "ServiceRegistry");
    __cxa_guard_release(&_MergedGlobals_559);
  }

  return &unk_1EE1C3D10;
}

void re::initInfo_ServiceRegistry(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x196524EDC9931BE4;
  v6[1] = "ServiceRegistry";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_ServiceRegistry(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ServiceRegistry>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ServiceRegistry>;
  *(this + 13) = re::internal::defaultConstructV2<re::ServiceRegistry>;
  *(this + 14) = re::internal::defaultDestructV2<re::ServiceRegistry>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultConstruct<re::ServiceRegistry>(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5D197B0;
  *(a3 + 8) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 52) = 0x7FFFFFFFLL;
}

double re::internal::defaultDestruct<re::ServiceRegistry>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((a3 + 16));

  return re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((a3 + 16));
}

void re::internal::defaultConstructV2<re::ServiceRegistry>(uint64_t a1)
{
  *a1 = &unk_1F5D197B0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 52) = 0x7FFFFFFFLL;
}

double re::internal::defaultDestructV2<re::ServiceRegistry>(uint64_t a1)
{
  re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((a1 + 16));

  return re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::deinit((a1 + 16));
}

void *re::allocInfo_EntitlementService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_560))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1C3DA8, "EntitlementService");
    __cxa_guard_release(&_MergedGlobals_560);
  }

  return &unk_1EE1C3DA8;
}

void re::initInfo_EntitlementService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x522BBC3B11E1D0;
  v6[1] = "EntitlementService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_EntitlementService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t *re::internal::missingServiceErrorMessage@<X0>(re::DynamicString *__return_ptr a1@<X8>, re::internal *this@<X0>, const re::IntrospectionBase *a3@<X1>)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  re::DynamicString::setCapacity(a1, 0);
  re::DynamicString::append(a1, "Service of type '", 0x11uLL);
  re::getPrettyTypeName(&v14, this);
  if (__s2[0])
  {
    v6 = __s2[1];
  }

  else
  {
    v6 = __s2 + 1;
  }

  if (__s2[0])
  {
    v7 = __s2[0] >> 1;
  }

  else
  {
    v7 = LOBYTE(__s2[0]) >> 1;
  }

  re::DynamicString::append(a1, v6, v7);
  if (v14 && (__s2[0] & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  v8 = re::StringID::invalid(&v14);
  v9 = v14;
  if ((v14 ^ *a3) > 1)
  {
    v10 = 1;
    if ((v14 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *(a3 + 1);
    if (v8 == __s2[0])
    {
      v10 = 0;
      if ((v14 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = strcmp(v8, __s2[0]);
      v10 = v8 != 0;
      if ((v9 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  if (v14)
  {
  }

LABEL_19:
  if (v10)
  {
    re::DynamicString::append(a1, "' and key '", 0xBuLL);
    v11 = *(a3 + 1);
    v12 = strlen(v11);
    re::DynamicString::append(a1, v11, v12);
  }

  return re::DynamicString::append(a1, "' is required but is not registered in the service locator.", 0x3BuLL);
}

uint64_t re::BackgroundTask::BackgroundTask(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::__value_func[abi:nn200100](a1 + 8, a3);
  std::__function::__value_func<void ()(re::BackgroundTask &)>::__value_func[abi:nn200100](a1 + 40, a4);
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  v6 = dispatch_group_create();

  v7 = *(a1 + 208);
  *(a1 + 208) = v6;

  return a1;
}

void re::BackgroundTask::~BackgroundTask(re::BackgroundTask *this)
{
  std::condition_variable::~condition_variable((this + 160));
  std::mutex::~mutex((this + 96));
  std::__function::__value_func<void ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](this + 40);
  std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](this + 8);
}

uint64_t std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t *re::foundationThreadingLogObjects(re *this)
{
  {
    re::foundationThreadingLogObjects(void)::logObjects = os_log_create("com.apple.re", "Foundation.Threading");
    qword_1ECF1CE30 = os_log_create("com.apple.re", "Foundation.JobSystem");
  }

  return &re::foundationThreadingLogObjects(void)::logObjects;
}

void re::internal::WorkerThread::~WorkerThread(re::internal::WorkerThread *this)
{
  re::internal::WorkerThread::deinit(this);
  std::condition_variable::~condition_variable(this + 15);
  std::mutex::~mutex((this + 656));
  re::WorkStealingQueue<re::Job *>::deinit(this + 256);
  re::DynamicArray<unsigned long>::deinit(this + 104);
  v2 = *(this + 8);
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v2)
  {
    free(v2);
    *(this + 8) = 0;
    *(this + 9) = 0;
  }

  std::thread::~thread(this + 1);
}

void *re::internal::WorkerThread::deinit(void *this)
{
  if (*this)
  {
    v1 = this;
    re::WorkStealingQueue<re::Job *>::deinit((this + 32));
    this = re::DynamicArray<unsigned long>::deinit((v1 + 13));
    *v1 = 0;
  }

  return this;
}

void re::internal::WorkerThread::init(re::internal::WorkerThread *this, re::FiberJobManager *a2, int a3, int a4, re::AlignedAllocator *a5)
{
  *this = a2;
  v8 = *(a2 + 132);
  *(this + 13) = a5;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 13, v8);
  ++*(this + 32);
  atomic_store(1uLL, this + 32);
  atomic_store(1uLL, this + 48);
  v9 = (*(*a5 + 32))(a5, 32, 8);
  *v9 = 0u;
  *(v9 + 16) = 0u;
  re::FixedArray<unsigned long>::init<>(v9, a5, 0x400uLL);
  *(this + 64) = v9;
  *(this + 160) = 0;
  std::mutex::lock((this + 656));
  *(this + 648) = 0;
  std::mutex::unlock((this + 656));
  *(this + 4) = a4;
  operator new();
}

uint64_t re::internal::WorkerThread::threadFunction(re::internal::WorkerThread *this, const char *a2)
{
  re::DynamicString::format(&v8, "Job Service worker %d", a2, *(this + 4));
  if (v9)
  {
    v3 = *&v10[7];
  }

  else
  {
    v3 = v10;
  }

  pthread_setname_np(v3);
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  v4 = *(this + 8);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v4)
  {
    free(v4);
  }

  re::internal::AutoResetEvent::waitOne((this + 648));
  *(this + 20) = *(this + 24);
  *(this + 21) = 1;
  *(this + 11) = 0;
  FreeFiberIndex = re::FiberJobManager::getFreeFiberIndex(*this);
  re::internal::WorkerThread::switchToCustomFiber(this, FreeFiberIndex);
  re::internal::WorkerThread::postFiberSwitch(this, v6);
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

uint64_t re::WorkStealingQueue<re::Job *>::deinit(uint64_t result)
{
  if (*(result + 256))
  {
    v1 = result;
    v2 = *(result + 256);
    if (v2)
    {
      v3 = *v2;
      re::WorkStealingQueue<re::Job *>::CircularArray::deinit(*(result + 256));
      re::FixedArray<CoreIKTransform>::deinit(v2);
      result = (*(*v3 + 40))(v3, v2);
      atomic_store(0, (v1 + 256));
    }
  }

  return result;
}

void re::internal::WorkerThread::switchToCustomFiber(re::internal::WorkerThread *this, unsigned int a2)
{
  v4 = *(this + 24);
  if (v4 == -1)
  {
    Fiber = this + 24;
  }

  else
  {
    Fiber = re::FiberJobManager::getFiber(*this, v4);
  }

  v6 = re::FiberJobManager::getFiber(*this, a2);
  *(this + 24) = a2;
  *(Fiber + 1) = v6;
  jump_fcontext();
  *v8 = v7;
  v8[1] = 0;
}

void re::internal::WorkerThread::postFiberSwitch(re::internal::WorkerThread *this, uint64_t a2)
{
  v3 = *(this + 21);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v12 = *(this + 11);
        v13.n128_u32[0] = *(this + 20);
        v13.n128_u64[1] = v12;
        re::DynamicArray<re::RigNodeConstraint>::add((this + 104), &v13);
        break;
      case 4:
        re::FiberJobManager::addFiberToWaitList(*this, *(this + 20), *(this + 11));
        break;
      case 5:
        break;
      default:
        goto LABEL_16;
    }

LABEL_15:
    *(this + 10) = 0xFFFFFFFFLL;
    *(this + 11) = 0;
    return;
  }

  if (v3 == 1)
  {
    goto LABEL_15;
  }

  if (v3 == 2)
  {
    v4 = *(this + 20);
    v5 = (*this + 640);
    v6 = *(*this + 536);
    explicit = atomic_load_explicit(v5, memory_order_acquire);
    v8 = (v6 + (v4 << 8));
    *v8 = explicit;
    v9 = explicit;
    atomic_compare_exchange_strong(v5, &v9, explicit & 0xFFFFFFFF00000000 | v4);
    if (v9 != explicit)
    {
      v10 = v9;
      do
      {
        *v8 = v9;
        atomic_compare_exchange_strong(v5, &v10, v9 & 0xFFFFFFFF00000000 | v4);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }

    goto LABEL_15;
  }

LABEL_16:
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unknown fiber state.", "!Unreachable code", "postFiberSwitch", 237);
  _os_crash("assertion failure: (!Unreachable code) Unknown fiber state.");
  __break(1u);
}

unint64_t re::FiberJobManager::getFiber(re::FiberJobManager *this, unsigned int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = *(this + 66);
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

    v12 = 468;
    v13 = 2048;
    v14 = v2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 67) + (a2 << 8) + 128;
}

void re::internal::WorkerThread::switchToThreadFiber(re::internal::WorkerThread *this)
{
  Fiber = re::FiberJobManager::getFiber(*this, *(this + 24));
  *(this + 24) = -1;
  *(Fiber + 8) = this + 24;
  jump_fcontext();
  *v4 = v3;
  v4[1] = 0;
}

void re::internal::WorkerThread::runAsync(void *result, uint64_t a2, unsigned int a3, unsigned int *a4, char a5)
{
  v6 = a2;
  if (a4)
  {
    *a4 = a3;
  }

  if (a5)
  {
    v8 = a3 - 1;
    if ((a3 - 1) >= 0)
    {
      v9 = v8 + 1;
      v10 = a2 + (v8 << 6);
      do
      {
        *(v10 + 8) = a4;
        v16 = v10;
        re::WorkStealingQueue<re::Job *>::push(result + 32, &v16);
        v10 -= 64;
        --v9;
      }

      while (v9);
    }
  }

  else if (a3)
  {
    v11 = a3;
    do
    {
      *(v6 + 8) = a4;
      v16 = v6;
      re::WorkStealingQueue<re::Job *>::push(result + 32, &v16);
      v6 += 64;
      --v11;
    }

    while (v11);
  }

  v12 = *(*result + 72);
  if (v12)
  {
    v13 = *(*result + 80);
    v14 = 8 * v12;
    do
    {
      v15 = *v13++;
      re::internal::AutoResetEvent::set((v15 + 648));
      v14 -= 8;
    }

    while (v14);
  }
}

uint64_t re::WorkStealingQueue<re::Job *>::push(void *a1, void *a2)
{
  v4 = a1[16];
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v6 = a1[32];
  if (v4 - explicit > v6[1] - 1)
  {
    v6 = re::WorkStealingQueue<re::Job *>::CircularArray::grow(v6, explicit, v4);
    atomic_store(v6, a1 + 32);
  }

  result = re::WorkStealingQueue<re::Job *>::CircularArray::put(v6, v4, a2);
  __dmb(0xBu);
  a1[16] = v4 + 1;
  return result;
}

uint64_t re::internal::WorkerThread::getWaitingFiber(re::internal::WorkerThread *this, unsigned int *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(this + 15);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = *(this + 15);
    if (v5 <= v4)
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
      v17 = v4;
      v18 = 2048;
      v19 = v5;
      _os_log_send_and_compose_impl(v9, &v11, v20, 80, &dword_1E1C61000, v8, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v12, 38, v10);
      _os_crash_msg();
      __break(1u);
    }

    v6 = *(this + 17);
    if (!atomic_load_explicit(*(v6 + v3 + 8), memory_order_acquire))
    {
      break;
    }

    ++v4;
    v3 += 16;
    if (v2 == v4)
    {
      return 0;
    }
  }

  *a2 = *(v6 + v3);
  re::DynamicArray<re::internal::FiberWaitInfo>::removeStableAt(this + 13, v4);
  return 2;
}

void *re::DynamicArray<re::internal::FiberWaitInfo>::removeStableAt(void *result, unint64_t a2)
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
    result = (v6 + 16 * a2);
    v7 = (v6 + 16 * v3);
    if (v7 != (result + 2))
    {
      result = memmove(result, result + 2, v7 - (result + 2));
      v5 = v4[2] - 1;
    }
  }

  v4[2] = v5;
  ++*(v4 + 6);
  return result;
}

uint64_t re::internal::WorkerThread::getJob(atomic_ullong *this, re::Job **a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = this[48];
  v5 = v4 - 1;
  v6 = this[64];
  this[48] = v4 - 1;
  __dmb(0xBu);
  v7 = this[32];
  if (v7 <= v4 - 1)
  {
    *a2 = re::WorkStealingQueue<re::Job *>::CircularArray::get(v6, v4 - 1);
    if (v7 != v5)
    {
      return 2;
    }

    v17 = v4 - 1;
    atomic_compare_exchange_strong(this + 32, &v17, v4);
    this[48] = v4;
    if (v17 == v5)
    {
      return 2;
    }
  }

  else
  {
    this[48] = v4;
  }

  v8 = *this;
  v9 = *(*this + 72);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (v11 + *(this + 160)) % v9;
      v14 = *(*this + 72);
      if (v14 <= v13)
      {
        v23 = 0;
        memset(v32, 0, sizeof(v32));
        v20 = MEMORY[0x1E69E9C10];
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v21 = 3;
        }

        else
        {
          v21 = 2;
        }

        v27 = 476;
        v28 = 2048;
        v29 = v13;
        v30 = 2048;
        v31 = v14;
        _os_log_send_and_compose_impl(v21, &v23, v32, 80, &dword_1E1C61000, v20, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v24, 38, v22);
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(*(*this + 80) + 8 * v13);
      if (v15 != this)
      {
        v10 = re::WorkStealingQueue<re::Job *>::steal(v15 + 32, a2);
        if (v10)
        {
          if (v10 != 1)
          {
            *(this + 160) = v11;
            return 2;
          }

          v12 = 1;
        }
      }

      if (v9 == ++v11)
      {
        v8 = *this;
        v16 = v12 | (v10 == 1);
        goto LABEL_16;
      }
    }
  }

  v16 = 0;
LABEL_16:
  v18 = re::WorkStealingQueue<re::Job *>::steal((v8 + 128), a2);
  if (v18 == 2)
  {
    return 2;
  }

  else
  {
    return v16 & 1u | (v18 == 1);
  }
}

uint64_t re::WorkStealingQueue<re::Job *>::steal(atomic_ullong *a1, uint64_t *a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  __dmb(0xBu);
  if (explicit >= atomic_load_explicit(a1 + 16, memory_order_acquire))
  {
    return 0;
  }

  *a2 = re::WorkStealingQueue<re::Job *>::CircularArray::get(atomic_load_explicit(a1 + 32, memory_order_acquire), explicit);
  v4 = explicit;
  atomic_compare_exchange_strong(a1, &v4, explicit + 1);
  if (v4 == explicit)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t std::__thread_proxy[abi:nn200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::internal::WorkerThread::*)(void),re::internal::WorkerThread*>>(uint64_t *a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v5(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::internal::WorkerThread::*)(void),re::internal::WorkerThread*>>::~unique_ptr[abi:nn200100](&v8);
  return 0;
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (re::internal::WorkerThread::*)(void),re::internal::WorkerThread*>>::~unique_ptr[abi:nn200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:nn200100](v2);
    MEMORY[0x1E6906520](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *re::WorkStealingQueue<re::Job *>::CircularArray::deinit(uint64_t *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    result = re::FixedArray<CoreIKTransform>::deinit(result);
    v3 = v2[3];
    if (v3)
    {
      re::WorkStealingQueue<re::Job *>::CircularArray::deinit(v2[3]);
      re::FixedArray<CoreIKTransform>::deinit(v3);
      result = (*(*v1 + 40))(v1, v3);
    }

    v2[3] = 0;
  }

  return result;
}

uint64_t re::WorkStealingQueue<re::Job *>::CircularArray::grow(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = 2 * a1[1];
  v8 = (*(**a1 + 32))(*a1, 32, 8);
  *v8 = 0u;
  *(v8 + 16) = 0u;
  re::FixedArray<unsigned long>::init<>(v8, v6, v7);
  if (a2 < a3)
  {
    do
    {
      v10 = re::WorkStealingQueue<re::Job *>::CircularArray::get(a1, a2);
      re::WorkStealingQueue<re::Job *>::CircularArray::put(v8, a2++, &v10);
    }

    while (a3 != a2);
  }

  *(v8 + 24) = a1;
  return v8;
}

uint64_t re::WorkStealingQueue<re::Job *>::CircularArray::put(uint64_t result, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(result + 8);
  v4 = (v3 - 1) & a2;
  if (v3 <= v4)
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

    v12 = 468;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  *(*(result + 16) + 8 * v4) = *a3;
  return result;
}

uint64_t re::WorkStealingQueue<re::Job *>::CircularArray::get(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = (v2 - 1) & a2;
  if (v2 <= v3)
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
    v14 = v3;
    v15 = 2048;
    v16 = v2;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 16) + 8 * v3);
}

void re::JobProfiler::~JobProfiler(re::JobProfiler *this)
{
  re::JobProfiler::deinit(this);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 20);
  re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(this + 17);
  re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>>::deinit(this + 14);
  re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(this + 11);
  re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>>::deinit(this + 8);
  re::StringID::destroyString((this + 8));
}

void re::JobProfiler::deinit(re::JobProfiler *this)
{
  if (*this)
  {
    v2 = *(this + 9);
    if (v2)
    {
      v3 = *(this + 10);
      v4 = &v3[12 * v2];
      do
      {
        v70 = *v3;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        if (*(v3 + 1))
        {
          v5 = *(v3 + 3);
          v71 = *(v3 + 1);
          re::DynamicArray<re::internal::JobProfilerThreadData>::setCapacity(&v71, v5);
          ++v74;
          v6 = *(v3 + 3);
          v7 = v73;
          if (v6 >= v73)
          {
            re::DynamicArray<re::internal::JobProfilerThreadData>::setCapacity(&v71, *(v3 + 3));
            v17 = *(v3 + 5);
            v18 = v73;
            v19 = v75;
            if (v73)
            {
              v20 = 80 * v73;
              do
              {
                v21 = re::StringID::operator=(v19, v17);
                v22 = *(v17 + 16);
                v23 = *(v17 + 32);
                v24 = *(v17 + 48);
                *(v21 + 60) = *(v17 + 60);
                *(v21 + 2) = v23;
                *(v21 + 3) = v24;
                *(v21 + 1) = v22;
                v17 += 80;
                v19 = v21 + 10;
                v20 -= 80;
              }

              while (v20);
              v19 = v75;
              v18 = v73;
              v17 = *(v3 + 5);
            }

            if (v18 != v6)
            {
              v25 = 5 * v18;
              v26 = v17 + 16 * v25;
              v27 = &v19[2 * v25];
              v28 = 80 * v6 - 16 * v25;
              do
              {
                v29 = re::StringID::StringID(v27, v26);
                v30 = *(v26 + 16);
                v31 = *(v26 + 32);
                v32 = *(v26 + 48);
                *(v29 + 60) = *(v26 + 60);
                *(v29 + 2) = v31;
                *(v29 + 3) = v32;
                *(v29 + 1) = v30;
                v26 += 80;
                v27 = (v29 + 80);
                v28 -= 80;
              }

              while (v28);
            }
          }

          else
          {
            v8 = v75;
            if (v6)
            {
              v9 = *(v3 + 5);
              v10 = 80 * v6;
              do
              {
                v11 = re::StringID::operator=(v8, v9);
                v12 = *(v9 + 16);
                v13 = *(v9 + 32);
                v14 = *(v9 + 48);
                *(v11 + 60) = *(v9 + 60);
                *(v11 + 2) = v13;
                *(v11 + 3) = v14;
                *(v11 + 1) = v12;
                v9 += 80;
                v8 = v11 + 10;
                v10 -= 80;
              }

              while (v10);
              v8 = v75;
              v7 = v73;
            }

            if (v6 != v7)
            {
              v15 = &v8[10 * v6];
              v16 = 80 * v7 - 80 * v6;
              do
              {
                re::StringID::destroyString(v15);
                v15 = (v15 + 80);
                v16 -= 80;
              }

              while (v16);
            }
          }

          v73 = v6;
        }

        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>::deinitValues(&v70);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>::deinitValues(&v70);
        re::DynamicArray<re::internal::JobProfilerThreadData>::deinit(&v71);
        v3 += 12;
      }

      while (v3 != v4);
    }

    v33 = *(this + 15);
    if (v33)
    {
      v34 = *(this + 16);
      v35 = &v34[12 * v33];
      do
      {
        v70 = *v34;
        v75 = 0;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = 0;
        if (*(v34 + 1))
        {
          v36 = *(v34 + 3);
          v71 = *(v34 + 1);
          re::DynamicArray<re::internal::JobProfilerFiberData>::setCapacity(&v71, v36);
          ++v74;
          v37 = *(v34 + 3);
          v38 = v73;
          if (v37 >= v73)
          {
            re::DynamicArray<re::internal::JobProfilerFiberData>::setCapacity(&v71, *(v34 + 3));
            v48 = *(v34 + 5);
            v49 = v73;
            v50 = v75;
            if (v73)
            {
              v51 = 72 * v73;
              do
              {
                v52 = re::StringID::operator=(v50, v48);
                v53 = *(v48 + 16);
                v54 = *(v48 + 32);
                v55 = *(v48 + 48);
                *(v52 + 16) = *(v48 + 64);
                *(v52 + 2) = v54;
                *(v52 + 3) = v55;
                *(v52 + 1) = v53;
                v48 += 72;
                v50 = v52 + 9;
                v51 -= 72;
              }

              while (v51);
              v50 = v75;
              v49 = v73;
              v48 = *(v34 + 5);
            }

            if (v49 != v37)
            {
              v56 = 9 * v49;
              v57 = v48 + 8 * v56;
              v58 = &v50[v56];
              v59 = 72 * v37 - 8 * v56;
              do
              {
                v60 = re::StringID::StringID(v58, v57);
                v61 = *(v57 + 16);
                v62 = *(v57 + 32);
                v63 = *(v57 + 48);
                *(v60 + 16) = *(v57 + 64);
                *(v60 + 2) = v62;
                *(v60 + 3) = v63;
                *(v60 + 1) = v61;
                v57 += 72;
                v58 = (v60 + 72);
                v59 -= 72;
              }

              while (v59);
            }
          }

          else
          {
            v39 = v75;
            if (v37)
            {
              v40 = *(v34 + 5);
              v41 = 72 * v37;
              do
              {
                v42 = re::StringID::operator=(v39, v40);
                v43 = *(v40 + 16);
                v44 = *(v40 + 32);
                v45 = *(v40 + 48);
                *(v42 + 16) = *(v40 + 64);
                *(v42 + 2) = v44;
                *(v42 + 3) = v45;
                *(v42 + 1) = v43;
                v40 += 72;
                v39 = v42 + 9;
                v41 -= 72;
              }

              while (v41);
              v39 = v75;
              v38 = v73;
            }

            if (v37 != v38)
            {
              v46 = &v39[9 * v37];
              v47 = 72 * v38 - 72 * v37;
              do
              {
                re::StringID::destroyString(v46);
                v46 = (v46 + 72);
                v47 -= 72;
              }

              while (v47);
            }
          }

          v73 = v37;
        }

        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>::deinitValues(&v70);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>::deinitValues(&v70);
        re::DynamicArray<re::internal::JobProfilerFiberData>::deinit(&v71);
        v34 += 12;
      }

      while (v34 != v35);
    }

    v64 = *(this + 18);
    if (v64)
    {
      v65 = 48 * v64;
      v66 = (*(this + 19) + 8);
      do
      {
        v70 = *(v66 - 2);
        re::DynamicArray<re::internal::JobProfilerJobData>::DynamicArray(&v71, v66);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(&v70);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(&v70);
        re::DynamicArray<re::internal::JobProfilerJobData>::deinit(&v71);
        v66 += 6;
        v65 -= 48;
      }

      while (v65);
    }

    v67 = *(this + 12);
    if (v67)
    {
      v68 = 48 * v67;
      v69 = (*(this + 13) + 8);
      do
      {
        v70 = *(v69 - 2);
        re::DynamicArray<re::internal::JobProfilerJobData>::DynamicArray(&v71, v69);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(&v70);
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(&v70);
        re::DynamicArray<re::internal::JobProfilerJobData>::deinit(&v71);
        v69 += 6;
        v68 -= 48;
      }

      while (v68);
    }

    re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>>::deinit(this + 8);
    re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>>::deinit(this + 14);
    re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(this + 17);
    re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(this + 11);
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 20);
    *this = 0;
  }
}

void re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>::deinitValues(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v2 + 80 * v1;
    do
    {
      v4 = re::StringID::StringID(&v8, v2);
      v5 = *(v2 + 16);
      v6 = *(v2 + 32);
      v7 = *(v2 + 48);
      *(v12 + 12) = *(v2 + 60);
      v11 = v6;
      v12[0] = v7;
      v10 = v5;
      if (v8)
      {
        if (v8)
        {
        }
      }

      v2 += 80;
    }

    while (v2 != v3);
  }
}

void re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>::deinitValues(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v2 + 72 * v1;
    do
    {
      v4 = re::StringID::StringID(&v8, v2);
      v5 = *(v2 + 16);
      v6 = *(v2 + 32);
      v7 = *(v2 + 48);
      v14 = *(v2 + 64);
      v12 = v6;
      v13 = v7;
      v10 = v5;
      v11 = 0;
      if (v8)
      {
        if (v8)
        {
        }
      }

      v2 += 72;
    }

    while (v2 != v3);
  }
}

void re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 40);
    v3 = v2 + 344 * v1;
    do
    {
      memcpy(__dst, v2, sizeof(__dst));
      v4 = re::StringID::StringID(&v9, (v2 + 272));
      v5 = *(v2 + 288);
      v6 = *(v2 + 304);
      v7 = *(v2 + 320);
      v15 = *(v2 + 336);
      v13 = *(&v6 + 1);
      v14 = v7;
      v11 = v5;
      v12 = 0;
      if (v9)
      {
        if (v9)
        {
        }
      }

      v2 += 344;
    }

    while (v2 != v3);
  }
}

void *re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = v4 + 48 * v2;
      do
      {
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerThreadData>::deinitValues(v4);
        re::DynamicArray<re::internal::JobProfilerThreadData>::deinit(v4 + 8);
        v4 += 48;
      }

      while (v4 != v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = v4 + 48 * v2;
      do
      {
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerFiberData>::deinitValues(v4);
        re::DynamicArray<re::internal::JobProfilerFiberData>::deinit(v4 + 8);
        v4 += 48;
      }

      while (v4 != v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::FixedArray<re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = v4 + 48 * v2;
      do
      {
        re::internal::JobProfilerDataBuffer<re::internal::JobProfilerJobData>::deinitValues(v4);
        re::DynamicArray<re::internal::JobProfilerJobData>::deinit(v4 + 8);
        v4 += 48;
      }

      while (v4 != v5);
      result = (*(**v1 + 40))(*v1, v1[2]);
      *v3 = 0;
      v3[1] = 0;
    }

    *v1 = 0;
  }

  return result;
}

void *re::DynamicArray<re::internal::JobProfilerThreadData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::JobProfilerThreadData>::setCapacity(v5, a2);
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
        v10 = 80 * v9;
        v11 = v7;
        do
        {
          re::StringID::StringID(v11, v8);
          v12 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 48);
          *(v11 + 60) = *(v8 + 60);
          v11[2] = v13;
          v11[3] = v14;
          v11[1] = v12;
          re::StringID::destroyString(v8);
          v8 += 80;
          v11 += 5;
          v10 -= 80;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::JobProfilerJobData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::JobProfilerJobData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x158uLL))
        {
          v2 = 344 * a2;
          result = (*(*result + 32))(result, 344 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 344, a2);
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
        v10 = v8 + 344 * v9;
        v11 = v7;
        do
        {
          memcpy(v11, v8, 0x110uLL);
          re::StringID::StringID((v11 + 34), (v8 + 272));
          v12 = *(v8 + 288);
          v13 = *(v8 + 304);
          v14 = *(v8 + 320);
          v11[42] = *(v8 + 336);
          *(v11 + 19) = v13;
          *(v11 + 20) = v14;
          *(v11 + 18) = v12;
          re::StringID::destroyString((v8 + 272));
          v11 += 43;
          v8 += 344;
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

void *re::DynamicArray<re::internal::JobProfilerFiberData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::internal::JobProfilerFiberData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
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
        v10 = 72 * v9;
        v11 = v7;
        do
        {
          re::StringID::StringID(v11, v8);
          v12 = *(v8 + 16);
          v13 = *(v8 + 32);
          v14 = *(v8 + 48);
          *(v11 + 16) = *(v8 + 64);
          *(v11 + 2) = v13;
          *(v11 + 3) = v14;
          *(v11 + 1) = v12;
          re::StringID::destroyString(v8);
          v8 += 72;
          v11 = (v11 + 72);
          v10 -= 72;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::internal::JobProfilerJobData>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<re::internal::JobProfilerJobData>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    v7 = *(a1 + 16);
    if (v6 >= v7)
    {
      re::DynamicArray<re::internal::JobProfilerJobData>::setCapacity(a1, a2[2]);
      v16 = a2[4];
      v17 = *(a1 + 16);
      v18 = *(a1 + 32);
      if (v17)
      {
        v19 = v16 + 344 * v17;
        do
        {
          memcpy(v18, v16, 0x110uLL);
          re::StringID::operator=((v18 + 272), (v16 + 272));
          v20 = *(v16 + 288);
          v21 = *(v16 + 304);
          v22 = *(v16 + 320);
          *(v18 + 336) = *(v16 + 336);
          *(v18 + 304) = v21;
          *(v18 + 320) = v22;
          *(v18 + 288) = v20;
          v16 += 344;
          v18 += 344;
        }

        while (v16 != v19);
        v18 = *(a1 + 32);
        v17 = *(a1 + 16);
        v16 = a2[4];
      }

      if (v17 != v6)
      {
        v23 = 344 * v17;
        v24 = v16 + v23;
        v25 = v18 + v23;
        do
        {
          memcpy(v25, v24, 0x110uLL);
          re::StringID::StringID((v25 + 272), (v24 + 272));
          v26 = *(v24 + 288);
          v27 = *(v24 + 304);
          v28 = *(v24 + 320);
          *(v25 + 336) = *(v24 + 336);
          *(v25 + 304) = v27;
          *(v25 + 320) = v28;
          *(v25 + 288) = v26;
          v24 += 344;
          v25 += 344;
        }

        while (v24 != v16 + 344 * v6);
      }
    }

    else
    {
      v8 = *(a1 + 32);
      if (v6)
      {
        v9 = a2[4];
        v10 = v9 + 344 * v6;
        do
        {
          memcpy(v8, v9, 0x110uLL);
          re::StringID::operator=((v8 + 272), (v9 + 272));
          v11 = *(v9 + 288);
          v12 = *(v9 + 304);
          v13 = *(v9 + 320);
          *(v8 + 336) = *(v9 + 336);
          *(v8 + 304) = v12;
          *(v8 + 320) = v13;
          *(v8 + 288) = v11;
          v9 += 344;
          v8 += 344;
        }

        while (v9 != v10);
        v8 = *(a1 + 32);
        v7 = *(a1 + 16);
      }

      if (v6 != v7)
      {
        v14 = -344 * v6 + 344 * v7;
        v15 = (344 * v6 + v8 + 272);
        do
        {
          re::StringID::destroyString(v15);
          v15 = (v15 + 344);
          v14 -= 344;
        }

        while (v14);
      }
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

uint64_t re::DynamicArray<re::internal::JobProfilerThreadData>::deinit(uint64_t a1)
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
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 80);
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

uint64_t re::DynamicArray<re::internal::JobProfilerJobData>::deinit(uint64_t a1)
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
        v5 = 344 * v4;
        v6 = (v3 + 272);
        do
        {
          re::StringID::destroyString(v6);
          v6 = (v6 + 344);
          v5 -= 344;
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

uint64_t re::DynamicArray<re::internal::JobProfilerFiberData>::deinit(uint64_t a1)
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
        v5 = 72 * v4;
        do
        {
          re::StringID::destroyString(v3);
          v3 = (v3 + 72);
          v5 -= 72;
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

unint64_t re::internal::Fiber::init(re::internal::Fiber *this, void (*a2)(void *), void *a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_1EE1C3E40, memory_order_acquire) & 1) == 0)
  {
    v12 = a4;
    v11 = __cxa_guard_acquire(&qword_1EE1C3E40);
    a4 = v12;
    if (v11)
    {
      _MergedGlobals_561 = getpagesize();
      __cxa_guard_release(&qword_1EE1C3E40);
      a4 = v12;
    }
  }

  v7 = _MergedGlobals_561;
  v8 = (a4 + _MergedGlobals_561 - 1) & -_MergedGlobals_561;
  *(this + 6) = v8;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, (v7 + 7) & 0xFFFFFFFFFFFFFFF8, v8, 0xAE8B065EuLL);
  v9 = memptr;
  *(this + 5) = memptr;
  *this = result;
  *(this + 3) = a2;
  *(this + 4) = a3;
  return result;
}

void anonymous namespace::fiberEntryPoint(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a2 = a1;
  a2[1] = 0;
  (*(v2 + 24))(*(v2 + 32));
  re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) Fiber ended without transferring control back to another fiber.", "!Unreachable code", "fiberEntryPoint", 169);
  _os_crash("assertion failure: (!Unreachable code) Fiber ended without transferring control back to another fiber.");
  __break(1u);
}

void DispatchJobManager::currentWorkerThreadIndex(DispatchJobManager *this, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Not Implemented", "!Unreachable code", "currentWorkerThreadIndex", 23);
  _os_crash("assertion failure: (!Unreachable code) Not Implemented");
  __break(1u);
}

void DispatchJobManager::run(dispatch_queue_t *this, re::Job *a2)
{
  DispatchJobManager::runAsync(this, a2, 1u, &v3);
  while (atomic_load_explicit(&v3, memory_order_acquire))
  {
    dispatch_sync(this[1], &__block_literal_global_51);
  }
}

void DispatchJobManager::runAsync(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4)
{
  v4 = a2;
  if (a4)
  {
    *a4 = a3;
    if (!a3)
    {
      return;
    }

    v6 = (a3 + 1) & 0x1FFFFFFFELL;
    v7 = vdupq_n_s64(a3 - 1);
    v8 = xmmword_1E3049620;
    v9 = (a2 + 72);
    v10 = vdupq_n_s64(2uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v7, v8));
      if (v11.i8[0])
      {
        *(v9 - 8) = a4;
      }

      if (v11.i8[4])
      {
        *v9 = a4;
      }

      v8 = vaddq_s64(v8, v10);
      v9 += 16;
      v6 -= 2;
    }

    while (v6);
  }

  if (a3)
  {
    v12 = MEMORY[0x1E69E9820];
    v13 = a3;
    do
    {
      v14 = *(a1 + 8);
      block[0] = v12;
      block[1] = 0x40000000;
      block[2] = ___ZN18DispatchJobManager8runAsyncEPN2re3JobEjPNSt3__16atomicIiEEb_block_invoke;
      block[3] = &__block_descriptor_tmp_34;
      block[4] = v4;
      dispatch_async(v14, block);
      v4 += 64;
      --v13;
    }

    while (v13);
  }
}

void DispatchJobManager::waitFor(uint64_t a1, atomic_uint *a2)
{
  while (atomic_load_explicit(a2, memory_order_acquire))
  {
    dispatch_sync(*(a1 + 8), &__block_literal_global_51);
  }
}

uint64_t ___ZN18DispatchJobManager8runAsyncEPN2re3JobEjPNSt3__16atomicIiEEb_block_invoke(uint64_t a1)
{
  result = (**(a1 + 32))();
  v3 = *(*(a1 + 32) + 8);
  if (v3)
  {
    atomic_fetch_add_explicit(v3, 0xFFFFFFFF, memory_order_release);
  }

  return result;
}

void re::internal::setThreadPriority(_opaque_pthread_t *this, _opaque_pthread_t *a2)
{
  v2 = a2;
  v8 = *MEMORY[0x1E69E9840];
  *v5.__opaque = 0;
  v5.sched_priority = a2;
  v3 = pthread_setschedparam(this, 2, &v5);
  if (v3 == -1)
  {
    v4 = *re::foundationThreadingLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v7 = v2;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Failed to change thread to priority to %d", buf, 8u);
    }
  }
}

re::BackgroundTaskManager *re::BackgroundTaskManager::BackgroundTaskManager(re::BackgroundTaskManager *this)
{
  *this = &unk_1F5D198A0;
  *(this + 2) = 0;
  *(this + 10) = 0;
  *(this + 2) = 0;
  v2 = (this + 16);
  *(this + 24) = 0u;
  *(this + 16) = 0;
  *(this + 3) = 0u;
  *(this + 68) = 0x1FFFFFFFFLL;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v2, 0);
  ++*(this + 10);
  *(this + 15) = 100;
  v3 = re::DataArray<re::BackgroundTask>::allocBlock(v2);
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 26) = 0;
  *(this + 10) = 0;
  v4 = re::DynamicArray<float *>::setCapacity(this + 10, 0x64uLL);
  ++*(this + 26);
  *(this + 20) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  v5 = re::DynamicArray<float *>::setCapacity(this + 16, 0x64uLL);
  ++*(this + 38);
  *(this + 25) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 21) = 0;
  re::DynamicArray<float *>::setCapacity(this + 21, 0x64uLL);
  ++*(this + 48);
  return this;
}

void re::BackgroundTaskManager::~BackgroundTaskManager(re::BackgroundTaskManager *this)
{
  re::BackgroundTaskManager::update(this);
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 20);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      atomic_store(1u, (v5 + 80));
      v4 -= 8;
    }

    while (v4);
  }

  v6 = atomic_load(this + 2);
  if (v6 >= 1)
  {
    do
    {
      if (*(this + 18))
      {
        v7 = **(this + 20);
        v8 = dispatch_time(0, 8000000);
        dispatch_group_wait(*(v7 + 208), v8);
        atomic_load((v7 + 72));
        v9 = *(this + 18);
        if (v9)
        {
          v10 = *(this + 20);
          v11 = 8 * v9;
          do
          {
            v12 = *v10++;
            atomic_store(1u, (v12 + 80));
            v11 -= 8;
          }

          while (v11);
        }
      }

      re::BackgroundTaskManager::update(this);
      v13 = atomic_load(this + 2);
    }

    while (v13 > 0);
  }

  re::DynamicArray<unsigned long>::deinit(this + 168);
  re::DynamicArray<unsigned long>::deinit(this + 128);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DataArray<re::BackgroundTask>::deinit(this + 16);
  re::DynamicArray<unsigned long>::deinit(this + 16);
}

{
  re::BackgroundTaskManager::~BackgroundTaskManager(this);

  JUMPOUT(0x1E6906520);
}

void re::BackgroundTaskManager::update(re::BackgroundTaskManager *this)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 23) >= 1)
  {
    v4 = (*(this + 23) & 0x7FFFFFFFLL) - 1;
    do
    {
      v5 = *(this + 23);
      if (v5 <= v4)
      {
        v32 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v23 = MEMORY[0x1E69E9C10];
        v33 = 136315906;
        v34 = "operator[]";
        v35 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v24 = 3;
        }

        else
        {
          v24 = 2;
        }

        v36 = 789;
        v37 = 2048;
        v38 = v4;
        v39 = 2048;
        v40 = v5;
        _os_log_send_and_compose_impl(v24, &v32, &v41, 80, &dword_1E1C61000, v23, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
        _os_crash_msg();
        __break(1u);
LABEL_35:
        v32 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v33 = 136315906;
        v34 = "removeStableAt";
        v35 = 1024;
        if (v26)
        {
          v27 = 3;
        }

        else
        {
          v27 = 2;
        }

        v36 = 969;
        v37 = 2048;
        v38 = v2;
        v39 = 2048;
        v40 = v5;
        _os_log_send_and_compose_impl(v27, &v32, &v41, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
        _os_crash_msg();
        __break(1u);
LABEL_39:
        v32 = 0;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v41 = 0u;
        v28 = MEMORY[0x1E69E9C10];
        v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v33 = 136315906;
        v34 = "removeAt";
        v35 = 1024;
        if (v29)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        v36 = 931;
        v37 = 2048;
        v38 = v4;
        v39 = 2048;
        v40 = v1;
        _os_log_send_and_compose_impl(v30, &v32, &v41, 80, &dword_1E1C61000, v28, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v33, 38, v31);
        _os_crash_msg();
        __break(1u);
      }

      v6 = *(*(this + 25) + 8 * v4);
      v7 = atomic_load((v6 + 81));
      if (v7)
      {
        v1 = *(this + 23);
        if (v1 <= v4)
        {
          goto LABEL_39;
        }

        if (v1 - 1 > v4)
        {
          *(*(this + 25) + 8 * v4) = *(*(this + 25) + 8 * v1 - 8);
        }

        *(this + 23) = v1 - 1;
        ++*(this + 48);
        os_unfair_lock_lock(this + 30);
        v8 = re::DataArray<re::BackgroundTask>::handle(this + 16, v6);
        re::DataArray<re::BackgroundTask>::destroy(this + 16, v8);
        os_unfair_lock_unlock(this + 30);
      }

      v9 = v4-- + 1;
    }

    while (v9 > 1);
  }

  os_unfair_lock_lock(this + 31);
  v10 = *(this + 12);
  if (v10)
  {
    v11 = *(this + 14);
    v12 = 8 * v10;
    do
    {
      re::DynamicArray<re::RigDataValue *>::add((this + 128), v11++);
      v12 -= 8;
    }

    while (v12);
  }

  *(this + 12) = 0;
  ++*(this + 26);
  os_unfair_lock_unlock(this + 31);
  if (*(this + 18))
  {
    v2 = 0;
    v4 = 0;
    v1 = 0xFFFFFFFFLL;
    do
    {
      v31 = *(*(this + 20) + 8 * v2);
      v13 = atomic_load((v31 + 72));
      v14 = v31;
      if (v13 == 1)
      {
        re::internal::AutoResetEvent::set((v31 + 88));
        v4 = (v4 + 1);
      }

      else
      {
        v15 = *(v31 + 64);
        if (v15)
        {
          (*(*v15 + 48))(v15, v31);
          v16 = *(v14 + 64);
          *(v14 + 64) = 0;
          if (v16 == v14 + 40)
          {
            (*(*v16 + 32))(v16);
          }

          else if (v16)
          {
            (*(*v16 + 40))(v16);
          }
        }

        atomic_fetch_add(this + 2, 0xFFFFFFFF);
        v5 = *(this + 18);
        if (v5 <= v2)
        {
          goto LABEL_35;
        }

        v17 = v5 - 1;
        if (v5 - 1 > v2)
        {
          v18 = *(this + 20);
          v19 = v18 + 8 * v2;
          v20 = v18 + 8 * v5;
          if (v20 != v19 + 8)
          {
            memmove(v19, (v19 + 8), v20 - (v19 + 8));
            v17 = *(this + 18) - 1;
          }
        }

        *(this + 18) = v17;
        ++*(this + 38);
        v21 = atomic_load((v31 + 81));
        if (v21)
        {
          os_unfair_lock_lock(this + 30);
          v22 = re::DataArray<re::BackgroundTask>::handle(this + 16, v31);
          re::DataArray<re::BackgroundTask>::destroy(this + 16, v22);
          os_unfair_lock_unlock(this + 30);
        }

        else
        {
          re::DynamicArray<re::RigDataValue *>::add((this + 168), &v31);
        }
      }

      v2 = v4;
    }

    while (*(this + 18) > v4);
  }
}

uint64_t re::BackgroundTaskManager::runAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  atomic_fetch_add((a1 + 8), 1u);
  os_unfair_lock_lock((a1 + 120));
  v11 = *(a1 + 72);
  if ((v11 + 1) >> 24)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 + 1;
  }

  *(a1 + 72) = v12;
  v13 = *(a1 + 68);
  v14 = *(a1 + 70);
  if (v13 == 0xFFFF && v14 == 0xFFFF)
  {
    if (*(a1 + 64) >= *(a1 + 60))
    {
      re::DataArray<re::BackgroundTask>::allocBlock((a1 + 16));
    }

    v18 = *(a1 + 32);
    v14 = (v18 - 1);
    if (!v18)
    {
      goto LABEL_25;
    }

    v13 = *(a1 + 64);
    if (v13 >= 0x10000)
    {
      goto LABEL_29;
    }

    v19 = (*(a1 + 48) + 16 * v14);
    *(a1 + 64) = v13 + 1;
    *(v19[1] + 4 * v13) = *(a1 + 72);
    v16 = (*v19 + 216 * v13);
  }

  else
  {
    v16 = *(a1 + 32);
    if (v16 <= v14)
    {
LABEL_21:
      v36 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v27 = MEMORY[0x1E69E9C10];
      v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v37 = 136315906;
      *&v37[4] = "operator[]";
      v38 = 1024;
      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v39 = 789;
      v40 = 2048;
      v41 = v14;
      v42 = 2048;
      v43 = v16;
      _os_log_send_and_compose_impl(v29, &v36, &v44, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v37, 38, v34, v35);
      _os_crash_msg();
      __break(1u);
LABEL_25:
      v36 = 0;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      v30 = MEMORY[0x1E69E9C10];
      v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v37 = 136315906;
      *&v37[4] = "operator[]";
      v38 = 1024;
      if (v31)
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      v39 = 789;
      v40 = 2048;
      v41 = v14;
      v42 = 2048;
      v43 = 0;
      _os_log_send_and_compose_impl(v32, &v36, &v44, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v37, 38, v34, v35);
      _os_crash_msg();
      __break(1u);
LABEL_29:
      re::internal::assertLog(5, v10, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v13);
      _os_crash("assertion failure: (!overflow) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", v33);
      __break(1u);
    }

    v17 = (*(a1 + 48) + 16 * v14);
    *(v17[1] + 4 * v13) = v12;
    v16 = (*v17 + 216 * v13);
    *(a1 + 68) = *v16;
  }

  ++*(a1 + 56);
  std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::__value_func[abi:nn200100](&v44, a3);
  std::__function::__value_func<void ()(re::BackgroundTask &)>::__value_func[abi:nn200100](v37, a4);
  re::BackgroundTask::BackgroundTask(v16, a2, &v44, v37);
  std::__function::__value_func<void ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](v37);
  std::__function::__value_func<re::BackgroundTaskResult ()(re::BackgroundTask &)>::~__value_func[abi:nn200100](&v44);
  v20 = v14 + (v13 >> 16);
  v21 = *(a1 + 32);
  if (v21 <= v20)
  {
    v36 = 0;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v44 = 0u;
    v24 = MEMORY[0x1E69E9C10];
    v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v37 = 136315906;
    *&v37[4] = "operator[]";
    v38 = 1024;
    if (v25)
    {
      v26 = 3;
    }

    else
    {
      v26 = 2;
    }

    v39 = 797;
    v40 = 2048;
    v41 = v14 + (v13 >> 16);
    v42 = 2048;
    v43 = v21;
    _os_log_send_and_compose_impl(v26, &v36, &v44, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v37, 38, v34, v35);
    _os_crash_msg();
    __break(1u);
    goto LABEL_21;
  }

  v22 = *(*(a1 + 48) + 16 * v20) + 216 * v13;
  *v37 = v22;
  os_unfair_lock_unlock((a1 + 120));
  atomic_store(1u, (v22 + 72));
  re::dispatch::Queue::global(&v44, a5, 0);
  re::dispatch::Group::async((v22 + 208), &v44, v22, re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::__invoke);

  os_unfair_lock_lock((a1 + 124));
  re::DynamicArray<re::RigDataValue *>::add((a1 + 80), v37);
  os_unfair_lock_unlock((a1 + 124));
  return v22;
}

uint64_t re::DataArray<re::BackgroundTask>::handle(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (*(a1 + 32) + 8);
    v5 = 0x10000;
    while (v5)
    {
      v6 = a2 - *(v4 - 1);
      if (v6 >= -215)
      {
        v7 = 0x84BDA12F684BDA13 * (v6 >> 3);
        if (v7 < *(a1 + 44))
        {
          goto LABEL_8;
        }
      }

      v3 -= 0x10000;
      --v5;
      v4 += 2;
      if (!--v2)
      {
        goto LABEL_7;
      }
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) blockIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 692, 0x10000);
    _os_crash("assertion failure: (!overflow) blockIndex (%zu) is too large for a 16-bit unsigned integer", v9);
    __break(1u);
  }

  else
  {
LABEL_7:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) element isn't in data array", "!Unreachable code", "handle", 707);
    _os_crash("assertion failure: (!Unreachable code) element isn't in data array");
    __break(1u);
LABEL_8:
    if (v7 < 0x10000)
    {
      return v7 + ((*(*v4 + 4 * v7) & 0xFFFFFF) << 32) - v3;
    }
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) arrayIndex (%zu) is too large for a 16-bit unsigned integer", "!overflow", "handle", 700, v7);
  result = _os_crash("assertion failure: (!overflow) arrayIndex (%zu) is too large for a 16-bit unsigned integer", v10);
  __break(1u);
  return result;
}

void re::DataArray<re::BackgroundTask>::destroy(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = WORD1(a2);
  v3 = *(a1 + 16);
  if (WORD1(a2) < v3)
  {
    v4 = a2;
    v6 = (v3 - 1) == WORD1(a2) ? *(a1 + 48) : *(a1 + 44);
    if (a2 < v6)
    {
      v7 = a2;
      v8 = (*(a1 + 32) + 16 * WORD1(a2));
      v9 = *(v8[1] + 4 * a2);
      if (v9 && v9 == (HIDWORD(a2) & 0xFFFFFF))
      {
        v11 = *v8;
        if (v11)
        {
          re::BackgroundTask::~BackgroundTask((v11 + 216 * a2));
          v13 = *(a1 + 16);
          if (v13 <= v2)
          {
            v18 = 0;
            memset(v27, 0, sizeof(v27));
            v14 = MEMORY[0x1E69E9C10];
            v15 = v13;
            v19 = 136315906;
            v20 = "operator[]";
            v21 = 1024;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v16 = 3;
            }

            else
            {
              v16 = 2;
            }

            v22 = 789;
            v23 = 2048;
            v24 = v2;
            v25 = 2048;
            v26 = v15;
            _os_log_send_and_compose_impl(v16, &v18, v27, 80, &dword_1E1C61000, v14, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v19, 38, v17);
            _os_crash_msg();
            __break(1u);
          }

          *(*(*(a1 + 32) + 16 * v2 + 8) + 4 * v7) = 0;
          *v12 = *(a1 + 52);
          *(a1 + 52) = v4;
          --*(a1 + 40);
        }
      }
    }
  }
}

uint64_t re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::__invoke(uint64_t result)
{
  v1 = result;
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = atomic_load((result + 80));
  if (v2)
  {
    atomic_store(3u, (result + 72));
  }

  else
  {
    v4 = 0;
    v5[0] = &unk_1F5D19900;
    v5[1] = result;
    v5[2] = &v4;
    v5[3] = v5;
    re::runInLocalAutoreleasePool(v5);
    result = std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v5);
    if (v4)
    {
      v3 = 3;
    }

    else
    {
      atomic_store(0x3F800000u, (v1 + 76));
      v3 = 2;
    }

    atomic_store(v3, (v1 + 72));
  }

  return result;
}

__n128 std::__function::__func<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1},std::allocator<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D19900;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1},std::allocator<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 32);
  if (v2)
  {
    result = (*(*v2 + 48))(v2);
    **(a1 + 16) = result;
  }

  else
  {
    v4 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1},std::allocator<re::BackgroundTaskManager::start(re::BackgroundTask *,qos_class_t)::$_0::operator() const(void *)::{lambda(void)#1}>,void ()(void)>::target(v4, v5);
  }

  return result;
}