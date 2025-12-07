uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v25 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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
  v25 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0);
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

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, int a7)
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
    v28 = 0;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v28))
    {
      if (!v28)
      {
LABEL_33:
        v26 = *(a1 + 64) ^ 1;
        return v26 & 1;
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

    v28 = v23;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v28))
    {
      v24 = v28;
      if (v24 <= (*(**(a1 + 24) + 64))(*(a1 + 24)))
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

      v25 = (*(**(a1 + 24) + 64))(*(a1 + 24));
    }
  }

LABEL_24:
  v26 = 0;
  return v26 & 1;
}

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5D19230;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Deserializer(void *a1)
{
  *a1 = &unk_1F5D19230;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
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
  if (!*(v3 - 32) && *v4 == 64 || (v5 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(*(a1 + 8) + 24, v4, 0), result = 0, v5))
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endArray(uint64_t a1, void *a2)
{
  v2 = (*a2)--;
  if (!v2)
  {
  }

  return v2 == 0;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, void *a2, int a3)
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
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(v16 + 24, v17, 0))
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
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(v16 + 24, v17, a2);
  }

  return 1;
}

void re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t result)
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
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(*(result + 8) + 24, 0);
    *(v2 - 32) = 0;
    v3 = "key";
  }

  *(v2 - 40) = v3;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
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

BOOL re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1, void *a2)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginData(uint64_t a1, void *a2)
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
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(v3 + 24, &v13);
    return 1;
  }

  return result;
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1)
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

  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(*(a1 + 8) + 24, *(v1 + 40 * *(a1 + 40) - 40), &v3);
  return v3;
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginString(uint64_t a1, uint64_t *a2)
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

    return re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(v7, v5, a2);
  }
}

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, BOOL *a2)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _BYTE *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _WORD *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unsigned int *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, _DWORD *a2)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, uint64_t *a2)
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

char *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, unint64_t *a2)
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

uint64_t re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, void *a2)
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

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, float *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

unsigned int *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator>>(uint64_t a1, double *a2)
{
  if (*(a1 + 48))
  {
    v2 = a1 + 56;
  }

  else
  {
    v2 = *(a1 + 64);
  }

  return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), a2, 0);
}

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeString(uint64_t a1, void *__dst, size_t __n)
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

void *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializeData(void *result, void *__dst)
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

_anonymous_namespace_ *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::deserializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

  re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(*(a1 + 8) + 24, *(v6 + 40 * *(a1 + 40) - 40), &v8);
  v9 = v8 != 0;
  (*(**(a3 + 32) + 16))(*(a3 + 32), a1, a2, &v9);
}

_BYTE *re::snapshot::Deserializer<re::Serializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::read(uint64_t a1, uint64_t a2, re **this)
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

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v21);
  if (v21[0] == 1)
  {
    re::TypeInfo::TypeInfo(v18, &v22);
    if (*(v19 + 96) || (re::TypeRegistry::typeInfo(v18[0], *(v19 + 80), v23), v23[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v18, a4);
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

uint64_t re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, re::TypeInfo *a3, uint64_t *a4, uint64_t a5)
{
  v52 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(*a3, *(*(a3 + 2) + 80), v44);
  re::TypeRegistry::typeInfo(*a4, *(a4[2] + 80), v40);
  if (v40[0] == 1)
  {
    if ((v44[0] & 1) == 0)
    {
      v11 = re::TypeInfo::name(&v41)[1];
      v12 = re::TypeInfo::name(a3);
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
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v45, a5);
      goto LABEL_15;
    }

    if (v46 == v42)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v45, &v41, a5);
    }

    else
    {
      v18 = re::TypeInfo::name(&v45)[1];
      v19 = re::TypeInfo::name(&v41);
    }
  }

LABEL_15:
  re::TypeMemberCollection::TypeMemberCollection(v39, *a3, *(a3 + 2));
  result = re::TypeMemberCollection::TypeMemberCollection(v37, *a4, a4[2]);
  if (v38)
  {
    for (i = 0; i < v38; ++i)
    {
      if (*(a1 + 64))
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

          v29 = *(a1 + 272);
          re::TypeRegistry::typeInfo(v35[0], *v36, buf);
          re::TypeInfo::TypeInfo(v33, &v49 + 4);
          result = re::internal::translateType(buf, v29, v33);
          if ((*(a1 + 64) & 1) == 0)
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
          if (*(a1 + 64) == 1 || (result = (*(*a1 + 72))(a1, v21, v22, a2 + v24, v32, v31, a5), (result & 1) == 0))
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
              if ((*(a1 + 64) & 1) == 0)
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

uint64_t re::serializeBool<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, BOOL *a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::serializeChar<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::serializeI8<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::serializeI16<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::serializeI32<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, unsigned int *a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::serializeI64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, unint64_t *a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::serializeU8<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _BYTE *a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::serializeU16<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _WORD *a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::serializeU32<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, _DWORD *a4, re *this, re::TypeInfo *a6, char a7)
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

uint64_t re::serializeU64<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, void *a4, re *this, re::TypeInfo *a6, char a7)
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

unsigned int *re::serializeFloat<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, float *a4, re *this, re::TypeInfo *a6, char a7)
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

  return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(a1 + 24, a2, a4, a7);
}

unsigned int *re::serializeDouble<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_anonymous_namespace_ *a1, char *a2, const re::TypeInfo *a3, double *a4, re *this, re::TypeInfo *a6, char a7)
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

  return re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(a1 + 24, a2, a4, a7);
}

uint64_t re::serializeCString<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *this, re::TypeInfo *a6, int a7)
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
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v24))
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

      goto LABEL_44;
    }

    if (v24 != 2)
    {
      if (v24 == 1)
      {
LABEL_17:
        goto LABEL_24;
      }

LABEL_44:
      if (*a4 && *(a1 + 64) == 1)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      goto LABEL_47;
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
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v23))
    {
      goto LABEL_44;
    }

    v20 = *a4;
    v21 = v23;
    if (*a4 && v23 == v19)
    {
      if (v19)
      {
LABEL_34:
        v20 = *a4;
LABEL_43:
        v20[v21] = 0;
        goto LABEL_44;
      }
    }

    else
    {
      if (v20)
      {
        (*(**(a1 + 48) + 40))(*(a1 + 48));
        *a4 = 0;
      }

      if (v21 > (*(**(a1 + 24) + 64))(*(a1 + 24)))
      {
        (*(**(a1 + 24) + 64))(*(a1 + 24));
        goto LABEL_24;
      }

      if (((v21 == -1) << 63) >> 63 != (v21 == -1))
      {
        goto LABEL_24;
      }

      v20 = (*(**(a1 + 48) + 32))(*(a1 + 48), v21 + 1, 0);
      *a4 = v20;
      if (v21)
      {
        goto LABEL_34;
      }
    }

    v21 = 0;
    goto LABEL_43;
  }

  v24 = 0;
  v13 = re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v24);
  v14 = 0;
  if (v13)
  {
    if (!v24)
    {
LABEL_12:
LABEL_47:
      v14 = *(a1 + 64) ^ 1;
      return v14 & 1;
    }

    if (v24 != 1)
    {
      v23 = 0;
      if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v23))
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

uint64_t re::serializeStringID<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, _anonymous_namespace_ *a4, re *this, re::TypeInfo *a6, int a7)
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
    v29 = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v29))
    {
      goto LABEL_26;
    }

    v19 = v29;
    if (v29)
    {
      if (v19 > (*(**(a1 + 24) + 64))(*(a1 + 24)))
      {
        (*(**(a1 + 24) + 64))(*(a1 + 24));
        goto LABEL_26;
      }

      if (((v19 == -1) << 63) >> 63 != (v19 == -1))
      {
        goto LABEL_26;
      }

      v23 = (*(**(a1 + 56) + 32))(*(a1 + 56), v19 + 1, 0);
      v23[v19] = 0;
      v27 = 0;
      v28 = &str_67;
      v25 = re::StringID::operator=(a4, &v27);
      if (v27)
      {
        if (v27)
        {
        }
      }

      v21 = *(**(a1 + 56) + 40);
    }

    else
    {
      v27 = 0;
      v28 = &str_67;
      v20 = re::StringID::operator=(a4, &v27);
      if ((v27 & 1) == 0)
      {
LABEL_32:
        v22 = *(a1 + 64) ^ 1;
        return v22 & 1;
      }
    }

    v21();
    goto LABEL_32;
  }

  v27 = 0;
  if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v27))
  {
    if (v27)
    {
    }

    goto LABEL_32;
  }

LABEL_26:
  v22 = 0;
  return v22 & 1;
}

uint64_t re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
{
  v40 = *MEMORY[0x1E69E9840];
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
    v36[0] = 0x258C98EAAF29A10ALL;
    v36[1] = "CallbackSerializerAttribute";
    v15 = re::TypeRegistry::typeID(buf, v13, v36);
    if (*buf && (v32 = *&buf[8], v33 = v14, LODWORD(v34) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v13 + 768, &v32)) != 0))
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    if (v36[0])
    {
      if (v36[0])
      {
      }
    }

    v21 = *v16;
    v22 = *(a1 + 264);
    v36[0] = 0;
    if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, v36))
    {
      v23 = *(a1 + 56);
      v34 = 0;
      v35 = 0;
      v32 = v23;
      v33 = 0;
      re::DynamicString::setCapacity(&v32, 0);
      if (v36[0])
      {
        re::DynamicString::resize(&v32, v36[0], 0);
        if (v33)
        {
          v24 = v34;
        }

        else
        {
          v24 = &v33 + 1;
        }
      }

      if (v33)
      {
        v25 = v34;
      }

      else
      {
        v25 = &v33 + 1;
      }

      v26 = (*(v21 + 80))(*(a1 + 48), v22, v21, a4, v25);
      if ((v26 & 1) == 0)
      {
        v27 = *re::foundationSerializationLogObjects(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          if (v33)
          {
            v28 = v34;
          }

          else
          {
            v28 = &v33 + 1;
          }

          v29 = re::TypeInfo::name(this)[1];
          *buf = 136315650;
          *&buf[4] = a2;
          *&buf[12] = 2080;
          *&buf[14] = v28;
          v38 = 2080;
          v39 = v29;
          _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_INFO, "Failed to parse %s: %s (type %s) using deserialization callback - skipping.", buf, 0x20u);
        }
      }

      if (v32 && (v33 & 1) != 0)
      {
        (*(*v32 + 40))();
      }

      goto LABEL_40;
    }

LABEL_41:
    v30 = 0;
    return v30 & 1;
  }

  v32 = 0;
  if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v32))
  {
    goto LABEL_41;
  }

  if (v32)
  {
  }

LABEL_40:
  v30 = *(a1 + 64) ^ 1;
  return v30 & 1;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString(uint64_t a1, char *a2, const re::TypeInfo *a3, char **a4, re *this, re::TypeInfo *a6, char a7)
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
  if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v33))
  {
    if (v33 == 1)
    {
      v32 = 0;
      re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(a1 + 24, &v32);
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
      if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString((a1 + 24), a2, &v28))
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer(uint64_t a1, char *a2, int a3, void **a4, re::TypeInfo *this, const re::TypeInfo *a6, int a7)
{
  v88 = *MEMORY[0x1E69E9840];
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
    v15 = 0;
    goto LABEL_5;
  }

  if (*(a6 + 12) != 9 || isPointerToPolymorphicType && (!re::TypeInfo::isPointerToPolymorphicType(a6) || (v24 = re::TypeInfo::name(this), v25 = re::TypeInfo::name(a6), !re::StringID::operator==(v24, v25))))
  {
    goto LABEL_28;
  }

  v15 = 1;
LABEL_5:
  re::TypeRegistry::typeInfo(*this, *(*(this + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v80, &buf + 8);
  re::TypeRegistry::typeInfo(*a6, *(*(a6 + 2) + 80), &buf);
  re::TypeInfo::TypeInfo(v78, &buf + 8);
  if (!isPointerToPolymorphicType || (a7 & 1) != 0)
  {
    v19 = *v81;
    v77[0] = v80[0];
    v77[1] = v19;
    if (!v80[0])
    {
      goto LABEL_8;
    }

LABEL_11:
    re::TypeRegistry::typeInfo(*this, v77, &buf);
    re::TypeInfo::TypeInfo(v75, &buf + 8);
    v74 = 0;
    if (!re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(a1 + 24, a2, &v74))
    {
      goto LABEL_28;
    }

    if (v74 != 1)
    {
      if (!v74)
      {
        if ((a7 & 1) == 0 && *a4)
        {
          re::TypeInfo::releaseInstance(v75, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }

        goto LABEL_115;
      }

      if (isPointerToPolymorphicType)
      {
        if (re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(a1 + 24, a2, 0))
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
            v48 = *(v79 + 22);
            v49 = (v48 - 1);
            if (v48 == 1)
            {
              goto LABEL_80;
            }

            v50 = 0;
            while (1)
            {
              re::TypeInfo::derivedClass(&buf, v78, v50);
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

            v53 = *v87;
            v84 = buf;
            v85 = v53;
            if (!buf)
            {
LABEL_80:
              v54 = re::TypeInfo::polymorphicObjectName(v78);
              if ((*v54 ^ v47) > 1 || (v54 = v54[1], v54 != v35) && (v54 = strcmp(v54, v35), v54) || (v55 = *v79, v84 = v78[0], v85 = v55, !v78[0]))
              {
                v58 = *re::foundationSerializationLogObjects(v54);
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  LODWORD(buf) = 136315138;
                  *(&buf + 4) = v35;
                  _os_log_error_impl(&dword_1E1C61000, v58, OS_LOG_TYPE_ERROR, "Skipping unknown polymorphic type. Type name = %s", &buf, 0xCu);
                  if (a7)
                  {
LABEL_113:
                    if ((*(a1 + 64) & 1) == 0)
                    {
                      v68 = *(a1 + 152) + 48 * *(a1 + 136);
                      ++*(v68 - 16);
                    }

                    goto LABEL_115;
                  }
                }

                else if (a7)
                {
                  goto LABEL_113;
                }

                if (*a4)
                {
                  re::TypeInfo::releaseInstance(v75, *a4, *(a1 + 48), *(a1 + 264));
                  *a4 = 0;
                }

                goto LABEL_113;
              }
            }

            if ((a7 & 1) == 0 && *a4)
            {
              re::TypeInfo::releaseInstance(v75, *a4, *(a1 + 48), *(a1 + 264));
              *a4 = 0;
            }

            re::TypeRegistry::typeInfo(v78[0], &v84, &buf);
            v56 = re::TypeInfo::TypeInfo(v83, &buf + 8);
            if (v15)
            {
              v57 = *(a1 + 272);
            }

            else
            {
              v57 = *(a1 + 272);
              if (*this == v57)
              {
                re::TypeInfo::operator=(v75, v83);
                v62 = v84;
                v63 = v85;
                goto LABEL_108;
              }
            }

            v60 = re::TypeInfo::name(v56);
            v61 = re::TypeRegistry::typeInfo(&buf, v57, v60);
            if (buf != 1)
            {
              v64 = *re::foundationSerializationLogObjects(v61);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                v65 = re::TypeInfo::name(v83)[1];
                LODWORD(buf) = 136315138;
                *(&buf + 4) = v65;
                _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "No matching runtime type found for serialized polymorphic type %s. Skipping unknown type.", &buf, 0xCu);
              }

              *&buf = 0;
              *(&buf + 1) = 0xFFFFFFFFLL;
              (*(*a1 + 16))(a1, 0, &buf);
              if ((*(a1 + 64) & 1) == 0)
              {
                (*(*a1 + 72))(a1, v35, 0, 0, v83, v83, 1);
              }

              goto LABEL_112;
            }

            re::TypeInfo::operator=(v75, &buf + 8);
            v62 = v75[0];
            v63 = *v76;
LABEL_108:
            Instance = re::TypeInfo::createInstance(v75, *(a1 + 48), *(a1 + 264));
            v67 = Instance;
            if ((a7 & 1) == 0)
            {
              *a4 = Instance;
              *&buf = v62;
              *(&buf + 1) = v63;
              re::internal::setActualType(a4, this, &buf);
            }

            v82[0] = v62;
            v82[1] = v63;
            (*(*a1 + 16))(a1, v67, v82);
            if ((*(a1 + 64) & 1) == 0)
            {
              (*(*a1 + 72))(a1, v35, 0, v67, v75, v83, v67 == 0);
            }

LABEL_112:
            (*(*a1 + 24))(a1);
            goto LABEL_113;
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
          v42 = re::TypeInfo::createInstance(v80, *(a1 + 48), 0);
        }

        v43 = 0;
        *a4 = v42;
        goto LABEL_67;
      }

      v40 = *(a1 + 272);
      if (v80[0] != v40)
      {
        v41 = re::TypeInfo::name(v80);
        re::TypeRegistry::typeInfo(&buf, v40, v41);
        if ((buf & 1) == 0)
        {
          v42 = 0;
          v43 = 1;
          goto LABEL_67;
        }

        re::TypeInfo::operator=(v80, &buf + 8);
      }

      v42 = re::TypeInfo::createInstance(v80, *(a1 + 48), 0);
      v43 = 0;
LABEL_67:
      v46 = *v81;
      *&v71 = v80[0];
      *(&v71 + 1) = v46;
      re::internal::SharedObjectGraph::beginObject((a1 + 336), v42, &v71);
      if ((*(a1 + 64) & 1) == 0)
      {
        (*(*a1 + 72))(a1, a2, 0, v42, v80, v78, v43);
      }

      if (*(a1 + 336) == 1)
      {
        --*(a1 + 488);
        ++*(a1 + 496);
      }

      goto LABEL_115;
    }

    LODWORD(v84) = 0;
    re::EncoderRapidJSON<re::FixedArrayInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReference(a1 + 24, &v84);
    if (*(a1 + 64))
    {
      goto LABEL_28;
    }

    v28 = v84;
    if (*(a1 + 408) > v84)
    {
      re::internal::SharedObjectGraph::typeID(v73, (a1 + 336), v84);
      if (!re::internal::areCompatible(this, v73))
      {
        v44 = re::TypeInfo::name(v80)[1];
        v45 = *(a1 + 272);
        re::internal::SharedObjectGraph::typeID(&buf, (a1 + 336), v28);
        v69 = v44;
        v70 = *(re::TypeRegistry::typeName(v45, &buf) + 1);
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
          re::TypeInfo::releaseInstance(v75, *a4, *(a1 + 48), *(a1 + 264));
          *a4 = 0;
        }
      }

      v30 = re::internal::SharedObjectGraph::object((a1 + 336), v28);
      v31 = v30;
      *a4 = v30;
      if ((*(v76 + 49) & 2) != 0)
      {
        v59 = v76[4];
        if (v59)
        {
          v59(v30);
        }

        if (*(a1 + 336) == 1 && *(a1 + 337) == 1)
        {
          re::internal::SharedObjectGraph::addChild((a1 + 336), *(*(a1 + 504) + 4 * *(a1 + 488) - 4), v28);
        }
      }

      else
      {
        re::internal::SharedObjectGraph::typeID(v83, (a1 + 336), v28);
        if (!v83[0])
        {
          v69 = v28;
          v16 = "TypeID for shared object at index %d is invalid.";
          goto LABEL_64;
        }

        re::TypeRegistry::typeInfo(v83[0], v83, &buf);
        if ((buf & 1) == 0)
        {
          v69 = v28;
          v16 = "No TypeInfo found for shared object at index %d.";
          goto LABEL_64;
        }

        v32 = re::TypeInfo::createInstance((&buf + 8), *(a1 + 48), *(a1 + 264));
        *a4 = v32;
        if ((re::TypeInfo::copy((&buf + 8), v32, v31, *(a1 + 48), *(a1 + 264)) & 1) == 0)
        {
          v69 = re::TypeInfo::name((&buf + 8))[1];
          v16 = "Failed to copy non-shareable object of type '%s'.";
LABEL_64:
          v17 = a1;
          v18 = 0;
          goto LABEL_9;
        }
      }

      re::internal::SharedObjectGraph::typeID(v72, (a1 + 336), v28);
      re::TypeInfo::setActualTypeForPointer(this, a4, v72);
      goto LABEL_115;
    }

    v69 = v84;
    v16 = "Invalid reference ID for shared object: %u";
    goto LABEL_64;
  }

  re::internal::actualType(v77, a4, this);
  if (v77[0])
  {
    goto LABEL_11;
  }

LABEL_8:
  v69 = re::TypeInfo::name(this)[1];
  v16 = "Failed to get actual type of polymorphic object. Type %s.";
  v17 = a1;
  v18 = a2;
LABEL_9:
LABEL_28:
  v26 = 0;
  return v26 & 1;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::init(re::TypeRegistry **a1, re::TypeRegistry *a2)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginObject(uint64_t a1, const char *a2, int a3)
{
  v12 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v12);
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(a1 + 168));
    v7[0] = 2;
    v8 = a3 | 0x20;
    v9 = v12;
    v10 = 0u;
    v11 = 0u;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v7);
  }

  return v3 ^ 1u;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endObject(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 21);
    v2[4] -= 16;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(v2);
    v3 = *(v1 + 16) + 48 * *(v1 + 14);
    ++*(v3 - 16);
  }

  return result;
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D19390;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);

  return re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~SerializerV1(void *a1)
{
  *a1 = &unk_1F5D19390;
  re::DynamicArray<unsigned long>::deinit((a1 + 59));
  re::DynamicArray<unsigned long>::deinit((a1 + 54));
  re::DynamicArray<unsigned long>::deinit((a1 + 49));
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 43);
  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::untrackObject(uint64_t result)
{
  if (*(result + 336) == 1)
  {
    --*(result + 488);
    ++*(result + 496);
  }

  return result;
}

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doOpen(uint64_t a1)
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

void re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doClose(uint64_t a1)
{
  re::HashTable<void const*,unsigned int,re::Hash<void const*>,re::EqualTo<void const*>,true,false>::clear(a1 + 344);
  *(a1 + 408) = 0;
  ++*(a1 + 416);
  *(a1 + 448) = 0;
  ++*(a1 + 456);
  *(a1 + 488) = 0;
  ++*(a1 + 496);
}

void re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doRegisterSerializeFuncs(uint64_t a1)
{
  v27 = 6059476;
  v28 = "BOOL";
  v2 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeBool<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6104748;
  v28 = "char";
  v3 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeChar<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x172E117BCLL;
  v28 = "int8_t";
  v4 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI8<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93A4A92;
  v28 = "int16_t";
  v5 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI16<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93BFE06;
  v28 = "int32_t";
  v6 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI32<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2CE93EC744;
  v28 = "int64_t";
  v7 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 6655224;
  v28 = "long";
  v8 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeI64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x31CD534126;
  v28 = "uint8_t";
  v9 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU8<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0D4E68;
  v28 = "uint16_t";
  v10 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU16<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD0F01DCLL;
  v28 = "uint32_t";
  v11 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU32<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x607DD11CB1ALL;
  v28 = "uint64_t";
  v12 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x1947BDF6CLL;
  v28 = "size_t";
  v13 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeU64<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 195052728;
  v28 = "float";
  v14 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeFloat<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x161EEF7A2;
  v28 = "double";
  v15 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDouble<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 189247272;
  v28 = "char*";
  v16 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeCString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x2686EB529B3EE220;
  v28 = "DynamicString";
  v17 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0x458DDB01A18;
  v28 = "StringID";
  v18 = re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v27, re::serializeStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
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
        re::Serializer<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::registerSerializeFunc(a1, &v25, re::serializeIntrospectionCallbackSerializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>);
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

uint64_t re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

uint64_t (*re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, re::TypeInfo *this))(int, int, int, int, re::TypeInfo *this)
{
  v4 = re::TypeInfo::name(this);
  if (*v4 >> 1 != 94623636 || (v6 = v4[1], v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v6 != "char*") && (v8 = strcmp(v6, "char*"), v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializeCString, v8))
  {
    if (*(this + 12) != 9)
    {
LABEL_9:
      v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
      if (*this == *(a1 + 272))
      {
        v10 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(this + 2) | 0xFFFFFFFF00000000);
        v7 = re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v10)
        {
          return *v10;
        }
      }

      return v7;
    }

    v9 = *(*(this + 2) + 88);
    v7 = re::SerializerV1<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::serializePointer;
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

void re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1, double a2)
{
  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doSerialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, re::TypeInfo *a5, uint64_t a6, uint64_t a7)
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

uint64_t (*re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::doResolveSerializeFunc(uint64_t a1, uint64_t a2))(int, int, int, int, re *this, re::TypeInfo *)
{
  v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
  if (*a2 == *(a1 + 272))
  {
    v3 = re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderBinary<re::SeekableInputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::tryGet(a1 + 288, **(a2 + 16) | 0xFFFFFFFF00000000);
    v2 = re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
    if (v3)
    {
      return *v3;
    }
  }

  return v2;
}

uint64_t re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(uint64_t a1)
{
  *a1 = &unk_1F5D193F8;
  re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(a1);
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

void re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::deinit(void *a1)
{
  if (a1[34])
  {
    (*(*a1 + 40))(a1);
    re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::clear((a1 + 36));
    a1[34] = 0;
  }
}

uint64_t re::serializeType<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(void *a1, const char *a2, const re::TypeInfo *a3, const re::TypeInfo *a4, re *this, re::TypeInfo *a6, uint64_t a7)
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

                return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>((a1 + 3), a2, a4);
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

              return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>((a1 + 3), a2, a4);
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
            __dst.n128_u64[0] = &unk_1F5D19460;
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
            __dst.n128_u64[0] = &unk_1F5D19460;
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
            re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a7);
            goto LABEL_389;
          }

          if (*(this + 12) == *(a6 + 12))
          {
            re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a4, this, a6, a7);
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

    re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(v66, v67, v43, 0, v64, v65, 1);
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
        v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v118 == "StringID")
        {
          goto LABEL_368;
        }

        v119 = strcmp(v118, "StringID");
        v31 = re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (!v119)
        {
          goto LABEL_368;
        }
      }

      else if (v59 == 0x134375A94D9F7110)
      {
        v60 = v27[1];
        v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
        if (v60 == "DynamicString")
        {
          goto LABEL_368;
        }

        v61 = strcmp(v60, "DynamicString");
        v31 = re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>;
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
      v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
      if (v167 == "uint32_t")
      {
        goto LABEL_368;
      }

      v168 = strcmp(v167, "uint32_t");
      v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>;
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
    v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
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
        v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (v30 == "uint16_t")
        {
          goto LABEL_368;
        }

        v32 = strcmp(v30, "uint16_t");
        v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>;
        if (!v32)
        {
          goto LABEL_368;
        }
      }

      goto LABEL_347;
    }

    v143 = v27[1];
    v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
    if (v143 == "size_t")
    {
      goto LABEL_368;
    }

    v144 = "size_t";
  }

  v166 = strcmp(v143, v144);
  v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>;
  if (!v166)
  {
    goto LABEL_368;
  }

LABEL_347:
  __dst.n128_u64[0] = 0x18E6A9A093;
  __dst.n128_u64[1] = "uint8_t";
  v169 = re::StringID::operator==(v27, &__dst);
  v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>;
  if (v169)
  {
    goto LABEL_368;
  }

  __dst.n128_u64[0] = 0x16749F63A2;
  __dst.n128_u64[1] = "int64_t";
  if (re::StringID::operator==(v27, &__dst))
  {
    v117 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(a1, a2, a3, a4, this, a6, a7);
    goto LABEL_369;
  }

  *v211 = 3327612;
  *&v211[8] = "long";
  v175 = re::StringID::operator==(v27, v211);
  v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>;
  if (v175 || (__dst.n128_u64[0] = 104431, __dst.n128_u64[1] = "int", v176 = re::StringID::operator==(v27, &__dst), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>, v176) || (__dst.n128_u64[0] = 109413500, __dst.n128_u64[1] = "short", v177 = re::StringID::operator==(v27, &__dst), v31 = re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>, v177))
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeBool(uint64_t a1, const char *a2, unsigned __int8 *a3)
{
  v10 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v10);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteBool(v6, v7);
    v8 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v8 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeChar(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v9);
    }

    v6 = *(a1 + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v6, a3, 1u);
    v7 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v7 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<signed char>(uint64_t a1, const char *a2, char *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<short>(uint64_t a1, const char *a2, __int16 *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<int>(uint64_t a1, const char *a2, unsigned int *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<long long>(uint64_t a1, const char *a2, unint64_t *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteInt64(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned char>(uint64_t a1, const char *a2, unsigned __int8 *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned short>(uint64_t a1, const char *a2, unsigned __int16 *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned int>(uint64_t a1, const char *a2, unsigned int *a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeInt<unsigned long long>(uint64_t a1, const char *a2, rapidjson::internal **a3)
{
  v11 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v11);
    }

    v6 = *(a1 + 168);
    v7 = *a3;
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteUint64(v6, v7, v8);
    v9 = *(a1 + 128) + 48 * *(a1 + 112);
    ++*(v9 - 16);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(uint64_t a1, const char *a2, float *a3)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(uint64_t a1, const char *a2, double *a3)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginString(uint64_t a1, const char *a2, uint64_t *a3)
{
  v16 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v16);
    }

    v6 = *a3;
    if (!*a3)
    {
      v7 = *(a1 + 168);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v7);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v7, "", 0);
      v6 = *a3;
    }

    v9[0] = 8;
    v10 = 0;
    v11 = v16;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v6;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v9);
  }

  return v3 ^ 1u;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeString(uint64_t result, uint64_t a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    v3 = result;
    v4 = *(*(result + 128) + 48 * *(result + 112) - 24);
    v5 = *(result + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v5);
    result = rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteString(v5, a2, v4);
    v6 = *(v3 + 128) + 48 * *(v3 + 112);
    *(v6 - 16) += v4;
  }

  return result;
}

double re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginOptional(uint64_t result, const char *a2, unsigned __int8 *a3)
{
  v15 = a2;
  if ((*(result + 40) & 1) == 0)
  {
    if ((*(*(result + 128) + 48 * *(result + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(result + 168), &v15);
    }

    v5 = *a3;
    if ((v5 & 1) == 0)
    {
      v6 = *(result + 168);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v6);
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v6);
      v5 = *a3;
    }

    v8[0] = 3;
    v9 = 0;
    v10 = v15;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v12 = v5;
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(result, v8);
  }

  return v7;
}

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginArray(uint64_t a1, const char *a2, uint64_t *a3, int a4)
{
  v17 = a2;
  v4 = *(a1 + 40);
  if ((v4 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v17);
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v8 = *a3;
    v10[0] = 5;
    v11 = a4 & 0xFFFFFFDF;
    v12 = v17;
    v13 = 0;
    v15 = 0;
    v16 = 0;
    v14 = v8;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v10);
  }

  return v4 ^ 1u;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endArray(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(result + 21);
      v4[4] -= 16;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(v4);
      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v5 - 16);
    }

    else
    {
      if (v10)
      {
        v7 = *&v11[7];
      }

      else
      {
        v7 = v11;
      }

      v8 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(&v12, "Failed to deserialize array %s. Expected number of elements: %lld. Actual number of elements: %lld.", v6, v7, *(v8 - 24), *(v8 - 16));
      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      result = v9;
      if (v9)
      {
        if (v10)
        {
          return (*(*v9 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,unsigned char>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,long long>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,int>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithInteger<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,short>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::internal::serializeDictionaryWithStringID<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionary(uint64_t a1, const char *a2, uint64_t *a3)
{
  v15 = a2;
  v3 = *(a1 + 40);
  if ((v3 & 1) == 0)
  {
    if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
    {
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v15);
    }

    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartArray(*(a1 + 168));
    v6 = *a3;
    v8[0] = 6;
    v9 = 0;
    v10 = v15;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    v12 = v6;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v8);
  }

  return v3 ^ 1u;
}

double re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginDictionaryEntry(uint64_t result, int a2)
{
  if ((*(result + 40) & 1) == 0)
  {
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::StartObject(*(result + 168));
    v5[0] = 7;
    v6 = a2 | 0x20;
    v7 = "entry";
    v8 = xmmword_1E3054780;
    v9 = 0;
    v10 = 0;
    return re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(result, v5);
  }

  return v4;
}

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionaryEntry(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == 2)
    {
      v4 = *(result + 21);
      v4[4] -= 16;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndObject(v4);
      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v5 - 16);
    }

    else
    {
      if (v9)
      {
        v7 = *&v10[7];
      }

      else
      {
        v7 = v10;
      }

      re::DynamicString::format(&v11, "Failed to deserialize dictionary entry %s. Expected 2 objects (key+value). Actual number of objects: %lld.", v6, v7, *(*(v1 + 16) + 48 * *(v1 + 14) - 16));
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

_anonymous_namespace_ *re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::endDictionary(_anonymous_namespace_ *result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 16);
    v3 = *(result + 14);
    if (*(v2 + 48 * v3 - 16) == *(v2 + 48 * v3 - 24))
    {
      v4 = *(result + 21);
      v4[4] -= 16;
      rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteEndArray(v4);
      v5 = *(v1 + 16) + 48 * *(v1 + 14);
      ++*(v5 - 16);
    }

    else
    {
      if (v10)
      {
        v7 = *&v11[7];
      }

      else
      {
        v7 = v11;
      }

      v8 = *(v1 + 16) + 48 * *(v1 + 14);
      re::DynamicString::format(&v12, "Failed to deserialize dictionary %s. Expected number of entries: %lld. Actual number of entries: %lld.", v6, v7, *(v8 - 24), *(v8 - 16));
      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      result = v9;
      if (v9)
      {
        if (v10)
        {
          return (*(*v9 + 40))();
        }
      }
    }
  }

  return result;
}

uint64_t re::serializeDynamicString<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, const char *a2, const re::TypeInfo *a3, uint64_t a4, re *this, re::TypeInfo *a6, int a7)
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

void *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D19460;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));
  return a1;
}

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::~Serializer(void *a1)
{
  *a1 = &unk_1F5D19460;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((a1 + 4));

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::error(_anonymous_namespace_ *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginField(uint64_t a1, int a2, uint64_t a3)
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

double re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginObject(uint64_t a1)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endObject(_anonymous_namespace_ *result)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginArray(uint64_t a1, uint64_t a2)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionary(uint64_t a1, uint64_t a2, int a3)
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

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryEntry(uint64_t result)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginDictionaryValue(uint64_t result)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionaryEntry(_anonymous_namespace_ *result)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::endDictionary(uint64_t a1)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::beginOptional(uint64_t a1, uint64_t a2)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, char a2)
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

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned int a2)
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

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int8 a2)
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

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unsigned __int16 a2)
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

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, unint64_t a2)
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

char *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, uint64_t a2)
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

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, float a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<float>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

uint64_t re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::operator<<(uint64_t a1, double a2)
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

  return re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::serializeReal<double>(*(a1 + 8) + 24, *(v2 + 40 * *(a1 + 40) - 40), &v4);
}

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeString(_anonymous_namespace_ *result, uint64_t a2, uint64_t a3)
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

void re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializeData(char *result, uint64_t a2, uint64_t a3)
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

_anonymous_namespace_ *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::serializePointer(uint64_t a1, uint64_t a2, uint64_t a3)
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

_BYTE *re::snapshot::Serializer<re::Serializer<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>>::write(uint64_t a1, uint64_t a2, re **this)
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

uint64_t re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>::beginPointer(uint64_t a1, const char *a2, int *a3)
{
  v16 = a2;
  v3 = *(a1 + 40);
  if (v3)
  {
    return v3 ^ 1u;
  }

  if ((*(*(a1 + 128) + 48 * *(a1 + 112) - 44) & 0x20) != 0)
  {
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Key(*(a1 + 168), &v16);
  }

  v6 = *a3;
  if ((*a3 - 1) < 2)
  {
LABEL_7:
    v9[0] = 9;
    v10 = 0;
    v11 = v16;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v13 = v6 != 0;
    re::Encoder<re::EncoderRapidJSON<re::DynamicArrayBufferedOutputStream,rapidjson::PrettyWriter<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,re::DynamicArrayBufferedOutputStream>::pushState(a1, v9);
    return v3 ^ 1u;
  }

  if (!v6)
  {
    v7 = *(a1 + 168);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::Prefix(v7);
    rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>::WriteNull(v7);
    v6 = *a3;
    goto LABEL_7;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected PointerEncoding.", "!Unreachable code", "beginPointer", 1054);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected PointerEncoding.");
  __break(1u);
  return result;
}

uint64_t re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(_BYTE *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  re::TypeRegistry::typeInfo(*a3, *(a3[2] + 80), v19);
  if (v19[0] == 1)
  {
    re::TypeInfo::TypeInfo(v16, &v20);
    if (*(v17 + 96) || (re::TypeRegistry::typeInfo(v16[0], *(v17 + 80), v21), v21[0] == 1))
    {
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, v16, a4);
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

uint64_t *re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(uint64_t a1, uint64_t a2, re::TypeInfo *a3, uint64_t *a4, uint64_t a5)
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
      re::internal::serializeMembersWithoutVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v42, a5);
      goto LABEL_15;
    }

    if (v43 == v39)
    {
      re::internal::serializeMembersWithVersioning<re::EncoderRapidJSON<re::CFDataBufferedOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>(a1, a2, &v42, &v38, a5);
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