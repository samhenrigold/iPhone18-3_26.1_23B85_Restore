uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, uint64_t a2)
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(a1 + 32, v6 + 40 * *(a1 + 40) - 40);
  if (*(a1 + 48))
  {
    v7 = a1 + 56;
  }

  else
  {
    v7 = *(a1 + 64);
  }

  v8 = v7 + 40 * *(a1 + 40) - 40;
  v9 = *(a1 + 8) + 24;

  return re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::beginDictionary(v8, v9, a2, a3);
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t result)
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
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(result + 8) + 24, 0);
    v3 = 0;
    *(v2 - 40) = "key";
  }

  *(v2 - 32) = v3;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
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
    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry((*(result + 1) + 24));
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1)
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
    result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(v4);
  }

  else
  {
    result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(v4);
  }

  v6 = *(a1 + 48);
  --*(a1 + 40);
  *(a1 + 48) = v6 + 2;
  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1, unsigned __int8 a2)
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

  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
  return v4;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, char a2)
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned int a2)
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

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v10, 0);
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

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v10, 0);
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

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v10, 0);
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

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v8, 0);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
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

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v8, 0);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int16 a2)
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

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v8, 0);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unint64_t a2)
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

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(*(a1 + 8) + 24, *(v7 + 40 * v5 - 40), *(v7 + 40 * v5 - 32), &v11, 0);
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

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(*(a1 + 8) + 24, *(v7 + 40 * v5 - 40), *(v7 + 40 * v5 - 32), &v11, 0);
  }

  return result;
}

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, rapidjson::internal *a2)
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

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(*(a1 + 8) + 24, *(v6 + 40 * v4 - 40), *(v6 + 40 * v4 - 32), &v8, 0);
  }

  return result;
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, float a2)
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

  return re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, double a2)
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

  return re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), *(v2 + 40 * *(a1 + 40) - 32), &v4, 0);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeString(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v11 = a3;
  v5 = *(result + 12);
  if (v5)
  {
    v6 = result + 56;
  }

  else
  {
    v6 = *(result + 8);
  }

  v7 = *(result + 5);
  v8 = &v6[40 * v7];
  if (*(v8 - 28) == 1 && (*(v8 - 8) & 0x80000000) != 0)
  {
    *(v8 - 5) = a2;
  }

  else
  {
    if (v5)
    {
      v9 = result + 56;
    }

    else
    {
      v9 = *(result + 8);
    }

    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(*(result + 1) + 24, *&v9[40 * v7 - 40], *&v9[40 * v7 - 32], &v11, 0))
    {
      v10 = v11 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(*(v4 + 1) + 24, a2, 0);
    }

    return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((*(v4 + 1) + 24));
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeData(uint64_t a1, uint64_t a2, uint64_t a3)
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

  if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginBLOB(*(a1 + 8) + 24, *(v5 + 40 * *(a1 + 40) - 40), *(v5 + 40 * *(a1 + 40) - 32), &v7, 0))
  {
    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBLOB((*(a1 + 8) + 24), a2, 0);
  }

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endBLOB((*(a1 + 8) + 24));
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), *(v6 + 40 * *(a1 + 40) - 32), &v8, 0);
  if (a2)
  {
    v9 = a2;
    (*(**(a3 + 32) + 16))(*(a3 + 32), a1, &v9);
  }

  return re::EncoderBinary<re::SeekableInputStream>::endPointer((*(a1 + 8) + 24));
}

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::write(uint64_t a1, uint64_t a2, re **this)
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

void *re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), &v19);
  if (v19 == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), &v21), v21 == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v16, a4);
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

uint64_t *re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, re::TypeInfo *a3, re::TypeInfo *a4, uint64_t a5)
{
  v49 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), &v41);
  re::TypeRegistry::typeInfo(*a4, *(*(a4 + 2) + 80), &v37);
  if (v37 == 1)
  {
    if ((v41 & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v38)[1];
      v12 = re::TypeInfo::name(a3);
      return re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Base class %s removed from type %s.", v11, v12[1]);
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
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v42, a5);
      goto LABEL_15;
    }

    if (v43 == v39)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v42, &v38, a5);
    }

    else
    {
      v18 = re::TypeInfo::name(&v42)[1];
      v19 = re::TypeInfo::name(&v38);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, 0, "Type categories of types %s (runtime) and %s (stream) don't match.", v18, v19[1]);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v36, *a3, *(a3 + 2));
  result = re::TypeMemberCollection::TypeMemberCollection(v34, *a4, *(a4 + 2));
  if (v35)
  {
    for (i = 0; i < v35; ++i)
    {
      if (a1[64])
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

          v27 = *(a1 + 34);
          re::TypeRegistry::typeInfo(v32[0], *v33, buf);
          re::TypeInfo::TypeInfo(v30, &v46 + 4);
          result = re::internal::translateType(buf, v27, v30);
          if ((a1[64] & 1) == 0)
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
          if ((a1[64] & 1) == 0)
          {
            result = (*(*a1 + 72))(a1, v21, v22, a2 + v24, v29, v28, a5);
          }
        }
      }
    }
  }

  return result;
}

uint64_t *re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(&v6, *(a1 + 272), a2);
  if (v6)
  {
    v9 = a3;
    v8 = v7 | 0xFFFFFFFF00000000;
    return re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(a1 + 288, &v8, &v9);
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeChar<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeI8<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, char *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeI16<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, __int16 *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeI32<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeI64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeU8<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int8 *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeU16<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned __int16 *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeU32<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, unsigned int *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeU64<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, rapidjson::internal **a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, float *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, double *a4, re *a5, const re::TypeInfo *a6, int a7)
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

    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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

  return re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a3, v14, a7);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6, int a7)
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
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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
    v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, &v27, 0);
    v15 = 0;
    if (v14)
    {
      if (!v27)
      {
        goto LABEL_28;
      }

      if (v27 == 1)
      {
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Found pointer reference instead of C string.");
LABEL_22:
        v15 = 0;
        return v15 & 1;
      }

      v26 = 0;
      if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, 0, &v26, 0))
      {
LABEL_28:
        re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
        v15 = *(a1 + 64) ^ 1;
        return v15 & 1;
      }

      if (!v26)
      {
LABEL_27:
        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
        goto LABEL_28;
      }

      v19 = a1 + 24;
      v18 = 0;
      v20 = 1;
LABEL_26:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(v19, v18, v20);
      goto LABEL_27;
    }
  }

  else
  {
    v27 = 2 * (*a4 != 0);
    v16 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, &v27, 0);
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
      if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, 0, &v26, 0))
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

uint64_t re::serializeStringID<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *a5, const re::TypeInfo *a6, int a7)
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
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
    goto LABEL_23;
  }

LABEL_14:
  if (!a7)
  {
    v26 = strlen(*(a4 + 8));
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v26, 0))
    {
      if (v26)
      {
        v23 = *(a4 + 8);
        v22 = a1 + 24;
        v24 = 0;
        goto LABEL_21;
      }

LABEL_22:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
      v21 = *(a1 + 64) ^ 1;
      return v21 & 1;
    }

LABEL_23:
    v21 = 0;
    return v21 & 1;
  }

  v26 = 0;
  v20 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v26, 0);
  v21 = 0;
  if (v20)
  {
    if (v26)
    {
      v22 = a1 + 24;
      v23 = 0;
      v24 = 1;
LABEL_21:
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(v22, v23, v24);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

  return v21 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, unint64_t **a5, unint64_t **a6, int a7)
{
  if (a5 != a6)
  {
    if (*a5 != *a6)
    {
      if (re::areSameTranslatedVersion(a5, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_18:
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
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
    v26 = *(a1 + 264);
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
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, v36, 0))
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

          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, v29, 0);
        }

        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
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
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Failed to write string for %s (type %s) using serialization callback.", a2, v30[1]);
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
  v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(a1 + 24, a2, a3, &v31, 0);
  v15 = 0;
  if (v14)
  {
    if (v31)
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(a1 + 24, 0, 1);
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
LABEL_9:
    v15 = *(a1 + 64) ^ 1;
  }

  return v15 & 1;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace(uint64_t a1, unint64_t *a2, void *a3)
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
    v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(a1, v7, v6);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(a1, (2 * *(a1 + 28)));
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

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v9, v4, v2);
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
      re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(a1, v9);
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

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(v4, *(v7 + v5 + 4) % *(v4 + 24), *(v7 + v5 + 4));
        *(result + 4) = *(*(a2 + 16) + v5 + 4);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 24;
    }
  }

  return result;
}

void re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_6, 4 * v10);
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(_BYTE *a1, const char *a2, const re::TypeInfo *a3, const char **a4, re *a5, const re::TypeInfo *a6)
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
      re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a5, a6);
LABEL_20:
      v15 = 0;
      return v15 & 1;
    }

    v18 = **(a5 + 2);
    v19 = **(a6 + 2);
    if (v18 != v19)
    {
      goto LABEL_19;
    }

    v21 = WORD1(v18) == WORD1(v19);
    v20 = (v19 ^ v18) & 0xFFFFFF00000000;
    v21 = v21 && v20 == 0;
    if (!v21)
    {
      goto LABEL_19;
    }
  }

LABEL_4:
  if (!*a4)
  {
    LODWORD(v26) = 0;
    v22 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v26, 0);
    v15 = 0;
    if (v22)
    {
      goto LABEL_22;
    }

    return v15 & 1;
  }

  if (a1[336] != 1 || (v26 = *a4, (v12 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet((a1 + 344), &v26)) == 0))
  {
    v25 = 2;
    if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v25, 0))
    {
      v26 = strlen(*a4);
      if (re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, 0, &v26, 0))
      {
        if (v26)
        {
          re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString((a1 + 24), *a4, 0);
        }

        re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString((a1 + 24));
        re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
        v16 = *a4;
        v17 = **(a5 + 2);
        *&v24 = *a5;
        *(&v24 + 1) = v17;
        re::internal::SharedObjectGraph::addObject((a1 + 336), v16, &v24);
        goto LABEL_23;
      }
    }

    goto LABEL_20;
  }

  v13 = *v12;
  v25 = 1;
  LODWORD(v26) = v13;
  v14 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer((a1 + 24), a2, a3, &v25, 0);
  v15 = 0;
  if (v14)
  {
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v26, 0);
LABEL_22:
    re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
LABEL_23:
    v15 = a1[64] ^ 1;
  }

  return v15 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, const char *a2, uint64_t a3, char **a4, re::TypeInfo *this, const re::TypeInfo *a6, char a7)
{
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v24 = **(this + 2);
    v25 = **(a6 + 2);
    if (v24 == v25)
    {
      v27 = WORD1(v24) == WORD1(v25);
      v26 = (v25 ^ v24) & 0xFFFFFF00000000;
      v27 = v27 && v26 == 0;
      if (v27)
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

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v28 = re::TypeInfo::name(this), v29 = re::TypeInfo::name(a6), !re::StringID::operator==(v28, v29))))
  {
    re::internal::setTypeMismatchError<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, this, a6);
    goto LABEL_30;
  }

  v16 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &v37);
  re::TypeInfo::TypeInfo(v36, v38);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v37);
  re::TypeInfo::TypeInfo(v35, v38);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v18 = *v36[2];
    *&v34 = v36[0];
    *(&v34 + 1) = v18;
    if (!v36[0])
    {
      goto LABEL_8;
    }
  }

  else
  {
    re::internal::actualType(&v34, a4, this);
    if (!v34)
    {
LABEL_8:
      v17 = re::TypeInfo::name(this);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "Failed to get actual type of polymorphic object. Type %s.", v17[1]);
LABEL_30:
      v22 = 0;
      return v22 & 1;
    }
  }

  re::TypeRegistry::typeInfo(*this, &v34, &v37);
  re::TypeInfo::TypeInfo(v33, v38);
  if ((a7 & 1) != 0 || (v19 = *a4) == 0)
  {
    LODWORD(v37) = 0;
    v23 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, &v37, 0);
    v22 = 0;
    if (v23)
    {
      goto LABEL_17;
    }

    return v22 & 1;
  }

  if (*(a1 + 336) != 1)
  {
LABEL_33:
    v31 = v34;
    re::internal::SharedObjectGraph::beginObject((a1 + 336), v19, &v31);
    LODWORD(v37) = 2;
    if (!re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, &v37, 0))
    {
      goto LABEL_30;
    }

    if (isPointerToPolymorphicType)
    {
      re::internal::serializePolymorphicObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, a3, *a4, v33, v35, v16);
    }

    else if ((*(a1 + 64) & 1) == 0)
    {
      (*(*a1 + 72))(a1, a2, 0, *a4, v36, v35, 0);
    }

    re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
    if (*(a1 + 336) == 1)
    {
      --*(a1 + 488);
      ++*(a1 + 496);
    }

    goto LABEL_18;
  }

  v37 = *a4;
  v20 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 344, &v37);
  if (!v20)
  {
    v19 = *a4;
    goto LABEL_33;
  }

  LODWORD(v37) = *v20;
  v32 = 1;
  v21 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, a3, &v32, 0);
  v22 = 0;
  if (v21)
  {
    re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference((a1 + 24), &v37, 0);
LABEL_17:
    re::EncoderBinary<re::SeekableInputStream>::endPointer((a1 + 24));
LABEL_18:
    v22 = *(a1 + 64) ^ 1;
  }

  return v22 & 1;
}

_anonymous_namespace_ *re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(_anonymous_namespace_ *result, unsigned int *a2, int a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = a3;
    v5 = result;
    result = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(result, 0, 0, a3);
    if (result)
    {
      re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(v5, "@ref", 0, a2, v3);

      return re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(v5);
    }
  }

  return result;
}

uint64_t re::internal::serializePolymorphicObject<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, const char *a2, uint64_t a3, uint64_t a4, const re::TypeInfo *a5, re::TypeRegistry **a6, int a7)
{
  re::TypeInfo::TypeInfo(v23, a5);
  if (a7)
  {
    v14 = *a6;
    v15 = re::TypeInfo::name(a5);
    re::TypeRegistry::typeInfo(&v21, v14, v15);
    if (v21 != 1)
    {
      v19 = re::TypeInfo::name(a5);
      re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(a1, a2, "No matching type found for polymorphic type %s to serialize.", v19[1]);
      v17 = 0;
      return v17 & 1;
    }

    re::TypeInfo::operator=(v23, &v22);
  }

  v16 = re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject((a1 + 24), a2, a3, 0);
  v17 = 0;
  if (v16)
  {
    v18 = re::TypeInfo::polymorphicObjectName(v23);
    if ((a1[64] & 1) == 0)
    {
      (*(*a1 + 72))(a1, v18[1], 0, a4, a5, v23, 0);
    }

    re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject((a1 + 24));
    v17 = a1[64] ^ 1;
  }

  return v17 & 1;
}

uint64_t re::DynamicArray<re::ecs2::EntityAssetData>::deinit(uint64_t a1)
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
        v5 = 112 * v4;
        do
        {
          re::ecs2::EntityAssetData::~EntityAssetData(v3);
          v3 = (v3 + 112);
          v5 -= 112;
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

uint64_t re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::addNew(uint64_t a1, unint64_t *a2, void *a3)
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

  v7 = re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, v11, v10);
  v8 = *a2;
  *(v7 + 16) = *a3;
  result = v7 + 16;
  *(result - 8) = v8;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
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

void re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (*a1)
  {
    if (v2 && *(a1 + 6) != v2 && *(a1 + 7) <= v2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v9, v4, v2);
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
      re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24), *(v7 + v5 + 24));
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

void re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
      memset_pattern16(v12, &memset_pattern_6, 4 * v10);
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

void *re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x70uLL))
        {
          v2 = 112 * a2;
          result = (*(*result + 32))(result, 112 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 112, a2);
          _os_crash("assertion failure: (!overflow) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", v12, v14);
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash("assertion failure: (newData) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", v13, v15);
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
        v10 = 112 * v9;
        v11 = v7;
        do
        {
          re::ecs2::EntityAssetData::EntityAssetData(v11, v8);
          re::ecs2::EntityAssetData::~EntityAssetData(v8);
          v8 = (v8 + 112);
          v11 += 112;
          v10 -= 112;
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

uint64_t re::ecs2::EntityAssetData::EntityAssetData(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 8);
  *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  *(result + 8) = *(a2 + 8) & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = &str_67;
  *(result + 24) = *(a2 + 24);
  *(result + 64) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 32) = 0;
  v3 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v4 = *(result + 48);
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = v4;
  v5 = *(result + 64);
  *(result + 64) = *(a2 + 64);
  *(a2 + 64) = v5;
  ++*(a2 + 56);
  ++*(result + 56);
  *(result + 104) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 96) = 0;
  v6 = *(a2 + 80);
  *(result + 72) = *(a2 + 72);
  *(result + 80) = v6;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v7 = *(result + 88);
  *(result + 88) = *(a2 + 88);
  *(a2 + 88) = v7;
  v8 = *(result + 104);
  *(result + 104) = *(a2 + 104);
  *(a2 + 104) = v8;
  ++*(a2 + 96);
  ++*(result + 96);
  return result;
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::EntityAssetData>::growCapacity(_anonymous_namespace_ *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t *re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFuncs(void (***a1)(re::TypeRegistry **))
{
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
  (*a1)[8](a1);
  result = re::TypeRegistry::typeID(&v12, a1[34], (a1 + 1));
  if (v12)
  {
    v3 = a1[34];
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
        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::addOrReplace((a1 + 36), &v13, &v14);
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

uint64_t std::__function::__func<re::ecs2::ECSSerialization::loadFromAssetData(re::ecs2::Entity *,re::AssetService *,re::ecs2::SceneAssetData const&)::$_0,std::allocator<re::ecs2::ECSSerialization::loadFromAssetData(re::ecs2::Entity *,re::AssetService *,re::ecs2::SceneAssetData const&)::$_0>,void ()(re::internal::MeshSortGroupFixupTable *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *re::internal::destroyPersistent<re::internal::MeshSortGroupFixupTable>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    v3.n128_f64[0] = re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v1);
    v4 = *(*v2 + 40);

    return v4(v2, v1, v3);
  }

  return result;
}

double re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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

        v4 += 40;
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

uint64_t std::__function::__value_func<void ()(re::internal::MeshSortGroupFixupTable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::internal::MeshSortGroupFixupTable,std::function<void ()(re::internal::MeshSortGroupFixupTable*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[4];
    v5 = v2;
    if (!v3)
    {
      std::__throw_bad_function_call[abi:nn200100]();
      JUMPOUT(0x1E202BE00);
    }

    (*(*v3 + 48))(v3, &v5);
  }

  std::__function::__value_func<void ()(re::internal::MeshSortGroupFixupTable *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__func<re::ecs2::ECSSerialization::loadFromAssetData(re::ecs2::Scene *,re::AssetService *,re::ecs2::SceneAssetData const&)::$_0,std::allocator<re::ecs2::ECSSerialization::loadFromAssetData(re::ecs2::Scene *,re::AssetService *,re::ecs2::SceneAssetData const&)::$_0>,void ()(re::internal::EntityHandleHookupTable *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::unique_ptr<re::internal::EntityHandleHookupTable,std::function<void ()(re::internal::EntityHandleHookupTable*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::internal::EntityHandleHookupTable *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::internal::EntityHandleHookupTable *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::internal::EntityHandleHookupTable *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1E202BFF0);
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<re::ecs2::ECSSerialization::loadFromAssetData(re::ecs2::Scene *,re::AssetService *,re::ecs2::SceneAssetData const&)::$_1,std::allocator<re::ecs2::ECSSerialization::loadFromAssetData(re::ecs2::Scene *,re::AssetService *,re::ecs2::SceneAssetData const&)::$_1>,void ()(re::internal::MeshSortGroupFixupTable *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t re::ecs2::EntityComponentCollection::operator[](uint64_t a1, unint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
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

    v12 = 797;
    v13 = 2048;
    v14 = a2;
    v15 = 2048;
    v16 = v3;
    _os_log_send_and_compose_impl(v6, &v8, v17, 80, &dword_1E1C61000, v5, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v9, 38, v7);
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 40) + 8 * a2;
}

uint64_t re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::open(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *(a1 + 208);
  if (*(v8 + 24) != *(a1 + 216))
  {
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::deinit(a1);
    re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::init(a1, v8);
  }

  v9.n128_f64[0] = re::Encoder<re::EncoderBinary<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::open(a1 + 24, a2, 0, 0xFFFFFFFFLL, a3, a4);
  v10 = *(*a1 + 48);

  return v10(a1, v9);
}

void *allocInfo_AudioComponentDescription(void)
{
  if ((atomic_load_explicit(&_MergedGlobals_75, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_75))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1963B0, "AudioComponentDescription");
    __cxa_guard_release(&_MergedGlobals_75);
  }

  return &unk_1EE1963B0;
}

void initInfo_AudioComponentDescription(re::IntrospectionBase *a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v28[0] = 0x671391F4143CF2ALL;
  v28[1] = "AudioComponentDescription";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(a1 + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE196328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196328))
  {
    v7 = re::introspectionAllocator();
    v9 = re::introspect_uint32_t(1, v8);
    v10 = (*(*v7 + 32))(v7, 72, 8);
    *v10 = 1;
    *(v10 + 8) = "componentType";
    *(v10 + 16) = v9;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    qword_1EE196360 = v10;
    v11 = re::introspectionAllocator();
    v13 = re::introspect_uint32_t(1, v12);
    v14 = (*(*v11 + 32))(v11, 72, 8);
    *v14 = 1;
    *(v14 + 8) = "componentSubType";
    *(v14 + 16) = v13;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0x400000002;
    *(v14 + 40) = 0;
    *(v14 + 48) = 0;
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
    qword_1EE196368 = v14;
    v15 = re::introspectionAllocator();
    v17 = re::introspect_uint32_t(1, v16);
    v18 = (*(*v15 + 32))(v15, 72, 8);
    *v18 = 1;
    *(v18 + 8) = "componentManufacturer";
    *(v18 + 16) = v17;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0x800000003;
    *(v18 + 40) = 0;
    *(v18 + 48) = 0;
    *(v18 + 56) = 0;
    *(v18 + 64) = 0;
    qword_1EE196370 = v18;
    v19 = re::introspectionAllocator();
    v21 = re::introspect_uint32_t(1, v20);
    v22 = (*(*v19 + 32))(v19, 72, 8);
    *v22 = 1;
    *(v22 + 8) = "componentFlags";
    *(v22 + 16) = v21;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0xC00000004;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
    *(v22 + 64) = 0;
    qword_1EE196378 = v22;
    v23 = re::introspectionAllocator();
    v25 = re::introspect_uint32_t(1, v24);
    v26 = (*(*v23 + 32))(v23, 72, 8);
    *v26 = 1;
    *(v26 + 8) = "componentFlagsMask";
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0x1000000005;
    *(v26 + 40) = 0;
    *(v26 + 48) = 0;
    *(v26 + 56) = 0;
    *(v26 + 64) = 0;
    qword_1EE196380 = v26;
    __cxa_guard_release(&qword_1EE196328);
  }

  *(a1 + 2) = 0x1400000008;
  *(a1 + 6) = 4;
  *(a1 + 14) = 1;
  *(a1 + 14) = 5;
  *(a1 + 8) = &qword_1EE196360;
  *(a1 + 9) = re::internal::defaultConstruct<AudioComponentDescription>;
  *(a1 + 11) = 0;
  *(a1 + 12) = 0;
  *(a1 + 10) = re::internal::defaultDestruct<AudioComponentDescription>;
  *(a1 + 13) = re::internal::defaultConstructV2<AudioComponentDescription>;
  *(a1 + 14) = re::internal::defaultDestructV2<AudioComponentDescription>;
  *(a1 + 15) = 0;
  *(a1 + 16) = 0;
  *(a1 + 17) = 0;
  re::internal::prepare(a1, v6);
  v27 = v29;
}

void *re::allocInfo_AudioGeneratorAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE196338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196338))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE196440, "AudioGeneratorAsset");
    __cxa_guard_release(&qword_1EE196338);
  }

  return &unk_1EE196440;
}

void re::initInfo_AudioGeneratorAsset(re *this, re::IntrospectionBase *a2, uint64_t a3, BOOL a4)
{
  v30[0] = 0x4E48AFB12BABDA66;
  v30[1] = "AudioGeneratorAsset";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE196340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196340))
  {
    v7 = re::introspectionAllocator();
    v8 = qword_1EE196330;
    if (!qword_1EE196330)
    {
      v8 = allocInfo_AudioComponentDescription();
      qword_1EE196330 = v8;
      initInfo_AudioComponentDescription(v8, v9, v10, v11);
    }

    v12 = (*(*v7 + 32))(v7, 72, 8);
    *v12 = 1;
    *(v12 + 8) = "componentDescription";
    *(v12 + 16) = v8;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0x4400000001;
    *(v12 + 40) = 0;
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = 0;
    qword_1EE196388 = v12;
    v13 = re::introspectionAllocator();
    v15 = re::introspect_uint32_t(1, v14);
    v16 = (*(*v13 + 32))(v13, 72, 8);
    *v16 = 1;
    *(v16 + 8) = "layoutTag";
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    *(v16 + 32) = 2;
    *(v16 + 40) = 0;
    *(v16 + 48) = 0;
    *(v16 + 56) = 0;
    *(v16 + 64) = 0;
    qword_1EE196390 = v16;
    v17 = re::introspectionAllocator();
    v19 = re::introspect_float(1, v18);
    v20 = (*(*v17 + 32))(v17, 72, 8);
    *v20 = 1;
    *(v20 + 8) = "referenceLevel";
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    *(v20 + 32) = 0x4000000003;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    qword_1EE196398 = v20;
    v21 = re::introspectionAllocator();
    v23 = re::introspect_double(1, v22);
    v24 = (*(*v21 + 32))(v21, 72, 8);
    *v24 = 1;
    *(v24 + 8) = "maximumAlignmentLatency";
    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0x6000000005;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
    *(v24 + 56) = 0;
    *(v24 + 64) = 0;
    qword_1EE1963A0 = v24;
    v25 = re::introspectionAllocator();
    v27 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v26);
    v28 = (*(*v25 + 32))(v25, 72, 8);
    *v28 = 1;
    *(v28 + 8) = "mixGroupName";
    *(v28 + 16) = v27;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0x800000006;
    *(v28 + 40) = 0;
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
    *(v28 + 64) = 0;
    qword_1EE1963A8 = v28;
    __cxa_guard_release(&qword_1EE196340);
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE196388;
  *(this + 9) = re::internal::defaultConstruct<re::AudioGeneratorAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioGeneratorAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioGeneratorAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioGeneratorAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v6);
  v29 = v31;
}

int32x2_t re::internal::defaultConstruct<re::AudioGeneratorAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 6553601;
  *(a3 + 8) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 1117126656;
  result = vdup_n_s32(0x62616464u);
  *(a3 + 56) = 0;
  *(a3 + 68) = result;
  *(a3 + 76) = 1650549860;
  *(a3 + 96) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

int32x2_t re::internal::defaultConstructV2<re::AudioGeneratorAsset>(uint64_t a1)
{
  *a1 = 6553601;
  *(a1 + 8) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 1117126656;
  result = vdup_n_s32(0x62616464u);
  *(a1 + 56) = 0;
  *(a1 + 68) = result;
  *(a1 + 76) = 1650549860;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  return result;
}

void re::AudioGeneratorAsset::~AudioGeneratorAsset(id *this)
{
  if (*(this + 56) == 1)
  {
  }

  if (*(this + 8) == 1)
  {
    re::DynamicString::deinit((this + 2));
  }
}

uint64_t *re::AudioGeneratorAsset::assetType(re::AudioGeneratorAsset *this)
{
  {
    re::AudioGeneratorAsset::assetType(void)::type = "AudioGenerator";
    qword_1EE1C6C68 = 0;
    re::AssetType::generateCompiledExtension(&re::AudioGeneratorAsset::assetType(void)::type);
  }

  return &re::AudioGeneratorAsset::assetType(void)::type;
}

uint64_t re::AudioGeneratorAsset::instantiateAudioUnit(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698D828];
  v4 = *(a1 + 68);
  v5 = *(a1 + 84);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZNK2re19AudioGeneratorAsset20instantiateAudioUnitENSt3__18functionIFvP11AUAudioUnitP7NSErrorEEE_block_invoke;
  v6[3] = &__block_descriptor_64_ea8_32c49_ZTSNSt3__18functionIFvP11AUAudioUnitP7NSErrorEEE_e33_v24__0__AUAudioUnit_8__NSError_16l;
  std::__function::__value_func<void ()(AUAudioUnit *,NSError *)>::__value_func[abi:nn200100](v7, a2);
  [v2 instantiateWithComponentDescription:&v4 options:0 completionHandler:v6];
  return std::__function::__value_func<void ()(AUAudioUnit *,NSError *)>::~__value_func[abi:nn200100](v7);
}

void sub_1E202CE10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::__function::__value_func<void ()(AUAudioUnit *,NSError *)>::~__value_func[abi:nn200100](va);
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"REKit" code:0 userInfo:0];
    std::function<void ()(AUAudioUnit *,NSError *)>::operator()(v15, 0, v18);

    objc_end_catch();
    JUMPOUT(0x1E202CDE0);
  }

  _Unwind_Resume(a1);
}

void std::function<void ()(AUAudioUnit *,NSError *)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v7 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v6);
  }

  (*(*v5 + 48))(v5, &v8, &v7);
}

re *re::AudioGeneratorAssetLoader::unloadAsset(re *this, id *a2)
{
  if (a2)
  {
    v3 = re::globalAllocators(this)[2];
    re::AudioGeneratorAsset::~AudioGeneratorAsset(a2);
    v4 = *(*v3 + 40);

    return v4(v3, a2);
  }

  return this;
}

id *re::internal::destroyPersistent<re::AudioGeneratorAsset>(id *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::AudioGeneratorAsset::~AudioGeneratorAsset(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::AudioGeneratorAssetLoader::introspectionType(re::AudioGeneratorAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE196358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196358))
  {
    qword_1EE196350 = re::internal::getOrCreateInfo("AudioGeneratorAsset", re::allocInfo_AudioGeneratorAsset, re::initInfo_AudioGeneratorAsset, &unk_1EE196348, 0);
    __cxa_guard_release(&qword_1EE196358);
  }

  return qword_1EE196350;
}

re::DynamicString *re::AudioGeneratorAssetCompiler::getCurrentCompiledAssetInfo@<X0>(re::AudioGeneratorAssetCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  re::AudioGeneratorAsset::assetType(v3);
  v5[0] = re::AudioGeneratorAsset::assetType(void)::type;
  v5[1] = strlen(re::AudioGeneratorAsset::assetType(void)::type);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::AudioGeneratorAssetCompiler::assetIntrospectionType(re::AudioGeneratorAssetCompiler *this)
{
  if ((atomic_load_explicit(&qword_1EE196358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196358))
  {
    qword_1EE196350 = re::internal::getOrCreateInfo("AudioGeneratorAsset", re::allocInfo_AudioGeneratorAsset, re::initInfo_AudioGeneratorAsset, &unk_1EE196348, 0);
    __cxa_guard_release(&qword_1EE196358);
  }

  return qword_1EE196350;
}

_anonymous_namespace_ *re::AudioGeneratorAssetCompiler::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &re::kGeneratorAssetFileExtension);
}

re *re::AudioGeneratorAssetCompiler::compile@<X0>(re::AudioGeneratorAssetCompiler *this@<X0>, re::AssetUtilities *a2@<X1>, re::AssetSerializationScheme *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = re::globalAllocators(this);
  v8 = (*(*v7[2] + 32))(v7[2], 104, 8);
  *v8 = 6553601;
  *(v8 + 8) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 1117126656;
  *(v8 + 68) = vdup_n_s32(0x62616464u);
  *(v8 + 76) = 1650549860;
  *(v8 + 96) = 0;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  if ((atomic_load_explicit(&qword_1EE196358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE196358))
  {
    qword_1EE196350 = re::internal::getOrCreateInfo("AudioGeneratorAsset", re::allocInfo_AudioGeneratorAsset, re::initInfo_AudioGeneratorAsset, &unk_1EE196348, 0);
    __cxa_guard_release(&qword_1EE196358);
  }

  result = re::AssetUtilities::readSourceJson(&v18, a2, v8, qword_1EE196350, a3);
  if (v18)
  {
    *a4 = 1;
    *(a4 + 8) = v8;
  }

  else
  {
    v10 = re::globalAllocators(result)[2];
    re::AudioGeneratorAsset::~AudioGeneratorAsset(v8);
    (*(*v10 + 40))(v10, v8);
    *&v14 = 100;
    *(&v14 + 1) = re::AssetErrorCategory(void)::instance;
    result = re::DynamicString::DynamicString(&v15, &v19);
    v11 = v15;
    *(a4 + 8) = v14;
    v12 = v16;
    v13 = v17;
    *a4 = 0;
    *(a4 + 24) = v11;
    *(a4 + 40) = v12;
    *(a4 + 48) = v13;
    if ((v18 & 1) == 0)
    {
      result = v19;
      if (v19)
      {
        if (v20)
        {
          return (*(*v19 + 40))();
        }
      }
    }
  }

  return result;
}

void sub_1E202D4A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19)
{
  if (a16 & 1) == 0 && a17 && (a18)
  {
    (*(*a17 + 40))();
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(AUAudioUnit *,NSError *)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(AUAudioUnit *,NSError *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
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

uint64_t re::SkeletalPoseRuntimeData::update<re::MeshAsset>(re::SkeletalPoseRuntimeData *this, void *a2, re *a3, re::MeshAsset *a4, uint64_t a5, re::SkeletalPoseRigMappingData *a6, uint64_t a7, void *a8, uint64_t a9, unint64_t a10, uint64_t a11, re::BindNode **a12)
{
  if (*(this + 2) != a7)
  {
    re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(this, a2, a3, a4, a5, a6, a8, a8, a9, a10, a11, a12);
    ++*(this + 2);
    *(this + 2) = a7;
  }

  return re::SkeletalPoseRuntimeData::executeEvaluationTree(this);
}

void re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(uint64_t a1, void *a2, re *a3, re::MeshAsset *a4, uint64_t a5, re::SkeletalPoseRigMappingData *a6, void *a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, re::BindNode **a12)
{
  v107 = *MEMORY[0x1E69E9840];
  ++*(a1 + 8);
  *(a1 + 16) = -1;
  re::FixedArray<re::EvaluationRigState>::deinit((a1 + 24));
  v15 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v15)
  {
    std::function<void ()(re::EvaluationModelBase *)>::operator()(a1 + 56, v15);
  }

  *(a1 + 88) = 0;
  re::DynamicRegisterIdTable::deinit((a1 + 96));
  re::DynamicArray<unsigned long>::deinit(a1 + 416);
  re::DynamicRegisterIdTable::deinit((a1 + 456));
  v87 = (a1 + 88);
  re::DynamicArray<unsigned long>::deinit(a1 + 776);
  for (i = 816; i != 1176; i += 40)
  {
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::deinit(a1 + i);
  }

  do
  {
    re::DynamicArray<unsigned long>::deinit(a1 + i);
    i += 40;
  }

  while (i != 1536);
  re::DynamicRegisterIdTable::deinit((a1 + 1536));
  re::DynamicArray<unsigned long>::deinit(a1 + 1856);
  for (j = 1896; j != 2256; j += 40)
  {
    re::DynamicArray<re::EvaluationContextManager::BindPointReference>::deinit(a1 + j);
  }

  do
  {
    re::DynamicArray<unsigned long>::deinit(a1 + j);
    j += 40;
  }

  while (j != 2616);
  *(a1 + 2616) = 0;
  v18 = re::EvaluationContext::deinit((a1 + 2624));
  if (!*a1)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
  }

  v19 = *(a6 + 12);
  *(a1 + 32) = v19;
  if (v19)
  {
    if (v19 >= 0x124924924924925)
    {
      goto LABEL_111;
    }

    *(a1 + 40) = v21;
    if (!v21)
    {
LABEL_112:
      re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash("assertion failure: (m_data) Out of memory.");
      __break(1u);
    }

    v23 = v19 - 1;
    if (v19 != 1)
    {
      do
      {
        *v21 = 0;
        *(v21 + 96) = 0uLL;
        *(v21 + 112) = 0uLL;
        *(v21 + 128) = 0uLL;
        *(v21 + 144) = 0uLL;
        *(v21 + 32) = 0uLL;
        *(v21 + 48) = 0uLL;
        *(v21 + 64) = 0uLL;
        *(v21 + 80) = 0uLL;
        *(v21 + 160) = 0uLL;
        *(v21 + 176) = 0uLL;
        *(v21 + 104) = 1;
        *(v21 + 112) = 0;
        *(v21 + 120) = 0;
        *(v21 + 136) = 0;
        *(v21 + 128) = 0;
        *(v21 + 144) = 0;
        *(v21 + 152) = 0;
        *(v21 + 168) = 0;
        *(v21 + 160) = 0;
        *(v21 + 208) = 0;
        *(v21 + 216) = 0;
        *(v21 + 208) = 0;
        *(v21 + 176) = 0uLL;
        *(v21 + 192) = 0uLL;
        *(v21 + 192) = 0uLL;
        v21 += 224;
        --v23;
      }

      while (v23);
    }

    *v21 = 0;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 0u;
    *(v21 + 128) = 0u;
    *(v21 + 144) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 80) = 0u;
    *(v21 + 160) = 0u;
    *(v21 + 176) = 0u;
    *(v21 + 104) = 1;
    *(v21 + 112) = 0;
    *(v21 + 120) = 0;
    *(v21 + 136) = 0;
    *(v21 + 128) = 0;
    *(v21 + 144) = 0;
    *(v21 + 152) = 0;
    *(v21 + 168) = 0;
    *(v21 + 160) = 0;
    *(v21 + 208) = 0;
    *(v21 + 216) = 0;
    *(v21 + 208) = 0;
    *(v21 + 176) = 0u;
    *(v21 + 192) = 0u;
    *(v21 + 192) = 0u;
    re::EvaluationContextManager::init(v87, *a1);
    re::EvaluationTree::EvaluationTree(v90);
    v24 = 0;
    v86 = 0;
    v25 = 0;
    v82 = v19;
    while (1)
    {
      v26 = v25;
      if (*(a6 + 24) <= v25)
      {
        v27 = 0xFFFFFFFFLL;
      }

      else
      {
        v27 = *(*(a6 + 25) + 4 * v25);
      }

      v28 = *(a4 + 76);
      if (v28 <= v27)
      {
        goto LABEL_99;
      }

      v29 = re::DataArray<re::MeshModel>::tryGet(*(a4 + 79) + 8, *(*(a4 + 78) + 8 * v27));
      if (v29)
      {
        v30 = v29;
        if (*(a6 + 21) <= v26)
        {
          v31 = 0xFFFFFFFFLL;
        }

        else
        {
          v31 = *(*(a6 + 22) + 4 * v26);
        }

        if (*(a4 + 156) <= v31)
        {
          v37 = *re::assetsLogObjects(v29);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v33 = v37;
            v34 = "Skeleton index is out of bounds.";
            goto LABEL_32;
          }
        }

        else
        {
          v35 = re::MeshAsset::skeletonAtIndex(a4, v31);
          if (*(a6 + 12) <= v26)
          {
            v36 = 0xFFFFFFFFLL;
          }

          else
          {
            v36 = *(*(a6 + 13) + 4 * v26);
          }

          v38 = 0uLL;
          v39 = 0uLL;
          if (*(a6 + 15) > v26)
          {
            v39 = *(*(a6 + 16) + 16 * v26);
          }

          *v104 = v39;
          v40 = *(a11 + 16);
          *v99 = *(a11 + 32);
          *&v99[8] = v40;
          if (*(a6 + 18) > v26)
          {
            v38 = *(*(a6 + 19) + 16 * v26);
          }

          v89 = v38;
          v41 = *(v35 + 24);
          v88[0] = *(v35 + 32);
          v88[1] = v41;
          re::RigRuntimeData::constructRigCommands(a3, v36, a2, a7, v104, v99, &v89, v88, buf, v90, v87, a12);
          if (buf[0])
          {
            v27 = *(a1 + 32);
            if (v27 <= v24)
            {
              goto LABEL_103;
            }

            v43 = (*(a1 + 40) + 224 * v24);
            std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::operator=[abi:nn200100](v43, &buf[8]);
            re::FixedArray<float>::operator=(v43 + 5, &v94);
            re::FixedArray<float>::operator=(v43 + 8, &v95 + 1);
            re::RigGraphCompilation::operator=(v43 + 11, v98);
            v27 = *(a1 + 32);
            if (v27 <= v24)
            {
              goto LABEL_107;
            }

            v44 = *(a1 + 40);
            v45 = re::SkeletalPoseRigMappingData::poseRigMapJointTransformCount(a6, v26);
            if (v45)
            {
              v27 = 0;
              v24 = v44 + 224 * v24;
              if (a10 >= v86)
              {
                v28 = a10 - v86;
              }

              else
              {
                v28 = 0;
              }

              v46 = (a9 + (v86 << 6));
              while (1)
              {
                v19 = *(v24 + 48);
                if (v19 <= v27)
                {
                  break;
                }

                *v104 = *(*(v24 + 56) + 8 * v27);
                re::DynamicArray<unsigned long>::add((a1 + 1696), v104);
                v48 = *(a1 + 1712) - 1;
                *v104 = a1 + 88;
                *&v104[8] = v48;
                if (v28 == v27)
                {
                  goto LABEL_98;
                }

                re::EvaluationOutputHandle<re::Matrix4x4<float>>::bindEvaluationOutput<re::Matrix4x4<float>>(v104, v46, 0);
                ++v27;
                v46 = (v46 + 64);
                if (v45 == v27)
                {
                  goto LABEL_49;
                }
              }

              *&v89 = 0;
              v105 = 0u;
              v106 = 0u;
              memset(v104, 0, sizeof(v104));
              v64 = MEMORY[0x1E69E9C10];
              v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v99 = 136315906;
              *&v99[4] = "operator[]";
              *&v99[12] = 1024;
              if (v65)
              {
                v66 = 3;
              }

              else
              {
                v66 = 2;
              }

              *&v99[14] = 468;
              v100 = 2048;
              v101 = v27;
              v102 = 2048;
              v103 = v19;
              _os_log_send_and_compose_impl(v66, &v89, v104, 80, &dword_1E1C61000, v64, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v99, 38, v80, v81);
              _os_crash_msg();
              __break(1u);
LABEL_98:
              re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v86 + v27, a10);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v76, v78);
              __break(1u);
LABEL_99:
              *v99 = 0;
              v95 = 0u;
              v94 = 0u;
              v93 = 0u;
              v92 = 0u;
              *buf = 0u;
              v67 = MEMORY[0x1E69E9C10];
              v68 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v104 = 136315906;
              *&v104[4] = "operator[]";
              *&v104[12] = 1024;
              if (v68)
              {
                v69 = 3;
              }

              else
              {
                v69 = 2;
              }

              *&v104[14] = 797;
              *&v104[18] = 2048;
              *&v104[20] = v27;
              *&v104[28] = 2048;
              *&v104[30] = v28;
              _os_log_send_and_compose_impl(v69, v99, buf, 80, &dword_1E1C61000, v67, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v104, 38, v80, v81);
              _os_crash_msg();
              __break(1u);
LABEL_103:
              *&v89 = 0;
              v105 = 0u;
              v106 = 0u;
              memset(v104, 0, sizeof(v104));
              v70 = MEMORY[0x1E69E9C10];
              v71 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v99 = 136315906;
              *&v99[4] = "operator[]";
              *&v99[12] = 1024;
              if (v71)
              {
                v72 = 3;
              }

              else
              {
                v72 = 2;
              }

              *&v99[14] = 468;
              v100 = 2048;
              v101 = v24;
              v102 = 2048;
              v103 = v27;
              _os_log_send_and_compose_impl(v72, &v89, v104, 80, &dword_1E1C61000, v70, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v99, 38, v80, v81);
              _os_crash_msg();
              __break(1u);
LABEL_107:
              *&v89 = 0;
              v105 = 0u;
              v106 = 0u;
              memset(v104, 0, sizeof(v104));
              v73 = MEMORY[0x1E69E9C10];
              v74 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v99 = 136315906;
              *&v99[4] = "operator[]";
              *&v99[12] = 1024;
              if (v74)
              {
                v75 = 3;
              }

              else
              {
                v75 = 2;
              }

              *&v99[14] = 468;
              v100 = 2048;
              v101 = v24;
              v102 = 2048;
              v103 = v27;
              _os_log_send_and_compose_impl(v75, &v89, v104, 80, &dword_1E1C61000, v73, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v99, 38, v80, v81);
              _os_crash_msg();
              __break(1u);
LABEL_111:
              re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 224, v19);
              _os_crash("assertion failure: (!overflow) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", v77, v79);
              __break(1u);
              goto LABEL_112;
            }

LABEL_49:
            v86 += v45;
            v19 = v82;
          }

          else
          {
            v49 = *re::assetsLogObjects(v42);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v50 = *(v30 + 1);
              v51 = &v93 + 1;
              if (v93)
              {
                v51 = *(&v93 + 1);
              }

              *v104 = 136315394;
              *&v104[4] = v50;
              *&v104[12] = 2080;
              *&v104[14] = v51;
              _os_log_error_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_ERROR, "Could not evaluate rig for model %s: %s.", v104, 0x16u);
            }
          }

          if (buf[0] == 1)
          {
            re::RigGraphCompilation::~RigGraphCompilation(v98);
            if (*(&v95 + 1))
            {
              if (v96)
              {
                (*(**(&v95 + 1) + 40))();
                v96 = 0;
                v97 = 0;
              }

              *(&v95 + 1) = 0;
            }

            if (v94)
            {
              if (*(&v94 + 1))
              {
                (*(*v94 + 40))();
                *(&v94 + 1) = 0;
                *&v95 = 0;
              }

              *&v94 = 0;
            }

            std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](&buf[8]);
          }

          else if (*(&v92 + 1) && (v93 & 1) != 0)
          {
            (*(**(&v92 + 1) + 40))();
          }
        }
      }

      else
      {
        v32 = *re::assetsLogObjects(0);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v33 = v32;
          v34 = "Mesh model not not registered.";
LABEL_32:
          _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, v34, buf, 2u);
        }
      }

      v24 = (v26 + 1);
      v25 = v26 + 1;
      if (v19 <= v24)
      {
        goto LABEL_70;
      }
    }
  }

  re::EvaluationContextManager::init(v87, *a1);
  re::EvaluationTree::EvaluationTree(v90);
LABEL_70:
  v52 = re::EvaluationContextManager::buildEvaluationContext(v87);
  v53 = re::globalAllocators(v52);
  v54 = (*(*v53[2] + 32))(v53[2], 784, 8);
  *v54 = &unk_1F5CB2E90;
  *(v54 + 8) = -1;
  bzero((v54 + 16), 0x300uLL);
  *v104 = &unk_1F5CC4AE0;
  *&v104[24] = v104;
  *&v93 = &buf[8];
  *&buf[8] = &unk_1F5CC4AE0;
  *buf = 0;
  v55 = *(a1 + 48);
  *(a1 + 48) = v54;
  if (v55)
  {
    std::function<void ()(re::EvaluationModelBase *)>::operator()(a1 + 56, v55);
  }

  v56 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v56 == a1 + 56)
  {
    (*(*v56 + 32))(v56);
  }

  else if (v56)
  {
    (*(*v56 + 40))(v56);
  }

  v57 = v93;
  if (v93)
  {
    if (v93 == &buf[8])
    {
      *(a1 + 80) = a1 + 56;
      (*(*v57 + 24))(v57, a1 + 56);
    }

    else
    {
      *(a1 + 80) = v93;
      *&v93 = 0;
    }
  }

  else
  {
    *(a1 + 80) = 0;
  }

  std::unique_ptr<re::EvaluationModelBase,std::function<void ()(re::EvaluationModelBase*)>>::~unique_ptr[abi:nn200100](buf);
  std::__function::__value_func<void ()(re::EvaluationModelBase *)>::~__value_func[abi:nn200100](v104);
  v58 = *a1;
  v59 = *(a1 + 48);
  re::EvaluationContextManager::evaluationContextDescription<re::EvaluationContextDescription>(buf, v87);
  v60 = (*(*v59 + 32))(v104, v59, v58, v90, buf);
  if ((v104[0] & 1) == 0)
  {
    v61 = *re::assetsLogObjects(v60);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      if (v104[32])
      {
        v63 = *&v104[40];
      }

      else
      {
        v63 = &v104[33];
      }

      *buf = 136315138;
      *&buf[4] = v63;
      _os_log_error_impl(&dword_1E1C61000, v61, OS_LOG_TYPE_ERROR, "Could not setup evaluation model: %s.", buf, 0xCu);
    }

    v62 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v62)
    {
      std::function<void ()(re::EvaluationModelBase *)>::operator()(a1 + 56, v62);
    }
  }

  if (v104[0] & 1) == 0 && *&v104[24] && (v104[32])
  {
    (*(**&v104[24] + 40))();
  }

  re::EvaluationTree::~EvaluationTree(v90);
}

void *re::FixedArray<re::EvaluationRigState>::deinit(void *result)
{
  if (*result)
  {
    v1 = result;
    v3 = result + 1;
    v2 = result[1];
    if (v2)
    {
      v4 = result[2];
      v5 = 224 * v2;
      do
      {
        re::RigGraphCompilation::~RigGraphCompilation((v4 + 11));
        re::FixedArray<CoreIKTransform>::deinit(v4 + 8);
        re::FixedArray<CoreIKTransform>::deinit(v4 + 5);
        std::unique_ptr<re::internal::RigIKCallbackData,std::function<void ()(re::internal::RigIKCallbackData*)>>::~unique_ptr[abi:nn200100](v4);
        v4 += 28;
        v5 -= 224;
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

uint64_t re::SkeletalPoseRuntimeData::executeEvaluationTree(uint64_t this)
{
  if (*(this + 48))
  {
    v1 = this;
    re::EvaluationContextManager::updateBoundInputs((this + 88));
    v2 = *(v1 + 48);
    if ((*(v1 + 2616) & 1) == 0)
    {
      re::EvaluationContextManager::buildEvaluationContext((v1 + 88));
    }

    memset(v3, 0, sizeof(v3));
    re::EvaluationContextSlices::init(v3, (v1 + 2624));
    (*(*v2 + 16))(v2, v3);
    return re::EvaluationContextManager::updateBoundOutputs((v1 + 88));
  }

  return this;
}

__int128 *re::EvaluationContextManager::updateBoundInputs(__int128 *this)
{
  v3 = this;
  v120 = *MEMORY[0x1E69E9840];
  v4 = *(this + 138);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (v4 <= i)
      {
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v25 = MEMORY[0x1E69E9C10];
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = i;
        v113 = 2048;
        v114 = v4;
        _os_log_send_and_compose_impl(v26, &v106, &v115, 80, &dword_1E1C61000, v25, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_105:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v27 = MEMORY[0x1E69E9C10];
        v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v28)
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v29, &v106, &v115, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_109:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v30 = MEMORY[0x1E69E9C10];
        v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v31)
        {
          v32 = 3;
        }

        else
        {
          v32 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = i;
        v113 = 2048;
        v114 = v4;
        _os_log_send_and_compose_impl(v32, &v106, &v115, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_113:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v35, &v106, &v115, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_117:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v36 = MEMORY[0x1E69E9C10];
        v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v37)
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = i;
        v113 = 2048;
        v114 = v4;
        _os_log_send_and_compose_impl(v38, &v106, &v115, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_121:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v39 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v41, &v106, &v115, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_125:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = i;
        v113 = 2048;
        v114 = v4;
        _os_log_send_and_compose_impl(v44, &v106, &v115, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_129:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v2;
        _os_log_send_and_compose_impl(v47, &v106, &v115, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_133:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v48 = MEMORY[0x1E69E9C10];
        v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v49)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = i;
        v113 = 2048;
        v114 = v4;
        _os_log_send_and_compose_impl(v50, &v106, &v115, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_137:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v53, &v106, &v115, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_141:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v54 = MEMORY[0x1E69E9C10];
        v55 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v55)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = i;
        v113 = 2048;
        v114 = v4;
        _os_log_send_and_compose_impl(v56, &v106, &v115, 80, &dword_1E1C61000, v54, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_145:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v57 = MEMORY[0x1E69E9C10];
        v58 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v58)
        {
          v59 = 3;
        }

        else
        {
          v59 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v59, &v106, &v115, 80, &dword_1E1C61000, v57, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_149:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v60 = MEMORY[0x1E69E9C10];
        v61 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v61)
        {
          v62 = 3;
        }

        else
        {
          v62 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = i;
        v113 = 2048;
        v114 = v4;
        _os_log_send_and_compose_impl(v62, &v106, &v115, 80, &dword_1E1C61000, v60, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_153:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v63 = MEMORY[0x1E69E9C10];
        v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v65, &v106, &v115, 80, &dword_1E1C61000, v63, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_157:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v66 = MEMORY[0x1E69E9C10];
        v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v67)
        {
          v68 = 3;
        }

        else
        {
          v68 = 2;
        }

        v110 = 789;
        v111 = 2048;
        v112 = i;
        v113 = 2048;
        v114 = v4;
        _os_log_send_and_compose_impl(v68, &v106, &v115, 80, &dword_1E1C61000, v66, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_161:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
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

        v110 = 789;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v71, &v106, &v115, 80, &dword_1E1C61000, v69, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_165:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
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

        v110 = 789;
        v111 = 2048;
        v112 = i;
        v113 = 2048;
        v114 = v4;
        _os_log_send_and_compose_impl(v74, &v106, &v115, 80, &dword_1E1C61000, v72, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_169:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
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

        v110 = 789;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v2;
        _os_log_send_and_compose_impl(v77, &v106, &v115, 80, &dword_1E1C61000, v75, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_173:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v78 = MEMORY[0x1E69E9C10];
        v79 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v79)
        {
          v80 = 3;
        }

        else
        {
          v80 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v80, &v106, &v115, 80, &dword_1E1C61000, v78, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_177:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v81 = MEMORY[0x1E69E9C10];
        v82 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v82)
        {
          v83 = 3;
        }

        else
        {
          v83 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v83, &v106, &v115, 80, &dword_1E1C61000, v81, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_181:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v84 = MEMORY[0x1E69E9C10];
        v85 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v85)
        {
          v86 = 3;
        }

        else
        {
          v86 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v86, &v106, &v115, 80, &dword_1E1C61000, v84, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_185:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v87 = MEMORY[0x1E69E9C10];
        v88 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v88)
        {
          v89 = 3;
        }

        else
        {
          v89 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v2;
        _os_log_send_and_compose_impl(v89, &v106, &v115, 80, &dword_1E1C61000, v87, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_189:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v90 = MEMORY[0x1E69E9C10];
        v91 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v91)
        {
          v92 = 3;
        }

        else
        {
          v92 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v92, &v106, &v115, 80, &dword_1E1C61000, v90, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_193:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v93 = MEMORY[0x1E69E9C10];
        v94 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v94)
        {
          v95 = 3;
        }

        else
        {
          v95 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v95, &v106, &v115, 80, &dword_1E1C61000, v93, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_197:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v96 = MEMORY[0x1E69E9C10];
        v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v97)
        {
          v98 = 3;
        }

        else
        {
          v98 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v98, &v106, &v115, 80, &dword_1E1C61000, v96, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_201:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v99 = MEMORY[0x1E69E9C10];
        v100 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v100)
        {
          v101 = 3;
        }

        else
        {
          v101 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v1;
        _os_log_send_and_compose_impl(v101, &v106, &v115, 80, &dword_1E1C61000, v99, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
LABEL_205:
        v106 = 0;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
        v102 = MEMORY[0x1E69E9C10];
        v103 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v107 = 136315906;
        v108 = "operator[]";
        v109 = 1024;
        if (v103)
        {
          v104 = 3;
        }

        else
        {
          v104 = 2;
        }

        v110 = 468;
        v111 = 2048;
        v112 = v4;
        v113 = 2048;
        v114 = v2;
        _os_log_send_and_compose_impl(v104, &v106, &v115, 80, &dword_1E1C61000, v102, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v107, 38, v105);
        _os_crash_msg();
        __break(1u);
      }

      v4 = *(*(v3 + 140) + 8 * i);
      v1 = *(v3 + 93);
      if (v1 <= v4)
      {
        goto LABEL_105;
      }

      v6 = (*(v3 + 95) + 56 * v4);
      if (*(v6 + 48) == 1)
      {
        this = re::BindPoint::baseValueUntyped(v6);
        if (this)
        {
          goto LABEL_9;
        }
      }

      else
      {
        this = re::BindPoint::valueUntyped(v6);
        if (this)
        {
LABEL_9:
          v1 = *(v3 + 318);
          if (v1 <= v4)
          {
            goto LABEL_173;
          }

          *(*(v3 + 319) + 4 * v4) = *this;
        }
      }

      v4 = *(v3 + 138);
    }
  }

  v4 = *(v3 + 143);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (v4 <= i)
      {
        goto LABEL_109;
      }

      v4 = *(*(v3 + 145) + 8 * i);
      v1 = *(v3 + 98);
      if (v1 <= v4)
      {
        goto LABEL_113;
      }

      v7 = (*(v3 + 100) + 56 * v4);
      if (*(v7 + 48) == 1)
      {
        this = re::BindPoint::baseValueUntyped(v7);
        if (this)
        {
          goto LABEL_20;
        }
      }

      else
      {
        this = re::BindPoint::valueUntyped(v7);
        if (this)
        {
LABEL_20:
          v1 = *(v3 + 321);
          if (v1 <= v4)
          {
            goto LABEL_177;
          }

          *(*(v3 + 322) + 4 * v4) = *this;
        }
      }

      v4 = *(v3 + 143);
    }
  }

  v4 = *(v3 + 148);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (v4 <= i)
      {
        goto LABEL_117;
      }

      v4 = *(*(v3 + 150) + 8 * i);
      v1 = *(v3 + 103);
      if (v1 <= v4)
      {
        goto LABEL_121;
      }

      v8 = (*(v3 + 105) + 56 * v4);
      if (*(v8 + 48) == 1)
      {
        this = re::BindPoint::baseValueUntyped(v8);
        if (this)
        {
          goto LABEL_31;
        }
      }

      else
      {
        this = re::BindPoint::valueUntyped(v8);
        if (this)
        {
LABEL_31:
          v1 = *(v3 + 324);
          if (v1 <= v4)
          {
            goto LABEL_181;
          }

          *(*(v3 + 325) + 4 * v4) = *this;
        }
      }

      v4 = *(v3 + 148);
    }
  }

  v4 = *(v3 + 153);
  if (v4)
  {
    i = 0;
    v1 = 48;
    do
    {
      if (v4 <= i)
      {
        goto LABEL_125;
      }

      v4 = *(*(v3 + 155) + 8 * i);
      v2 = *(v3 + 108);
      if (v2 <= v4)
      {
        goto LABEL_129;
      }

      v9 = (*(v3 + 110) + 56 * v4);
      if (*(v9 + 48) == 1)
      {
        this = re::BindPoint::baseValueUntyped(v9);
        if (this)
        {
          goto LABEL_42;
        }
      }

      else
      {
        this = re::BindPoint::valueUntyped(v9);
        if (this)
        {
LABEL_42:
          v2 = *(v3 + 327);
          if (v2 <= v4)
          {
            goto LABEL_185;
          }

          v10 = (*(v3 + 328) + 48 * v4);
          v11 = *this;
          v12 = this[2];
          v10[1] = this[1];
          v10[2] = v12;
          *v10 = v11;
        }
      }

      ++i;
      v4 = *(v3 + 153);
    }

    while (i < v4);
  }

  v4 = *(v3 + 158);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (v4 <= i)
      {
        goto LABEL_133;
      }

      v4 = *(*(v3 + 160) + 8 * i);
      v1 = *(v3 + 113);
      if (v1 <= v4)
      {
        goto LABEL_137;
      }

      v13 = (*(v3 + 115) + 56 * v4);
      if (*(v13 + 48) == 1)
      {
        this = re::BindPoint::baseValueUntyped(v13);
        if (this)
        {
          goto LABEL_53;
        }
      }

      else
      {
        this = re::BindPoint::valueUntyped(v13);
        if (this)
        {
LABEL_53:
          v1 = *(v3 + 330);
          if (v1 <= v4)
          {
            goto LABEL_189;
          }

          v14 = (*(v3 + 331) + (v4 << 6));
          v15 = *this;
          v16 = this[1];
          v17 = this[3];
          v14[2] = this[2];
          v14[3] = v17;
          *v14 = v15;
          v14[1] = v16;
        }
      }

      v4 = *(v3 + 158);
    }
  }

  v4 = *(v3 + 163);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (v4 <= i)
      {
        goto LABEL_141;
      }

      v4 = *(*(v3 + 165) + 8 * i);
      v1 = *(v3 + 118);
      if (v1 <= v4)
      {
        goto LABEL_145;
      }

      v18 = (*(v3 + 120) + 56 * v4);
      if (*(v18 + 48) == 1)
      {
        this = re::BindPoint::baseValueUntyped(v18);
        if (this)
        {
          goto LABEL_64;
        }
      }

      else
      {
        this = re::BindPoint::valueUntyped(v18);
        if (this)
        {
LABEL_64:
          v1 = *(v3 + 333);
          if (v1 <= v4)
          {
            goto LABEL_193;
          }

          *(*(v3 + 334) + 16 * v4) = *this;
        }
      }

      v4 = *(v3 + 163);
    }
  }

  v4 = *(v3 + 168);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (v4 <= i)
      {
        goto LABEL_149;
      }

      v4 = *(*(v3 + 170) + 8 * i);
      v1 = *(v3 + 123);
      if (v1 <= v4)
      {
        goto LABEL_153;
      }

      v19 = (*(v3 + 125) + 56 * v4);
      if (*(v19 + 48) == 1)
      {
        this = re::BindPoint::baseValueUntyped(v19);
        if (this)
        {
          goto LABEL_75;
        }
      }

      else
      {
        this = re::BindPoint::valueUntyped(v19);
        if (this)
        {
LABEL_75:
          v1 = *(v3 + 336);
          if (v1 <= v4)
          {
            goto LABEL_197;
          }

          *(*(v3 + 337) + 8 * v4) = *this;
        }
      }

      v4 = *(v3 + 168);
    }
  }

  v4 = *(v3 + 173);
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      if (v4 <= i)
      {
        goto LABEL_157;
      }

      v4 = *(*(v3 + 175) + 8 * i);
      v1 = *(v3 + 128);
      if (v1 <= v4)
      {
        goto LABEL_161;
      }

      v20 = (*(v3 + 130) + 56 * v4);
      if (*(v20 + 48) == 1)
      {
        this = re::BindPoint::baseValueUntyped(v20);
        if (this)
        {
          goto LABEL_86;
        }
      }

      else
      {
        this = re::BindPoint::valueUntyped(v20);
        if (this)
        {
LABEL_86:
          v1 = *(v3 + 339);
          if (v1 <= v4)
          {
            goto LABEL_201;
          }

          *(*(v3 + 340) + 16 * v4) = *this;
        }
      }

      v4 = *(v3 + 173);
    }
  }

  v4 = *(v3 + 178);
  if (v4)
  {
    i = 0;
    v1 = 48;
    do
    {
      if (v4 <= i)
      {
        goto LABEL_165;
      }

      v4 = *(*(v3 + 180) + 8 * i);
      v2 = *(v3 + 133);
      if (v2 <= v4)
      {
        goto LABEL_169;
      }

      v21 = (*(v3 + 135) + 56 * v4);
      if (*(v21 + 48) == 1)
      {
        this = re::BindPoint::baseValueUntyped(v21);
        if (this)
        {
          goto LABEL_97;
        }
      }

      else
      {
        this = re::BindPoint::valueUntyped(v21);
        if (this)
        {
LABEL_97:
          v2 = *(v3 + 342);
          if (v2 <= v4)
          {
            goto LABEL_205;
          }

          v22 = (*(v3 + 343) + 48 * v4);
          v23 = *this;
          v24 = this[2];
          v22[1] = this[1];
          v22[2] = v24;
          *v22 = v23;
        }
      }

      ++i;
      v4 = *(v3 + 178);
    }

    while (i < v4);
  }

  return this;
}

uint64_t re::EvaluationContextManager::updateBoundOutputs(re::EvaluationContextManager *this)
{
  re::EvaluationContextManager::updateBoundOutputDataForType<int>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<unsigned int>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<float>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Matrix3x3<float>>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Matrix4x4<float>>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Quaternion<float>>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Vector2<float>>(this);
  re::EvaluationContextManager::updateBoundOutputDataForType<re::Vector3<float>>(this);

  return re::EvaluationContextManager::updateBoundOutputDataForType<re::GenericSRT<float>>(this);
}

void *re::EvaluationContextManager::updateBoundOutputDataForType<int>(void *result)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result[273])
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(v2[275] + 8 * v3);
      v5 = v2[228];
      if (v5 <= v4)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v20 = 797;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v5;
        _os_log_send_and_compose_impl(v8, &v16, &v25, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_16:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v9 = MEMORY[0x1E69E9C10];
        v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v10)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      v6 = v2[230] + 56 * v4;
      v1 = v2[345];
      if (*(v6 + 48) == 1)
      {
        if (v1 <= v4)
        {
          goto LABEL_16;
        }

        v1 = v2[346];
        result = re::BindPoint::baseValueUntyped((v2[230] + 56 * v4));
        if (result)
        {
          *result = *(v1 + 4 * v4);
          result = re::BindPoint::markAsWritten(v6);
        }
      }

      else
      {
        if (v1 <= v4)
        {
          goto LABEL_20;
        }

        result = re::BindPoint::setValue<int>((v2[230] + 56 * v4), (v2[346] + 4 * v4));
      }

      ++v3;
    }

    while (v3 < v2[273]);
  }

  return result;
}

void *re::EvaluationContextManager::updateBoundOutputDataForType<unsigned int>(void *result)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result[278])
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(v2[280] + 8 * v3);
      v5 = v2[233];
      if (v5 <= v4)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v20 = 797;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v5;
        _os_log_send_and_compose_impl(v8, &v16, &v25, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_16:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v9 = MEMORY[0x1E69E9C10];
        v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v10)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      v6 = v2[235] + 56 * v4;
      v1 = v2[348];
      if (*(v6 + 48) == 1)
      {
        if (v1 <= v4)
        {
          goto LABEL_16;
        }

        v1 = v2[349];
        result = re::BindPoint::baseValueUntyped((v2[235] + 56 * v4));
        if (result)
        {
          *result = *(v1 + 4 * v4);
          result = re::BindPoint::markAsWritten(v6);
        }
      }

      else
      {
        if (v1 <= v4)
        {
          goto LABEL_20;
        }

        result = re::BindPoint::setValue<int>((v2[235] + 56 * v4), (v2[349] + 4 * v4));
      }

      ++v3;
    }

    while (v3 < v2[278]);
  }

  return result;
}

void *re::EvaluationContextManager::updateBoundOutputDataForType<float>(void *result)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result[283])
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(v2[285] + 8 * v3);
      v5 = v2[238];
      if (v5 <= v4)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v20 = 797;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v5;
        _os_log_send_and_compose_impl(v8, &v16, &v25, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_16:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v9 = MEMORY[0x1E69E9C10];
        v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v10)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      v6 = v2[240] + 56 * v4;
      v1 = v2[351];
      if (*(v6 + 48) == 1)
      {
        if (v1 <= v4)
        {
          goto LABEL_16;
        }

        v1 = v2[352];
        result = re::BindPoint::baseValueUntyped((v2[240] + 56 * v4));
        if (result)
        {
          *result = *(v1 + 4 * v4);
          result = re::BindPoint::markAsWritten(v6);
        }
      }

      else
      {
        if (v1 <= v4)
        {
          goto LABEL_20;
        }

        result = re::BindPoint::setValue<float>((v2[240] + 56 * v4), (v2[352] + 4 * v4));
      }

      ++v3;
    }

    while (v3 < v2[283]);
  }

  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<re::Matrix3x3<float>>(uint64_t result)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!*(result + 2304))
  {
    return result;
  }

  v2 = result;
  v3 = 0;
  do
  {
    v4 = *(v2[290] + 8 * v3);
    v5 = v2[243];
    if (v5 <= v4)
    {
      goto LABEL_48;
    }

    v6 = v2[245] + 56 * v4;
    v1 = v2[354];
    if (*(v6 + 48) == 1)
    {
      if (v1 > v4)
      {
        v1 = v2[355];
        result = re::BindPoint::baseValueUntyped((v2[245] + 56 * v4));
        if (result)
        {
          v7 = &v1[3 * v4];
          v8 = *v7;
          v9 = v7[2];
          *(result + 16) = v7[1];
          *(result + 32) = v9;
          *result = v8;
          result = re::BindPoint::markAsWritten(v6);
        }

        goto LABEL_38;
      }

      goto LABEL_56;
    }

    if (v1 <= v4)
    {
      goto LABEL_52;
    }

    v1 = *(v6 + 24);
    if (!v1)
    {
      goto LABEL_38;
    }

    v10 = (v2[355] + 48 * v4);
    v56 = 0uLL;
    LODWORD(v57) = 1;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v56, v1);
    v11 = 0;
    v12 = 0;
    v4 = *(v6 + 24);
    v13 = *(&v56 + 1);
    do
    {
      if (v4 == v12)
      {
        v55 = 0;
        v69 = 0u;
        v70 = 0u;
        memset(v68, 0, sizeof(v68));
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        v62 = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v63 = 797;
        v64 = 2048;
        v65 = v4;
        v66 = 2048;
        v67 = v4;
        _os_log_send_and_compose_impl(v35, &v55, v68, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v54);
        _os_crash_msg();
        __break(1u);
LABEL_44:
        v55 = 0;
        v5 = v61;
        v69 = 0u;
        v70 = 0u;
        memset(v68, 0, sizeof(v68));
        v36 = MEMORY[0x1E69E9C10];
        v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        v62 = 1024;
        if (v37)
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v63 = 858;
        v64 = 2048;
        v65 = v13;
        v66 = 2048;
        v67 = v13;
        _os_log_send_and_compose_impl(v38, &v55, v68, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v54);
        _os_crash_msg();
        __break(1u);
LABEL_48:
        *v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v39 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v68[0] = 136315906;
        *&v68[1] = "operator[]";
        LOWORD(v68[3]) = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        *(&v68[3] + 2) = 797;
        HIWORD(v68[4]) = 2048;
        *&v68[5] = v4;
        LOWORD(v68[7]) = 2048;
        *(&v68[7] + 2) = v5;
        _os_log_send_and_compose_impl(v41, v61, &v56, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v54, v55);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        *v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v68[0] = 136315906;
        *&v68[1] = "operator[]";
        LOWORD(v68[3]) = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        *(&v68[3] + 2) = 476;
        HIWORD(v68[4]) = 2048;
        *&v68[5] = v4;
        LOWORD(v68[7]) = 2048;
        *(&v68[7] + 2) = v1;
        _os_log_send_and_compose_impl(v44, v61, &v56, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v54, v55);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        *v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v68[0] = 136315906;
        *&v68[1] = "operator[]";
        LOWORD(v68[3]) = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        *(&v68[3] + 2) = 476;
        HIWORD(v68[4]) = 2048;
        *&v68[5] = v4;
        LOWORD(v68[7]) = 2048;
        *(&v68[7] + 2) = v1;
        _os_log_send_and_compose_impl(v47, v61, &v56, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v54, v55);
        _os_crash_msg();
        __break(1u);
LABEL_60:
        v55 = 0;
        v69 = 0u;
        v70 = 0u;
        memset(v68, 0, sizeof(v68));
        v48 = MEMORY[0x1E69E9C10];
        v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        v62 = 1024;
        if (v49)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v63 = 858;
        v64 = 2048;
        v65 = 0;
        v66 = 2048;
        v67 = 0;
        _os_log_send_and_compose_impl(v50, &v55, v68, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v54);
        _os_crash_msg();
        __break(1u);
LABEL_64:
        v55 = 0;
        v69 = 0u;
        v70 = 0u;
        memset(v68, 0, sizeof(v68));
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        v62 = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v63 = 858;
        v64 = 2048;
        v65 = 0;
        v66 = 2048;
        v67 = 0;
        _os_log_send_and_compose_impl(v53, &v55, v68, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v54);
        _os_crash_msg();
        __break(1u);
      }

      v14 = (*(v6 + 40) + v11);
      if (!*v14)
      {
        v14 = v14[2];
      }

      if (v13 == v12)
      {
        goto LABEL_44;
      }

      if (v57)
      {
        v15 = &v57 + 8;
      }

      else
      {
        v15 = v58;
      }

      *&v15[8 * v12] = v14;
      v12 = (v12 + 1);
      v11 += 32;
    }

    while (v1 != v12);
    if (!v13)
    {
      goto LABEL_60;
    }

    if (v57)
    {
      v16 = &v57 + 1;
    }

    else
    {
      v16 = v58;
    }

    v17 = *v16;
    v1 = (v1 - 1);
    v18 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v56, 1uLL, v1);
    v20 = (*(*v17 + 120))(v17, 0, v18, v19);
    if (v20)
    {
      v21 = v20;
      if (!re::BindPoint::isOverridden(v6) || (v22 = vandq_s8(vandq_s8(vceqq_f32(v21[1], v10[1]), vceqq_f32(*v21, *v10)), vceqq_f32(v21[2], v10[2])), v22.i32[3] = v22.i32[2], (vminvq_u32(v22) & 0x80000000) == 0))
      {
        re::BindPoint::willSet(v6);
        v23 = *v10;
        v24 = v10[2];
        v21[1] = v10[1];
        v21[2] = v24;
        *v21 = v23;
        re::BindPoint::setIsOverridden(v6, 1);
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (!*(&v56 + 1))
    {
      goto LABEL_64;
    }

    if (v57)
    {
      v25 = &v57 + 1;
    }

    else
    {
      v25 = v58;
    }

    v26 = *v25;
    v27 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v56, 1uLL, v1);
    v29 = (*(*v26 + 88))(v26, 0, v27, v28);
    if (v29)
    {
      v1 = v29;
      v30 = vandq_s8(vandq_s8(vceqq_f32(v29[1], v10[1]), vceqq_f32(*v29, *v10)), vceqq_f32(v29[2], v10[2]));
      v30.i32[3] = v30.i32[2];
      if ((vminvq_u32(v30) & 0x80000000) == 0)
      {
        re::BindPoint::willSet(v6);
        v31 = *v10;
        v32 = v10[2];
        v1[1] = v10[1];
        v1[2] = v32;
        *v1 = v31;
LABEL_34:
        re::BindPoint::markAsWritten(v6);
      }
    }

LABEL_35:
    result = v56;
    if (v56 && (v57 & 1) == 0)
    {
      result = (*(*v56 + 40))();
    }

LABEL_38:
    ++v3;
  }

  while (v3 < v2[288]);
  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<re::Matrix4x4<float>>(uint64_t result)
{
  v71 = *MEMORY[0x1E69E9840];
  if (!*(result + 2344))
  {
    return result;
  }

  v2 = result;
  v3 = 0;
  do
  {
    v4 = *(v2[295] + 8 * v3);
    v5 = v2[248];
    if (v5 <= v4)
    {
      goto LABEL_48;
    }

    v6 = v2[250] + 56 * v4;
    v1 = v2[357];
    if (*(v6 + 48) == 1)
    {
      if (v1 > v4)
      {
        v1 = v2[358];
        result = re::BindPoint::baseValueUntyped((v2[250] + 56 * v4));
        if (result)
        {
          v7 = &v1[4 * v4];
          v8 = *v7;
          v9 = v7[1];
          v10 = v7[3];
          *(result + 32) = v7[2];
          *(result + 48) = v10;
          *result = v8;
          *(result + 16) = v9;
          result = re::BindPoint::markAsWritten(v6);
        }

        goto LABEL_38;
      }

      goto LABEL_56;
    }

    if (v1 <= v4)
    {
      goto LABEL_52;
    }

    v1 = *(v6 + 24);
    if (!v1)
    {
      goto LABEL_38;
    }

    v11 = (v2[358] + (v4 << 6));
    v56 = 0uLL;
    LODWORD(v57) = 1;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v56, v1);
    v12 = 0;
    v13 = 0;
    v4 = *(v6 + 24);
    v14 = *(&v56 + 1);
    do
    {
      if (v4 == v13)
      {
        v55 = 0;
        v69 = 0u;
        v70 = 0u;
        memset(v68, 0, sizeof(v68));
        v33 = MEMORY[0x1E69E9C10];
        v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        v62 = 1024;
        if (v34)
        {
          v35 = 3;
        }

        else
        {
          v35 = 2;
        }

        v63 = 797;
        v64 = 2048;
        v65 = v4;
        v66 = 2048;
        v67 = v4;
        _os_log_send_and_compose_impl(v35, &v55, v68, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v54);
        _os_crash_msg();
        __break(1u);
LABEL_44:
        v55 = 0;
        v5 = v61;
        v69 = 0u;
        v70 = 0u;
        memset(v68, 0, sizeof(v68));
        v36 = MEMORY[0x1E69E9C10];
        v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        v62 = 1024;
        if (v37)
        {
          v38 = 3;
        }

        else
        {
          v38 = 2;
        }

        v63 = 858;
        v64 = 2048;
        v65 = v14;
        v66 = 2048;
        v67 = v14;
        _os_log_send_and_compose_impl(v38, &v55, v68, 80, &dword_1E1C61000, v36, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v54);
        _os_crash_msg();
        __break(1u);
LABEL_48:
        *v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v39 = MEMORY[0x1E69E9C10];
        v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v68[0] = 136315906;
        *&v68[1] = "operator[]";
        LOWORD(v68[3]) = 1024;
        if (v40)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        *(&v68[3] + 2) = 797;
        HIWORD(v68[4]) = 2048;
        *&v68[5] = v4;
        LOWORD(v68[7]) = 2048;
        *(&v68[7] + 2) = v5;
        _os_log_send_and_compose_impl(v41, v61, &v56, 80, &dword_1E1C61000, v39, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v54, v55);
        _os_crash_msg();
        __break(1u);
LABEL_52:
        *v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v42 = MEMORY[0x1E69E9C10];
        v43 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v68[0] = 136315906;
        *&v68[1] = "operator[]";
        LOWORD(v68[3]) = 1024;
        if (v43)
        {
          v44 = 3;
        }

        else
        {
          v44 = 2;
        }

        *(&v68[3] + 2) = 476;
        HIWORD(v68[4]) = 2048;
        *&v68[5] = v4;
        LOWORD(v68[7]) = 2048;
        *(&v68[7] + 2) = v1;
        _os_log_send_and_compose_impl(v44, v61, &v56, 80, &dword_1E1C61000, v42, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v54, v55);
        _os_crash_msg();
        __break(1u);
LABEL_56:
        *v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v56 = 0u;
        v45 = MEMORY[0x1E69E9C10];
        v46 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v68[0] = 136315906;
        *&v68[1] = "operator[]";
        LOWORD(v68[3]) = 1024;
        if (v46)
        {
          v47 = 3;
        }

        else
        {
          v47 = 2;
        }

        *(&v68[3] + 2) = 476;
        HIWORD(v68[4]) = 2048;
        *&v68[5] = v4;
        LOWORD(v68[7]) = 2048;
        *(&v68[7] + 2) = v1;
        _os_log_send_and_compose_impl(v47, v61, &v56, 80, &dword_1E1C61000, v45, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v68, 38, v54, v55);
        _os_crash_msg();
        __break(1u);
LABEL_60:
        v55 = 0;
        v69 = 0u;
        v70 = 0u;
        memset(v68, 0, sizeof(v68));
        v48 = MEMORY[0x1E69E9C10];
        v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        v62 = 1024;
        if (v49)
        {
          v50 = 3;
        }

        else
        {
          v50 = 2;
        }

        v63 = 858;
        v64 = 2048;
        v65 = 0;
        v66 = 2048;
        v67 = 0;
        _os_log_send_and_compose_impl(v50, &v55, v68, 80, &dword_1E1C61000, v48, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v54);
        _os_crash_msg();
        __break(1u);
LABEL_64:
        v55 = 0;
        v69 = 0u;
        v70 = 0u;
        memset(v68, 0, sizeof(v68));
        v51 = MEMORY[0x1E69E9C10];
        v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v61 = 136315906;
        *&v61[4] = "operator[]";
        v62 = 1024;
        if (v52)
        {
          v53 = 3;
        }

        else
        {
          v53 = 2;
        }

        v63 = 858;
        v64 = 2048;
        v65 = 0;
        v66 = 2048;
        v67 = 0;
        _os_log_send_and_compose_impl(v53, &v55, v68, 80, &dword_1E1C61000, v51, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v61, 38, v54);
        _os_crash_msg();
        __break(1u);
      }

      v15 = (*(v6 + 40) + v12);
      if (!*v15)
      {
        v15 = v15[2];
      }

      if (v14 == v13)
      {
        goto LABEL_44;
      }

      if (v57)
      {
        v16 = &v57 + 8;
      }

      else
      {
        v16 = v58;
      }

      *&v16[8 * v13] = v15;
      v13 = (v13 + 1);
      v12 += 32;
    }

    while (v1 != v13);
    if (!v14)
    {
      goto LABEL_60;
    }

    if (v57)
    {
      v17 = &v57 + 1;
    }

    else
    {
      v17 = v58;
    }

    v18 = *v17;
    v19 = &v1[-1].i64[1] + 7;
    v20 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v56, 1uLL, &v1[-1].i64[1] + 7);
    v22 = (*(*v18 + 120))(v18, 0, v20, v21);
    if (v22)
    {
      v1 = v22;
      if (!re::BindPoint::isOverridden(v6) || (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v1[1], v11[1]), vceqq_f32(*v1, *v11)), vandq_s8(vceqq_f32(v1[2], v11[2]), vceqq_f32(v1[3], v11[3])))) & 0x80000000) == 0)
      {
        re::BindPoint::willSet(v6);
        v23 = *v11;
        v24 = v11[1];
        v25 = v11[3];
        v1[2] = v11[2];
        v1[3] = v25;
        *v1 = v23;
        v1[1] = v24;
        re::BindPoint::setIsOverridden(v6, 1);
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    if (!*(&v56 + 1))
    {
      goto LABEL_64;
    }

    if (v57)
    {
      v26 = &v57 + 1;
    }

    else
    {
      v26 = v58;
    }

    v1 = *v26;
    v27 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v56, 1uLL, v19);
    v29 = (*(v1->i64[0] + 88))(v1, 0, v27, v28);
    if (v29)
    {
      v1 = v29;
      if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v29[1], v11[1]), vceqq_f32(*v29, *v11)), vandq_s8(vceqq_f32(v29[2], v11[2]), vceqq_f32(v29[3], v11[3])))) & 0x80000000) == 0)
      {
        re::BindPoint::willSet(v6);
        v30 = *v11;
        v31 = v11[1];
        v32 = v11[3];
        v1[2] = v11[2];
        v1[3] = v32;
        *v1 = v30;
        v1[1] = v31;
LABEL_34:
        re::BindPoint::markAsWritten(v6);
      }
    }

LABEL_35:
    result = v56;
    if (v56 && (v57 & 1) == 0)
    {
      result = (*(*v56 + 40))();
    }

LABEL_38:
    ++v3;
  }

  while (v3 < v2[293]);
  return result;
}

void *re::EvaluationContextManager::updateBoundOutputDataForType<re::Quaternion<float>>(void *result)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result[298])
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(v2[300] + 8 * v3);
      v5 = v2[253];
      if (v5 <= v4)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v20 = 797;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v5;
        _os_log_send_and_compose_impl(v8, &v16, &v25, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_16:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v9 = MEMORY[0x1E69E9C10];
        v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v10)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      v6 = v2[255] + 56 * v4;
      v1 = v2[360];
      if (*(v6 + 48) == 1)
      {
        if (v1 <= v4)
        {
          goto LABEL_16;
        }

        v1 = v2[361];
        result = re::BindPoint::baseValueUntyped((v2[255] + 56 * v4));
        if (result)
        {
          *result = *(v1 + 16 * v4);
          result = re::BindPoint::markAsWritten(v6);
        }
      }

      else
      {
        if (v1 <= v4)
        {
          goto LABEL_20;
        }

        result = re::BindPoint::setValue<re::Vector4<float>>((v2[255] + 56 * v4), (v2[361] + 16 * v4));
      }

      ++v3;
    }

    while (v3 < v2[298]);
  }

  return result;
}

void *re::EvaluationContextManager::updateBoundOutputDataForType<re::Vector2<float>>(void *result)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result[303])
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(v2[305] + 8 * v3);
      v5 = v2[258];
      if (v5 <= v4)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v20 = 797;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v5;
        _os_log_send_and_compose_impl(v8, &v16, &v25, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_16:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v9 = MEMORY[0x1E69E9C10];
        v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v10)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      v6 = v2[260] + 56 * v4;
      v1 = v2[363];
      if (*(v6 + 48) == 1)
      {
        if (v1 <= v4)
        {
          goto LABEL_16;
        }

        v1 = v2[364];
        result = re::BindPoint::baseValueUntyped((v2[260] + 56 * v4));
        if (result)
        {
          *result = *(v1 + 8 * v4);
          result = re::BindPoint::markAsWritten(v6);
        }
      }

      else
      {
        if (v1 <= v4)
        {
          goto LABEL_20;
        }

        result = re::BindPoint::setValue<re::Vector2<float>>((v2[260] + 56 * v4), (v2[364] + 8 * v4));
      }

      ++v3;
    }

    while (v3 < v2[303]);
  }

  return result;
}

void *re::EvaluationContextManager::updateBoundOutputDataForType<re::Vector3<float>>(void *result)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result[308])
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(v2[310] + 8 * v3);
      v5 = v2[263];
      if (v5 <= v4)
      {
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v8 = 3;
        }

        else
        {
          v8 = 2;
        }

        v20 = 797;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v5;
        _os_log_send_and_compose_impl(v8, &v16, &v25, 80, &dword_1E1C61000, v7, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_16:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v9 = MEMORY[0x1E69E9C10];
        v10 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v10)
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v11, &v16, &v25, 80, &dword_1E1C61000, v9, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v16 = 0;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v17 = 136315906;
        v18 = "operator[]";
        v19 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v20 = 476;
        v21 = 2048;
        v22 = v4;
        v23 = 2048;
        v24 = v1;
        _os_log_send_and_compose_impl(v14, &v16, &v25, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v17, 38, v15);
        _os_crash_msg();
        __break(1u);
      }

      v6 = v2[265] + 56 * v4;
      v1 = v2[366];
      if (*(v6 + 48) == 1)
      {
        if (v1 <= v4)
        {
          goto LABEL_16;
        }

        v1 = v2[367];
        result = re::BindPoint::baseValueUntyped((v2[265] + 56 * v4));
        if (result)
        {
          *result = *(v1 + 16 * v4);
          result = re::BindPoint::markAsWritten(v6);
        }
      }

      else
      {
        if (v1 <= v4)
        {
          goto LABEL_20;
        }

        result = re::BindPoint::setValue<re::Vector3<float>>((v2[265] + 56 * v4), (v2[367] + 16 * v4));
      }

      ++v3;
    }

    while (v3 < v2[308]);
  }

  return result;
}

uint64_t re::EvaluationContextManager::updateBoundOutputDataForType<re::GenericSRT<float>>(uint64_t result)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(result + 2504))
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(v2[315] + 8 * v3);
      v5 = v2[268];
      if (v5 <= v4)
      {
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v10 = MEMORY[0x1E69E9C10];
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v11 = 3;
        }

        else
        {
          v11 = 2;
        }

        v23 = 797;
        v24 = 2048;
        v25 = v4;
        v26 = 2048;
        v27 = v5;
        _os_log_send_and_compose_impl(v11, &v19, &v28, 80, &dword_1E1C61000, v10, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
LABEL_16:
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (v13)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        v23 = 476;
        v24 = 2048;
        v25 = v4;
        v26 = 2048;
        v27 = v1;
        _os_log_send_and_compose_impl(v14, &v19, &v28, 80, &dword_1E1C61000, v12, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v19 = 0;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v28 = 0u;
        v15 = MEMORY[0x1E69E9C10];
        v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        if (v16)
        {
          v17 = 3;
        }

        else
        {
          v17 = 2;
        }

        v23 = 476;
        v24 = 2048;
        v25 = v4;
        v26 = 2048;
        v27 = v1;
        _os_log_send_and_compose_impl(v17, &v19, &v28, 80, &dword_1E1C61000, v15, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v20, 38, v18);
        _os_crash_msg();
        __break(1u);
      }

      v6 = v2[270] + 56 * v4;
      v1 = v2[369];
      if (*(v6 + 48) == 1)
      {
        if (v1 <= v4)
        {
          goto LABEL_16;
        }

        v1 = v2[370];
        result = re::BindPoint::baseValueUntyped((v2[270] + 56 * v4));
        if (result)
        {
          v7 = (v1 + 48 * v4);
          v8 = *v7;
          v9 = v7[2];
          *(result + 16) = v7[1];
          *(result + 32) = v9;
          *result = v8;
          result = re::BindPoint::markAsWritten(v6);
        }
      }

      else
      {
        if (v1 <= v4)
        {
          goto LABEL_20;
        }

        result = re::BindPoint::setValue<re::GenericSRT<float>>((v2[270] + 56 * v4), (v2[370] + 48 * v4));
      }

      ++v3;
    }

    while (v3 < v2[313]);
  }

  return result;
}

re::BindPoint *re::BindPoint::setValue<int>(re::BindPoint *result, _DWORD *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(result + 3);
  if (!v2)
  {
    return result;
  }

  v4 = result;
  v36 = 0;
  v37 = 0;
  v38 = 1;
  v39 = 0;
  v40 = 0;
  re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::resize(&v36, v2);
  v5 = 0;
  v6 = 0;
  v7 = *(v4 + 3);
  v8 = v37;
  do
  {
    if (v7 == v6)
    {
      v41 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      v24 = MEMORY[0x1E69E9C10];
      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v42 = 136315906;
      v43 = "operator[]";
      v44 = 1024;
      if (v25)
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      v45 = 797;
      v46 = 2048;
      v47 = v7;
      v48 = 2048;
      v49 = v7;
      _os_log_send_and_compose_impl(v26, &v41, &v50, 80, &dword_1E1C61000, v24, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v36, v37);
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v41 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      v27 = MEMORY[0x1E69E9C10];
      v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v42 = 136315906;
      v43 = "operator[]";
      v44 = 1024;
      if (v28)
      {
        v29 = 3;
      }

      else
      {
        v29 = 2;
      }

      v45 = 858;
      v46 = 2048;
      v47 = v8;
      v48 = 2048;
      v49 = v8;
      _os_log_send_and_compose_impl(v29, &v41, &v50, 80, &dword_1E1C61000, v27, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v36, v37);
      _os_crash_msg();
      __break(1u);
      goto LABEL_39;
    }

    v9 = (*(v4 + 5) + v5);
    if (!*v9)
    {
      v9 = v9[2];
    }

    if (v8 == v6)
    {
      goto LABEL_35;
    }

    if (v38)
    {
      v10 = &v39;
    }

    else
    {
      v10 = v40;
    }

    v10[v6++] = v9;
    v5 += 32;
  }

  while (v2 != v6);
  if (!v8)
  {
LABEL_39:
    v41 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v30 = MEMORY[0x1E69E9C10];
    v31 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v42 = 136315906;
    v43 = "operator[]";
    v44 = 1024;
    if (v31)
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v45 = 858;
    v46 = 2048;
    v47 = 0;
    v48 = 2048;
    v49 = 0;
    _os_log_send_and_compose_impl(v32, &v41, &v50, 80, &dword_1E1C61000, v30, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v36, v37);
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

  if (v38)
  {
    v11 = &v39;
  }

  else
  {
    v11 = v40;
  }

  v12 = *v11;
  v13 = v2 - 1;
  v14 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v36, 1uLL, v13);
  v16 = (*(*v12 + 120))(v12, 0, v14, v15);
  if (v16)
  {
    v17 = v16;
    if (!re::BindPoint::isOverridden(v4) || *v17 != *a2)
    {
      re::BindPoint::willSet(v4);
      *v17 = *a2;
      re::BindPoint::setIsOverridden(v4, 1);
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (!v37)
  {
LABEL_43:
    v41 = 0;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    v33 = MEMORY[0x1E69E9C10];
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v42 = 136315906;
    v43 = "operator[]";
    v44 = 1024;
    if (v34)
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    v45 = 858;
    v46 = 2048;
    v47 = 0;
    v48 = 2048;
    v49 = 0;
    _os_log_send_and_compose_impl(v35, &v41, &v50, 80, &dword_1E1C61000, v33, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", &v42, 38, v36, v37);
    _os_crash_msg();
    __break(1u);
  }

  if (v38)
  {
    v18 = &v39;
  }

  else
  {
    v18 = v40;
  }

  v19 = *v18;
  v20 = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::slice(&v36, 1uLL, v13);
  v22 = (*(*v19 + 88))(v19, 0, v20, v21);
  if (v22)
  {
    v23 = v22;
    if (*v22 != *a2)
    {
      re::BindPoint::willSet(v4);
      *v23 = *a2;
LABEL_19:
      re::BindPoint::markAsWritten(v4);
    }
  }

LABEL_20:
  result = v36;
  if (v36)
  {
    if ((v38 & 1) == 0)
    {
      return (*(*v36 + 40))();
    }
  }

  return result;
}

uint64_t std::function<void ()(re::EvaluationModelBase *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x1E2032AB4);
  }

  return (*(*v2 + 48))(v2, &v4);
}

re *std::__function::__func<void re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,re::SkeletalPoseRigMappingData const&,re::Slice<re::BindPoint> const&,re::MutableSlice<re::Matrix4x4<float>>,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>> &,re::BindNode &)::{lambda(re::EvaluationModelBase *)#1},std::allocator<void re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,re::SkeletalPoseRigMappingData const&,re::Slice<re::BindPoint> const&,re::MutableSlice<re::Matrix4x4<float>>,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>> &,re::BindNode &)::{lambda(re::EvaluationModelBase *)#1}>,void ()(re::EvaluationModelBase *)>::operator()(re *result, void (****a2)(void))
{
  v2 = *a2;
  if (*a2)
  {
    v3 = re::globalAllocators(result)[2];
    (**v2)(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<void re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,re::SkeletalPoseRigMappingData const&,re::Slice<re::BindPoint> const&,re::MutableSlice<re::Matrix4x4<float>>,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>> &,re::BindNode &)::{lambda(re::EvaluationModelBase *)#1},std::allocator<void re::SkeletalPoseRuntimeData::rebuildRuntimeData<re::MeshAsset>(re::SkeletalPoseDefinitionAsset const&,re::RigRuntimeData const&,re::MeshAsset const&,re::MeshNameMap const&,re::SkeletalPoseRigMappingData const&,re::Slice<re::BindPoint> const&,re::MutableSlice<re::Matrix4x4<float>>,re::DynamicArray<re::DynamicArray<re::Matrix4x4<float>>> &,re::BindNode &)::{lambda(re::EvaluationModelBase *)#1}>,void ()(re::EvaluationModelBase *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<re::EvaluationModelBase,std::function<void ()(re::EvaluationModelBase*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::EvaluationModelBase *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::EvaluationModelBase *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<void ()(re::EvaluationModelBase *)>::~__value_func[abi:nn200100](uint64_t a1)
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

void re::IOSurfaceWrapper::SharedEvent::createSharedEvent(void *a1@<X8>)
{
  v2 = objc_alloc_init(MEMORY[0x1E696CE00]);
  *a1 = v2;
}

void re::IOSurfaceWrapper::SharedEventListener::createSharedEventListenerWithQueue(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_alloc(MEMORY[0x1E696CE08]) initWithDispatchQueue:*a1];
  *a2 = v3;
}

__CFString *re::figAlternateGetPackingLoggingStringForFigTagCollection(re *this, const OpaqueCMTagCollection *a2)
{
  if (!this)
  {
    return @"UNKNOWN";
  }

  v2 = @"UNKNOWN";
  if (!FigTagCollectionGetTagsWithCategory())
  {
    if (FigTagEqualToTag())
    {
      return @"SIDE";
    }

    else if (FigTagEqualToTag())
    {
      return @"OVER";
    }

    else if (FigTagEqualToTag())
    {
      return @"NONE";
    }
  }

  return v2;
}

__CFString *re::figAlternateGetChannelsLoggingStringForFigTagCollection(re *this, const OpaqueCMTagCollection *a2)
{
  if (!this)
  {
    return @"UNKNOWN";
  }

  v2 = @"UNKNOWN";
  if (!FigTagCollectionGetTagsWithCategory())
  {
    if (FigTagEqualToTag())
    {
      return @"LEFT";
    }

    else if (FigTagEqualToTag())
    {
      return @"RIGHT";
    }

    else if (FigTagEqualToTag())
    {
      return @"STEREO";
    }

    else if (FigTagEqualToTag())
    {
      return @"MONO";
    }
  }

  return v2;
}

__CFString *re::figAlternateProjectionLoggingStringForFigTagCollection(re *this, const OpaqueCMTagCollection *a2)
{
  if (!this)
  {
    return @"UNKNOWN";
  }

  v2 = @"UNKNOWN";
  if (!FigTagCollectionGetTagsWithCategory())
  {
    if (FigTagEqualToTag())
    {
      return @"RECT";
    }

    else if (FigTagEqualToTag())
    {
      return @"FISH";
    }
  }

  return v2;
}

void re::getDataPreferenceArray(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (a2 == 1)
  {
  }

  else
  {
  }
}

void anonymous namespace::addImmersiveDataChannelGroups(_anonymous_namespace_ *a1, int a2)
{
  v2 = a2;
  v49 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6963150];
  v5 = MEMORY[0x1E6963158];
  v6 = *MEMORY[0x1E6963158];
  v48[0] = *MEMORY[0x1E6963150];
  v48[1] = v6;
  v7 = MEMORY[0x1E6963178];
  v8 = *MEMORY[0x1E6963178];
  v48[2] = *MEMORY[0x1E69631B0];
  v48[3] = v8;
  v9 = MEMORY[0x1E6963198];
  v48[4] = *MEMORY[0x1E6963198];
  if (a2)
  {
  }

  v10 = MEMORY[0x1E69631A0];
  v11 = *MEMORY[0x1E69631A0];
  v47[0] = *v4;
  v47[1] = v11;
  v12 = *v7;
  v47[2] = *v5;
  v47[3] = v12;
  v47[4] = *v9;
  v13 = *MEMORY[0x1E69631A8];
  v46[0] = *v4;
  v46[1] = v13;
  v14 = MEMORY[0x1E69631B8];
  v15 = *v7;
  v46[2] = *MEMORY[0x1E69631B8];
  v46[3] = v15;
  v46[4] = *v9;
  v16 = *v10;
  v45[0] = *v4;
  v45[1] = v16;
  v17 = MEMORY[0x1E6963168];
  v18 = *v7;
  v45[2] = *MEMORY[0x1E6963168];
  v45[3] = v18;
  v45[4] = *v9;
  v19 = *v10;
  v44[0] = *v4;
  v44[1] = v19;
  v20 = MEMORY[0x1E6963160];
  v21 = *v7;
  v44[2] = *MEMORY[0x1E6963160];
  v44[3] = v21;
  v44[4] = *v9;
  v22 = MEMORY[0x1E6963188];
  if (v2)
  {
    v23 = *v5;
    v39 = *v4;
    v40 = v23;
    v24 = *MEMORY[0x1E6963188];
    v41 = *MEMORY[0x1E69631B0];
    v42 = v24;
    v43 = *v9;
  }

  else
  {
    v25 = *v5;
    v39 = *v4;
    v40 = v25;
    v26 = *v22;
    v41 = *MEMORY[0x1E69631B0];
    v42 = v26;
    v43 = *v9;
  }

  v27 = *v10;
  v38[0] = *v4;
  v38[1] = v27;
  v28 = *v22;
  v38[2] = *v5;
  v38[3] = v28;
  v38[4] = *v9;
  v29 = *MEMORY[0x1E69631A8];
  v37[0] = *v4;
  v37[1] = v29;
  v30 = *v22;
  v37[2] = *v14;
  v37[3] = v30;
  v37[4] = *v9;
  v31 = *v10;
  v36[0] = *v4;
  v36[1] = v31;
  v32 = *v22;
  v36[2] = *v17;
  v36[3] = v32;
  v36[4] = *v9;
  v33 = *v10;
  v35[0] = *v4;
  v35[1] = v33;
  v34 = *v22;
  v35[2] = *v20;
  v35[3] = v34;
  v35[4] = *v9;
  if ((v2 & 1) == 0)
  {
  }
}

void anonymous namespace::addMonoscopicDataChannelGroups(_anonymous_namespace_ *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6963158];
  v4[0] = *MEMORY[0x1E6963150];
  v4[1] = v2;
  v3 = *MEMORY[0x1E6963188];
  v4[2] = *MEMORY[0x1E69631B0];
  v4[3] = v3;
}

void anonymous namespace::addStereoscopicDataChannelGroups(_anonymous_namespace_ *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6963150];
  v3 = MEMORY[0x1E69631A0];
  v4 = *MEMORY[0x1E69631A0];
  v16[0] = *MEMORY[0x1E6963150];
  v16[1] = v4;
  v5 = MEMORY[0x1E6963188];
  v6 = *MEMORY[0x1E6963188];
  v16[2] = *MEMORY[0x1E6963158];
  v16[3] = v6;
  v7 = *MEMORY[0x1E69631A8];
  v15[0] = *v2;
  v15[1] = v7;
  v8 = *v5;
  v15[2] = *MEMORY[0x1E69631B8];
  v15[3] = v8;
  v9 = *v3;
  v14[0] = *v2;
  v14[1] = v9;
  v10 = *v5;
  v14[2] = *MEMORY[0x1E6963168];
  v14[3] = v10;
  v11 = *v3;
  v13[0] = *v2;
  v13[1] = v11;
  v12 = *v5;
  v13[2] = *MEMORY[0x1E6963160];
  v13[3] = v12;
}

uint64_t re::setVideoDataPreferences(re *a1, uint64_t a2)
{
  v78 = *MEMORY[0x1E69E9840];
  v4 = *re::videoLogObjects(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a1;
    v6 = "Unknown";
    if (a2 == 1)
    {
      v6 = "Mono";
    }

    if (a2 == 2)
    {
      v6 = "Stereo";
    }

    *buf = 134218242;
    *&buf[4] = v5;
    *&buf[12] = 2082;
    *&buf[14] = v6;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Setting Fig Receiver preferences with FVR pointer %p: %{public}s", buf, 0x16u);
  }

  v61 = a1;
  __src = 0;
  memset(buf, 0, sizeof(buf));
  v75 = 0;
  re::DynamicArray<float *>::setCapacity(buf, 0x10uLL);
  re::getDataPreferenceArray(buf, a2);
  v7 = 1;
  v70 = 0;
  v71 = 1;
  allocator = *MEMORY[0x1E695E480];
  v8 = MEMORY[0x1E6963148];
  v9 = MEMORY[0x1E6963138];
  do
  {
    v10 = v7;
    v69 = 0;
    v11 = FigDataChannelGroupCreateForUseCase();
    v12 = v11;
    if (v11)
    {
      v22 = *re::videoLogObjects(v11);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v77 = 67109120;
        *&v77[4] = v12;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to create video data channel group (error: %d)", v77, 8u);
      }

      v23 = __src;
      if (*&buf[16])
      {
        v24 = 0;
        v25 = 8 * *&buf[16];
        do
        {
          v26 = v23[v24 / 8];
          if (v26)
          {
            CFRelease(v26);
          }

          v24 += 8;
        }

        while (v25 != v24);
      }

      goto LABEL_70;
    }

    *v77 = *v8;
    *&v77[16] = *v9;
    v13 = FigDataChannelGroupAddDataChannelWithFigTags();
    v14 = v13;
    if (v13)
    {
      v27 = *re::videoLogObjects(v13);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v77 = 67109120;
        *&v77[4] = v14;
        _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Failed to add a FigTag collection to channel group (error: %d).", v77, 8u);
      }

      v23 = __src;
      if (*&buf[16])
      {
        v28 = 0;
        v29 = 8 * *&buf[16];
        do
        {
          v30 = v23[v28 / 8];
          if (v30)
          {
            CFRelease(v30);
          }

          v28 += 8;
        }

        while (v29 != v28);
      }

      goto LABEL_70;
    }

    re::DynamicArray<re::RigDataValue *>::add(buf, &v69);
    *v77 = 0;
    v15 = FigDataChannelGroupCreateForUseCase();
    v16 = v15;
    if (v15)
    {
      v31 = *re::videoLogObjects(v15);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *v72 = 67109120;
        v73 = v16;
        _os_log_error_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_ERROR, "Failed to create video data channel group (error: %d)", v72, 8u);
      }

      v23 = __src;
      if (*&buf[16])
      {
        v32 = 0;
        v33 = 8 * *&buf[16];
        do
        {
          v34 = v23[v32 / 8];
          if (v34)
          {
            CFRelease(v34);
          }

          v32 += 8;
        }

        while (v33 != v32);
      }

      goto LABEL_70;
    }

    v17 = re::DynamicArray<re::RigDataValue *>::add(buf, v77);
    v7 = 0;
  }

  while ((v10 & 1) != 0);
  v18 = *re::videoLogObjects(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    v20 = *v61;
    *v77 = 134217984;
    *&v77[4] = v20;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Setting Fig Receiver Preferences Groups Final List with FVR pointer %p:", v77, 0xCu);
  }

  __dst = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v67 = 0;
  if (*buf)
  {
    v21 = *&buf[16];
    v64 = *buf;
    v19 = re::DynamicArray<float *>::setCapacity(&v64, *&buf[16]);
    ++v67;
    if (v21 >= v66)
    {
      re::DynamicArray<float *>::setCapacity(&v64, v21);
      v35 = v66;
      v36 = __dst;
      v37 = __src;
      if (v66)
      {
        v38 = 8 * v66;
        memmove(__dst, __src, 8 * v66);
      }

      else
      {
        v38 = 0;
      }

      v19 = memcpy(&v36[8 * v35], &v37[v38], 8 * (v21 - v35));
    }

    else if (v21)
    {
      v19 = memmove(__dst, __src, 8 * v21);
    }

    v66 = v21;
  }

  else
  {
    v21 = 0;
  }

  v39 = *re::videoLogObjects(v19);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *v77 = 0;
    _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "Setting the FigVideoPreferences Tag Collection Currently:", v77, 2u);
  }

  v40 = __dst;
  if (v21)
  {
    v62 = __dst + 8 * v21;
    v41 = __dst;
    do
    {
      for (i = 0; FigDataChannelGroupGetCountOfDataChannels() > i; ++i)
      {
        DataChannelByIndex = FigDataChannelGroupGetDataChannelByIndex();
        PackingLoggingStringForFigTagCollection = re::figAlternateGetPackingLoggingStringForFigTagCollection(DataChannelByIndex, v44);
        ChannelsLoggingStringForFigTagCollection = re::figAlternateGetChannelsLoggingStringForFigTagCollection(DataChannelByIndex, v46);
        v49 = re::figAlternateProjectionLoggingStringForFigTagCollection(DataChannelByIndex, v48);
        v50 = v40;
        v51 = *re::videoLogObjects(v49);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *v77 = 138412802;
          *&v77[4] = PackingLoggingStringForFigTagCollection;
          *&v77[12] = 2112;
          *&v77[14] = ChannelsLoggingStringForFigTagCollection;
          *&v77[22] = 2112;
          *&v77[24] = v49;
          _os_log_impl(&dword_1E1C61000, v51, OS_LOG_TYPE_DEFAULT, "                                         Tag Collection :%@/%@/%@", v77, 0x20u);
        }

        v40 = v50;
      }

      v41 += 8;
    }

    while (v41 != v62);
  }

  if (v64)
  {
    if (v40)
    {
      (*(*v64 + 40))();
    }

    __dst = 0;
    v65 = 0;
    v66 = 0;
    v64 = 0;
    ++v67;
  }

  v23 = __src;
  v52 = *&buf[16];
  v53 = CFArrayCreate(allocator, __src, *&buf[16], MEMORY[0x1E695E9C0]);
  v54 = FigVideoReceiverForBufferDeliverySpecifyPreferredDataChannelGroupsWithID();
  if (v52)
  {
    v55 = 8 * v52;
    v56 = v23;
    do
    {
      if (*v56)
      {
        CFRelease(*v56);
      }

      ++v56;
      v55 -= 8;
    }

    while (v55);
  }

  CFRelease(v53);
  if (v54)
  {
    v58 = *re::videoLogObjects(v57);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      *v77 = 67109120;
      *&v77[4] = v54;
      _os_log_error_impl(&dword_1E1C61000, v58, OS_LOG_TYPE_ERROR, "Failed to set preferred video data channels (error: %d)", v77, 8u);
    }

LABEL_70:
    v59 = 0;
    goto LABEL_71;
  }

  v59 = 1;
LABEL_71:
  if (*buf && v23)
  {
    (*(**buf + 40))();
  }

  return v59;
}

void sub_1E2033D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a25)
  {
    if (a29)
    {
      (*(*a25 + 40))();
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL re::createVideoReceiver(const void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v8 = MEMORY[0x1E6904290](*MEMORY[0x1E695E480], 0, &v30);
  v9 = v8;
  if (v8)
  {
    v10 = *re::videoLogObjects(v8);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 67109120;
    LODWORD(v32) = v9;
    v12 = "Failed to create video receiver (error: %d)";
    v13 = v10;
    v14 = 8;
LABEL_4:
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    return 0;
  }

  v15 = v30;
  if (!v30)
  {
    v23 = *re::videoLogObjects(v8);
    result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v12 = "Failed to create video receiver";
    v13 = v23;
    v14 = 2;
    goto LABEL_4;
  }

  if (*a1)
  {
    re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a1);
  }

  *a1 = v15;
  CFRetain(v15);
  CFRelease(v30);
  v17 = *re::videoLogObjects(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *a1;
    *buf = 134217984;
    v32 = v18;
    _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "Creating Fig Receiver %p", buf, 0xCu);
  }

  if (a2)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___ZN2re19createVideoReceiverERNS_11VideoObjectINS_17VideoReceiverBaseEEEPFvP22OpaqueFigVideoReceiver6CMTimejPK9__CFArrayPK14__CFDictionaryS9_PvEPFvS5_P28OpaqueFigDataChannelResourceSD_38FigVideoReceiverResourceLifeCycleEventESD__block_invoke;
    aBlock[3] = &__block_descriptor_56_e96_v68__0__OpaqueFigVideoReceiver__8___qiIq_16I40____CFArray__44____CFDictionary__52____CFArray__60l;
    aBlock[4] = a4;
    aBlock[5] = a1;
    aBlock[6] = a2;
    v19 = _Block_copy(aBlock);
    v20 = FigVideoReceiverForBufferDeliverySetPrepareDataChannelsWithDependentResourcesHandler();
    if (v20)
    {
      v21 = v20;
      v22 = *re::videoLogObjects(v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v32) = v21;
        _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to register change callback handler for video data channels and dependent resources (error: %d)", buf, 8u);
      }

      if (*a1)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a1);
      }

      *a1 = 0;

      return 0;
    }
  }

  if (a3)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = ___ZN2re19createVideoReceiverERNS_11VideoObjectINS_17VideoReceiverBaseEEEPFvP22OpaqueFigVideoReceiver6CMTimejPK9__CFArrayPK14__CFDictionaryS9_PvEPFvS5_P28OpaqueFigDataChannelResourceSD_38FigVideoReceiverResourceLifeCycleEventESD__block_invoke_59;
    v28[3] = &__block_descriptor_56_e70_v28__0__OpaqueFigVideoReceiver__8__OpaqueFigDataChannelResource__16i24l;
    v28[4] = a4;
    v28[5] = a1;
    v28[6] = a3;
    v24 = _Block_copy(v28);
    v25 = FigVideoReceiverForBufferDeliverySetResourceLifeCycleHandler();
    if (v25)
    {
      v26 = v25;
      v27 = *re::videoLogObjects(v25);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v32) = v26;
        _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Failed to register change callback handler for resources (error: %d)", buf, 8u);
      }

      if (*a1)
      {
        re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a1);
      }

      *a1 = 0;

      return 0;
    }
  }

  return 1;
}

uint64_t ___ZN2re19createVideoReceiverERNS_11VideoObjectINS_17VideoReceiverBaseEEEPFvP22OpaqueFigVideoReceiver6CMTimejPK9__CFArrayPK14__CFDictionaryS9_PvEPFvS5_P28OpaqueFigDataChannelResourceSD_38FigVideoReceiverResourceLifeCycleEventESD__block_invoke(uint64_t result, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(result + 32);
  if (v9)
  {
    if (**(result + 40) == a2)
    {
      v13 = v7;
      v14 = v8;
      v10 = *(result + 48);
      v11 = *a3;
      v12 = *(a3 + 2);
      return v10(a2, &v11, a4, a5, a6, a7, v9);
    }
  }

  return result;
}

uint64_t ___ZN2re19createVideoReceiverERNS_11VideoObjectINS_17VideoReceiverBaseEEEPFvP22OpaqueFigVideoReceiver6CMTimejPK9__CFArrayPK14__CFDictionaryS9_PvEPFvS5_P28OpaqueFigDataChannelResourceSD_38FigVideoReceiverResourceLifeCycleEventESD__block_invoke_59(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    if (**(result + 40) == a2)
    {
      return (*(result + 48))(a2, a3, v3);
    }
  }

  return result;
}

void re::destroyVideoReceiver(const void **a1)
{
  if (*a1)
  {
    FigVideoReceiverForBufferDeliverySetResourceLifeCycleHandler();
    FigVideoReceiverForBufferDeliverySetPrepareDataChannelsWithDependentResourcesHandler();
    if (*a1)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(a1);
    }

    *a1 = 0;
  }
}

__n128 re::retrievePixelBuffersWithVideoReceiver(uint64_t *a1, uint64_t *a2, CMTime *a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E6960C70];
  if (!*a2 || (v8 = *MEMORY[0x1E6960C70], *(a4 + 16) = *(MEMORY[0x1E6960C70] + 16), *a4 = v8, v28 = 0, buf = *a3, v9 = re::VideoReceiverCopyImageForTime(a2, &buf, 0, &v28, a4), v11 = v9, v9 == -15575))
  {
LABEL_19:
    *a1 = 0;
    *(a1 + 2) = 0;
    a1[4] = 0;
    *(a1 + 10) = -1;
    result = *v5;
    *(a1 + 44) = *v5;
    *(a1 + 60) = v5[1].n128_i64[0];
    return result;
  }

  if (v9)
  {
    v27 = *re::videoLogObjects(v9);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.value) = 67109120;
      HIDWORD(buf.value) = v11;
      _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "Failed to sample image from video receiver (error: %d)", &buf, 8u);
    }

    goto LABEL_19;
  }

  *a1 = 0;
  *(a1 + 2) = 0;
  a1[4] = 0;
  *(a1 + 10) = -1;
  *(a1 + 44) = *v5;
  *(a1 + 60) = v5[1].n128_i64[0];
  v12 = re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(a1, v10);
  if (v12)
  {
    v13 = *a1;
    a1[*a1 + 2] = v28;
    *a1 = v13 + 1;
    ++*(a1 + 2);
  }

  *(a1 + 44) = *a4;
  *(a1 + 60) = *(a4 + 16);
  v14 = re::VideoDefaults::logEnabled(v12);
  if (v14)
  {
    v16 = *re::videoLogObjects(v14);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "------------------------------------------", &buf, 2u);
    }

    v18 = *re::videoLogObjects(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      buf = *a3;
      Seconds = CMTimeGetSeconds(&buf);
      *v29 = 134217984;
      v30 = Seconds;
      _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Sample Host Time: %f", v29, 0xCu);
    }

    v21 = *re::videoLogObjects(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      buf = *a4;
      v22 = CMTimeGetSeconds(&buf);
      *v29 = 134217984;
      v30 = v22;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Sample Presentation Time: %f", v29, 0xCu);
    }

    v24 = *re::videoLogObjects(v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "Sample Format: Single-channel legacy", &buf, 2u);
    }

    v26 = *re::videoLogObjects(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "------------------------------------------", &buf, 2u);
    }
  }

  return result;
}

void sub_1E203459C(_Unwind_Exception *a1)
{
  *v1 = 0;
  ++*(v1 + 8);
  _Unwind_Resume(a1);
}

unint64_t populatePresentationGroup(__int128 *a1, unint64_t a2, CFTypeRef *a3, NSObject *a4, unint64_t **a5, float32x2_t *a6, uint64_t a7, unint64_t value, uint64_t a9, uint64_t a10, void *a11, BOOL a12)
{
  v658 = *MEMORY[0x1E69E9840];
  v17 = a11;
  v568 = v17;
  if (!*a2)
  {
    v38 = *re::videoLogObjects(v17);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      v39 = 1;
      goto LABEL_507;
    }

    LOWORD(v618) = 0;
    v194 = "Could no populate presentation group. Legacy buffer group has no pixel buffers.";
LABEL_254:
    _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, v194, &v618, 2u);
    goto LABEL_18;
  }

  v18 = a9;
  re::deinitVideoPresentationGroup(a9);
  v19 = *a1;
  *(a9 + 16) = *(a1 + 2);
  *a9 = v19;
  *(a9 + 1780) = *(a2 + 40);
  *(a9 + 1712) = 0u;
  *(a9 + 1584) = *(a3 + 9704);
  *(a9 + 2088) = 0;
  if (!*a2)
  {
    p_time = 0;
    v633.isa = 0;
    v634 = 0;
    goto LABEL_21;
  }

  v20 = 0;
  v21 = (a9 + 1712);
  do
  {
    IOSurface = CVPixelBufferGetIOSurface(*(a2 + 8 * v20 + 16));
    if (!IOSurface)
    {
      v38 = *re::videoLogObjects(0);
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      LOWORD(v618) = 0;
      v194 = "Sampled pixel buffer does not contain a surface.";
      goto LABEL_254;
    }

    ID = IOSurfaceGetID(IOSurface);
    v25 = *(a9 + 24);
    if (v25 >= 2)
    {
      re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
      __break(1u);
      goto LABEL_601;
    }

    *(a9 + 36 + 4 * v25) = ID;
    *(a9 + 24) = v25 + 1;
    ++*(a9 + 32);
    ++v20;
    v26 = *a2;
  }

  while (v20 < *a2);
  v633.isa = 0;
  v634 = 0;
  if (!v26)
  {
    p_time = 0;
    goto LABEL_21;
  }

  v27 = 0;
  do
  {
    i = a2 + 8 * v27;
    p_time = *(i + 16);
    *&v618 = p_time;
    CVPixelBufferRetain(p_time);
    re::DynamicInlineArray<REFrameAnalysisBottleneck,2ul>::ensureCapacity(v633.isa, v29);
    isa = v633.isa;
    texture[v633.isa] = p_time;
    v633.isa = (isa + 1);
    ++v634;
    if (*a2 <= v27)
    {
      re::internal::assertLog(6, v30, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v27, *a2);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v371, v462);
      __break(1u);
LABEL_513:
      re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, v27, v35);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v372, v463);
      __break(1u);
LABEL_514:
      re::internal::assertLog(6, v56, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v21, v57);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v373, v464);
      __break(1u);
      goto LABEL_515;
    }

    Width = CVPixelBufferGetWidth(*(i + 16));
    v34 = *v21;
    if (*v21 <= Width)
    {
      v34 = Width;
    }

    *v21 = v34;
    v35 = *a2;
    if (*a2 <= v27)
    {
      goto LABEL_513;
    }

    Height = CVPixelBufferGetHeight(*(i + 16));
    v37 = *(a9 + 1720);
    if (v37 <= Height)
    {
      v37 = Height;
    }

    *(a9 + 1720) = v37;
    ++v27;
  }

  while (v27 < *a2);
  p_time = v633.isa;
LABEL_21:
  v632 = *&a6[26];
  v40 = (a9 + 1792);
  re::DynamicInlineArray<re::VideoObject<re::VideoColorTransformBase>,2ul>::resize(a9 + 1792, p_time);
  v41 = (a9 + 1952);
  re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::clear(a9 + 1952);
  v557 = isPhysicalHardware;
  *(a9 + 1778) = 1;
  v44 = v633.isa;
  if (v633.isa < 2)
  {
    goto LABEL_606;
  }

  v45 = 0;
  p_time = texture;
  i = 3;
  do
  {
    isPhysicalHardware = re::VideoPixelBufferBase::colorTags(p_time);
    if ((isPhysicalHardware & 0xFFFFFF) == 0x10D0C)
    {
      *(a9 + 1778) = 3;
    }

    ++v45;
    v44 = v633.isa;
    p_time += 8;
  }

  while (v45 < v633.isa);
  if (*(a9 + 1778) == 1)
  {
LABEL_606:
    if (v44 == 1)
    {
      *&v618 = 0;
      re::VideoObject<re::VideoPixelBufferBase>::setRef(&v618, &v618, texture[0]);
      if (v618)
      {
        isPhysicalHardware = re::VideoPixelBufferBase::colorTags(&v618);
        if ((isPhysicalHardware & 0xFFFFFF) == 0x10D0C)
        {
          *(a9 + 2088) = 1;
        }

        if (v618)
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v618);
        }
      }
    }
  }

  v577 = a12;
  if (re::VideoDefaults::pipelineEnabled(isPhysicalHardware))
  {
    v46 = re::VideoManager::pipelineProcessor(a5);
    v647[49] = 0;
    *&v647[56] = 0;
    v648 = 0;
    *&v652 = 0;
    v653 = 0;
    *&v651 = 0;
    cf = 0;
    *v647 = *&a4->isa;
    v48 = a4[2].isa;
    v49 = *(a9 + 1778);
    if (v49 >= 4)
    {
      LOBYTE(v49) = 0;
    }

    v647[48] = v49;
    *&v647[24] = *(a2 + 44);
    v50 = *(a2 + 60);
    *&v647[16] = v48;
    *&v647[40] = v50;
    v51 = *(a2 + 40);
    if (v51 >= 6)
    {
      v52 = 0;
    }

    else
    {
      v52 = 0x30205060401uLL >> (8 * v51);
    }

    v647[50] = v52;
    if (!*a2)
    {
      goto LABEL_588;
    }

    p_time = v46;
    if (re::CoreVideoUtils::pixelBufferIsHDR(*(a2 + 16), v47))
    {
      v53 = 2;
    }

    else
    {
      v53 = 1;
    }

    v647[49] = v53;
    v54 = *(a2 + 32);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = v54;
    if (v54)
    {
      CFRetain(v54);
    }

    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(&v647[56], *a2);
    if (*a2)
    {
      v21 = 0;
      a4 = &v649;
      do
      {
        v57 = *&v647[56];
        if (*&v647[56] <= v21)
        {
          goto LABEL_514;
        }

        re::VideoObject<re::VideoPixelBufferBase>::setRef(a4, &a4->isa, *(a2 + 8 * v21 + 16));
        v21 = (v21 + 1);
        ++a4;
      }

      while (v21 < *a2);
    }

    v555 = value;
    v39 = 1;
    v58 = re::VideoDefaults::pipelineEnabled(v55);
    v553 = v58;
    if (v58)
    {
      v59 = *(a3 + 9704);
      *&time.timescale = 0;
      LOWORD(time.epoch) = 514;
      BYTE2(time.epoch) = 2;
      LOBYTE(time.value) = v59 & 1;
      BYTE1(time.value) = 1;
      BYTE2(time.value) = (v59 & 4) != 0;
      BYTE3(time.value) = re::VideoDefaults::useBT1886ForCoreVideoGamma(v58);
      if ((v59 & 0x10) != 0)
      {
        CanUpscale = re::VideoPipelinePolicy::CanUpscale(v647, v60);
      }

      else
      {
        CanUpscale = 0;
      }

      BYTE4(time.value) = CanUpscale;
      v62 = re::VideoPSEProcessor::NeedsProcessing(CanUpscale);
      v63 = re::VideoDefaults::overridePseEnabled(v62);
      if (v63)
      {
        LOBYTE(v63) = re::VideoPipelinePolicy::CanDimFlashingLights(v647, v64);
      }

      BYTE5(time.value) = v63;
      MipMap = re::VideoPipelinePolicy::CanGenerateMipMap(v647, v64);
      BYTE6(time.value) = MipMap;
      HIBYTE(time.timescale) = (v59 & 2) != 0;
      re::VideoDefaults::logEnabled(MipMap);
      BYTE2(time.timescale) = 0;
      if (v647[49] <= 3u)
      {
        LOBYTE(time.flags) = 0x101u >> (8 * v647[49]);
        BYTE1(time.flags) = 0x1010000u >> (8 * v647[49]);
      }

      if (v59 < 0)
      {
        BYTE2(time.flags) = 1;
      }

      HIBYTE(time.value) = 0;
      v618 = *MEMORY[0x1E6960C70];
      v66 = *(MEMORY[0x1E6960C70] + 16);
      *&v619[8] = v618;
      *v619 = v66;
      *&v619[24] = v66;
      v620 = 0u;
      LOWORD(v621) = 514;
      BYTE2(v621) = 2;
      DWORD1(v621) = 1;
      WORD4(v621) = 0;
      BYTE10(v621) = 0;
      v631 = 0u;
      memset(v622, 0, 20);
      re::VideoManager::globalContext(a5);
      v67 = re::VideoPipeline::process((a3 + 1219));
      v574 = (a9 + 1952);
      if (v67)
      {
        v68 = *re::videoLogObjects(v67);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v68, OS_LOG_TYPE_DEFAULT, "Pipeline failed.", buf, 2u);
        }
      }

      else
      {
        *(a9 + 2072) = BYTE8(v621);
        v69 = SDWORD1(v621);
        *(a9 + 2080) = SDWORD1(v621);
        *(a9 + 1776) = (BYTE10(v621) & 0xFE) == 2;
        v70 = *&v622[8];
        *(a9 + 1680) = *v622;
        *(a9 + 1777) = BYTE9(v621);
        if (!v70)
        {
          goto LABEL_595;
        }

        if (v630 == 9)
        {
          v71 = 3;
        }

        else
        {
          v71 = 0;
        }

        if (v630 == 12)
        {
          v72 = 1;
        }

        else
        {
          v72 = v71;
        }

        *(a9 + 1688) = v72;
        *(a9 + 2080) = v69;
        re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(a9 + 48, v70);
        i = a9 + 896;
        re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(a9 + 896, *&v622[8]);
        v579 = (a9 + 1848);
        re::DynamicInlineArray<re::VideoColorTags,2ul>::resize((a9 + 1848), *&v622[8]);
        location = (a9 + 1872);
        re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::resize(a9 + 1872, *&v622[8]);
        v569 = (a9 + 1824);
        re::DynamicInlineArray<re::VideoColorTags,2ul>::resize((a9 + 1824), *&v622[8]);
        v562 = (a9 + 2000);
        re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(a9 + 2000, *&v622[8]);
        re::DynamicInlineArray<float,2ul>::resize(a9 + 2048, *&v622[8]);
        v73 = (a9 + 624);
        re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(a9 + 624, *&v622[8]);
        re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a9 + 80);
        re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::clear(a9 + 352);
        if (*&v622[8])
        {
          value = 0;
          v558 = a9 + 912;
          v75 = a9 + 1744;
          v554 = a9 + 640;
          while (1)
          {
            v76 = *i;
            if (*i <= value)
            {
              goto LABEL_548;
            }

            v77 = &v622[208 * value + 24];
            objc_storeStrong((v558 + (value << 7) + 104), *(v77 + 1));
            v79 = *i;
            if (*i <= value)
            {
              break;
            }

            v80 = *&v622[8];
            if (*&v622[8] <= value)
            {
              goto LABEL_550;
            }

            objc_storeStrong((v558 + (value << 7) + 112), *(v77 + 2));
            v82 = *i;
            if (*i <= value)
            {
              goto LABEL_551;
            }

            v83 = *&v622[8];
            if (*&v622[8] <= value)
            {
              goto LABEL_552;
            }

            objc_storeStrong((v558 + (value << 7) + 120), *(v77 + 3));
            v85 = *&v622[8];
            if (*&v622[8] <= value)
            {
              goto LABEL_553;
            }

            v86 = *v579;
            if (*v579 <= value)
            {
              goto LABEL_554;
            }

            v87 = a9 + 1860 + 3 * value;
            *v87 = *(v77 + 84);
            *(v87 + 2) = v77[170];
            v88 = *v569;
            if (*v569 <= value)
            {
              goto LABEL_555;
            }

            v89 = a9 + 1836 + 3 * value;
            *v89 = *(v77 + 84);
            *(v89 + 2) = v77[170];
            v90 = *(a9 + 48);
            if (v90 <= value)
            {
              goto LABEL_556;
            }

            re::VideoObject<re::VideoPixelBufferBase>::setRef(a9 + 64 + 8 * value, (a9 + 64 + 8 * value), *(v77 + 22));
            v91 = *&v622[8];
            if (*&v622[8] <= value)
            {
              goto LABEL_557;
            }

            v92 = *location;
            if (*location <= value)
            {
              goto LABEL_558;
            }

            v93 = (a9 + 1888 + 32 * value);
            *(v93 + 9) = *(v77 + 145);
            *v93 = *(v77 + 136);
            v94 = *v562;
            if (*v562 <= value)
            {
              goto LABEL_559;
            }

            v95 = v631;
            if (*(&v631 + 1))
            {
              atomic_fetch_add_explicit((*(&v631 + 1) + 8), 1uLL, memory_order_relaxed);
            }

            v96 = a9 + 2016 + 16 * value;
            v97 = *(v96 + 8);
            *v96 = v95;
            if (v97)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v97);
            }

            v98 = *&v622[8];
            if (*&v622[8] <= value)
            {
              goto LABEL_560;
            }

            if (*(v77 + 6))
            {
              re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(v574, value + 1);
              v99 = *&v622[8];
              if (*&v622[8] <= value)
              {
                goto LABEL_576;
              }

              v100 = *v574;
              if (*v574 <= value)
              {
                goto LABEL_577;
              }

              v102 = *(v77 + 6);
              v101 = *(v77 + 7);
              if (v101)
              {
                atomic_fetch_add_explicit((v101 + 8), 1uLL, memory_order_relaxed);
              }

              v103 = (a9 + 1968 + 16 * value);
              v104 = v103[1];
              *v103 = v102;
              v103[1] = v101;
              if (v104)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v104);
              }
            }

            v105 = *&v622[8];
            if (*&v622[8] <= value)
            {
              goto LABEL_561;
            }

            if (v77[40] == 1)
            {
              re::DynamicInlineArray<re::VideoObject<re::VideoColorTransformBase>,2ul>::resize(a9 + 1792, value + 1);
              v107 = *&v622[8];
              if (*&v622[8] <= value)
              {
                goto LABEL_581;
              }

              if ((v77[40] & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:nn200100]();
                goto LABEL_603;
              }

              v108 = *v40;
              if (*v40 <= value)
              {
                goto LABEL_582;
              }

              re::VideoObject<re::VideoColorTransformBase>::setRef(a9 + 1808 + 8 * value, (a9 + 1808 + 8 * value), *(v77 + 4));
              v105 = *&v622[8];
            }

            if (v105 <= value)
            {
              goto LABEL_562;
            }

            *(a9 + 1728) = vbslq_s8(vcgtq_f64(*(v77 + 5), *(a9 + 1728)), *(v77 + 5), *(a9 + 1728));
            v109 = *(&v627[1] + 8);
            *v75 = *(v627 + 8);
            *(a9 + 1760) = v109;
            v110 = *(a9 + 1872);
            if (v110 <= value)
            {
              goto LABEL_563;
            }

            *v93 = *(v77 + 136);
            *(v93 + 9) = *(v77 + 145);
            v111 = vcvtq_u64_f64(*(v77 + 4));
            *(a9 + 1696) = vbslq_s8(vcgtq_u64(*(a9 + 1696), v111), *(a9 + 1696), v111);
            v112 = *(a9 + 2048);
            if (v112 <= value)
            {
              goto LABEL_564;
            }

            *(a9 + 2060 + 4 * value) = *(v77 + 32);
            if (*(v77 + 184) == 0 && !*(v77 + 25))
            {
              ++value;
            }

            else
            {
              re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(a9 + 624, value + 1);
              v114 = *v73;
              if (*v73 <= value)
              {
                goto LABEL_565;
              }

              v115 = *&v622[8];
              if (*&v622[8] <= value)
              {
                goto LABEL_566;
              }

              p_time = v554 + (value << 7) + 104;
              objc_storeStrong(p_time, *(v77 + 23));
              v117 = *v73;
              if (*v73 <= value)
              {
                goto LABEL_567;
              }

              v118 = *&v622[8];
              if (*&v622[8] <= value)
              {
                goto LABEL_568;
              }

              objc_storeStrong((v554 + (value << 7) + 112), *(v77 + 24));
              v120 = *v73;
              if (*v73 <= value)
              {
                goto LABEL_569;
              }

              v121 = *&v622[8];
              if (*&v622[8] <= value)
              {
                goto LABEL_570;
              }

              objc_storeStrong((v554 + (value << 7) + 120), *(v77 + 25));
              v105 = *&v622[8];
              ++value;
            }

            if (value >= v105)
            {
              goto LABEL_120;
            }
          }

LABEL_549:
          re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v79);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v410, v501);
          __break(1u);
LABEL_550:
          re::internal::assertLog(6, v78, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v80);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v411, v502);
          __break(1u);
LABEL_551:
          re::internal::assertLog(6, v81, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v82);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v412, v503);
          __break(1u);
LABEL_552:
          re::internal::assertLog(6, v81, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v83);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v413, v504);
          __break(1u);
LABEL_553:
          re::internal::assertLog(6, v84, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v85);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v414, v505);
          __break(1u);
LABEL_554:
          re::internal::assertLog(6, v84, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v86);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v415, v506);
          __break(1u);
LABEL_555:
          re::internal::assertLog(6, v84, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v88);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v416, v507);
          __break(1u);
LABEL_556:
          re::internal::assertLog(6, v84, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v90);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v417, v508);
          __break(1u);
LABEL_557:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v91);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v418, v509);
          __break(1u);
LABEL_558:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v92);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v419, v510);
          __break(1u);
LABEL_559:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v94);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v420, v511);
          __break(1u);
LABEL_560:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v98);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v421, v512);
          __break(1u);
LABEL_561:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v105);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v422, v513);
          __break(1u);
LABEL_562:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v105);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v423, v514);
          __break(1u);
LABEL_563:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v110);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v424, v515);
          __break(1u);
LABEL_564:
          re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v112);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v425, v516);
          __break(1u);
LABEL_565:
          re::internal::assertLog(6, v113, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v114);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v426, v517);
          __break(1u);
LABEL_566:
          re::internal::assertLog(6, v113, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v115);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v427, v518);
          __break(1u);
LABEL_567:
          re::internal::assertLog(6, v116, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v117);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v428, v519);
          __break(1u);
LABEL_568:
          re::internal::assertLog(6, v116, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v118);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v429, v520);
          __break(1u);
LABEL_569:
          re::internal::assertLog(6, v119, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v120);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v430, v521);
          __break(1u);
LABEL_570:
          re::internal::assertLog(6, v119, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v121);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v431, v522);
          __break(1u);
          goto LABEL_571;
        }

LABEL_120:
        v39 = 0;
        *(a9 + 1784) = 0;
      }

      if (*(&v631 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v631 + 1));
      }

      re::DynamicInlineArray<re::VideoPipelineRenderableChannel,2ul>::clear(&v622[8]);
      v41 = (a9 + 1952);
    }

    if (cf)
    {
      re::VideoObjectBase<re::VideoSampleBufferBase,opaqueCMSampleBuffer *>::release(cf);
    }

    cf = 0;
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&v647[56]);
    value = v555;
    if (v553)
    {
      goto LABEL_506;
    }
  }

  else
  {
    v39 = 1;
  }

  i = 0;
  v614 = 0;
  v615 = 0;
  *buf = 0;
  v608 = 0;
  v602 = 0;
  v603 = 0;
  v594 = 0;
  v595 = 0;
  v591 = 0;
  v592 = 0;
  *&v618 = 0;
  DWORD2(v618) = 0;
  *(a9 + 2080) = 1;
  if (*(a9 + 1778) == 1)
  {
    p_time = v633.isa;
    if (v633.isa)
    {
      v122 = 0;
      LODWORD(i) = 1;
      do
      {
        PixelFormatType = texture[v122];
        if (PixelFormatType)
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(PixelFormatType);
          p_time = v633.isa;
        }

        i = (re::CoreVideoUtils::pixelFormatIsTriPlanar(PixelFormatType) ^ 1) & i;
        ++v122;
      }

      while (v122 < p_time);
    }

    else
    {
      i = 1;
    }
  }

  v563 = (*(*a5[39] + 136))(a5[39]) == 0;
  memset(&v590, 0, sizeof(v590));
  CMTimeMakeWithSeconds(&v590, *(a10 + 8), 1000);
  memset(&v589, 0, sizeof(v589));
  CMTimeMakeWithSeconds(&v589, *(a10 + 24), 1000);
  if (!v633.isa)
  {
    goto LABEL_580;
  }

  IsHDR = re::CoreVideoUtils::pixelBufferIsHDR(texture[0], v124);
  LODWORD(v579) = v39;
  if (IsHDR)
  {
    *(a9 + 1776) = 1;
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(a9 + 48);
    *(a9 + 1600) = 0;
    ++*(a9 + 1608);
    if (a3[1213])
    {
      re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(v41, *a2);
      re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::resize(&v591, *v41);
      if (*a2)
      {
        re::VideoHistogram::create();
      }
    }

    if (*a10 == 1)
    {
      *v647 = v589;
      time = v590;
      if (re::CMTimeCompareWithThreshold(v647, &time, v128, *&v590.value))
      {
        v129 = *(a10 + 16);
        v587[0] = *a10;
        v587[1] = v129;
        re::DynamicString::DynamicString(v588, (a10 + 32));
        re::dumpHDRFrameToFile(&v633, (a9 + 1600), value, v587, 0, v568, *(a10 + 24));
        if (v588[0])
        {
          if (v588[1])
          {
            (*(*v588[0] + 40))();
          }

          memset(v588, 0, sizeof(v588));
        }
      }
    }

    IsHDR = re::videoPlaybackCreateHDRConfigs(&v633, *(a9 + 1780), a6, a7, value, a3 + 10, (a3 + 11), (a9 + 1600), *(a9 + 2080), (a9 + 48), buf);
    v39 = IsHDR;
    if (!IsHDR)
    {
      goto LABEL_237;
    }

    v130 = *re::videoLogObjects(IsHDR);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
    {
      *v647 = 0;
      _os_log_error_impl(&dword_1E1C61000, v130, OS_LOG_TYPE_ERROR, "Unable to process HDR content.", v647, 2u);
    }

LABEL_149:

    goto LABEL_505;
  }

  if (!v557)
  {
    IsHDR = a9 + 48;
    if ((a9 + 48) != &v633)
    {
      re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy(IsHDR, &v633);
      ++*(a9 + 56);
    }

    goto LABEL_237;
  }

  v560 = i;
  i = texture;
  v131 = v633.isa;
  v556 = value;
  v575 = v41;
  if (!v633.isa)
  {
    if (*(a9 + 2080) > 1uLL)
    {
      goto LABEL_167;
    }

LABEL_217:
    a2 = a9 + 48;
    if ((a9 + 48) != &v633)
    {
      re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a9 + 48), &v633);
      ++*(a9 + 56);
    }

    i = v560;
    if (a3[1213])
    {
      re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::resize(&v602, *a2);
      v181 = *(value + 112) ? *value : 0;
      v182 = v602;
      if (v602)
      {
        p_time = 0;
        v39 = a9 + 64;
        value = v606;
        do
        {
          v183 = *a2;
          if (*a2 <= p_time)
          {
            goto LABEL_572;
          }

          v184 = *(v39 + 8 * p_time);
          if (v184)
          {
            v185 = CVPixelBufferGetIOSurface(v184);
            CFRetain(v185);
            v182 = v602;
          }

          else
          {
            v185 = 0;
          }

          *v647 = v185;
          if (v182 <= p_time)
          {
            goto LABEL_573;
          }

          *(value - 16) = v185;
          v186 = re::VideoHistogramManager::selectDummySurface((a3 + 910), v185, v181);
          v188 = v602;
          if (v602 <= p_time)
          {
            goto LABEL_574;
          }

          re::VideoObject<re::VideoColorTransformBase>::setRef(value - 8, (value - 8), v186);
          v182 = v602;
          if (v602 <= p_time)
          {
            goto LABEL_575;
          }

          *value = 1;
          value += 24;
          ++p_time;
        }

        while (p_time < v182);
      }
    }

    goto LABEL_233;
  }

  p_time = 0;
  v132 = (a9 + 1808);
  v130 = texture;
  do
  {
    v133 = *v40;
    if (*v40 <= p_time)
    {
      goto LABEL_527;
    }

    if (*v132)
    {
      re::VideoObjectBase<re::VideoColorTransformBase,__CFArray const*>::release(v132);
      v131 = v633.isa;
    }

    *v132 = 0;
    if (v131 <= p_time)
    {
LABEL_528:
      re::internal::assertLog(6, v126, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v131);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v389, v480);
      __break(1u);
      re::internal::assertLog(6, v358, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v359);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v390, v481);
      __break(1u);
LABEL_529:
      re::internal::assertLog(6, v126, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v134);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v391, v482);
      __break(1u);
LABEL_530:
      re::internal::assertLog(6, v225, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v233.isa);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v392, v483);
      __break(1u);
      goto LABEL_531;
    }

    v134 = *v40;
    if (*v40 <= p_time)
    {
      goto LABEL_529;
    }

    IsHDR = re::VideoColorManager::computeTransform((a3 + 588), &v130->isa, *value, v132);
    ++p_time;
    v131 = v633.isa;
    ++v130;
    ++v132;
  }

  while (p_time < v633.isa);
  if (*(a9 + 2080) <= 1uLL)
  {
    goto LABEL_217;
  }

  if (!v633.isa)
  {
LABEL_167:
    p_time = 0;
    v137 = 0;
    goto LABEL_168;
  }

  p_time = 0;
  v135 = 0;
  v136 = texture;
  do
  {
    p_time |= re::VideoPixelBufferBase::protectionOptions(v136);
    ++v135;
    v137 = v633.isa;
    ++v136;
  }

  while (v135 < v633.isa);
LABEL_168:
  locationa = p_time;
  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::resize(a9 + 48, v137);
  re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::resize(&v602, v633.isa);
  v139 = v633.isa;
  if (v633.isa)
  {
    v140 = 0;
    v75 = 8;
    while (1)
    {
      v141 = *(i + v140);
      if (v141)
      {
        v142 = CVPixelBufferGetWidth(v141);
        v139 = v633.isa;
      }

      else
      {
        v142 = 0;
      }

      a2 = v75 - 8;
      if (v139 <= v75 - 8)
      {
        break;
      }

      value = *(a9 + 2080);
      v143 = *(i + v140);
      if (v143)
      {
        p_time = CVPixelBufferGetHeight(v143);
        v144 = *(a9 + 2080);
        v139 = v633.isa;
      }

      else
      {
        p_time = 0;
        v144 = *(a9 + 2080);
      }

      if (v139 <= a2)
      {
        goto LABEL_538;
      }

      v39 = i;
      v145 = *(i + v140);
      if (v145)
      {
        i = CVPixelBufferGetPixelFormatType(v145);
        v139 = v633.isa;
      }

      else
      {
        i = 0;
      }

      if (v139 <= a2)
      {
        goto LABEL_539;
      }

      p_time *= v144;
      v146 = re::VideoPixelBufferBase::colorTags((v39 + v140));
      v147 = v146;
      v148 = re::VideoDefaults::compressionAllowed(v146);
      re::VideoSimplePixelBufferAllocator::createPixelBuffer(v647, (a3 + 11), value * v142, p_time, i, v147, BYTE1(v147), BYTE2(v147), 0, 0x400u, 0x10u, v148, locationa);
      v150 = *(a9 + 48);
      if (v150 <= a2)
      {
        goto LABEL_540;
      }

      *(a9 + 8 * v75) = *v647;
      v151 = v633.isa;
      if (v633.isa <= a2)
      {
        goto LABEL_541;
      }

      i = v39;
      v153 = re::VideoPixelBufferBase::cleanRect((v39 + v140));
      v157 = v633.isa;
      if (v633.isa <= a2)
      {
        goto LABEL_542;
      }

      v158 = v153;
      v159 = v154;
      v160 = v155;
      v161 = v156;
      v162 = *(v39 + v140);
      if (v162)
      {
        CVImageBufferGetDisplaySize(v162);
        v157 = v633.isa;
      }

      if (v157 <= a2)
      {
        goto LABEL_543;
      }

      v163 = *(v39 + v140);
      if (v163)
      {
        CVImageBufferGetDisplaySize(v163);
      }

      v164 = *(a9 + 48);
      if (v164 <= a2)
      {
        goto LABEL_544;
      }

      v165 = a9 + v140;
      re::VideoPixelBufferBase::setCleanRect((a9 + v140 + 64), v158 * *(a9 + 2080), v159 * *(a9 + 2080), v160 * *(a9 + 2080), v161 * *(a9 + 2080));
      v167 = *(a9 + 48);
      if (v167 <= a2)
      {
        goto LABEL_545;
      }

      if (*(a9 + 8 * v75))
      {
        CVImageBufferSetDisplayDimensions();
        v167 = *(a9 + 48);
      }

      if (v167 <= a2)
      {
        goto LABEL_546;
      }

      v169 = re::VideoPixelBufferBase::horizontalDisparityAdjustment((v165 + 64));
      if (v169 > 0.0)
      {
        v170 = *(a9 + 48);
        if (v170 <= a2)
        {
          goto LABEL_578;
        }

        re::VideoPixelBufferBase::setHorizontalDisparityAdjustment((v165 + 64), v169);
      }

      v171 = v633.isa;
      if (v633.isa <= a2)
      {
        goto LABEL_547;
      }

      re::VideoPixelBufferBase::rectangularMask(v647, (v39 + v140), v75 - 8);
      if (v647[24] == 1)
      {
        v172 = *(a9 + 48);
        if (v172 <= a2)
        {
          goto LABEL_579;
        }

        re::VideoPixelBufferBase::setRectangularMask((v165 + 64), COERCE_DOUBLE(vmul_n_f32(*&v647[8], *(a9 + 2080))), COERCE_DOUBLE(vmul_n_f32(*&v647[16], *(a9 + 2080))), COERCE_DOUBLE(vmul_n_f32(*v647, *(a9 + 2080))));
      }

      v139 = v633.isa;
      v173 = v75 - 7;
      ++v75;
      v140 += 8;
      if (v173 >= v633.isa)
      {
        goto LABEL_203;
      }
    }

LABEL_537:
    re::internal::assertLog(6, v138, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v139);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v398, v489);
    __break(1u);
LABEL_538:
    re::internal::assertLog(6, v138, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v139);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v399, v490);
    __break(1u);
LABEL_539:
    re::internal::assertLog(6, v138, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v139);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v400, v491);
    __break(1u);
LABEL_540:
    re::internal::assertLog(6, v149, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v150);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v401, v492);
    __break(1u);
LABEL_541:
    re::internal::assertLog(6, v149, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v151);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v402, v493);
    __break(1u);
LABEL_542:
    re::internal::assertLog(6, v152, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v157);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v403, v494);
    __break(1u);
LABEL_543:
    re::internal::assertLog(6, v152, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v157);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v404, v495);
    __break(1u);
LABEL_544:
    re::internal::assertLog(6, v152, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v164);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v405, v496);
    __break(1u);
LABEL_545:
    re::internal::assertLog(6, v166, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v167);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v406, v497);
    __break(1u);
LABEL_546:
    re::internal::assertLog(6, v166, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v167);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v407, v498);
    __break(1u);
LABEL_547:
    re::internal::assertLog(6, v168, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v171);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v408, v499);
    __break(1u);
LABEL_548:
    re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v76);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v409, v500);
    __break(1u);
    goto LABEL_549;
  }

LABEL_203:
  v174 = v602;
  i = v560;
  if (v602)
  {
    a2 = 0;
    p_time = a9 + 64;
    v75 = v606;
    v39 = &v633;
    while (1)
    {
      v175 = v633.isa;
      if (v633.isa <= a2)
      {
        goto LABEL_533;
      }

      v176 = texture[a2];
      if (v176)
      {
        v177 = CVPixelBufferGetIOSurface(v176);
        CFRetain(v177);
        v174 = v602;
      }

      else
      {
        v177 = 0;
      }

      *v647 = v177;
      if (v174 <= a2)
      {
        break;
      }

      *(v75 - 16) = v177;
      v178 = *(a9 + 48);
      if (v178 <= a2)
      {
        goto LABEL_535;
      }

      IsHDR = *(p_time + 8 * a2);
      if (IsHDR)
      {
        v179 = CVPixelBufferGetIOSurface(IsHDR);
        IsHDR = CFRetain(v179);
        v174 = v602;
      }

      else
      {
        v179 = 0;
      }

      *v647 = v179;
      if (v174 <= a2)
      {
        goto LABEL_536;
      }

      *(v75 - 8) = v179;
      *v75 = 0;
      v75 += 24;
      if (++a2 >= v174)
      {
        goto LABEL_233;
      }
    }

LABEL_534:
    re::internal::assertLog(6, v138, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v174);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v395, v486);
    __break(1u);
LABEL_535:
    re::internal::assertLog(6, v138, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v178);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v396, v487);
    __break(1u);
LABEL_536:
    re::internal::assertLog(6, v138, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v174);
    _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v397, v488);
    __break(1u);
    goto LABEL_537;
  }

LABEL_233:
  value = v556;
  if (a3[1213])
  {
    if (v602)
    {
      re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize(v575, v602);
      re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::resize(&v591, v602);
      if (v602)
      {
        re::VideoSurfaceBase::colorTags(&v605);
        re::VideoHistogram::create();
      }
    }
  }

LABEL_237:
  if (*a10 == 1)
  {
    *v647 = v589;
    time = v590;
    IsHDR = re::CMTimeCompareWithThreshold(v647, &time, v127, *&v590.value);
    if (IsHDR)
    {
      v189 = *(a10 + 16);
      v585[0] = *a10;
      v585[1] = v189;
      re::DynamicString::DynamicString(v586, (a10 + 32));
      re::dumpHDRFrameToFile((a9 + 48), (a9 + 1600), value, v585, 1, v568, *(a10 + 24));
      IsHDR = v586[0];
      if (v586[0])
      {
        if (v586[1])
        {
          IsHDR = (*(*v586[0] + 40))();
        }

        memset(v586, 0, sizeof(v586));
      }

      *(a10 + 8) = *(a10 + 16) + *(a10 + 8);
    }
  }

  if ((v563 & i) != 0)
  {
    v190 = re::VideoDefaults::aseAllowed(IsHDR);
    if (v190)
    {
      if (v191)
      {
        if (*(a9 + 2080) >= 2uLL)
        {
          a2 = (a3 + 6);
          i = a3[6];
          v193 = (a9 + 48);
          v192 = *(a9 + 48);
          if (i != v192)
          {
            re::DynamicInlineArray<re::SharedPtr<re::VideoASEFrameMeasurement>,2ul>::resize((a3 + 6), v192);
            i = *v193;
          }

          if (i > v614)
          {
            if (i < 3)
            {
              bzero(v616 + 40 * v614, 40 * (i - v614));
              goto LABEL_256;
            }

LABEL_603:
            re::internal::assertLog(4, v192, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "resize", 571);
            result = _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
            __break(1u);
            return result;
          }

          if (i < v614)
          {
LABEL_256:
            v614 = i;
            ++v615;
          }

          if (i)
          {
            p_time = v616;
            v195 = 8;
            while (1)
            {
              value = v195 - 8;
              v196 = *a2;
              if (*a2 <= (v195 - 8))
              {
                goto LABEL_583;
              }

              if (!a3[v195])
              {
                re::VideoASEFrameMeasurement::create(v647, v191);
                v197 = *a2;
                if (*a2 <= value)
                {
                  goto LABEL_590;
                }

                v198 = a3[v195];
                a3[v195] = *v647;
                if (v198)
                {
                }

                i = *v193;
              }

              if (i <= value)
              {
                goto LABEL_584;
              }

              v199 = *(a9 + 1712);
              v200 = *(a9 + 1720);
              v201 = *(a9 + 8 * v195);
              if (v201)
              {
                v202 = CVPixelBufferGetWidth(v201);
                i = *v193;
              }

              else
              {
                v202 = 0;
              }

              if (i <= value)
              {
                goto LABEL_585;
              }

              v203 = *(a9 + 8 * v195);
              if (v203)
              {
                i = CVPixelBufferGetHeight(v203);
              }

              else
              {
                i = 0;
              }

              v204 = *a2;
              if (*a2 <= value)
              {
                goto LABEL_586;
              }

              v205 = a3[v195];
              v584 = v205;
              if (v205)
              {
                v206 = (v205 + 8);
              }

              v207 = v614;
              if (v614 <= value)
              {
                goto LABEL_587;
              }

              v208 = re::VideoASEProcessor::createConfig(a3, v199, v200, v202, i, &v584, p_time);
              v39 = v208;
              if (v584)
              {

                v584 = 0;
              }

              if (v39)
              {
                break;
              }

              v191 = re::VideoDefaults::logEnabled(v208);
              if (v191)
              {
                v210 = *re::videoLogObjects(v191);
                if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = *(a9 + 48);
                  v211 = *(a9 + 1712);
                  v212 = *(a9 + 1720);
                  v213 = *re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[]((a9 + 48), v195 - 8);
                  if (v213)
                  {
                    v570 = CVPixelBufferGetWidth(v213);
                  }

                  else
                  {
                    v570 = 0;
                  }

                  v214 = *re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::operator[]((a9 + 48), v195 - 8);
                  if (v214)
                  {
                    v214 = CVPixelBufferGetHeight(v214);
                  }

                  *v647 = 134219264;
                  *&v647[4] = v195 - 7;
                  *&v647[12] = 2048;
                  *&v647[14] = v39;
                  *&v647[22] = 2048;
                  *&v647[24] = v211;
                  *&v647[32] = 2048;
                  *&v647[34] = v212;
                  *&v647[42] = 2048;
                  *&v647[44] = v570;
                  *&v647[52] = 2048;
                  *&v647[54] = v214;
                  _os_log_impl(&dword_1E1C61000, v210, OS_LOG_TYPE_DEFAULT, "Upscaling %zu of %zu from %zux%zu to %zux%zu", v647, 0x3Eu);
                }
              }

              i = *v193;
              v209 = v195 - 7;
              ++v195;
              p_time += 40;
              if (v209 >= *v193)
              {
                goto LABEL_291;
              }
            }

            v130 = *re::videoLogObjects(v208);
            if (!os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
LABEL_509:
              v39 = 1;
              goto LABEL_149;
            }

LABEL_531:
            *v647 = 0;
            _os_log_error_impl(&dword_1E1C61000, v130, OS_LOG_TYPE_ERROR, "Unable to create ASE configuration.", v647, 2u);
            goto LABEL_509;
          }
        }
      }
    }
  }

LABEL_291:
  a2 = a9 + 48;
  v215 = *(a9 + 48);
  *(a9 + 1696) = 0u;
  if (v215)
  {
    v216 = 0;
    v130 = 0;
    p_time = a9 + 1696;
    v217 = (a9 + 64);
    do
    {
      v218 = *&v217[v130];
      if (v218)
      {
        v219 = CVPixelBufferGetWidth(v218);
        v220 = *p_time;
        if (*p_time <= v219)
        {
          v220 = v219;
        }

        *p_time = v220;
        v215 = *a2;
        if (*a2 <= v130)
        {
          re::internal::assertLog(6, v215, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v130, v215);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v375, v466);
          __break(1u);
LABEL_518:
          re::internal::assertLog(6, v228, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v230);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v376, v467);
          __break(1u);
LABEL_519:
          re::internal::assertLog(6, v228, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v230);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v377, v468);
          __break(1u);
LABEL_520:
          re::internal::assertLog(6, v235, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v240);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v378, v469);
          __break(1u);
LABEL_521:
          re::internal::assertLog(6, v241, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v243.isa);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v379, v470);
          __break(1u);
LABEL_522:
          re::internal::assertLog(6, v241, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v244);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v380, v471);
          __break(1u);
LABEL_523:
          re::internal::assertLog(6, v225, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v39, v245);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v381, v472);
          __break(1u);
          re::internal::assertLog(6, v352, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v217, v353);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v382, v473);
          __break(1u);
LABEL_524:
          re::internal::assertLog(6, v323, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v324);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v383, v474);
          __break(1u);
LABEL_525:
          re::internal::assertLog(6, v323, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v325);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v384, v475);
          __break(1u);
LABEL_526:
          re::internal::assertLog(6, v326, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v327);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v385, v476);
          __break(1u);
          re::internal::assertLog(6, v354, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v355);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v386, v477);
          __break(1u);
LABEL_527:
          re::internal::assertLog(6, v126, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v133);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v387, v478);
          __break(1u);
          re::internal::assertLog(6, v356, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v357);
          _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v388, v479);
          __break(1u);
          goto LABEL_528;
        }

        v221 = *&v217[v130];
        if (v221)
        {
          v221 = CVPixelBufferGetHeight(v221);
          v215 = *a2;
        }

        v216 = *(a9 + 1704);
        if (v216 <= v221)
        {
          v216 = v221;
        }

        *(a9 + 1704) = v216;
      }

      v130 = (v130 + 1);
    }

    while (v130 < v215);
    v222 = *p_time;
    v223 = v216;
  }

  else
  {
    v223 = 0.0;
    v222 = 0.0;
  }

  *(a9 + 1744) = 0u;
  *(a9 + 1728) = 0u;
  *(a9 + 1760) = v222;
  v130 = (a9 + 2048);
  *(a9 + 1768) = v223;
  re::DynamicInlineArray<float,2ul>::resize(a9 + 2048, v215);
  p_time = a9 + 1872;
  v224 = re::DynamicInlineArray<std::optional<re::VideoRectangularMask>,2ul>::resize(a9 + 1872, *(a9 + 48));
  v226 = *a2;
  if (*a2)
  {
    v217 = (a9 + 1728);
    value = 515;
    v227 = 1888;
    i = 64;
    do
    {
      v39 = value - 515;
      v224 = *(a9 + i);
      if (v224)
      {
        v229 = CVImageBufferGetDisplaySize(v224).width;
        if (*v217 >= v229)
        {
          v229 = *v217;
        }

        *v217 = v229;
        v230 = *a2;
        if (*a2 <= v39)
        {
          goto LABEL_518;
        }

        v231 = *(a9 + i);
        if (v231)
        {
          v232 = CVImageBufferGetDisplaySize(v231).height;
          v230 = *a2;
        }

        else
        {
          v232 = 0.0;
        }

        v234 = *(a9 + 1736);
        if (v234 < v232)
        {
          v234 = v232;
        }

        *(a9 + 1736) = v234;
        if (v230 <= v39)
        {
          goto LABEL_519;
        }

        v236.f64[0] = re::VideoPixelBufferBase::cleanRect((a9 + i));
        v236.f64[1] = v237;
        *(a9 + 1744) = vbslq_s8(vcgtq_f64(v236, *(a9 + 1744)), v236, *(a9 + 1744));
        v239.f64[1] = v238;
        *(a9 + 1760) = vbslq_s8(vcgtq_f64(*(a9 + 1760), v239), v239, *(a9 + 1760));
        v240 = *(a9 + 48);
        if (v240 <= v39)
        {
          goto LABEL_520;
        }

        v242 = re::VideoPixelBufferBase::horizontalDisparityAdjustment((a9 + i));
        v243.isa = v130->isa;
        if (v130->isa <= v39)
        {
          goto LABEL_521;
        }

        *(a9 + 4 * value) = v242;
        v244 = *(a9 + 48);
        if (v244 <= v39)
        {
          goto LABEL_522;
        }

        re::VideoPixelBufferBase::normalizedRectangularMask(v647, (a9 + i), value - 515);
        v245 = *p_time;
        if (*p_time <= v39)
        {
          goto LABEL_523;
        }

        v246 = (a9 + v227);
        *v246 = *v647;
        *(v246 + 9) = *&v647[9];
        v226 = *(a9 + 48);
      }

      else
      {
        v233.isa = v130->isa;
        if (v130->isa <= v39)
        {
          goto LABEL_530;
        }

        *(a9 + 4 * value) = 0;
      }

      v247 = value - 514;
      ++value;
      v227 += 32;
      i += 8;
    }

    while (v247 < v226);
  }

  *(a9 + 2072) = 0;
  v248 = re::VideoDefaults::pseAllowed(v224);
  if ((v248 & 1) == 0)
  {
    goto LABEL_337;
  }

  v250 = re::VideoPSEProcessor::NeedsProcessing(v248);
  if (!re::VideoDefaults::overridePseEnabled(v250))
  {
    goto LABEL_337;
  }

  if (!a3[945])
  {
    operator new();
  }

  *v647 = 0;
  *&v647[8] = 0;
  *&time.value = *a9;
  time.epoch = *(a9 + 16);
  Seconds = CMTimeGetSeconds(&time);
  PSEConfigs = re::videoPlaybackCreatePSEConfigs(a9 + 48, a7, (a3 + 945), (a3 + 929), v647, &v594, Seconds);
  if (PSEConfigs)
  {
    if (PSEConfigs == 2)
    {
      goto LABEL_596;
    }

    a4 = *re::videoLogObjects(PSEConfigs);
    if (os_log_type_enabled(a4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_516;
    }

    goto LABEL_335;
  }

  if (a2 != v647)
  {
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::copy((a9 + 48), v647);
    ++*(a9 + 56);
  }

  *(a9 + 2072) = 1;
  while (2)
  {
    re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(v647);
LABEL_337:
    if (!*a2)
    {
      goto LABEL_589;
    }

    v253 = (v18 + 64);
    v254 = re::CoreVideoUtils::pixelBufferColorGamut(*(v18 + 8), v18 + 1688);
    if ((v254 & 1) == 0)
    {
      v255 = *re::videoLogObjects(v254);
      if (os_log_type_enabled(v255, OS_LOG_TYPE_DEFAULT))
      {
        *v647 = 0;
        _os_log_impl(&dword_1E1C61000, v255, OS_LOG_TYPE_DEFAULT, "Could not determine color gamut of presentation group pixel buffer. Fallback to Rec709", v647, 2u);
      }
    }

    *(v18 + 210) = 0;
    if (!*(v18 + 6))
    {
      goto LABEL_376;
    }

    v256 = 0;
    v257 = (v18 + 64);
    do
    {
      *(v18 + 210) |= re::VideoPixelBufferBase::protectionOptions(v257);
      ++v256;
      v258 = *(v18 + 6);
      ++v257;
    }

    while (v256 < v258);
    if (!v258)
    {
      goto LABEL_376;
    }

    v259 = 0;
    v260 = MEMORY[0x1E695F060];
    value = MEMORY[0x1E695F058];
    do
    {
      v647[2] = 2;
      *v647 = 514;
      *&v647[8] = *v260;
      v261 = *(value + 16);
      *&v647[24] = *value;
      *&v647[40] = v261;
      *&v647[56] = 0;
      LOBYTE(v648) = 0;
      LOBYTE(cf) = 0;
      v651 = 0u;
      v652 = 0u;
      TexturesFromPixelBuffer = re::VideoTextureCache::createTexturesFromPixelBuffer((a3 + 35), v253[v259], v647, 0, 0);
      v263 = TexturesFromPixelBuffer;
      if (TexturesFromPixelBuffer)
      {
        v264 = *re::videoLogObjects(TexturesFromPixelBuffer);
        if (os_log_type_enabled(v264, OS_LOG_TYPE_ERROR))
        {
          LOWORD(time.value) = 0;
          _os_log_error_impl(&dword_1E1C61000, v264, OS_LOG_TYPE_ERROR, "Unable to create texture for presentation group pixel buffer.", &time, 2u);
        }

        LODWORD(v579) = 1;
      }

      else
      {
        re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::add((v18 + 80), v647);
      }

      for (i = 120; i != 96; i -= 8)
      {
        if (*&v647[i])
        {
          re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v647[i]);
        }

        *&v647[i] = 0;
      }

      if (v651)
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v651);
      }

      if (v263)
      {
        goto LABEL_504;
      }

      ++v259;
    }

    while (v259 < *a2);
    if (!*a2 || (a3[1213] & 2) == 0)
    {
LABEL_376:
      *(v18 + 223) = 0;
      v18[1777] = 0;
      re::DynamicInlineArray<re::VideoObject<re::VideoPixelFormatDescriptionBase>,2ul>::clear((v18 + 1648));
      if (*a2)
      {
        v270 = 0;
        v271 = *MEMORY[0x1E6966290];
        while (1)
        {
          v272 = v253[v270];
          v273 = v272 ? CVPixelBufferGetPixelFormatType(v272) : 0;
          *v647 = 0;
          re::VideoPixelFormatDescriptionManager::descriptionForPixelFormat((a3 + 582), v273, v647);
          v275 = (v18[1777] & 1) != 0 ? 1 : re::VideoPixelFormatDescriptionBase::BOOLeanValue(v647, v271, 0);
          v18[1777] = v275;
          v276 = *(v18 + 206);
          if (v276 >= 2)
          {
            break;
          }

          *&v18[8 * v276 + 1664] = *v647;
          *(v18 + 206) = v276 + 1;
          ++*(v18 + 414);
          ++v270;
          v277 = *(v18 + 6);
          if (v270 >= v277)
          {
            goto LABEL_388;
          }
        }

LABEL_601:
        re::internal::assertLog(4, v274, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        _os_crash("assertion failure: (false) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.");
        __break(1u);
      }

      v277 = 0;
LABEL_388:
      v278 = (v18 + 1824);
      re::DynamicInlineArray<re::VideoColorTags,2ul>::resize(v18 + 228, v277);
      if (*a2)
      {
        a4 = 0;
        p_time = (v18 + 1836);
        while (1)
        {
          v279 = re::VideoPixelBufferBase::colorTags(v253);
          v281 = *v278;
          if (*v278 <= a4)
          {
            break;
          }

          *p_time = v279;
          *(p_time + 2) = BYTE2(v279);
          a4 = (a4 + 1);
          p_time += 3;
          ++v253;
          if (a4 >= *a2)
          {
            goto LABEL_392;
          }
        }

LABEL_515:
        re::internal::assertLog(6, v280, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a4, v281);
        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v374, v465);
        __break(1u);
LABEL_516:
        LOWORD(time.value) = 0;
        _os_log_error_impl(&dword_1E1C61000, a4, OS_LOG_TYPE_ERROR, "Unable to PSE process content.", &time, 2u);
LABEL_335:

        continue;
      }

LABEL_392:
      v564 = (v18 + 896);
      re::DynamicInlineArray<re::VideoMetalTextures,2ul>::clear((v18 + 896));
      *(v18 + 231) = 0;
      ++*(v18 + 464);
      v282 = v18[1778] - 1;
      v283 = (v282 & 0xFD) == 0;
      v561 = (v18 + 1824);
      if ((re::VideoDefaults::stereoMipmapEnabled(v284) & 1) == 0)
      {
        v283 = (v282 & 0xFD) == 0 && *(v18 + 10) < 2uLL;
      }

      v286 = v18[2072];
      v287 = (*(*a5[39] + 136))(a5[39]);
      v288 = v287;
      v289 = re::VideoDefaults::mipmapEnabled(v287);
      if (v288)
      {
        v290 = 0;
      }

      else
      {
        v290 = v289;
      }

      if ((v290 & (v286 ^ 1) & v283) == 1 && re::mtl::Device::isPhysicalHardware(&v632))
      {
        if (!*(v18 + 10))
        {
          goto LABEL_420;
        }

        v291 = 0;
        v292 = v18 + 216;
        do
        {
          v293 = *(v292 - 2);
          if (v293)
          {
            v294 = 2;
          }

          else
          {
            v294 = 1;
          }

          if (*(v292 - 1))
          {
            v295 = v294;
          }

          else
          {
            v295 = v293 != 0;
          }

          if (*v292)
          {
            ++v295;
          }

          if (v295 != 1)
          {
            goto LABEL_465;
          }

          *v647 = 0;
          re::VideoObject<re::VideoPixelBufferBase>::setRef(v647, v647, v293);
          v296 = re::VideoPixelBufferTextureBase::asMetalTexture(v647);
          v297 = v296;

          if (*v647)
          {
            re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v647);
          }

          if (!v296)
          {
            goto LABEL_465;
          }

          v298 = [v296 pixelFormat];

          ++v291;
          v292 += 16;
        }

        while (v291 < *(v18 + 10));
        if (re::CoreVideoUtils::isConvertibleToLinearRGBColorModel(v298))
        {
LABEL_420:
          v299 = a3;
          if (!a3[33])
          {
            v300 = *&a6[26];
            v583 = v300;
            if (!a3[33])
            {
              re::ObjCObject::operator=(a3 + 33, &v583);
              v300 = v583;
            }

            v299 = a3;
          }

          a2 = v299[1212];
          v301 = re::VideoDefaults::mipmapPixelsPerSecondMax(497664000);
          v302 = vcvtpd_u64_f64(v301 * 0.1);
          v303 = re::VideoDefaults::logEnabled(v301);
          if (v303)
          {
            v304 = a3[1204];
            v305 = a3[1203];
            v306 = *re::videoLogObjects(v303);
            if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
            {
              *v647 = 134218752;
              *&v647[4] = a2;
              *&v647[12] = 2048;
              *&v647[14] = v301;
              *&v647[22] = 2048;
              *&v647[24] = v302;
              *&v647[32] = 2048;
              *&v647[34] = v304 - v305;
              _os_log_impl(&dword_1E1C61000, v306, OS_LOG_TYPE_DEFAULT, "[mipgen] pixelsPerSecond: %lld / %lld (+ %lld) (%zu samples)", v647, 0x2Au);
            }
          }

          if (a2 <= v301 + v302)
          {
            re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::resize(&v618, *(v18 + 10));
            re::DynamicInlineArray<re::VideoMetalTextures,2ul>::resize(v564, *(v18 + 10));
            v573 = (v18 + 1848);
            re::DynamicInlineArray<re::VideoColorTags,2ul>::resize(v18 + 231, *(v18 + 10));
            if (*(v18 + 10))
            {
              p_time = 0;
              v559 = v18 + 96;
              v576 = v18 + 200;
              v579 = v629;
              locationb = (v18 + 1016);
              v75 = &selRef_isLimitedRenderAsset;
              while (1)
              {
                v308 = *v561;
                if (*v561 <= p_time)
                {
                  break;
                }

                v309 = *v573;
                if (*v573 <= p_time)
                {
                  goto LABEL_592;
                }

                v310 = &v559[128 * p_time];
                v311 = &v18[3 * p_time + 1836];
                v312 = &v18[3 * p_time + 1860];
                v312->i16[0] = *v311;
                a6 = v312;
                v312->i8[2] = *(v311 + 2);
                v313 = v310[13];
                v314 = v313 == 0;
                v315 = v313 != 0;
                v316 = 1;
                if (!v314)
                {
                  v316 = 2;
                }

                if (v310[14])
                {
                  v315 = v316;
                }

                v571 = &v559[128 * p_time];
                if (v315 || v310[15] != 0)
                {
                  v130 = 0;
                  v317 = v579;
                  do
                  {
                    *v647 = 0;
                    re::VideoObject<re::VideoPixelBufferBase>::setRef(v647, v647, *&v576[8 * v130]);
                    v39 = re::VideoPixelBufferTextureBase::asMetalTexture(v647);
                    v318 = v39;

                    i = [v39 width];
                    value = [v39 height];
                    a2 = &selRef_isLimitedRenderAsset;
                    v319 = re::CoreVideoUtils::convertToLinearRGBColorModel([v39 pixelFormat]);
                    *(a3 + 276) = 0;
                    time.value = 0;
                    v320 = [v39 protectionOptions];
                    re::VideoTextureAllocator::createTextureInternal((a3 + 27), i, value, v319, 2, 3, 1, 1, &v582, v321, v320);
                    NS::SharedPtr<MTL::Texture>::operator=(&time, &v582);
                    if (v582)
                    {
                    }

                    HasHardwareTransferFunction = re::CoreVideoUtils::metalPixelFormatHasHardwareTransferFunction([v39 &selRef_resourceWithResourcePath_]);
                    v324 = *v573;
                    if (HasHardwareTransferFunction)
                    {
                      if (v324 <= p_time)
                      {
                        re::internal::assertLog(6, v323, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v324);
                        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v393, v484);
                        __break(1u);
LABEL_533:
                        re::internal::assertLog(6, v138, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v175);
                        _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v394, v485);
                        __break(1u);
                        goto LABEL_534;
                      }

                      a6->i8[1] = 8;
                    }

                    if (v324 <= p_time)
                    {
                      goto LABEL_524;
                    }

                    a6->i8[2] = 0;
                    v325 = v618;
                    if (v618 <= p_time)
                    {
                      goto LABEL_525;
                    }

                    i = v39;
                    objc_storeStrong(v317 - 16, v39);

                    v327 = v618;
                    if (v618 <= p_time)
                    {
                      goto LABEL_526;
                    }

                    value = time.value;
                    v328 = time.value;
                    objc_storeStrong(v317, value);

                    if (time.value)
                    {
                    }

                    if (i)
                    {
                    }

                    if (*v647)
                    {
                      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(v647);
                    }

                    v130 = (v130 + 1);
                    v329 = v571[13];
                    v314 = v329 == 0;
                    v330 = v329 != 0;
                    v331 = 1;
                    if (!v314)
                    {
                      v331 = 2;
                    }

                    if (v571[14])
                    {
                      v330 = v331;
                    }

                    if (v571[15])
                    {
                      ++v330;
                    }

                    ++v317;
                  }

                  while (v130 < v330);
                }

                v332 = v618;
                if (v618 <= p_time)
                {
                  goto LABEL_593;
                }

                v333 = *v564;
                if (*v564 <= p_time)
                {
                  goto LABEL_594;
                }

                v334 = &v619[256 * p_time];
                v335 = *(v334 + 11);
                v336 = &v18[128 * p_time + 912];
                *(v336 + 32) = *(v334 + 10);
                *(v336 + 48) = v335;
                *(v336 + 64) = *(v334 + 12);
                *(v336 + 73) = *(v334 + 201);
                v337 = *(v334 + 9);
                *v336 = *(v334 + 8);
                *(v336 + 16) = v337;
                re::VideoObject<re::VideoPixelBufferBase>::setRef(v336 + 96, (v336 + 96), *(v334 + 28));
                v338 = 0;
                v339 = locationb;
                do
                {
                  objc_storeStrong(v339++, v579[v338++]);
                }

                while (v338 != 3);
                ++p_time;
                v576 += 128;
                v579 += 32;
                locationb += 16;
                if (p_time >= *(v18 + 10))
                {
                  goto LABEL_465;
                }
              }

LABEL_591:
              re::internal::assertLog(6, v307, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v308);
              _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v457, v548);
              __break(1u);
LABEL_592:
              re::internal::assertLog(6, v307, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v309);
              _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v458, v549);
              __break(1u);
LABEL_593:
              re::internal::assertLog(6, v307, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v332);
              _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v459, v550);
              __break(1u);
LABEL_594:
              re::internal::assertLog(6, v307, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v333);
              _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v460, v551);
              __break(1u);
LABEL_595:
              re::internal::assertLog(6, v70, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
              PSEConfigs = _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v461, v552);
              __break(1u);
LABEL_596:
              v370 = re::VideoDefaults::logEnabled(PSEConfigs);
              if (!v370)
              {
                continue;
              }

              a4 = *re::videoLogObjects(v370);
              if (os_log_type_enabled(a4, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(time.value) = 0;
                _os_log_impl(&dword_1E1C61000, a4, OS_LOG_TYPE_DEFAULT, "Unable to PSE process content because surface is not supported.", &time, 2u);
              }

              goto LABEL_335;
            }
          }
        }
      }

LABEL_465:
      v340 = v602;
      if (v602 <= *buf)
      {
        v340 = *buf;
      }

      if (v340 <= v594)
      {
        v340 = v594;
      }

      if (v340 <= v618)
      {
        v340 = v618;
      }

      if (v340 <= v614)
      {
        v341 = v614;
      }

      else
      {
        v341 = v340;
      }

      if (!v341 || (a2 = (v18 + 2000), re::DynamicInlineArray<std::shared_ptr<re::VideoHistogram>,2ul>::resize((v18 + 2000), v341), !*(v18 + 250)))
      {
        v39 = 0;
        goto LABEL_505;
      }

      v75 = 0;
      a3 = &v604;
      p_time = &time;
      a6 = &v647[8];
      v579 = v616;
      v18 = v624;
      value = 1;
      v647[0] = 0;
      v647[48] = 0;
      v654[0] = 0;
      v655[0] = 0;
      v656[0] = 0;
      v657[0] = 0;
      if (v602)
      {
        LOBYTE(time.value) = 1;
        *&time.timescale = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&time.timescale, &time.timescale, v604);
        time.epoch = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&time.epoch, &time.epoch, v605);
        LOBYTE(v637) = v606[0];
        re::Optional<re::VideoTransformSurfaceConfig>::operator=(v654, &time);
        v342 = re::Optional<re::VideoTransformSurfaceConfig>::~Optional(&time);
      }

      if (v614)
      {
        if ((v647[0] & 1) == 0)
        {
          v647[0] = 1;
        }

        *&v647[8] = v616[0];
        *&v647[24] = v616[1];
        *&v647[40] = v617;
      }

      if (!*buf)
      {
        goto LABEL_486;
      }

      {
        goto LABEL_486;
      }

      v344 = *buf;
      if (*buf)
      {
        LOBYTE(time.value) = 1;
        time.epoch = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&time.epoch, &time.epoch, v609);
        *&v637 = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&v637, &v637, v610);
        *(&v637 + 1) = 0;
        re::VideoObject<re::VideoColorTransformBase>::setRef(&v637 + 8, &v637 + 1, v611);
        v638 = v612;
        v639[0] = v613[0];
        *(v639 + 9) = *(v613 + 9);
        re::Optional<re::VideoHDRConfig>::operator=(&v647[48], &time);
        re::Optional<re::VideoHDRConfig>::~Optional(&time);
LABEL_486:
        if (v591)
        {
          LOBYTE(time.value) = 1;
          *&time.timescale = v593;
          if (*(&v593 + 1))
          {
            atomic_fetch_add_explicit((*(&v593 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          re::Optional<re::VideoHistogramConfig>::operator=(v657, &time);
          if (LOBYTE(time.value) == 1 && time.epoch)
          {
            std::__shared_weak_count::__release_weak(time.epoch);
          }
        }

        if (v594)
        {
          LOBYTE(time.value) = 1;
          *&time.timescale = v596;
          time.epoch = v597;
          if (v597)
          {
            atomic_fetch_add_explicit((v597 + 16), 1uLL, memory_order_relaxed);
          }

          v637 = v598;
          re::VideoObject<re::VideoColorTransformBase>::setRef(&v637 + 8, &v637 + 1, v599);
          *&v638 = 0;
          re::VideoObject<re::VideoColorTransformBase>::setRef(&v638, &v638, v600);
          *(&v638 + 1) = v601;
          re::Optional<re::VideoPSEConfig>::operator=(v656, &time);
          re::Optional<re::VideoPSEConfig>::~Optional(&time);
        }

        if (v618)
        {
          v638 = v620;
          v639[0] = v621;
          v639[1] = *v622;
          *(&v639[1] + 9) = *&v622[9];
          *&time.timescale = *v619;
          LOBYTE(time.value) = 1;
          v637 = *&v619[16];
          v640[0] = 0;
          re::VideoObject<re::VideoPixelBufferBase>::setRef(v640, v640, v623);
          v345 = v624;
          for (j = 14; j != 17; ++j)
          {
            v347 = *v345++;
            *(&time.value + j) = v347;
          }

          v643 = v626;
          v644 = v627[0];
          v645[0] = v627[1];
          *(v645 + 9) = *(&v627[1] + 9);
          v641 = *&v624[24];
          v642 = v625;
          v646[0] = 0;
          re::VideoObject<re::VideoPixelBufferBase>::setRef(v646, v646, v628);
          v348 = v629;
          for (k = 30; k != 33; ++k)
          {
            v350 = *v348++;
            *(&time.value + k) = v350;
          }

          re::Optional<re::VideoMipGenConfig>::operator=(v655, &time);
          re::Optional<re::VideoMipGenConfig>::~Optional(&time);
        }

        re::VideoProcessor::dispatch(a5 + 34, v647, v577);
      }

LABEL_571:
      re::internal::assertLog(6, v343, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v75, v344);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v432, v523);
      __break(1u);
      re::internal::assertLog(6, v360, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v361);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v433, v524);
      __break(1u);
      re::internal::assertLog(6, v362, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v363);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v434, v525);
      __break(1u);
      re::internal::assertLog(6, v364, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v365);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v435, v526);
      __break(1u);
      re::internal::assertLog(6, v366, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v367);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v436, v527);
      __break(1u);
      re::internal::assertLog(6, v368, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v369);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v437, v528);
      __break(1u);
LABEL_572:
      re::internal::assertLog(6, v180, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v183);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v438, v529);
      __break(1u);
LABEL_573:
      re::internal::assertLog(6, v180, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v182);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v439, v530);
      __break(1u);
LABEL_574:
      re::internal::assertLog(6, v187, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v188);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v440, v531);
      __break(1u);
LABEL_575:
      re::internal::assertLog(6, v180, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, p_time, v182);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v441, v532);
      __break(1u);
LABEL_576:
      re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v99);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v442, v533);
      __break(1u);
LABEL_577:
      re::internal::assertLog(6, v74, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v100);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v443, v534);
      __break(1u);
LABEL_578:
      re::internal::assertLog(6, v168, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v170);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v444, v535);
      __break(1u);
LABEL_579:
      re::internal::assertLog(6, v138, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, a2, v172);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v445, v536);
      __break(1u);
LABEL_580:
      re::internal::assertLog(6, v124, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v446, v537);
      __break(1u);
LABEL_581:
      re::internal::assertLog(6, v106, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, value, v107);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v447, v538);
      __break(1u);
LABEL_582:
      re::internal::assertLog(6, v106, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v108);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v448, v539);
      __break(1u);
LABEL_583:
      re::internal::assertLog(6, v192, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v196);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v449, v540);
      __break(1u);
LABEL_584:
      re::internal::assertLog(6, v192, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, i);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v450, v541);
      __break(1u);
LABEL_585:
      re::internal::assertLog(6, v192, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, i);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v451, v542);
      __break(1u);
LABEL_586:
      re::internal::assertLog(6, v192, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v204);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v452, v543);
      __break(1u);
LABEL_587:
      re::internal::assertLog(6, v192, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v207);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v453, v544);
      __break(1u);
LABEL_588:
      re::internal::assertLog(6, v47, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, 0, 0);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v454, v545);
      __break(1u);
LABEL_589:
      re::internal::assertLog(6, v249, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v455, v546);
      __break(1u);
LABEL_590:
      re::internal::assertLog(6, v192, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, value, v197);
      _os_crash("assertion failure: (index < m_size) Index out of range. index = %zu, size = %zu", v456, v547);
      __break(1u);
      goto LABEL_591;
    }

    break;
  }

  v265 = 0;
  while (1)
  {
    v647[2] = 2;
    *v647 = 514;
    *&v647[8] = *v260;
    v266 = *(value + 16);
    *&v647[24] = *value;
    *&v647[40] = v266;
    *&v647[56] = 0;
    LOBYTE(v648) = 0;
    LOBYTE(cf) = 0;
    v651 = 0u;
    v652 = 0u;
    v267 = re::VideoTextureCache::createTexturesFromPixelBuffer((a3 + 35), v253[v265], v647, 1, 0);
    v268 = v267;
    if (v267)
    {
      v269 = *re::videoLogObjects(v267);
      if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
      {
        LOWORD(time.value) = 0;
        _os_log_error_impl(&dword_1E1C61000, v269, OS_LOG_TYPE_ERROR, "Unable to create legacy texture for presentation group pixel buffer.", &time, 2u);
      }

      LODWORD(v579) = 1;
    }

    else
    {
      re::DynamicInlineArray<re::VideoPixelBufferTextures,2ul>::add((v18 + 352), v647);
    }

    for (i = 120; i != 96; i -= 8)
    {
      if (*&v647[i])
      {
        re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v647[i]);
      }

      *&v647[i] = 0;
    }

    if (v651)
    {
      re::VideoObjectBase<re::VideoPixelBufferTextureBase,__CVBuffer *>::release(&v651);
    }

    if (v268)
    {
      break;
    }

    if (++v265 >= *a2)
    {
      goto LABEL_376;
    }
  }

LABEL_504:
  v39 = v579;
LABEL_505:
  re::DynamicInlineArray<re::VideoMipGenConfig,2ul>::~DynamicInlineArray(&v618);
  re::DynamicInlineArray<re::VideoHistogramConfig,2ul>::clear(&v591);
  re::DynamicInlineArray<re::VideoPSEConfig,2ul>::~DynamicInlineArray(&v594);
  re::DynamicInlineArray<re::VideoTransformSurfaceConfig,2ul>::~DynamicInlineArray(&v602);
  re::DynamicInlineArray<re::VideoHDRConfig,2ul>::~DynamicInlineArray(buf);
LABEL_506:

  re::DynamicInlineArray<re::VideoObject<re::VideoPixelBufferBase>,2ul>::clear(&v633);
LABEL_507:

  return v39;
}