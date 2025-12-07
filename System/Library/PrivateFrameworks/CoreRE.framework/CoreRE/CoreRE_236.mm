uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::findEntry<re::internal::SerializeFuncKey>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = *a2;
  LODWORD(v4) = 0x7FFFFFFF;
  if (!*a2)
  {
    v5 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v3 = a3 % *(a2 + 24);
  v5 = *(*(a2 + 8) + 4 * v3);
  if (v5 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v6 = *(a2 + 16);
  if (*(v6 + 24 * v5 + 4) == a3)
  {
    LODWORD(v4) = *(*(a2 + 8) + 4 * v3);
LABEL_5:
    v5 = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v4 = *(v6 + 24 * v5) & 0x7FFFFFFF;
  if (v4 == 0x7FFFFFFF)
  {
    LODWORD(v4) = 0x7FFFFFFF;
  }

  else if (*(v6 + 24 * v4 + 4) != a3)
  {
    LODWORD(v7) = *(v6 + 24 * v5) & 0x7FFFFFFF;
    while (1)
    {
      v5 = v7;
      v7 = *(v6 + 24 * v4) & 0x7FFFFFFF;
      LODWORD(v4) = 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        break;
      }

      v4 = v7;
      if (*(v6 + 24 * v7 + 4) == a3)
      {
        LODWORD(v4) = v7;
        break;
      }
    }
  }

LABEL_7:
  *result = a3;
  *(result + 8) = v3;
  *(result + 12) = v4;
  *(result + 16) = v5;
  return result;
}

uint64_t *re::internal::setTypeMismatchError<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, const char *a2, re::TypeInfo *this, re::TypeInfo *a4)
{
  v7 = re::TypeInfo::name(this)[1];
  v8 = re::TypeInfo::name(a4);
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(uint64_t a1, char *a2, BOOL *a3, char a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (result)
  {
    v9 = *(result + 22);
    if ((v9 & 8) != 0)
    {
      v12 = v9 == 10;
    }

    else
    {
      if ((v9 & 0x400) == 0 || *(a1 + 233) != 1 || ((v9 & 0x1000) != 0 ? (v10 = result) : (v10 = *(result + 8)), (v11 = strcasecmp(v10, "true"), v12 = v11 == 0, v11) && (v11 = strcasecmp(v10, "false"), v11)))
      {
        return 0;
      }

      v14 = *re::foundationSerializationLogObjects(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136315138;
        v16 = v10;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as BOOLean in Bool/String Compatibility Mode", &v15, 0xCu);
      }
    }

    if ((a4 & 1) == 0)
    {
      *a3 = v12;
    }

    v13 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v13 - 16);
    return 1;
  }

  return result;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(uint64_t a1, char *a2, _BYTE *a3, char a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  if (result)
  {
    if ((*(result + 22) & 0x400) != 0 || ((*(result + 22) & 0x1000) != 0 ? (v9 = 21 - *(result + 21)) : (v9 = *result), v9 != 1))
    {
      if ((a4 & 1) == 0)
      {
        if ((*(result + 22) & 0x1000) != 0)
        {
          v10 = result;
        }

        else
        {
          v10 = *(result + 8);
        }

        *a3 = *v10;
      }

      v11 = *(a1 + 128) + 48 * *(a1 + 112);
      ++*(v11 - 16);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI8(uint64_t a1, char *a2, _BYTE *a3, char a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x20) != 0)
  {
    v11 = *result;
    if (v11 != v11)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_39;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v10 = 21 - *(result + 21);
  }

  else
  {
    v10 = *result;
  }

  v13 = &v9[v10];
  if (v10)
  {
    v14 = *v9 == 45;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v10 == v14)
  {
    v16 = &v9[v14];
  }

  else
  {
    v18 = v10 - v14;
    v16 = &v9[v14];
    while (*v16 == 48)
    {
      ++v16;
      if (!--v18)
      {
        goto LABEL_34;
      }
    }
  }

  if (v16 == v13)
  {
LABEL_34:
    v16 = &v9[v10];
LABEL_35:
    if (v16 == &v9[v14])
    {
LABEL_39:
      return 0;
    }

    v17 = 0;
    LOBYTE(v11) = 0;
    if (!v14)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (*v16 - 48 >= 0xA)
  {
    goto LABEL_35;
  }

  v16 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v16, v13, buf, &v20);
  if (v16 != v13 && *v16 - 48 <= 9 || *buf > 0xFFu || 255 - *buf < v20)
  {
    goto LABEL_39;
  }

  v17 = v20 + *buf;
  if (!v15)
  {
    if ((v17 & 0x80) != 0)
    {
      goto LABEL_39;
    }

    LOBYTE(v11) = v20 + buf[0];
    goto LABEL_38;
  }

  if ((v20 + buf[0]) > 0x80u)
  {
    goto LABEL_39;
  }

LABEL_37:
  v11 = -v17;
LABEL_38:
  if (v13 != v16)
  {
    goto LABEL_39;
  }

  v19 = *re::foundationSerializationLogObjects(v16);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = v9;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI16(uint64_t a1, char *a2, _WORD *a3, char a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x20) != 0)
  {
    v11 = *result;
    if (v11 != v11)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_39;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v10 = 21 - *(result + 21);
  }

  else
  {
    v10 = *result;
  }

  v13 = &v9[v10];
  if (v10)
  {
    v14 = *v9 == 45;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v10 == v14)
  {
    v16 = &v9[v14];
  }

  else
  {
    v18 = v10 - v14;
    v16 = &v9[v14];
    while (*v16 == 48)
    {
      ++v16;
      if (!--v18)
      {
        goto LABEL_34;
      }
    }
  }

  if (v16 == v13)
  {
LABEL_34:
    v16 = &v9[v10];
LABEL_35:
    if (v16 == &v9[v14])
    {
LABEL_39:
      return 0;
    }

    v17 = 0;
    LOWORD(v11) = 0;
    if (!v14)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (*v16 - 48 >= 0xA)
  {
    goto LABEL_35;
  }

  v16 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v16, v13, buf, &v20);
  if (v16 != v13 && *v16 - 48 <= 9 || *&buf[2] || 0xFFFF - *buf < v20)
  {
    goto LABEL_39;
  }

  v17 = v20 + *buf;
  if (!v15)
  {
    if ((v17 & 0x8000) != 0)
    {
      goto LABEL_39;
    }

    LOWORD(v11) = v20 + *buf;
    goto LABEL_38;
  }

  if ((v20 + *buf) > 0x8000u)
  {
    goto LABEL_39;
  }

LABEL_37:
  v11 = -v17;
LABEL_38:
  if (v13 != v16)
  {
    goto LABEL_39;
  }

  v19 = *re::foundationSerializationLogObjects(v16);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = v9;
    _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI32(uint64_t a1, char *a2, unsigned int *a3, char a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x20) != 0)
  {
    v11 = *result;
    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_37;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v10 = 21 - *(result + 21);
  }

  else
  {
    v10 = *result;
  }

  v13 = &v9[v10];
  if (v10)
  {
    v14 = *v9 == 45;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v10 == v14)
  {
    v16 = &v9[v14];
  }

  else
  {
    v17 = v10 - v14;
    v16 = &v9[v14];
    while (*v16 == 48)
    {
      ++v16;
      if (!--v17)
      {
        goto LABEL_32;
      }
    }
  }

  if (v16 == v13)
  {
LABEL_32:
    v16 = &v9[v10];
LABEL_33:
    if (v16 == &v9[v14])
    {
LABEL_37:
      return 0;
    }

    v11 = 0;
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (*v16 - 48 >= 0xA)
  {
    goto LABEL_33;
  }

  v16 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v16, v13, buf, &v19);
  if (v16 != v13 && *v16 - 48 <= 9 || __CFADD__(*buf, v19))
  {
    goto LABEL_37;
  }

  v11 = *buf + v19;
  if (!v15)
  {
    if ((v11 & 0x80000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v11 > 0x80000000)
  {
    goto LABEL_37;
  }

LABEL_35:
  v11 = -v11;
LABEL_36:
  if (v13 != v16)
  {
    goto LABEL_37;
  }

  v18 = *re::foundationSerializationLogObjects(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v21 = v9;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeI64(uint64_t a1, char *a2, unint64_t *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x80) != 0)
  {
    v11 = *result;
    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_37;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v10 = 21 - *(result + 21);
  }

  else
  {
    v10 = *result;
  }

  v13 = &v9[v10];
  if (v10)
  {
    v14 = *v9 == 45;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  if (v10 == v14)
  {
    v16 = &v9[v14];
  }

  else
  {
    v17 = v10 - v14;
    v16 = &v9[v14];
    while (*v16 == 48)
    {
      ++v16;
      if (!--v17)
      {
        goto LABEL_32;
      }
    }
  }

  if (v16 == v13)
  {
LABEL_32:
    v16 = &v9[v10];
LABEL_33:
    if (v16 == &v9[v14])
    {
LABEL_37:
      return 0;
    }

    v11 = 0;
    if (!v14)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (*v16 - 48 >= 0xA)
  {
    goto LABEL_33;
  }

  v16 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v16, v13, buf, &v19);
  if (v16 != v13 && *v16 - 48 <= 9 || __CFADD__(*buf, v19))
  {
    goto LABEL_37;
  }

  v11 = *buf + v19;
  if (!v15)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (v11 > 0x8000000000000000)
  {
    goto LABEL_37;
  }

LABEL_35:
  v11 = -v11;
LABEL_36:
  if (v13 != v16)
  {
    goto LABEL_37;
  }

  v18 = *re::foundationSerializationLogObjects(v16);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU8(uint64_t a1, char *a2, _BYTE *a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x40) != 0)
  {
    v11 = *result;
    if (*result > 0xFFu)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_33;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    LODWORD(v10) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v10) = *result;
  }

  v13 = (v9 + v10);
  v14 = v9;
  if (v10)
  {
    v10 = v10;
    v14 = v9;
    while (*v14 == 48)
    {
      ++v14;
      if (!--v10)
      {
        goto LABEL_29;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_29:
    v14 = v13;
    goto LABEL_30;
  }

  if (*v14 - 48 >= 0xA)
  {
LABEL_30:
    if (v14 == v9)
    {
LABEL_33:
      return 0;
    }

    LOBYTE(v11) = 0;
    goto LABEL_32;
  }

  v14 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v14, v13, buf, &v16);
  if (v14 != v13 && *v14 - 48 <= 9 || *buf > 0xFFu || 255 - *buf < v16)
  {
    goto LABEL_33;
  }

  LOBYTE(v11) = v16 + buf[0];
LABEL_32:
  if (v13 != v14)
  {
    goto LABEL_33;
  }

  v15 = *re::foundationSerializationLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = v9;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU16(uint64_t a1, char *a2, _WORD *a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x40) != 0)
  {
    v11 = *result;
    if (HIWORD(*result))
    {
      return 0;
    }

    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_33;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    LODWORD(v10) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v10) = *result;
  }

  v13 = (v9 + v10);
  v14 = v9;
  if (v10)
  {
    v10 = v10;
    v14 = v9;
    while (*v14 == 48)
    {
      ++v14;
      if (!--v10)
      {
        goto LABEL_29;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_29:
    v14 = v13;
    goto LABEL_30;
  }

  if (*v14 - 48 >= 0xA)
  {
LABEL_30:
    if (v14 == v9)
    {
LABEL_33:
      return 0;
    }

    LOWORD(v11) = 0;
    goto LABEL_32;
  }

  v14 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v14, v13, buf, &v16);
  if (v14 != v13 && *v14 - 48 <= 9 || *&buf[2] || 0xFFFF - *buf < v16)
  {
    goto LABEL_33;
  }

  LOWORD(v11) = v16 + *buf;
LABEL_32:
  if (v13 != v14)
  {
    goto LABEL_33;
  }

  v15 = *re::foundationSerializationLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = v9;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU32(uint64_t a1, char *a2, _DWORD *a3, char a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x40) != 0)
  {
    v11 = *result;
    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_31;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    LODWORD(v10) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v10) = *result;
  }

  v13 = (v9 + v10);
  v14 = v9;
  if (v10)
  {
    v10 = v10;
    v14 = v9;
    while (*v14 == 48)
    {
      ++v14;
      if (!--v10)
      {
        goto LABEL_27;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_27:
    v14 = v13;
    goto LABEL_28;
  }

  if (*v14 - 48 >= 0xA)
  {
LABEL_28:
    if (v14 == v9)
    {
LABEL_31:
      return 0;
    }

    v11 = 0;
    goto LABEL_30;
  }

  v14 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v14, v13, buf, &v16);
  if (v14 != v13 && *v14 - 48 <= 9 || __CFADD__(*buf, v16))
  {
    goto LABEL_31;
  }

  v11 = *buf + v16;
LABEL_30:
  if (v13 != v14)
  {
    goto LABEL_31;
  }

  v15 = *re::foundationSerializationLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = v9;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeU64(uint64_t a1, char *a2, void *a3, char a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  if ((*(result + 22) & 0x100) != 0)
  {
    v11 = *result;
    goto LABEL_12;
  }

  if ((*(result + 22) & 0x400) == 0 || *(a1 + 232) != 1)
  {
    goto LABEL_31;
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    v9 = result;
  }

  else
  {
    v9 = *(result + 8);
  }

  if ((*(result + 22) & 0x1000) != 0)
  {
    LODWORD(v10) = 21 - *(result + 21);
  }

  else
  {
    LODWORD(v10) = *result;
  }

  v13 = (v9 + v10);
  v14 = v9;
  if (v10)
  {
    v10 = v10;
    v14 = v9;
    while (*v14 == 48)
    {
      ++v14;
      if (!--v10)
      {
        goto LABEL_27;
      }
    }
  }

  if (v14 == v13)
  {
LABEL_27:
    v14 = v13;
    goto LABEL_28;
  }

  if (*v14 - 48 >= 0xA)
  {
LABEL_28:
    if (v14 == v9)
    {
LABEL_31:
      return 0;
    }

    v11 = 0;
    goto LABEL_30;
  }

  v14 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v14, v13, buf, &v16);
  if (v14 != v13 && *v14 - 48 <= 9 || __CFADD__(*buf, v16))
  {
    goto LABEL_31;
  }

  v11 = *buf + v16;
LABEL_30:
  if (v13 != v14)
  {
    goto LABEL_31;
  }

  v15 = *re::foundationSerializationLogObjects(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = v9;
    _os_log_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", buf, 0xCu);
  }

LABEL_12:
  if ((a4 & 1) == 0)
  {
    *a3 = v11;
  }

  v12 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v12 - 16);
  return 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeFloat(uint64_t a1, char *a2, float *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v10 = *(result + 22);
  if ((v10 & 0x400) != 0)
  {
    if ((*(result + 22) & 0x1000) != 0)
    {
      v12 = result;
    }

    else
    {
      v12 = *(result + 8);
    }

    if ((*(result + 22) & 0x1000) != 0)
    {
      v13 = 21 - *(result + 21);
    }

    else
    {
      v13 = *result;
    }

    if (v13 == 9)
    {
      if (!strcasecmp(v12, "-Infinity"))
      {
        *&v14 = -INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 8)
    {
      if (!strcasecmp(v12, "Infinity"))
      {
        *&v14 = INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 3 && !strcasecmp(v12, "NaN"))
    {
      *&v14 = NAN;
LABEL_34:
      Double = *&v14;
      goto LABEL_35;
    }

    if (*(a1 + 232) == 1)
    {
      *v20 = 0;
      v16 = strtof(v12, v20);
      v17 = *v20 != &v12[v13] || v16 == INFINITY;
      Double = v17 ? INFINITY : v16;
      if (Double != INFINITY)
      {
        v18 = *re::foundationSerializationLogObjects(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315138;
          *&v20[4] = v12;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v20, 0xCu);
        }

        goto LABEL_35;
      }
    }

    goto LABEL_30;
  }

  if ((v10 & 0x10) == 0)
  {
LABEL_30:
    return 0;
  }

  Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v9);
LABEL_35:
  if ((a4 & 1) == 0)
  {
    *a3 = Double;
  }

  v19 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v19 - 16);
  return 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeDouble(uint64_t a1, char *a2, double *a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v10 = *(result + 22);
  if ((v10 & 0x400) != 0)
  {
    if ((*(result + 22) & 0x1000) != 0)
    {
      v12 = result;
    }

    else
    {
      v12 = *(result + 8);
    }

    if ((*(result + 22) & 0x1000) != 0)
    {
      v13 = 21 - *(result + 21);
    }

    else
    {
      v13 = *result;
    }

    if (v13 == 9)
    {
      if (!strcasecmp(v12, "-Infinity"))
      {
        *&v14 = -INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 8)
    {
      if (!strcasecmp(v12, "Infinity"))
      {
        *&v14 = INFINITY;
        goto LABEL_34;
      }
    }

    else if (v13 == 3 && !strcasecmp(v12, "NaN"))
    {
      *&v14 = NAN;
LABEL_34:
      Double = *&v14;
      goto LABEL_35;
    }

    if (*(a1 + 232) == 1)
    {
      *v20 = 0;
      v16 = strtod(v12, v20);
      v17 = *v20 != &v12[v13] || v16 == INFINITY;
      Double = v17 ? INFINITY : v16;
      if (Double != INFINITY)
      {
        v18 = *re::foundationSerializationLogObjects(v15);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 136315138;
          *&v20[4] = v12;
          _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "Reading JSON string %s as number in Number/String Compatibility Mode", v20, 0xCu);
        }

        goto LABEL_35;
      }
    }

    goto LABEL_30;
  }

  if ((v10 & 0x10) == 0)
  {
LABEL_30:
    return 0;
  }

  Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v9);
LABEL_35:
  if ((a4 & 1) == 0)
  {
    *a3 = Double;
  }

  v19 = *(a1 + 128) + 48 * *(a1 + 112);
  ++*(v19 - 16);
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::readJSONValue(uint64_t a1, char *__s)
{
  v3 = *(a1 + 128) + 48 * *(a1 + 112);
  v4 = *(v3 - 48);
  if (!*(v3 - 48))
  {
    return *(a1 + 176);
  }

  v5 = *(v3 - 8);
  if (!v5)
  {
    return v5;
  }

  if (v4 == 7)
  {
    goto LABEL_6;
  }

  if (v4 == 5)
  {
    v18 = *(v3 - 16);
    if (*v5 <= v18)
    {
      return 0;
    }

    v19 = *(v5 + 1);
    if (!v19)
    {
      return 0;
    }

    v5 = (v19 + 24 * v18);
LABEL_26:
    if (*(v5 + 11) != 4)
    {
      return v5;
    }

    v20 = *v5;
    if (v20 < 2)
    {
      return v5;
    }

    v21 = *(v5 + 1);
    if ((*(v21 + 22) & 0x400) == 0)
    {
      return v5;
    }

    v22 = (*(v21 + 22) & 0x1000) != 0 ? *(v5 + 1) : *(v21 + 8);
    if (strcmp(v22, "@cond"))
    {
      return v5;
    }

    v24 = v20 - 1;
    v25 = (v20 - 1) - 1;
    v26 = (v21 + 46);
    while (*v26 == 4)
    {
      if (*(v26 - 11) < 2u)
      {
        break;
      }

      v27 = *(v26 - 7);
      if ((*(v27 + 22) & 0x20) == 0)
      {
        break;
      }

      if (!v25 || *(a1 + 136) <= *v27)
      {
        return (v27 + 24);
      }

      --v25;
      v26 += 12;
      if (!--v24)
      {
        re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "evaluateConditional", 1447);
        _os_crash("assertion failure: (!Unreachable code) ");
        __break(1u);
        break;
      }
    }

    if (v34)
    {
      v29 = *&v35[7];
    }

    else
    {
      v29 = v35;
    }

    re::DynamicString::format(&v36, "Failed to read version conditional %s. Invalid condition.", v28, v29);
    if (v36 && (v37 & 1) != 0)
    {
      (*(*v36 + 40))();
    }

    if (v33)
    {
      if (v34)
      {
        (*(*v33 + 40))();
      }
    }

    return 0;
  }

  if (v4 != 2)
  {
    goto LABEL_26;
  }

LABEL_6:
  v7 = strlen(__s);
  v8 = *v5;
  if (!v8)
  {
    return 0;
  }

  v9 = v7;
  v10 = *(v5 + 1);
  v11 = v7 - 1;
  for (i = (v10 + 24); ; i += 12)
  {
    if ((*(i - 1) & 0x1000) != 0)
    {
      v13 = i - 6;
    }

    else
    {
      v13 = *(i - 2);
    }

    if ((*(i - 1) & 0x1000) != 0)
    {
      v14 = 21 - *(i - 3);
    }

    else
    {
      v14 = *(i - 6);
    }

    if (v9 != v14 || strncmp(__s + 1, v13 + 1, v11))
    {
      goto LABEL_19;
    }

    if (!v9)
    {
      break;
    }

    v16 = __toupper(*__s);
    if (v16 == __toupper(*v13))
    {
      v5 = i;
      goto LABEL_26;
    }

    v10 = *(v5 + 1);
    v8 = *v5;
LABEL_19:
    v17 = i + 6;
    if (v17 == (v10 + 48 * v8))
    {
      return 0;
    }
  }

  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, 0, 0);
  result = _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v31, v32);
  __break(1u);
  return result;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorWrongType(uint64_t a1, const char *a2, uint64_t a3)
{
  if (v9)
  {
    v6 = *&v10[7];
  }

  else
  {
    v6 = v10;
  }

  re::DynamicString::format(&v11, "Failed to deserialize %s. Expected type: %s", v5, v6, a3);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
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

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::setErrorValueOutOfTypeRange(uint64_t a1, const char *a2, uint64_t a3)
{
  if (v9)
  {
    v6 = *&v10[7];
  }

  else
  {
    v6 = v10;
  }

  re::DynamicString::format(&v11, "Failed to deserialize %s. Value out of %s type range.", v5, v6, a3);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
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

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(_BYTE *a1, char *a2, uint64_t *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1[40])
  {
    return 0;
  }

  if (result)
  {
    v8 = result;
    v9 = *(result + 11);
    if ((v9 & 0x400) != 0)
    {
      if ((*(result + 11) & 0x1000) != 0)
      {
        LODWORD(v12) = 21 - *(result + 21);
      }

      else
      {
        LODWORD(v12) = *result;
      }

      v12 = v12;
    }

    else if ((v9 & 0x10) != 0 && (a1[232] & 1) != 0 && (Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(result, v7), (v11 = snprintf(__str, 0x40uLL, "%g", Double)) != 0))
    {
      v12 = v11;
    }

    else
    {
      if (a1[233] != 1 || (v13 = *(v8 + 11), (v13 & 8) == 0))
      {
        return 0;
      }

      v14 = v13 == 10;
      v12 = 4;
      if (!v14)
      {
        v12 = 5;
      }
    }

    *a3 = v12;
    __str[0] = 8;
    v16 = 0;
    v17 = a2;
    v18 = 0;
    v19 = v12;
    v20 = 0;
    v21 = v8;
    return 1;
  }

  return result;
}

void re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(uint64_t a1, char *a2, char a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 40) & 1) == 0)
  {
    v6 = *(a1 + 128) + 48 * *(a1 + 112);
    v7 = *(v6 - 24);
    v8 = *(v6 - 40);
    if (JSONValue)
    {
      v11 = JSONValue;
      v12 = *(JSONValue + 11);
      if ((v12 & 0x400) != 0)
      {
        if ((a3 & 1) == 0)
        {
          if ((v12 & 0x1000) != 0)
          {
            v22 = JSONValue;
          }

          else
          {
            v22 = *(JSONValue + 1);
          }

          strncpy(a2, v22, v7);
        }

        goto LABEL_43;
      }

      if (*(a1 + 232) == 1)
      {
        if ((a3 & 1) == 0 && (v12 & 0x10) != 0)
        {
          Double = rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::GetDouble(JSONValue, v10);
          v14 = snprintf(__str, 0x40uLL, "%g", Double);
          if (v14 >= v7)
          {
            v15 = v7;
          }

          else
          {
            v15 = v14;
          }

          v16 = memcpy(a2, __str, v15);
          v17 = *re::foundationSerializationLogObjects(v16);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_43;
          }

          *v28 = 136315138;
          *&v28[4] = __str;
          v18 = "Reading JSON number as string %s in Number/String Compatibility Mode";
          v19 = v28;
          goto LABEL_38;
        }

        if ((v12 & 0x10) != 0)
        {
LABEL_43:
          v26 = *(a1 + 128) + 48 * *(a1 + 112);
          *(v26 - 16) += v7;
          return;
        }
      }

      if (*(a1 + 233) == 1)
      {
        if ((a3 & 1) == 0 && (v12 & 8) != 0)
        {
          if (v12 == 10)
          {
            v23 = "true";
          }

          else
          {
            v23 = "false";
          }

          v24 = strncpy(a2, v23, v7);
          v17 = *re::foundationSerializationLogObjects(v24);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_43;
          }

          if (*(v11 + 11) == 10)
          {
            v25 = "true";
          }

          else
          {
            v25 = "false";
          }

          *__str = 136315138;
          *&__str[4] = v25;
          v18 = "Reading JSON BOOL as string %s in Bool/String Compatibility Mode";
          v19 = __str;
LABEL_38:
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 0xCu);
          goto LABEL_43;
        }

        if ((v12 & 8) != 0)
        {
          goto LABEL_43;
        }
      }
    }

    else
    {
      if (v28[8])
      {
        v21 = v29;
      }

      else
      {
        v21 = &v28[9];
      }

      re::DynamicString::format(__str, "Failed to deserialize %s. Key not found.", v20, v21);
      if (*__str && (__str[8] & 1) != 0)
      {
        (*(**__str + 40))();
      }

      if (*v28 && (v28[8] & 1) != 0)
      {
        (*(**v28 + 40))();
      }
    }
  }
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endString(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v4 - 16);
    }

    else
    {
      if (v9)
      {
        v6 = *&v10[7];
      }

      else
      {
        v6 = v10;
      }

      v7 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(&v11, "Failed to serialize string %s. Expected number of characters: %lld. Actual number of characters: %lld.", v5, v6, *(v7 - 24), *(v7 - 16));
      if (v11 && (v12 & 1) != 0)
      {
        (*(*v11 + 40))();
      }

      result = v8;
      if (v8)
      {
        if (v9)
        {
          return (*(*v8 + 40))();
        }
      }
    }
  }

  return result;
}

double re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::pushState(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) >= *(a1 + 152))
  {
    re::DynamicString::format(v6, "State stack overflow (max depth is %zu). Increase user default com.apple.maxSerializationDepth to allow deeper hierarchies.", a2, *(a1 + 152));
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
  return result;
}

__n128 re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::StateStack::push(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v5 + 1;
  if (v5 >= v4 && v4 < v6)
  {
    if (*a1)
    {
      v11 = 2 * v4;
      v12 = v4 == 0;
      v13 = 8;
      if (!v12)
      {
        v13 = v11;
      }

      if (v13 <= v6)
      {
        v14 = v6;
      }

      else
      {
        v14 = v13;
      }

      re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(a1, v14);
    }

    else
    {
      re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(a1, v6);
      ++*(a1 + 24);
    }
  }

  v8 = *(a1 + 32) + 48 * *(a1 + 16);
  result = *a2;
  v10 = *(a2 + 32);
  *(v8 + 16) = *(a2 + 16);
  *(v8 + 32) = v10;
  *v8 = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

double re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t result, char *a2, _BYTE *a3)
{
  if ((*(result + 40) & 1) == 0)
  {
    if (JSONValue)
    {
      v7 = *(JSONValue + 11) != 0;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    v9[0] = 3;
    v10 = 0;
    v11 = a2;
    v12 = 0;
    v13 = v7;
    v14 = 0;
    v15 = JSONValue;
  }

  return v8;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endOptional(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v4 - 16);
    }

    else
    {
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

      re::DynamicString::format(&v11, "Failed to serialize optional type %s. %s", v5, v6, v7);
      if (v11 && (v12 & 1) != 0)
      {
        (*(*v11 + 40))();
      }

      result = v8;
      if (v8)
      {
        if (v9)
        {
          return (*(*v8 + 40))();
        }
      }
    }
  }

  return result;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, char *a2, void *a3, int a4)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19 = v4;
  v20 = v5;
  if (result)
  {
    if (*(result + 11) == 4)
    {
      v11 = *result;
      *a3 = v11;
      v12[0] = 5;
      v13 = a4;
      v14 = a2;
      v15 = 0;
      v16 = v11;
      v17 = 0;
      v18 = result;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v4 - 16);
    }

    else
    {
      if (v9)
      {
        v6 = *&v10[7];
      }

      else
      {
        v6 = v10;
      }

      v7 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(&v11, "Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", v5, v6, *(v7 - 24), *(v7 - 16));
      if (v11 && (v12 & 1) != 0)
      {
        (*(*v11 + 40))();
      }

      result = v8;
      if (v8)
      {
        if (v9)
        {
          return (*(*v8 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40), re::TypeInfo::TypeInfo(v38, v41), v38[12] != 1) || !re::TypeInfo::isInteger(v38))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v32 = *(a1 + 64) ^ 1;
    return v32 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v38, v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v37, v41);
  re::TypeInfo::TypeInfo(v35, this);
  v18 = (*(*a1 + 80))(a1, v38);
  if (!v18)
  {
    re::TypeInfo::name(v38);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v36 + 104);
  re::TypeInfo::TypeInfo(&v40, v35);
  v20(a4, &v40, v17);
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v31 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v31 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v34 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 > 9)
    {
      break;
    }

    v25 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v25, v27, &v40, &v39);
    if (v25 != v27)
    {
      if (*v25 - 48 > 9)
      {
        v29 = v39;
        v28 = v40;
        if (!__CFADD__(v40, v39))
        {
LABEL_40:
          v34 = v28 + v29;
          break;
        }
      }

      while (*v25 - 48 <= 9)
      {
        if (++v25 == v27)
        {
          v25 = v27;
          goto LABEL_41;
        }
      }

      break;
    }

    v29 = v39;
    v28 = v40;
    if (!__CFADD__(v40, v39))
    {
      goto LABEL_40;
    }

LABEL_42:
    v30 = (*(v36 + 112))(a4, v35, *(a1 + 48), &v34);
    v19(a1, v23, 0, v30, v38, v37, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v27 == v25)
  {
    goto LABEL_42;
  }

LABEL_48:
  v32 = 0;
  return v32 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v40), re::TypeInfo::TypeInfo(v38, v41), v38[12] != 1) || !re::TypeInfo::isInteger(v38))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v32 = *(a1 + 64) ^ 1;
    return v32 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v38, v41);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v40);
  re::TypeInfo::TypeInfo(v37, v41);
  re::TypeInfo::TypeInfo(v35, this);
  v18 = (*(*a1 + 80))(a1, v38);
  if (!v18)
  {
    re::TypeInfo::name(v38);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v36 + 104);
  re::TypeInfo::TypeInfo(&v40, v35);
  v20(a4, &v40, v17);
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v31 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v31 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v34 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 > 9)
    {
      break;
    }

    v25 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v25, v27, &v40, &v39);
    if (v25 != v27)
    {
      if (*v25 - 48 > 9)
      {
        v29 = v39;
        v28 = v40;
        if (!__CFADD__(v40, v39))
        {
LABEL_40:
          v34 = v28 + v29;
          break;
        }
      }

      while (*v25 - 48 <= 9)
      {
        if (++v25 == v27)
        {
          v25 = v27;
          goto LABEL_41;
        }
      }

      break;
    }

    v29 = v39;
    v28 = v40;
    if (!__CFADD__(v40, v39))
    {
      goto LABEL_40;
    }

LABEL_42:
    v30 = (*(v36 + 112))(a4, v35, *(a1 + 48), &v34);
    v19(a1, v23, 0, v30, v38, v37, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_41:
  if (v27 == v25)
  {
    goto LABEL_42;
  }

LABEL_48:
  v32 = 0;
  return v32 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v38), re::TypeInfo::TypeInfo(v36, v39), v36[12] != 1) || !re::TypeInfo::isInteger(v36))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v30 = *(a1 + 64) ^ 1;
    return v30 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v38);
  re::TypeInfo::TypeInfo(v36, v39);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v38);
  re::TypeInfo::TypeInfo(v35, v39);
  re::TypeInfo::TypeInfo(v33, this);
  v18 = (*(*a1 + 80))(a1, v36);
  if (!v18)
  {
    re::TypeInfo::name(v36);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v34 + 104);
  re::TypeInfo::TypeInfo(&v38, v33);
  v20(a4, &v38, v17);
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v29 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v29 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v32 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 <= 9)
    {
      v25 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v25, v27, &v38, &v37);
      if (v25 == v27 || *v25 - 48 > 9)
      {
        if (HIWORD(v38) || 0xFFFF - v38 < v37)
        {
          if (v25 != v27)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        v32 = v37 + v38;
      }

      else
      {
LABEL_37:
        while (*v25 - 48 <= 9)
        {
          if (++v25 == v27)
          {
            v25 = v27;
            break;
          }
        }
      }
    }

    if (v27 != v25)
    {
      break;
    }

LABEL_42:
    v28 = (*(v34 + 112))(a4, v33, *(a1 + 48), &v32);
    v19(a1, v23, 0, v28, v36, v35, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_48:
  v30 = 0;
  return v30 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v38), re::TypeInfo::TypeInfo(v36, v39), v36[12] != 1) || !re::TypeInfo::isInteger(v36))
  {
    goto LABEL_48;
  }

LABEL_13:
  if (a7)
  {
LABEL_45:
    v30 = *(a1 + 64) ^ 1;
    return v30 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v38);
  re::TypeInfo::TypeInfo(v36, v39);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v38);
  re::TypeInfo::TypeInfo(v35, v39);
  re::TypeInfo::TypeInfo(v33, this);
  v18 = (*(*a1 + 80))(a1, v36);
  if (!v18)
  {
    re::TypeInfo::name(v36);
    goto LABEL_48;
  }

  v19 = v18;
  v20 = *(v34 + 104);
  re::TypeInfo::TypeInfo(&v38, v33);
  v20(a4, &v38, v17);
  {
    goto LABEL_48;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_43:
    if (*(a1 + 64))
    {
      goto LABEL_48;
    }

    v29 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v29 - 16);
    goto LABEL_45;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 8);
    }

    if ((*(v22 + 22) & 0x1000) != 0)
    {
      v24 = 21 - *(v22 + 21);
    }

    else
    {
      v24 = *v22;
    }

    v32 = 0;
    v25 = v23;
    if (v24)
    {
      v26 = v24;
      v25 = v23;
      while (*v25 == 48)
      {
        ++v25;
        if (!--v26)
        {
          goto LABEL_42;
        }
      }
    }

    v27 = &v23[v24];
    if (v25 == v27)
    {
      goto LABEL_42;
    }

    if (*v25 - 48 <= 9)
    {
      v25 = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](v25, v27, &v38, &v37);
      if (v25 == v27 || *v25 - 48 > 9)
      {
        if (v38 > 0xFF || 255 - v38 < v37)
        {
          if (v25 != v27)
          {
            goto LABEL_37;
          }

          goto LABEL_42;
        }

        v32 = v37 + v38;
      }

      else
      {
LABEL_37:
        while (*v25 - 48 <= 9)
        {
          if (++v25 == v27)
          {
            v25 = v27;
            break;
          }
        }
      }
    }

    if (v27 != v25)
    {
      break;
    }

LABEL_42:
    v28 = (*(v34 + 112))(a4, v33, *(a1 + 48), &v32);
    v19(a1, v23, 0, v28, v36, v35, 0);
    v22 += 48;
    if (v22 == *(v21 + 1) + 48 * *v21)
    {
      goto LABEL_43;
    }
  }

LABEL_48:
  v30 = 0;
  return v30 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v45), re::TypeInfo::TypeInfo(v43, v46), v43[12] != 1) || !re::TypeInfo::isInteger(v43))
  {
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_64:
    v36 = *(a1 + 64) ^ 1;
    return v36 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v42, v46);
  re::TypeInfo::TypeInfo(v40, this);
  v18 = (*(*a1 + 80))(a1, v43);
  if (!v18)
  {
    re::TypeInfo::name(v43);
    goto LABEL_61;
  }

  v19 = v18;
  v20 = *(v41 + 104);
  re::TypeInfo::TypeInfo(&v45, v40);
  v20(a4, &v45, v17);
  {
    goto LABEL_61;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_62:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    v37 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v37 - 16);
    goto LABEL_64;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 1);
    }

    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v24 = 21 - v22[21];
    }

    else
    {
      v24 = *v22;
    }

    v39 = 0;
    if (v24)
    {
      v25 = *v23 == 45;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24;
    v27 = &v23[v24];
    v28 = v25;
    v29 = &v23[v25];
    if (v26 == v25)
    {
      v30 = &v23[v25];
    }

    else
    {
      v33 = v26 - v25;
      v30 = v29;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v33)
        {
          goto LABEL_42;
        }
      }
    }

    if (v30 == v27)
    {
LABEL_42:
      v30 = v27;
LABEL_43:
      if (v30 != v29)
      {
        v34 = 0;
        if (v28)
        {
LABEL_45:
          v34 = -v34;
        }

LABEL_46:
        v39 = v34;
        goto LABEL_51;
      }

      v30 = v23;
      goto LABEL_51;
    }

    if (*v30 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v30 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v30, v27, &v45, &v44);
    if (v30 == v27)
    {
      v32 = v44;
      v31 = v45;
      if (__CFADD__(v45, v44))
      {
LABEL_50:
        v30 = v27;
        goto LABEL_51;
      }
    }

    else if (*v30 - 48 <= 9 || (v32 = v44, v31 = v45, __CFADD__(v45, v44)))
    {
      while (*v30 - 48 <= 9)
      {
        if (++v30 == v27)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_51;
    }

    v34 = v31 + v32;
    if (v28)
    {
      if (v34 <= 0x8000000000000000)
      {
        goto LABEL_45;
      }
    }

    else if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    if (v27 != v30)
    {
      break;
    }

    v35 = (*(v41 + 112))(a4, v40, *(a1 + 48), &v39);
    v19(a1, v23, 0, v35, v43, v42, 0);
    v22 += 48;
    if (v22 == (*(v21 + 1) + 48 * *v21))
    {
      goto LABEL_62;
    }
  }

LABEL_61:
  v36 = 0;
  return v36 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v45), re::TypeInfo::TypeInfo(v43, v46), v43[12] != 1) || !re::TypeInfo::isInteger(v43))
  {
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_64:
    v36 = *(a1 + 64) ^ 1;
    return v36 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v43, v46);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v45);
  re::TypeInfo::TypeInfo(v42, v46);
  re::TypeInfo::TypeInfo(v40, this);
  v18 = (*(*a1 + 80))(a1, v43);
  if (!v18)
  {
    re::TypeInfo::name(v43);
    goto LABEL_61;
  }

  v19 = v18;
  v20 = *(v41 + 104);
  re::TypeInfo::TypeInfo(&v45, v40);
  v20(a4, &v45, v17);
  {
    goto LABEL_61;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_62:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    v37 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v37 - 16);
    goto LABEL_64;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 1);
    }

    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v24 = 21 - v22[21];
    }

    else
    {
      v24 = *v22;
    }

    v39 = 0;
    if (v24)
    {
      v25 = *v23 == 45;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24;
    v27 = &v23[v24];
    v28 = v25;
    v29 = &v23[v25];
    if (v26 == v25)
    {
      v30 = &v23[v25];
    }

    else
    {
      v33 = v26 - v25;
      v30 = v29;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v33)
        {
          goto LABEL_42;
        }
      }
    }

    if (v30 == v27)
    {
LABEL_42:
      v30 = v27;
LABEL_43:
      if (v30 != v29)
      {
        v34 = 0;
        if (v28)
        {
LABEL_45:
          v34 = -v34;
        }

LABEL_46:
        v39 = v34;
        goto LABEL_51;
      }

      v30 = v23;
      goto LABEL_51;
    }

    if (*v30 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v30 = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](v30, v27, &v45, &v44);
    if (v30 == v27)
    {
      v32 = v44;
      v31 = v45;
      if (__CFADD__(v45, v44))
      {
LABEL_50:
        v30 = v27;
        goto LABEL_51;
      }
    }

    else if (*v30 - 48 <= 9 || (v32 = v44, v31 = v45, __CFADD__(v45, v44)))
    {
      while (*v30 - 48 <= 9)
      {
        if (++v30 == v27)
        {
          goto LABEL_50;
        }
      }

      goto LABEL_51;
    }

    v34 = v31 + v32;
    if (v28)
    {
      if (v34 <= 0x80000000)
      {
        goto LABEL_45;
      }
    }

    else if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    if (v27 != v30)
    {
      break;
    }

    v35 = (*(v41 + 112))(a4, v40, *(a1 + 48), &v39);
    v19(a1, v23, 0, v35, v43, v42, 0);
    v22 += 48;
    if (v22 == (*(v21 + 1) + 48 * *v21))
    {
      goto LABEL_62;
    }
  }

LABEL_61:
  v36 = 0;
  return v36 & 1;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
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

  if (*(this + 12) != *(a6 + 12) || (re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &v44), re::TypeInfo::TypeInfo(v42, v45), v42[12] != 1) || !re::TypeInfo::isInteger(v42))
  {
    goto LABEL_61;
  }

LABEL_13:
  if (a7)
  {
LABEL_58:
    v36 = *(a1 + 64) ^ 1;
    return v36 & 1;
  }

  v17 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v42, v45);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v44);
  re::TypeInfo::TypeInfo(v41, v45);
  re::TypeInfo::TypeInfo(v39, this);
  v18 = (*(*a1 + 80))(a1, v42);
  if (!v18)
  {
    re::TypeInfo::name(v42);
    goto LABEL_61;
  }

  v19 = v18;
  v20 = *(v40 + 104);
  re::TypeInfo::TypeInfo(&v44, v39);
  v20(a4, &v44, v17);
  {
    goto LABEL_61;
  }

  v21 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
  if (!v21 || !*v21)
  {
LABEL_56:
    if (*(a1 + 64))
    {
      goto LABEL_61;
    }

    v35 = *(a1 + 152) + 48 * *(a1 + 136);
    ++*(v35 - 16);
    goto LABEL_58;
  }

  v22 = *(v21 + 1);
  while (1)
  {
    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(v22 + 1);
    }

    if ((*(v22 + 11) & 0x1000) != 0)
    {
      v24 = 21 - v22[21];
    }

    else
    {
      v24 = *v22;
    }

    v38 = 0;
    if (v24)
    {
      v25 = *v23 == 45;
    }

    else
    {
      v25 = 0;
    }

    v26 = v24;
    v27 = &v23[v24];
    v28 = v25;
    v29 = &v23[v25];
    if (v26 == v25)
    {
      v30 = &v23[v25];
    }

    else
    {
      v32 = v26 - v25;
      v30 = v29;
      while (*v30 == 48)
      {
        ++v30;
        if (!--v32)
        {
          goto LABEL_42;
        }
      }
    }

    if (v30 == v27)
    {
LABEL_42:
      v30 = v27;
LABEL_43:
      if (v30 == v29)
      {
        v30 = v23;
        goto LABEL_54;
      }

      v31 = 0;
      v33 = 0;
      if (v28)
      {
LABEL_45:
        v38 = -v31;
        goto LABEL_54;
      }

LABEL_49:
      v38 = v33;
      goto LABEL_54;
    }

    if (*v30 - 48 >= 0xA)
    {
      goto LABEL_43;
    }

    v30 = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](v30, v27, &v44, &v43);
    if (v30 != v27 && *v30 - 48 <= 9)
    {
      goto LABEL_51;
    }

    if (HIWORD(v44) || 0xFFFF - v44 < v43)
    {
      while (1)
      {
        if (v30 == v27)
        {
          v30 = v27;
          goto LABEL_54;
        }

LABEL_51:
        if (*v30 - 48 > 9)
        {
          goto LABEL_54;
        }

        ++v30;
      }
    }

    v31 = v43 + v44;
    if ((v28 & 1) == 0)
    {
      if (((v43 + v44) & 0x8000) != 0)
      {
        goto LABEL_54;
      }

      v33 = v43 + v44;
      goto LABEL_49;
    }

    if ((v43 + v44) <= 0x8000u)
    {
      goto LABEL_45;
    }

LABEL_54:
    if (v27 != v30)
    {
      break;
    }

    v34 = (*(v40 + 112))(a4, v39, *(a1 + 48), &v38);
    v19(a1, v23, 0, v34, v42, v41, 0);
    v22 += 48;
    if (v22 == (*(v21 + 1) + 48 * *v21))
    {
      goto LABEL_56;
    }
  }

LABEL_61:
  v36 = 0;
  return v36 & 1;
}

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

  re::TypeRegistry::typeInfo(v13, v14[10], &v42);
  re::TypeInfo::TypeInfo(v41, v43);
  v19 = re::TypeInfo::name(v41);
  if (*v19 >> 1 != 0x22C6ED80D0CLL || (v20 = v19[1], v20 != "StringID") && strcmp(v20, "StringID"))
  {
LABEL_29:
    v26 = 0;
    return v26 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_27:
    v26 = *(a1 + 64) ^ 1;
    return v26 & 1;
  }

  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v41, v43);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v42);
  re::TypeInfo::TypeInfo(v40, v43);
  re::TypeInfo::TypeInfo(v38, this);
  v23 = (*(*a1 + 80))(a1, v41);
  if (!v23)
  {
    v36 = re::TypeInfo::name(v41);
    goto LABEL_29;
  }

  v24 = v23;
  v26 = 0;
  if (v25)
  {
    v27 = *(v39 + 104);
    re::TypeInfo::TypeInfo(&v42, v38);
    v27(a4, &v42, v22);
    v28 = (*(*v21 + 32))(v21, 32, 8);
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *v28 = v22;
    *(v28 + 1) = 0;
    re::DynamicString::setCapacity(v28, 0);
    v29 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
    if (v29 && *v29)
    {
      v30 = *(v29 + 1);
      do
      {
        if ((*(v30 + 22) & 0x1000) != 0)
        {
          v31 = v30;
        }

        else
        {
          v31 = *(v30 + 8);
        }

        v32 = strlen(v31);
        v42 = v31;
        v43[0] = v32;
        re::DynamicString::operator=(v28, &v42);
        v33 = (*(v39 + 112))(a4, v38, *(a1 + 48), v28);
        v24(a1, v31, 0, v33, v41, v40, 0);
        v30 += 48;
      }

      while (v30 != *(v29 + 1) + 48 * *v29);
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      v34 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v34 - 16);
    }

    v35 = re::DynamicString::deinit(v28);
    (*(*v21 + 40))(v21, v28, v35);
    goto LABEL_27;
  }

  return v26 & 1;
}

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

  re::TypeRegistry::typeInfo(v13, v14[10], &v47);
  re::TypeInfo::TypeInfo(v46, v48);
  v19 = re::TypeInfo::name(v46);
  if (*v19 >> 1 != 0x134375A94D9F7110 || (v20 = v19[1], v20 != "DynamicString") && strcmp(v20, "DynamicString"))
  {
LABEL_35:
    v21 = 0;
    return v21 & 1;
  }

LABEL_14:
  if (a7)
  {
LABEL_15:
    v21 = *(a1 + 64) ^ 1;
    return v21 & 1;
  }

  v22 = *(a1 + 48);
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v46, v48);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 88), &v47);
  re::TypeInfo::TypeInfo(v45, v48);
  re::TypeInfo::TypeInfo(v43, this);
  v23 = (*(*a1 + 80))(a1, v46);
  if (!v23)
  {
    v39 = re::TypeInfo::name(v46);
    goto LABEL_35;
  }

  v24 = v23;
  v21 = 0;
  if (v25)
  {
    v26 = *(v44 + 104);
    re::TypeInfo::TypeInfo(&v47, v43);
    v27 = v26(a4, &v47, v22);
    v47 = 0;
    v48[0] = &str_67;
    v28 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
    if (v28 && *v28)
    {
      v29 = *(v28 + 1);
      do
      {
        if ((*(v29 + 22) & 0x1000) != 0)
        {
          v30 = v29;
        }

        else
        {
          v30 = *(v29 + 8);
        }

        v41 = 0;
        v42 = &str_67;
        v32 = v41;
        v33 = v42;
        v41 = 0;
        v42 = &str_67;
        v34 = v47;
        v35 = v48[0];
        v47 = v32;
        v48[0] = v33;
        if (v34)
        {
          if (v41)
          {
            if (v41)
            {
            }
          }
        }

        v37 = (*(v44 + 112))(a4, v43, *(a1 + 48), &v47);
        v27 = v24(a1, v30, 0, v37, v46, v45, 0);
        v29 += 48;
      }

      while (v29 != *(v28 + 1) + 48 * *v28);
    }

    if ((*(a1 + 64) & 1) == 0)
    {
      v38 = *(a1 + 152) + 48 * *(a1 + 136);
      ++*(v38 - 16);
    }

    if (v47)
    {
      if (v47)
      {
      }
    }

    goto LABEL_15;
  }

  return v21 & 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, char *a2, void *a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  if (result)
  {
    if (*(result + 11) == 4)
    {
      v9 = *result;
      *a3 = v9;
      v10[0] = 6;
      v11 = 0;
      v12 = a2;
      v13 = 0;
      v14 = v9;
      v15 = 0;
      v16 = result;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t result, int a2)
{
  if (*(result + 40))
  {
    return;
  }

  v3 = *(result + 128);
  v4 = *(result + 112);
  v5 = v3 + 48 * v4;
  v6 = *(v5 - 8);
  if (!v6)
  {
    v8 = 0;
LABEL_6:
    if (*(v8 + 22) == 3)
    {
      LOBYTE(v11) = 7;
      HIDWORD(v11) = a2;
      v12 = "entry";
      v13 = xmmword_1E3054780;
      v14 = 0;
      v15 = v8;
    }

    else
    {
    }

    return;
  }

  v7 = *(v5 - 16);
  if (*v6 > v7)
  {
    v8 = *(v6 + 8) + 24 * v7;
    goto LABEL_6;
  }

  if (v17)
  {
    v10 = *&v18[7];
  }

  else
  {
    v10 = v18;
  }

  re::DynamicString::format(&v11, "Failed to deserialize %s. Index out of range.", v9, v10);
  if (v11 && (v12 & 1) != 0)
  {
    (*(*v11 + 40))();
  }

  if (v16 && (v17 & 1) != 0)
  {
    (*(*v16 + 40))();
  }
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == 2)
    {
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v4 - 16);
    }

    else
    {
      if (v8)
      {
        v6 = *&v9[7];
      }

      else
      {
        v6 = v9;
      }

      re::DynamicString::format(&v10, "Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", v5, v6, *(*(v1 + 16) + 48 * *(v1 + 14) - 16));
      if (v10 && (v11 & 1) != 0)
      {
        (*(*v10 + 40))();
      }

      result = v7;
      if (v7)
      {
        if (v8)
        {
          return (*(*v7 + 40))();
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v4 - 16);
    }

    else
    {
      if (v9)
      {
        v6 = *&v10[7];
      }

      else
      {
        v6 = v10;
      }

      v7 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(&v11, "Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", v5, v6, *(v7 - 24), *(v7 - 16));
      if (v11 && (v12 & 1) != 0)
      {
        (*(*v11 + 40))();
      }

      result = v8;
      if (v8)
      {
        if (v9)
        {
          return (*(*v8 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, int a7)
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
    v32 = 0;
    {
      if (!v32)
      {
LABEL_33:
        v30 = *(a1 + 64) ^ 1;
        return v30 & 1;
      }

      v19 = a1 + 24;
      v20 = 0;
      v21 = 1;
LABEL_32:
      goto LABEL_33;
    }
  }

  else
  {
    v22 = a4[1];
    if (v22)
    {
      v23 = v22 >> 1;
    }

    else
    {
      v23 = v22 >> 1;
    }

    v32 = v23;
    {
      v24 = v32;
      v25 = *(a1 + 24);
      v26 = (*(**(v25 + 8) + 24))(*(v25 + 8));
      if (v24 <= (*(**(v25 + 8) + 32))(*(v25 + 8)) + v26)
      {
        if (!*a4)
        {
          *a4 = *(a1 + 48);
          re::DynamicString::setCapacity(a4, v24 + 1);
        }

        re::DynamicString::resize(a4, v24, 0);
        if (!v24)
        {
          goto LABEL_33;
        }

        if (a4[1])
        {
          v20 = a4[2];
        }

        else
        {
          v20 = a4 + 9;
        }

        v19 = a1 + 24;
        v21 = 0;
        goto LABEL_32;
      }

      v27 = *(a1 + 24);
      v28 = (*(**(v27 + 8) + 24))(*(v27 + 8));
      v29 = (*(**(v27 + 8) + 32))(*(v27 + 8));
    }
  }

LABEL_24:
  v30 = 0;
  return v30 & 1;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(uint64_t a1)
{
  *a1 = &unk_1F5D180B8;
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = *(a1 + 48);
    if ((v4 & 1) == 0)
    {
      (*(*v2 + 40))(v2, *(a1 + 64));
      v4 = *(a1 + 48);
    }

    *v3 = 0;
    v3[1] = 0;
    *(a1 + 48) = (v4 | 1) + 2;
  }

  return a1;
}

uint64_t re::internal::serializeMembers<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, re *a3, const re::TypeInfo *a4, uint64_t a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a3 == a4)
  {
LABEL_4:
  }

  if (*a3 == *a4)
  {
    v11 = **(a3 + 2);
    v12 = **(a4 + 2);
    if (v11 == v12)
    {
      v14 = WORD1(v11) == WORD1(v12);
      v13 = (v12 ^ v11) & 0xFFFFFF00000000;
      v14 = v14 && v13 == 0;
      if (v14)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(a3, a4, a3))
  {
    goto LABEL_4;
  }

  if (*(a3 + 12) == *(a4 + 12))
  {
    re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), v38);
    re::TypeRegistry::typeInfo(*a4, *(*(a4 + 2) + 80), v36);
    if (v36[0] == 1)
    {
      if ((v38[0] & 1) == 0)
      {
        re::TypeInfo::name(v37);
        re::TypeInfo::name(a3);
      }
    }

    re::TypeMemberCollection::TypeMemberCollection(v35, *a3, *(a3 + 2));
    result = re::TypeMemberCollection::TypeMemberCollection(v33, *a4, *(a4 + 2));
    if (v34)
    {
      for (i = 0; i < v34; ++i)
      {
        if (*(a1 + 64))
        {
          break;
        }

        result = re::TypeMemberCollection::operator[](v33, i, v31);
        if (*(v32 + 28) == 1)
        {
          v16 = *(v32 + 16);
          if (strlen(v16) >= 3 && *v16 == 109)
          {
            v16 += 2 * (*(v16 + 1) == 95);
          }

          v17 = *(v32 + 32);
          v18 = *(*a4 + 856);
          if (!v18 || (v18 = re::internal::TypeTranslationTable::translateMember(v18, v31), v18 == -1))
          {
            v22 = *re::foundationSerializationLogObjects(v18);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v23 = v22;
              v24 = re::TypeInfo::name(a4)[1];
              *buf = 136315394;
              v41 = v24;
              v42 = 2080;
              v43 = v16;
              _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_INFO, "Skipping unknown member %s.%s.", buf, 0x16u);
            }

            v25 = *(a1 + 272);
            re::TypeRegistry::typeInfo(v31[0], *v32, buf);
            re::TypeInfo::TypeInfo(v29, &v41 + 4);
            result = re::internal::translateType(buf, v25, v29);
            if ((*(a1 + 64) & 1) == 0)
            {
              result = (*(*a1 + 72))(a1, v16, v17, 0, buf, buf, 1);
            }
          }

          else
          {
            re::TypeMemberCollection::operator[](v35, v18, v29);
            v19 = *(v30 + 24);
            re::TypeRegistry::typeInfo(v29[0], *v30, buf);
            re::TypeInfo::TypeInfo(v28, &v41 + 4);
            re::TypeRegistry::typeInfo(v31[0], *v32, buf);
            re::TypeInfo::TypeInfo(v27, &v41 + 4);
            if (*(a1 + 64) == 1 || (result = (*(*a1 + 72))(a1, v16, v17, a2 + v19, v28, v27, a5), (result & 1) == 0))
            {
              result = re::TypeInfo::renamedObjectMembers(a4);
              if (v20)
              {
                v21 = (result + 16);
                while (i != *v21)
                {
                  v21 += 6;
                  if (!--v20)
                  {
                    goto LABEL_36;
                  }
                }

                v26 = *(v21 - 1);
                re::TypeRegistry::typeInfo(v29[0], *v30, buf);
                re::TypeInfo::TypeInfo(v28, &v41 + 4);
                re::TypeRegistry::typeInfo(v31[0], *v32, buf);
                result = re::TypeInfo::TypeInfo(v27, &v41 + 4);
                if ((*(a1 + 64) & 1) == 0)
                {
                  result = (*(*a1 + 72))(a1, v26, v17, a2 + v19, v28, v27, a5);
                }
              }
            }
          }
        }

LABEL_36:
        ;
      }
    }
  }

  else
  {
    re::TypeInfo::name(a3);
    re::TypeInfo::name(a4);
  }

  return result;
}

__n128 re::DynamicOverflowArray<re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::add(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 + 40 * *(a1 + 8);
  result = *a2;
  v7 = *(a2 + 16);
  *(v5 + 32) = *(a2 + 32);
  *v5 = result;
  *(v5 + 16) = v7;
  ++*(a1 + 8);
  *(a1 + 16) += 2;
  return result;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
{
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
  {
    v7 = "";
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    return 1;
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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
  v5 = *(result + 1);
  if ((*(v4 - 8) || **(v4 - 5) != 64) && (*(v5 + 64) & 1) == 0)
  {
    v6 = *(v5 + 152) + 48 * *(v5 + 136);
    ++*(v6 - 16);
  }

  return result;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, void *a2, int a3)
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
  v17 = *(v15 - 40);
  if (a3)
  {
    {
      v18 = *(*(v16 + 152) + 48 * *(v16 + 136) - 8);
      v19 = *(v18 + 1);
      *(v15 - 24) = v19;
      *(v15 - 16) = v19 + 48 * *v18;
      *(v15 - 8) = 1;
      *a2 = *v18;
    }
  }

  else
  {
  }

  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t result)
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
  if (*(v2 - 8) == 1)
  {
    *(v2 - 32) = -1;
    v3 = *(v2 - 24);
    if ((v3[23] & 0x10) == 0)
    {
      v3 = *(v3 + 1);
    }
  }

  else
  {
    *(v2 - 32) = 0;
    v3 = "key";
  }

  *(v2 - 40) = v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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
  if (*(v2 - 8) == 1)
  {
    v3 = 0;
    *(v2 - 24) += 48;
  }

  else
  {
    *(v2 - 40) = "value";
    v3 = 1;
  }

  *(v2 - 32) = v3;
  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if (*(result + 48))
  {
    v1 = result + 56;
  }

  else
  {
    v1 = *(result + 8);
  }

  if ((v1[40 * *(result + 5) - 8] & 1) == 0)
  {
  }

  return result;
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
    if (*(a1 + 48))
    {
      v4 = a1 + 56;
    }

    else
    {
      v4 = *(a1 + 64);
    }

    v5 = *(a1 + 8);
    if (*(v4 + 40 * *(a1 + 40) - 8) == 1)
    {
      if ((*(v5 + 64) & 1) == 0)
      {
        v6 = *(v5 + 152) + 48 * *(v5 + 136);
        ++*(v6 - 16);
      }
    }

    else
    {
    }

    v7 = *(a1 + 48);
    --*(a1 + 40);
    *(a1 + 48) = v7 + 2;
  }

  return v2 == 0;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginData(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  if (*(v3 + 64))
  {
    return 0;
  }

  v6 = *(v4 + 40 * *(a1 + 40) - 40);
  if (result)
  {
    v7 = result;
    if ((*(result + 11) & 0x400) != 0)
    {
      if ((*(result + 11) & 0x1000) != 0)
      {
        v8 = result;
      }

      else
      {
        v8 = *(result + 1);
      }

      *(v3 + 232) = 0;
      ++*(v3 + 240);
      v9 = strlen(v8);
      if ((re::EncoderHelper::decodeBase64(v8, v9, v3 + 216) & 1) == 0)
      {
        if (v20)
        {
          v12 = *&v21[7];
        }

        else
        {
          v12 = v21;
        }

        re::DynamicString::format(&v13, "Failed to deserialize %s. Failed to decode data from Base64-encoded string.", v11, v12);
        if (v13 && (v14 & 1) != 0)
        {
          (*(*v13 + 40))();
        }

        if (v19)
        {
          if (v20)
          {
            (*(*v19 + 40))();
          }
        }

        return 0;
      }

      v10 = *(v3 + 232);
    }

    else
    {
      if (*(result + 11))
      {
        return 0;
      }

      v10 = 0;
    }

    *a2 = v10;
    LOBYTE(v13) = 4;
    HIDWORD(v13) = 0;
    v14 = v6;
    v15 = 0;
    v16 = v10;
    v17 = 0;
    v18 = v7;
    return 1;
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1)
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

  return v3;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginString(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = *(a1 + 64);
  }

  v4 = v3 + 40 * *(a1 + 40);
  v5 = *(v4 - 40);
  if (*(v4 - 8) == 1 && (*(v4 - 32) & 0x80000000) != 0)
  {
    *a2 = strlen(v5);
    return 1;
  }

  else
  {
    v7 = (*(a1 + 8) + 24);
  }
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, BOOL *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_31;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](result, v19, &v27, &v26);
        if (result != v19 && *result - 48 <= 9 || v27 > 0xFF || 255 - v27 < v26)
        {
        }

        v23 = v26 + v27;
        if (v21)
        {
          if ((v26 + v27) > 0x80u)
          {
          }

          goto LABEL_33;
        }

        if ((v23 & 0x80) == 0)
        {
          LOBYTE(v25) = v26 + v27;
          goto LABEL_34;
        }
      }

      v19 = result;
    }

LABEL_31:
    if (v19 != v22)
    {
      v23 = 0;
      LOBYTE(v25) = 0;
      if ((v21 & 1) == 0)
      {
LABEL_34:
        *a2 = v25;
        return result;
      }

LABEL_33:
      v25 = -v23;
      goto LABEL_34;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = v12;
      result = *(v6 - 40);
      while (*result == 48)
      {
        ++result;
        if (!--v20)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      result = *(v6 - 40);
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned char>::__read[abi:nn200100](result, v19, &v22, &v21);
        if ((result == v19 || *result - 48 > 9) && v22 <= 0xFF && 255 - v22 >= v21)
        {
          *a2 = v21 + v22;
          return result;
        }
      }

      v19 = result;
    }

LABEL_26:
    if (v19 != v11)
    {
      *a2 = 0;
      return result;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _WORD *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_31;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](result, v19, &v27, &v26);
        if (result != v19 && *result - 48 <= 9 || HIWORD(v27) || 0xFFFF - v27 < v26)
        {
        }

        v23 = v26 + v27;
        if (v21)
        {
          if ((v26 + v27) > 0x8000u)
          {
          }

          goto LABEL_33;
        }

        if ((v23 & 0x8000) == 0)
        {
          LOWORD(v25) = v26 + v27;
          goto LABEL_34;
        }
      }

      v19 = result;
    }

LABEL_31:
    if (v19 != v22)
    {
      v23 = 0;
      LOWORD(v25) = 0;
      if ((v21 & 1) == 0)
      {
LABEL_34:
        *a2 = v25;
        return result;
      }

LABEL_33:
      v25 = -v23;
      goto LABEL_34;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = v12;
      result = *(v6 - 40);
      while (*result == 48)
      {
        ++result;
        if (!--v20)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      result = *(v6 - 40);
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned short>::__read[abi:nn200100](result, v19, &v22, &v21);
        if ((result == v19 || *result - 48 > 9) && !HIWORD(v22) && 0xFFFF - v22 >= v21)
        {
          *a2 = v21 + v22;
          return result;
        }
      }

      v19 = result;
    }

LABEL_26:
    if (v19 != v11)
    {
      *a2 = 0;
      return result;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unsigned int *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_30;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](result, v19, &v26, &v25);
        if (result != v19 && *result - 48 <= 9 || __CFADD__(v26, v25))
        {
        }

        v23 = v26 + v25;
        if (v21)
        {
          if (v23 > 0x80000000)
          {
          }

          goto LABEL_32;
        }

        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_33;
        }
      }

      v19 = result;
    }

LABEL_30:
    if (v19 != v22)
    {
      v23 = 0;
      if ((v21 & 1) == 0)
      {
LABEL_33:
        *a2 = v23;
        return result;
      }

LABEL_32:
      v23 = -v23;
      goto LABEL_33;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _DWORD *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = v12;
      result = *(v6 - 40);
      while (*result == 48)
      {
        ++result;
        if (!--v20)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      result = *(v6 - 40);
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned int>::__read[abi:nn200100](result, v19, &v22, &v21);
        if ((result == v19 || *result - 48 > 9) && !__CFADD__(v22, v21))
        {
          *a2 = v22 + v21;
          return result;
        }
      }

      v19 = result;
    }

LABEL_25:
    if (v19 != v11)
    {
      *a2 = 0;
      return result;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, uint64_t *a2)
{
  v7 = *a2;
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  if ((result & 1) == 0)
  {
    if (*(a1 + 48))
    {
      v6 = a1 + 56;
    }

    else
    {
      v6 = *(a1 + 64);
    }
  }

  *a2 = v7;
  return result;
}

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unint64_t *a2)
{
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
  v7 = *(a1 + 8);
  if (*(v6 - 8) == 1 && (*(v6 - 32) & 0x80000000) != 0)
  {
    v11 = *(v6 - 40);
    v12 = strlen(v11);
    v19 = &v11[v12];
    if (v12)
    {
      v20 = *v11 == 45;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
    v22 = &v11[v20];
    if (v12 == v20)
    {
      result = &v11[v20];
    }

    else
    {
      v24 = v12 - v20;
      result = v22;
      while (*result == 48)
      {
        ++result;
        if (!--v24)
        {
          goto LABEL_30;
        }
      }
    }

    if (result != v19)
    {
      if (*result - 48 < 0xA)
      {
        result = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](result, v19, &v26, &v25);
        if (result != v19 && *result - 48 <= 9 || __CFADD__(v26, v25))
        {
        }

        v23 = v26 + v25;
        if (v21)
        {
          if (v23 > 0x8000000000000000)
          {
          }

          goto LABEL_32;
        }

        if ((v23 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }
      }

      v19 = result;
    }

LABEL_30:
    if (v19 != v22)
    {
      v23 = 0;
      if ((v21 & 1) == 0)
      {
LABEL_33:
        *a2 = v23;
        return result;
      }

LABEL_32:
      v23 = -v23;
      goto LABEL_33;
    }
  }

  if (v3)
  {
    v8 = a1 + 56;
  }

  else
  {
    v8 = *(a1 + 64);
  }

  v9 = *(v8 + 40 * v5 - 40);
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v4 = a1 + 56;
  }

  else
  {
    v4 = *(a1 + 64);
  }

  if ((result & 1) == 0)
  {
    v6 = *(a1 + 8);
    if (*(a1 + 48))
    {
      v7 = a1 + 56;
    }

    else
    {
      v7 = *(a1 + 64);
    }

    v8 = *(v7 + 40 * *(a1 + 40) - 40);
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, float *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, double *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeString(uint64_t a1, void *__dst, size_t __n)
{
  if (*(a1 + 48))
  {
    v6 = a1 + 56;
  }

  else
  {
    v6 = *(a1 + 64);
  }

  v7 = v6 + 40 * *(a1 + 40);
  if (*(v7 - 8) == 1 && (*(v7 - 32) & 0x80000000) != 0)
  {
    result = memcpy(__dst, *(v7 - 40), __n);
    *(__dst + __n) = 0;
  }

  else
  {
    if (__n)
    {
    }

    v8 = (*(a1 + 8) + 24);
  }

  return result;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeData(void *result, void *__dst)
{
  v2 = result[1];
  if ((*(v2 + 64) & 1) == 0)
  {
    v3 = result;
    v4 = *(*(v2 + 152) + 48 * *(v2 + 136) - 24);
    result = memcpy(__dst, *(v2 + 248), *(v2 + 232));
    v5 = *(v2 + 152) + 48 * *(v2 + 136);
    *(v5 - 16) += v4;
    v6 = v3[1];
    if ((*(v6 + 64) & 1) == 0)
    {
      v7 = *(v6 + 152);
      v8 = *(v6 + 136);
      if (*(v7 + 48 * v8 - 16) == *(v7 + 48 * v8 - 24))
      {
        *(v6 + 232) = 0;
        ++*(v6 + 240);
        v9 = *(v6 + 152) + 48 * *(v6 + 136);
        ++*(v9 - 16);
      }

      else
      {
        if (v14)
        {
          v11 = *&v15[7];
        }

        else
        {
          v11 = v15;
        }

        v12 = *(v6 + 152) + 48 * *(v6 + 136);
        re::DynamicString::format(&v16, "Failed to serialize BLOB %s. Expected number of bytes: %lld. Actual number of bytes: %lld.", v10, v11, *(v12 - 24), *(v12 - 16));
        if (v16 && (v17 & 1) != 0)
        {
          (*(*v16 + 40))();
        }

        result = v13;
        if (v13)
        {
          if (v14)
          {
            return (*(*v13 + 40))();
          }
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::read(uint64_t a1, uint64_t a2, re **this)
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

      return (*(*a1 + 56))(a1, "Stream schema doesn't support type '%s', reading field '%s'(%d)", v11, *(v12 + 40 * *(a1 + 40) - 40), *(v12 + 40 * *(a1 + 40) - 32));
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

_anonymous_namespace_ *re::DynamicOverflowArray<re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (!*result)
  {
    v7 = *(v1 + 1);
    result = re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::setCapacity(v1, v7 + 1);
    *(v1 + 4) += 2;
    return result;
  }

  v2 = *(result + 1);
  if (*(result + 16))
  {
    v4 = v2 + 1;
    if (v4 < 5)
    {
      return result;
    }

    v6 = 8;
    goto LABEL_12;
  }

  v3 = *(result + 3);
  v5 = v2 >= v3;
  v4 = v2 + 1;
  v5 = !v5 || v3 >= v4;
  if (!v5)
  {
    v6 = 2 * v3;
LABEL_12:
    if (v6 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    return re::DynamicOverflowArray<re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>,4ul>::setCapacity(result, v8);
  }

  return result;
}

uint64_t *re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyInputStreamAdaptor>::setError(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  re::DynamicString::setCapacity(&v30, 0);
  va_copy(v29, va);
  re::DynamicString::vassignf(&v30, a3, va);
  if (v18)
  {
    v11 = *&v19[7];
  }

  else
  {
    v11 = v19;
  }

  if (v31)
  {
    v12 = v32;
  }

  else
  {
    v12 = &v31 + 1;
  }

  re::DynamicString::format(&v20, "Failed to %s %s. Reason: %s", v10, "deserialize", v11, v12);
  *&v24 = 400;
  *(&v24 + 1) = re::FoundationErrorCategory(void)::instance;
  v13 = v22;
  v27 = v22;
  v28 = v23;
  v14 = v20;
  v15 = v21;
  v25 = v20;
  v26 = v21;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1, &v24);
  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))(v14, v13);
  }

  if (v17 && (v18 & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  result = v30;
  if (v30)
  {
    if (v31)
    {
      return (*(*v30 + 40))();
    }
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::ContextJSON<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,true>::get_label<unsigned long long>(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 32) != 1)
  {
    return 0;
  }

  v22[7] = v3;
  v22[8] = v4;
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v10 = strlen(*a1);
  v17 = &v9[v10];
  if (v10)
  {
    v18 = v10;
    v19 = v9;
    while (*v19 == 48)
    {
      ++v19;
      if (!--v18)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v19 = v9;
  }

  if (v19 == v17)
  {
LABEL_18:
    if (v17 != v9)
    {
      *a3 = 0;
      return 1;
    }

LABEL_20:
    return 1;
  }

  if (*v19 - 48 >= 0xA)
  {
    v17 = v19;
    goto LABEL_18;
  }

  v20 = std::__itoa::__traits<unsigned long long>::__read[abi:nn200100](v19, v17, v22, &v21);
  if (v20 != v17 && *v20 - 48 <= 9 || __CFADD__(v22[0], v21))
  {
    goto LABEL_20;
  }

  *a3 = v22[0] + v21;
  return 1;
}

unsigned int *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, char *a2, int *a3)
{
  if (*(a1 + 40))
  {
    return 0;
  }

  v19 = v3;
  v20 = v4;
  if (result)
  {
    v9 = result;
    v10 = *(result + 11);
    if (*(result + 11))
    {
      if (v10 != 3 || (*(result + 1) + 48 * *result) == rapidjson::GenericValue<rapidjson::UTF8<char>,re::internal::RapidJSONPoolAllocator<re::internal::RapidJSONAllocator>>::FindMember(result, "@ref"))
      {
        v10 = 2;
        v11 = 1;
      }

      else
      {
        v11 = 1;
        v10 = 1;
      }
    }

    else
    {
      v11 = *(result + 11);
    }

    *a3 = v10;
    v12[0] = 9;
    v13 = 0;
    v14 = a2;
    v15 = 0;
    v16 = v11;
    v17 = 0;
    v18 = v9;
    return 1;
  }

  return result;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endPointer(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v4 - 16);
    }

    else
    {
      if (v8)
      {
        v6 = *&v9[7];
      }

      else
      {
        v6 = v9;
      }

      re::DynamicString::format(&v10, "Failed to deserialize pointer %s. No value was provided.", v5, v6);
      if (v10 && (v11 & 1) != 0)
      {
        (*(*v10 + 40))();
      }

      result = v7;
      if (v7)
      {
        if (v8)
        {
          return (*(*v7 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v21);
  if (v21[0] == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), v23), v23[0] == 1))
    {
    }
  }

  result = re::TypeMemberCollection::TypeMemberCollection(v18, *a3, a3[2]);
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
        re::TypeRegistry::typeInfo(v16, *v17, v23);
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

uint64_t *re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(uint64_t a1, const re::StringID *a2, uint64_t a3)
{
  result = re::TypeRegistry::typeID(&v7, *(a1 + 272), a2);
  if (v7)
  {
    v6 = v7;
  }

  return result;
}

uint64_t re::serializeBool<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, BOOL *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeChar<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeI8<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeI16<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeI32<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeI64<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeU8<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeU16<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeU32<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _DWORD *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeU64<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeFloat<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeDouble<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
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
}

uint64_t re::serializeCString<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *this, re::TypeInfo *a6, int a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_23:
      goto LABEL_24;
    }

    v15 = **(this + 2);
    v16 = **(a6 + 2);
    if (v15 != v16)
    {
      goto LABEL_23;
    }

    v18 = WORD1(v15) == WORD1(v16);
    v17 = (v16 ^ v15) & 0xFFFFFF00000000;
    v18 = v18 && v17 == 0;
    if (!v18)
    {
      goto LABEL_23;
    }
  }

LABEL_4:
  if (!a7)
  {
    v24 = 2 * (*a4 != 0);
    {
LABEL_24:
      v14 = 0;
      return v14 & 1;
    }

    if (!v24)
    {
      if (*a4)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      goto LABEL_36;
    }

    if (v24 != 2)
    {
      if (v24 == 1)
      {
LABEL_17:
        goto LABEL_24;
      }

LABEL_36:
      if (*a4 && *(a1 + 64) == 1)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      goto LABEL_39;
    }

    if (*a4)
    {
      v19 = strlen(*a4);
    }

    else
    {
      v19 = 0;
    }

    v23 = v19;
    {
      goto LABEL_36;
    }

    v20 = *a4;
    v21 = v23;
    if (*a4 && v23 == v19)
    {
      if (!v23)
      {
LABEL_35:
        v20[v21] = 0;
        goto LABEL_36;
      }
    }

    else
    {
      if (v20)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      {
        goto LABEL_24;
      }

      if (((v21 == -1) << 63) >> 63 != (v21 == -1))
      {
        goto LABEL_24;
      }

      v20 = (*(**(a1 + 48) + 32))(*(a1 + 48), v21 + 1, 0);
      *a4 = v20;
      if (!v21)
      {
        goto LABEL_35;
      }
    }

    v20 = *a4;
    goto LABEL_35;
  }

  v24 = 0;
  v14 = 0;
  if (v13)
  {
    if (!v24)
    {
LABEL_12:
LABEL_39:
      v14 = *(a1 + 64) ^ 1;
      return v14 & 1;
    }

    if (v24 != 1)
    {
      v23 = 0;
      {
        if (v23)
        {
        }
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  return v14 & 1;
}

uint64_t re::serializeStringID<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *this, re::TypeInfo *a6, int a7)
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
    goto LABEL_26;
  }

LABEL_14:
  if (!a7)
  {
    v32 = 0;
    {
      goto LABEL_26;
    }

    v19 = v32;
    if (v32)
    {
      v20 = *(a1 + 24);
      v21 = (*(**(v20 + 8) + 24))(*(v20 + 8));
      if (v19 > (*(**(v20 + 8) + 32))(*(v20 + 8)) + v21)
      {
        v22 = *(a1 + 24);
        (*(**(v22 + 8) + 24))(*(v22 + 8));
        (*(**(v22 + 8) + 32))(*(v22 + 8));
        goto LABEL_26;
      }

      if (((v19 == -1) << 63) >> 63 != (v19 == -1))
      {
        goto LABEL_26;
      }

      v26 = (*(**(a1 + 56) + 32))(*(a1 + 56), v19 + 1, 0);
      v26[v19] = 0;
      v30 = 0;
      v31 = &str_67;
      v28 = re::StringID::operator=(a4, &v30);
      if (v30)
      {
        if (v30)
        {
        }
      }

      v24 = *(**(a1 + 56) + 40);
    }

    else
    {
      v30 = 0;
      v31 = &str_67;
      v23 = re::StringID::operator=(a4, &v30);
      if ((v30 & 1) == 0)
      {
LABEL_32:
        v25 = *(a1 + 64) ^ 1;
        return v25 & 1;
      }
    }

    v24();
    goto LABEL_32;
  }

  v30 = 0;
  {
    if (v30)
    {
    }

    goto LABEL_32;
  }

LABEL_26:
  v25 = 0;
  return v25 & 1;
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = v5 | 0xFFFFFFFF00000000;
  v8 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    *(result + 4) = v6;
    *(result + 16) = a3;
    ++*(a1 + 328);
  }

  else
  {
    ++*(a1 + 328);
    *(*(a1 + 304) + 24 * v8 + 16) = a3;
  }

  return result;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v41 = *MEMORY[0x1E69E9840];
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_17:
      goto LABEL_41;
    }

    v17 = **(this + 2);
    v18 = **(a6 + 2);
    if (v17 != v18)
    {
      goto LABEL_17;
    }

    v20 = WORD1(v17) == WORD1(v18);
    v19 = (v18 ^ v17) & 0xFFFFFF00000000;
    v20 = v20 && v19 == 0;
    if (!v20)
    {
      goto LABEL_17;
    }
  }

LABEL_4:
  if (!a7)
  {
    v13 = *this;
    v14 = **(this + 2);
    v37[0] = 0x258C98EAAF29A10ALL;
    v37[1] = "CallbackSerializerAttribute";
    v15 = re::TypeRegistry::typeID(buf, v13, v37);
    if (*buf && (v33 = *&buf[8], v34 = v14, LODWORD(v35) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v13 + 768, &v33)) != 0))
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    if (v37[0])
    {
      if (v37[0])
      {
      }
    }

    v21 = *v16;
    v22 = *(a1 + 264);
    v37[0] = 0;
    {
      v23 = *(a1 + 56);
      v35 = 0;
      v36 = 0;
      v33 = v23;
      v34 = 0;
      re::DynamicString::setCapacity(&v33, 0);
      if (v37[0])
      {
        re::DynamicString::resize(&v33, v37[0], 0);
        if (v34)
        {
          v24 = v35;
        }

        else
        {
          v24 = &v34 + 1;
        }
      }

      if (v34)
      {
        v25 = v35;
      }

      else
      {
        v25 = &v34 + 1;
      }

      v26 = (*(v21 + 80))(*(a1 + 48), v22, v21, a4, v25);
      if ((v26 & 1) == 0)
      {
        v27 = *re::foundationSerializationLogObjects(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          if (v34)
          {
            v28 = v35;
          }

          else
          {
            v28 = &v34 + 1;
          }

          v29 = v27;
          v30 = re::TypeInfo::name(this)[1];
          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v28;
          v39 = 2080;
          v40 = v30;
          _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_INFO, "Failed to parse %s: %s (type %s) using deserialization callback - skipping.", buf, 0x20u);
        }
      }

      if (v33 && (v34 & 1) != 0)
      {
        (*(*v33 + 40))();
      }

      goto LABEL_40;
    }

LABEL_41:
    v31 = 0;
    return v31 & 1;
  }

  v33 = 0;
  {
    goto LABEL_41;
  }

  if (v33)
  {
  }

LABEL_40:
  v31 = *(a1 + 64) ^ 1;
  return v31 & 1;
}

uint64_t re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v24, 0, 36);
          *&v24[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v24, v9, v8);
          v11 = *v24;
          *v24 = *a1;
          *a1 = v11;
          v12 = *&v24[16];
          v13 = *(a1 + 16);
          *&v24[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v24[24];
          *&v24[24] = *(a1 + 24);
          v14 = *&v24[32];
          *(a1 + 24) = v15;
          ++*&v24[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                *(v17 + 4) = *(v13 + 4);
                *(v17 + 16) = *(v13 + 16);
              }

              v13 += 24;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable(v24);
        }
      }

      else
      {
        if (v8)
        {
          v20 = 2 * v7;
        }

        else
        {
          v20 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v18 = *(a1 + 16);
    v19 = *(v18 + 24 * v4);
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *(v18 + 24 * v4);
    *(a1 + 36) = v19 & 0x7FFFFFFF;
  }

  v21 = 24 * v4;
  *(v18 + v21) = v19 | 0x80000000;
  v22 = *(a1 + 8);
  *(v18 + v21) = *(v22 + 4 * a2) | 0x80000000;
  *(v22 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v18 + 24 * v4;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *this, re::TypeInfo *a6, char a7)
{
  if (this != a6)
  {
    if (*this != *a6)
    {
      if (re::areSameTranslatedVersion(this, a6, a3))
      {
        goto LABEL_4;
      }

LABEL_15:
      goto LABEL_16;
    }

    v13 = **(this + 2);
    v14 = **(a6 + 2);
    if (v13 != v14)
    {
      goto LABEL_15;
    }

    v16 = WORD1(v13) == WORD1(v14);
    v15 = (v14 ^ v13) & 0xFFFFFF00000000;
    v16 = v16 && v15 == 0;
    if (!v16)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  v33 = 0;
  {
    if (v33 == 1)
    {
      v32 = 0;
      if ((*(a1 + 64) & 1) == 0)
      {
        v19 = v32;
        if (*(a1 + 408) <= v32)
        {
        }

        else
        {
          re::internal::SharedObjectGraph::typeID(&v28, (a1 + 336), v32);
          if (v28 == *this)
          {
            v20 = **(this + 2);
            if (v29 == v20 && v30 == WORD1(v20) && ((v31 ^ HIDWORD(v20)) & 0xFFFFFF) == 0)
            {
              if ((a7 & 1) == 0)
              {
                if (*a4)
                {
                  v26 = *a4;
                  if (v26 != re::internal::SharedObjectGraph::object((a1 + 336), v19))
                  {
                    (*(**(a1 + 48) + 40))(*(a1 + 48), *a4);
                    *a4 = 0;
                  }
                }

                *a4 = re::internal::SharedObjectGraph::object((a1 + 336), v19);
                if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
                {
                  re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v19);
                }
              }

              goto LABEL_38;
            }
          }

          v21 = *(a1 + 272);
          re::internal::SharedObjectGraph::typeID(&v28, (a1 + 336), v19);
          re::TypeRegistry::typeName(v21, &v28);
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

LABEL_38:
        v17 = *(a1 + 64) ^ 1;
        return v17 & 1;
      }

      if ((a7 & 1) == 0 && *a4)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      v28 = 0;
      {
        v22 = v28;
        if (((v28 == -1) << 63) >> 63 == (v28 == -1))
        {
          v23 = (*(**(a1 + 48) + 32))(*(a1 + 48), v28 + 1, 0);
          v24 = v23;
          if ((a7 & 1) == 0)
          {
            *a4 = v23;
          }

          if (v22)
          {
          }

          *(v24 + v22) = 0;
          v25 = **(this + 2);
          *&v27 = *this;
          *(&v27 + 1) = v25;
          re::internal::SharedObjectGraph::addObject(a1 + 336, v24, &v27);
          goto LABEL_38;
        }
      }
    }
  }

LABEL_16:
  v17 = 0;
  return v17 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, int a3, void **a4, re::TypeInfo *this, const re::TypeInfo *a6, int a7)
{
  v90 = *MEMORY[0x1E69E9840];
  isPointerToPolymorphicType = re::TypeInfo::isPointerToPolymorphicType(this);
  if (this == a6)
  {
    goto LABEL_4;
  }

  if (*this == *a6)
  {
    v20 = **(this + 2);
    v21 = **(a6 + 2);
    if (v20 == v21)
    {
      v23 = WORD1(v20) == WORD1(v21);
      v22 = (v21 ^ v20) & 0xFFFFFF00000000;
      v23 = v23 && v22 == 0;
      if (v23)
      {
        goto LABEL_4;
      }
    }
  }

  else if (re::areSameTranslatedVersion(this, a6, v13))
  {
LABEL_4:
    v15 = 1;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v24 = re::TypeInfo::name(this), v25 = re::TypeInfo::name(a6), !re::StringID::operator==(v24, v25))))
  {
    goto LABEL_28;
  }

  v15 = 0;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v81, &buf + 8);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v79, &buf + 8);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v19 = *v82;
    v78[0] = v81[0];
    v78[1] = v19;
    if (!v81[0])
    {
      goto LABEL_8;
    }

LABEL_11:
    re::TypeRegistry::typeInfo(*this, v78, &buf);
    re::TypeInfo::TypeInfo(v76, &buf + 8);
    v75 = 0;
    {
      goto LABEL_28;
    }

    if (v75 != 1)
    {
      if (!v75)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(v76, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }

        goto LABEL_115;
      }

      if (isPointerToPolymorphicType)
      {
        {
          v33 = *(*(a1 + 152) + 48 * *(a1 + 136) - 8);
          if (*v33)
          {
            v34 = *(v33 + 8);
            if ((*(v34 + 11) & 0x1000) != 0)
            {
              v35 = v34;
            }

            else
            {
              v35 = *(v34 + 1);
            }

            if (v35)
            {
              v36 = *v35;
              if (*v35)
              {
                v37 = v35[1];
                if (v37)
                {
                  v38 = (v35 + 2);
                  do
                  {
                    v36 = 31 * v36 + v37;
                    v39 = *v38++;
                    v37 = v39;
                  }

                  while (v39);
                }
              }
            }

            else
            {
              v36 = 0;
            }

            v47 = 2 * v36;
            v87[0] = 2 * v36;
            v87[1] = v35;
            v48 = *(v80 + 22);
            v49 = (v48 - 1);
            if (v48 == 1)
            {
              goto LABEL_80;
            }

            v50 = 0;
            while (1)
            {
              re::TypeInfo::derivedClass(&buf, v79, v50);
              v51 = re::TypeInfo::polymorphicObjectName(&buf);
              if ((*v51 ^ v47) <= 1)
              {
                v52 = v51[1];
                if (v52 == v35 || !strcmp(v52, v35))
                {
                  break;
                }
              }

              if (v49 == ++v50)
              {
                goto LABEL_80;
              }
            }

            v53 = *v89;
            v85 = buf;
            v86 = v53;
            if (!buf)
            {
LABEL_80:
              v54 = re::TypeInfo::polymorphicObjectName(v79);
              if ((*v54 ^ v47) > 1 || (v54 = v54[1], v54 != v35) && (v54 = strcmp(v54, v35), v54) || (v55 = *v80, v85 = v79[0], v86 = v55, !v79[0]))
              {
                v59 = *re::foundationSerializationLogObjects(v54);
                if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                {
                  v69 = v59;
                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = v35;
                  _os_log_error_impl(&dword_1E1C61000, v69, OS_LOG_TYPE_ERROR, "Skipping unknown polymorphic type. Type name = %s", &buf, 0xCu);

                  if (a7)
                  {
                    goto LABEL_112;
                  }
                }

                else if (a7)
                {
LABEL_112:
                  if ((*(a1 + 64) & 1) == 0)
                  {
                    v68 = *(a1 + 152) + 48 * *(a1 + 136);
                    ++*(v68 - 16);
                  }

                  re::StringID::destroyString(v87);
                  goto LABEL_115;
                }

                if (*a4)
                {
                  re::TypeInfo::releaseInstance(v76, *a4, *(a1 + 48), *(a1 + 264));
                  *a4 = 0;
                }

                goto LABEL_112;
              }
            }

            if ((a7 & 1) == 0 && *a4)
            {
              re::TypeInfo::releaseInstance(v76, *a4, *(a1 + 48), *(a1 + 264));
              *a4 = 0;
            }

            re::TypeRegistry::typeInfo(v79[0], &v85, &buf);
            re::TypeInfo::TypeInfo(v84, &buf + 8);
            if (v15)
            {
              v56 = *(a1 + 272);
              if (*this == v56)
              {
                re::TypeInfo::operator=(v76, v84);
                v57 = v85;
                v58 = v86;
                goto LABEL_103;
              }
            }

            else
            {
              v56 = *(a1 + 272);
            }

            v61 = re::TypeInfo::name(v84);
            v62 = re::TypeRegistry::typeInfo(&buf, v56, v61);
            if (buf != 1)
            {
              v65 = *re::foundationSerializationLogObjects(v62);
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                v66 = v65;
                v67 = re::TypeInfo::name(v84)[1];
                LODWORD(buf) = 136315138;
                *(&buf + 4) = v67;
                _os_log_impl(&dword_1E1C61000, v66, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", &buf, 0xCu);
              }

              *&buf = 0;
              *(&buf + 1) = 0xFFFFFFFFLL;
              (*(*a1 + 16))(a1, 0, &buf);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, v35, 0, 0, v84, v84, 1);
              }

              goto LABEL_111;
            }

            re::TypeInfo::operator=(v76, &buf + 8);
            v57 = v76[0];
            v58 = *v77;
LABEL_103:
            Instance = re::TypeInfo::createInstance(v76, *(a1 + 48), *(a1 + 264));
            v64 = Instance;
            if ((a7 & 1) == 0)
            {
              *a4 = Instance;
              *&buf = v57;
              *(&buf + 1) = v58;
              re::internal::setActualType(a4, this, &buf);
            }

            v83[0] = v57;
            v83[1] = v58;
            (*(*a1 + 16))(a1, v64, v83);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, v35, 0, v64, v76, v84, v64 == 0);
            }

LABEL_111:
            (*(*a1 + 24))(a1);
            goto LABEL_112;
          }
        }

LABEL_115:
        v26 = *(a1 + 64) ^ 1;
        return v26 & 1;
      }

      if (!a7)
      {
        v42 = *a4;
        if (!*a4)
        {
          v42 = re::TypeInfo::createInstance(v81, *(a1 + 48), 0);
        }

        v43 = 0;
        *a4 = v42;
        goto LABEL_67;
      }

      v40 = *(a1 + 272);
      if (v81[0] != v40)
      {
        v41 = re::TypeInfo::name(v81);
        re::TypeRegistry::typeInfo(&buf, v40, v41);
        if ((buf & 1) == 0)
        {
          v42 = 0;
          v43 = 1;
          goto LABEL_67;
        }

        re::TypeInfo::operator=(v81, &buf + 8);
      }

      v42 = re::TypeInfo::createInstance(v81, *(a1 + 48), 0);
      v43 = 0;
LABEL_67:
      v46 = *v82;
      *&v72 = v81[0];
      *(&v72 + 1) = v46;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v42, &v72);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v42, v81, v79, v43);
      }

      if (*(a1 + 336) == 1)
      {
        --*(a1 + 488);
        ++*(a1 + 496);
      }

      goto LABEL_115;
    }

    LODWORD(v87[0]) = 0;
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    v28 = LODWORD(v87[0]);
    if (*(a1 + 408) > LODWORD(v87[0]))
    {
      re::internal::SharedObjectGraph::typeID(v74, (a1 + 336), v87[0]);
      if (!re::internal::areCompatible(this, v74))
      {
        v44 = re::TypeInfo::name(v81)[1];
        v45 = *(a1 + 272);
        re::internal::SharedObjectGraph::typeID(&buf, (a1 + 336), v28);
        v70 = v44;
        v71 = *(re::TypeRegistry::typeName(v45, &buf) + 1);
        v16 = "Invalid reference. Objects are not compatible. Expected type %s. Actual type %s.";
        goto LABEL_64;
      }

      if (a7)
      {
        goto LABEL_115;
      }

      if (*a4)
      {
        v29 = *a4;
        if (v29 != re::internal::SharedObjectGraph::object((a1 + 336), v28))
        {
          re::TypeInfo::releaseInstance(v76, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }
      }

      v30 = re::internal::SharedObjectGraph::object((a1 + 336), v28);
      v31 = v30;
      *a4 = v30;
      if ((*(v77 + 49) & 2) != 0)
      {
        v60 = v77[4];
        if (v60)
        {
          v60(v30);
        }

        if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
        {
          re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v28);
        }
      }

      else
      {
        re::internal::SharedObjectGraph::typeID(v84, (a1 + 336), v28);
        if (!v84[0])
        {
          v70 = v28;
          v16 = "TypeID for shared object at index %d is invalid.";
          goto LABEL_64;
        }

        re::TypeRegistry::typeInfo(v84[0], v84, &buf);
        if ((buf & 1) == 0)
        {
          v70 = v28;
          v16 = "No TypeInfo found for shared object at index %d.";
          goto LABEL_64;
        }

        v32 = re::TypeInfo::createInstance((&buf + 8), *(a1 + 48), *(a1 + 264));
        *a4 = v32;
        if ((re::TypeInfo::copy((&buf + 8), v32, v31, *(a1 + 48), *(a1 + 264)) & 1) == 0)
        {
          v70 = re::TypeInfo::name((&buf + 8))[1];
          v16 = "Failed to copy non-shareable object of type '%s'.";
LABEL_64:
          v17 = a1;
          v18 = 0;
          goto LABEL_9;
        }
      }

      re::internal::SharedObjectGraph::typeID(v73, (a1 + 336), v28);
      re::TypeInfo::setActualTypeForPointer(this, a4, v73);
      goto LABEL_115;
    }

    v70 = LODWORD(v87[0]);
    v16 = "Invalid reference ID for shared object: %u";
    goto LABEL_64;
  }

  re::internal::actualType(v78, a4, this);
  if (v78[0])
  {
    goto LABEL_11;
  }

LABEL_8:
  v70 = re::TypeInfo::name(this)[1];
  v16 = "Failed to get actual type of polymorphic object. Type %s.";
  v17 = a1;
  v18 = a2;
LABEL_9:
LABEL_28:
  v26 = 0;
  return v26 & 1;
}

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyInputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(uint64_t result, _DWORD *a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    if (result)
    {
      if ((*(v3 + 40) & 1) == 0)
      {
        v4 = *(v3 + 128) + 48 * *(v3 + 112);
        ++*(v4 - 16);
      }
    }
  }

  return result;
}

uint64_t re::serializeJson(uint64_t a1, uint64_t a2, uint64_t a3, re **a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7 = a7;
  v74[3] = 0;
  v74[4] = 0;
  v75 = 0;
  v74[0] = &unk_1F5D18218;
  v74[1] = a2;
  v74[2] = a7;
  *&v76[0].var0 = 0xFA473DDF415427B4;
  v76[0].var1 = "JSON-StreamAdaptor-SerializerV1";
  v34 = &unk_1F5D182C8;
  v12 = re::StringID::StringID(&v35, v76);
  v44 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41[0] = 0;
  v45 = 15;
  v47 = 1024;
  v46 = 0;
  if ((atomic_load_explicit(&qword_1EE1C3C80, memory_order_acquire) & 1) == 0)
  {
    v12 = __cxa_guard_acquire(&qword_1EE1C3C80);
    if (v12)
    {
      re::Defaults::intValue(&v31, "maxSerializationDepth", v29);
      if (v31)
      {
        v30 = SHIDWORD(v31);
      }

      else
      {
        v30 = 0;
      }

      _MergedGlobals_555 = v30;
      __cxa_guard_release(&qword_1EE1C3C80);
    }
  }

  if (_MergedGlobals_555)
  {
    v47 = _MergedGlobals_555;
  }

  v50[4] = 0;
  v51 = 0;
  v48 = 0u;
  v49 = 0u;
  memset(v50, 0, 28);
  v55 = 0u;
  v56 = 0u;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v58 = 0x7FFFFFFFLL;
  v34 = &unk_1F5D18260;
  v59 = 1;
  memset(v60, 0, sizeof(v60));
  v61 = 0;
  v62 = 0x7FFFFFFFLL;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v63 = 0;
  v73 = 0;
  v67 = 0u;
  v68 = 0u;
  v69 = 0;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  if (*&v76[0].var0)
  {
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v33);
  re::TypeRegistry::typeInfo(*a4, a4, v76);
  re::TypeInfo::TypeInfo(&v31, &v76[0].var1);
  if (v32 != 8 || (v13 = re::TypeInfo::name(&v31), *v13 >> 1 == 94623636) && ((v14 = v13[1], v14 == "char*") || !strcmp(v14, "char*")) || (v15 = re::TypeInfo::name(&v31), *v15 >> 1 == 0x134375A94D9F7110) && ((v16 = v15[1], v16 == "DynamicString") || !strcmp(v16, "DynamicString")))
  {
LABEL_16:
    v19 = 0;
    goto LABEL_17;
  }

  v17 = re::TypeInfo::name(&v31);
  if (*v17 >> 1 == 0x22C6ED80D0CLL)
  {
    v18 = v17[1];
    if (v18 != "StringID")
    {
      v19 = strcmp(v18, "StringID") != 0;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v19 = 1;
LABEL_17:
  LOBYTE(v59) = 0;
  v52 = a6;
  v21 = v53;
  if (*(v53 + 6) != v54)
  {
  }

  v36 = v74;
  v37 = 0;
  v38 = 0;
  if (v7)
  {
    v39 = v7;
  }

  else
  {
  }

  v40 = v7;
  *&v76[0].var0 = 0;
  re::Optional<re::DetailedError>::operator=(v41, v76);
  if (v76[0].var0 == 1 && v76[1].var1 && (*&v76[2].var0 & 1) != 0)
  {
    (*(*v76[1].var1 + 40))();
  }

  v42[0] = v39;
  re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(v42, 0x40uLL);
  ++v43;
  *&v76[0].var0 = 0;
  *(v76 + 4) = 0u;
  memset(&v76[1].var0 + 1, 0, 28);
  if (!re::internal::RapidJSONAllocator::InstanceData::instance(void)::s_instance)
  {
  }

  v50[0] = v40;
  re::DynamicArray<char>::setCapacity(v50, 0);
  ++LODWORD(v50[3]);
  v24 = (*(*v39 + 32))(v39, 72, 8);
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 512;
  *(v24 + 56) = 324;
  *(v24 + 60) = 2304;
  *(&v48 + 1) = v24;
  *(v24 + 64) = 0x100000001;
  v25 = (*(*v39 + 32))(v39, 48, 8);
  *v25 = 0u;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  *(v25 + 40) = 256;
  *&v48 = v25;
  v26 = *(&v48 + 1);
  **(&v48 + 1) = v25;
  *(v26 + 60) = 0;
  *(v26 + 32) = *(v26 + 24);
  v34[6](&v34);
  if (v19)
  {
    if ((v41[0] & 1) == 0)
    {
      (v34[9])(&v34, a1, 0, a5, &v31, &v31, 0);
    }
  }

  else
  {
    v27 = 0;
    {
      goto LABEL_36;
    }

    if ((v41[0] & 1) == 0)
    {
      (v34[9])(&v34, a1, 0, a5, &v31, &v31, 0);
    }
  }

  v34[7](&v34);
  v27 = v41[0] ^ 1;
LABEL_36:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v33);
  v34 = &unk_1F5D18260;
  if (*(&v70 + 1))
  {
    if (v73)
    {
      (*(**(&v70 + 1) + 40))();
    }

    v73 = 0;
    v71 = 0uLL;
    *(&v70 + 1) = 0;
    ++v72;
  }

  if (*(&v67 + 1))
  {
    if (v70)
    {
      (*(**(&v67 + 1) + 40))();
    }

    *&v70 = 0;
    v68 = 0uLL;
    *(&v67 + 1) = 0;
    ++v69;
  }

  if (v63)
  {
    if (v67)
    {
      (*(*v63 + 40))();
    }

    *&v67 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    ++v66;
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v60);
  return v27 & 1;
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
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

uint64_t re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, char *__s, int a3)
{
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), __s);
    }

    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    v8[0] = 2;
    v9 = a3 | 0x20;
    v10 = __s;
    v11 = 0u;
    v12 = 0u;
  }

  return v3 ^ 1u;
}

_anonymous_namespace_ *re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::EndObject(*(result + 21));
    v2 = *(v1 + 16) + 48 * *(v1 + 14);
    ++*(v2 - 16);
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18260;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
}

void anonymous namespace::LegacyOutputStreamAdaptor::~LegacyOutputStreamAdaptor(_anonymous_namespace_::LegacyOutputStreamAdaptor *this)
{
  *this = &unk_1F5D18218;
  if (*(this + 3))
  {
    (*(**(this + 2) + 40))(*(this + 2), *(this + 3));
    *(this + 3) = 0;
    *(this + 10) = 0;
  }
}

{

  JUMPOUT(0x1E6906520);
}

uint64_t anonymous namespace::LegacyOutputStreamAdaptor::Next(_anonymous_namespace_::LegacyOutputStreamAdaptor *this, void **a2, int *a3)
{
  {
    v7 = *(this + 3);
    if (!v7)
    {
      v7 = (*(**(this + 2) + 32))(*(this + 2), 256, 0);
      *(this + 3) = v7;
    }

    v8 = *(this + 10);
    *a2 = (v7 + v8);
    *a3 = 256 - v8;
    *(this + 10) = 256;
    return 1;
  }

  return result;
}

uint64_t anonymous namespace::LegacyOutputStreamAdaptor::WriteBuffer(_anonymous_namespace_::LegacyOutputStreamAdaptor *this)
{
  if (!*(this + 3))
  {
    return 0;
  }

  if (!*(this + 10))
  {
    return 1;
  }

  v2 = (*(**(this + 1) + 16))(*(this + 1));
  v3 = *(this + 10);
  v4 = v2 == v3;
  if (v2 == v3)
  {
    *(this + 4) += v2;
  }

  else
  {
    (*(**(this + 2) + 40))(*(this + 2), *(this + 3));
    *(this + 3) = 0;
  }

  *(this + 10) = 0;
  return v4;
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D182C8;
  re::HashTable<unsigned int,re::RenderGraphOptimizerProcessor::process(re::RenderGraphCompiled &)::Lifespan,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::~HashTable((a1 + 288));
  re::DynamicArray<unsigned long>::deinit(a1 + 216);
  re::DynamicArray<unsigned long>::deinit(a1 + 120);
  if (*(a1 + 64) == 1)
  {
    re::DynamicString::deinit((a1 + 88));
  }

  re::StringID::destroyString((a1 + 8));
  return a1;
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D18260;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
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

void re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      if (*this == *(a1 + 272))
      {
        if (v12 != 0x7FFFFFFF)
        {
          return *(*(a1 + 304) + 24 * v12 + 16);
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
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

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

void re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

uint64_t (*re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, char *__s, int, int, re *this, re::TypeInfo *)
{
  if (*a2 == *(a1 + 272))
  {
    v9 = v2;
    v10 = v3;
    if (v8 != 0x7FFFFFFF)
    {
      return *(*(a1 + 304) + 24 * v8 + 16);
    }
  }

  return v4;
}

void *re::Encoder<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,anonymous namespace::LegacyOutputStreamAdaptor>::close(void *result)
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

uint64_t *re::Serializer<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::setError(uint64_t a1, const char *a2, const char *a3, ...)
{
  va_start(va, a3);
  v27 = 0;
  v28 = 0;
  v29 = 0;
  re::DynamicString::setCapacity(&v26, 0);
  va_copy(v25, va);
  re::DynamicString::vassignf(&v26, a3, va);
  if (v14)
  {
    v7 = *&v15[7];
  }

  else
  {
    v7 = v15;
  }

  if (v27)
  {
    v8 = v28;
  }

  else
  {
    v8 = &v27 + 1;
  }

  re::DynamicString::format(&v16, "Failed to %s %s. Reason: %s", v6, "serialize", v7, v8);
  *&v20 = 400;
  *(&v20 + 1) = re::FoundationErrorCategory(void)::instance;
  v9 = v18;
  v23 = v18;
  v24 = v19;
  v10 = v16;
  v11 = v17;
  v21 = v16;
  v22 = v17;
  re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::setError(a1 + 24, &v20);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))(v10, v9);
  }

  if (v13 && (v14 & 1) != 0)
  {
    (*(*v13 + 40))();
  }

  result = v26;
  if (v26)
  {
    if (v27)
    {
      return (*(*v26 + 40))();
    }
  }

  return result;
}

uint64_t re::serializeType<re::EncoderRapidJSON<anonymous namespace::LegacyOutputStreamAdaptor,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, char *__s, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7)
{
  v209 = *MEMORY[0x1E69E9840];
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
    goto LABEL_271;
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
    v30 = re::TypeInfo::name(this)[1];
    v31 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
    if (v31)
    {
      v32 = *(v31 + 16);
    }

    else
    {
      v32 = 0xFFFFFFFFLL;
    }

    v45 = re::DataArray<re::TextureAtlasTile>::tryGet(*a6 + 96, **(a6 + 2));
    if (v45)
    {
      v46 = *(v45 + 16);
    }

    else
    {
      v46 = 0xFFFFFFFFLL;
    }

    v180 = v32;
    v183 = v46;
    v177 = v30;
    v23 = "Cannot serialize type %s version %u as version %u. Downgrading versions is not supported.";
    goto LABEL_83;
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
          goto LABEL_77;
        }

        if (this == a6)
        {
          goto LABEL_217;
        }

        if (*this == *a6)
        {
          v64 = **(this + 2);
          v65 = **(a6 + 2);
          if (v64 == v65 && WORD1(v64) == WORD1(v65) && ((v65 ^ v64) & 0xFFFFFF00000000) == 0)
          {
            goto LABEL_123;
          }

          v24 = 2;
        }

        else
        {
          if (re::areSameTranslatedVersion(this, a6, a3))
          {
            goto LABEL_123;
          }

          v24 = *(this + 12);
        }

        if (v24 != *(a6 + 12))
        {
          goto LABEL_271;
        }

        v66 = re::TypeInfo::name(this);
        v67 = re::TypeInfo::name(a6);
        if (!re::StringID::operator==(v66, v67))
        {
          goto LABEL_271;
        }

LABEL_123:
        if (*this != *a6)
        {
          v68 = re::areSameTranslatedVersion(this, a6, a3);
          goto LABEL_218;
        }

        v117 = **(this + 2);
        v118 = **(a6 + 2);
        if (v117 != v118 || WORD1(v117) != WORD1(v118) || ((v118 ^ v117) & 0xFFFFFF00000000) != 0)
        {
          v68 = 0;
          goto LABEL_218;
        }

LABEL_217:
        v68 = 1;
LABEL_218:
        if (a7)
        {
          __dst.n128_u64[0] = 0;
          {
            goto LABEL_272;
          }
        }

        else
        {
          if (*(*(this + 2) + 8) >= 9u)
          {
            v177 = re::TypeInfo::name(this)[1];
            v180 = *(*(this + 2) + 8);
            v23 = "Enum type %s has invalid size: %zu bytes";
            goto LABEL_83;
          }

          EnumConstantIndex = re::internal::getEnumConstantIndex(this, a4, a3);
          if ((EnumConstantIndex & 0x80000000) != 0)
          {
            __dst.n128_u64[0] = 0;
            memcpy(&__dst, a4, *(*(this + 2) + 8));
            v177 = __dst.n128_u64[0];
            v180 = re::TypeInfo::name(this)[1];
            v23 = "Value %zu is not a valid enum constant of %s.";
            goto LABEL_83;
          }

          v120 = EnumConstantIndex;
          if (v68)
          {
            v121 = re::TypeInfo::enumConstants(this);
            v123 = v120;
            if (v122 <= v120)
            {
LABEL_363:
              re::internal::assertLog(6, v122, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v123, v122);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v178, v181);
              __break(1u);
              goto LABEL_364;
            }

            if (!v121)
            {
              goto LABEL_272;
            }

            v124 = v121 + 24 * v120;
          }

          else
          {
            v150 = *(*a6 + 856);
            if (!v150 || (v124 = re::internal::TypeTranslationTable::translateRuntimeEnum(v150, this, v120, a6)) == 0)
            {
              v159 = re::TypeInfo::enumConstants(this);
              v161 = v120;
              if (v160 > v120)
              {
                v177 = *(v159 + 24 * v120 + 16);
                v180 = re::TypeInfo::name(a6)[1];
                v23 = "Runtime enum constant %s does not exist in serialized type %s.";
                goto LABEL_83;
              }

LABEL_364:
              re::internal::assertLog(6, v160, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v161, v160);
              _os_crash("assertion failure: (index < size()) Index out of range. index = %zu, size = %zu", v179, v182);
              __break(1u);
            }
          }

          v151 = *(v124 + 16);
          __dst.n128_u64[0] = strlen(v151);
          {
            goto LABEL_272;
          }
        }

        goto LABEL_345;
      }

      if (this != a6)
      {
        if (*this == *a6)
        {
          v90 = **(this + 2);
          v91 = **(a6 + 2);
          if (v90 != v91)
          {
            goto LABEL_271;
          }

          v17 = WORD1(v90) == WORD1(v91);
          v92 = (v91 ^ v90) & 0xFFFFFF00000000;
          if (!v17 || v92 != 0)
          {
            goto LABEL_271;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_271;
        }
      }

      v33 = re::TypeInfo::name(this);
      v34 = *v33 >> 1;
      if (v34 <= 0x16749DFF02)
      {
        if (*v33 >> 1 <= 0x685847B)
        {
          if (*v33 >> 1 > 0x2E9355)
          {
            if (v34 == 3052374)
            {
            }

            if (v34 != 3327612)
            {
              if (v34 == 97526364)
              {
              }

              goto LABEL_340;
            }

LABEL_283:
          }

          if (v34 != 104431)
          {
            if (v34 == 3029738)
            {
            }

            goto LABEL_340;
          }

LABEL_305:
        }

        if (*v33 >> 1 <= 0xB9708BDD)
        {
          if (v34 != 109413500)
          {
            if (v34 == 2969009105)
            {
            }

            goto LABEL_340;
          }

          goto LABEL_308;
        }

        if (v34 == 3111160798)
        {
        }

        if (v34 != 3393056694)
        {
          if (v34 != 0x16749D2549)
          {
            goto LABEL_340;
          }

LABEL_308:
        }

LABEL_296:
      }

      if (*v33 >> 1 > 0x303EE88E58CLL)
      {
        if (*v33 >> 1 > 0x2A8CEB1C43F60843)
        {
          if (v34 == 0x2A8CEB1C43F60844)
          {
            goto LABEL_302;
          }

          if (v34 != 0x3AFE951B1F1F3391)
          {
            if (v34 != 0x412A40E9CB79BA35)
            {
              goto LABEL_340;
            }

            goto LABEL_296;
          }

          goto LABEL_299;
        }

        if (v34 == 0x303EE88E58DLL)
        {
          goto LABEL_296;
        }

        if (v34 == 0x2710786C3AC82DA1)
        {
LABEL_293:
        }
      }

      else
      {
        if (*v33 >> 1 > 0x18E6A9A092)
        {
          if (v34 != 0x18E6A9A093)
          {
            if (v34 != 0x303EE86A734)
            {
              if (v34 != 0x303EE8780EELL)
              {
                goto LABEL_340;
              }

LABEL_302:
            }

LABEL_299:
          }

          goto LABEL_293;
        }

        if (v34 == 0x16749DFF03)
        {
          goto LABEL_305;
        }

        if (v34 == 0x16749F63A2)
        {
          goto LABEL_283;
        }
      }

LABEL_340:
      v177 = re::TypeInfo::name(this)[1];
      v23 = "Unsupported basic type %s.";
      goto LABEL_83;
    }

    if (v22 != 3)
    {
      if (v22 != 4)
      {
        goto LABEL_77;
      }

      if (this == a6)
      {
        goto LABEL_133;
      }

      if (*this == *a6)
      {
        v69 = **(this + 2);
        v70 = **(a6 + 2);
        if (v69 == v70)
        {
          v17 = WORD1(v69) == WORD1(v70);
          v71 = (v70 ^ v69) & 0xFFFFFF00000000;
          if (v17 && v71 == 0)
          {
            goto LABEL_133;
          }
        }
      }

      else if (re::areSameTranslatedVersion(this, a6, a3))
      {
LABEL_133:
        if (a7)
        {
          v76 = a1[34];
          re::TypeInfo::referencedType(a6, &v204);
          re::internal::translateType(&__dst, v76, &v204);
          v77 = (*(*a1 + 80))(a1, &__dst);
          if (!v77)
          {
            goto LABEL_238;
          }

          v78 = v77;
          v79 = *(a6 + 2);
          v80 = *(v79 + 92) & 0xFFFFFF;
          if (v80)
          {
            v81 = 0;
            v82 = 8;
          }

          else
          {
            v81 = *(v79 + 96);
            v82 = 4;
          }

          v204 = v81;
          {
            goto LABEL_272;
          }

          if (v80)
          {
            v148 = v81 == 0;
          }

          else
          {
            v148 = 1;
          }

          v149 = v148;
          if (v148)
          {
            if (!v81)
            {
              goto LABEL_322;
            }
          }

          else
          {
            v193[0] = 0;
            v193[1] = 0xFFFFFFFFLL;
            (*(*a1 + 16))(a1, 0, v193);
          }

          do
          {
            v78(a1, 0, 0, 0, &__dst, &__dst, 1);
            v81 = (v81 - 1);
          }

          while (v81);
          if (v149)
          {
            goto LABEL_322;
          }
        }

        else
        {
          re::TypeInfo::referencedType(this, &__dst);
          re::TypeInfo::referencedType(a6, &v204);
          re::TypeInfo::TypeInfo(v194, this);
          v83 = (*(*a1 + 80))(a1, &__dst);
          if (!v83)
          {
            goto LABEL_238;
          }

          v84 = v83;
          v85 = re::ArrayAccessor::size(v194, a4);
          v190[0] = v85;
          v86 = *(*(this + 2) + 92) & 0xFFFFFF;
          if (v86)
          {
            v87 = 8;
          }

          else
          {
            v87 = 4;
          }

          {
            goto LABEL_272;
          }

          if (v86)
          {
            v88 = v85 == 0;
          }

          else
          {
            v88 = 1;
          }

          v89 = v88;
          if (v88)
          {
            if (!v85)
            {
              goto LABEL_322;
            }
          }

          else
          {
            v152 = *a4;
            v192[0] = 0;
            v192[1] = 0xFFFFFFFFLL;
            (*(*a1 + 16))(a1, v152, v192);
          }

          v153 = 0;
          do
          {
            v154 = re::ArrayAccessor::elementAt(v194, a4, v153);
            v84(a1, 0, 0, v154, &__dst, &v204, 0);
            ++v153;
          }

          while (v85 != v153);
          if (v89)
          {
            goto LABEL_322;
          }
        }

        (*(*a1 + 24))(a1);
        goto LABEL_322;
      }

      if (*(a6 + 12) != 4)
      {
        goto LABEL_271;
      }

      v73 = *(this + 2);
      v74 = *(a6 + 2);
      v75 = *(v74 + 92) & 0xFFFFFF;
      if ((*(v73 + 92) & 0xFFFFFF) != 0)
      {
        if (!v75)
        {
          goto LABEL_271;
        }
      }

      else if (v75 || *(v73 + 96) != *(v74 + 96))
      {
        goto LABEL_271;
      }

      goto LABEL_133;
    }

    if (this != a6)
    {
      if (*this == *a6)
      {
        v94 = **(this + 2);
        v95 = **(a6 + 2);
        if (v94 == v95 && WORD1(v94) == WORD1(v95) && ((v95 ^ v94) & 0xFFFFFF00000000) == 0)
        {
          goto LABEL_164;
        }

        v36 = 3;
      }

      else
      {
        if (re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_164;
        }

        v36 = *(this + 12);
      }

      if (v36 != *(a6 + 12))
      {
        goto LABEL_271;
      }
    }

LABEL_164:
    if (a7)
    {
      __dst.n128_u8[0] = 0;
    }

    else
    {
      re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(&v204, &__dst.n128_i64[1]);
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v194, &__dst.n128_i64[1]);
      re::TypeInfo::TypeInfo(&__dst, this);
      v96 = (*(v200 + 88))(a4);
      LOBYTE(v193[0]) = v96 != 0;
      if (v96)
      {
        v98 = (*(v200 + 88))(a4, v97);
        if ((a1[8] & 1) == 0)
        {
          (*(*a1 + 72))(a1, __s, 0, v98, &v204, v194, 0);
        }
      }
    }

    goto LABEL_345;
  }

  if (*(this + 12) > 6u)
  {
    if (v22 == 7)
    {
      if (this != a6)
      {
        if (*this == *a6)
        {
          v99 = **(this + 2);
          v100 = **(a6 + 2);
          if (v99 != v100)
          {
            goto LABEL_271;
          }

          v17 = WORD1(v99) == WORD1(v100);
          v101 = (v100 ^ v99) & 0xFFFFFF00000000;
          if (!v17 || v101 != 0)
          {
            goto LABEL_271;
          }
        }

        else if (!re::areSameTranslatedVersion(this, a6, a3))
        {
          goto LABEL_271;
        }
      }

      if (a7)
      {
        if (!v37)
        {
LABEL_272:
          v54 = 0;
          return v54 & 1;
        }

        v204 = 0;
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
        if (!v37)
        {
          goto LABEL_272;
        }

        re::TypeInfo::TypeInfo(&__dst, this);
        Tag = re::UnionAccessor::readTag(&__dst, a4);
        *v194 = Tag;
        if (Tag < *(*(this + 2) + 96))
        {
          re::TypeInfo::unionMember(&v204, this, Tag);
          if ((a1[8] & 1) == 0)
          {
            (*(*a1 + 72))(a1, "value", 0, a4, &v204, &v204, 0);
          }
        }
      }

LABEL_344:
      goto LABEL_345;
    }

    if (v22 != 8)
    {
      if (v22 == 9)
      {
        v177 = re::TypeInfo::name(this)[1];
        v23 = "Pointer type (%s) needs to be handled explicitly by the serializer.";
LABEL_83:
        goto LABEL_272;
      }

LABEL_77:
      v177 = *(this + 12);
      v23 = "Invalid type category. Value = %d";
      goto LABEL_83;
    }

    if (a7)
    {
      if (*(*(this + 2) + 49))
      {
        v63 = a1[34];
        *v194 = 0x2686EB529B3EE220;
        *&v194[8] = "DynamicString";
        re::TypeRegistry::typeInfo(&__dst, v63, v194);
        re::TypeInfo::TypeInfo(&v204, &__dst.n128_i64[1]);
        re::StringID::destroyString(v194);
        v43 = &v204;
        v44 = &v204;
        v41 = a1;
        v42 = __s;
        goto LABEL_116;
      }

      v39 = re::TypeInfo::name(this);
      __dst.n128_u64[0] = 0x134375A94D9F7110;
      __dst.n128_u64[1] = "DynamicString";
      if (re::StringID::operator==(v39, &__dst))
      {
        v41 = a1;
        v42 = __s;
        v43 = this;
        v44 = this;
LABEL_116:
        goto LABEL_345;
      }

      v47 = *(this + 12) == 8;
    }

    else
    {
      v47 = 1;
    }

    v48 = *(this + 2);
    v49 = *(v48 + 48);
    if ((v49 & 0x10) == 0 && v47)
    {
      v50 = *(v48 + 160);
      if (v50)
      {
        v51 = *this;
        v52 = *a6;
        __dst.n128_u64[0] = &unk_1F5D18330;
        __dst.n128_u64[1] = a1;
        *&v200 = v51;
        *(&v200 + 1) = v52;
        v201 = 0uLL;
        LODWORD(v202) = 1;
        *(&v202 + 1) = 0;
        *&v203 = 0;
        v204 = __s;
        LODWORD(v205) = a3;
        BYTE4(v205) = 0;
        v50(&__dst, a4, v53);
        v54 = *(a1 + 64) ^ 1;
        return v54 & 1;
      }
    }

    if ((v49 & 4) == 0)
    {
      {
        goto LABEL_272;
      }

      v55 = re::DataArray<re::TextureAtlasTile>::tryGet(*this + 96, **(this + 2));
      if (!v55 || *(v55 + 16) >= 2u)
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
      }

      goto LABEL_344;
    }

    re::TypeMemberCollection::TypeMemberCollection(&__dst, *this, v48);
    re::TypeMemberCollection::operator[](&__dst, 0, &v204);
    v111 = *(v206 + 24);
    re::TypeMemberInfo::memberType(v194, &v204);
    if (re::areSameVersion(this, a6, v112))
    {
      if (a1[8])
      {
        goto LABEL_272;
      }

      v29 = (*(*a1 + 72))(a1, __s, a3, a4 + v111, v194, v194, a7);
LABEL_354:
      v54 = v29;
      return v54 & 1;
    }

    v147 = *(a6 + 2);
    if (*(v147 + 96) == 1)
    {
      re::TypeMemberCollection::TypeMemberCollection(&__dst, *a6, v147);
      re::TypeMemberCollection::operator[](&__dst, 0, v192);
      re::TypeMemberInfo::memberType(v193, v192);
      if (a1[8])
      {
        goto LABEL_272;
      }

      v29 = (*(*a1 + 72))(a1, __s, a3, a4 + v111, v194, v193, a7);
      goto LABEL_354;
    }

LABEL_271:
    goto LABEL_272;
  }

  if (v22 == 5)
  {
    if (this != a6)
    {
      if (*this == *a6)
      {
        v103 = **(this + 2);
        v104 = **(a6 + 2);
        if (v103 != v104 || WORD1(v103) != WORD1(v104) || ((v104 ^ v103) & 0xFFFFFF00000000) != 0)
        {
          v38 = 5;
LABEL_181:
          if (v38 != *(a6 + 12))
          {
            goto LABEL_271;
          }
        }
      }

      else if (!re::areSameTranslatedVersion(this, a6, a3))
      {
        v38 = *(this + 12);
        goto LABEL_181;
      }
    }

    if (a7)
    {
      v105 = a1[34];
      re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
      re::TypeInfo::TypeInfo(v194, &__dst.n128_i64[1]);
      re::internal::translateType(&v204, v105, v194);
      if ((*(*a1 + 80))(a1, &v204))
      {
        __dst.n128_u64[0] = 0;
        v54 = 0;
        {
          return v54 & 1;
        }

        goto LABEL_322;
      }

LABEL_237:
      p_dst = &v204;
LABEL_239:
      re::TypeInfo::name(p_dst);
      goto LABEL_272;
    }

    re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(&v204, &__dst.n128_i64[1]);
    re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &__dst);
    re::TypeInfo::TypeInfo(v194, &__dst.n128_i64[1]);
    re::TypeInfo::TypeInfo(&__dst, this);
    v106 = (*(*a1 + 80))(a1, &v204);
    if (!v106)
    {
      goto LABEL_237;
    }

    v107 = v106;
    v108 = (*(v200 + 88))(a4);
    v192[0] = v108;
    v54 = 0;
    {
      return v54 & 1;
    }

    if (*(v200 + 104))
    {
      if (v108)
      {
        for (i = 0; i != v108; ++i)
        {
          v110 = (*(v200 + 104))(a4, i);
          v107(a1, 0, 0, v110, &v204, v194, 0);
        }
      }
    }

    else
    {
      v155 = *(v200 + 112);
      if (!v155 || !*(v200 + 120) || !*(v200 + 128))
      {
        re::TypeInfo::TypeInfo(v193, &__dst);
        v177 = re::TypeInfo::name(v193)[1];
        v23 = "List type %s does not provide an indexer or iterator.";
        goto LABEL_83;
      }

      v156 = v155(a4, a1[7]);
      v157 = (*(v200 + 120))();
      if (v157)
      {
        v158 = v157;
        do
        {
          v107(a1, 0, 0, v158, &v204, v194, 0);
          v158 = (*(v200 + 120))(v156);
        }

        while (v158);
      }

      (*(v200 + 128))(v156, a1[7]);
    }

LABEL_322:
    goto LABEL_345;
  }

  if (v22 != 6)
  {
    goto LABEL_77;
  }

  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &__dst);
  v25 = re::TypeInfo::TypeInfo(&v204, &__dst.n128_i64[1]);
  v27 = re::TypeInfo::name(v25);
  v28 = BYTE4(v205);
  if (BYTE4(v205) != 1)
  {
LABEL_106:
    if (v28 == 8)
    {
      if (*v27 >> 1 == 0x134375A94D9F7110)
      {
        v59 = v27[1];
        if (v59 == "DynamicString")
        {
          goto LABEL_353;
        }

        v61 = strcmp(v59, "DynamicString");
        if (!v61)
        {
          goto LABEL_353;
        }
      }

      __dst.n128_u64[0] = 0x22C6ED80D0CLL;
      __dst.n128_u64[1] = "StringID";
      v62 = re::StringID::operator==(v27, &__dst);
      if (v62)
      {
        goto LABEL_353;
      }
    }

    goto LABEL_111;
  }

  if (!re::TypeInfo::isInteger(&v204))
  {
    v28 = BYTE4(v205);
    goto LABEL_106;
  }

  __dst.n128_u64[0] = 0x303EE88E58DLL;
  __dst.n128_u64[1] = "uint64_t";
  if (re::StringID::operator==(v27, &__dst))
  {
    goto LABEL_354;
  }

  *v194 = 3393056694;
  *&v194[8] = "size_t";
  v113 = re::StringID::operator==(v27, v194);
  if (v113)
  {
    goto LABEL_353;
  }

  __dst.n128_u64[0] = 0x303EE8780EELL;
  __dst.n128_u64[1] = "uint32_t";
  v114 = re::StringID::operator==(v27, &__dst);
  if (v114)
  {
    goto LABEL_353;
  }

  __dst.n128_u64[0] = 0x303EE86A734;
  __dst.n128_u64[1] = "uint16_t";
  v115 = re::StringID::operator==(v27, &__dst);
  if (v115)
  {
    goto LABEL_353;
  }

  __dst.n128_u64[0] = 0x18E6A9A093;
  __dst.n128_u64[1] = "uint8_t";
  v116 = re::StringID::operator==(v27, &__dst);
  if (v116)
  {
    goto LABEL_353;
  }

  __dst.n128_u64[0] = 0x16749F63A2;
  __dst.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v27, &__dst))
  {
    goto LABEL_354;
  }

  *v194 = 3327612;
  *&v194[8] = "long";
  v166 = re::StringID::operator==(v27, v194);
  {
LABEL_353:
    v29 = v60(a1, __s, a3, a4, this, a6, a7);
    goto LABEL_354;
  }

LABEL_111:
  if (this != a6)
  {
    if (*this == *a6)
    {
      v125 = **(this + 2);
      v126 = **(a6 + 2);
      if (v125 == v126 && WORD1(v125) == WORD1(v126) && ((v126 ^ v125) & 0xFFFFFF00000000) == 0)
      {
        goto LABEL_232;
      }
    }

    else if (re::areSameTranslatedVersion(this, a6, v26))
    {
      goto LABEL_232;
    }

    if (*(this + 12) != *(a6 + 12))
    {
      goto LABEL_271;
    }
  }

LABEL_232:
  if (a7)
  {
    v127 = a1[34];
    re::TypeInfo::referencedType(a6, &v204);
    re::internal::translateType(&__dst, v127, &v204);
    v128 = a1[34];
    re::TypeInfo::dictionaryValueType(a6, v194);
    re::internal::translateType(&v204, v128, v194);
    if ((*(*a1 + 80))(a1, &__dst))
    {
      if ((*(*a1 + 80))(a1, &v204))
      {
        *v194 = 0;
        {
          goto LABEL_349;
        }

        goto LABEL_272;
      }

      goto LABEL_237;
    }

LABEL_238:
    p_dst = &__dst;
    goto LABEL_239;
  }

  re::TypeInfo::referencedType(this, v193);
  re::TypeInfo::dictionaryValueType(this, v192);
  re::TypeInfo::referencedType(a6, v190);
  re::TypeInfo::dictionaryValueType(a6, v189);
  re::TypeInfo::TypeInfo(v187, this);
  v130 = (*(*a1 + 80))(a1, v193);
  if (!v130)
  {
    p_dst = v193;
    goto LABEL_239;
  }

  v131 = v130;
  v132 = (*(*a1 + 80))(a1, v192);
  if (!v132)
  {
    p_dst = v192;
    goto LABEL_239;
  }

  v133 = v132;
  v134 = (*(v188 + 96))(a4);
  v186 = v134;
  {
    goto LABEL_272;
  }

  if (!v134)
  {
    goto LABEL_349;
  }

  v135 = *this;
  __dst.n128_u64[0] = 0x449AD97C4B77BED4;
  __dst.n128_u64[1] = "_CompareFunc";
  re::TypeRegistry::typeID(v185, v135, &__dst);
  re::StringID::destroyString(&__dst);
  v136 = *v193[2];
  __dst.n128_u64[0] = v193[0];
  __dst.n128_u64[1] = v136;
  LODWORD(v200) = -1;
  v137 = re::TypeAttributeCollection::operator[](&__dst, v185);
  if (!v137)
  {
    v162 = (*(v188 + 120))(a4, a1[7]);
    (*(v188 + 128))();
    do
    {
      v164 = (*(v188 + 136))(v162, v163);
      v131(a1, "key", 0, v164, v193, v190, 0);
      v165 = (*(v188 + 144))(v162);
      v133(a1, "value", 0, v165, v192, v189, 0);
      (*(v188 + 128))(v162);
      --v134;
    }

    while (v134);
    (*(v188 + 152))(v162, a1[7]);
    goto LABEL_349;
  }

  v138 = v137;
  v208 = 0;
  v205 = 0;
  v206 = 0;
  v207 = 0;
  v204 = a1[7];
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(&v204, v134);
  ++v207;
  v139 = (*(v188 + 120))(a4, a1[7]);
  if ((*(v188 + 128))())
  {
    do
    {
      v140 = (*(v188 + 136))(v139);
      v141 = (*(v188 + 144))(v139);
      __dst.n128_u64[0] = v140;
      __dst.n128_u64[1] = v141;
      v142 = re::DynamicArray<re::RigNodeConstraint>::add(&v204, &__dst);
    }

    while (((*(v188 + 128))(v139, v142) & 1) != 0);
  }

  (*(v188 + 152))(v139, a1[7]);
  v143 = 0;
  for (j = 0; j != v134; ++j)
  {
    if (v206 <= j)
    {
      v191 = 0;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      __dst = 0u;
      v169 = MEMORY[0x1E69E9C10];
      v170 = v206;
      v171 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v194 = 136315906;
      *&v194[4] = "operator[]";
      *&v194[12] = 1024;
      if (v171)
      {
        v172 = 3;
      }

      else
      {
        v172 = 2;
      }

      *&v194[14] = 789;
      v195 = 2048;
      v196 = j;
      v197 = 2048;
      v198 = v170;
      _os_log_send_and_compose_impl(v172, &v191, &__dst, 80, &dword_1E1C61000, v169, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v194, 38, v183, v184);
      _os_crash_msg();
      __break(1u);
LABEL_359:
      v191 = 0;
      v202 = 0u;
      v203 = 0u;
      v200 = 0u;
      v201 = 0u;
      __dst = 0u;
      v173 = MEMORY[0x1E69E9C10];
      v174 = v146;
      v175 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v194 = 136315906;
      *&v194[4] = "operator[]";
      *&v194[12] = 1024;
      if (v175)
      {
        v176 = 3;
      }

      else
      {
        v176 = 2;
      }

      *&v194[14] = 789;
      v195 = 2048;
      v196 = j;
      v197 = 2048;
      v198 = v174;
      _os_log_send_and_compose_impl(v176, &v191, &__dst, 80, &dword_1E1C61000, v173, 16, "assertion failure: Index out of range (%s:line %i) index = %zu, max = %zu", v194, 38, v183, v184);
      _os_crash_msg();
      __break(1u);
      goto LABEL_363;
    }

    (v131)(a1, "key", 0, *&v208[v143], v193, v190, 0, v145);
    v146 = v206;
    if (v206 <= j)
    {
      goto LABEL_359;
    }

    v133(a1, "value", 0, *&v208[v143 + 8], v192, v189, 0);
    v143 += 16;
  }

  if (v204 && v208)
  {
    (*(*v204 + 40))(v204);
  }

LABEL_349:
LABEL_345:
  v54 = *(a1 + 64) ^ 1;
  return v54 & 1;
}