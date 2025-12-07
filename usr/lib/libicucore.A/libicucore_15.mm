icu::UnicodeSet *icu::UnicodeSet::applyPropertyAlias(icu::UnicodeSet *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3, UErrorCode *a4)
{
  v49[8] = *MEMORY[0x1E69E9840];
  if (*a4 > 0 || *(this + 5) || *(this + 11))
  {
    return this;
  }

  v8 = *(a2 + 4);
  if ((v8 & 0x11) != 0)
  {
    v9 = 0;
  }

  else if ((v8 & 2) != 0)
  {
    v9 = (a2 + 10);
  }

  else
  {
    v9 = *(a2 + 3);
  }

  v10 = v8;
  v11 = v8 >> 5;
  if (v10 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = *(a2 + 3);
  }

  if (!uprv_isInvariantUString(v9, v12) || ((v13 = *(a3 + 4), (v13 & 0x11) == 0) ? ((v13 & 2) != 0 ? (v14 = (a3 + 10)) : (v14 = *(a3 + 3))) : (v14 = 0), (v15 = v13, v16 = v13 >> 5, v15 >= 0) ? (v17 = v16) : (v17 = *(a3 + 3)), !uprv_isInvariantUString(v14, v17)))
  {
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    return this;
  }

  memset(&v49[1], 0, 56);
  v49[0] = &v49[1] + 5;
  LODWORD(v49[1]) = 40;
  memset(&alias[1], 0, 56);
  alias[0] = &alias[1] + 5;
  LODWORD(alias[1]) = 40;
  icu::CharString::appendInvariantChars(v49, a2, a4);
  icu::CharString::appendInvariantChars(alias, a3, a4);
  if (*a4 <= 0)
  {
    v18 = *(a3 + 4);
    v19 = v18;
    v20 = v18 >> 5;
    if (v19 < 0)
    {
      v20 = *(a3 + 3);
    }

    if (v20 < 1)
    {
      v23 = 0x2000;
      PropertyValueEnum = u_getPropertyValueEnum(UCHAR_GENERAL_CATEGORY_MASK, v49[0]);
      if (PropertyValueEnum == -1)
      {
        v23 = 4106;
        PropertyValueEnum = u_getPropertyValueEnum(UCHAR_SCRIPT, v49[0]);
        if (PropertyValueEnum == -1)
        {
          PropertyEnum = u_getPropertyEnum(v49[0]);
          if (PropertyEnum >= 0x4C)
          {
            if (uprv_compareASCIIPropertyNames(byte_19547BF50, v49[0]))
            {
              if (uprv_compareASCIIPropertyNames("ASCII", v49[0]))
              {
                if (uprv_compareASCIIPropertyNames("Assigned", v49[0]))
                {
                  goto LABEL_73;
                }

                v37 = icu::UnicodeSet::applyIntPropertyValue(this, 0x2000, 1u, a4);
                v38 = icu::UnicodeSet::complement(v37);
                icu::UnicodeSet::removeAllStrings(v38);
LABEL_46:
                if ((*(this + 32) & 1) == 0 || *a4 > 0)
                {
                  goto LABEL_75;
                }

                v28 = U_MEMORY_ALLOCATION_ERROR;
                goto LABEL_74;
              }

              v35 = this;
              v36 = 127;
            }

            else
            {
              v35 = this;
              v36 = 1114111;
            }

            icu::UnicodeSet::set(v35, 0, v36);
            goto LABEL_75;
          }

          v23 = PropertyEnum;
          v27 = 1;
LABEL_45:
          icu::UnicodeSet::applyIntPropertyValue(this, v23, v27, a4);
          goto LABEL_46;
        }
      }
    }

    else
    {
      v21 = u_getPropertyEnum(v49[0]);
      if (v21 == -1)
      {
        goto LABEL_73;
      }

      v22 = v21;
      if (v21 == 4101)
      {
        v23 = 0x2000;
      }

      else
      {
        v23 = v21;
      }

      if (v23 == 0x2000 || v23 < 0x4C || (v23 - 4096) <= 0x1A)
      {
        v27 = u_getPropertyValueEnum(v23, alias[0]);
        if (v27 == -1)
        {
          if ((v22 - 4098) > 0xF)
          {
            goto LABEL_73;
          }

          if (((1 << (v22 - 2)) & 0xC001) == 0)
          {
            goto LABEL_73;
          }

          *name = 0;
          v29 = strtod(alias[0], name);
          if (**name)
          {
            goto LABEL_73;
          }

          if (v29 < 0.0)
          {
            goto LABEL_73;
          }

          if (v29 > 255.0)
          {
            goto LABEL_73;
          }

          v27 = v29;
          if (v29 != v29)
          {
            goto LABEL_73;
          }

          v23 = v22;
        }

        goto LABEL_45;
      }

      if (v21 <= 16394)
      {
        if (v21 == 12288)
        {
          *name = 0;
          versionArray = strtod(alias[0], name);
          if (!**name)
          {
            v31 = sub_1951D1008(12288, a4);
            v32 = sub_19527DCB0;
LABEL_67:
            icu::UnicodeSet::applyFilter(this, v32, &versionArray, v31, a4);
            goto LABEL_75;
          }
        }

        else
        {
          if (v21 != 0x4000)
          {
            if (v21 == 16389)
            {
              v46 = 0u;
              v47 = 0u;
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              *name = 0u;
              v41 = 0u;
              if (sub_19527DCE0(name, alias[0]))
              {
                v24 = u_charFromName(U_EXTENDED_CHAR_NAME, name, a4);
                if (*a4 <= 0)
                {
                  v25 = v24;
                  icu::UnicodeSet::clear(this);
                  icu::UnicodeSet::add(this, v25);
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_73;
          }

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          *name = 0u;
          v41 = 0u;
          if (sub_19527DCE0(name, alias[0]))
          {
            LODWORD(versionArray) = 0;
            u_versionFromString(&versionArray, name);
            v31 = sub_1951D1008(0x4000, a4);
            v32 = sub_19527DD5C;
            goto LABEL_67;
          }
        }

LABEL_73:
        v28 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_74:
        *a4 = v28;
        goto LABEL_75;
      }

      if (v21 == 16395)
      {
        goto LABEL_73;
      }

      if (v21 == 28672)
      {
        v33 = u_getPropertyValueEnum(UCHAR_SCRIPT, alias[0]);
        if (v33 == -1)
        {
          goto LABEL_73;
        }

        v27 = v33;
        v23 = 28672;
        goto LABEL_45;
      }

      if (v21 != 28673)
      {
        goto LABEL_73;
      }

      v23 = 28673;
      PropertyValueEnum = u_getPropertyValueEnum(UCHAR_OTHER_PROPERTY_LIMIT, alias[0]);
      if (PropertyValueEnum == -1)
      {
        goto LABEL_73;
      }
    }

    v27 = PropertyValueEnum;
    goto LABEL_45;
  }

LABEL_75:
  if (BYTE4(alias[1]))
  {
    free(alias[0]);
  }

  if (BYTE4(v49[1]))
  {
    free(v49[0]);
  }

  return this;
}

uint64_t sub_19527DCE0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  while (2)
  {
    v3 = a2 + 1;
    while (1)
    {
      a2 = v3;
      v4 = *(v3 - 1);
      if (v4 != 32)
      {
        break;
      }

      ++v3;
      if (v2 && *(a1 - 1 + v2) != 32)
      {
        goto LABEL_8;
      }
    }

    if (!*(v3 - 1))
    {
      if (v2)
      {
        v2 = (v2 - (*(a1 + v2 - 1) == 32));
      }

      *(a1 + v2) = 0;
      return 1;
    }

LABEL_8:
    if (v2 != 127)
    {
      *(a1 + v2++) = v4;
      continue;
    }

    return 0;
  }
}

BOOL sub_19527DD5C(UChar32 a1, unsigned int *a2)
{
  *versionArray = 0;
  u_charAge(a1, versionArray);
  result = 0;
  if (bswap32(*versionArray))
  {
    v4 = bswap32(*versionArray);
    v5 = bswap32(*a2);
    v6 = v4 >= v5;
    v7 = v4 > v5;
    v8 = !v6;
    return v7 - v8 < 1;
  }

  return result;
}

icu::UnicodeSet *icu::UnicodeSet::applyPropertyPattern(icu::UnicodeSet *this, const icu::UnicodeString *a2, icu::ParsePosition *a3, UErrorCode *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*a4 > 0)
  {
    return this;
  }

  v8 = *(a3 + 2);
  v9 = *(a2 + 4);
  if ((v9 & 0x8000u) == 0)
  {
    v10 = v9 >> 5;
  }

  else
  {
    v10 = *(a2 + 3);
  }

  if (v8 + 5 > v10 || v10 <= v8)
  {
    goto LABEL_91;
  }

  if ((v9 & 2) != 0)
  {
    v11 = a2 + 10;
  }

  else
  {
    v11 = *(a2 + 3);
  }

  v12 = *&v11[2 * v8];
  if (v12 == 92)
  {
    v21 = v8 + 1;
    if (v10 > v8 + 1)
    {
      v22 = *&v11[2 * v21];
      if ((v22 & 0xFFFFFFDF) != 0x50)
      {
        if (v10 <= v21 || *&v11[2 * v21] != 78)
        {
          goto LABEL_91;
        }

        v22 = 78;
      }

      v20 = v22 == 80;
      v23 = v22 == 78;
      v47 = v8 + 2;
      v24 = icu::ICU_Utility::skipWhitespace(a2, &v47, 0);
      v25 = *(a2 + 4);
      if ((v25 & 0x8000) != 0)
      {
        v26 = *(a2 + 3);
        if (v24 == v26)
        {
          goto LABEL_91;
        }
      }

      else
      {
        if (v24 == v25 >> 5)
        {
          goto LABEL_91;
        }

        v26 = v25 >> 5;
      }

      v27 = v24 + 1;
      v47 = v24 + 1;
      if (v26 > v24)
      {
        v28 = *(a2 + 3);
        if ((v25 & 2) != 0)
        {
          v28 = a2 + 10;
        }

        if (*&v28[2 * v24] == 123)
        {
          if (v24 >= -1)
          {
            if ((v25 & 0x8000) != 0)
            {
              v30 = *(a2 + 3);
              v29 = v30 >= v27 ? v24 + 1 : *(a2 + 3);
            }

            else
            {
              v30 = v25 >> 5;
              v29 = v30 >= v27 ? v24 + 1 : v30;
            }
          }

          else
          {
            v29 = 0;
            v30 = (v25 & 0x8000) != 0 ? *(a2 + 3) : v25 >> 5;
          }

          v34 = icu::UnicodeString::doIndexOf(a2, 0x7Du, v29, v30 - v29);
          v33 = 1;
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_56;
          }
        }
      }
    }

LABEL_91:
    *a4 = U_ILLEGAL_ARGUMENT_ERROR;
    return this;
  }

  v13 = v12 == 91;
  v14 = v8 + 1;
  v15 = v13 && v10 > v14;
  if (!v15 || *&v11[2 * v14] != 58)
  {
    goto LABEL_91;
  }

  v47 = v8 + 2;
  v16 = icu::ICU_Utility::skipWhitespace(a2, &v47, 0);
  v47 = v16;
  v17 = *(a2 + 4);
  v18 = v17 >> 5;
  if ((v17 & 0x8000) != 0)
  {
    v19 = *(a2 + 3);
    if (v16 >= v19)
    {
      v20 = 0;
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

LABEL_54:
      v32 = 0;
      v18 = *(a2 + 3);
      goto LABEL_55;
    }
  }

  else
  {
    v19 = v17 >> 5;
    if (v16 >= (v17 >> 5))
    {
      v20 = 0;
      goto LABEL_45;
    }
  }

  if (v19 <= v16)
  {
    goto LABEL_42;
  }

  v31 = *(a2 + 3);
  if ((v17 & 2) != 0)
  {
    v31 = a2 + 10;
  }

  if (*&v31[2 * v16] == 94)
  {
    v47 = ++v16;
    v20 = 1;
  }

  else
  {
LABEL_42:
    v20 = 0;
  }

  if (v16 < 0)
  {
    if ((v17 & 0x8000) == 0)
    {
      v32 = 0;
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if ((v17 & 0x8000) == 0)
  {
LABEL_45:
    if (v18 >= v16)
    {
      v32 = v16;
    }

    else
    {
      v32 = v17 >> 5;
    }

    goto LABEL_55;
  }

LABEL_49:
  v18 = *(a2 + 3);
  if (v18 >= v16)
  {
    v32 = v16;
  }

  else
  {
    v32 = *(a2 + 3);
  }

LABEL_55:
  v33 = 2;
  v34 = icu::UnicodeString::indexOf(a2, ":", 0, 2, v32, v18 - v32);
  v23 = 0;
  if ((v34 & 0x80000000) != 0)
  {
    goto LABEL_91;
  }

LABEL_56:
  v35 = *(a2 + 4);
  if ((v47 & 0x80000000) != 0)
  {
    v37 = 0;
    if ((v35 & 0x8000) != 0)
    {
      v36 = *(a2 + 3);
    }

    else
    {
      v36 = v35 >> 5;
    }
  }

  else if ((v35 & 0x8000) != 0)
  {
    v36 = *(a2 + 3);
    if (v36 >= v47)
    {
      v37 = v47;
    }

    else
    {
      v37 = *(a2 + 3);
    }
  }

  else
  {
    v36 = v35 >> 5;
    if (v36 >= v47)
    {
      v37 = v47;
    }

    else
    {
      v37 = v36;
    }
  }

  v38 = icu::UnicodeString::doIndexOf(a2, 0x3Du, v37, v36 - v37);
  v54 = 0u;
  v55 = 0u;
  v57 = 0;
  v56 = 0u;
  v52 = 0;
  v53 = &unk_1F0935D00;
  LOWORD(v54) = 2;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = &unk_1F0935D00;
  LOWORD(v49) = 2;
  v39 = v38 >= v34 || v23;
  v40 = *(*a2 + 24);
  if (v39)
  {
    v40(a2, v47, v34, &v53);
    if (v23)
    {
      icu::UnicodeString::operator=(&v48, &v53);
      icu::UnicodeString::unBogus(&v53);
      if ((v54 & 0x8000u) == 0)
      {
        v41 = v54 >> 5;
      }

      else
      {
        v41 = DWORD1(v54);
      }

      icu::UnicodeString::doReplace(&v53, 0, v41, L"na", 2uLL);
    }
  }

  else
  {
    v42 = v38;
    v40(a2, v47, v38, &v53);
    (*(*a2 + 24))(a2, (v42 + 1), v34, &v48);
  }

  icu::UnicodeSet::applyPropertyAlias(this, &v53, &v48, a4);
  v43 = *a4;
  if (v43 <= 0)
  {
    if (v20)
    {
      v44 = icu::UnicodeSet::complement(this);
      icu::UnicodeSet::removeAllStrings(v44);
    }

    v43 = (v34 + v33);
    *(a3 + 2) = v43;
  }

  icu::UnicodeString::~UnicodeString(v43, &v48);
  icu::UnicodeString::~UnicodeString(v45, &v53);
  return this;
}

uint64_t sub_19527E298@<X0>(void *a1@<X8>)
{
  if (qword_1EAEC9A80)
  {
    v1 = icu::UnicodeSet::~UnicodeSet(a1, qword_1EAEC9A80);
    MEMORY[0x19A8B2600](v1, 0x10B1C403432821BLL);
  }

  qword_1EAEC9A80 = 0;
  atomic_store(0, &dword_1EAEC9A88);
  return 1;
}

uint64_t sub_19527E2EC(uint64_t a1, const icu::UnicodeSet *a2, uint64_t a3, int a4)
{
  v8 = (a1 + 8);
  v9 = icu::UnicodeSet::UnicodeSet((a1 + 8), 0, 1114111);
  *(a1 + 224) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = a3;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0;
  v57 = (a1 + 224);
  *(a1 + 260) = a4 == 63;
  icu::UnicodeSet::retainAll(v9, a2);
  if (a4)
  {
    *(a1 + 208) = v8;
  }

  v10 = *(*(a1 + 216) + 8);
  if (v10 < 1)
  {
    goto LABEL_127;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v13 = icu::UVector::elementAt(*(a1 + 216), v11);
    v14 = *(v13 + 8);
    if ((v14 & 0x11) != 0)
    {
      v15 = 0;
      if ((v14 & 0x8000) == 0)
      {
        goto LABEL_10;
      }
    }

    else if ((v14 & 2) != 0)
    {
      v15 = (v13 + 10);
      if ((v14 & 0x8000) == 0)
      {
LABEL_10:
        v16 = v14 >> 5;
        if (!v16)
        {
          goto LABEL_34;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v15 = *(v13 + 24);
      if ((v14 & 0x8000) == 0)
      {
        goto LABEL_10;
      }
    }

    v16 = *(v13 + 12);
    if (!v16)
    {
      goto LABEL_34;
    }

LABEL_14:
    v17 = icu::UnicodeSet::span(v8, v15, v16, 1);
    if (v17 < v16)
    {
      v12 = 1;
    }

    if ((a4 & 8) != 0 && v16 > *(a1 + 252))
    {
      *(a1 + 252) = v16;
    }

    v19 = (a4 & 2) == 0 && v17 >= v16;
    if ((a4 & 4) != 0 && !v19)
    {
      *pErrorCode = 0;
      u_strToUTF8(0, 0, pErrorCode, v15, v16, &pErrorCode[1]);
      v20 = pErrorCode[0];
      if (pErrorCode[1] != U_BUFFER_OVERFLOW_ERROR && pErrorCode[1] >= U_ILLEGAL_ARGUMENT_ERROR)
      {
        v20 = U_ZERO_ERROR;
      }

      *(a1 + 248) += v20;
      if (v20 > *(a1 + 256))
      {
        *(a1 + 256) = v20;
      }
    }

LABEL_34:
    ++v11;
  }

  while (v10 != v11);
  if (!v12)
  {
    goto LABEL_127;
  }

  if (*(a1 + 260) && (icu::UnicodeSet::freeze(v8), v22 = *(a1 + 260), *(a1 + 260)))
  {
    v23 = *(a1 + 248) + 8 * v10;
  }

  else
  {
    v22 = 0;
    if ((a4 & 4) != 0)
    {
      v23 = 5 * v10 + *(a1 + 248);
    }

    else
    {
      v23 = v10;
    }
  }

  if (v23 <= 128)
  {
    v24 = (a1 + 264);
    *(a1 + 224) = a1 + 264;
    if (v22)
    {
      goto LABEL_44;
    }

LABEL_47:
    if ((a4 & 4) != 0)
    {
      v24 += 4 * v10;
      *(a1 + 240) = &v24[v10];
    }

    *(a1 + 232) = v24;
    v61 = v24;
    v26 = v24;
    goto LABEL_50;
  }

  v27 = malloc_type_malloc(v23, 0x100004052888210uLL);
  *v57 = v27;
  if (!v27)
  {
LABEL_127:
    *(a1 + 252) = 0;
    *(a1 + 256) = 0;
    return a1;
  }

  v24 = v27;
  if (!*(a1 + 260))
  {
    goto LABEL_47;
  }

LABEL_44:
  v25 = &v24[4 * v10];
  v26 = &v25[v10];
  v61 = &v25[v10 + v10];
  v24 = &v61[v10];
  *(a1 + 232) = v25;
  *(a1 + 240) = &v61[v10 + v10];
LABEL_50:
  v28 = 0;
  v62 = 0;
  v58 = v26;
  v59 = v10;
  v60 = v8;
  while (2)
  {
    v29 = icu::UVector::elementAt(*(a1 + 216), v28);
    v30 = *(v29 + 8);
    if ((v30 & 0x11) == 0)
    {
      if ((v30 & 2) != 0)
      {
        v31 = (v29 + 10);
        if ((v30 & 0x8000) != 0)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v31 = *(v29 + 24);
        if ((v30 & 0x8000) != 0)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_56;
    }

    v31 = 0;
    if ((v30 & 0x8000) == 0)
    {
LABEL_56:
      v32 = v30 >> 5;
      goto LABEL_59;
    }

LABEL_58:
    v32 = *(v29 + 12);
LABEL_59:
    v33 = icu::UnicodeSet::span(v8, v31, v32, 1);
    if (v32 < 1 || v33 >= v32)
    {
      if ((a4 & 4) != 0)
      {
        if ((a4 & 2) != 0)
        {
          v37 = (*(a1 + 240) + v62);
          v38 = *(a1 + 248) - v62;
          *pErrorCode = 0;
          u_strToUTF8(v37, v38, pErrorCode, v31, v32, &pErrorCode[1]);
          if (pErrorCode[1] <= U_ZERO_ERROR)
          {
            v39 = pErrorCode[0];
          }

          else
          {
            v39 = U_ZERO_ERROR;
          }

          *(*(a1 + 224) + 4 * v28) = v39;
          v62 += v39;
        }

        else
        {
          *&(*v57)[4 * v28] = 0;
        }
      }

      if (*(a1 + 260))
      {
        v24[v28] = -1;
        v61[v28] = -1;
        v26[v28] = -1;
      }

      *(*(a1 + 232) + v28) = -1;
      goto LABEL_115;
    }

    if ((a4 & 8) != 0)
    {
      if ((a4 & 2) == 0)
      {
        LOBYTE(v35) = 0;
        v26[v28] = 0;
        v36 = *(a1 + 232);
        goto LABEL_85;
      }

      if ((a4 & 0x20) != 0)
      {
        if (v33 >= 254)
        {
          v40 = -2;
        }

        else
        {
          v40 = v33;
        }

        *(*(a1 + 232) + v28) = v40;
      }

      if ((a4 & 0x10) != 0)
      {
        v35 = v32 - icu::UnicodeSet::spanBack(v8, v31, v32, 1);
        if (v35 >= 254)
        {
          LOBYTE(v35) = -2;
        }

        v36 = v26;
LABEL_85:
        v36[v28] = v35;
      }
    }

    if ((a4 & 4) == 0)
    {
      goto LABEL_97;
    }

    v41 = v24;
    v42 = (*(a1 + 240) + v62);
    v43 = *(a1 + 248) - v62;
    *pErrorCode = 0;
    u_strToUTF8(v42, v43, pErrorCode, v31, v32, &pErrorCode[1]);
    if (pErrorCode[1] <= U_ZERO_ERROR)
    {
      v44 = pErrorCode[0];
    }

    else
    {
      v44 = 0;
    }

    *(*(a1 + 224) + 4 * v28) = v44;
    v62 += v44;
    if (!v44)
    {
      LOBYTE(v45) = -1;
      v24 = v41;
      v41[v28] = -1;
LABEL_94:
      v46 = v61;
      goto LABEL_95;
    }

    if ((a4 & 2) == 0)
    {
      LOBYTE(v45) = 0;
      v24 = v41;
      v41[v28] = 0;
      goto LABEL_94;
    }

    if ((a4 & 0x20) != 0)
    {
      v54 = icu::UnicodeSet::spanUTF8(v60, v42, v44, 1);
      if (v54 >= 254)
      {
        v55 = -2;
      }

      else
      {
        v55 = v54;
      }

      v61[v28] = v55;
    }

    if ((a4 & 0x10) != 0)
    {
      v45 = v44 - icu::UnicodeSet::spanBackUTF8(v60, v42, v44, 1);
      if (v45 >= 254)
      {
        LOBYTE(v45) = -2;
      }

      v24 = v41;
      v46 = v41;
LABEL_95:
      v46[v28] = v45;
      goto LABEL_96;
    }

    v24 = v41;
LABEL_96:
    v10 = v59;
    v8 = v60;
    v26 = v58;
LABEL_97:
    if (a4)
    {
      if ((a4 & 0x20) != 0)
      {
        v47 = *v31;
        v48 = v32 != 1 && (v47 & 0xFC00) == 55296;
        if (v48)
        {
          v49 = v31[1];
          v48 = (v49 & 0xFC00) == 56320;
          v50 = (v47 << 10) - 56613888 + v49;
          if (v48)
          {
            v47 = v50;
          }

          else
          {
            v47 = *v31;
          }
        }

        sub_19527E87C(a1, v47);
      }

      if ((a4 & 0x10) != 0)
      {
        v51 = v31[(v32 - 1)];
        if (v32 >= 2 && (v51 & 0xFC00) == 0xDC00)
        {
          v52 = v31[v32 - 2];
          v48 = (v52 & 0xFC00) == 55296;
          v53 = v51 - 56613888 + (v52 << 10);
          if (v48)
          {
            v51 = v53;
          }

          else
          {
            v51 = v31[(v32 - 1)];
          }
        }

        sub_19527E87C(a1, v51);
      }
    }

LABEL_115:
    if (v10 != ++v28)
    {
      continue;
    }

    break;
  }

  if (*(a1 + 260))
  {
    icu::UnicodeSet::freeze(*(a1 + 208));
  }

  return a1;
}

icu::UnicodeSet *sub_19527E87C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 208);
  if (v3)
  {
    v4 = v3 == (a1 + 8);
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    result = icu::UnicodeSet::contains((a1 + 8), a2);
    if (!result)
    {
      icu::UnicodeSet::cloneAsThawed((a1 + 8));
    }
  }

  else
  {

    return icu::UnicodeSet::add(v3, a2);
  }

  return result;
}

uint64_t sub_19527E904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a2 + 8;
  v7 = icu::UnicodeSet::UnicodeSet((a1 + 8), (a2 + 8));
  *(a1 + 224) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = a3;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v8 = *(a2 + 248);
  *(a1 + 248) = v8;
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 260) = 1;
  if (*(a2 + 208) != v6)
  {
    icu::UnicodeSet::clone(*(a2 + 208));
  }

  *(a1 + 208) = v7;
  v9 = *(a3 + 8);
  v10 = 8 * v9 + v8;
  if (v10 > 128)
  {
    v11 = malloc_type_malloc(v10, 0x100004052888210uLL);
    *(a1 + 224) = v11;
    if (!v11)
    {
      *(a1 + 252) = 0;
      *(a1 + 256) = 0;
      return a1;
    }
  }

  else
  {
    v11 = (a1 + 264);
    *(a1 + 224) = a1 + 264;
  }

  v12 = &v11[4 * v9];
  *(a1 + 232) = v12;
  *(a1 + 240) = &v12[4 * v9];
  memcpy(v11, *(a2 + 224), v10);
  return a1;
}

void *sub_19527EA08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[26];
  if (v3)
  {
    v4 = v3 == (a1 + 1);
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = icu::UnicodeSet::~UnicodeSet(a2, v3);
    MEMORY[0x19A8B2600](v5, 0x10B1C403432821BLL);
  }

  v6 = a1[28];
  v7 = a1 + 33;
  if (v6)
  {
    v8 = v6 == v7;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    free(v6);
  }

  icu::UnicodeSet::~UnicodeSet(v7, (a1 + 1));
  return a1;
}

uint64_t sub_19527EA7C(uint64_t a1, UChar *s, uint64_t a3, int a4)
{
  v4 = a3;
  v68[5] = *MEMORY[0x1E69E9840];
  if (!a4)
  {

    return sub_19527F0F4(a1, s, a3);
  }

  v7 = a4;
  v8 = icu::UnicodeSet::span((a1 + 8), s, a3, 1);
  v9 = v4 - v8;
  if (v4 == v8)
  {
    return v4;
  }

  v10 = v8;
  v68[0] = &v68[2] + 4;
  memset(&v68[1], 0, 32);
  if (v7 == 1)
  {
    v11 = *(a1 + 252);
    if (v11 > 16)
    {
      v12 = malloc_type_malloc(*(a1 + 252), 0x100004077774924uLL);
      if (v12)
      {
        v68[0] = v12;
        LODWORD(v68[1]) = v11;
      }

      else
      {
        v11 = v68[1];
        v12 = v68[0];
      }
    }

    else
    {
      v11 = 16;
      LODWORD(v68[1]) = 16;
      v12 = &v68[2] + 4;
    }

    bzero(v12, v11);
  }

  v65 = v4;
  v67 = v4;
  v14 = *(*(a1 + 216) + 8);
  v15 = v10;
  v66 = v7;
  while (v7 == 1)
  {
    if (v14 >= 1)
    {
      v16 = 0;
      while (1)
      {
        LODWORD(v17) = *(*(a1 + 232) + v16);
        if (v17 != 255)
        {
          break;
        }

LABEL_37:
        if (++v16 == v14)
        {
          goto LABEL_101;
        }
      }

      v18 = icu::UVector::elementAt(*(a1 + 216), v16);
      v19 = *(v18 + 8);
      if ((v19 & 0x11) != 0)
      {
        v20 = 0;
        if ((v19 & 0x8000) != 0)
        {
          goto LABEL_25;
        }

LABEL_23:
        v21 = v19 >> 5;
LABEL_26:
        if (v17 == 254)
        {
          v17 = v21 - 1;
          v22 = (v20[v17] & 0xFC00) != 0xDC00 || v21 < 2;
          if (!v22 && (v20[v21 - 2] & 0xFC00) == 0xD800)
          {
            LODWORD(v17) = v21 - 2;
          }
        }

        if (v17 >= v15)
        {
          LODWORD(v23) = v15;
        }

        else
        {
          LODWORD(v23) = v17;
        }

        v24 = v21 - v23;
        if (v21 - v23 <= v9)
        {
          v25 = v21;
          v23 = v23;
          v26 = v67 - v21;
          v27 = v21 + 1;
          do
          {
            v28 = v68[1];
            if (LODWORD(v68[2]) + v24 < SLODWORD(v68[1]))
            {
              v28 = 0;
            }

            v29 = LODWORD(v68[2]) + v24 - v28;
            if (!*(v68[0] + v29))
            {
              v31 = v10 - v23;
              v32 = &s[v31];
              v33 = v27;
              v34 = v32;
              v35 = v20;
              while (*v34 == *v35)
              {
                ++v35;
                ++v34;
                if (--v33 <= 1)
                {
                  if (v31 < 1 || (*(v32 - 1) & 0xFC00) != 0xD800 || (*v32 & 0xFC00) != 0xDC00)
                  {
                    if (v31 >= v26 || (v36 = &v32[v25], (*(v36 - 1) & 0xFC00) != 0xD800) || (*v36 & 0xFC00) != 0xDC00)
                    {
                      if (v24 == v9)
                      {
                        goto LABEL_125;
                      }

                      *(v68[0] + v29) = 1;
                      ++HIDWORD(v68[1]);
                    }
                  }

                  break;
                }
              }
            }

            if (!v23)
            {
              break;
            }

            --v23;
          }

          while (v24++ != v9);
        }

        goto LABEL_37;
      }

      if ((v19 & 2) != 0)
      {
        v20 = (v18 + 10);
        if ((v19 & 0x8000) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v20 = *(v18 + 24);
        if ((v19 & 0x8000) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      v21 = *(v18 + 12);
      goto LABEL_26;
    }

LABEL_101:
    if (v15 || !v10)
    {
      if (!HIDWORD(v68[1]))
      {
        v4 = v10;
        goto LABEL_126;
      }

LABEL_110:
      v39 = sub_19527F300(v68);
      v15 = 0;
      v9 -= v39;
      goto LABEL_124;
    }

    v59 = &s[v10];
    if (HIDWORD(v68[1]))
    {
      v60 = *v59;
      if (v9 >= 2 && (v60 & 0xFC00) == 0xD800 && (v61 = v59[1], (v61 & 0xFC00) == 0xDC00))
      {
        if (!icu::UnicodeSet::contains((a1 + 8), (v61 + (v60 << 10) - 56613888)))
        {
          goto LABEL_110;
        }

        v39 = 2;
      }

      else
      {
        if (!icu::UnicodeSet::contains((a1 + 8), v60))
        {
          goto LABEL_110;
        }

        v39 = 1;
      }

      v9 -= v39;
      if (!v9)
      {
        goto LABEL_125;
      }

      v62 = v68[1];
      if (LODWORD(v68[2]) + v39 < SLODWORD(v68[1]))
      {
        v62 = 0;
      }

      v63 = LODWORD(v68[2]) + v39 - v62;
      if (*(v68[0] + v63))
      {
        *(v68[0] + v63) = 0;
        --HIDWORD(v68[1]);
      }

      v15 = 0;
      LODWORD(v68[2]) = v63;
    }

    else
    {
      v64 = icu::UnicodeSet::span((a1 + 8), &s[v10], v9, 1);
      v39 = v64;
      v9 -= v64;
      if (!v9 || !v64)
      {
        v4 = (v64 + v10);
        goto LABEL_126;
      }

      v15 = v64;
    }

LABEL_124:
    v10 = (v39 + v10);
  }

  if (v14 < 1)
  {
    v39 = 0;
    v58 = 0;
LABEL_100:
    if (v58)
    {
      goto LABEL_111;
    }

    goto LABEL_101;
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  do
  {
    v40 = *(*(a1 + 232) + v37);
    v41 = icu::UVector::elementAt(*(a1 + 216), v37);
    v42 = *(v41 + 8);
    if ((v42 & 0x11) != 0)
    {
      v43 = 0;
      if ((v42 & 0x8000) == 0)
      {
        goto LABEL_65;
      }
    }

    else if ((v42 & 2) != 0)
    {
      v43 = (v41 + 10);
      if ((v42 & 0x8000) == 0)
      {
LABEL_65:
        v44 = v42 >> 5;
        if (!(v42 >> 5))
        {
          goto LABEL_96;
        }

        goto LABEL_69;
      }
    }

    else
    {
      v43 = *(v41 + 24);
      if ((v42 & 0x8000) == 0)
      {
        goto LABEL_65;
      }
    }

    v44 = *(v41 + 12);
    if (!v44)
    {
      goto LABEL_96;
    }

LABEL_69:
    if (v40 <= 0xFD)
    {
      v45 = v40;
    }

    else
    {
      v45 = v44;
    }

    if (v45 >= v15)
    {
      LODWORD(v46) = v15;
    }

    else
    {
      LODWORD(v46) = v45;
    }

    v47 = v44 - v46;
    if (v44 - v46 <= v9 && v46 >= v38)
    {
      v49 = v44;
      v46 = v46;
      v50 = v67 - v44;
      v51 = v44 + 1;
      do
      {
        if (v46 > v38 || v47 > v39)
        {
          v52 = v10 - v46;
          v53 = &s[v52];
          v54 = v51;
          v55 = v53;
          v56 = v43;
          while (*v55 == *v56)
          {
            ++v56;
            ++v55;
            if (--v54 <= 1)
            {
              if (v52 < 1 || (*(v53 - 1) & 0xFC00) != 0xD800 || (*v53 & 0xFC00) != 0xDC00)
              {
                if (v52 >= v50 || (v57 = &v53[v49], (*(v57 - 1) & 0xFC00) != 0xD800) || (*v57 & 0xFC00) != 0xDC00)
                {
                  v39 = v47;
                  v38 = v46;
                  goto LABEL_96;
                }
              }

              break;
            }
          }
        }

        if (v47 >= v9)
        {
          break;
        }

        ++v47;
        v22 = v46-- <= v38;
      }

      while (!v22);
    }

LABEL_96:
    ++v37;
  }

  while (v37 != v14);
  v58 = v38 != 0;
  v7 = v66;
  if (!v39)
  {
    goto LABEL_100;
  }

LABEL_111:
  v9 -= v39;
  if (v9)
  {
    v15 = 0;
    goto LABEL_124;
  }

LABEL_125:
  v4 = v65;
LABEL_126:
  if (v68[0] != &v68[2] + 4)
  {
    free(v68[0]);
  }

  return v4;
}

uint64_t sub_19527F0F4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v6 = 0;
  v7 = *(*(a1 + 216) + 8);
  while (1)
  {
    v8 = icu::UnicodeSet::span(*(a1 + 208), (a2 + 2 * v6), v3, 0);
    v9 = v3 - v8;
    if (v3 == v8)
    {
      return a3;
    }

    v10 = (v8 + v6);
    v11 = (a2 + 2 * v10);
    v12 = *v11;
    if (v9 < 2 || (v12 & 0xFC00) != 55296)
    {
      break;
    }

    v14 = v11[1];
    if ((v14 & 0xFC00) != 0xDC00)
    {
      break;
    }

    if (icu::UnicodeSet::contains((a1 + 8), (v14 + (v12 << 10) - 56613888)))
    {
      return v10;
    }

    v15 = -2;
LABEL_13:
    if (v7 >= 1)
    {
      v16 = 0;
      while (*(*(a1 + 232) + v16) == 255)
      {
LABEL_34:
        if (++v16 == v7)
        {
          goto LABEL_35;
        }
      }

      v17 = icu::UVector::elementAt(*(a1 + 216), v16);
      v18 = *(v17 + 8);
      if ((v18 & 0x11) != 0)
      {
        v19 = 0;
        if ((v18 & 0x8000) != 0)
        {
LABEL_23:
          v20 = *(v17 + 12);
LABEL_24:
          if (v20 <= v9)
          {
            v21 = v20 + 1;
            v22 = (a2 + 2 * v10);
            while (*v22 == *v19)
            {
              ++v19;
              ++v22;
              if (--v21 <= 1)
              {
                if (v10 < 1 || (*(v11 - 1) & 0xFC00) != 0xD800 || (*v11 & 0xFC00) != 0xDC00)
                {
                  if (a3 - v10 <= v20)
                  {
                    return v10;
                  }

                  v23 = &v11[v20];
                  if ((*(v23 - 1) & 0xFC00) != 0xD800 || (*v23 & 0xFC00) != 0xDC00)
                  {
                    return v10;
                  }
                }

                goto LABEL_34;
              }
            }
          }

          goto LABEL_34;
        }
      }

      else if ((v18 & 2) != 0)
      {
        v19 = (v17 + 10);
        if ((v18 & 0x8000) != 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v19 = *(v17 + 24);
        if ((v18 & 0x8000) != 0)
        {
          goto LABEL_23;
        }
      }

      v20 = v18 >> 5;
      goto LABEL_24;
    }

LABEL_35:
    v6 = v10 - v15;
    v3 = v15 + v9;
    if (!(v15 + v9))
    {
      return a3;
    }
  }

  if (!icu::UnicodeSet::contains((a1 + 8), v12))
  {
    v15 = -1;
    goto LABEL_13;
  }

  return v10;
}

uint64_t sub_19527F300(unsigned __int8 **a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 2);
  v3 = *a1;
  v4 = v1 + 1;
  v5 = &(*a1)[v1 + 1];
  v6 = *(a1 + 4);
  while (v4 < v2)
  {
    v7 = *v5++;
    ++v6;
    ++v4;
    if (v7)
    {
      *(v5 - 1) = 0;
      v1 = (v6 - *(a1 + 4));
      --*(a1 + 3);
      *(a1 + 4) = v6;
      return v1;
    }
  }

  LODWORD(v1) = ~v1 + v2;
  v8 = -1;
  do
  {
    v9 = *v3++;
    v1 = (v1 + 1);
    ++v8;
  }

  while (!v9);
  *(v3 - 1) = 0;
  --*(a1 + 3);
  *(a1 + 4) = v8;
  return v1;
}

unint64_t sub_19527F37C(uint64_t a1, UChar *s, uint64_t a3, int a4)
{
  v4 = a3;
  v69[5] = *MEMORY[0x1E69E9840];
  if (!a4)
  {

    return sub_19527FA24(a1, s, a3);
  }

  v7 = icu::UnicodeSet::spanBack((a1 + 8), s, a3, 1);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = v4 - v7;
  v69[0] = &v69[2] + 4;
  memset(&v69[1], 0, 32);
  if (a4 == 1)
  {
    v10 = *(a1 + 252);
    if (v10 > 16)
    {
      v11 = malloc_type_malloc(*(a1 + 252), 0x100004077774924uLL);
      if (v11)
      {
        v69[0] = v11;
        LODWORD(v69[1]) = v10;
      }

      else
      {
        v10 = v69[1];
        v11 = v69[0];
      }
    }

    else
    {
      v10 = 16;
      LODWORD(v69[1]) = 16;
      v11 = &v69[2] + 4;
    }

    bzero(v11, v10);
  }

  v14 = *(*(a1 + 216) + 8);
  if (*(a1 + 260))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v68 = a1;
  v16 = *(a1 + 232) + v15;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (a4 == 1)
          {
            if (v14 < 1)
            {
              goto LABEL_103;
            }

            v17 = 0;
            while (1)
            {
              v18 = *(v16 + v17);
              if (v18 != 255)
              {
                break;
              }

LABEL_41:
              if (++v17 == v14)
              {
                goto LABEL_103;
              }
            }

            v19 = icu::UVector::elementAt(*(v68 + 216), v17);
            v20 = *(v19 + 8);
            if ((v20 & 0x11) != 0)
            {
              v21 = 0;
              if ((v20 & 0x8000) != 0)
              {
                goto LABEL_29;
              }

LABEL_27:
              v22 = v20 >> 5;
              goto LABEL_30;
            }

            if ((v20 & 2) != 0)
            {
              v21 = (v19 + 10);
              if ((v20 & 0x8000) == 0)
              {
                goto LABEL_27;
              }
            }

            else
            {
              v21 = *(v19 + 24);
              if ((v20 & 0x8000) == 0)
              {
                goto LABEL_27;
              }
            }

LABEL_29:
            v22 = *(v19 + 12);
LABEL_30:
            if (v18 == 254)
            {
              v23 = -1;
              if ((*v21 & 0xFC00) == 0xD800 && v22 != 1)
              {
                if ((v21[1] & 0xFC00) == 0xDC00)
                {
                  v23 = -2;
                }

                else
                {
                  v23 = -1;
                }
              }

              v18 = v23 + v22;
            }

            if (v18 >= v9)
            {
              v24 = v9;
            }

            else
            {
              v24 = v18;
            }

            LODWORD(v25) = v22 - v24;
            if ((v22 - v24) <= v8)
            {
              v26 = v22;
              v25 = v25;
              v27 = v22 + 1;
              v28 = v4 - v22;
              do
              {
                v29 = v69[1];
                if (LODWORD(v69[2]) + v25 < SLODWORD(v69[1]))
                {
                  v29 = 0;
                }

                v30 = LODWORD(v69[2]) + v25 - v29;
                v31 = v69[0];
                if (!*(v69[0] + v30))
                {
                  v32 = v8 - v25;
                  v33 = &s[v32];
                  v34 = v27;
                  v35 = v33;
                  v36 = v21;
                  while (*v35 == *v36)
                  {
                    ++v36;
                    ++v35;
                    if (--v34 <= 1)
                    {
                      if (v32 >= 1 && (*(v33 - 1) & 0xFC00) == 0xD800 && (*v33 & 0xFC00) == 0xDC00)
                      {
                        break;
                      }

                      if (v32 < v28)
                      {
                        v37 = &v33[v26];
                        if ((*(v37 - 1) & 0xFC00) == 0xD800 && (*v37 & 0xFC00) == 0xDC00)
                        {
                          break;
                        }
                      }

                      if (v8 != v25)
                      {
                        *(v69[0] + v30) = 1;
                        ++HIDWORD(v69[1]);
                        break;
                      }

                      v13 = 0;
                      goto LABEL_128;
                    }
                  }
                }

                if (!v24)
                {
                  break;
                }

                --v24;
                ++v25;
              }

              while (v8 + 1 != v25);
            }

            goto LABEL_41;
          }

          if (v14 < 1)
          {
            v58 = 0;
            v57 = 0;
            break;
          }

          v38 = 0;
          v39 = 0;
          v67 = 0;
          do
          {
            v40 = *(v16 + v38);
            v41 = icu::UVector::elementAt(*(v68 + 216), v38);
            v42 = *(v41 + 8);
            if ((v42 & 0x11) != 0)
            {
              v43 = 0;
              if ((v42 & 0x8000) == 0)
              {
                goto LABEL_68;
              }
            }

            else if ((v42 & 2) != 0)
            {
              v43 = (v41 + 10);
              if ((v42 & 0x8000) == 0)
              {
LABEL_68:
                v44 = v42 >> 5;
                if (!(v42 >> 5))
                {
                  goto LABEL_98;
                }

                goto LABEL_72;
              }
            }

            else
            {
              v43 = *(v41 + 24);
              if ((v42 & 0x8000) == 0)
              {
                goto LABEL_68;
              }
            }

            v44 = *(v41 + 12);
            if (!v44)
            {
              goto LABEL_98;
            }

LABEL_72:
            if (v40 <= 0xFD)
            {
              v45 = v40;
            }

            else
            {
              v45 = v44;
            }

            if (v45 >= v9)
            {
              v45 = v9;
            }

            LODWORD(v46) = v44 - v45;
            v47 = v44 - v45 > v8 || v45 < v39;
            if (!v47)
            {
              v48 = v44;
              v46 = v46;
              v49 = v4 - v44;
              v50 = v44 + 1;
              do
              {
                if (v45 > v39 || v46 > v67)
                {
                  v51 = v8 - v46;
                  v52 = &s[v51];
                  v53 = v50;
                  v54 = v52;
                  v55 = v43;
                  while (*v54 == *v55)
                  {
                    ++v55;
                    ++v54;
                    if (--v53 <= 1)
                    {
                      if (v51 < 1 || (*(v52 - 1) & 0xFC00) != 0xD800 || (*v52 & 0xFC00) != 0xDC00)
                      {
                        if (v51 >= v49 || (v56 = &v52[v48], (*(v56 - 1) & 0xFC00) != 0xD800) || (*v56 & 0xFC00) != 0xDC00)
                        {
                          v67 = v46;
                          v39 = v45;
                          goto LABEL_98;
                        }
                      }

                      break;
                    }
                  }
                }

                if (v8 <= v46)
                {
                  break;
                }

                ++v46;
                v47 = v45-- <= v39;
              }

              while (!v47);
            }

LABEL_98:
            ++v38;
          }

          while (v38 != v14);
          v57 = v39 != 0;
          v58 = v67;
          if (v67)
          {
LABEL_113:
            v9 = 0;
            v13 = 0;
            v8 = (v8 - v58);
            if (!v8)
            {
              goto LABEL_133;
            }

            continue;
          }

          break;
        }

        if (v57)
        {
          goto LABEL_113;
        }

LABEL_103:
        if (v9 || v8 == v4)
        {
          if (HIDWORD(v69[1]))
          {
            goto LABEL_112;
          }

          v13 = v8;
          goto LABEL_133;
        }

        if (!HIDWORD(v69[1]))
        {
          v65 = icu::UnicodeSet::spanBack((v68 + 8), s, v8, 1);
          v13 = v65;
          if (!v65)
          {
            goto LABEL_133;
          }

          v9 = v8 - v65;
          v8 = v65;
          if (!v9)
          {
            goto LABEL_133;
          }

          continue;
        }

        break;
      }

      v59 = s[v8 - 1];
      if (v8 >= 2 && (v59 & 0xFC00) == 0xDC00 && (v60 = s[v8 - 2], (v60 & 0xFC00) == 0xD800))
      {
        if (!icu::UnicodeSet::contains((v68 + 8), (v59 + (v60 << 10) - 56613888)))
        {
LABEL_112:
          v9 = 0;
          v8 = v8 - sub_19527F300(v69);
          continue;
        }

        v61 = 2;
      }

      else
      {
        if (!icu::UnicodeSet::contains((v68 + 8), v59))
        {
          goto LABEL_112;
        }

        v61 = 1;
      }

      break;
    }

    v8 = (v8 - v61);
    if (v8)
    {
      v62 = LODWORD(v69[2]) + v61;
      if (v62 >= SLODWORD(v69[1]))
      {
        v63 = v69[1];
      }

      else
      {
        v63 = 0;
      }

      v64 = v62 - v63;
      if (*(v69[0] + v64))
      {
        *(v69[0] + v64) = 0;
        --HIDWORD(v69[1]);
      }

      v9 = 0;
      LODWORD(v69[2]) = v64;
      continue;
    }

    break;
  }

  v13 = 0;
LABEL_133:
  v31 = v69[0];
LABEL_128:
  if (v31 != &v69[2] + 4)
  {
    free(v31);
  }

  return v13;
}

unint64_t sub_19527FA24(uint64_t a1, UChar *s, uint64_t a3)
{
  v3 = a3;
  v6 = *(*(a1 + 216) + 8);
  v24 = s - 2;
  v25 = s - 1;
  do
  {
    v7 = icu::UnicodeSet::spanBack(*(a1 + 208), s, a3, 0);
    v8 = v7;
    if (!v7)
    {
      return v8;
    }

    v9 = v25[v7];
    v10 = v7 >= 2 && (v9 & 0xFC00) == 56320;
    if (v10 && (v11 = v24[v7], (v11 & 0xFC00) == 0xD800))
    {
      if (icu::UnicodeSet::contains((a1 + 8), (v9 + (v11 << 10) - 56613888)))
      {
        return v8;
      }

      v12 = -2;
    }

    else
    {
      if (icu::UnicodeSet::contains((a1 + 8), v9))
      {
        return v8;
      }

      v12 = -1;
    }

    if (v6 >= 1)
    {
      v13 = 0;
      while (*(*(a1 + 232) + v13) == 255)
      {
LABEL_34:
        if (++v13 == v6)
        {
          goto LABEL_35;
        }
      }

      v14 = icu::UVector::elementAt(*(a1 + 216), v13);
      v15 = *(v14 + 8);
      if ((v15 & 0x11) != 0)
      {
        v16 = 0;
        if ((v15 & 0x8000) != 0)
        {
          goto LABEL_23;
        }

LABEL_21:
        v17 = v15 >> 5;
        goto LABEL_24;
      }

      if ((v15 & 2) != 0)
      {
        v16 = (v14 + 10);
        if ((v15 & 0x8000) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v16 = *(v14 + 24);
        if ((v15 & 0x8000) == 0)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v17 = *(v14 + 12);
LABEL_24:
      v18 = v8 - v17;
      if (v8 >= v17)
      {
        v19 = &s[v18];
        v20 = v17 + 1;
        v21 = v19;
        while (*v21 == *v16)
        {
          ++v16;
          ++v21;
          if (--v20 <= 1)
          {
            if (v18 < 1 || (*(v19 - 1) & 0xFC00) != 0xD800 || (*v19 & 0xFC00) != 0xDC00)
            {
              if (v3 - v18 <= v17)
              {
                return v8;
              }

              v22 = &v19[v17];
              if ((*(v22 - 1) & 0xFC00) != 0xD800 || (*v22 & 0xFC00) != 0xDC00)
              {
                return v8;
              }
            }

            goto LABEL_34;
          }
        }
      }

      goto LABEL_34;
    }

LABEL_35:
    a3 = (v12 + v8);
  }

  while (v12 + v8);
  return 0;
}

size_t sub_19527FC18(uint64_t a1, char *__s, size_t a3, int a4)
{
  v4 = a3;
  v51[5] = *MEMORY[0x1E69E9840];
  if (!a4)
  {

    return sub_1952800FC(a1, __s, a3);
  }

  v6 = icu::UnicodeSet::spanUTF8((a1 + 8), __s, a3, 1);
  v7 = (v4 - v6);
  if (v4 == v6)
  {
    return v4;
  }

  v8 = v6;
  v51[0] = &v51[2] + 4;
  memset(&v51[1], 0, 32);
  if (a4 == 1)
  {
    v9 = *(a1 + 256);
    if (v9 > 16)
    {
      v10 = malloc_type_malloc(*(a1 + 256), 0x100004077774924uLL);
      if (v10)
      {
        v51[0] = v10;
        LODWORD(v51[1]) = v9;
      }

      else
      {
        v9 = v51[1];
        v10 = v51[0];
      }
    }

    else
    {
      v9 = 16;
      LODWORD(v51[1]) = 16;
      v10 = &v51[2] + 4;
    }

    bzero(v10, v9);
  }

  v47 = v4;
  v12 = a1;
  v13 = *(*(a1 + 216) + 8);
  v14 = 2 * v13;
  if (!*(a1 + 260))
  {
    v14 = 0;
  }

  v15 = *(a1 + 232) + v14;
  v16 = v8;
  while (1)
  {
    v17 = *(v12 + 240);
    v50 = v8;
    if (a4 == 1)
    {
      break;
    }

    if (v13 < 1)
    {
      LODWORD(v33) = 0;
      v42 = 1;
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = *(*(v12 + 224) + 4 * v31);
        if (v34)
        {
          v35 = *(v15 + v31);
          if (v35 > 0xFD)
          {
            v35 = *(*(v12 + 224) + 4 * v31);
          }

          if (v35 >= v16)
          {
            LODWORD(v36) = v16;
          }

          else
          {
            LODWORD(v36) = v35;
          }

          v37 = (v34 - v36);
          v38 = v37 > v7 || v36 < v32;
          if (!v38)
          {
            v36 = v36;
            do
            {
              if (__s[v8 - v36] >= -64 && (v36 > v32 || v37 > v33))
              {
                v39 = &__s[v8 - v36];
                v40 = v34 + 1;
                v41 = v17;
                while (*v39 == *v41)
                {
                  ++v41;
                  ++v39;
                  if (--v40 <= 1)
                  {
                    v32 = v36;
                    goto LABEL_69;
                  }
                }
              }

              if (v37 >= v7)
              {
                break;
              }

              v37 = (v37 + 1);
              v38 = v36-- <= v32;
            }

            while (!v38);
          }

          v37 = v33;
LABEL_69:
          v17 += v34;
          v33 = v37;
        }

        ++v31;
      }

      while (v31 != v13);
      v42 = v32 == 0;
      if (v33)
      {
        goto LABEL_87;
      }
    }

    if (v42)
    {
      goto LABEL_75;
    }

LABEL_87:
    v7 = (v7 - v33);
    if (!v7)
    {
LABEL_94:
      v4 = v47;
      goto LABEL_95;
    }

    v16 = 0;
LABEL_93:
    v8 = (v33 + v8);
  }

  if (v13 >= 1)
  {
    v18 = 0;
    v19 = &__s[v8];
    do
    {
      v20 = *(*(v12 + 224) + 4 * v18);
      if (v20)
      {
        v21 = *(v15 + v18);
        if (v21 != 255)
        {
          if (v21 == 254)
          {
            v21 = v20 - 1;
            if (v17[v20 - 1] <= -65)
            {
              v22 = utf8_back1SafeBody(v17, 0, v21);
              v12 = a1;
              v21 = v22;
            }
          }

          LODWORD(v23) = v21 >= v16 ? v16 : v21;
          v24 = v20 - v23;
          if (v20 - v23 <= v7)
          {
            v23 = v23;
            do
            {
              if (__s[v50 - v23] >= -64)
              {
                v25 = v51[1];
                if (LODWORD(v51[2]) + v24 < SLODWORD(v51[1]))
                {
                  v25 = 0;
                }

                v26 = LODWORD(v51[2]) + v24 - v25;
                if (!*(v51[0] + v26))
                {
                  v27 = &v19[-v23];
                  v28 = v20 + 1;
                  v29 = v17;
                  while (*v27 == *v29)
                  {
                    ++v29;
                    ++v27;
                    if (--v28 <= 1)
                    {
                      if (v24 == v7)
                      {
                        goto LABEL_94;
                      }

                      *(v51[0] + v26) = 1;
                      ++HIDWORD(v51[1]);
                      break;
                    }
                  }
                }
              }

              if (!v23)
              {
                break;
              }

              --v23;
            }

            while (v24++ != v7);
          }
        }

        v17 += v20;
      }

      ++v18;
    }

    while (v18 != v13);
  }

LABEL_75:
  LODWORD(v8) = v50;
  if (v16 || !v50)
  {
    if (!HIDWORD(v51[1]))
    {
      v4 = v50;
      goto LABEL_95;
    }

    goto LABEL_86;
  }

  v43 = &__s[v50];
  v44 = (v12 + 8);
  if (HIDWORD(v51[1]))
  {
    LODWORD(v33) = sub_195280234(v44, v43, v7);
    if (v33 >= 1)
    {
      v7 = (v7 - v33);
      if (!v7)
      {
        goto LABEL_94;
      }

      v45 = v51[1];
      if (LODWORD(v51[2]) + v33 < SLODWORD(v51[1]))
      {
        v45 = 0;
      }

      v46 = LODWORD(v51[2]) + v33 - v45;
      if (*(v51[0] + v46))
      {
        *(v51[0] + v46) = 0;
        --HIDWORD(v51[1]);
      }

      v16 = 0;
      LODWORD(v51[2]) = v46;
      goto LABEL_92;
    }

LABEL_86:
    LODWORD(v33) = sub_19527F300(v51);
    v16 = 0;
    v7 = (v7 - v33);
LABEL_92:
    v12 = a1;
    goto LABEL_93;
  }

  LODWORD(v33) = icu::UnicodeSet::spanUTF8(v44, v43, v7, 1);
  v7 = (v7 - v33);
  if (v7 && v33)
  {
    v16 = v33;
    goto LABEL_92;
  }

  v4 = (v33 + v50);
LABEL_95:
  if (v51[0] != &v51[2] + 4)
  {
    free(v51[0]);
  }

  return v4;
}

size_t sub_1952800FC(uint64_t a1, uint64_t a2, size_t a3)
{
  v3 = a3;
  v6 = 0;
  v7 = *(*(a1 + 216) + 8);
  v8 = 2 * v7;
  if (!*(a1 + 260))
  {
    v8 = 0;
  }

  v9 = *(a1 + 232) + v8;
  v10 = a3;
  do
  {
    v11 = icu::UnicodeSet::spanUTF8(*(a1 + 208), (a2 + v6), v10, 0);
    v12 = v10 - v11;
    if (!v12)
    {
      break;
    }

    v13 = v6 + v11;
    v14 = sub_195280234((a1 + 8), (a2 + v13), v12);
    if (v14 > 0)
    {
      return v13;
    }

    if (v7 >= 1)
    {
      v15 = 0;
      v16 = *(a1 + 240);
      do
      {
        v17 = *(*(a1 + 224) + 4 * v15);
        if (v17 && v17 <= v12 && *(v9 + v15) != 255)
        {
          v18 = v17 + 1;
          v19 = (a2 + v13);
          for (i = v16; *v19 == *i; ++i)
          {
            ++v19;
            if (--v18 <= 1)
            {
              return v13;
            }
          }
        }

        v16 += v17;
        ++v15;
      }

      while (v15 != v7);
    }

    v6 = v13 - v14;
    v10 = (v14 + v12);
  }

  while (v10);
  return v3;
}

uint64_t sub_195280234(icu::UnicodeSet *a1, char *a2, unsigned int a3)
{
  v3 = *a2;
  v4 = *a2;
  if ((v3 & 0x80000000) == 0)
  {
    if (icu::UnicodeSet::contains(a1, *a2))
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  v6 = a3;
  if (a3 == 1)
  {
    goto LABEL_22;
  }

  if (v4 < 0xE0)
  {
    if (v4 >= 0xC2)
    {
      v10 = v4 & 0x1F;
      v9 = 1;
LABEL_14:
      v11 = a2[v9] ^ 0x80;
      if (v11 > 0x3F)
      {
        v12 = 65533;
        v6 = v9;
      }

      else
      {
        v12 = v11 | (v10 << 6);
        v6 = v9 + 1;
      }

      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v4 <= 0xEF)
  {
    v7 = v3 & 0xF;
    if ((a00000000000000[v7] >> (a2[1] >> 5)))
    {
      v8 = a2[1] & 0x3F;
      v9 = 2;
      goto LABEL_10;
    }

LABEL_21:
    v6 = 1;
    goto LABEL_22;
  }

  if (v4 > 0xF4)
  {
    goto LABEL_21;
  }

  v13 = v4 - 240;
  v7 = a2[1];
  if (((byte_19547BF6A[v7 >> 4] >> v13) & 1) == 0)
  {
    goto LABEL_21;
  }

  if (a3 == 2)
  {
    goto LABEL_22;
  }

  v8 = a2[2] ^ 0x80;
  if (v8 > 0x3F)
  {
    v6 = 2;
    goto LABEL_22;
  }

  LODWORD(v7) = v7 & 0x3F | (v13 << 6);
  v9 = 3;
LABEL_10:
  if (v9 != a3)
  {
    v10 = v8 | (v7 << 6);
    goto LABEL_14;
  }

LABEL_22:
  v12 = 65533;
LABEL_23:
  if (icu::UnicodeSet::contains(a1, v12))
  {
    return v6;
  }

  else
  {
    return -v6;
  }
}

uint64_t sub_195280370(uint64_t a1, uint8_t *s, uint64_t a3, int a4)
{
  v4 = a3;
  v54[5] = *MEMORY[0x1E69E9840];
  if (!a4)
  {

    return sub_195280958(a1, s, a3);
  }

  v8 = icu::UnicodeSet::spanBackUTF8((a1 + 8), s, a3, 1);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = v4 - v8;
  v54[0] = &v54[2] + 4;
  memset(&v54[1], 0, 32);
  if (a4 == 1)
  {
    v11 = *(a1 + 256);
    if (v11 > 16)
    {
      v12 = malloc_type_malloc(*(a1 + 256), 0x100004077774924uLL);
      if (v12)
      {
        v54[0] = v12;
        LODWORD(v54[1]) = v11;
      }

      else
      {
        v11 = v54[1];
        v12 = v54[0];
      }
    }

    else
    {
      v11 = 16;
      LODWORD(v54[1]) = 16;
      v12 = &v54[2] + 4;
    }

    bzero(v12, v11);
  }

  v15 = *(*(a1 + 216) + 8);
  v16 = 3 * v15;
  if (!*(a1 + 260))
  {
    v16 = 0;
  }

  v17 = *(a1 + 232) + v16;
  while (1)
  {
    while (1)
    {
      v18 = *(a1 + 240);
      if (a4 == 1)
      {
        break;
      }

      if (v15 < 1)
      {
        v35 = 0;
        v43 = 1;
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        do
        {
          v36 = *(*(a1 + 224) + 4 * v33);
          if (v36)
          {
            LODWORD(v37) = *(v17 + v33);
            if (v37 > 0xFD)
            {
              LODWORD(v37) = *(*(a1 + 224) + 4 * v33);
            }

            if (v37 >= v10)
            {
              v37 = v10;
            }

            else
            {
              v37 = v37;
            }

            LODWORD(v38) = v36 - v37;
            if (v36 - v37 <= v9 && v37 >= v34)
            {
              v38 = v38;
              do
              {
                if (s[v9 - v38] >= -64 && (v37 > v34 || v38 > v35))
                {
                  v40 = &s[v9 - v38];
                  v41 = v36 + 1;
                  v42 = v18;
                  while (*v40 == *v42)
                  {
                    ++v42;
                    ++v40;
                    if (--v41 <= 1)
                    {
                      v35 = v38;
                      goto LABEL_86;
                    }
                  }
                }

                if (v9 <= v38)
                {
                  break;
                }

                ++v38;
                v25 = v37 <= v34;
                v37 = (v37 - 1);
              }

              while (!v25);
            }

            v37 = v34;
LABEL_86:
            v18 += v36;
            v34 = v37;
          }

          ++v33;
        }

        while (v33 != v15);
        v43 = v34 == 0;
        if (v35)
        {
          goto LABEL_100;
        }
      }

      if (v43)
      {
        goto LABEL_92;
      }

LABEL_100:
      v10 = 0;
      v14 = 0;
      v9 = (v9 - v35);
      if (!v9)
      {
        goto LABEL_119;
      }
    }

    if (v15 >= 1)
    {
      v19 = 0;
      while (1)
      {
        v20 = *(*(a1 + 224) + 4 * v19);
        if (v20)
        {
          break;
        }

LABEL_58:
        if (++v19 == v15)
        {
          goto LABEL_92;
        }
      }

      v21 = *(v17 + v19);
      if (v21 == 255)
      {
LABEL_57:
        v18 += v20;
        goto LABEL_58;
      }

      if (v21 != 254)
      {
LABEL_42:
        if (v21 >= v10)
        {
          v21 = v10;
        }

        LODWORD(v26) = v20 - v21;
        if (v20 - v21 <= v9)
        {
          v26 = v26;
          do
          {
            if (s[v9 - v26] >= -64)
            {
              v27 = v54[1];
              if (LODWORD(v54[2]) + v26 < SLODWORD(v54[1]))
              {
                v27 = 0;
              }

              v28 = LODWORD(v54[2]) + v26 - v27;
              v29 = v54[0];
              if (!*(v54[0] + v28))
              {
                v30 = &s[v9 - v26];
                v31 = v20 + 1;
                v32 = v18;
                while (*v30 == *v32)
                {
                  ++v32;
                  ++v30;
                  if (--v31 <= 1)
                  {
                    if (v9 != v26)
                    {
                      *(v54[0] + v28) = 1;
                      ++HIDWORD(v54[1]);
                      break;
                    }

                    v14 = 0;
                    goto LABEL_120;
                  }
                }
              }
            }

            if (!v21)
            {
              break;
            }

            --v21;
            ++v26;
          }

          while (v9 + 1 != v26);
        }

        goto LABEL_57;
      }

      v22 = -1;
      if (v20 != 1)
      {
        v23 = *v18;
        if (v23 - 245 >= 0xFFFFFFCD)
        {
          v24 = v18[1];
          if ((v23 & 0xF0) == 0xE0)
          {
            if ((a00000000000000[v23 & 0xF] >> (v18[1] >> 5)))
            {
              if (v20 != 2)
              {
                v25 = v18[2] < -64;
                v22 = -3;
                goto LABEL_31;
              }

              goto LABEL_40;
            }

            goto LABEL_39;
          }

          if (v23 <= 0xDF)
          {
            v25 = v24 < -64;
            v22 = -2;
            goto LABEL_31;
          }

          if (((byte_19547BF6A[v24 >> 4] >> (v23 & 7)) & 1) == 0)
          {
LABEL_39:
            v22 = -1;
            goto LABEL_41;
          }

          if (v20 == 2 || v18[2] > -65)
          {
LABEL_40:
            v22 = -2;
            goto LABEL_41;
          }

          if (v20 != 3)
          {
            v25 = v18[3] < -64;
            v22 = -4;
LABEL_31:
            if (!v25)
            {
              ++v22;
            }

            goto LABEL_41;
          }

          v22 = -3;
        }
      }

LABEL_41:
      v21 = v22 + v20;
      goto LABEL_42;
    }

LABEL_92:
    if (v10 || v9 == v4)
    {
      break;
    }

    if (HIDWORD(v54[1]))
    {
      v44 = v9 - 1;
      v45 = s[v44];
      if (v45 < 0)
      {
        pi = v9 - 1;
        v48 = utf8_prevCharSafeBody(s, 0, &pi, v45, -3);
        v49 = v9 - pi;
        if (icu::UnicodeSet::contains((a1 + 8), v48))
        {
          v46 = v49;
        }

        else
        {
          v46 = -v49;
        }

        if (v46 < 1)
        {
          goto LABEL_99;
        }

LABEL_109:
        v9 = (v9 - v46);
        if (!v9)
        {
          v14 = 0;
          goto LABEL_119;
        }

        v50 = LODWORD(v54[2]) + v46;
        if (v50 >= SLODWORD(v54[1]))
        {
          v51 = v54[1];
        }

        else
        {
          v51 = 0;
        }

        v52 = v50 - v51;
        if (*(v54[0] + v52))
        {
          *(v54[0] + v52) = 0;
          --HIDWORD(v54[1]);
        }

        v10 = 0;
        LODWORD(v54[2]) = v52;
      }

      else
      {
        if (icu::UnicodeSet::contains((a1 + 8), s[v44]))
        {
          v46 = 1;
          goto LABEL_109;
        }

LABEL_99:
        v10 = 0;
        v9 = v9 - sub_19527F300(v54);
      }
    }

    else
    {
      v47 = icu::UnicodeSet::spanBackUTF8((a1 + 8), s, v9, 1);
      v14 = v47;
      if (!v47)
      {
        goto LABEL_119;
      }

      v10 = v9 - v47;
      v9 = v47;
      if (!v10)
      {
        goto LABEL_119;
      }
    }
  }

  if (HIDWORD(v54[1]))
  {
    goto LABEL_99;
  }

  v14 = v9;
LABEL_119:
  v29 = v54[0];
LABEL_120:
  if (v29 != &v54[2] + 4)
  {
    free(v29);
  }

  return v14;
}

uint64_t sub_195280958(uint64_t a1, uint8_t *s, uint64_t a3)
{
  v5 = *(*(a1 + 216) + 8);
  v6 = 3 * v5;
  if (!*(a1 + 260))
  {
    v6 = 0;
  }

  v7 = *(a1 + 232) + v6;
  while (1)
  {
    v8 = icu::UnicodeSet::spanBackUTF8(*(a1 + 208), s, a3, 0);
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v10 = v8 - 1;
    v11 = s[v10];
    if (v11 < 0)
    {
      pi = v8 - 1;
      v13 = utf8_prevCharSafeBody(s, 0, &pi, v11, -3);
      v14 = v9 - pi;
      if (icu::UnicodeSet::contains((a1 + 8), v13))
      {
        v12 = v14;
      }

      else
      {
        v12 = -v14;
      }

      if (v12 > 0)
      {
        return v9;
      }
    }

    else
    {
      if (icu::UnicodeSet::contains((a1 + 8), s[v10]))
      {
        return v9;
      }

      v12 = -1;
    }

    if (v5 >= 1)
    {
      v15 = 0;
      v16 = *(a1 + 240);
      do
      {
        v17 = *(*(a1 + 224) + 4 * v15);
        if (v17 && v17 <= v9 && *(v7 + v15) != 255)
        {
          v18 = &s[v9 - v17];
          v19 = v17 + 1;
          for (i = v16; *v18 == *i; ++i)
          {
            ++v18;
            if (--v19 <= 1)
            {
              return v9;
            }
          }
        }

        v16 += v17;
        ++v15;
      }

      while (v15 != v5);
    }

    a3 = (v12 + v9);
    if (!(v12 + v9))
    {
      return 0;
    }
  }

  return v9;
}

void icu::operator+(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v6 = *(a1 + 8);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a1 + 12);
  }

  v10 = *(a2 + 8);
  v11 = v10;
  v12 = v10 >> 5;
  if (v11 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(a2 + 12);
  }

  if (uprv_add32_overflow(v9, v13, &v25))
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
  }

  else
  {
    v14 = 0x7FFFFFFF;
    if (v25 != 0x7FFFFFFF)
    {
      v14 = ++v25;
    }

    v26 = &unk_1F0935D00;
    v27 = 0;
    icu::UnicodeString::allocate(&v26, v14);
    v15 = *(a1 + 8);
    v16 = v15;
    v17 = v15 >> 5;
    if (v16 >= 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = *(a1 + 12);
    }

    v19 = icu::UnicodeString::doAppend(&v26, a1, 0, v18);
    v20 = *(a2 + 8);
    v21 = v20;
    v22 = v20 >> 5;
    if (v21 >= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = *(a2 + 12);
    }

    v24 = icu::UnicodeString::doAppend(v19, a2, 0, v23);
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::copyFrom(a3, v24, 0);
    icu::UnicodeString::~UnicodeString(&v26);
  }
}

void icu::UnicodeString::setToBogus(icu::UnicodeString *this)
{
  if ((*(this + 4) & 4) != 0 && atomic_fetch_add((*(this + 3) - 4), 0xFFFFFFFF) == 1)
  {
    free((*(this + 3) - 4));
  }

  *(this + 4) = 1;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

UChar **icu::UnicodeString::UnicodeString(icu::UnicodeString *this, UChar **a2)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  return icu::UnicodeString::copyFrom(this, a2, 0);
}

{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  return icu::UnicodeString::copyFrom(this, a2, 0);
}

void icu::unistr_internalConcat(uint64_t a1@<X0>, unint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X1>)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0;
  if (a2 >> 31 || ((v8 = *(a1 + 8), v9 = v8, v10 = v8 >> 5, v9 >= 0) ? (v11 = v10) : (v11 = *(a1 + 12)), uprv_add32_overflow(v11, a2, &v19)))
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
  }

  else
  {
    v12 = 0x7FFFFFFF;
    if (v19 != 0x7FFFFFFF)
    {
      v12 = ++v19;
    }

    v20 = &unk_1F0935D00;
    v21 = 0;
    icu::UnicodeString::allocate(&v20, v12);
    v13 = *(a1 + 8);
    v14 = v13;
    v15 = v13 >> 5;
    if (v14 >= 0)
    {
      v16 = v15;
    }

    else
    {
      v16 = *(a1 + 12);
    }

    v17 = icu::UnicodeString::doAppend(&v20, a1, 0, v16);
    v18 = icu::UnicodeString::doAppend(v17, a4, a2);
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::copyFrom(a3, v18, 0);
    icu::UnicodeString::~UnicodeString(&v20);
  }
}

void icu::UnicodeString::releaseArray(icu::UnicodeString *this)
{
  if ((*(this + 4) & 4) != 0 && atomic_fetch_add((*(this + 3) - 4), 0xFFFFFFFF) == 1)
  {
    free((*(this + 3) - 4));
  }
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, int a2, unsigned int a3, unsigned int a4)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 0;
  if (HIWORD(a3) > 0x10u || a4 <= 0)
  {
    goto LABEL_6;
  }

  if (!HIWORD(a3))
  {
    if (a2 <= a4)
    {
      a2 = a4;
    }

    if (icu::UnicodeString::allocate(this, a2))
    {
      if ((*(this + 4) & 2) != 0)
      {
        v9 = this + 10;
      }

      else
      {
        v9 = *(this + 3);
      }

      v12 = (a4 + 7) & 0xFFFFFFF8;
      v13 = vdupq_n_s64(a4 - 1);
      v14 = xmmword_19547BF80;
      v15 = xmmword_19547BF90;
      v16 = xmmword_19544D5E0;
      v17 = xmmword_19544D5F0;
      v18 = v9 + 8;
      v19 = vdupq_n_s64(8uLL);
      do
      {
        v20 = vmovn_s64(vcgeq_u64(v13, v17));
        if (vuzp1_s8(vuzp1_s16(v20, *v13.i8), *v13.i8).u8[0])
        {
          *(v18 - 4) = a3;
        }

        if (vuzp1_s8(vuzp1_s16(v20, *&v13), *&v13).i8[1])
        {
          *(v18 - 3) = a3;
        }

        if (vuzp1_s8(vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v16))), *&v13).i8[2])
        {
          *(v18 - 2) = a3;
          *(v18 - 1) = a3;
        }

        v21 = vmovn_s64(vcgeq_u64(v13, v15));
        if (vuzp1_s8(*&v13, vuzp1_s16(v21, *&v13)).i32[1])
        {
          *v18 = a3;
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(v21, *&v13)).i8[5])
        {
          v18[1] = a3;
        }

        if (vuzp1_s8(*&v13, vuzp1_s16(*&v13, vmovn_s64(vcgeq_u64(v13, *&v14)))).i8[6])
        {
          v18[2] = a3;
          v18[3] = a3;
        }

        v15 = vaddq_s64(v15, v19);
        v16 = vaddq_s64(v16, v19);
        v17 = vaddq_s64(v17, v19);
        v18 += 8;
        v14 = vaddq_s64(v14, v19);
        v12 -= 8;
      }

      while (v12);
      if (a4 <= 1023)
      {
        v22 = *(this + 4) & 0x1F | (32 * a4);
LABEL_43:
        *(this + 4) = v22;
        return this;
      }

      *(this + 4) |= 0xFFE0u;
      *(this + 3) = a4;
    }

    return this;
  }

  if (a4 >> 30)
  {
LABEL_6:
    icu::UnicodeString::allocate(this, a2);
    return this;
  }

  v10 = 2 * a4;
  if (v10 > a2)
  {
    a2 = 2 * a4;
  }

  if (icu::UnicodeString::allocate(this, a2))
  {
    if ((*(this + 4) & 2) != 0)
    {
      v11 = this + 10;
    }

    else
    {
      v11 = *(this + 3);
    }

    v23 = 0;
    v24 = v11 + 2;
    do
    {
      *(v24 - 1) = (a3 >> 10) - 10304;
      *v24 = a3 & 0x3FF | 0xDC00;
      v24 += 2;
      v23 += 2;
    }

    while (v23 < v10);
    if (a4 > 0x1FF)
    {
      *(this + 4) |= 0xFFE0u;
      *(this + 3) = v10;
      return this;
    }

    v22 = *(this + 4) & 0x1F | (32 * v10);
    goto LABEL_43;
  }

  return this;
}

uint64_t icu::UnicodeString::allocate(icu::UnicodeString *this, unsigned int a2)
{
  if (a2 > 27)
  {
    if (a2 <= 0x7FFFFFF5 && (v4 = (2 * a2 + 21) & 0x1FFFFFFF0, (v5 = malloc_type_malloc(v4, 0x100004052888210uLL)) != 0))
    {
      v6 = v5;
      result = 1;
      *v6 = 1;
      *(this + 3) = v6 + 1;
      *(this + 4) = (v4 + 0x1FFFFFFFCLL) >> 1;
      *(this + 4) = 4;
    }

    else
    {
      result = 0;
      *(this + 4) = 1;
      *(this + 3) = 0;
      *(this + 4) = 0;
    }
  }

  else
  {
    *(this + 4) = 2;
    return 1;
  }

  return result;
}

uint64_t icu::UnicodeString::UnicodeString(uint64_t result, __int16 a2)
{
  *result = &unk_1F0935D00;
  *(result + 8) = 34;
  *(result + 10) = a2;
  return result;
}

{
  *result = &unk_1F0935D00;
  *(result + 8) = 34;
  *(result + 10) = a2;
  return result;
}

uint64_t icu::UnicodeString::UnicodeString(uint64_t this, unsigned int a2)
{
  *this = &unk_1F0935D00;
  *(this + 8) = 2;
  if (HIWORD(a2))
  {
    if (HIWORD(a2) > 0x10u)
    {
      return this;
    }

    *(this + 10) = (a2 >> 10) - 10304;
    v2 = 66;
    v3 = 12;
    LOWORD(a2) = a2 & 0x3FF | 0xDC00;
  }

  else
  {
    v2 = 34;
    v3 = 10;
  }

  *(this + v3) = a2;
  *(this + 8) = v2;
  return this;
}

{
  *this = &unk_1F0935D00;
  *(this + 8) = 2;
  if (HIWORD(a2))
  {
    if (HIWORD(a2) > 0x10u)
    {
      return this;
    }

    *(this + 10) = (a2 >> 10) - 10304;
    v2 = 66;
    v3 = 12;
    LOWORD(a2) = a2 & 0x3FF | 0xDC00;
  }

  else
  {
    v2 = 34;
    v3 = 10;
  }

  *(this + v3) = a2;
  *(this + 8) = v2;
  return this;
}

uint64_t icu::UnicodeString::UnicodeString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F0935D00;
  *(a1 + 8) = 2;
  icu::UnicodeString::doAppend(a1, a2, 0, a3);
  return a1;
}

{
  *a1 = &unk_1F0935D00;
  *(a1 + 8) = 2;
  icu::UnicodeString::doAppend(a1, a2, 0, a3);
  return a1;
}

uint64_t icu::UnicodeString::doAppend(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a1;
  v29 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return v4;
  }

  v5 = a4;
  if (!a4)
  {
    return v4;
  }

  v6 = *(a1 + 8);
  if ((v6 & 0x11) != 0)
  {
    return v4;
  }

  v7 = (a2 + 2 * a3);
  if ((a4 & 0x80000000) != 0)
  {
    v9 = u_strlen((a2 + 2 * a3));
    if (!v9)
    {
      return v4;
    }

    v5 = v9;
    v6 = *(v4 + 8);
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((v6 & 0x8000) == 0)
  {
LABEL_6:
    v8 = v6 >> 5;
    goto LABEL_10;
  }

  v8 = *(v4 + 12);
LABEL_10:
  v23 = 0;
  if ((v6 & 2) != 0)
  {
    v10 = 27;
  }

  else
  {
    v10 = *(v4 + 16);
  }

  if (v5 <= v10 - v8 && (v6 & 0x19) == 0)
  {
    if ((v6 & 4) != 0)
    {
      if (atomic_load_explicit((*(v4 + 24) - 4), memory_order_acquire) != 1)
      {
        goto LABEL_15;
      }

      LOWORD(v6) = *(v4 + 8);
    }

    v13 = v8 + v5;
    v23 = v8 + v5;
    if (v5 <= 4)
    {
      if ((v6 & 2) != 0)
      {
        v14 = v4 + 10;
      }

      else
      {
        v14 = *(v4 + 24);
      }

      v21 = (v14 + 2 * v8);
      *v21 = *v7;
      if (v5 >= 2)
      {
        v21[1] = v7[1];
        if (v5 != 2)
        {
          v21[2] = v7[2];
          if (v5 == 4)
          {
            v21[3] = v7[3];
          }
        }
      }

      LOWORD(v6) = *(v4 + 8);
      goto LABEL_56;
    }

LABEL_32:
    if ((v6 & 2) != 0)
    {
      v17 = v4 + 10;
    }

    else
    {
      v17 = *(v4 + 24);
    }

    if (v5 >= 1)
    {
      v19 = (v17 + 2 * v8);
      if (v7 != v19)
      {
        memmove(v19, v7, (2 * v5));
        LOWORD(v6) = *(v4 + 8);
      }
    }

    v13 = v23;
LABEL_56:
    if (v13 > 1023)
    {
      *(v4 + 8) = v6 | 0xFFE0;
      *(v4 + 12) = v13;
    }

    else
    {
      *(v4 + 8) = v6 & 0x1F | (32 * v13);
    }

    return v4;
  }

LABEL_15:
  if (uprv_add32_overflow(v8, v5, &v23))
  {
    icu::UnicodeString::setToBogus(v4);
    return v4;
  }

  v11 = *(v4 + 8);
  if ((v11 & 2) != 0)
  {
    v12 = v4 + 10;
  }

  else
  {
    v12 = *(v4 + 24);
  }

  if ((v11 & 0x19) != 0 || ((v11 & 4) != 0 ? (v18 = atomic_load_explicit((*(v4 + 24) - 4), memory_order_acquire) == 1) : (v18 = 1), !v18 || v12 >= &v7[v5] || v7 >= v12 + 2 * v8))
  {
    v15 = (v23 >> 2) + 128;
    if (v15 <= 2147483637 - v23)
    {
      v16 = v15 + v23;
    }

    else
    {
      v16 = 2147483637;
    }

    if (!icu::UnicodeString::cloneArrayIfNeeded(v4, v23, v16, 1, 0, 0))
    {
      return v4;
    }

    LOWORD(v6) = *(v4 + 8);
    goto LABEL_32;
  }

  v25 = 0u;
  v26 = 0u;
  v28 = 0;
  v27 = 0u;
  v24 = &unk_1F0935D00;
  LOWORD(v25) = 2;
  icu::UnicodeString::doAppend(&v24, v7, 0, v5);
  if (v25)
  {
    icu::UnicodeString::setToBogus(v4);
  }

  else
  {
    if ((v25 & 2) != 0)
    {
      v20 = &v25 + 2;
    }

    else
    {
      v20 = v26;
    }

    v4 = icu::UnicodeString::doAppend(v4, v20, 0, v5);
  }

  icu::UnicodeString::~UnicodeString(&v24);
  return v4;
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, int a2, const UChar **a3, int32_t a4)
{
  *this = &unk_1F0935D00;
  LOBYTE(v5) = 8;
  *(this + 4) = 8;
  v6 = *a3;
  if (!*a3)
  {
    *(this + 4) = 2;
    return this;
  }

  if (a4 < -1 || !a2 && a4 == -1)
  {
    goto LABEL_8;
  }

  if (!a2 || a4 == -1)
  {
    if (a4 == -1)
    {
      a4 = u_strlen(*a3);
      v5 = *(this + 4);
    }
  }

  else
  {
    if (v6[a4])
    {
LABEL_8:
      icu::UnicodeString::setToBogus(this);
      return this;
    }

    LOBYTE(v5) = 8;
  }

  if (a2)
  {
    v8 = a4 + 1;
  }

  else
  {
    v8 = a4;
  }

  if (a4 > 1023)
  {
    v9 = v5 | 0xFFE0;
    *(this + 3) = a4;
  }

  else
  {
    v9 = v5 & 0x1F | (32 * a4);
  }

  *(this + 4) = v9;
  *(this + 3) = v6;
  *(this + 4) = v8;
  return this;
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, char *a2, unint64_t a3, int a4)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 0;
  if (a2)
  {
    if (a3 > a4 || a3 < -1 || a4 < 0)
    {
      icu::UnicodeString::setToBogus(this);
    }

    else
    {
      if (a3 == -1)
      {
        v5 = a2;
        if (a4)
        {
          v6 = 2 * a4;
          v5 = a2;
          while (*v5)
          {
            v5 += 2;
            v6 -= 2;
            if (!v6)
            {
              v5 = &a2[2 * a4];
              break;
            }
          }
        }

        a3 = (v5 - a2) >> 1;
      }

      if (a3 > 1023)
      {
        *(this + 3) = a3;
        v7 = -32;
      }

      else
      {
        v7 = 32 * a3;
      }

      *(this + 4) = v7;
      *(this + 3) = a2;
      *(this + 4) = a4;
    }
  }

  else
  {
    *(this + 4) = 2;
  }

  return this;
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, char *__s, int32_t a3)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  if (__s)
  {
    v4 = a3;
    if (a3 < 0)
    {
      v4 = strlen(__s);
    }

    if (icu::UnicodeString::cloneArrayIfNeeded(this, v4, v4, 0, 0, 0))
    {
      if ((*(this + 4) & 2) != 0)
      {
        v6 = (this + 10);
      }

      else
      {
        v6 = *(this + 3);
      }

      u_charsToUChars(__s, v6, v4);
      if (v4 > 1023)
      {
        *(this + 4) |= 0xFFE0u;
        *(this + 3) = v4;
      }

      else
      {
        *(this + 4) = *(this + 4) & 0x1F | (32 * v4);
      }
    }

    else
    {
      icu::UnicodeString::setToBogus(this);
    }
  }

  return this;
}

uint64_t icu::UnicodeString::cloneArrayIfNeeded(icu::UnicodeString *this, int a2, signed int a3, int a4, int **a5, int a6)
{
  v8 = a2;
  v24 = *MEMORY[0x1E69E9840];
  v10 = *(this + 4);
  if (a2 == -1)
  {
    if ((v10 & 2) != 0)
    {
      v8 = 27;
    }

    else
    {
      v8 = *(this + 4);
    }
  }

  if ((v10 & 0x11) != 0)
  {
    return 0;
  }

  if (!a6 && (v10 & 8) == 0)
  {
    if ((v10 & 4) != 0)
    {
      if (atomic_load_explicit((*(this + 3) - 4), memory_order_acquire) > 1)
      {
        goto LABEL_15;
      }

      v10 = *(this + 4);
    }

    if ((v10 & 2) != 0)
    {
      v11 = 27;
    }

    else
    {
      v11 = *(this + 4);
    }

    if (v8 <= v11)
    {
      return 1;
    }
  }

LABEL_15:
  v12 = v8;
  if ((a3 & 0x80000000) == 0)
  {
    if (a3 >= 0x1C && v8 < 28)
    {
      v12 = 27;
      goto LABEL_21;
    }

    v12 = a3;
    if (v8 > a3)
    {
      goto LABEL_42;
    }
  }

  if (v12 >= 2147483638)
  {
LABEL_42:
    icu::UnicodeString::setToBogus(this);
    return 0;
  }

LABEL_21:
  memset(v23, 0, sizeof(v23));
  v13 = *(this + 4);
  v14 = *(this + 4);
  if (v13 < 0)
  {
    v15 = *(this + 3);
    if ((v14 & 2) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = v14 >> 5;
    if ((v14 & 2) == 0)
    {
LABEL_23:
      v16 = *(this + 3);
      goto LABEL_29;
    }
  }

  v16 = 0;
  if (a4)
  {
    if (v12 >= 28)
    {
      v16 = v23;
      if (v15 >= 1)
      {
        memcpy(v23, this + 10, (2 * v15));
      }
    }
  }

LABEL_29:
  if (!icu::UnicodeString::allocate(this, v12) && (v8 >= v12 || !icu::UnicodeString::allocate(this, v8)))
  {
    if ((v14 & 2) == 0)
    {
      *(this + 3) = v16;
    }

    *(this + 4) = v13;
    goto LABEL_42;
  }

  v17 = *(this + 4);
  if (!a4)
  {
    v21 = *(this + 4) & 0x1F;
    goto LABEL_54;
  }

  if ((v17 & 2) != 0)
  {
    if (v15 >= 27)
    {
      v18 = 27;
    }

    else
    {
      v18 = v15;
    }

    if (!v16)
    {
      goto LABEL_53;
    }

    v19 = this + 10;
  }

  else
  {
    if (*(this + 4) >= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = *(this + 4);
    }

    if (!v16)
    {
      goto LABEL_52;
    }

    v19 = *(this + 3);
  }

  if (v18 < 1)
  {
LABEL_53:
    v21 = v17 & 0x1F | (32 * v18);
LABEL_54:
    *(this + 4) = v21;
    if ((v14 & 4) != 0)
    {
      goto LABEL_55;
    }

    return 1;
  }

  memmove(v19, v16, (2 * v18));
  v17 = *(this + 4);
LABEL_52:
  if (v18 <= 1023)
  {
    goto LABEL_53;
  }

  *(this + 4) = v17 | 0xFFE0;
  *(this + 3) = v18;
  if ((v14 & 4) != 0)
  {
LABEL_55:
    v22 = (v16 - 4);
    if (atomic_fetch_add(v16 - 1, 0xFFFFFFFF) == 1)
    {
      if (a5)
      {
        *a5 = v22;
      }

      else
      {
        free(v22);
      }
    }
  }

  return 1;
}

void icu::UnicodeString::readOnlyAliasFromU16StringView(unint64_t a1@<X1>, uint64_t a2@<X8>, const UChar *a3@<X0>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  if (a1 >> 31)
  {

    icu::UnicodeString::setToBogus(a2);
  }

  else
  {
    v3 = a3;
    icu::UnicodeString::setTo(a2, 0, &v3, a1);
  }
}

icu::UnicodeString *icu::UnicodeString::setTo(icu::UnicodeString *this, int a2, const UChar **a3, unsigned int a4)
{
  v5 = *(this + 4);
  if ((v5 & 0x10) == 0)
  {
    v6 = *a3;
    if (*a3)
    {
      v7 = a4;
      if (a4 < -1 || !a2 && a4 == -1 || a2 && a4 != -1 && v6[a4])
      {
        icu::UnicodeString::setToBogus(this);
      }

      else
      {
        if ((v5 & 4) != 0 && atomic_fetch_add((*(this + 3) - 4), 0xFFFFFFFF) == 1)
        {
          free((*(this + 3) - 4));
        }

        if (v7 == -1)
        {
          v7 = u_strlen(v6);
        }

        if (a2)
        {
          v9 = v7 + 1;
        }

        else
        {
          v9 = v7;
        }

        if (v7 > 1023)
        {
          *(this + 3) = v7;
          v10 = -24;
        }

        else
        {
          v10 = (32 * v7) | 8;
        }

        *(this + 4) = v10;
        *(this + 3) = v6;
        *(this + 4) = v9;
      }
    }

    else
    {
      if ((v5 & 4) != 0 && atomic_fetch_add((*(this + 3) - 4), 0xFFFFFFFF) == 1)
      {
        free((*(this + 3) - 4));
      }

      *(this + 4) = 2;
    }
  }

  return this;
}

void icu::UnicodeString::readOnlyAliasFromUnicodeString(icu::UnicodeString *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *a2 = &unk_1F0935D00;
  *(a2 + 8) = 2;
  v5 = *(this + 4);
  if (v5)
  {

    icu::UnicodeString::setToBogus(a2);
  }

  else
  {
    if ((v5 & 0x10) != 0)
    {
      v6 = 0;
    }

    else if ((v5 & 2) != 0)
    {
      v6 = (this + 10);
    }

    else
    {
      v6 = *(this + 3);
    }

    v11 = v6;
    v7 = v5;
    v8 = v5 >> 5;
    v9 = *(this + 3);
    if (v7 >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    icu::UnicodeString::setTo(a2, 0, &v11, v10);
  }
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, const char *a2)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  if (a2)
  {
    icu::StringPiece::StringPiece(&v4, a2);
    icu::UnicodeString::setToUTF8(this, v4, v5);
  }

  return this;
}

uint64_t icu::UnicodeString::setToUTF8(uint64_t a1, const char *a2, int32_t a3)
{
  if (*(a1 + 8))
  {
    *(a1 + 8) = 2;
  }

  v6 = 27;
  if (a3 > 27)
  {
    v7 = a3 + 1;
  }

  else
  {
    v7 = 27;
  }

  Buffer = icu::UnicodeString::getBuffer(a1, v7);
  *pErrorCode = 0;
  if ((*(a1 + 8) & 2) == 0)
  {
    v6 = *(a1 + 16);
  }

  u_strFromUTF8WithSub(Buffer, v6, &pErrorCode[1], a2, a3, 65533, 0, pErrorCode);
  icu::UnicodeString::releaseBuffer(a1, pErrorCode[1]);
  if (pErrorCode[0] >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    icu::UnicodeString::setToBogus(a1);
  }

  return a1;
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, const char *__s, int32_t a3)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  if (a3 >= -1 && __s && a3)
  {
    if (a3 == -1)
    {
      a3 = strlen(__s);
    }

    icu::UnicodeString::setToUTF8(this, __s, a3);
  }

  return this;
}

UChar **icu::UnicodeString::copyFrom(UChar **this, UChar **a2, int a3)
{
  if (this != a2)
  {
    if (a2[1])
    {
      icu::UnicodeString::setToBogus(this);
      return this;
    }

    if ((this[1] & 4) != 0 && atomic_fetch_add(this[3] - 1, 0xFFFFFFFF) == 1)
    {
      free(this[3] - 2);
    }

    v6 = *(a2 + 4);
    if (v6 <= 0x1F)
    {
      v9 = 2;
      goto LABEL_13;
    }

    *(this + 4) = v6;
    v7 = *(a2 + 4);
    v8 = v7 & 0x1F;
    if (v8 <= 3)
    {
      if ((v7 & 0x1F) != 0)
      {
        if (v8 == 2)
        {
          memcpy(this + 10, a2 + 10, 2 * (v6 >> 5));
          return this;
        }

LABEL_25:
        *(this + 4) = 1;
        this[3] = 0;
        *(this + 4) = 0;
        return this;
      }

LABEL_19:
      v10 = v7;
      v11 = v7 >> 5;
      if (v10 >= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = *(a2 + 3);
      }

      if (!icu::UnicodeString::allocate(this, v12))
      {
        goto LABEL_25;
      }

      if ((this[1] & 2) != 0)
      {
        v13 = this + 5;
      }

      else
      {
        v13 = this[3];
      }

      if ((a2[1] & 2) != 0)
      {
        v14 = a2 + 5;
      }

      else
      {
        v14 = a2[3];
      }

      u_memcpy(v13, v14, v12);
      if (v12 > 1023)
      {
        *(this + 4) |= 0xFFE0u;
        *(this + 3) = v12;
        return this;
      }

      v9 = this[1] & 0x1F | (32 * v12);
LABEL_13:
      *(this + 4) = v9;
      return this;
    }

    if (v8 == 4)
    {
      atomic_fetch_add(a2[3] - 1, 1u);
      this[3] = a2[3];
      *(this + 4) = *(a2 + 4);
      if ((this[1] & 0x80000000) == 0)
      {
        return this;
      }
    }

    else
    {
      if (v8 != 8)
      {
        goto LABEL_25;
      }

      if (!a3)
      {
        goto LABEL_19;
      }

      this[3] = a2[3];
      *(this + 4) = *(a2 + 4);
      if ((v6 & 0x8000) == 0)
      {
        return this;
      }
    }

    *(this + 3) = *(a2 + 3);
  }

  return this;
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *a1, icu::UnicodeString *a2)
{
  *a1 = &unk_1F0935D00;
  icu::UnicodeString::copyFieldsFrom(a1, a2, 1);
  return a1;
}

{
  *a1 = &unk_1F0935D00;
  icu::UnicodeString::copyFieldsFrom(a1, a2, 1);
  return a1;
}

icu::UnicodeString *icu::UnicodeString::copyFieldsFrom(icu::UnicodeString *this, icu::UnicodeString *a2, int a3)
{
  v3 = *(a2 + 4);
  *(this + 4) = *(a2 + 4);
  if ((v3 & 2) != 0)
  {
    if (this != a2)
    {
      return memcpy(this + 10, a2 + 10, 2 * (v3 >> 5));
    }
  }

  else
  {
    *(this + 3) = *(a2 + 3);
    *(this + 4) = *(a2 + 4);
    if (v3 < 0)
    {
      *(this + 3) = *(a2 + 3);
    }

    if (a3)
    {
      *(a2 + 4) = 1;
      *(a2 + 3) = 0;
      *(a2 + 4) = 0;
    }
  }

  return this;
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, const icu::UnicodeString *a2, unsigned int a3)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  v4 = *(a2 + 4);
  v5 = v4 >> 5;
  if ((a3 & 0x80000000) != 0)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = a3;
  if ((v4 & 0x8000) != 0)
  {
    v7 = *(a2 + 3);
    if (v7 >= a3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = v4 >> 5;
  if (v5 < a3)
  {
LABEL_7:
    v6 = v7;
  }

LABEL_8:
  if ((v4 & 0x8000u) != 0)
  {
    v5 = *(a2 + 3);
  }

  icu::UnicodeString::doReplace(this, 0, 0, a2, v6, v5 - v6);
  return this;
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, const icu::UnicodeString *a2, int a3, uint64_t a4)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  icu::UnicodeString::doReplace(this, 0, 0, a2, a3, a4);
  return this;
}

{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  icu::UnicodeString::doReplace(this, 0, 0, a2, a3, a4);
  return this;
}

void icu::UnicodeString::~UnicodeString(icu::UnicodeString *this)
{
  *this = &unk_1F0935D00;
  if ((*(this + 4) & 4) != 0 && atomic_fetch_add((*(this + 3) - 4), 0xFFFFFFFF) == 1)
  {
    free((*(this + 3) - 4));
  }

  icu::UObject::~UObject(this);
}

{
  icu::UnicodeString::~UnicodeString(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::UnicodeString::fromUTF8@<X0>(const char *a1@<X0>, int32_t a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  return icu::UnicodeString::setToUTF8(a3, a1, a2);
}

void icu::UnicodeString::fromUTF32(const UChar32 *this@<X0>, const int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *(a3 + 8) = 0u;
  *(a3 + 56) = 0;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  *a3 = &unk_1F0935D00;
  *(a3 + 8) = 2;
  if (a2 <= 27)
  {
    v6 = 27;
  }

  else
  {
    v6 = a2 + (a2 >> 4) + 4;
  }

  while (1)
  {
    Buffer = icu::UnicodeString::getBuffer(a3, v6);
    *pErrorCode = 0;
    v8 = (*(a3 + 8) & 2) != 0 ? 27 : *(a3 + 16);
    u_strFromUTF32WithSub(Buffer, v8, &pErrorCode[1], this, v3, 65533, 0, pErrorCode);
    v9 = pErrorCode[1];
    icu::UnicodeString::releaseBuffer(a3, pErrorCode[1]);
    if (pErrorCode[0] != U_BUFFER_OVERFLOW_ERROR)
    {
      break;
    }

    v6 = v9 + 1;
  }

  if (pErrorCode[0] >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    icu::UnicodeString::setToBogus(a3);
  }
}

uint64_t icu::UnicodeString::getBuffer(icu::UnicodeString *this, int a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  if (!icu::UnicodeString::cloneArrayIfNeeded(this, a2, -1, 1, 0, 0))
  {
    return 0;
  }

  v3 = *(this + 4);
  *(this + 4) = v3 & 0xF | 0x10;
  if ((v3 & 2) != 0)
  {
    return this + 10;
  }

  else
  {
    return *(this + 3);
  }
}

uint64_t icu::UnicodeString::releaseBuffer(uint64_t this, int a2)
{
  if (a2 < -1)
  {
    return this;
  }

  v2 = *(this + 8);
  if ((v2 & 0x10) == 0)
  {
    return this;
  }

  if ((v2 & 2) != 0)
  {
    if (a2 == -1)
    {
      v4 = (this + 10);
      v5 = this + 64;
      goto LABEL_13;
    }

    v3 = 27;
  }

  else
  {
    v3 = *(this + 16);
    if (a2 == -1)
    {
      v4 = *(this + 24);
      if (v3 < 1)
      {
        v7 = *(this + 24);
LABEL_18:
        v6 = (v7 - v4) >> 1;
        goto LABEL_19;
      }

      v5 = &v4[2 * v3];
LABEL_13:
      v7 = v4;
      do
      {
        if (!*v7)
        {
          break;
        }

        v7 += 2;
      }

      while (v7 < v5);
      goto LABEL_18;
    }
  }

  if (v3 >= a2)
  {
    LODWORD(v6) = a2;
  }

  else
  {
    LODWORD(v6) = v3;
  }

LABEL_19:
  if (v6 > 1023)
  {
    v8 = v2 | 0xFFE0;
    *(this + 12) = v6;
  }

  else
  {
    v8 = *(this + 8) & 0x1F | (32 * v6);
  }

  *(this + 8) = v8 & 0xFFEF;
  return this;
}

icu::UnicodeString *icu::UnicodeString::operator=(icu::UnicodeString *this, icu::UnicodeString *a2)
{
  if ((*(this + 4) & 4) != 0 && atomic_fetch_add((*(this + 3) - 4), 0xFFFFFFFF) == 1)
  {
    free((*(this + 3) - 4));
  }

  icu::UnicodeString::copyFieldsFrom(this, a2, 1);
  return this;
}

void icu::UnicodeString::swap(icu::UnicodeString *this, void **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v9 = 0;
  v8 = 0u;
  v5 = &unk_1F0935D00;
  LOWORD(v6) = 2;
  icu::UnicodeString::copyFieldsFrom(&v5, this, 0);
  icu::UnicodeString::copyFieldsFrom(this, a2, 0);
  v4 = v6;
  *(a2 + 4) = v6;
  if ((v4 & 2) != 0)
  {
    if (&v5 != a2)
    {
      memcpy(a2 + 10, &v6 + 2, 2 * (v4 >> 5));
    }
  }

  else
  {
    a2[3] = v7;
    *(a2 + 4) = DWORD2(v6);
    if (v4 < 0)
    {
      *(a2 + 3) = DWORD1(v6);
    }
  }

  LOWORD(v6) = 2;
  icu::UnicodeString::~UnicodeString(&v5);
}

uint64_t icu::UnicodeString::unescape@<X0>(icu::UnicodeString *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0u;
  v4 = (a2 + 8);
  *(a2 + 56) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v5 = *(this + 4);
  if ((v5 & 0x8000) != 0)
  {
    v6 = *(this + 3);
  }

  else
  {
    v6 = v5 >> 5;
  }

  *a2 = &unk_1F0935D00;
  result = icu::UnicodeString::allocate(a2, v6);
  if (*(a2 + 8))
  {
    return result;
  }

  v8 = *(this + 4);
  if ((v8 & 0x11) != 0)
  {
    v9 = 0;
    if ((v8 & 0x8000) != 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    v10 = v8 >> 5;
    goto LABEL_13;
  }

  if ((v8 & 2) != 0)
  {
    v9 = this + 10;
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = *(this + 3);
    if ((v8 & 0x8000) == 0)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  v10 = *(this + 3);
LABEL_13:
  offset = 0;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v11 + 1;
      offset = v11 + 1;
      if (*&v9[2 * v11] == 92)
      {
        icu::UnicodeString::doAppend(a2, v9, v12, (v11 - v12));
        v14 = *(this + 4);
        if ((v14 & 0x8000) != 0)
        {
          v15 = *(this + 3);
        }

        else
        {
          v15 = v14 >> 5;
        }

        result = u_unescapeAt(sub_195282BE8, &offset, v15, this);
        if ((result & 0x80000000) != 0)
        {
          if (*v4)
          {
            v16 = 2;
          }

          else
          {
            v16 = *v4 & 0x1E;
          }

          *v4 = v16;
          return result;
        }

        icu::UnicodeString::append(a2, result);
        v13 = offset;
        v12 = offset;
      }

      v11 = v13;
      if (v13 == v10)
      {
        return icu::UnicodeString::doAppend(a2, v9, v12, v10 - v12);
      }
    }
  }

  v12 = 0;
  return icu::UnicodeString::doAppend(a2, v9, v12, v10 - v12);
}

uint64_t icu::UnicodeString::unescapeAt(icu::UnicodeString *this, int *a2)
{
  if (*(this + 4) < 0)
  {
    v2 = *(this + 3);
  }

  else
  {
    v2 = *(this + 4) >> 5;
  }

  return u_unescapeAt(sub_195282BE8, a2, v2, this);
}

uint64_t icu::UnicodeString::append(uint64_t this, unsigned int a2)
{
  v3 = 0;
  if (HIWORD(a2))
  {
    if (HIWORD(a2) > 0x10u)
    {
      return this;
    }

    LOWORD(v3) = (a2 >> 10) - 10304;
    HIWORD(v3) = a2 & 0x3FF | 0xDC00;
    v2 = 2;
  }

  else
  {
    LOWORD(v3) = a2;
    v2 = 1;
  }

  return icu::UnicodeString::doAppend(this, &v3, 0, v2);
}

uint64_t sub_195282BE8(int a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 8) < 0)
  {
    v3 = *(a2 + 12);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 <= a1)
  {
    return 0xFFFFLL;
  }

  if ((v2 & 2) != 0)
  {
    v4 = a2 + 10;
  }

  else
  {
    v4 = *(a2 + 24);
  }

  return *(v4 + 2 * a1);
}

BOOL icu::UnicodeString::doEquals(uint64_t a1, const void *a2, int a3)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    v3 = (a1 + 10);
  }

  else
  {
    v3 = *(a1 + 24);
  }

  return memcmp(v3, a2, 2 * a3) == 0;
}

BOOL icu::UnicodeString::doEqualsSubstring(uint64_t a1, int a2, int32_t count, uint64_t a4, int a5, int32_t a6)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    return 0;
  }

  v7 = count;
  v8 = a2;
  if ((v6 & 0x8000) == 0)
  {
    v9 = v6 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v9 = *(a1 + 12);
  if (a2 < 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = v9;
  if (v9 >= v8)
  {
    if ((count & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

LABEL_13:
  v8 = v10;
  if (count < 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v11 = v9 - v8;
  if (v11 >= count)
  {
    if (a4)
    {
      goto LABEL_8;
    }

    return v7 == 0;
  }

LABEL_15:
  v7 = v11;
  if (!a4)
  {
    return v7 == 0;
  }

LABEL_8:
  if ((v6 & 2) != 0)
  {
    v12 = a1 + 10;
  }

  else
  {
    v12 = *(a1 + 24);
  }

  v15 = (a4 + 2 * a5);
  if (a6 < 0)
  {
    a6 = u_strlen(&v15[a5]);
  }

  if (v7 != a6)
  {
    return 0;
  }

  result = 1;
  if (v7 && (v12 + 2 * v8) != v15)
  {
    return u_memcmp((v12 + 2 * v8), v15, v7) == 0;
  }

  return result;
}

uint64_t icu::UnicodeString::doCompare(uint64_t a1, int a2, int32_t a3, uint64_t a4, int a5, int32_t a6)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    LOBYTE(v13) = -1;
    return v13;
  }

  v7 = a3;
  v8 = a2;
  if ((v6 & 0x8000) == 0)
  {
    v9 = v6 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v9 = *(a1 + 12);
  if (a2 < 0)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = v9;
  if (v9 >= v8)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_15;
  }

LABEL_13:
  v8 = v10;
  if (a3 < 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v11 = v9 - v8;
  if (v11 >= a3)
  {
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_16:
    LOBYTE(v13) = v7 != 0;
    return v13;
  }

LABEL_15:
  v7 = v11;
  if (!a4)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 2) != 0)
  {
    v12 = a1 + 10;
  }

  else
  {
    v12 = *(a1 + 24);
  }

  v14 = (a4 + 2 * a5);
  if (a6 < 0)
  {
    a6 = u_strlen(&v14[a5]);
  }

  if (v7 >= a6)
  {
    v15 = a6;
  }

  else
  {
    v15 = v7;
  }

  if (v7 < a6)
  {
    LOBYTE(v13) = -1;
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  if (v7 == a6)
  {
    LOBYTE(v13) = 0;
  }

  if (v15 >= 1)
  {
    v16 = (v12 + 2 * v8);
    if (v16 != v14)
    {
      v17 = v15 + 1;
      while (1)
      {
        v18 = *v16 - *v14;
        if (v18)
        {
          break;
        }

        ++v14;
        ++v16;
        if (--v17 <= 1)
        {
          return v13;
        }
      }

      v13 = (v18 >> 15) | 1;
    }
  }

  return v13;
}

uint64_t icu::UnicodeString::doCompareCodePointOrder(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    LOBYTE(v10) = -1;
    return v10;
  }

  if ((v6 & 0x8000) == 0)
  {
    v7 = v6 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v7 = *(a1 + 12);
  if (a2 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v8 = v7;
  if (v7 >= a2)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  a2 = v8;
  if ((a3 & 0x80000000) == 0)
  {
LABEL_6:
    v9 = v7 - a2;
    if (v9 >= a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
LABEL_13:
  LODWORD(a3) = v9;
LABEL_14:
  if (a4)
  {
    v11 = a6;
  }

  else
  {
    v11 = 0;
  }

  if ((v6 & 2) != 0)
  {
    v12 = a1 + 10;
  }

  else
  {
    v12 = *(a1 + 24);
  }

  v13 = (v12 + 2 * a2);
  if (a4)
  {
    v14 = a5;
  }

  else
  {
    v14 = 0;
  }

  v15 = (a4 + 2 * v14);
  if (!a4)
  {
    v15 = 0;
  }

  v16 = sub_19529CF10(v13, a3, v15, v11, 0, 1);
  v10 = (v16 >> 15) | 1;
  if (!v16)
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

uint64_t icu::UnicodeString::getLength(icu::UnicodeString *this)
{
  if (*(this + 4) < 0)
  {
    return *(this + 3);
  }

  else
  {
    return *(this + 4) >> 5;
  }
}

uint64_t icu::UnicodeString::getCharAt(icu::UnicodeString *this, int a2)
{
  v2 = *(this + 4);
  if (*(this + 4) < 0)
  {
    v3 = *(this + 3);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 <= a2)
  {
    return 0xFFFFLL;
  }

  if ((v2 & 2) != 0)
  {
    v4 = this + 10;
  }

  else
  {
    v4 = *(this + 3);
  }

  return *&v4[2 * a2];
}

unint64_t icu::UnicodeString::char32At(icu::UnicodeString *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (*(this + 4) < 0)
  {
    v3 = *(this + 3);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 <= a2)
  {
    return 0xFFFFLL;
  }

  if ((v2 & 2) != 0)
  {
    v4 = this + 10;
  }

  else
  {
    v4 = *(this + 3);
  }

  result = *&v4[2 * a2];
  if ((result & 0xF800) == 0xD800)
  {
    if ((result & 0x400) != 0)
    {
      if (a2 >= 1)
      {
        v9 = *&v4[2 * a2 - 2];
        if ((v9 & 0xFC00) == 0xD800)
        {
          v8 = result + (v9 << 10);
          return (v8 - 56613888);
        }
      }
    }

    else
    {
      v6 = a2 + 1;
      if (v6 != v3)
      {
        v7 = *&v4[2 * v6];
        if ((v7 & 0xFC00) == 0xDC00)
        {
          v8 = v7 + (result << 10);
          return (v8 - 56613888);
        }
      }
    }
  }

  return result;
}

uint64_t icu::UnicodeString::getChar32Start(icu::UnicodeString *this, uint64_t a2)
{
  v2 = *(this + 4);
  if (*(this + 4) < 0)
  {
    v3 = *(this + 3);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 <= a2)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    v4 = this + 10;
  }

  else
  {
    v4 = *(this + 3);
  }

  if (a2 >= 1 && (*&v4[2 * a2] & 0xFC00) == 0xDC00)
  {
    return a2 - ((*&v4[2 * a2 - 2] & 0xFC00) == 55296);
  }

  return a2;
}

uint64_t icu::UnicodeString::getChar32Limit(icu::UnicodeString *this, uint64_t a2)
{
  v2 = *(this + 4);
  if (*(this + 4) < 0)
  {
    v3 = *(this + 3);
  }

  else
  {
    v3 = v2 >> 5;
  }

  if (v3 > a2)
  {
    if ((v2 & 2) != 0)
    {
      v4 = this + 10;
    }

    else
    {
      v4 = *(this + 3);
    }

    if (a2 >= 1 && (v5 = &v4[2 * a2], (*(v5 - 1) & 0xFC00) == 0xD800))
    {
      if ((*v5 & 0xFC00) == 0xDC00)
      {
        return (a2 + 1);
      }

      else
      {
        return a2;
      }
    }

    else
    {
      return a2;
    }
  }

  return v3;
}

uint64_t icu::UnicodeString::countChar32(icu::UnicodeString *this, int a2, int32_t length)
{
  v3 = *(this + 4);
  if ((*(this + 4) & 0x80000000) == 0)
  {
    v4 = v3 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v4 = *(this + 3);
  if (a2 < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = v4;
  if (v4 >= a2)
  {
    if ((length & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v6 = 0;
LABEL_12:
    length = v6;
    if ((v3 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = this + 10;
    return u_countChar32(&v7[2 * a2], length);
  }

LABEL_10:
  a2 = v5;
  if (length < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v6 = v4 - a2;
  if (v6 < length)
  {
    goto LABEL_12;
  }

  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = *(this + 3);
  return u_countChar32(&v7[2 * a2], length);
}

uint64_t icu::UnicodeString::hasMoreChar32Than(icu::UnicodeString *this, int a2, int32_t length, int32_t number)
{
  v4 = *(this + 4);
  if ((*(this + 4) & 0x80000000) == 0)
  {
    v5 = v4 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v5 = *(this + 3);
  if (a2 < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v6 = v5;
  if (v5 >= a2)
  {
    if ((length & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v7 = 0;
LABEL_12:
    length = v7;
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = this + 10;
    return u_strHasMoreChar32Than(&v8[2 * a2], length, number);
  }

LABEL_10:
  a2 = v6;
  if (length < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v7 = v5 - a2;
  if (v7 < length)
  {
    goto LABEL_12;
  }

  if ((v4 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v8 = *(this + 3);
  return u_strHasMoreChar32Than(&v8[2 * a2], length, number);
}

uint64_t icu::UnicodeString::moveIndex32(icu::UnicodeString *this, int a2, int a3)
{
  v4 = *(this + 4);
  if (*(this + 4) < 0)
  {
    v5 = *(this + 3);
  }

  else
  {
    v5 = v4 >> 5;
  }

  if (v5 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v5;
  }

  if (a2 >= 0)
  {
    result = v6;
  }

  else
  {
    result = 0;
  }

  if ((v4 & 2) != 0)
  {
    v8 = this + 10;
  }

  else
  {
    v8 = *(this + 3);
  }

  if (a3 >= 1)
  {
    v9 = a3 + 1;
    v10 = result;
    while (1)
    {
      if (v10 >= v5)
      {
        if ((v5 & 0x80000000) == 0)
        {
          return v10;
        }

        v11 = *&v8[2 * v10];
        if (!v11)
        {
          return v10;
        }
      }

      else
      {
        v11 = *&v8[2 * v10];
      }

      result = v10 + 1;
      if ((v11 & 0xFC00) == 0xD800 && result != v5)
      {
        v13 = v10 + 2;
        if ((*&v8[2 * result] & 0xFC00) == 0xDC00)
        {
          result = v13;
        }

        else
        {
          result = result;
        }
      }

      --v9;
      v10 = result;
      if (v9 <= 1)
      {
        return result;
      }
    }
  }

  if (a3 && result >= 1)
  {
    v14 = -a3;
    do
    {
      result = v6 - 1;
      if ((*&v8[2 * result] & 0xFC00) == 0xDC00 && v6 >= 2)
      {
        v16 = *&v8[2 * v6 - 4] & 0xFC00;
        v17 = v6 - 2;
        if (v16 == 55296)
        {
          result = v17;
        }

        else
        {
          result = result;
        }
      }

      if (v14 < 2)
      {
        break;
      }

      --v14;
      v6 = result;
    }

    while (result > 0);
  }

  return result;
}

char *icu::UnicodeString::doExtract(char *result, int a2, int a3, uint64_t a4, int a5)
{
  v5 = *(result + 4);
  if ((*(result + 4) & 0x80000000) == 0)
  {
    v6 = v5 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = *(result + 3);
  if (a2 < 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = v6;
  if (v6 >= a2)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    v8 = 0;
LABEL_12:
    a3 = v8;
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_10:
  a2 = v7;
  if (a3 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v8 = v6 - a2;
  if (v8 < a3)
  {
    goto LABEL_12;
  }

  if ((v5 & 2) == 0)
  {
LABEL_7:
    v9 = *(result + 3);
    goto LABEL_14;
  }

LABEL_13:
  v9 = result + 10;
LABEL_14:
  if (a3 >= 1)
  {
    v10 = &v9[2 * a2];
    result = (a4 + 2 * a5);
    if (v10 != result)
    {
      return memmove(result, v10, (2 * a3));
    }
  }

  return result;
}

uint64_t icu::UnicodeString::extract(uint64_t a1, UChar **a2, uint64_t a3, int *a4)
{
  v5 = a3;
  v7 = *(a1 + 8);
  if (*(a1 + 8) < 0)
  {
    v8 = *(a1 + 12);
  }

  else
  {
    v8 = v7 >> 5;
  }

  if (*a4 > 0)
  {
    return v8;
  }

  if ((a3 & 0x80000000) != 0 || (v7 & 1) != 0 || a3 && !*a2)
  {
    *a4 = 1;
    return v8;
  }

  if ((v7 & 2) != 0)
  {
    v9 = (a1 + 10);
  }

  else
  {
    v9 = *(a1 + 24);
  }

  v11 = *a2;
  if (v8 >= 1 && v8 <= a3 && v9 != v11)
  {
    u_memcpy(v11, v9, v8);
    v11 = *a2;
  }

  return u_terminateUChars(v11, v5, v8, a4);
}

uint64_t icu::UnicodeString::extract(uint64_t a1, signed int a2, uint64_t length, char *cs, uint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {
    return 0;
  }

  v5 = a5;
  if (!cs && a5)
  {
    return 0;
  }

  v9 = *(a1 + 8);
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    v10 = v9 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v10 = *(a1 + 12);
  if (a2 < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v11 = v10;
  if (v10 >= a2)
  {
    if ((length & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  a2 = v11;
  if ((length & 0x80000000) == 0)
  {
LABEL_10:
    v12 = (v10 - a2);
    if (v12 >= length)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_15:
  v12 = 0;
LABEL_16:
  length = v12;
LABEL_17:
  if (length <= a5)
  {
    if ((v9 & 2) != 0)
    {
      v13 = a1 + 10;
    }

    else
    {
      v13 = *(a1 + 24);
    }

    u_UCharsToChars((v13 + 2 * a2), cs, length);
  }

  v14 = 0;
  return u_terminateChars(cs, v5, length, &v14);
}

icu::UnicodeString *icu::UnicodeString::tempSubString@<X0>(icu::UnicodeString *__return_ptr a1@<X8>, icu::UnicodeString *this@<X0>, int a3@<W1>, int32_t a4@<W2>)
{
  v9 = *(this + 4);
  if ((*(this + 4) & 0x80000000) == 0)
  {
    v10 = v9 >> 5;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v10 = *(this + 3);
  if (a3 < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v11 = v10;
  if (v10 >= a3)
  {
    if ((a4 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  a3 = v11;
  if ((a4 & 0x80000000) == 0)
  {
LABEL_5:
    v12 = v10 - a3;
    if (v12 >= a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  a4 = v12;
LABEL_12:
  if ((v9 & 0x11) != 0)
  {
    goto LABEL_13;
  }

  if ((v9 & 2) != 0)
  {
    v13 = this + 10;
    goto LABEL_18;
  }

  v13 = *(this + 3);
  if (!v13)
  {
LABEL_13:
    v13 = this + 10;
    a4 = -2;
  }

LABEL_18:
  v15[3] = v4;
  v15[4] = v5;
  v15[0] = &v13[2 * a3];
  return icu::UnicodeString::UnicodeString(a1, 0, v15, a4);
}

uint64_t icu::UnicodeString::toUTF8(icu::UnicodeString *this, int a2, int32_t srcLength, char *dest, int32_t destCapacity)
{
  v8 = *(this + 4);
  if ((*(this + 4) & 0x80000000) == 0)
  {
    v9 = v8 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v9 = *(this + 3);
  if (a2 < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = v9;
  if (v9 >= a2)
  {
    if ((srcLength & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

LABEL_9:
  a2 = v10;
  if (srcLength < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v11 = v9 - a2;
  if (v11 < srcLength)
  {
LABEL_11:
    srcLength = v11;
  }

  v16 = v5;
  v17 = v6;
  v15 = 0;
  pErrorCode = U_ZERO_ERROR;
  if ((v8 & 0x11) != 0)
  {
    v12 = 0;
  }

  else if ((v8 & 2) != 0)
  {
    v12 = this + 10;
  }

  else
  {
    v12 = *(this + 3);
  }

  u_strToUTF8WithSub(dest, destCapacity, &v15, &v12[2 * a2], srcLength, 65533, 0, &pErrorCode);
  return v15;
}

uint64_t icu::UnicodeString::extract(icu::UnicodeString *this, int a2, int32_t a3, char *a4, int32_t a5)
{
  if (!a4 && a5)
  {
    return 0;
  }

  if (a5 < 0)
  {
    a5 = 0x7FFFFFFF;
  }

  return icu::UnicodeString::toUTF8(this, a2, a3, a4, a5);
}

uint64_t icu::UnicodeString::extractBetween(icu::UnicodeString *this, unsigned int a2, signed int a3, icu::UnicodeString *a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 0;
  }

  else
  {
    v4 = a2;
    if (*(this + 4) < 0)
    {
      v5 = *(this + 3);
      if (v5 >= a2)
      {
LABEL_4:
        if ((a3 & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        v6 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v5 = *(this + 4) >> 5;
      if (v5 >= a2)
      {
        goto LABEL_4;
      }
    }
  }

  v4 = v5;
  if (a3 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (*(this + 4) < 0)
  {
    v6 = *(this + 3);
    if (v6 >= a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = *(this + 4) >> 5;
  if (v6 < a3)
  {
LABEL_13:
    a3 = v6;
  }

LABEL_14:
  v7 = (a3 - v4);
  v8 = *(a4 + 4);
  v9 = v8;
  v10 = v8 >> 5;
  if (v9 >= 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(a4 + 3);
  }

  return icu::UnicodeString::doReplace(a4, 0, v11, this, v4, v7);
}

void icu::UnicodeString::toUTF8(icu::UnicodeString *this, icu::ByteSink *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this + 4) < 0)
  {
    v4 = *(this + 3);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *(this + 4) >> 5;
    if (!v4)
    {
      return;
    }
  }

  bzero(v18, 0x400uLL);
  destCapacity = 1024;
  if (v4 >= 1024)
  {
    v5 = 1024;
  }

  else
  {
    v5 = v4;
  }

  v6 = (*(*a2 + 24))(a2, v5, (3 * v4), v18, 1024, &destCapacity);
  v7 = v6;
  pErrorCode = U_ZERO_ERROR;
  pDestLength = 0;
  v8 = *(this + 4);
  if ((v8 & 0x11) != 0)
  {
    v9 = 0;
  }

  else if ((v8 & 2) != 0)
  {
    v9 = (this + 10);
  }

  else
  {
    v9 = *(this + 3);
  }

  u_strToUTF8WithSub(v6, destCapacity, &pDestLength, v9, v4, 65533, 0, &pErrorCode);
  v10 = pErrorCode;
  v11 = pErrorCode;
  if (pErrorCode == U_BUFFER_OVERFLOW_ERROR)
  {
    v12 = malloc_type_malloc(pDestLength, 0x100004077774924uLL);
    if (!v12)
    {
      return;
    }

    v7 = v12;
    pErrorCode = U_ZERO_ERROR;
    v13 = *(this + 4);
    if ((v13 & 0x11) != 0)
    {
      v14 = 0;
    }

    else if ((v13 & 2) != 0)
    {
      v14 = (this + 10);
    }

    else
    {
      v14 = *(this + 3);
    }

    u_strToUTF8WithSub(v12, pDestLength, &pDestLength, v14, v4, 65533, 0, &pErrorCode);
    v11 = pErrorCode;
  }

  if (v11 <= U_ZERO_ERROR)
  {
    (*(*a2 + 16))(a2, v7, pDestLength);
    (*(*a2 + 32))(a2);
  }

  if (v10 == U_BUFFER_OVERFLOW_ERROR)
  {
    free(v7);
  }
}

uint64_t icu::UnicodeString::toUTF32(icu::UnicodeString *this, UChar32 *dest, int32_t destCapacity, UErrorCode *pErrorCode)
{
  v4 = 0;
  pDestLength = 0;
  if (*pErrorCode <= 0)
  {
    v6 = *(this + 4);
    if ((v6 & 0x11) != 0)
    {
      v7 = 0;
      if ((v6 & 0x8000) != 0)
      {
        goto LABEL_9;
      }

LABEL_7:
      v8 = v6 >> 5;
LABEL_10:
      u_strToUTF32WithSub(dest, destCapacity, &pDestLength, v7, v8, 65533, 0, pErrorCode);
      return pDestLength;
    }

    if ((v6 & 2) != 0)
    {
      v7 = (this + 10);
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = *(this + 3);
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_9:
    v8 = *(this + 3);
    goto LABEL_10;
  }

  return v4;
}

uint64_t icu::UnicodeString::indexOf(uint64_t a1, uint64_t a2, unsigned int a3, int32_t a4, int a5, int32_t length)
{
  v6 = 0xFFFFFFFFLL;
  if (!a4)
  {
    return v6;
  }

  if ((a3 & 0x80000000) != 0)
  {
    return v6;
  }

  if (!a2)
  {
    return v6;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    return v6;
  }

  if (a4 < 0 && !*(a2 + 2 * a3))
  {
    return 0xFFFFFFFFLL;
  }

  if ((v7 & 0x8000) == 0)
  {
    v8 = v7 >> 5;
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v8 = *(a1 + 12);
  if (a5 < 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = v8;
  if (v8 >= a5)
  {
    if ((length & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  a5 = v9;
  if ((length & 0x80000000) == 0)
  {
LABEL_11:
    v10 = v8 - a5;
    if (v10 >= length)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
LABEL_17:
  length = v10;
LABEL_18:
  if ((v7 & 2) != 0)
  {
    v11 = a1 + 10;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  First = u_strFindFirst((v11 + 2 * a5), length, (a2 + 2 * a3), a4);
  v6 = (First - v11) >> 1;
  if (First)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t icu::UnicodeString::doIndexOf(uint64_t a1, UChar a2, int a3, int32_t count)
{
  v4 = *(a1 + 8);
  if ((*(a1 + 8) & 0x80000000) == 0)
  {
    v5 = v4 >> 5;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = *(a1 + 12);
  if (a3 < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = v5;
  if (v5 >= a3)
  {
    if ((count & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

LABEL_9:
  a3 = v6;
  if (count < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = v5 - a3;
  if (v7 < count)
  {
LABEL_11:
    count = v7;
  }

  if ((v4 & 2) != 0)
  {
    v8 = a1 + 10;
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v9 = u_memchr((v8 + 2 * a3), a2, count);
  if (v9)
  {
    return ((v9 - v8) >> 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t icu::UnicodeString::doIndexOf(icu::UnicodeString *this, UChar32 a2, int a3, int32_t count)
{
  v4 = *(this + 4);
  if ((*(this + 4) & 0x80000000) == 0)
  {
    v5 = v4 >> 5;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = *(this + 3);
  if (a3 < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = v5;
  if (v5 >= a3)
  {
    if ((count & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

LABEL_9:
  a3 = v6;
  if (count < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = v5 - a3;
  if (v7 < count)
  {
LABEL_11:
    count = v7;
  }

  if ((v4 & 2) != 0)
  {
    v8 = this + 10;
  }

  else
  {
    v8 = *(this + 3);
  }

  v9 = u_memchr32(&v8[2 * a3], a2, count);
  if (v9)
  {
    return ((v9 - v8) >> 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t icu::UnicodeString::lastIndexOf(uint64_t a1, uint64_t a2, unsigned int a3, int32_t a4, int a5, int32_t length)
{
  v6 = 0xFFFFFFFFLL;
  if (!a4)
  {
    return v6;
  }

  if ((a3 & 0x80000000) != 0)
  {
    return v6;
  }

  if (!a2)
  {
    return v6;
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    return v6;
  }

  if (a4 < 0 && !*(a2 + 2 * a3))
  {
    return 0xFFFFFFFFLL;
  }

  if ((v7 & 0x8000) == 0)
  {
    v8 = v7 >> 5;
    if ((a5 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  v8 = *(a1 + 12);
  if (a5 < 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v9 = v8;
  if (v8 >= a5)
  {
    if ((length & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  a5 = v9;
  if ((length & 0x80000000) == 0)
  {
LABEL_11:
    v10 = v8 - a5;
    if (v10 >= length)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
LABEL_17:
  length = v10;
LABEL_18:
  if ((v7 & 2) != 0)
  {
    v11 = a1 + 10;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  Last = u_strFindLast((v11 + 2 * a5), length, (a2 + 2 * a3), a4);
  v6 = (Last - v11) >> 1;
  if (Last)
  {
    return v6;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t icu::UnicodeString::doLastIndexOf(uint64_t a1, UChar a2, int a3, int32_t count)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v4 & 0x8000) == 0)
  {
    v5 = v4 >> 5;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  v5 = *(a1 + 12);
  if (a3 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v6 = v5;
  if (v5 >= a3)
  {
    if ((count & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  a3 = v6;
  if ((count & 0x80000000) == 0)
  {
LABEL_6:
    v7 = v5 - a3;
    if (v7 >= count)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
LABEL_13:
  count = v7;
LABEL_14:
  if ((v4 & 2) != 0)
  {
    v9 = a1 + 10;
  }

  else
  {
    v9 = *(a1 + 24);
  }

  v10 = u_memrchr((v9 + 2 * a3), a2, count);
  if (v10)
  {
    return ((v10 - v9) >> 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t icu::UnicodeString::doLastIndexOf(icu::UnicodeString *this, UChar32 a2, int a3, int32_t count)
{
  v4 = *(this + 4);
  if ((*(this + 4) & 0x80000000) == 0)
  {
    v5 = v4 >> 5;
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = *(this + 3);
  if (a3 < 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = v5;
  if (v5 >= a3)
  {
    if ((count & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

LABEL_9:
  a3 = v6;
  if (count < 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = v5 - a3;
  if (v7 < count)
  {
LABEL_11:
    count = v7;
  }

  if ((v4 & 2) != 0)
  {
    v8 = this + 10;
  }

  else
  {
    v8 = *(this + 3);
  }

  v9 = u_memrchr32(&v8[2 * a3], a2, count);
  if (v9)
  {
    return ((v9 - v8) >> 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

icu::UnicodeString *icu::UnicodeString::findAndReplace(icu::UnicodeString *this, int a2, int32_t length, const icu::UnicodeString *a4, signed int a5, uint64_t a6, const icu::UnicodeString *a7, int a8, int a9)
{
  v10 = *(this + 4);
  if (v10)
  {
    return this;
  }

  v12 = *(a4 + 4);
  if (v12)
  {
    return this;
  }

  v14 = *(a7 + 4);
  if (v14)
  {
    return this;
  }

  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = length;
  v19 = a2;
  if ((v10 & 0x8000) == 0)
  {
    v20 = v10 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v21 = 0;
    goto LABEL_12;
  }

  v20 = *(this + 3);
  if (a2 < 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v21 = v20;
  if (v20 >= a2)
  {
    if ((length & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v19 = v21;
  if (length < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v20 - v19;
  if (v22 < length)
  {
LABEL_14:
    v18 = v22;
  }

  v23 = v12;
  v24 = v12 >> 5;
  if (v23 < 0)
  {
    v24 = *(a4 + 3);
  }

  if (a5 < 0)
  {
    v25 = 0;
    goto LABEL_21;
  }

  v25 = v24;
  if (v24 < a5)
  {
LABEL_21:
    v17 = v25;
  }

  v26 = a9;
  if ((a6 & 0x80000000) != 0)
  {
    v27 = 0;
    goto LABEL_26;
  }

  v27 = (v24 - v17);
  if (v27 < a6)
  {
LABEL_26:
    v16 = v27;
  }

  v28 = v14;
  v29 = v14 >> 5;
  if (v28 < 0)
  {
    v29 = *(a7 + 3);
  }

  if (a8 < 0)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
    if (v29 >= a8)
    {
      if ((a9 & 0x80000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }
  }

  v15 = v30;
  if ((a9 & 0x80000000) == 0)
  {
LABEL_32:
    v31 = (v29 - v15);
    if (v31 >= a9)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_36:
  v31 = 0;
LABEL_37:
  v26 = v31;
LABEL_38:
  if (v16 && v18 >= 1 && v18 >= v16)
  {
    v43 = a4 + 10;
    while (1)
    {
      v32 = *(a4 + 4);
      if (v32)
      {
        return this;
      }

      if ((v32 & 0x8000u) == 0)
      {
        v33 = v32 >> 5;
      }

      else
      {
        v33 = *(a4 + 3);
      }

      if (v17 < 0)
      {
        v34 = 0;
      }

      else
      {
        v34 = v33;
        v35 = v17;
        if (v33 >= v17)
        {
          if ((v16 & 0x80000000) != 0)
          {
            goto LABEL_53;
          }

          goto LABEL_49;
        }
      }

      v35 = v34;
      if ((v16 & 0x80000000) != 0)
      {
LABEL_53:
        v36 = 0;
LABEL_54:
        v37 = v36;
        goto LABEL_55;
      }

LABEL_49:
      v36 = v33 - v35;
      v37 = v16;
      if (v36 < v16)
      {
        goto LABEL_54;
      }

LABEL_55:
      if (v37 >= 1)
      {
        v38 = (v32 & 2) != 0 ? v43 : *(a4 + 3);
        v39 = icu::UnicodeString::indexOf(this, v38, v35, v37, v19, v18);
        if ((v39 & 0x80000000) == 0)
        {
          v40 = v39;
          icu::UnicodeString::doReplace(this, v39, v16, a7, v15, v26);
          v18 = v19 + v18 - v16 - v40;
          v19 = v40 + v26;
          if (v18 >= 1 && v18 >= v16)
          {
            continue;
          }
        }
      }

      return this;
    }
  }

  return this;
}

uint64_t icu::UnicodeString::unBogus(uint64_t this)
{
  if (*(this + 8))
  {
    *(this + 8) = 2;
  }

  return this;
}

uint64_t icu::UnicodeString::getTerminatedBuffer(icu::UnicodeString *this)
{
  v1 = *(this + 4);
  if ((v1 & 0x11) != 0)
  {
    return 0;
  }

  if ((v1 & 2) == 0)
  {
    result = *(this + 3);
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v4 = *(this + 3);
    if ((v1 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  result = this + 10;
  if ((v1 & 0x8000) != 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v4 = v1 >> 5;
  if ((v1 & 2) == 0)
  {
LABEL_6:
    v5 = *(this + 4);
    goto LABEL_10;
  }

LABEL_9:
  v5 = 27;
LABEL_10:
  if (v4 >= v5)
  {
    if (v4 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  else if ((v1 & 8) != 0)
  {
    if (!*(result + 2 * v4))
    {
      return result;
    }
  }

  else if ((v1 & 4) == 0 || atomic_load_explicit((*(this + 3) - 4), memory_order_acquire) == 1)
  {
    goto LABEL_23;
  }

  if (!icu::UnicodeString::cloneArrayIfNeeded(this, v4 + 1, -1, 1, 0, 0))
  {
    return 0;
  }

  if ((*(this + 4) & 2) != 0)
  {
    result = this + 10;
  }

  else
  {
    result = *(this + 3);
  }

LABEL_23:
  *(result + 2 * v4) = 0;
  return result;
}

icu::UnicodeString *icu::UnicodeString::setTo(icu::UnicodeString *this, char *a2, int a3, int a4)
{
  v5 = *(this + 4);
  if ((v5 & 0x10) == 0)
  {
    if (a2)
    {
      LODWORD(v8) = a3;
      if (a3 > a4 || a3 < -1 || a4 < 0)
      {
        icu::UnicodeString::setToBogus(this);
      }

      else
      {
        if (a3 == -1)
        {
          v9 = a2;
          if (a4)
          {
            v10 = 2 * a4;
            v9 = a2;
            while (*v9)
            {
              v9 += 2;
              v10 -= 2;
              if (!v10)
              {
                v9 = &a2[2 * a4];
                break;
              }
            }
          }

          v8 = (v9 - a2) >> 1;
        }

        if ((v5 & 4) != 0 && atomic_fetch_add((*(this + 3) - 4), 0xFFFFFFFF) == 1)
        {
          free((*(this + 3) - 4));
        }

        if (v8 > 1023)
        {
          *(this + 3) = v8;
          v11 = -32;
        }

        else
        {
          v11 = 32 * v8;
        }

        *(this + 4) = v11;
        *(this + 3) = a2;
        *(this + 4) = a4;
      }
    }

    else
    {
      if ((v5 & 4) != 0 && atomic_fetch_add((*(this + 3) - 4), 0xFFFFFFFF) == 1)
      {
        free((*(this + 3) - 4));
      }

      *(this + 4) = 2;
    }
  }

  return this;
}

icu::UnicodeString *icu::UnicodeString::setCharAt(icu::UnicodeString *this, int a2, __int16 a3)
{
  if (*(this + 4) < 0)
  {
    v6 = *(this + 3);
  }

  else
  {
    v6 = *(this + 4) >> 5;
  }

  if (icu::UnicodeString::cloneArrayIfNeeded(this, -1, -1, 1, 0, 0))
  {
    v7 = v6 - 1;
    if (v6 >= 1)
    {
      if (v6 > a2)
      {
        v7 = a2;
      }

      if (a2 < 0)
      {
        v7 = 0;
      }

      if ((*(this + 4) & 2) != 0)
      {
        v8 = this + 10;
      }

      else
      {
        v8 = *(this + 3);
      }

      *&v8[2 * v7] = a3;
    }
  }

  return this;
}

uint64_t icu::UnicodeString::replace(icu::UnicodeString *this, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v6 = 0;
  if (HIWORD(a4))
  {
    if (HIWORD(a4) > 0x10u)
    {
      v4 = 0;
    }

    else
    {
      LOWORD(v6) = (a4 >> 10) - 10304;
      HIWORD(v6) = a4 & 0x3FF | 0xDC00;
      v4 = 2;
    }
  }

  else
  {
    LOWORD(v6) = a4;
    v4 = 1;
  }

  return icu::UnicodeString::doReplace(this, a2, a3, &v6, 0, v4);
}

uint64_t icu::UnicodeString::doReplace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = a1;
  v36 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  if ((v7 & 0x11) != 0)
  {
    return v6;
  }

  v9 = a6;
  v10 = a3;
  v11 = a2;
  v12 = *(a1 + 8);
  if (v7 < 0)
  {
    v13 = *(a1 + 12);
    if (a6)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v13 = v7 >> 5;
    if (a6)
    {
      goto LABEL_21;
    }
  }

  if ((v7 & 8) == 0)
  {
    goto LABEL_21;
  }

  if (!a2)
  {
    if ((a3 & 0x80000000) != 0)
    {
      v15 = 0;
    }

    else if (v7 < 0)
    {
      v15 = *(a1 + 12);
      if (v15 >= a3)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v15 = v7 >> 5;
      if (v15 >= a3)
      {
LABEL_55:
        *(a1 + 24) += 2 * v10;
        *(a1 + 16) -= v10;
        v24 = v13 - v10;
        if (v13 - v10 > 1023)
        {
          *(a1 + 8) = v12 | 0xFFE0;
          *(a1 + 12) = v24;
        }

        else
        {
          *(a1 + 8) = v12 & 0xE | (32 * v24);
        }

        return v6;
      }
    }

    LODWORD(v10) = v15;
    goto LABEL_55;
  }

  if ((a2 & 0x80000000) != 0)
  {
    v14 = 0;
    goto LABEL_19;
  }

  if (v7 < 0)
  {
    v14 = *(a1 + 12);
    if (v14 >= a2)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v14 = v7 >> 5;
  if (v14 < a2)
  {
LABEL_19:
    v11 = v14;
  }

LABEL_20:
  if (v13 - v11 <= a3)
  {
    if (v11 > 1023)
    {
      v17 = v12 | 0xFFE0;
      *(a1 + 12) = v11;
    }

    else
    {
      v17 = *(a1 + 8) & 0xE | (32 * v11);
    }

    *(a1 + 8) = v17;
    *(a1 + 16) = v11;
    return v6;
  }

LABEL_21:
  if (v11 != v13)
  {
    if (a4)
    {
      v16 = (a4 + 2 * a5);
      if ((a6 & 0x80000000) != 0)
      {
        v9 = u_strlen((a4 + 2 * a5));
        v12 = *(v6 + 8);
      }
    }

    else
    {
      v9 = 0;
      v16 = 0;
    }

    if ((v12 & 0x8000) != 0)
    {
      v18 = *(v6 + 12);
      if ((v11 & 0x80000000) == 0)
      {
LABEL_33:
        v19 = v18;
        if (v11 <= v18)
        {
          if ((v10 & 0x80000000) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_40;
        }

LABEL_39:
        v11 = v19;
        if ((v10 & 0x80000000) == 0)
        {
LABEL_35:
          v20 = (v18 - v11);
          if (v20 >= v10)
          {
LABEL_42:
            if (v9 > ((v13 - v10) ^ 0x7FFFFFFF))
            {
              icu::UnicodeString::setToBogus(v6);
              return v6;
            }

            v21 = v12 & 2;
            if ((v12 & 2) != 0)
            {
              v22 = (v6 + 10);
            }

            else
            {
              v22 = *(v6 + 24);
            }

            if ((v12 & 0x19) == 0)
            {
              v23 = (v12 & 4) == 0 || atomic_load_explicit((*(v6 + 24) - 4), memory_order_acquire) == 1;
              if (v23 && v22 < &v16[v9] && v16 < &v22[v13])
              {
                memset(&dest[8], 0, 48);
                v35 = 0;
                *dest = &unk_1F0935D00;
                *&dest[8] = 2;
                icu::UnicodeString::doAppend(dest, v16, 0, v9);
                if (dest[8])
                {
                  icu::UnicodeString::setToBogus(v6);
                }

                else
                {
                  if ((dest[8] & 2) != 0)
                  {
                    v25 = &dest[10];
                  }

                  else
                  {
                    v25 = *&dest[24];
                  }

                  v6 = icu::UnicodeString::doReplace(v6, v11, v10, v25, 0, v9);
                }

                icu::UnicodeString::~UnicodeString(dest);
                return v6;
              }

              v21 = *(v6 + 8) & 2;
            }

            v26 = v13 - v10 + v9;
            memset(dest, 0, 54);
            if (v21 && v26 >= 28)
            {
              u_memcpy(dest, v22, v13);
              v22 = dest;
            }

            v33 = 0;
            v27 = (v26 >> 2) + 128;
            if (v27 <= 2147483637 - v26)
            {
              v28 = v27 + v26;
            }

            else
            {
              v28 = 2147483637;
            }

            if (!icu::UnicodeString::cloneArrayIfNeeded(v6, v26, v28, 0, &v33, 0))
            {
              return v6;
            }

            if ((*(v6 + 8) & 2) != 0)
            {
              v29 = (v6 + 10);
            }

            else
            {
              v29 = *(v6 + 24);
            }

            if (v29 == v22)
            {
              if (v10 == v9)
              {
                goto LABEL_86;
              }

              v30 = v10 + v11;
              v31 = v13 - (v10 + v11);
              if (v31 < 1)
              {
                goto LABEL_86;
              }
            }

            else
            {
              if (v11 >= 1)
              {
                memmove(v29, v22, (2 * v11));
              }

              v30 = v10 + v11;
              v31 = v13 - (v10 + v11);
              if (v13 <= v10 + v11)
              {
                goto LABEL_86;
              }
            }

            memmove(&v29[v11 + v9], &v22[v30], (2 * v31));
LABEL_86:
            if (v9 >= 1)
            {
              memmove(&v29[v11], v16, (2 * v9));
            }

            if (v26 > 1023)
            {
              v32 = *(v6 + 8) | 0xFFE0;
              *(v6 + 12) = v26;
            }

            else
            {
              v32 = *(v6 + 8) & 0x1F | (32 * v26);
            }

            *(v6 + 8) = v32;
            if (v33)
            {
              free(v33);
            }

            return v6;
          }

LABEL_41:
          v10 = v20;
          goto LABEL_42;
        }

LABEL_40:
        v20 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v18 = v12 >> 5;
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }
    }

    v19 = 0;
    goto LABEL_39;
  }

  return icu::UnicodeString::doAppend(a1, a4, a5, a6);
}

uint64_t icu::UnicodeString::doReplace(icu::UnicodeString *this, uint64_t a2, uint64_t a3, const icu::UnicodeString *a4, int a5, uint64_t a6)
{
  v6 = *(a4 + 4);
  if ((v6 & 0x8000u) == 0)
  {
    v7 = v6 >> 5;
  }

  else
  {
    v7 = *(a4 + 3);
  }

  if (a5 < 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
    if (v7 >= a5)
    {
      if ((a6 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v9 = 0;
      goto LABEL_12;
    }
  }

  a5 = v8;
  if ((a6 & 0x80000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v9 = (v7 - a5);
  if (v9 < a6)
  {
LABEL_12:
    a6 = v9;
  }

  if ((v6 & 2) != 0)
  {
    v10 = a4 + 10;
  }

  else
  {
    v10 = *(a4 + 3);
  }

  return icu::UnicodeString::doReplace(this, a2, a3, v10, a5, a6);
}

icu::UnicodeString *icu::UnicodeString::doReplace(icu::UnicodeString *this, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if ((*(this + 4) & 0x11) != 0)
  {
    return this;
  }

  if (a5 >> 31)
  {
    icu::UnicodeString::setToBogus(this);
    return this;
  }

  return icu::UnicodeString::doReplace(this, a2, a3, a4, 0, a5);
}

uint64_t icu::UnicodeString::doAppend(uint64_t this, const icu::UnicodeString *a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    return this;
  }

  v4 = *(a2 + 4);
  if ((v4 & 0x8000u) == 0)
  {
    v5 = v4 >> 5;
  }

  else
  {
    v5 = *(a2 + 3);
  }

  if (a3 < 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
    if (v5 >= a3)
    {
      if ((a4 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  a3 = v6;
  if ((a4 & 0x80000000) == 0)
  {
LABEL_8:
    v7 = (v5 - a3);
    if (v7 >= a4)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_13:
  v7 = 0;
LABEL_14:
  a4 = v7;
LABEL_15:
  if ((v4 & 2) != 0)
  {
    v8 = a2 + 10;
  }

  else
  {
    v8 = *(a2 + 3);
  }

  return icu::UnicodeString::doAppend(this, v8, a3, a4);
}

icu::UnicodeString *icu::UnicodeString::doAppend(icu::UnicodeString *this, uint64_t a2, unint64_t a3)
{
  if ((*(this + 4) & 0x11) != 0 || a3 == 0)
  {
    return this;
  }

  if (a3 >> 31)
  {
    icu::UnicodeString::setToBogus(this);
    return this;
  }

  return icu::UnicodeString::doAppend(this, a2, 0, a3);
}

uint64_t icu::UnicodeString::handleReplaceBetween(icu::UnicodeString *this, uint64_t a2, int a3, const icu::UnicodeString *a4)
{
  v4 = (a3 - a2);
  v5 = *(a4 + 4);
  v6 = v5;
  v7 = v5 >> 5;
  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = *(a4 + 3);
  }

  return icu::UnicodeString::doReplace(this, a2, v4, a4, 0, v8);
}

void icu::UnicodeString::copy(icu::UnicodeString *this, int a2, signed int a3, uint64_t a4)
{
  v4 = (a3 - a2);
  if (a3 <= a2)
  {
    return;
  }

  v6 = a3;
  v7 = a2;
  v9 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  if (v7 < 0)
  {
    v11 = 0;
  }

  else if (*(this + 4) < 0)
  {
    v11 = *(this + 3);
    if (v11 >= v7)
    {
LABEL_6:
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

LABEL_14:
      v12 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v11 = *(this + 4) >> 5;
    if (v11 >= v7)
    {
      goto LABEL_6;
    }
  }

  v7 = v11;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((*(this + 4) & 0x80000000) == 0)
  {
    v12 = *(this + 4) >> 5;
    if (v12 >= v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v12 = *(this + 3);
  if (v12 < v6)
  {
LABEL_16:
    v6 = v12;
  }

LABEL_17:
  icu::UnicodeString::doExtract(this, v7, v6 - v7, v9, 0);
  icu::UnicodeString::doReplace(this, a4, 0, v10, 0, v4);

  free(v10);
}

icu::UnicodeString *icu::UnicodeString::doReverse(icu::UnicodeString *this, int a2, int a3)
{
  if (a3 < 2)
  {
    return this;
  }

  v4 = a3;
  if (!icu::UnicodeString::cloneArrayIfNeeded(this, -1, -1, 1, 0, 0))
  {
    return this;
  }

  v6 = *(this + 4);
  if ((*(this + 4) & 0x80000000) == 0)
  {
    v7 = v6 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v7 = *(this + 3);
  if (a2 < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = v7;
  if (v7 < a2)
  {
LABEL_9:
    a2 = v8;
  }

  v9 = v7 - a2;
  if (v9 >= v4 || (v4 = v9, v9 >= 2))
  {
    v10 = (v6 & 2) != 0 ? (this + 10) : *(this + 3);
    v11 = 0;
    v12 = (v10 + 2 * a2);
    v13 = v10 + 2 * a2 + 2 * v4 - 4;
    do
    {
      v14 = *v12;
      v15 = (*v12 & 0xFC00) == 55296;
      v16 = *(v13 + 2);
      *v12++ = v16;
      v11 |= v15 || (v16 & 0xFC00) == 55296;
      *(v13 + 2) = v14;
      v17 = v12 >= v13;
      v13 -= 2;
    }

    while (!v17);
    if (v11 | ((*v12 & 0xFC00) == 55296))
    {
      v18 = (*(this + 4) & 2) != 0 ? (this + 10) : *(this + 3);
      v19 = (v18 + 2 * a2);
      v20 = &v19[v4 - 1];
      while (v19 < v20)
      {
        v21 = *v19;
        if ((*v19 & 0xFC00) == 0xDC00 && (v22 = v19[1], (v22 & 0xFC00) == 0xD800))
        {
          *v19 = v22;
          v19[1] = v21;
          v19 += 2;
        }

        else
        {
          ++v19;
        }
      }
    }
  }

  return this;
}

uint64_t icu::UnicodeString::padLeading(icu::UnicodeString *this, int a2, __int16 a3)
{
  if (*(this + 4) < 0)
  {
    v6 = *(this + 3);
  }

  else
  {
    v6 = *(this + 4) >> 5;
  }

  v7 = (a2 - v6);
  if (a2 <= v6)
  {
    return 0;
  }

  result = icu::UnicodeString::cloneArrayIfNeeded(this, a2, -1, 1, 0, 0);
  if (result)
  {
    if ((*(this + 4) & 2) != 0)
    {
      v9 = this + 10;
    }

    else
    {
      v9 = *(this + 3);
    }

    if (v6 >= 1)
    {
      memmove(&v9[2 * v7], v9, (2 * v6));
    }

    if (v7 >= 1)
    {
      v10 = v7 + 1;
      v11 = v7 - 1;
      do
      {
        *&v9[2 * v11] = a3;
        --v10;
        --v11;
      }

      while (v10 > 1);
    }

    if (a2 > 1023)
    {
      *(this + 4) |= 0xFFE0u;
      *(this + 3) = a2;
    }

    else
    {
      *(this + 4) = *(this + 4) & 0x1F | (32 * a2);
    }

    return 1;
  }

  return result;
}

uint64_t icu::UnicodeString::padTrailing(icu::UnicodeString *this, int a2, __int16 a3)
{
  if (*(this + 4) < 0)
  {
    v6 = *(this + 3);
  }

  else
  {
    v6 = *(this + 4) >> 5;
  }

  if (v6 >= a2)
  {
    return 0;
  }

  result = icu::UnicodeString::cloneArrayIfNeeded(this, a2, -1, 1, 0, 0);
  if (result)
  {
    if ((*(this + 4) & 2) != 0)
    {
      v8 = this + 10;
    }

    else
    {
      v8 = *(this + 3);
    }

    v9 = 0;
    v10 = a2 - 1;
    if (v10 >= v6)
    {
      v10 = v6;
    }

    v11 = a2 - v10;
    v12 = vdupq_n_s64(v11 - 1);
    v13 = &v8[2 * a2 - 8];
    do
    {
      v14 = vdupq_n_s64(v9);
      v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_19544D5F0)));
      if (vuzp1_s8(vuzp1_s16(v15, *v12.i8), *v12.i8).u8[0])
      {
        *(v13 + 3) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(v15, *&v12), *&v12).i8[1])
      {
        *(v13 + 2) = a3;
      }

      if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_19544D5E0)))), *&v12).i8[2])
      {
        *(v13 + 1) = a3;
        *v13 = a3;
      }

      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_19547BF90)));
      if (vuzp1_s8(*&v12, vuzp1_s16(v16, *&v12)).i32[1])
      {
        *(v13 - 1) = a3;
      }

      if (vuzp1_s8(*&v12, vuzp1_s16(v16, *&v12)).i8[5])
      {
        *(v13 - 2) = a3;
      }

      if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v14, xmmword_19547BF80))))).i8[6])
      {
        *(v13 - 3) = a3;
        *(v13 - 4) = a3;
      }

      v9 += 8;
      v13 -= 16;
    }

    while (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) != v9);
    if (a2 > 1023)
    {
      *(this + 4) |= 0xFFE0u;
      *(this + 3) = a2;
    }

    else
    {
      *(this + 4) = *(this + 4) & 0x1F | (32 * a2);
    }

    return 1;
  }

  return result;
}

unint64_t icu::UnicodeString::doHashCode(icu::UnicodeString *this)
{
  v3 = *(this + 4);
  if ((v3 & 2) != 0)
  {
    v4 = (this + 10);
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(this + 3);
    if ((v3 & 0x8000) == 0)
    {
LABEL_3:
      v5 = v3 >> 5;
      goto LABEL_6;
    }
  }

  v5 = *(this + 3);
LABEL_6:
  LODWORD(result) = ustr_hashUCharsN(v4, v5);
  if (result <= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void icu::UnicodeStringAppendable::~UnicodeStringAppendable(icu::UnicodeStringAppendable *this)
{
  icu::Appendable::~Appendable(this);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::UnicodeStringAppendable::appendCodePoint(icu::UnicodeStringAppendable *this, unsigned int a2)
{
  v4 = 0;
  if (!HIWORD(a2))
  {
    LOWORD(v4) = a2;
    v2 = 1;
    return (*(icu::UnicodeString::doAppend(*(this + 1), &v4, 0, v2) + 8) & 0x11) == 0;
  }

  if (HIWORD(a2) <= 0x10u)
  {
    LOWORD(v4) = (a2 >> 10) - 10304;
    HIWORD(v4) = a2 & 0x3FF | 0xDC00;
    v2 = 2;
    return (*(icu::UnicodeString::doAppend(*(this + 1), &v4, 0, v2) + 8) & 0x11) == 0;
  }

  return 0;
}

uint64_t icu::UnicodeStringAppendable::reserveAppendCapacity(icu::UnicodeStringAppendable *this, int a2)
{
  v2 = *(this + 1);
  if (*(v2 + 8) < 0)
  {
    v3 = *(v2 + 12);
  }

  else
  {
    v3 = *(v2 + 8) >> 5;
  }

  return icu::UnicodeString::cloneArrayIfNeeded(v2, v3 + a2, -1, 1, 0, 0);
}

uint64_t icu::UnicodeStringAppendable::getAppendBuffer(uint64_t a1, int a2, int a3, uint64_t a4, int a5, int *a6)
{
  if (a2 < 1 || a5 < a2)
  {
    a4 = 0;
    *a6 = 0;
  }

  else
  {
    v10 = *(a1 + 8);
    if (*(v10 + 8) < 0)
    {
      v11 = *(v10 + 12);
    }

    else
    {
      v11 = *(v10 + 8) >> 5;
    }

    v12 = 2147483637 - v11 < a2 || 2147483637 - v11 < a3;
    if (v12 || !icu::UnicodeString::cloneArrayIfNeeded(v10, v11 + a2, v11 + a3, 1, 0, 0))
    {
      *a6 = a5;
    }

    else
    {
      v13 = *(a1 + 8);
      if ((*(v13 + 8) & 2) != 0)
      {
        v14 = 27;
      }

      else
      {
        v14 = *(v13 + 16);
      }

      *a6 = v14 - v11;
      if ((*(v13 + 8) & 2) != 0)
      {
        v15 = v13 + 10;
      }

      else
      {
        v15 = *(v13 + 24);
      }

      return v15 + 2 * v11;
    }
  }

  return a4;
}

icu::UnicodeString *uhash_hashUnicodeString(icu::UnicodeString *result)
{
  if (result)
  {
    return icu::UnicodeString::doHashCode(result);
  }

  return result;
}

BOOL uhash_compareUnicodeString(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      return *(a2 + 8) & 1;
    }

    else
    {
      if ((v4 & 0x8000) != 0)
      {
        v5 = *(a1 + 12);
      }

      else
      {
        v5 = v4 >> 5;
      }

      v2 = 0;
      v6 = *(a2 + 8);
      if ((v6 & 0x8000u) == 0)
      {
        v7 = v6 >> 5;
      }

      else
      {
        v7 = *(a2 + 12);
      }

      if ((v6 & 1) == 0 && v5 == v7)
      {
        if ((v4 & 2) != 0)
        {
          v8 = (a1 + 10);
        }

        else
        {
          v8 = *(a1 + 24);
        }

        if ((v6 & 2) != 0)
        {
          v9 = (a2 + 10);
        }

        else
        {
          v9 = *(a2 + 24);
        }

        return memcmp(v8, v9, (2 * v5)) == 0;
      }
    }
  }

  return v2;
}

uint64_t icu::UnicodeString::doCaseCompare(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, unsigned int a6, int a7)
{
  v7 = *(a1 + 8);
  if (v7)
  {
    return -1;
  }

  if ((v7 & 0x8000) == 0)
  {
    v9 = v7 >> 5;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = *(a1 + 12);
  if (a2 < 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  v10 = v9;
  if (v9 >= a2)
  {
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  a2 = v10;
  if ((a3 & 0x80000000) == 0)
  {
LABEL_6:
    v11 = (v9 - a2);
    if (v11 >= a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_12:
  v11 = 0;
LABEL_13:
  a3 = v11;
LABEL_14:
  if (a4)
  {
    v13 = a6;
  }

  else
  {
    v13 = 0;
  }

  if ((v7 & 2) != 0)
  {
    v14 = a1 + 10;
  }

  else
  {
    v14 = *(a1 + 24);
  }

  v15 = (v14 + 2 * a2);
  if (a4)
  {
    v16 = a5;
  }

  else
  {
    v16 = 0;
  }

  v17 = (a4 + 2 * v16);
  if (v15 == v17)
  {
    if ((v13 & 0x80000000) != 0)
    {
      LODWORD(v13) = u_strlen(&v17[v16]);
    }

    v20 = a3 - v13;
    if (v20)
    {
      v19 = HIBYTE(v20);
      return (v19 | 1);
    }
  }

  else
  {
    v22 = 0;
    v18 = sub_19529ACA8(v15, a3, v17, v13, a7 | 0x10000u, &v22);
    if (v18)
    {
      v19 = HIBYTE(v18);
      return (v19 | 1);
    }
  }

  return 0;
}

UChar **icu::UnicodeString::caseMap(UChar **this, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, uint64_t, void **, uint64_t, UChar *, uint64_t, unsigned __int16 **, UErrorCode *))
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = *(this + 4);
  if (v6 >= 0x20 && (v6 & 0x11) == 0)
  {
    v82 = 0u;
    memset(v83, 0, sizeof(v83));
    v80 = 0u;
    v81 = 0u;
    *dest = 0u;
    v79 = 0u;
    if ((v6 & 0x8000) != 0)
    {
      v12 = *(this + 3);
      if ((v6 & 8) == 0)
      {
LABEL_8:
        v13 = (v6 & 4) != 0 && icu::UnicodeString::refCount(this) != 1;
LABEL_13:
        v47 = U_ZERO_ERROR;
        v74 = 0u;
        v77 = 0;
        v76 = 0u;
        v75 = 0u;
        v73 = &unk_1F0935D00;
        LOWORD(v74) = 2;
        if (v13)
        {
          if (v12 > 26)
          {
            goto LABEL_15;
          }
        }

        else if (v12 >= 55)
        {
LABEL_15:
          if ((this[1] & 2) != 0)
          {
            v14 = this + 5;
          }

          else
          {
            v14 = this[3];
          }

          v34 = 0uLL;
          v45 = 0uLL;
          v44 = 0uLL;
          v43 = 0uLL;
          v42 = 0uLL;
          v41 = 0uLL;
          v40 = 0uLL;
          v39 = 0uLL;
          v38 = 0uLL;
          v37 = 0uLL;
          v36 = 0uLL;
          v35 = 0uLL;
          v30 = &v33[2];
          v31 = 100;
          *v32 = 0;
          memset(v33, 0, sizeof(v33));
          v71 = 0uLL;
          v72 = 0uLL;
          v69 = 0uLL;
          v70 = 0uLL;
          v67 = 0uLL;
          v68 = 0uLL;
          v65 = 0uLL;
          v66 = 0uLL;
          v63 = 0uLL;
          v64 = 0uLL;
          v61 = 0uLL;
          v62 = 0uLL;
          v59 = 0uLL;
          v60 = 0uLL;
          v57 = 0uLL;
          v58 = 0uLL;
          v55 = 0uLL;
          v56 = 0uLL;
          v53 = 0uLL;
          v54 = 0uLL;
          v51 = 0uLL;
          v52 = 0uLL;
          v49 = 0uLL;
          v50 = 0uLL;
          *v48 = 0uLL;
          if (a4)
          {
            v29 = v14;
            icu::UnicodeString::setTo(&v73, 0, &v29, v12);
            (*(*a4 + 56))(a4, &v73);
          }

          a5(a2, a3 | 0x4000, a4, v48, 200, v14, v12, &v30, &v47);
          if (v47 <= U_ZERO_ERROR)
          {
            if (v32[1] >= 1 && !icu::UnicodeString::cloneArrayIfNeeded(this, v32[1] + v12, v32[1] + v12, 1, 0, 0))
            {
              goto LABEL_50;
            }

            *v27 = 0u;
            v28 = 0u;
            v26 = 0u;
            icu::Edits::Iterator::Iterator(&v26, v30, v32[0], 1, 1);
            while (icu::Edits::Iterator::next(&v26, v27[4], &v47))
            {
              icu::UnicodeString::doReplace(this, DWORD2(v28), *&v27[8], v48, SDWORD1(v28), *&v27[12]);
            }

            if (v47 < U_ILLEGAL_ARGUMENT_ERROR)
            {
              goto LABEL_50;
            }
          }

          else if (v47 == U_BUFFER_OVERFLOW_ERROR)
          {
            v16 = v32[1] + v12;
            icu::Edits::~Edits(&v30);
LABEL_38:
            v48[0] = 0;
            if (icu::UnicodeString::cloneArrayIfNeeded(this, v16, v16, 0, v48, 1))
            {
              v47 = U_ZERO_ERROR;
              if ((this[1] & 2) != 0)
              {
                v20 = this + 5;
                v21 = 27;
              }

              else
              {
                v20 = this[3];
                v21 = *(this + 4);
              }

              v23 = (a5)(a2, a3, a4, v20, v21, v14, v12, 0, &v47);
              if (v48[0])
              {
                free(v48[0]);
              }

              if (v47 > U_ZERO_ERROR)
              {
                goto LABEL_55;
              }

              v24 = *(this + 4);
              if (v23 > 1023)
              {
                v17 = (v24 | 0xFFE0u);
                *(this + 4) = v17;
                *(this + 3) = v23;
                goto LABEL_61;
              }

              v17 = (v24 & 0x1F | (32 * v23));
LABEL_59:
              *(this + 4) = v17;
            }

LABEL_61:
            icu::UnicodeString::~UnicodeString(v17, &v73);
            return this;
          }

          icu::UnicodeString::setToBogus(this);
LABEL_50:
          icu::Edits::~Edits(&v30);
          goto LABEL_61;
        }

        if ((this[1] & 2) != 0)
        {
          v15 = this + 5;
        }

        else
        {
          v15 = this[3];
        }

        u_memcpy(dest, v15, v12);
        if (v13)
        {
          if (!icu::UnicodeString::cloneArrayIfNeeded(this, 27, 27, 0, 0, 0))
          {
            goto LABEL_61;
          }

          v15 = this + 5;
        }

        else if ((this[1] & 2) == 0)
        {
          v18 = *(this + 4);
          if (!a4)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v18 = 27;
        if (!a4)
        {
LABEL_35:
          v19 = (a5)(a2, a3, a4, v15, v18, dest, v12, 0, &v47);
          v16 = v19;
          if (v47 <= U_ZERO_ERROR)
          {
            v22 = *(this + 4);
            if (v19 > 1023)
            {
              v17 = (v22 | 0xFFE0u);
              *(this + 4) = v17;
              *(this + 3) = v19;
              goto LABEL_61;
            }

            v17 = (v22 & 0x1F | (32 * v19));
            goto LABEL_59;
          }

          if (v47 != U_BUFFER_OVERFLOW_ERROR)
          {
LABEL_55:
            icu::UnicodeString::setToBogus(this);
            goto LABEL_61;
          }

          v14 = dest;
          goto LABEL_38;
        }

LABEL_34:
        v46 = dest;
        icu::UnicodeString::setTo(&v73, 0, &v46, v12);
        (*(*a4 + 56))(a4, &v73);
        goto LABEL_35;
      }
    }

    else
    {
      v12 = v6 >> 5;
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }
    }

    v13 = 1;
    goto LABEL_13;
  }

  return this;
}

unint64_t uhash_hashCaselessUnicodeString(UChar **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  memset(v4, 0, sizeof(v4));
  icu::UnicodeString::UnicodeString(v4, a1);
  icu::UnicodeString::caseMap(v4, 1, 0, 0, sub_19529A804);
  v1 = icu::UnicodeString::doHashCode(v4);
  icu::UnicodeString::~UnicodeString(v2, v4);
  return v1;
}

BOOL uhash_compareCaselessUnicodeString(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = 0;
  if (a1 && a2)
  {
    v3 = *(a1 + 8);
    if (*(a1 + 8) < 0)
    {
      v4 = *(a1 + 12);
    }

    else
    {
      v4 = v3 >> 5;
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      v8 = (v3 & 1) == 0;
    }

    else
    {
      if ((v5 & 0x8000u) == 0)
      {
        v6 = v5 >> 5;
      }

      else
      {
        v6 = *(a2 + 12);
      }

      if ((v5 & 2) != 0)
      {
        v7 = a2 + 10;
      }

      else
      {
        v7 = *(a2 + 24);
      }

      v8 = icu::UnicodeString::doCaseCompare(a1, 0, v4, v7, v6 & (v6 >> 31), v6 & ~(v6 >> 31), 0);
    }

    return v8 == 0;
  }

  return v2;
}

UChar **icu::UnicodeString::toLower(UChar **this)
{
  v2 = sub_19529B410(0);

  return icu::UnicodeString::caseMap(this, v2, 0, 0, sub_19529A36C);
}

UChar **icu::UnicodeString::toLower(UChar **this, const icu::Locale *a2)
{
  BaseName = icu::Locale::getBaseName(a2);
  v4 = sub_19529B410(BaseName);

  return icu::UnicodeString::caseMap(this, v4, 0, 0, sub_19529A36C);
}

UChar **icu::UnicodeString::toUpper(UChar **this)
{
  v2 = sub_19529B410(0);

  return icu::UnicodeString::caseMap(this, v2, 0, 0, sub_19529A40C);
}

UChar **icu::UnicodeString::toUpper(UChar **this, const icu::Locale *a2)
{
  BaseName = icu::Locale::getBaseName(a2);
  v4 = sub_19529B410(BaseName);

  return icu::UnicodeString::caseMap(this, v4, 0, 0, sub_19529A40C);
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, const char *__s, char *a3)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  if (__s)
  {
    v6 = strlen(__s);
    icu::UnicodeString::doCodepageCreate(this, __s, v6, a3);
  }

  return this;
}

void icu::UnicodeString::doCodepageCreate(UChar **this, const char *__s, int a3, char *a4)
{
  if (a3 < -1)
  {
    return;
  }

  v17 = v4;
  v18 = v5;
  if (!__s)
  {
    return;
  }

  v7 = a3;
  if (!a3)
  {
    return;
  }

  if (a3 == -1)
  {
    v7 = strlen(__s);
  }

  v16 = U_ZERO_ERROR;
  if (!a4)
  {
    DefaultName = ucnv_getDefaultName();
    v12 = *DefaultName;
    if (v12 == 117)
    {
      if (DefaultName[1] != 116 || DefaultName[2] != 102)
      {
        goto LABEL_29;
      }
    }

    else if (v12 != 85 || DefaultName[1] != 84 || DefaultName[2] != 70)
    {
      goto LABEL_29;
    }

    v14 = *(DefaultName + 3);
    if (v14 == 56)
    {
      if (!DefaultName[4])
      {
LABEL_23:
        icu::UnicodeString::setToUTF8(this, __s, v7);
        return;
      }
    }

    else if (v14 == 45 && DefaultName[4] == 56 && !DefaultName[5])
    {
      goto LABEL_23;
    }

LABEL_29:
    DefaultConverter = u_getDefaultConverter(&v16);
    goto LABEL_30;
  }

  if (*a4)
  {
    DefaultConverter = ucnv_open(a4, &v16);
LABEL_30:
    v15 = DefaultConverter;
    if (v16 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      goto LABEL_31;
    }

    icu::UnicodeString::doCodepageCreate(this, __s, v7, DefaultConverter, &v16);
    if (v16 >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      icu::UnicodeString::setToBogus(this);
    }

    if (a4)
    {
      ucnv_close(v15);
    }

    else
    {
      u_releaseDefaultConverter(v15);
    }

    return;
  }

  if (!icu::UnicodeString::cloneArrayIfNeeded(this, v7, v7, 0, 0, 0))
  {
LABEL_31:
    icu::UnicodeString::setToBogus(this);
    return;
  }

  if ((this[1] & 2) != 0)
  {
    v13 = this + 5;
  }

  else
  {
    v13 = this[3];
  }

  u_charsToUChars(__s, v13, v7);
  if (v7 > 1023)
  {
    *(this + 4) |= 0xFFE0u;
    *(this + 3) = v7;
  }

  else
  {
    *(this + 4) = this[1] & 0x1F | (32 * v7);
  }
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, const char *a2, int a3, char *a4)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  if (a2)
  {
    icu::UnicodeString::doCodepageCreate(this, a2, a3, a4);
  }

  return this;
}

{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  if (a2)
  {
    icu::UnicodeString::doCodepageCreate(this, a2, a3, a4);
  }

  return this;
}

icu::UnicodeString *icu::UnicodeString::UnicodeString(icu::UnicodeString *this, const char *__s, int a3, UConverter *a4, UErrorCode *a5)
{
  *this = &unk_1F0935D00;
  *(this + 4) = 2;
  if (*a5 <= 0 && __s != 0)
  {
    v8 = a3;
    if (a3 <= -2)
    {
      *a5 = U_ILLEGAL_ARGUMENT_ERROR;
LABEL_14:
      icu::UnicodeString::setToBogus(this);
      return this;
    }

    if (a3 == -1)
    {
      v8 = strlen(__s);
    }

    if (v8 >= 1)
    {
      if (a4)
      {
        ucnv_resetToUnicode(a4);
        icu::UnicodeString::doCodepageCreate(this, __s, v8, a4, a5);
      }

      else
      {
        DefaultConverter = u_getDefaultConverter(a5);
        icu::UnicodeString::doCodepageCreate(this, __s, v8, DefaultConverter, a5);
        u_releaseDefaultConverter(DefaultConverter);
      }
    }

    if (*a5 >= 1)
    {
      goto LABEL_14;
    }
  }

  return this;
}

void icu::UnicodeString::doCodepageCreate(icu::UnicodeString *this, const char *a2, unsigned int a3, UConverter *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    v23[7] = v5;
    v23[8] = v6;
    v22 = 0;
    v23[0] = a2;
    if (a3 <= 27)
    {
      v12 = 27;
    }

    else
    {
      v12 = a3 + (a3 >> 2);
    }

    if (icu::UnicodeString::cloneArrayIfNeeded(this, v12, v12, 0, 0, 0))
    {
      v13 = &a2[a3];
      while (1)
      {
        v14 = *(this + 4);
        v15 = this + 10;
        if ((v14 & 2) == 0)
        {
          v15 = *(this + 3);
        }

        v16 = (v14 & 0x8000) != 0 ? *(this + 3) : v14 >> 5;
        v22 = &v15[2 * v16];
        v17 = (v14 & 2) != 0 ? 27 : *(this + 4);
        ucnv_toUnicode(a4, &v22, &v15[2 * v17], v23, v13, 0, 1, a5);
        v18 = (v22 - v15) >> 1;
        v19 = *(this + 4);
        if (v18 > 1023)
        {
          LOWORD(v20) = v19 | 0xFFE0;
          *(this + 3) = v18;
        }

        else
        {
          v20 = v19 & 0x1F | (32 * ((v22 - v15) >> 1));
        }

        *(this + 4) = v20;
        if (*a5 != U_BUFFER_OVERFLOW_ERROR)
        {
          break;
        }

        *a5 = U_ZERO_ERROR;
        if (*(this + 4) < 0)
        {
          v21 = *(this + 3);
        }

        else
        {
          v21 = *(this + 4) >> 5;
        }

        if (!icu::UnicodeString::cloneArrayIfNeeded(this, v21 + 2 * (v13 - LODWORD(v23[0])), v21 + 2 * (v13 - LODWORD(v23[0])), 1, 0, 0))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_23:
      icu::UnicodeString::setToBogus(this);
    }
  }
}

uint64_t icu::UnicodeString::extract(icu::UnicodeString *this, int a2, uint64_t a3, char *cs, unsigned int a5, char *a6)
{
  v7 = a3;
  v8 = a2;
  if (cs || !a5)
  {
    v11 = *(this + 4);
    if (*(this + 4) < 0)
    {
      v12 = *(this + 3);
      if ((a2 & 0x80000000) == 0)
      {
LABEL_6:
        v13 = v12;
        if (v12 >= a2)
        {
          if ((a3 & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }

LABEL_12:
        v8 = v13;
        if ((a3 & 0x80000000) == 0)
        {
LABEL_8:
          v14 = (v12 - v8);
          if (v14 >= a3)
          {
LABEL_15:
            v15 = cs + 0x7FFFFFFF;
            if (cs >= 0xFFFFFFFF80000001)
            {
              v15 = -1;
            }

            v16 = v15 - cs;
            if (a5 >= 0x7FFFFFFF)
            {
              v17 = v16;
            }

            else
            {
              v17 = a5;
            }

            v30 = U_ZERO_ERROR;
            if (!v7)
            {
              v19 = cs;
              v20 = v17;
              v21 = 0;
              return u_terminateChars(v19, v20, v21, &v30);
            }

            if (a6)
            {
              if (*a6)
              {
                v18 = ucnv_open(a6, &v30);
                v10 = icu::UnicodeString::doExtract(this, v8, v7, cs, v17, v18, &v30);
                ucnv_close(v18);
                return v10;
              }

              if (v7 >= v17)
              {
                v24 = v17;
              }

              else
              {
                v24 = v7;
              }

              if ((v11 & 2) != 0)
              {
                v25 = this + 10;
              }

              else
              {
                v25 = *(this + 3);
              }

              u_UCharsToChars(&v25[2 * v8], cs, v24);
              v19 = cs;
              v20 = v17;
              v21 = v7;
              return u_terminateChars(v19, v20, v21, &v30);
            }

            DefaultName = ucnv_getDefaultName();
            v23 = *DefaultName;
            if (v23 == 117)
            {
              if (DefaultName[1] != 116 || DefaultName[2] != 102)
              {
                goto LABEL_47;
              }
            }

            else if (v23 != 85 || DefaultName[1] != 84 || DefaultName[2] != 70)
            {
              goto LABEL_47;
            }

            v26 = *(DefaultName + 3);
            if (v26 == 56)
            {
              if (!DefaultName[4])
              {
                return icu::UnicodeString::toUTF8(this, v8, v7, cs, v17);
              }
            }

            else if (v26 == 45 && DefaultName[4] == 56 && !DefaultName[5])
            {
              return icu::UnicodeString::toUTF8(this, v8, v7, cs, v17);
            }

LABEL_47:
            DefaultConverter = u_getDefaultConverter(&v30);
            v10 = icu::UnicodeString::doExtract(this, v8, v7, cs, v17, DefaultConverter, &v30);
            u_releaseDefaultConverter(DefaultConverter);
            return v10;
          }

LABEL_14:
          v7 = v14;
          goto LABEL_15;
        }

LABEL_13:
        v14 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v12 = v11 >> 5;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    v13 = 0;
    goto LABEL_12;
  }

  return 0;
}