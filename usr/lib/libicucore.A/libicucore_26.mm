double sub_195302734(unsigned __int16 **a1, unsigned __int16 *a2, int a3, int a4, int a5, char a6, int a7, _BYTE *a8, double a9)
{
  v58 = a2;
  *a8 = 1;
  while (1)
  {
    v18 = *a1;
    v19 = **a1;
    if (v19 != 48)
    {
      break;
    }

    if (sub_1953023F0(a1, a4, 16, &v58))
    {
      *a8 = 0;
      if (a3)
      {
        return -0.0;
      }

      else
      {
        return 0.0;
      }
    }
  }

  v57 = a6;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a7)
  {
    v23 = 53;
  }

  else
  {
    v23 = 24;
  }

  while (1)
  {
    v24 = v19 - 48;
    if ((v19 - 48) < 0xA)
    {
      goto LABEL_15;
    }

    if ((v19 - 97) <= 5)
    {
      v24 = v19 - 87;
      goto LABEL_15;
    }

    if ((v19 - 65) > 5)
    {
      break;
    }

    v24 = v19 - 55;
LABEL_15:
    if (v20)
    {
      v21 -= 4;
    }

    v22 = 16 * v22 + v24;
    v25 = v22 >> v23;
    if ((v22 >> v23))
    {
      v55 = a3;
      v26 = 1;
      if (v25 >= 2)
      {
        do
        {
          ++v26;
          v27 = v25 > 3;
          LODWORD(v25) = v25 >> 1;
        }

        while (v27);
      }

      v56 = a2;
      v28 = v26 + v21;
      if (sub_1953023F0(a1, a4, 16, &v58))
      {
        v29 = 1;
LABEL_44:
        if ((a5 & 1) == 0 && (v57 & 1) == 0)
        {
          for (i = *a1; i != v56; *a1 = i)
          {
            v35 = *i;
            if (v35 >= 0x80)
            {
              v37 = 0;
              while (word_19548C622[v37] != v35)
              {
                if (++v37 == 20)
                {
                  return a9;
                }
              }
            }

            else
            {
              v36 = 0;
              while (byte_19548C61C[v36] != v35)
              {
                if (++v36 == 6)
                {
                  return a9;
                }
              }
            }

            ++i;
          }
        }

        v38 = v22 & ~(-1 << v26);
        v39 = 1 << (v26 - 1);
        v40 = (v22 >> v26) + ((v22 >> v26) & 1u | ((v29 & 1) == 0));
        if (v38 != v39)
        {
          v40 = v22 >> v26;
        }

        if (v38 > v39)
        {
          v41 = (v22 >> v26) + 1;
        }

        else
        {
          v41 = v40;
        }

        v21 = v28 + ((v41 >> v23) & 1);
        v22 = v41 >> ((v41 >> v23) & 1);
        a3 = v55;
        goto LABEL_63;
      }

      v29 = 1;
      while (2)
      {
        v30 = *a1;
        if (a5)
        {
          v31 = *v30;
          if (v31 == 46)
          {
            sub_1953023F0(a1, a4, 16, &v58);
            v30 = *a1;
            v20 = 1;
            goto LABEL_31;
          }
        }

        else
        {
LABEL_31:
          v31 = *v30;
        }

        if ((v31 - 48 >= 0xA || v31 >= 0x40) && (v31 - 65 > 0x25 || ((1 << (v31 - 65)) & 0x3F0000003FLL) == 0))
        {
          goto LABEL_44;
        }

        v29 &= v31 == 48;
        if ((v20 & 1) == 0)
        {
          v28 += 4;
        }

        if (sub_1953023F0(a1, a4, 16, &v58))
        {
          goto LABEL_44;
        }

        continue;
      }
    }

    if (sub_1953023F0(a1, a4, 16, &v58))
    {
      goto LABEL_63;
    }

LABEL_19:
    v18 = *a1;
    v19 = **a1;
  }

  if (!a5)
  {
    goto LABEL_97;
  }

  if (v19 == 46)
  {
    sub_1953023F0(a1, a4, 16, &v58);
    v20 = 1;
    goto LABEL_19;
  }

  if (v19 != 80 && v19 != 112)
  {
LABEL_97:
    if (v18 != a2 && (v57 & 1) == 0)
    {
      do
      {
        v52 = *v18;
        if (v52 >= 0x80)
        {
          v54 = 0;
          while (word_19548C622[v54] != v52)
          {
            if (++v54 == 20)
            {
              return a9;
            }
          }
        }

        else
        {
          v53 = 0;
          while (byte_19548C61C[v53] != v52)
          {
            if (++v53 == 6)
            {
              return a9;
            }
          }
        }

        *a1 = ++v18;
      }

      while (v18 != a2);
    }

LABEL_63:
    *a8 = 0;
    if (a5)
    {
      goto LABEL_68;
    }

    goto LABEL_84;
  }

  *a8 = 0;
LABEL_68:
  sub_1953023F0(a1, a4, 16, &v58);
  v42 = 0;
  v43 = **a1;
  if (v43 == 43)
  {
LABEL_71:
    sub_1953023F0(a1, a4, 16, &v58);
  }

  else if (v43 == 45)
  {
    v42 = 1;
    goto LABEL_71;
  }

  v44 = 0;
  do
  {
    v45 = **a1;
    if ((v45 - 48) > 9)
    {
      break;
    }

    if (v44 >= 0)
    {
      v46 = v44;
    }

    else
    {
      v46 = -v44;
    }

    v47 = v45 + 10 * v44 - 48;
    if (v46 < 0x17BB1)
    {
      v44 = v47;
    }
  }

  while (!sub_1953023F0(a1, a4, 16, &v58));
  if (v42)
  {
    v48 = -v44;
  }

  else
  {
    v48 = v44;
  }

  v21 += v48;
LABEL_84:
  if (v21)
  {
    v49 = v22 == 0;
  }

  else
  {
    v49 = 1;
  }

  if (v49)
  {
    if (a3)
    {
      if (!v22)
      {
        return -0.0;
      }

      return -v22;
    }

    return v22;
  }

  else
  {
    v50 = COERCE_DOUBLE(sub_195302234(v22, v21));
    if (a3)
    {
      return -v50;
    }

    else
    {
      return v50;
    }
  }
}

double sub_195302C08(char *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0.0;
  v6 = sub_195302CE4(a1, a2, a3, &v15);
  v7 = v15;
  if (!v6)
  {
    v8 = v15;
    v9 = 2 * (*&v15 & 0xFFFFFFFFFFFFFLL);
    if ((*&v15 & 0x7FF0000000000000) != 0)
    {
      v9 = (2 * (*&v15 & 0xFFFFFFFFFFFFFLL)) | 0x20000000000000;
      v10 = ((*&v15 >> 52) & 0x7FF) - 1076;
    }

    else
    {
      v10 = -1075;
    }

    v11 = sub_19530314C(a1, a2, a3, v9 | 1, v10);
    if ((v11 & 0x80000000) == 0)
    {
      if (v11)
      {
        *&v12 = INFINITY;
        if (v7 == INFINITY)
        {
          return *&v12;
        }

        if ((*&v7 & 0x8000000000000000) == 0)
        {
LABEL_9:
          v12 = *&v7 + 1;
          return *&v12;
        }
      }

      else
      {
        if ((LOBYTE(v7) & 1) == 0)
        {
          return v7;
        }

        *&v12 = INFINITY;
        if (v7 == INFINITY)
        {
          return *&v12;
        }

        if ((*&v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v13 = v7 == 0.0;
      v7 = 0.0;
      if (!v13)
      {
        v12 = *&v8 - 1;
        return *&v12;
      }
    }
  }

  return v7;
}

BOOL sub_195302CE4(char *a1, int a2, uint64_t a3, double *a4)
{
  if (!a2)
  {
    goto LABEL_42;
  }

  v6 = a3;
  v7 = a2 + a3;
  if (a2 + a3 >= 310)
  {
    *a4 = INFINITY;
    return 1;
  }

  if (v7 <= -324)
  {
    goto LABEL_42;
  }

  if (a2 >= 16)
  {
    goto LABEL_28;
  }

  if (a3 >= 0xFFFFFFEA)
  {
    if (a2 < 1)
    {
      v11 = 0.0;
    }

    else
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *a1++;
        v8 = v10 + 10 * v8 - 48;
        if (v9 >= (a2 & 0x7FFFFFFFu))
        {
          break;
        }

        ++v9;
      }

      while (v8 < 0x1999999999999999);
      v11 = v8;
    }

    v21 = v11 / dbl_19548C660[-a3];
    goto LABEL_82;
  }

  if (a3 <= 0x16)
  {
    if (a2 < 1)
    {
      v15 = 0.0;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      do
      {
        v14 = *a1++;
        v12 = v14 + 10 * v12 - 48;
        if (v13 >= (a2 & 0x7FFFFFFFu))
        {
          break;
        }

        ++v13;
      }

      while (v12 < 0x1999999999999999);
      v15 = v12;
    }

    v50 = dbl_19548C660[a3];
LABEL_81:
    v21 = v15 * v50;
LABEL_82:
    *a4 = v21;
    return 1;
  }

  if ((a3 & 0x80000000) == 0)
  {
    v16 = 15 - a2;
    if (a3 - v16 <= 22)
    {
      if (a2 < 1)
      {
        v20 = 0.0;
      }

      else
      {
        v17 = 0;
        v18 = 1;
        do
        {
          v19 = *a1++;
          v17 = v19 + 10 * v17 - 48;
          if (v18 >= (a2 & 0x7FFFFFFFu))
          {
            break;
          }

          ++v18;
        }

        while (v17 < 0x1999999999999999);
        v20 = v17;
      }

      v15 = v20 * dbl_19548C660[v16];
      v50 = dbl_19548C660[a3 - v16];
      goto LABEL_81;
    }
  }

  if (a2 < 1)
  {
    LODWORD(v22) = 0;
    v23 = 0;
  }

  else
  {
LABEL_28:
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = a1[v22++];
      v23 = v24 + 10 * v23 - 48;
    }

    while (v22 < (a2 & 0x7FFFFFFFu) && v23 < 0x1999999999999999);
  }

  if (v22 == a2)
  {
    v25 = 0;
  }

  else
  {
    if (a1[v22] > 52)
    {
      ++v23;
    }

    v6 = (v7 - v22);
    v25 = 4;
  }

  v26 = 0;
  if (!(v23 >> 54))
  {
    v27 = v23;
    do
    {
      v23 = v27 << 10;
      v26 -= 10;
      v28 = v27 >> 44;
      v27 <<= 10;
    }

    while (!v28);
  }

  for (; (v23 & 0x8000000000000000) == 0; --v26)
  {
    v23 *= 2;
  }

  if (v6 <= -349)
  {
LABEL_42:
    *a4 = 0.0;
    return 1;
  }

  v30 = v25 << -v26;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  sub_1952FFA10(v6, &v52, &v51);
  v31 = v6 - v51;
  if (v6 != v51)
  {
    v32 = v31 - 1;
    if ((v31 - 1) >= 7)
    {
      abort();
    }

    v26 += dword_19548C718[v32];
    v23 = qword_19548C738[v32] * HIDWORD(v23) + ((qword_19548C738[v32] * v23) >> 32) + ((((qword_19548C738[v32] * v23) & 0x80000000uLL) + 0x80000000) >> 32);
    if (19 - a2 < v31)
    {
      v30 += 4;
    }
  }

  v33 = ((v52 * HIDWORD(v23)) >> 32) + HIDWORD(v52) * HIDWORD(v23) + ((HIDWORD(v52) * v23) >> 32) + ((((v52 * v23) >> 32) + (v52 * HIDWORD(v23)) + (HIDWORD(v52) * v23) + 0x80000000) >> 32);
  if (v30)
  {
    v34 = 9;
  }

  else
  {
    v34 = 8;
  }

  if (v33 >> 54)
  {
    v35 = v26 + v53 + 64;
    v36 = ((v52 * HIDWORD(v23)) >> 32) + HIDWORD(v52) * HIDWORD(v23) + ((HIDWORD(v52) * v23) >> 32) + ((((v52 * v23) >> 32) + (v52 * HIDWORD(v23)) + (HIDWORD(v52) * v23) + 0x80000000) >> 32);
  }

  else
  {
    v35 = v26 + v53 + 64;
    do
    {
      v36 = v33 << 10;
      v35 -= 10;
      v37 = v33 >> 44;
      v33 <<= 10;
    }

    while (!v37);
  }

  for (i = v34 + v30; (v36 & 0x8000000000000000) == 0; --v35)
  {
    v36 *= 2;
  }

  v39 = i << (v26 + v53 + 64 - v35);
  if ((v35 + 64) >= 0xFFFFFBCF)
  {
    v40 = v35 + 1138;
  }

  else
  {
    v40 = 0;
  }

  if (v35 > -1086)
  {
    v40 = 53;
  }

  v41 = (v39 >> (4 - v40)) + 9;
  v42 = v40 <= 3;
  if (v40 > 3)
  {
    v43 = 64 - v40;
  }

  else
  {
    v35 += 4 - v40;
    v36 >>= 4 - v40;
    v43 = 60;
  }

  if (v42)
  {
    v44 = v41;
  }

  else
  {
    v44 = v39;
  }

  v45 = v36 & ~(-1 << v43);
  v46 = 8 << (v43 - 1);
  v47 = v36 >> v43;
  if (8 * v45 < (v46 + v44))
  {
    v48 = v47;
  }

  else
  {
    v48 = v47 + 1;
  }

  v49 = COERCE_DOUBLE(sub_195302234(v48, v43 + v35));
  *a4 = v49;
  result = 1;
  if (v46 - v44 < (8 * v45) && 8 * v45 < (v46 + v44))
  {
    return v49 == INFINITY;
  }

  return result;
}

uint64_t sub_19530314C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  bzero(v16, 0x204uLL);
  bzero(v15, 0x204uLL);
  sub_1952FEA84(v16, a1, a2);
  sub_1952FEA1C(v15, a4);
  if ((a3 & 0x80000000) != 0)
  {
    v11 = -a3;
    v10 = v15;
  }

  else
  {
    v10 = v16;
    v11 = a3;
  }

  sub_1952FEBC8(v10, v11);
  if (a5 < 1)
  {
    v13 = -a5;
    v12 = v16;
  }

  else
  {
    v12 = v15;
    v13 = a5;
  }

  sub_1952FEFF0(v12, v13);
  return sub_1952FF7D4(v16, v15);
}

uint64_t sub_195303210(char *a1, uint64_t a2, uint64_t a3)
{
  v22 = 0.0;
  result = sub_195302CE4(a1, a2, a3, &v22);
  if (v22 >= 3.40282347e38)
  {
    if (v22 >= 3.40282357e38)
    {
      v8 = 2139095040;
    }

    else
    {
      v8 = 2139095039;
    }

    v7 = *&v8;
  }

  else
  {
    v7 = v22;
  }

  if (v22 == v7)
  {
    return result;
  }

  if (v22 == INFINITY)
  {
    v9 = -1;
    v10 = INFINITY;
    goto LABEL_19;
  }

  if ((*&v22 & 0x8000000000000000) == 0)
  {
    *&v10 = *&v22 + 1;
    if (v22 != 0.0)
    {
      v9 = -1;
      goto LABEL_19;
    }

    v11 = -0.0;
LABEL_20:
    v12 = v11;
    goto LABEL_25;
  }

  if (v22 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    *&v10 = *&v22 - 1;
    if (v22 == -INFINITY)
    {
      v11 = -INFINITY;
      goto LABEL_20;
    }
  }

  v9 = 1;
LABEL_19:
  *&v11 = v9 + *&v22;
  if (COERCE_DOUBLE(v9 + *&v22) < 3.40282347e38)
  {
    goto LABEL_20;
  }

  if (v11 >= 3.40282357e38)
  {
    v13 = 2139095040;
  }

  else
  {
    v13 = 2139095039;
  }

  v12 = *&v13;
LABEL_25:
  if (v10 < 3.40282347e38)
  {
    v14 = v10;
    if (result)
    {
      goto LABEL_42;
    }

LABEL_32:
    if (v10 == INFINITY)
    {
      goto LABEL_33;
    }

    if ((*&v10 & 0x8000000000000000) != 0)
    {
      v18 = 0.0;
      if (v10 == 0.0)
      {
        goto LABEL_41;
      }

      v17 = -1;
    }

    else
    {
      v17 = 1;
    }

    *&v18 = v17 + *&v10;
    if (COERCE_DOUBLE(v17 + *&v10) >= 3.40282347e38)
    {
      if (v18 < 3.40282357e38)
      {
        v16 = 2139095039;
        goto LABEL_34;
      }

LABEL_33:
      v16 = 2139095040;
LABEL_34:
      v14 = *&v16;
      goto LABEL_42;
    }

LABEL_41:
    v14 = v18;
    goto LABEL_42;
  }

  if (v10 >= 3.40282357e38)
  {
    v15 = 2139095040;
  }

  else
  {
    v15 = 2139095039;
  }

  v14 = *&v15;
  if ((result & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_42:
  if (v12 != v14)
  {
    if (v12 == 0.0)
    {
      v19 = 0x10000000000000;
      v20 = -202;
    }

    else
    {
      if ((LODWORD(v12) & 0x7F800000) != 0)
      {
        v21 = (2 * (LODWORD(v12) & 0x7FFFFF)) | 0x1000000;
      }

      else
      {
        v21 = 2 * (LODWORD(v12) & 0x7FFFFF);
      }

      v19 = v21 | 1u;
      if ((LODWORD(v12) & 0x7F800000) != 0)
      {
        v20 = (LODWORD(v12) >> 23) - 151;
      }

      else
      {
        v20 = -150;
      }
    }

    return sub_19530314C(a1, a2, a3, v19, v20);
  }

  return result;
}

void icu::SharedDateFormatSymbols::~SharedDateFormatSymbols(icu::SharedDateFormatSymbols *this)
{
  *this = &unk_1F093A0E8;
  icu::DateFormatSymbols::~DateFormatSymbols((this + 24));

  icu::SharedObject::~SharedObject(this);
}

{
  *this = &unk_1F093A0E8;
  icu::DateFormatSymbols::~DateFormatSymbols((this + 24));

  icu::SharedObject::~SharedObject(this);
}

{
  *this = &unk_1F093A0E8;
  icu::DateFormatSymbols::~DateFormatSymbols((this + 24));
  icu::SharedObject::~SharedObject(this);

  JUMPOUT(0x19A8B2600);
}

void *icu::LocaleCacheKey<icu::SharedDateFormatSymbols>::createObject(uint64_t a1, int a2, UErrorCode *a3, uint64_t a4, UErrorCode *a5)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  icu::Calendar::getCalendarTypeFromLocale((a1 + 16), v7, 0x100, a3, a5);
  if (*a3 <= 0)
  {
    operator new();
  }

  return 0;
}

icu::DateFormatSymbols *icu::DateFormatSymbols::createForLocale(icu::DateFormatSymbols *this, UErrorCode *a2, UErrorCode *a3)
{
  v5 = 0;
  sub_195303748(this, &v5, a2);
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void sub_195303748(uint64_t a1, UErrorCode *a2, UErrorCode *this)
{
  v12[28] = *MEMORY[0x1E69E9840];
  Instance = icu::UnifiedCache::getInstance(this, a2);
  if (*this <= 0)
  {
    v7 = Instance;
    v10 = 0;
    v11 = 0;
    v9 = &unk_1F093A1B0;
    icu::Locale::Locale(v12, a1);
    sub_1952C1AD0(v7, &v9, 0, a2, this);
    v9 = &unk_1F093A1B0;
    icu::Locale::~Locale(v8, v12);
    icu::CacheKeyBase::~CacheKeyBase(&v9);
  }
}

icu::DateFormatSymbols *icu::DateFormatSymbols::DateFormatSymbols(icu::DateFormatSymbols *this, const icu::Locale *a2, UErrorCode *a3)
{
  *this = &unk_1F093A110;
  *(this + 39) = &unk_1F0935D00;
  *(this + 160) = 2;
  icu::Locale::Locale((this + 544));
  *(this + 96) = &unk_1F0935D00;
  *(this + 388) = 2;
  icu::DateFormatSymbols::initializeData(this, a2, 0, a3, 0);
  return this;
}

void icu::DateFormatSymbols::initializeData(icu::DateFormatSymbols *this, const icu::Locale *a2, char *a3, UErrorCode *a4, int a5)
{
  v52 = *MEMORY[0x1E69E9840];
  v25 = 0;
  *(this + 1) = 0;
  v6 = this + 8;
  *(this + 4) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 40) = 0;
  *(this + 21) = 0;
  *(this + 44) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 25) = 0;
  *(this + 52) = 0;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 68) = 0;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 37) = 0;
  *(this + 76) = 0;
  icu::UnicodeString::setToBogus((this + 312));
  *(v6 + 46) = 0;
  *(v6 + 94) = 0;
  *(v6 + 48) = 0;
  *(v6 + 98) = 0;
  *(v6 + 50) = 0;
  *(v6 + 102) = 0;
  *(v6 + 52) = 0;
  *(v6 + 106) = 0;
  *(v6 + 54) = 0;
  *(v6 + 110) = 0;
  *(v6 + 56) = 0;
  *(v6 + 114) = 0;
  *(v6 + 58) = 0;
  *(v6 + 118) = 0;
  *(v6 + 60) = 0;
  *(v6 + 122) = 0;
  *(v6 + 62) = 0;
  *(v6 + 126) = 0;
  *(v6 + 107) = 0;
  *(v6 + 216) = 0;
  *(v6 + 109) = 0;
  *(v6 + 220) = 0;
  *(v6 + 111) = 0;
  *(v6 + 224) = 0;
  *(v6 + 113) = 0;
  *(v6 + 228) = 0;
  *(v6 + 115) = 0;
  *(v6 + 232) = 0;
  *(v6 + 117) = 0;
  *(v6 + 236) = 0;
  *(v6 + 212) = 0;
  *(v6 + 105) = 0;
  *(v6 + 824) = 0u;
  *(v6 + 66) = 0;
  *(v6 + 32) = 0u;
  icu::Locale::operator=((v6 + 536), a2);
  if (*a4 <= 0)
  {
    bzero(v34, 0x248uLL);
    v32 = &unk_1F093A168;
    v33 = 0;
    uhash_init(v34, uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a4);
    if (*a4 < 1)
    {
      v33 = v34;
      uhash_setKeyDeleter(v34, uprv_deleteUObject);
      v8 = *a4;
      v35 = 0;
      v7 = a2;
      if (v8 <= 0 && (uhash_init(v36, uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a4), *a4 < 1))
      {
        v35 = v36;
        uhash_setKeyDeleter(v36, uprv_deleteUObject);
        v18 = *a4;
        v37 = 0;
        if (v18 <= 0)
        {
          uhash_init(v38, uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a4);
          if (*a4 <= 0)
          {
            v37 = v38;
            uhash_setKeyDeleter(v38, uprv_deleteUObject);
          }
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v35 = 0;
      v37 = 0;
      v7 = a2;
    }

    v39 = 0;
    v40 = &v43;
    v41 = 8;
    v42 = 0;
    icu::UVector::UVector(v44, uprv_deleteUObject, uhash_compareUnicodeString, a4);
    v45 = &unk_1F0935D00;
    v46 = 2;
    v47 = &unk_1F0935D00;
    v48 = 2;
    v49 = 0;
    v50 = &unk_1F0935D00;
    v51 = 2;
    BaseName = icu::Locale::getBaseName(v7);
    v10 = ures_open(0, BaseName, a4);
    v11 = ures_getByKey(v10, "calendar", 0, a4);
    if (*a4 <= 0)
    {
      memset(v31, 0, sizeof(v31));
      v12 = "gregorian";
      v20 = v11;
      v19 = v10;
      if (a3 && *a3)
      {
        v12 = a3;
      }

      icu::UnicodeString::UnicodeString(v31, v12, -1);
      if (v31[1])
      {
        goto LABEL_37;
      }

      while (1)
      {
        v29 = 0u;
        v28 = 0u;
        v27 = 0u;
        v26 = &v27 + 5;
        LODWORD(v27) = 40;
        v30 = 0;
        icu::CharString::appendInvariantChars(&v26, v31, a4);
        v13 = *a4;
        if (*a4 <= 0)
        {
          v15 = v26;
          v16 = ures_getByKeyWithFallback(v20, v26, 0, a4);
          if (*a4 == U_MISSING_RESOURCE_ERROR)
          {
            if (!strcmp(v15, "gregorian"))
            {
              v14 = 1;
            }

            else
            {
              v24 = aGregorian_2;
              icu::UnicodeString::setTo(v31, 0, &v24, 9u);
              if (v49)
              {
                (*(*v49 + 8))(v49);
              }

              v49 = 0;
              *a4 = v13;
              v14 = 2;
            }
          }

          else
          {
            icu::UnicodeString::operator=(&v45, v31);
            icu::UnicodeString::setToBogus(&v47);
            icu::UVector::removeAllElements(v44);
            ures_getAllItemsWithFallback(v16, "", &v32, a4);
            if (*a4 > 0 || !strcmp(v15, "gregorian"))
            {
              v14 = 3;
            }

            else
            {
              icu::UnicodeString::operator=(v31, &v47);
              if (v31[1])
              {
                v23 = aGregorian_2;
                icu::UnicodeString::setTo(v31, 0, &v23, 9u);
                if (v49)
                {
                  (*(*v49 + 8))(v49);
                }

                v14 = 0;
                v49 = 0;
              }

              else
              {
                v14 = 0;
              }
            }
          }

          if (v16)
          {
            ures_close(v16);
          }
        }

        else
        {
          v14 = 1;
        }

        v17 = BYTE4(v27);
        if (BYTE4(v27))
        {
          free(v26);
        }

        if (v14 && v14 != 2)
        {
          break;
        }

        if (v31[1])
        {
          goto LABEL_37;
        }
      }

      if (v14 == 3)
      {
LABEL_37:
        v27 = 0u;
        v29 = 0u;
        v28 = 0u;
        v26 = &v27 + 5;
        LODWORD(v27) = 40;
        v30 = 0;
        operator new[]();
      }

      icu::UnicodeString::~UnicodeString(v17, v31);
      v10 = v19;
      v11 = v20;
    }

    if (v11)
    {
      ures_close(v11);
    }

    if (v10)
    {
      ures_close(v10);
    }

    sub_19530A3E4(&v32);
  }
}

icu::DateFormatSymbols *icu::DateFormatSymbols::DateFormatSymbols(icu::DateFormatSymbols *this, UErrorCode *a2)
{
  *this = &unk_1F093A110;
  *(this + 39) = &unk_1F0935D00;
  *(this + 160) = 2;
  v4 = icu::Locale::Locale((this + 544));
  *(this + 96) = &unk_1F0935D00;
  *(this + 388) = 2;
  Default = icu::Locale::getDefault(v4);
  icu::DateFormatSymbols::initializeData(this, Default, 0, a2, 1);
  return this;
}

icu::DateFormatSymbols *icu::DateFormatSymbols::DateFormatSymbols(icu::DateFormatSymbols *this, const icu::Locale *a2, char *a3, UErrorCode *a4)
{
  *this = &unk_1F093A110;
  *(this + 39) = &unk_1F0935D00;
  *(this + 160) = 2;
  icu::Locale::Locale((this + 544));
  *(this + 96) = &unk_1F0935D00;
  *(this + 388) = 2;
  icu::DateFormatSymbols::initializeData(this, a2, a3, a4, 0);
  return this;
}

icu::DateFormatSymbols *icu::DateFormatSymbols::DateFormatSymbols(icu::DateFormatSymbols *this, char *a2, UErrorCode *a3)
{
  *this = &unk_1F093A110;
  *(this + 39) = &unk_1F0935D00;
  *(this + 160) = 2;
  v6 = icu::Locale::Locale((this + 544));
  *(this + 96) = &unk_1F0935D00;
  *(this + 388) = 2;
  Default = icu::Locale::getDefault(v6);
  icu::DateFormatSymbols::initializeData(this, Default, a2, a3, 1);
  return this;
}

icu::DateFormatSymbols *icu::DateFormatSymbols::DateFormatSymbols(icu::DateFormatSymbols *this, const icu::DateFormatSymbols *a2)
{
  *this = &unk_1F093A110;
  *(this + 39) = &unk_1F0935D00;
  *(this + 160) = 2;
  icu::Locale::Locale((this + 544));
  *(this + 96) = &unk_1F0935D00;
  *(this + 388) = 2;
  icu::DateFormatSymbols::copyData(this, a2);
  return this;
}

__n128 icu::DateFormatSymbols::copyData(icu::DateFormatSymbols *this, const icu::DateFormatSymbols *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v13[0] = this + 956;
  v13[1] = this + 1113;
  v4 = a2 + 956;
  v5 = a2 + 1113;
  v16[0] = a2 + 956;
  v16[1] = a2 + 1113;
  icu::LocaleBased::getLocale(v16, 1, &v14, v17);
  v15[0] = v4;
  v15[1] = v5;
  icu::LocaleBased::getLocale(v15, 0, &v14, v16);
  icu::LocaleBased::setLocaleIDs(v13, v17, v16);
  icu::Locale::~Locale(v6, v16);
  icu::Locale::~Locale(v7, v17);
  icu::DateFormatSymbols::assignArray((this + 8), this + 2, *(a2 + 1), *(a2 + 4));
  icu::DateFormatSymbols::assignArray((this + 24), this + 4, *(a2 + 3), *(a2 + 8));
  icu::DateFormatSymbols::assignArray((this + 40), this + 6, *(a2 + 5), *(a2 + 12));
  icu::DateFormatSymbols::assignArray((this + 56), this + 8, *(a2 + 7), *(a2 + 16));
  icu::DateFormatSymbols::assignArray((this + 72), this + 10, *(a2 + 9), *(a2 + 20));
  icu::DateFormatSymbols::assignArray((this + 88), this + 12, *(a2 + 11), *(a2 + 24));
  icu::DateFormatSymbols::assignArray((this + 104), this + 14, *(a2 + 13), *(a2 + 28));
  icu::DateFormatSymbols::assignArray((this + 120), this + 16, *(a2 + 15), *(a2 + 32));
  icu::DateFormatSymbols::assignArray((this + 136), this + 18, *(a2 + 17), *(a2 + 36));
  icu::DateFormatSymbols::assignArray((this + 152), this + 20, *(a2 + 19), *(a2 + 40));
  icu::DateFormatSymbols::assignArray((this + 168), this + 22, *(a2 + 21), *(a2 + 44));
  icu::DateFormatSymbols::assignArray((this + 184), this + 24, *(a2 + 23), *(a2 + 48));
  icu::DateFormatSymbols::assignArray((this + 200), this + 26, *(a2 + 25), *(a2 + 52));
  icu::DateFormatSymbols::assignArray((this + 216), this + 28, *(a2 + 27), *(a2 + 56));
  icu::DateFormatSymbols::assignArray((this + 232), this + 30, *(a2 + 29), *(a2 + 60));
  icu::DateFormatSymbols::assignArray((this + 248), this + 32, *(a2 + 31), *(a2 + 64));
  icu::DateFormatSymbols::assignArray((this + 264), this + 34, *(a2 + 33), *(a2 + 68));
  icu::DateFormatSymbols::assignArray((this + 280), this + 36, *(a2 + 35), *(a2 + 72));
  icu::DateFormatSymbols::assignArray((this + 296), this + 38, *(a2 + 37), *(a2 + 76));
  icu::UnicodeString::fastCopyFrom(this + 39, a2 + 39);
  icu::DateFormatSymbols::assignArray((this + 376), this + 48, *(a2 + 47), *(a2 + 96));
  icu::DateFormatSymbols::assignArray((this + 392), this + 50, *(a2 + 49), *(a2 + 100));
  icu::DateFormatSymbols::assignArray((this + 408), this + 52, *(a2 + 51), *(a2 + 104));
  icu::DateFormatSymbols::assignArray((this + 424), this + 54, *(a2 + 53), *(a2 + 108));
  icu::DateFormatSymbols::assignArray((this + 440), this + 56, *(a2 + 55), *(a2 + 112));
  icu::DateFormatSymbols::assignArray((this + 456), this + 58, *(a2 + 57), *(a2 + 116));
  icu::DateFormatSymbols::assignArray((this + 880), this + 111, *(a2 + 110), *(a2 + 222));
  icu::DateFormatSymbols::assignArray((this + 896), this + 113, *(a2 + 112), *(a2 + 226));
  icu::DateFormatSymbols::assignArray((this + 864), this + 109, *(a2 + 108), *(a2 + 218));
  icu::DateFormatSymbols::assignArray((this + 928), this + 117, *(a2 + 116), *(a2 + 234));
  icu::DateFormatSymbols::assignArray((this + 944), this + 119, *(a2 + 118), *(a2 + 238));
  icu::DateFormatSymbols::assignArray((this + 912), this + 115, *(a2 + 114), *(a2 + 230));
  v8 = *(a2 + 59);
  if (v8)
  {
    icu::DateFormatSymbols::assignArray((this + 472), this + 60, v8, *(a2 + 120));
  }

  else
  {
    *(this + 59) = 0;
    *(this + 120) = 0;
  }

  v9 = *(a2 + 61);
  if (v9)
  {
    icu::DateFormatSymbols::assignArray((this + 488), this + 62, v9, *(a2 + 124));
  }

  else
  {
    *(this + 61) = 0;
    *(this + 124) = 0;
  }

  v10 = *(a2 + 63);
  if (v10)
  {
    icu::DateFormatSymbols::assignArray((this + 504), this + 64, v10, *(a2 + 128));
  }

  else
  {
    *(this + 63) = 0;
    *(this + 128) = 0;
  }

  v11 = *(a2 + 65);
  if (v11)
  {
    *(this + 67) = *(a2 + 67);
    icu::DateFormatSymbols::createZoneStrings(this, v11);
  }

  else
  {
    *(this + 65) = 0;
    *(this + 67) = 0;
  }

  icu::Locale::operator=((this + 544), a2 + 544);
  *(this + 66) = 0;
  icu::UnicodeString::fastCopyFrom(this + 96, a2 + 96);
  result = *(a2 + 844);
  *(this + 52) = *(a2 + 52);
  *(this + 844) = result;
  return result;
}

icu::UnicodeString *icu::DateFormatSymbols::assignArray(icu::UnicodeString *this, icu::UnicodeString **a2, UChar **a3, const icu::UnicodeString *a4)
{
  if (a3)
  {
    *a2 = a4;
    operator new[]();
  }

  *a2 = 0;
  *this = 0;
  return this;
}

void icu::DateFormatSymbols::createZoneStrings(icu::DateFormatSymbols *this, const icu::UnicodeString *const *a2)
{
  v3 = malloc_type_malloc(8 * *(this + 134), 0x2004093837F09uLL);
  *(this + 65) = v3;
  if (v3)
  {
    if (*(this + 134) >= 1)
    {
      operator new[]();
    }
  }
}

icu::Locale *icu::DateFormatSymbols::getLocale@<X0>(uint64_t a1@<X0>, int a2@<W1>, int *a3@<X2>, icu::Locale *a4@<X8>)
{
  v5[0] = (a1 + 956);
  v5[1] = (a1 + 1113);
  return icu::LocaleBased::getLocale(v5, a2, a3, a4);
}

icu::DateFormatSymbols *icu::DateFormatSymbols::operator=(icu::DateFormatSymbols *this, const icu::DateFormatSymbols *a2)
{
  if (this != a2)
  {
    icu::DateFormatSymbols::dispose(this);
    icu::DateFormatSymbols::copyData(this, a2);
  }

  return this;
}

void icu::DateFormatSymbols::dispose(icu::DateFormatSymbols *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + (v4 << 6));
      v6 = (v5 - 64);
      v7 = -64 * v4;
      do
      {
        v6 = (icu::UnicodeString::~UnicodeString(v5, v6) - 64);
        v7 += 64;
      }

      while (v7);
    }

    MEMORY[0x19A8B25E0](v3, 0x1093C808E78F3FDLL);
  }

  v8 = *(this + 3);
  if (v8)
  {
    v9 = v8 - 16;
    v10 = *(v8 - 8);
    if (v10)
    {
      v11 = (v8 + (v10 << 6));
      v12 = (v11 - 64);
      v13 = -64 * v10;
      do
      {
        v12 = (icu::UnicodeString::~UnicodeString(v11, v12) - 64);
        v13 += 64;
      }

      while (v13);
    }

    MEMORY[0x19A8B25E0](v9, 0x1093C808E78F3FDLL);
  }

  v14 = *(this + 5);
  if (v14)
  {
    v15 = v14 - 16;
    v16 = *(v14 - 8);
    if (v16)
    {
      v17 = (v14 + (v16 << 6));
      v18 = (v17 - 64);
      v19 = -64 * v16;
      do
      {
        v18 = (icu::UnicodeString::~UnicodeString(v17, v18) - 64);
        v19 += 64;
      }

      while (v19);
    }

    MEMORY[0x19A8B25E0](v15, 0x1093C808E78F3FDLL);
  }

  v20 = *(this + 7);
  if (v20)
  {
    v21 = v20 - 16;
    v22 = *(v20 - 8);
    if (v22)
    {
      v23 = (v20 + (v22 << 6));
      v24 = (v23 - 64);
      v25 = -64 * v22;
      do
      {
        v24 = (icu::UnicodeString::~UnicodeString(v23, v24) - 64);
        v25 += 64;
      }

      while (v25);
    }

    MEMORY[0x19A8B25E0](v21, 0x1093C808E78F3FDLL);
  }

  v26 = *(this + 9);
  if (v26)
  {
    v27 = v26 - 16;
    v28 = *(v26 - 8);
    if (v28)
    {
      v29 = (v26 + (v28 << 6));
      v30 = (v29 - 64);
      v31 = -64 * v28;
      do
      {
        v30 = (icu::UnicodeString::~UnicodeString(v29, v30) - 64);
        v31 += 64;
      }

      while (v31);
    }

    MEMORY[0x19A8B25E0](v27, 0x1093C808E78F3FDLL);
  }

  v32 = *(this + 11);
  if (v32)
  {
    v33 = v32 - 16;
    v34 = *(v32 - 8);
    if (v34)
    {
      v35 = (v32 + (v34 << 6));
      v36 = (v35 - 64);
      v37 = -64 * v34;
      do
      {
        v36 = (icu::UnicodeString::~UnicodeString(v35, v36) - 64);
        v37 += 64;
      }

      while (v37);
    }

    MEMORY[0x19A8B25E0](v33, 0x1093C808E78F3FDLL);
  }

  v38 = *(this + 13);
  if (v38)
  {
    v39 = v38 - 16;
    v40 = *(v38 - 8);
    if (v40)
    {
      v41 = (v38 + (v40 << 6));
      v42 = (v41 - 64);
      v43 = -64 * v40;
      do
      {
        v42 = (icu::UnicodeString::~UnicodeString(v41, v42) - 64);
        v43 += 64;
      }

      while (v43);
    }

    MEMORY[0x19A8B25E0](v39, 0x1093C808E78F3FDLL);
  }

  v44 = *(this + 15);
  if (v44)
  {
    v45 = v44 - 16;
    v46 = *(v44 - 8);
    if (v46)
    {
      v47 = (v44 + (v46 << 6));
      v48 = (v47 - 64);
      v49 = -64 * v46;
      do
      {
        v48 = (icu::UnicodeString::~UnicodeString(v47, v48) - 64);
        v49 += 64;
      }

      while (v49);
    }

    MEMORY[0x19A8B25E0](v45, 0x1093C808E78F3FDLL);
  }

  v50 = *(this + 17);
  if (v50)
  {
    v51 = v50 - 16;
    v52 = *(v50 - 8);
    if (v52)
    {
      v53 = (v50 + (v52 << 6));
      v54 = (v53 - 64);
      v55 = -64 * v52;
      do
      {
        v54 = (icu::UnicodeString::~UnicodeString(v53, v54) - 64);
        v55 += 64;
      }

      while (v55);
    }

    MEMORY[0x19A8B25E0](v51, 0x1093C808E78F3FDLL);
  }

  v56 = *(this + 19);
  if (v56)
  {
    v57 = v56 - 16;
    v58 = *(v56 - 8);
    if (v58)
    {
      v59 = (v56 + (v58 << 6));
      v60 = (v59 - 64);
      v61 = -64 * v58;
      do
      {
        v60 = (icu::UnicodeString::~UnicodeString(v59, v60) - 64);
        v61 += 64;
      }

      while (v61);
    }

    MEMORY[0x19A8B25E0](v57, 0x1093C808E78F3FDLL);
  }

  v62 = *(this + 21);
  if (v62)
  {
    v63 = v62 - 16;
    v64 = *(v62 - 8);
    if (v64)
    {
      v65 = (v62 + (v64 << 6));
      v66 = (v65 - 64);
      v67 = -64 * v64;
      do
      {
        v66 = (icu::UnicodeString::~UnicodeString(v65, v66) - 64);
        v67 += 64;
      }

      while (v67);
    }

    MEMORY[0x19A8B25E0](v63, 0x1093C808E78F3FDLL);
  }

  v68 = *(this + 23);
  if (v68)
  {
    v69 = v68 - 16;
    v70 = *(v68 - 8);
    if (v70)
    {
      v71 = (v68 + (v70 << 6));
      v72 = (v71 - 64);
      v73 = -64 * v70;
      do
      {
        v72 = (icu::UnicodeString::~UnicodeString(v71, v72) - 64);
        v73 += 64;
      }

      while (v73);
    }

    MEMORY[0x19A8B25E0](v69, 0x1093C808E78F3FDLL);
  }

  v74 = *(this + 25);
  if (v74)
  {
    v75 = v74 - 16;
    v76 = *(v74 - 8);
    if (v76)
    {
      v77 = (v74 + (v76 << 6));
      v78 = (v77 - 64);
      v79 = -64 * v76;
      do
      {
        v78 = (icu::UnicodeString::~UnicodeString(v77, v78) - 64);
        v79 += 64;
      }

      while (v79);
    }

    MEMORY[0x19A8B25E0](v75, 0x1093C808E78F3FDLL);
  }

  v80 = *(this + 27);
  if (v80)
  {
    v81 = v80 - 16;
    v82 = *(v80 - 8);
    if (v82)
    {
      v83 = (v80 + (v82 << 6));
      v84 = (v83 - 64);
      v85 = -64 * v82;
      do
      {
        v84 = (icu::UnicodeString::~UnicodeString(v83, v84) - 64);
        v85 += 64;
      }

      while (v85);
    }

    MEMORY[0x19A8B25E0](v81, 0x1093C808E78F3FDLL);
  }

  v86 = *(this + 29);
  if (v86)
  {
    v87 = v86 - 16;
    v88 = *(v86 - 8);
    if (v88)
    {
      v89 = (v86 + (v88 << 6));
      v90 = (v89 - 64);
      v91 = -64 * v88;
      do
      {
        v90 = (icu::UnicodeString::~UnicodeString(v89, v90) - 64);
        v91 += 64;
      }

      while (v91);
    }

    MEMORY[0x19A8B25E0](v87, 0x1093C808E78F3FDLL);
  }

  v92 = *(this + 31);
  if (v92)
  {
    v93 = v92 - 16;
    v94 = *(v92 - 8);
    if (v94)
    {
      v95 = (v92 + (v94 << 6));
      v96 = (v95 - 64);
      v97 = -64 * v94;
      do
      {
        v96 = (icu::UnicodeString::~UnicodeString(v95, v96) - 64);
        v97 += 64;
      }

      while (v97);
    }

    MEMORY[0x19A8B25E0](v93, 0x1093C808E78F3FDLL);
  }

  v98 = *(this + 33);
  if (v98)
  {
    v99 = v98 - 16;
    v100 = *(v98 - 8);
    if (v100)
    {
      v101 = (v98 + (v100 << 6));
      v102 = (v101 - 64);
      v103 = -64 * v100;
      do
      {
        v102 = (icu::UnicodeString::~UnicodeString(v101, v102) - 64);
        v103 += 64;
      }

      while (v103);
    }

    MEMORY[0x19A8B25E0](v99, 0x1093C808E78F3FDLL);
  }

  v104 = *(this + 35);
  if (v104)
  {
    v105 = v104 - 16;
    v106 = *(v104 - 8);
    if (v106)
    {
      v107 = (v104 + (v106 << 6));
      v108 = (v107 - 64);
      v109 = -64 * v106;
      do
      {
        v108 = (icu::UnicodeString::~UnicodeString(v107, v108) - 64);
        v109 += 64;
      }

      while (v109);
    }

    MEMORY[0x19A8B25E0](v105, 0x1093C808E78F3FDLL);
  }

  v110 = *(this + 37);
  if (v110)
  {
    v111 = v110 - 16;
    v112 = *(v110 - 8);
    if (v112)
    {
      v113 = (v110 + (v112 << 6));
      v114 = (v113 - 64);
      v115 = -64 * v112;
      do
      {
        v114 = (icu::UnicodeString::~UnicodeString(v113, v114) - 64);
        v115 += 64;
      }

      while (v115);
    }

    MEMORY[0x19A8B25E0](v111, 0x1093C808E78F3FDLL);
  }

  v116 = *(this + 47);
  if (v116)
  {
    v117 = v116 - 16;
    v118 = *(v116 - 8);
    if (v118)
    {
      v119 = (v116 + (v118 << 6));
      v120 = (v119 - 64);
      v121 = -64 * v118;
      do
      {
        v120 = (icu::UnicodeString::~UnicodeString(v119, v120) - 64);
        v121 += 64;
      }

      while (v121);
    }

    MEMORY[0x19A8B25E0](v117, 0x1093C808E78F3FDLL);
  }

  v122 = *(this + 49);
  if (v122)
  {
    v123 = v122 - 16;
    v124 = *(v122 - 8);
    if (v124)
    {
      v125 = (v122 + (v124 << 6));
      v126 = (v125 - 64);
      v127 = -64 * v124;
      do
      {
        v126 = (icu::UnicodeString::~UnicodeString(v125, v126) - 64);
        v127 += 64;
      }

      while (v127);
    }

    MEMORY[0x19A8B25E0](v123, 0x1093C808E78F3FDLL);
  }

  v128 = *(this + 51);
  if (v128)
  {
    v129 = v128 - 16;
    v130 = *(v128 - 8);
    if (v130)
    {
      v131 = (v128 + (v130 << 6));
      v132 = (v131 - 64);
      v133 = -64 * v130;
      do
      {
        v132 = (icu::UnicodeString::~UnicodeString(v131, v132) - 64);
        v133 += 64;
      }

      while (v133);
    }

    MEMORY[0x19A8B25E0](v129, 0x1093C808E78F3FDLL);
  }

  v134 = *(this + 53);
  if (v134)
  {
    v135 = v134 - 16;
    v136 = *(v134 - 8);
    if (v136)
    {
      v137 = (v134 + (v136 << 6));
      v138 = (v137 - 64);
      v139 = -64 * v136;
      do
      {
        v138 = (icu::UnicodeString::~UnicodeString(v137, v138) - 64);
        v139 += 64;
      }

      while (v139);
    }

    MEMORY[0x19A8B25E0](v135, 0x1093C808E78F3FDLL);
  }

  v140 = *(this + 55);
  if (v140)
  {
    v141 = v140 - 16;
    v142 = *(v140 - 8);
    if (v142)
    {
      v143 = (v140 + (v142 << 6));
      v144 = (v143 - 64);
      v145 = -64 * v142;
      do
      {
        v144 = (icu::UnicodeString::~UnicodeString(v143, v144) - 64);
        v145 += 64;
      }

      while (v145);
    }

    MEMORY[0x19A8B25E0](v141, 0x1093C808E78F3FDLL);
  }

  v146 = *(this + 57);
  if (v146)
  {
    v147 = v146 - 16;
    v148 = *(v146 - 8);
    if (v148)
    {
      v149 = (v146 + (v148 << 6));
      v150 = (v149 - 64);
      v151 = -64 * v148;
      do
      {
        v150 = (icu::UnicodeString::~UnicodeString(v149, v150) - 64);
        v151 += 64;
      }

      while (v151);
    }

    MEMORY[0x19A8B25E0](v147, 0x1093C808E78F3FDLL);
  }

  v152 = *(this + 59);
  if (v152)
  {
    v153 = v152 - 16;
    v154 = *(v152 - 8);
    if (v154)
    {
      v155 = (v152 + (v154 << 6));
      v156 = (v155 - 64);
      v157 = -64 * v154;
      do
      {
        v156 = (icu::UnicodeString::~UnicodeString(v155, v156) - 64);
        v157 += 64;
      }

      while (v157);
    }

    MEMORY[0x19A8B25E0](v153, 0x1093C808E78F3FDLL);
  }

  v158 = *(this + 61);
  if (v158)
  {
    v159 = v158 - 16;
    v160 = *(v158 - 8);
    if (v160)
    {
      v161 = (v158 + (v160 << 6));
      v162 = (v161 - 64);
      v163 = -64 * v160;
      do
      {
        v162 = (icu::UnicodeString::~UnicodeString(v161, v162) - 64);
        v163 += 64;
      }

      while (v163);
    }

    MEMORY[0x19A8B25E0](v159, 0x1093C808E78F3FDLL);
  }

  v164 = *(this + 63);
  if (v164)
  {
    v165 = v164 - 16;
    v166 = *(v164 - 8);
    if (v166)
    {
      v167 = (v164 + (v166 << 6));
      v168 = (v167 - 64);
      v169 = -64 * v166;
      do
      {
        v168 = (icu::UnicodeString::~UnicodeString(v167, v168) - 64);
        v169 += 64;
      }

      while (v169);
    }

    MEMORY[0x19A8B25E0](v165, 0x1093C808E78F3FDLL);
  }

  v170 = *(this + 108);
  if (v170)
  {
    v171 = v170 - 16;
    v172 = *(v170 - 8);
    if (v172)
    {
      v173 = (v170 + (v172 << 6));
      v174 = (v173 - 64);
      v175 = -64 * v172;
      do
      {
        v174 = (icu::UnicodeString::~UnicodeString(v173, v174) - 64);
        v175 += 64;
      }

      while (v175);
    }

    MEMORY[0x19A8B25E0](v171, 0x1093C808E78F3FDLL);
  }

  v176 = *(this + 110);
  if (v176)
  {
    v177 = v176 - 16;
    v178 = *(v176 - 8);
    if (v178)
    {
      v179 = (v176 + (v178 << 6));
      v180 = (v179 - 64);
      v181 = -64 * v178;
      do
      {
        v180 = (icu::UnicodeString::~UnicodeString(v179, v180) - 64);
        v181 += 64;
      }

      while (v181);
    }

    MEMORY[0x19A8B25E0](v177, 0x1093C808E78F3FDLL);
  }

  v182 = *(this + 112);
  if (v182)
  {
    v183 = v182 - 16;
    v184 = *(v182 - 8);
    if (v184)
    {
      v185 = (v182 + (v184 << 6));
      v186 = (v185 - 64);
      v187 = -64 * v184;
      do
      {
        v186 = (icu::UnicodeString::~UnicodeString(v185, v186) - 64);
        v187 += 64;
      }

      while (v187);
    }

    MEMORY[0x19A8B25E0](v183, 0x1093C808E78F3FDLL);
  }

  v188 = *(this + 114);
  if (v188)
  {
    v189 = v188 - 16;
    v190 = *(v188 - 8);
    if (v190)
    {
      v191 = (v188 + (v190 << 6));
      v192 = (v191 - 64);
      v193 = -64 * v190;
      do
      {
        v192 = (icu::UnicodeString::~UnicodeString(v191, v192) - 64);
        v193 += 64;
      }

      while (v193);
    }

    MEMORY[0x19A8B25E0](v189, 0x1093C808E78F3FDLL);
  }

  v194 = *(this + 116);
  if (v194)
  {
    v195 = v194 - 16;
    v196 = *(v194 - 8);
    if (v196)
    {
      v197 = (v194 + (v196 << 6));
      v198 = (v197 - 64);
      v199 = -64 * v196;
      do
      {
        v198 = (icu::UnicodeString::~UnicodeString(v197, v198) - 64);
        v199 += 64;
      }

      while (v199);
    }

    MEMORY[0x19A8B25E0](v195, 0x1093C808E78F3FDLL);
  }

  v200 = *(this + 118);
  if (v200)
  {
    v201 = v200 - 16;
    v202 = *(v200 - 8);
    if (v202)
    {
      v203 = (v200 + (v202 << 6));
      v204 = (v203 - 64);
      v205 = -64 * v202;
      do
      {
        v204 = (icu::UnicodeString::~UnicodeString(v203, v204) - 64);
        v205 += 64;
      }

      while (v205);
    }

    MEMORY[0x19A8B25E0](v201, 0x1093C808E78F3FDLL);
  }

  icu::DateFormatSymbols::disposeZoneStrings(this);
}

void icu::DateFormatSymbols::~DateFormatSymbols(icu::DateFormatSymbols *this)
{
  icu::DateFormatSymbols::dispose(this);
  icu::UnicodeString::~UnicodeString(v2, (this + 768));
  icu::Locale::~Locale(v3, (this + 544));
  icu::UnicodeString::~UnicodeString(v4, (this + 312));

  icu::UObject::~UObject(this);
}

{
  icu::DateFormatSymbols::~DateFormatSymbols(this);

  JUMPOUT(0x19A8B2600);
}

void icu::DateFormatSymbols::disposeZoneStrings(icu::DateFormatSymbols *this)
{
  v2 = (this + 520);
  v3 = *(this + 65);
  if (v3)
  {
    v4 = *(this + 134);
    if (v4 >= 1)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(*v2 + i);
        if (v6)
        {
          v7 = *(v6 - 8);
          if (v7)
          {
            v8 = (v6 + (v7 << 6) - 64);
            v9 = -64 * v7;
            do
            {
              v8 = (icu::UnicodeString::~UnicodeString(v7, v8) - 64);
              v9 += 64;
            }

            while (v9);
          }

          MEMORY[0x19A8B25E0](v6 - 16, 0x1093C808E78F3FDLL);
          v4 = *(this + 134);
        }
      }

      v3 = *v2;
    }

    free(v3);
  }

  v10 = *(this + 66);
  if (v10)
  {
    v11 = *(this + 134);
    if (v11 >= 1)
    {
      for (j = 0; j < v11; ++j)
      {
        v13 = *(*(this + 66) + 8 * j);
        if (v13)
        {
          v14 = *(v13 - 8);
          if (v14)
          {
            v15 = (v13 + (v14 << 6) - 64);
            v16 = -64 * v14;
            do
            {
              v15 = (icu::UnicodeString::~UnicodeString(v14, v15) - 64);
              v16 += 64;
            }

            while (v16);
          }

          MEMORY[0x19A8B25E0](v13 - 16, 0x1093C808E78F3FDLL);
          v11 = *(this + 134);
        }
      }

      v10 = *(this + 66);
    }

    free(v10);
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

BOOL icu::DateFormatSymbols::arrayCompare(icu::DateFormatSymbols *this, const icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  result = 1;
  if (this != a2)
  {
    v5 = a3;
    if (a3 >= 1)
    {
      v6 = a2;
      v7 = a3 << 6;
      do
      {
        v8 = *(this + v7 - 56);
        if (v8)
        {
          if ((*(v6 + v7 - 56) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if ((v8 & 0x8000) != 0)
          {
            v9 = *(this + v7 - 52);
          }

          else
          {
            v9 = v8 >> 5;
          }

          result = 0;
          v10 = *(v6 + v7 - 56);
          v11 = *(v6 + v7 - 52);
          if ((v10 & 0x8000u) == 0)
          {
            v11 = v10 >> 5;
          }

          if ((v10 & 1) != 0 || v9 != v11)
          {
            return result;
          }

          v12 = (v10 & 2) != 0 ? v6 + v7 - 54 : *(v6 + v7 - 40);
          result = icu::UnicodeString::doEquals(this + v7 - 64, v12, v9);
          if (!result)
          {
            return result;
          }
        }

        v6 = (v6 - 64);
        this = (this - 64);
        v13 = __OFSUB__(v5--, 1);
      }

      while (!((v5 < 0) ^ v13 | (v5 == 0)));
      return 1;
    }
  }

  return result;
}

BOOL icu::DateFormatSymbols::operator==(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || *(a1 + 32) != *(a2 + 32) || *(a1 + 48) != *(a2 + 48) || *(a1 + 64) != *(a2 + 64) || *(a1 + 80) != *(a2 + 80) || *(a1 + 96) != *(a2 + 96) || *(a1 + 112) != *(a2 + 112) || *(a1 + 128) != *(a2 + 128) || *(a1 + 144) != *(a2 + 144) || *(a1 + 160) != *(a2 + 160) || *(a1 + 176) != *(a2 + 176) || *(a1 + 192) != *(a2 + 192) || *(a1 + 208) != *(a2 + 208))
  {
    return 0;
  }

  if (*(a1 + 224) != *(a2 + 224) || *(a1 + 240) != *(a2 + 240) || *(a1 + 256) != *(a2 + 256) || *(a1 + 272) != *(a2 + 272) || *(a1 + 288) != *(a2 + 288) || *(a1 + 304) != *(a2 + 304) || *(a1 + 384) != *(a2 + 384) || *(a1 + 400) != *(a2 + 400) || *(a1 + 416) != *(a2 + 416) || *(a1 + 432) != *(a2 + 432) || *(a1 + 448) != *(a2 + 448) || *(a1 + 464) != *(a2 + 464) || *(a1 + 480) != *(a2 + 480) || *(a1 + 496) != *(a2 + 496) || *(a1 + 512) != *(a2 + 512) || *(a1 + 872) != *(a2 + 872) || *(a1 + 888) != *(a2 + 888) || *(a1 + 904) != *(a2 + 904) || *(a1 + 920) != *(a2 + 920) || *(a1 + 936) != *(a2 + 936) || *(a1 + 952) != *(a2 + 952))
  {
    return 0;
  }

  v3 = *(a1 + 832) == *(a2 + 832) && *(a1 + 840) == *(a2 + 840);
  v4 = v3 && *(a1 + 848) == *(a2 + 848);
  if (!v4 || *(a1 + 856) != *(a2 + 856))
  {
    return 0;
  }

  result = icu::DateFormatSymbols::arrayCompare(*(a1 + 8), *(a2 + 8), v2);
  if (result)
  {
    result = icu::DateFormatSymbols::arrayCompare(*(a1 + 24), *(a2 + 24), *(a1 + 32));
    if (result)
    {
      result = icu::DateFormatSymbols::arrayCompare(*(a1 + 40), *(a2 + 40), *(a1 + 48));
      if (result)
      {
        result = icu::DateFormatSymbols::arrayCompare(*(a1 + 56), *(a2 + 56), *(a1 + 64));
        if (result)
        {
          result = icu::DateFormatSymbols::arrayCompare(*(a1 + 72), *(a2 + 72), *(a1 + 80));
          if (result)
          {
            result = icu::DateFormatSymbols::arrayCompare(*(a1 + 88), *(a2 + 88), *(a1 + 96));
            if (result)
            {
              result = icu::DateFormatSymbols::arrayCompare(*(a1 + 104), *(a2 + 104), *(a1 + 112));
              if (result)
              {
                result = icu::DateFormatSymbols::arrayCompare(*(a1 + 120), *(a2 + 120), *(a1 + 128));
                if (result)
                {
                  result = icu::DateFormatSymbols::arrayCompare(*(a1 + 136), *(a2 + 136), *(a1 + 144));
                  if (result)
                  {
                    result = icu::DateFormatSymbols::arrayCompare(*(a1 + 152), *(a2 + 152), *(a1 + 160));
                    if (result)
                    {
                      result = icu::DateFormatSymbols::arrayCompare(*(a1 + 168), *(a2 + 168), *(a1 + 176));
                      if (result)
                      {
                        result = icu::DateFormatSymbols::arrayCompare(*(a1 + 184), *(a2 + 184), *(a1 + 192));
                        if (result)
                        {
                          result = icu::DateFormatSymbols::arrayCompare(*(a1 + 200), *(a2 + 200), *(a1 + 208));
                          if (result)
                          {
                            result = icu::DateFormatSymbols::arrayCompare(*(a1 + 216), *(a2 + 216), *(a1 + 224));
                            if (result)
                            {
                              result = icu::DateFormatSymbols::arrayCompare(*(a1 + 232), *(a2 + 232), *(a1 + 240));
                              if (result)
                              {
                                result = icu::DateFormatSymbols::arrayCompare(*(a1 + 248), *(a2 + 248), *(a1 + 256));
                                if (result)
                                {
                                  result = icu::DateFormatSymbols::arrayCompare(*(a1 + 264), *(a2 + 264), *(a1 + 272));
                                  if (result)
                                  {
                                    result = icu::DateFormatSymbols::arrayCompare(*(a1 + 280), *(a2 + 280), *(a1 + 288));
                                    if (result)
                                    {
                                      result = icu::DateFormatSymbols::arrayCompare(*(a1 + 296), *(a2 + 296), *(a1 + 304));
                                      if (result)
                                      {
                                        result = sub_195213DE4(a1 + 312, a2 + 312);
                                        if (result)
                                        {
                                          result = icu::DateFormatSymbols::arrayCompare(*(a1 + 376), *(a2 + 376), *(a1 + 384));
                                          if (result)
                                          {
                                            result = icu::DateFormatSymbols::arrayCompare(*(a1 + 392), *(a2 + 392), *(a1 + 400));
                                            if (result)
                                            {
                                              result = icu::DateFormatSymbols::arrayCompare(*(a1 + 408), *(a2 + 408), *(a1 + 416));
                                              if (result)
                                              {
                                                result = icu::DateFormatSymbols::arrayCompare(*(a1 + 424), *(a2 + 424), *(a1 + 432));
                                                if (result)
                                                {
                                                  result = icu::DateFormatSymbols::arrayCompare(*(a1 + 440), *(a2 + 440), *(a1 + 448));
                                                  if (result)
                                                  {
                                                    result = icu::DateFormatSymbols::arrayCompare(*(a1 + 456), *(a2 + 456), *(a1 + 464));
                                                    if (result)
                                                    {
                                                      result = icu::DateFormatSymbols::arrayCompare(*(a1 + 472), *(a2 + 472), *(a1 + 480));
                                                      if (result)
                                                      {
                                                        result = icu::DateFormatSymbols::arrayCompare(*(a1 + 488), *(a2 + 488), *(a1 + 496));
                                                        if (result)
                                                        {
                                                          result = icu::DateFormatSymbols::arrayCompare(*(a1 + 504), *(a2 + 504), *(a1 + 512));
                                                          if (result)
                                                          {
                                                            result = icu::DateFormatSymbols::arrayCompare(*(a1 + 864), *(a2 + 864), *(a1 + 872));
                                                            if (result)
                                                            {
                                                              result = icu::DateFormatSymbols::arrayCompare(*(a1 + 880), *(a2 + 880), *(a1 + 888));
                                                              if (result)
                                                              {
                                                                result = icu::DateFormatSymbols::arrayCompare(*(a1 + 896), *(a2 + 896), *(a1 + 904));
                                                                if (result)
                                                                {
                                                                  result = icu::DateFormatSymbols::arrayCompare(*(a1 + 912), *(a2 + 912), *(a1 + 920));
                                                                  if (result)
                                                                  {
                                                                    result = icu::DateFormatSymbols::arrayCompare(*(a1 + 928), *(a2 + 928), *(a1 + 936));
                                                                    if (result)
                                                                    {
                                                                      result = icu::DateFormatSymbols::arrayCompare(*(a1 + 944), *(a2 + 944), *(a1 + 936));
                                                                      if (result)
                                                                      {
                                                                        v7 = *(a1 + 520);
                                                                        v8 = *(a2 + 520);
                                                                        if (!(v7 | v8))
                                                                        {
                                                                          return icu::Locale::operator==(a1 + 544, a2 + 544);
                                                                        }

                                                                        if (!v7)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        if (!v8)
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        v9 = *(a1 + 536);
                                                                        if (v9 != *(a2 + 536) || *(a1 + 540) != *(a2 + 540))
                                                                        {
                                                                          return 0;
                                                                        }

                                                                        if (v9 < 1)
                                                                        {
                                                                          return 1;
                                                                        }

                                                                        v10 = 0;
                                                                        do
                                                                        {
                                                                          v11 = icu::DateFormatSymbols::arrayCompare(*(*(a1 + 520) + 8 * v10), *(*(a2 + 520) + 8 * v10), *(a1 + 540));
                                                                          result = v11;
                                                                        }

                                                                        while (++v10 < *(a1 + 536) && v11);
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t icu::DateFormatSymbols::getMonths(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (a3 == 1)
  {
    if (a4 <= 3)
    {
      v4 = &unk_19548CC08;
      v5 = &unk_19548CBE8;
      goto LABEL_7;
    }
  }

  else if (!a3 && a4 < 4)
  {
    v4 = "H";
    v5 = "P";
LABEL_7:
    v6 = *&v4[8 * a4];
    *a2 = *(a1 + *&v5[8 * a4]);
    return *(a1 + v6);
  }

  return 0;
}

uint64_t icu::DateFormatSymbols::getWeekdays(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (a3 == 1)
  {
    if (a4 <= 3)
    {
      v4 = &unk_19548CC88;
      v5 = &unk_19548CC68;
      goto LABEL_7;
    }
  }

  else if (!a3 && a4 < 4)
  {
    v4 = &unk_19548CC48;
    v5 = &unk_19548CC28;
LABEL_7:
    v6 = v4[a4];
    *a2 = *(a1 + v5[a4]);
    return *(a1 + v6);
  }

  return 0;
}

uint64_t icu::DateFormatSymbols::getQuarters(uint64_t a1, _DWORD *a2, int a3, int a4)
{
  if (a3 == 1)
  {
    if (a4 <= 3)
    {
      v4 = &unk_19548CD08;
      v5 = &unk_19548CCE8;
      goto LABEL_7;
    }
  }

  else if (!a3 && a4 < 4)
  {
    v4 = &unk_19548CCC8;
    v5 = &unk_19548CCA8;
LABEL_7:
    v6 = v4[a4];
    *a2 = *(a1 + v5[a4]);
    return *(a1 + v6);
  }

  return 0;
}

UChar **icu::DateFormatSymbols::setYearNames(UChar **result, UChar **a2, int a3, int a4, int a5)
{
  if (!(a5 | a4))
  {
    v5 = result[61];
    if (v5)
    {
      v6 = v5 - 8;
      v7 = *(v5 - 1);
      if (v7)
      {
        v8 = &v5[32 * v7];
        v9 = (v8 - 32);
        v10 = -64 * v7;
        do
        {
          v9 = (icu::UnicodeString::~UnicodeString(v8, v9) - 64);
          v10 += 64;
        }

        while (v10);
      }

      MEMORY[0x19A8B25E0](v6, 0x1093C808E78F3FDLL);
    }

    operator new[]();
  }

  return result;
}

UChar **icu::DateFormatSymbols::setZodiacNames(UChar **result, UChar **a2, int a3, int a4, int a5)
{
  if (!(a5 | a4))
  {
    v5 = result[63];
    if (v5)
    {
      v6 = v5 - 8;
      v7 = *(v5 - 1);
      if (v7)
      {
        v8 = &v5[32 * v7];
        v9 = (v8 - 32);
        v10 = -64 * v7;
        do
        {
          v9 = (icu::UnicodeString::~UnicodeString(v8, v9) - 64);
          v10 += 64;
        }

        while (v10);
      }

      MEMORY[0x19A8B25E0](v6, 0x1093C808E78F3FDLL);
    }

    operator new[]();
  }

  return result;
}

void icu::DateFormatSymbols::setEras(icu::DateFormatSymbols *this, UChar **a2, int a3)
{
  v3 = *(this + 1);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + (v5 << 6));
      v7 = (v6 - 64);
      v8 = -64 * v5;
      do
      {
        v7 = (icu::UnicodeString::~UnicodeString(v6, v7) - 64);
        v8 += 64;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v4, 0x1093C808E78F3FDLL);
  }

  operator new[]();
}

void icu::DateFormatSymbols::setEraNames(icu::DateFormatSymbols *this, UChar **a2, int a3)
{
  v3 = *(this + 3);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + (v5 << 6));
      v7 = (v6 - 64);
      v8 = -64 * v5;
      do
      {
        v7 = (icu::UnicodeString::~UnicodeString(v6, v7) - 64);
        v8 += 64;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v4, 0x1093C808E78F3FDLL);
  }

  operator new[]();
}

void icu::DateFormatSymbols::setNarrowEras(icu::DateFormatSymbols *this, UChar **a2, int a3)
{
  v3 = *(this + 5);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + (v5 << 6));
      v7 = (v6 - 64);
      v8 = -64 * v5;
      do
      {
        v7 = (icu::UnicodeString::~UnicodeString(v6, v7) - 64);
        v8 += 64;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v4, 0x1093C808E78F3FDLL);
  }

  operator new[]();
}

void icu::DateFormatSymbols::setMonths(icu::DateFormatSymbols *this, UChar **a2, int a3)
{
  v3 = *(this + 7);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + (v5 << 6));
      v7 = (v6 - 64);
      v8 = -64 * v5;
      do
      {
        v7 = (icu::UnicodeString::~UnicodeString(v6, v7) - 64);
        v8 += 64;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v4, 0x1093C808E78F3FDLL);
  }

  operator new[]();
}

void icu::DateFormatSymbols::setShortMonths(icu::DateFormatSymbols *this, UChar **a2, int a3)
{
  v3 = *(this + 9);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + (v5 << 6));
      v7 = (v6 - 64);
      v8 = -64 * v5;
      do
      {
        v7 = (icu::UnicodeString::~UnicodeString(v6, v7) - 64);
        v8 += 64;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v4, 0x1093C808E78F3FDLL);
  }

  operator new[]();
}

void *icu::DateFormatSymbols::setMonths(void *result, UChar **a2, int a3, int a4, int a5)
{
  if (a4 == 1)
  {
    switch(a5)
    {
      case 0:
        v35 = result[15];
        if (v35)
        {
          v36 = v35 - 16;
          v37 = *(v35 - 8);
          if (v37)
          {
            v38 = (v35 + (v37 << 6));
            v39 = (v38 - 64);
            v40 = -64 * v37;
            do
            {
              v39 = (icu::UnicodeString::~UnicodeString(v38, v39) - 64);
              v40 += 64;
            }

            while (v40);
          }

          MEMORY[0x19A8B25E0](v36, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      case 2:
        v23 = result[17];
        if (v23)
        {
          v24 = v23 - 16;
          v25 = *(v23 - 8);
          if (v25)
          {
            v26 = (v23 + (v25 << 6));
            v27 = (v26 - 64);
            v28 = -64 * v25;
            do
            {
              v27 = (icu::UnicodeString::~UnicodeString(v26, v27) - 64);
              v28 += 64;
            }

            while (v28);
          }

          MEMORY[0x19A8B25E0](v24, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      case 1:
        v11 = result[13];
        if (v11)
        {
          v12 = v11 - 16;
          v13 = *(v11 - 8);
          if (v13)
          {
            v14 = (v11 + (v13 << 6));
            v15 = (v14 - 64);
            v16 = -64 * v13;
            do
            {
              v15 = (icu::UnicodeString::~UnicodeString(v14, v15) - 64);
              v16 += 64;
            }

            while (v16);
          }

          MEMORY[0x19A8B25E0](v12, 0x1093C808E78F3FDLL);
        }

        operator new[]();
    }
  }

  else if (!a4)
  {
    switch(a5)
    {
      case 0:
        v29 = result[9];
        if (v29)
        {
          v30 = v29 - 16;
          v31 = *(v29 - 8);
          if (v31)
          {
            v32 = (v29 + (v31 << 6));
            v33 = (v32 - 64);
            v34 = -64 * v31;
            do
            {
              v33 = (icu::UnicodeString::~UnicodeString(v32, v33) - 64);
              v34 += 64;
            }

            while (v34);
          }

          MEMORY[0x19A8B25E0](v30, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      case 2:
        v17 = result[11];
        if (v17)
        {
          v18 = v17 - 16;
          v19 = *(v17 - 8);
          if (v19)
          {
            v20 = (v17 + (v19 << 6));
            v21 = (v20 - 64);
            v22 = -64 * v19;
            do
            {
              v21 = (icu::UnicodeString::~UnicodeString(v20, v21) - 64);
              v22 += 64;
            }

            while (v22);
          }

          MEMORY[0x19A8B25E0](v18, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      case 1:
        v5 = result[7];
        if (v5)
        {
          v6 = v5 - 16;
          v7 = *(v5 - 8);
          if (v7)
          {
            v8 = (v5 + (v7 << 6));
            v9 = (v8 - 64);
            v10 = -64 * v7;
            do
            {
              v9 = (icu::UnicodeString::~UnicodeString(v8, v9) - 64);
              v10 += 64;
            }

            while (v10);
          }

          MEMORY[0x19A8B25E0](v6, 0x1093C808E78F3FDLL);
        }

        operator new[]();
    }
  }

  return result;
}

void icu::DateFormatSymbols::setWeekdays(icu::DateFormatSymbols *this, UChar **a2, int a3)
{
  v3 = *(this + 19);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + (v5 << 6));
      v7 = (v6 - 64);
      v8 = -64 * v5;
      do
      {
        v7 = (icu::UnicodeString::~UnicodeString(v6, v7) - 64);
        v8 += 64;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v4, 0x1093C808E78F3FDLL);
  }

  operator new[]();
}

void icu::DateFormatSymbols::setShortWeekdays(icu::DateFormatSymbols *this, UChar **a2, int a3)
{
  v3 = *(this + 21);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + (v5 << 6));
      v7 = (v6 - 64);
      v8 = -64 * v5;
      do
      {
        v7 = (icu::UnicodeString::~UnicodeString(v6, v7) - 64);
        v8 += 64;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v4, 0x1093C808E78F3FDLL);
  }

  operator new[]();
}

void *icu::DateFormatSymbols::setWeekdays(void *result, UChar **a2, int a3, int a4, int a5)
{
  if (a4 == 1)
  {
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        v47 = result[33];
        if (v47)
        {
          v48 = v47 - 16;
          v49 = *(v47 - 8);
          if (v49)
          {
            v50 = (v47 + (v49 << 6));
            v51 = (v50 - 64);
            v52 = -64 * v49;
            do
            {
              v51 = (icu::UnicodeString::~UnicodeString(v50, v51) - 64);
              v52 += 64;
            }

            while (v52);
          }

          MEMORY[0x19A8B25E0](v48, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      }

      if (a5 == 3)
      {
        v23 = result[31];
        if (v23)
        {
          v24 = v23 - 16;
          v25 = *(v23 - 8);
          if (v25)
          {
            v26 = (v23 + (v25 << 6));
            v27 = (v26 - 64);
            v28 = -64 * v25;
            do
            {
              v27 = (icu::UnicodeString::~UnicodeString(v26, v27) - 64);
              v28 += 64;
            }

            while (v28);
          }

          MEMORY[0x19A8B25E0](v24, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      }
    }

    else
    {
      if (!a5)
      {
        v41 = result[29];
        if (v41)
        {
          v42 = v41 - 16;
          v43 = *(v41 - 8);
          if (v43)
          {
            v44 = (v41 + (v43 << 6));
            v45 = (v44 - 64);
            v46 = -64 * v43;
            do
            {
              v45 = (icu::UnicodeString::~UnicodeString(v44, v45) - 64);
              v46 += 64;
            }

            while (v46);
          }

          MEMORY[0x19A8B25E0](v42, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      }

      if (a5 == 1)
      {
        v11 = result[27];
        if (v11)
        {
          v12 = v11 - 16;
          v13 = *(v11 - 8);
          if (v13)
          {
            v14 = (v11 + (v13 << 6));
            v15 = (v14 - 64);
            v16 = -64 * v13;
            do
            {
              v15 = (icu::UnicodeString::~UnicodeString(v14, v15) - 64);
              v16 += 64;
            }

            while (v16);
          }

          MEMORY[0x19A8B25E0](v12, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      }
    }
  }

  else if (!a4)
  {
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        v35 = result[25];
        if (v35)
        {
          v36 = v35 - 16;
          v37 = *(v35 - 8);
          if (v37)
          {
            v38 = (v35 + (v37 << 6));
            v39 = (v38 - 64);
            v40 = -64 * v37;
            do
            {
              v39 = (icu::UnicodeString::~UnicodeString(v38, v39) - 64);
              v40 += 64;
            }

            while (v40);
          }

          MEMORY[0x19A8B25E0](v36, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      }

      if (a5 == 3)
      {
        v17 = result[23];
        if (v17)
        {
          v18 = v17 - 16;
          v19 = *(v17 - 8);
          if (v19)
          {
            v20 = (v17 + (v19 << 6));
            v21 = (v20 - 64);
            v22 = -64 * v19;
            do
            {
              v21 = (icu::UnicodeString::~UnicodeString(v20, v21) - 64);
              v22 += 64;
            }

            while (v22);
          }

          MEMORY[0x19A8B25E0](v18, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      }
    }

    else
    {
      if (!a5)
      {
        v29 = result[21];
        if (v29)
        {
          v30 = v29 - 16;
          v31 = *(v29 - 8);
          if (v31)
          {
            v32 = (v29 + (v31 << 6));
            v33 = (v32 - 64);
            v34 = -64 * v31;
            do
            {
              v33 = (icu::UnicodeString::~UnicodeString(v32, v33) - 64);
              v34 += 64;
            }

            while (v34);
          }

          MEMORY[0x19A8B25E0](v30, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      }

      if (a5 == 1)
      {
        v5 = result[19];
        if (v5)
        {
          v6 = v5 - 16;
          v7 = *(v5 - 8);
          if (v7)
          {
            v8 = (v5 + (v7 << 6));
            v9 = (v8 - 64);
            v10 = -64 * v7;
            do
            {
              v9 = (icu::UnicodeString::~UnicodeString(v8, v9) - 64);
              v10 += 64;
            }

            while (v10);
          }

          MEMORY[0x19A8B25E0](v6, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      }
    }
  }

  return result;
}

void *icu::DateFormatSymbols::setQuarters(void *result, UChar **a2, int a3, int a4, int a5)
{
  if (a4 == 1)
  {
    switch(a5)
    {
      case 0:
        v35 = result[55];
        if (v35)
        {
          v36 = v35 - 16;
          v37 = *(v35 - 8);
          if (v37)
          {
            v38 = (v35 + (v37 << 6));
            v39 = (v38 - 64);
            v40 = -64 * v37;
            do
            {
              v39 = (icu::UnicodeString::~UnicodeString(v38, v39) - 64);
              v40 += 64;
            }

            while (v40);
          }

          MEMORY[0x19A8B25E0](v36, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      case 2:
        v23 = result[57];
        if (v23)
        {
          v24 = v23 - 16;
          v25 = *(v23 - 8);
          if (v25)
          {
            v26 = (v23 + (v25 << 6));
            v27 = (v26 - 64);
            v28 = -64 * v25;
            do
            {
              v27 = (icu::UnicodeString::~UnicodeString(v26, v27) - 64);
              v28 += 64;
            }

            while (v28);
          }

          MEMORY[0x19A8B25E0](v24, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      case 1:
        v11 = result[53];
        if (v11)
        {
          v12 = v11 - 16;
          v13 = *(v11 - 8);
          if (v13)
          {
            v14 = (v11 + (v13 << 6));
            v15 = (v14 - 64);
            v16 = -64 * v13;
            do
            {
              v15 = (icu::UnicodeString::~UnicodeString(v14, v15) - 64);
              v16 += 64;
            }

            while (v16);
          }

          MEMORY[0x19A8B25E0](v12, 0x1093C808E78F3FDLL);
        }

        operator new[]();
    }
  }

  else if (!a4)
  {
    switch(a5)
    {
      case 0:
        v29 = result[49];
        if (v29)
        {
          v30 = v29 - 16;
          v31 = *(v29 - 8);
          if (v31)
          {
            v32 = (v29 + (v31 << 6));
            v33 = (v32 - 64);
            v34 = -64 * v31;
            do
            {
              v33 = (icu::UnicodeString::~UnicodeString(v32, v33) - 64);
              v34 += 64;
            }

            while (v34);
          }

          MEMORY[0x19A8B25E0](v30, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      case 2:
        v17 = result[51];
        if (v17)
        {
          v18 = v17 - 16;
          v19 = *(v17 - 8);
          if (v19)
          {
            v20 = (v17 + (v19 << 6));
            v21 = (v20 - 64);
            v22 = -64 * v19;
            do
            {
              v21 = (icu::UnicodeString::~UnicodeString(v20, v21) - 64);
              v22 += 64;
            }

            while (v22);
          }

          MEMORY[0x19A8B25E0](v18, 0x1093C808E78F3FDLL);
        }

        operator new[]();
      case 1:
        v5 = result[47];
        if (v5)
        {
          v6 = v5 - 16;
          v7 = *(v5 - 8);
          if (v7)
          {
            v8 = (v5 + (v7 << 6));
            v9 = (v8 - 64);
            v10 = -64 * v7;
            do
            {
              v9 = (icu::UnicodeString::~UnicodeString(v8, v9) - 64);
              v10 += 64;
            }

            while (v10);
          }

          MEMORY[0x19A8B25E0](v6, 0x1093C808E78F3FDLL);
        }

        operator new[]();
    }
  }

  return result;
}

void icu::DateFormatSymbols::setAmPmStrings(icu::DateFormatSymbols *this, UChar **a2, int a3)
{
  v3 = *(this + 35);
  if (v3)
  {
    v4 = v3 - 16;
    v5 = *(v3 - 8);
    if (v5)
    {
      v6 = (v3 + (v5 << 6));
      v7 = (v6 - 64);
      v8 = -64 * v5;
      do
      {
        v7 = (icu::UnicodeString::~UnicodeString(v6, v7) - 64);
        v8 += 64;
      }

      while (v8);
    }

    MEMORY[0x19A8B25E0](v4, 0x1093C808E78F3FDLL);
  }

  operator new[]();
}

uint64_t icu::DateFormatSymbols::getZoneStrings(icu::DateFormatSymbols *this, int *a2, int *a3)
{
  umtx_lock(&unk_1EAEC9C98);
  v6 = *(this + 65);
  if (!v6)
  {
    v6 = *(this + 66);
    if (!v6)
    {
      icu::DateFormatSymbols::initZoneStringsArray(this);
      v6 = *(this + 66);
    }
  }

  *a2 = *(this + 134);
  *a3 = *(this + 135);
  umtx_unlock(&unk_1EAEC9C98);
  return v6;
}

uint64_t icu::DateFormatSymbols::initZoneStringsArray(uint64_t this)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!*(this + 520))
  {
    v1 = this;
    if (!*(this + 528))
    {
      v17 = 0;
      TimeZoneIDEnumeration = icu::TimeZone::createTimeZoneIDEnumeration(0, 0, 0, &v17);
      v3 = (*(*TimeZoneIDEnumeration + 32))(TimeZoneIDEnumeration, &v17);
      v4 = v3;
      v5 = 0;
      if (v17 <= 0)
      {
        v6 = 8 * v3;
        v7 = malloc_type_malloc(v6, 0x2004093837F09uLL);
        v5 = v7;
        if (v7)
        {
          bzero(v7, v6);
          Instance = icu::TimeZoneNames::createInstance((v1 + 544), &v17, v8);
          v10 = (*(*Instance + 104))(Instance, &v17);
          if (v17 > 0)
          {
            goto LABEL_10;
          }

          icu::Calendar::getNow(v10);
          v19 = 0u;
          v20 = 0u;
          v22 = 0;
          v21 = 0u;
          v18 = &unk_1F0935D00;
          LOWORD(v19) = 2;
          if ((*(*TimeZoneIDEnumeration + 56))(TimeZoneIDEnumeration, &v17))
          {
            v11 = v17;
            if (v17 <= 0)
            {
              operator new[]();
            }
          }

          icu::UnicodeString::~UnicodeString(v11, &v18);
          if (v17 >= 1)
          {
LABEL_10:
            if (v4 >= 1)
            {
              for (i = 0; i != v4; ++i)
              {
                v13 = v5[i];
                if (v13)
                {
                  v14 = *(v13 - 8);
                  if (v14)
                  {
                    v15 = (v13 + (v14 << 6) - 64);
                    v16 = -64 * v14;
                    do
                    {
                      v15 = (icu::UnicodeString::~UnicodeString(v14, v15) - 64);
                      v16 += 64;
                    }

                    while (v16);
                  }

                  MEMORY[0x19A8B25E0](v13 - 16, 0x1093C808E78F3FDLL);
                }
              }
            }

            free(v5);
            v5 = 0;
          }

          (*(*Instance + 8))(Instance);
        }

        else
        {
          v17 = 7;
        }
      }

      this = (*(*TimeZoneIDEnumeration + 8))(TimeZoneIDEnumeration);
      *(v1 + 528) = v5;
      *(v1 + 536) = v4;
      *(v1 + 540) = 5;
    }
  }

  return this;
}

void icu::DateFormatSymbols::setZoneStrings(icu::DateFormatSymbols *this, const icu::UnicodeString *const *a2, int a3, int a4)
{
  icu::DateFormatSymbols::disposeZoneStrings(this);
  *(this + 134) = a3;
  *(this + 135) = a4;

  icu::DateFormatSymbols::createZoneStrings(this, a2);
}

uint64_t icu::DateFormatSymbols::getPatternCharIndex(unsigned int a1)
{
  result = 38;
  if (a1 <= 0x7F)
  {
    v3 = byte_19548C7FC[a1];
    if (v3 == 255)
    {
      LOBYTE(v3) = 38;
    }

    return v3;
  }

  return result;
}

uint64_t icu::DateFormatSymbols::isNumericField(int a1, int a2)
{
  v3 = ((1 << a1) & 0x1E080004) != 0 && a2 < 3;
  v4 = ((1 << a1) & 0x40075BDFALL) != 0 || v3;
  if (a1 == 38)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

BOOL icu::DateFormatSymbols::isNumericPatternChar(unsigned int a1, int a2)
{
  if (a1 > 0x7F)
  {
    return 0;
  }

  v2 = byte_19548C7FC[a1];
  if (v2 == -1)
  {
    return 0;
  }

  result = 1;
  v4 = 1 << v2;
  if ((v4 & 0x40075BDFALL) == 0)
  {
    return (v4 & 0x1E080004) != 0 && a2 < 3;
  }

  return result;
}

char *sub_195309C0C(char *result, unsigned int a2, uint64_t a3, char **a4, int *a5)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = &result[64 * a2];
  if (*(v5 + 4))
  {
    v6 = 2;
  }

  else
  {
    v6 = *(v5 + 4) & 0x1E;
  }

  *(v5 + 4) = v6;
  if (*a5 <= 0)
  {
    memset(v16, 0, sizeof(v16));
    icu::UnicodeString::UnicodeString(v16, *a4, -1);
    v9 = uhash_get(*(a3 + 184), v16);
    if (v9)
    {
      v10 = v9;
      memset(v15, 0, sizeof(v15));
      v14 = &aLocaleCalendar[81];
      icu::UnicodeString::UnicodeString(v15, 0, &v14, 4);
      v11 = uhash_get(*v10, v15);
      if (v11)
      {
        icu::UnicodeString::fastCopyFrom(v5, v11);
      }

      else
      {
        icu::UnicodeString::setToBogus(v5);
      }

      icu::UnicodeString::~UnicodeString(v12, v15);
    }

    else
    {
      v13 = 2;
      *a5 = 2;
    }

    return icu::UnicodeString::~UnicodeString(v13, v16);
  }

  return result;
}

icu::CharString *sub_195309D48(icu::CharString *a1, const char *a2, const char *a3, const char *a4, UErrorCode *a5)
{
  v7 = sub_19530A0C0(a1, a2, a3, a5);
  v8 = icu::CharString::append(v7, 47, a5);

  return icu::CharString::append(v8, a4, -1, a5);
}

uint64_t *sub_195309D9C(uint64_t *result, _DWORD *a2, uint64_t a3, char **a4, int *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    v8 = result;
    memset(v12, 0, sizeof(v12));
    icu::UnicodeString::UnicodeString(v12, *a4, -1);
    v9 = uhash_get(*(a3 + 8), v12);
    if (v9)
    {
      v10 = v9;
      *a2 = uhash_geti(*(a3 + 96), v12);
      *v8 = v10;
      uhash_remove();
    }

    else
    {
      *a2 = 0;
      v11 = 2;
      *a5 = 2;
    }

    return icu::UnicodeString::~UnicodeString(v11, v12);
  }

  return result;
}

icu::CharString *sub_195309E84(icu::CharString *a1, const char *a2, UErrorCode *a3)
{
  v4 = sub_195309D48(a1, "cyclicNameSets", a2, "format", a3);
  v5 = icu::CharString::append(v4, 47, a3);

  return icu::CharString::append(v5, "abbreviated", -1, a3);
}

_OWORD *sub_195309EEC(uint64_t a1, char **a2, _DWORD *a3, int *a4)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    memset(v7, 0, sizeof(v7));
    icu::UnicodeString::UnicodeString(v7, *a2, -1);
    uhash_get(*(a1 + 184), v7);
    *a3 = 10;
    operator new[]();
  }

  return 0;
}

icu::CharString *sub_19530A0C0(icu::CharString *a1, const char *a2, const char *a3, UErrorCode *a4)
{
  *(a1 + 14) = 0;
  **a1 = 0;
  v6 = icu::CharString::append(a1, a2, -1, a4);
  v7 = icu::CharString::append(v6, 47, a4);

  return icu::CharString::append(v7, a3, -1, a4);
}

void sub_19530A120(uint64_t *result, _DWORD *a2, uint64_t a3, char **a4, int *a5)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a5 <= 0)
  {
    memset(v8, 0, sizeof(v8));
    icu::UnicodeString::UnicodeString(v8, *a4, -1);
    if (uhash_get(*(a3 + 8), v8))
    {
      *a2 = uhash_geti(*(a3 + 96), v8) + 1;
      operator new[]();
    }

    *a2 = 0;
    *a5 = 2;
    icu::UnicodeString::~UnicodeString(2, v8);
  }
}

void sub_19530A2B4(icu::UnicodeString *result, unsigned int *a2, const UChar *a3, unsigned int a4, int a5, int *a6)
{
  if (*a6 <= 0)
  {
    v16 = v13;
    v17 = v12;
    v18 = v11;
    v19 = v10;
    v20 = v9;
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v14;
    v25 = v15;
    *a2 = a4;
    operator new[]();
  }
}

void sub_19530A3E4(uint64_t a1)
{
  *a1 = &unk_1F093A168;
  uhash_setValueDeleter(*(a1 + 8), sub_19530BAB4);
  icu::UnicodeString::~UnicodeString(v2, (a1 + 536));
  v4 = *(a1 + 528);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  icu::UnicodeString::~UnicodeString(v3, (a1 + 464));
  icu::UnicodeString::~UnicodeString(v5, (a1 + 400));
  icu::UVector::~UVector((a1 + 360));
  sub_19530BB24(a1 + 272);
  v6 = *(a1 + 184);
  if (v6)
  {
    uhash_close(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    uhash_close(v7);
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    uhash_close(v8);
  }

  icu::ResourceSink::~ResourceSink(a1);
}

void sub_19530A4C4(uint64_t a1)
{
  sub_19530A3E4(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19530A4FC(uint64_t result, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  __s1 = a2;
  if (*a5 > 0)
  {
    return result;
  }

  v7 = result;
  v24 = 0;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  (*(*a3 + 88))(v22, a3, a5);
  if (*a5 > 0)
  {
    goto LABEL_3;
  }

  result = icu::ResourceTable::getKeyAndValue(v22, 0, &__s1, a3);
  if (result)
  {
    v8 = 0;
    while (1)
    {
      memset(v26, 0, sizeof(v26));
      icu::UnicodeString::UnicodeString(v26, __s1, -1);
      v9 = sub_19530AD74(v7, v26, a3, a5);
      v10 = *a5;
      if (v10 > 0)
      {
        break;
      }

      if (v9)
      {
        if (v9 != 2)
        {
          if (v9 == 1)
          {
            if (!v24)
            {
              operator new();
            }

            icu::UnicodeString::clone((v7 + 536));
          }

          v11 = *(v7 + 528);
          if (!v11 || !*(v11 + 2) || (icu::UVector::indexOf(v11, v26, 0) & 0x80000000) == 0 || !strcmp(__s1, "AmPmMarkersAbbr"))
          {
            v12 = __s1;
            if (!strcmp(__s1, "AmPmMarkers") || !strcmp(v12, "AmPmMarkersAbbr") || !strcmp(v12, "AmPmMarkersNarrow"))
            {
              if (!uhash_get(*(v7 + 8), v26))
              {
                memset(v21, 0, sizeof(v21));
                (*(*a3 + 80))(v21, a3, a5);
                operator new[]();
              }
            }

            else if (!strcmp(v12, "eras") || !strcmp(v12, "dayNames") || !strcmp(v12, "monthNames") || !strcmp(v12, "quarters") || !strcmp(v12, "dayPeriod") || !strcmp(v12, "monthPatterns") || !strcmp(v12, "cyclicNameSets"))
            {
              sub_19530B0C0(v7, v26, v12, a3, a5);
            }
          }
        }
      }

      else if (!uhash_get(*(v7 + 8), v7 + 536) && !uhash_get(*(v7 + 184), v7 + 536))
      {
        icu::UnicodeString::clone((v7 + 536));
      }

      icu::UnicodeString::~UnicodeString(v10, v26);
      result = icu::ResourceTable::getKeyAndValue(v22, ++v8, &__s1, a3);
      if (!result)
      {
        goto LABEL_36;
      }
    }

    icu::UnicodeString::~UnicodeString(v10, v26);
LABEL_3:
    result = v24;
    if (v24)
    {
      return (*(*v24 + 8))(v24);
    }

    return result;
  }

LABEL_36:
  v13 = *(v7 + 368);
  do
  {
    if (v13 < 1)
    {
      break;
    }

    v14 = 0;
    v15 = 1;
    do
    {
      while (1)
      {
        v16 = icu::UVector::elementAt((v7 + 360), v14);
        if (uhash_get(*(v7 + 8), v16))
        {
          v17 = v14 + 1;
          v18 = icu::UVector::elementAt((v7 + 360), v14 + 1);
          if (!uhash_get(*(v7 + 8), v18))
          {
            uhash_geti(*(v7 + 96), v16);
            *&v26[0] = 0;
            operator new[]();
          }

          goto LABEL_47;
        }

        result = uhash_get(*(v7 + 184), v16);
        if (!result)
        {
          break;
        }

        v17 = v14 + 1;
        v19 = icu::UVector::elementAt((v7 + 360), v14 + 1);
        if (!uhash_get(*(v7 + 184), v19))
        {
          operator new();
        }

LABEL_47:
        if (*a5 >= 1)
        {
          goto LABEL_3;
        }

        icu::UVector::removeElementAt((v7 + 360), v17);
        result = icu::UVector::removeElementAt((v7 + 360), v14);
        v15 = 0;
        v13 = *(v7 + 368);
        if (v14 >= v13)
        {
          goto LABEL_51;
        }
      }

      v14 += 2;
      v13 = *(v7 + 368);
    }

    while (v14 < v13);
    if (v15)
    {
      break;
    }

LABEL_51:
    ;
  }

  while (v13);
  v20 = v24;
  if (v24)
  {
    result = *(v7 + 528);
    if (result)
    {
      result = (*(*result + 8))(result);
      v20 = v24;
    }

    *(v7 + 528) = v20;
  }

  return result;
}

uint64_t sub_19530AD74(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0 && (*(*a3 + 24))(a3) == 3)
  {
    v22 = 0;
    v8 = (*(*a3 + 40))(a3, &v22, a4);
    if (*a4 <= 0)
    {
      memset(v24, 0, sizeof(v24));
      icu::UnicodeString::UnicodeString(v24, v8, v22);
      if (!icu::UnicodeString::doEqualsSubstring(v24, 0, 17, aLocaleCalendar, 0, 17))
      {
        goto LABEL_31;
      }

      v11 = WORD4(v24[0]) >> 5;
      if (SWORD4(v24[0]) < 0)
      {
        v11 = HIDWORD(v24[0]);
      }

      v20[1] = aLocaleCalendar;
      if (v11 < 18)
      {
        goto LABEL_31;
      }

      if (SWORD4(v24[0]) < 0)
      {
        v12 = HIDWORD(v24[0]);
        v13 = SHIDWORD(v24[0]) >= 17 ? 17 : HIDWORD(v24[0]);
      }

      else
      {
        v12 = WORD4(v24[0]) >> 5;
        v13 = v12 >= 0x11 ? 17 : WORD4(v24[0]) >> 5;
      }

      v14 = icu::UnicodeString::doIndexOf(v24, 0x2Fu, v13, v12 - v13);
      if (v14 < 18)
      {
        goto LABEL_31;
      }

      v15 = v14;
      memset(v23, 0, sizeof(v23));
      icu::UnicodeString::tempSubString(v23, v24, 17, v14 - 17);
      if ((SWORD4(v24[0]) & 0x8000u) == 0)
      {
        v16 = WORD4(v24[0]) >> 5;
      }

      else
      {
        v16 = HIDWORD(v24[0]);
      }

      sub_19530B8A4(a1 + 536, v24, v15 + 1, v16);
      if (sub_195213DE4(a1 + 400, v23) && (sub_1952CB634(a2, a1 + 536) & 1) != 0)
      {
        v9 = 0;
LABEL_36:
        icu::UnicodeString::~UnicodeString(v17, v23);
        goto LABEL_32;
      }

      if (sub_1952CB634(a1 + 400, v23) && sub_195213DE4(a2, a1 + 536))
      {
        v21 = aGregorian_2;
        v18 = sub_1951D0FDC(v23, &v21, 9);
        v20[0] = v21;
        v17 = v20;
        if (!v18)
        {
          v9 = 2;
          goto LABEL_36;
        }

        if (*(a1 + 472))
        {
          icu::UnicodeString::operator=((a1 + 464), v23);
        }

        else if (!sub_195213DE4(a1 + 464, v23))
        {
          goto LABEL_30;
        }

        v9 = 1;
        goto LABEL_36;
      }

LABEL_30:
      icu::UnicodeString::~UnicodeString(v17, v23);
LABEL_31:
      v19 = 5;
      *a4 = 5;
      v9 = 3;
LABEL_32:
      icu::UnicodeString::~UnicodeString(v19, v24);
      return v9;
    }
  }

  return 3;
}

void *sub_19530B0C0(void *result, uint64_t a2, char *a3, icu::ResourceValue *a4, int *a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v37 = a3;
  if (*a5 > 0)
  {
    return result;
  }

  v8 = result;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  result = (*(*a4 + 88))(v35, a4, a5);
  if (*a5 > 0)
  {
    return result;
  }

  result = icu::ResourceTable::getKeyAndValue(v35, 0, &v37, a4);
  if (!result)
  {
    return result;
  }

  v9 = 0;
  while (1)
  {
    memset(v38, 0, sizeof(v38));
    icu::UnicodeString::UnicodeString(v38, v37, -1);
    v10 = WORD4(v38[0]) >> 5;
    if (SWORD4(v38[0]) < 0)
    {
      v10 = HIDWORD(v38[0]);
    }

    if (icu::UnicodeString::doEqualsSubstring(v38, v10 - 8, 8, &aLocaleCalendar[17], 0, 8))
    {
      goto LABEL_57;
    }

    if (!(*(*a4 + 24))(a4))
    {
      break;
    }

    v12 = *(a2 + 8);
    v13 = v12;
    v14 = v12 >> 5;
    if (v13 >= 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = *(a2 + 12);
    }

    LOWORD(v34[0]) = 47;
    v16 = icu::UnicodeString::doAppend(a2, v34, 0, 1);
    if ((SWORD4(v38[0]) & 0x8000u) == 0)
    {
      v17 = WORD4(v38[0]) >> 5;
    }

    else
    {
      v17 = HIDWORD(v38[0]);
    }

    icu::UnicodeString::doAppend(v16, v38, 0, v17);
    if (icu::UnicodeString::doEqualsSubstring(a2, 0, 14, &aLocaleCalendar[25], 0, 14))
    {
      v18 = *(a2 + 8);
      v19 = v18;
      v20 = v18 >> 5;
      if (v19 < 0)
      {
        v20 = *(a2 + 12);
      }

      if (v20 == 14)
      {
        v21 = 14;
      }

      else if (icu::UnicodeString::doCompare(a2, 14, 8, &aLocaleCalendar[39], 0, 8))
      {
        if (icu::UnicodeString::doCompare(a2, 14, 6, &aLocaleCalendar[47], 0, 6))
        {
          if (icu::UnicodeString::doCompare(a2, 14, 9, &aLocaleCalendar[53], 0, 9))
          {
            goto LABEL_46;
          }

          v21 = 23;
        }

        else
        {
          v21 = 20;
        }
      }

      else
      {
        v21 = 22;
      }

      v23 = *(a2 + 8);
      v24 = v23;
      v25 = v23 >> 5;
      v26 = *(a2 + 12);
      v27 = v24 >= 0 ? v25 : *(a2 + 12);
      if (v21 == v27)
      {
        v28 = 0;
      }

      else
      {
        if (icu::UnicodeString::doCompare(a2, v21, 7, &aLocaleCalendar[62], 0, 7))
        {
          goto LABEL_46;
        }

        v24 = *(a2 + 8);
        v26 = *(a2 + 12);
        v25 = v24 >> 5;
        v28 = 7;
      }

      v29 = v28 + v21;
      v30 = (v24 & 0x8000u) == 0 ? v25 : v26;
      if (v29 != v30 && icu::UnicodeString::doCompare(a2, v29, 12, &aLocaleCalendar[69], 0, 12))
      {
        goto LABEL_46;
      }
    }

    if (uhash_get(v8[1], a2) || uhash_get(v8[23], a2))
    {
LABEL_46:
      v31 = *(a2 + 8);
      if (v15 || (v31 & 1) == 0)
      {
        if ((v31 & 0x8000u) == 0)
        {
          v32 = v31 >> 5;
        }

        else
        {
          v32 = *(a2 + 12);
        }

        if (v32 > v15)
        {
          if (v15 > 1023)
          {
            *(a2 + 8) = v31 | 0xFFE0;
            *(a2 + 12) = v15;
          }

          else
          {
            *(a2 + 8) = *(a2 + 8) & 0x1F | (32 * v15);
          }
        }
      }

      else
      {
        icu::UnicodeString::unBogus(a2);
      }

      icu::UnicodeString::doReplace(a2, 0, 0, 0, 0, 0);
      goto LABEL_57;
    }

    v33 = sub_19530AD74(v8, a2, a4, a5);
    v22 = *a5;
    if (v22 > 0)
    {
      return icu::UnicodeString::~UnicodeString(v22, v38);
    }

    if (!v33)
    {
      icu::UnicodeString::clone(v8 + 67);
    }

    if ((*(*a4 + 24))(a4) == 8)
    {
      memset(v34, 0, sizeof(v34));
      (*(*a4 + 80))(v34, a4, a5);
      operator new[]();
    }

    if ((*(*a4 + 24))(a4) == 2)
    {
      sub_19530B0C0(v8, a2, v37, a4, a5);
      v22 = *a5;
      if (v22 > 0)
      {
        return icu::UnicodeString::~UnicodeString(v22, v38);
      }
    }

    sub_1951E71B4(a2, 0, v15);
LABEL_57:
    icu::UnicodeString::~UnicodeString(v11, v38);
    result = icu::ResourceTable::getKeyAndValue(v35, ++v9, &v37, a4);
    if (!result)
    {
      return result;
    }
  }

  if (v9)
  {
    LODWORD(v34[0]) = 0;
    (*(*a4 + 32))(a4, v34, a5);
    v22 = *a5;
    if (v22 <= 0)
    {
      operator new();
    }
  }

  else
  {
    LOBYTE(v34[0]) = 0;
    if (sub_19530B918(v8 + 34, v34, a5))
    {
      operator new();
    }

    v22 = 7;
    *a5 = 7;
  }

  return icu::UnicodeString::~UnicodeString(v22, v38);
}

uint64_t sub_19530B8A4(uint64_t a1, const icu::UnicodeString *a2, int a3, uint64_t a4)
{
  icu::UnicodeString::unBogus(a1);
  if (*(a1 + 8) < 0)
  {
    v8 = *(a1 + 12);
  }

  else
  {
    v8 = *(a1 + 8) >> 5;
  }

  return icu::UnicodeString::doReplace(a1, 0, v8, a2, a3, a4);
}

void *sub_19530B918(const void **a1, unsigned __int8 *a2, int *a3)
{
  v4 = *(a1 + 4);
  if (*a1 != v4)
  {
    goto LABEL_16;
  }

  if (v4 == 8)
  {
    v5 = 32;
  }

  else
  {
    v5 = 2 * v4;
  }

  if (v5 < 1)
  {
    return 0;
  }

  v6 = malloc_type_malloc(8 * v5, 0x2004093837F09uLL);
  v7 = v6;
  if (v6)
  {
    if (v4 >= 1)
    {
      v8 = *(a1 + 4);
      if (v8 >= v4)
      {
        v8 = v4;
      }

      if (v8 >= v5)
      {
        v8 = v5;
      }

      memcpy(v6, a1[1], 8 * v8);
    }

    if (*(a1 + 20))
    {
      free(a1[1]);
    }

    a1[1] = v7;
    *(a1 + 4) = v5;
    *(a1 + 20) = 1;
LABEL_16:
    operator new();
  }

  return v7;
}

uint64_t sub_19530BAB4(uint64_t result)
{
  if (result)
  {
    v1 = *(result - 8);
    if (v1)
    {
      v2 = (result + (v1 << 6) - 64);
      v3 = -64 * v1;
      do
      {
        v2 = (icu::UnicodeString::~UnicodeString(v1, v2) - 64);
        v3 += 64;
      }

      while (v3);
    }

    JUMPOUT(0x19A8B25E0);
  }

  return result;
}

uint64_t sub_19530BB24(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*(a1 + 8) + 8 * v3);
      if (v4)
      {
        if (*v4)
        {
          uhash_close(*v4);
        }

        MEMORY[0x19A8B2600](v4, 0x10A0C40DD2A5DBALL);
        v2 = *a1;
      }

      ++v3;
    }

    while (v3 < v2);
  }

  if (*(a1 + 20))
  {
    free(*(a1 + 8));
  }

  return a1;
}

void sub_19530BBB4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F093A1B0;
  icu::Locale::~Locale(a2, (a1 + 16));

  icu::CacheKeyBase::~CacheKeyBase(a1);
}

void sub_19530BC08(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F093A1B0;
  icu::Locale::~Locale(a2, (a1 + 16));
  icu::CacheKeyBase::~CacheKeyBase(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t sub_19530BC70(uint64_t a1)
{
  v2 = strlen(("N3icu23SharedDateFormatSymbolsE" & 0x7FFFFFFFFFFFFFFFLL));
  v3 = ustr_hashCharsN(("N3icu23SharedDateFormatSymbolsE" & 0x7FFFFFFFFFFFFFFFLL), v2);
  return icu::Locale::hashCode((a1 + 16)) + 37 * v3;
}

char *sub_19530BD38(uint64_t a1, char *__dst, int a3)
{
  result = strncpy(__dst, *(a1 + 56), a3);
  __dst[a3 - 1] = 0;
  return result;
}

BOOL sub_19530BD74(void *a1, void *a2)
{
  result = sub_1952C1D2C(a1, a2);
  if (result)
  {

    return icu::Locale::operator==((a1 + 2), (a2 + 2));
  }

  return result;
}

void sub_19530BDC8(void **a1)
{
  sub_195323478(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FormattedDateInterval::FormattedDateInterval(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *result = &unk_1F093A230;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

{
  v2 = *(a2 + 8);
  *result = &unk_1F093A230;
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 27;
  return result;
}

void icu::FormattedDateInterval::~FormattedDateInterval(icu::FormattedDateInterval *this)
{
  *this = &unk_1F093A230;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  icu::FormattedValue::~FormattedValue(this);
}

{
  icu::FormattedDateInterval::~FormattedDateInterval(this);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::FormattedDateInterval::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 27;
  return a1;
}

void icu::FormattedDateInterval::toString(icu::FormattedDateInterval *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
LABEL_3:
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
    return;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    goto LABEL_3;
  }

  (*(*v3 + 16))(*(this + 1));
}

void icu::FormattedDateInterval::toTempString(icu::FormattedDateInterval *this@<X0>, UErrorCode *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a2 >= 1)
  {
    *(a3 + 8) = 0u;
    *(a3 + 56) = 0;
    *(a3 + 40) = 0u;
    *(a3 + 24) = 0u;
LABEL_3:
    *a3 = &unk_1F0935D00;
    *(a3 + 8) = 2;
    icu::UnicodeString::setToBogus(a3);
    return;
  }

  v3 = *(this + 1);
  if (!v3)
  {
    *a2 = *(this + 4);
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    goto LABEL_3;
  }

  (*(*v3 + 24))(*(this + 1));
}

icu::Appendable *icu::FormattedDateInterval::appendTo(icu::FormattedDateInterval *this, icu::Appendable *a2, UErrorCode *a3)
{
  if (*a3 > 0)
  {
    return a2;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    *a3 = *(this + 4);
    return a2;
  }

  return (*(*v4 + 32))(*(this + 1), a2);
}

uint64_t icu::FormattedDateInterval::nextPosition(uint64_t a1, uint64_t a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
    *a3 = *(a1 + 16);
    return 0;
  }

  return (*(*v4 + 40))(*(a1 + 8), a2);
}

void icu::DateIntervalFormat::createInstance(icu::DateIntervalFormat *this, UErrorCode *a2, UErrorCode *a3)
{
  Default = icu::Locale::getDefault(this);

  icu::DateIntervalFormat::createInstance(this, Default, a2, v6);
}

void icu::DateIntervalFormat::createInstance(icu::DateIntervalFormat *this, const icu::UnicodeString *a2, UErrorCode *a3, UErrorCode *a4)
{
  operator new();
}

{
  icu::Locale::getDefault(this);
  icu::DateIntervalInfo::clone(a2);
}

icu::DateIntervalFormat *icu::DateIntervalFormat::DateIntervalFormat(icu::DateIntervalFormat *this)
{
  v2 = icu::Format::Format(this);
  *v2 = &unk_1F093A270;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  Root = icu::Locale::getRoot(v2);
  icu::Locale::Locale((this + 360), Root);
  v4 = 0;
  *(this + 73) = &unk_1F0935D00;
  *(this + 296) = 2;
  do
  {
    v5 = this + v4;
    *(v5 + 81) = &unk_1F0935D00;
    *(v5 + 328) = 2;
    *(v5 + 89) = &unk_1F0935D00;
    *(v5 + 360) = 2;
    v4 += 136;
  }

  while (v4 != 1224);
  *(this + 236) = 0;
  *(this + 117) = 0u;
  *(this + 237) = 0x10000000000;
  return this;
}

uint64_t icu::DateIntervalFormat::DateIntervalFormat(icu::DateIntervalFormat *this, const icu::DateIntervalFormat *a2)
{
  v4 = icu::Format::Format(this, a2);
  *v4 = &unk_1F093A270;
  *(v4 + 328) = 0u;
  *(v4 + 344) = 0u;
  icu::Locale::Locale((v4 + 360), a2 + 360);
  v5 = 0;
  *(this + 73) = &unk_1F0935D00;
  *(this + 296) = 2;
  do
  {
    v6 = this + v5;
    *(v6 + 81) = &unk_1F0935D00;
    *(v6 + 328) = 2;
    *(v6 + 89) = &unk_1F0935D00;
    *(v6 + 360) = 2;
    v5 += 136;
  }

  while (v5 != 1224);
  *(this + 236) = 0;
  *(this + 117) = 0u;
  *(this + 237) = 0x10000000000;

  return icu::DateIntervalFormat::operator=(this, a2);
}

uint64_t icu::DateIntervalFormat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 336);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(a1 + 328);
    if (v5)
    {
      icu::DateIntervalInfo::~DateIntervalInfo(v5);
      MEMORY[0x19A8B2600]();
    }

    v6 = *(a1 + 344);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(a1 + 352);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(a1 + 1872);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(a1 + 1880);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(a1 + 1888);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    umtx_lock(&unk_1EAEC9CF0);
    v11 = *(a2 + 336);
    if (v11)
    {
      v11 = (*(*v11 + 32))(v11);
    }

    *(a1 + 336) = v11;
    v12 = *(a2 + 344);
    if (v12)
    {
      v12 = (*(*v12 + 24))(v12);
    }

    *(a1 + 344) = v12;
    v13 = *(a2 + 352);
    if (v13)
    {
      v13 = (*(*v13 + 24))(v13);
    }

    *(a1 + 352) = v13;
    umtx_unlock(&unk_1EAEC9CF0);
    v14 = *(a2 + 328);
    if (v14)
    {
      icu::DateIntervalInfo::clone(v14);
    }

    *(a1 + 328) = 0;
    icu::UnicodeString::operator=((a1 + 584), (a2 + 584));
    v15 = -1224;
    do
    {
      icu::UnicodeString::operator=((a1 + v15 + 1872), (a2 + v15 + 1872));
      icu::UnicodeString::operator=((a1 + v15 + 1936), (a2 + v15 + 1936));
      *(a1 + v15 + 2000) = *(a2 + v15 + 2000);
      v15 += 136;
    }

    while (v15);
    icu::Locale::operator=((a1 + 360), a2 + 360);
    v16 = *(a2 + 1872);
    if (v16)
    {
      v16 = (*(*v16 + 56))(v16);
    }

    *(a1 + 1872) = v16;
    v17 = *(a2 + 1880);
    if (v17)
    {
      v17 = (*(*v17 + 56))(v17);
    }

    *(a1 + 1880) = v17;
    v18 = *(a2 + 1888);
    if (v18)
    {
      v18 = (*(*v18 + 56))(v18);
    }

    *(a1 + 1888) = v18;
    *(a1 + 1896) = *(a2 + 1896);
  }

  return a1;
}

void icu::DateIntervalFormat::~DateIntervalFormat(icu::DateIntervalFormat *this@<X0>, void *a2@<X8>)
{
  *this = &unk_1F093A270;
  v3 = *(this + 41);
  if (v3)
  {
    icu::DateIntervalInfo::~DateIntervalInfo(v3);
    MEMORY[0x19A8B2600]();
  }

  v4 = *(this + 42);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 43);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 44);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 234);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 235);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 236);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = 1224;
  do
  {
    icu::UnicodeString::~UnicodeString(a2, (this + v10 + 576));
    icu::UnicodeString::~UnicodeString(v11, (this + v10 + 512));
    v10 -= 136;
  }

  while (v10);
  icu::UnicodeString::~UnicodeString(a2, (this + 584));
  icu::Locale::~Locale(v12, (this + 360));

  icu::Format::~Format(this);
}

{
  icu::DateIntervalFormat::~DateIntervalFormat(this, a2);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::DateIntervalFormat::operator==(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  result = sub_19520B9EC(*(*a1 - 8), *(*a2 - 8));
  if (!result)
  {
    return result;
  }

  if (a1 == a2)
  {
    return 1;
  }

  result = icu::Format::operator==(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 328);
  v6 = *(a2 + 328);
  if (v5 == v6)
  {
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    if (!v5 || !v6)
    {
      return result;
    }
  }

  result = icu::DateIntervalInfo::operator==(*(a1 + 328), v6);
  if (!result)
  {
    return result;
  }

LABEL_12:
  umtx_lock(&unk_1EAEC9CF0);
  v7 = *(a1 + 336);
  v8 = *(a2 + 336);
  if (v7 != v8)
  {
    if (!v7 || !v8)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (!(*(*v7 + 24))(v7))
    {
LABEL_21:
      umtx_unlock(&unk_1EAEC9CF0);
      return 0;
    }

    goto LABEL_18;
  }

  if (v7)
  {
    goto LABEL_17;
  }

LABEL_18:
  umtx_unlock(&unk_1EAEC9CF0);
  v9 = *(a1 + 592);
  if (v9)
  {
    if ((*(a2 + 592) & 1) == 0)
    {
      return 0;
    }

LABEL_36:
    v14 = *(a1 + 1872);
    v15 = *(a2 + 1872);
    if (v14 == v15)
    {
      if (!v14)
      {
        goto LABEL_42;
      }
    }

    else
    {
      result = 0;
      if (!v14 || !v15)
      {
        return result;
      }
    }

    if (sub_1952CB634(*(a1 + 1872), v15))
    {
      return 0;
    }

LABEL_42:
    v16 = *(a1 + 1880);
    v17 = *(a2 + 1880);
    if (v16 == v17)
    {
      if (!v16)
      {
        goto LABEL_48;
      }
    }

    else
    {
      result = 0;
      if (!v16 || !v17)
      {
        return result;
      }
    }

    if (sub_1952CB634(*(a1 + 1880), v17))
    {
      return 0;
    }

LABEL_48:
    v18 = *(a1 + 1888);
    v19 = *(a2 + 1888);
    if (v18 == v19)
    {
      if (!v18)
      {
LABEL_54:
        result = icu::Locale::operator==(a1 + 360, a2 + 360);
        if (!result)
        {
          return result;
        }

        v20 = -1224;
        while ((sub_1952CB634(a1 + v20 + 1872, a2 + v20 + 1872) & 1) == 0 && (sub_1952CB634(a1 + v20 + 1936, a2 + v20 + 1936) & 1) == 0 && *(a1 + v20 + 2000) == *(a2 + v20 + 2000))
        {
          v20 += 136;
          if (!v20)
          {
            if (*(a1 + 1896) != *(a2 + 1896))
            {
              return 0;
            }

            return *(a1 + 1900) == *(a2 + 1900);
          }
        }

        return 0;
      }
    }

    else
    {
      result = 0;
      if (!v18 || !v19)
      {
        return result;
      }
    }

    if (sub_1952CB634(*(a1 + 1888), v19))
    {
      return 0;
    }

    goto LABEL_54;
  }

  if ((v9 & 0x8000) != 0)
  {
    v10 = *(a1 + 596);
  }

  else
  {
    v10 = v9 >> 5;
  }

  result = 0;
  v11 = *(a2 + 592);
  if ((v11 & 0x8000u) == 0)
  {
    v12 = v11 >> 5;
  }

  else
  {
    v12 = *(a2 + 596);
  }

  if ((v11 & 1) == 0 && v10 == v12)
  {
    v13 = (v11 & 2) != 0 ? (a2 + 594) : *(a2 + 608);
    result = icu::UnicodeString::doEquals(a1 + 584, v13, v10);
    if (result)
    {
      goto LABEL_36;
    }
  }

  return result;
}

icu::UnicodeString *icu::DateIntervalFormat::format(icu::DateIntervalFormat *this, const icu::Formattable *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 > 0)
  {
    return a3;
  }

  {
    *a5 = U_ILLEGAL_ARGUMENT_ERROR;
    return a3;
  }

  return icu::DateIntervalFormat::format(this, v11, a3, a4, a5);
}

icu::UnicodeString *icu::DateIntervalFormat::format(icu::DateIntervalFormat *this, const icu::DateInterval *a2, icu::UnicodeString *a3, icu::FieldPosition *a4, UErrorCode *a5)
{
  if (*a5 <= 0)
  {
    if (*(this + 42) && *(this + 41))
    {
      memset(v11, 0, sizeof(v11));
      sub_195325204(v11, a4);
      sub_1953252D0(v11, 1);
      umtx_lock(&unk_1EAEC9CF0);
      a3 = icu::DateIntervalFormat::formatIntervalImpl(this, a2, a3, &v10, v11, a5);
      umtx_unlock(&unk_1EAEC9CF0);
      nullsub_30();
    }

    else
    {
      *a5 = U_INVALID_STATE_ERROR;
    }
  }

  return a3;
}

icu::UnicodeString *icu::DateIntervalFormat::formatIntervalImpl(icu::DateIntervalFormat *this, const icu::DateInterval *a2, icu::UnicodeString *a3, BOOL *a4, icu::FieldPositionHandler *a5, UErrorCode *a6)
{
  if (*a6 > 0)
  {
    return a3;
  }

  v9 = *(this + 43);
  if (!v9 || !*(this + 44))
  {
    *a6 = U_INVALID_STATE_ERROR;
    return a3;
  }

  icu::Calendar::setTimeInMillis(v9, *(a2 + 1), a6);
  icu::Calendar::setTimeInMillis(*(this + 44), *(a2 + 2), a6);
  v13 = *(this + 43);
  v14 = *(this + 44);

  return icu::DateIntervalFormat::formatImpl(this, v13, v14, a3, a4, a5, a6);
}

void icu::DateIntervalFormat::formatToValue(UErrorCode *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  if (*a3 < 1)
  {
    operator new();
  }

  *a4 = &unk_1F093A230;
  *(a4 + 8) = 0;
  *(a4 + 16) = v5;
}

icu::UnicodeString *icu::DateIntervalFormat::format(icu::DateIntervalFormat *this, icu::Calendar *a2, icu::Calendar *a3, icu::UnicodeString *a4, icu::FieldPosition *a5, UErrorCode *a6)
{
  memset(v14, 0, sizeof(v14));
  sub_195325204(v14, a5);
  sub_1953252D0(v14, 1);
  umtx_lock(&unk_1EAEC9CF0);
  v11 = icu::DateIntervalFormat::formatImpl(this, a2, a3, a4, &v13, v14, a6);
  umtx_unlock(&unk_1EAEC9CF0);
  nullsub_30();
  return v11;
}

icu::UnicodeString *icu::DateIntervalFormat::formatImpl(icu::DateIntervalFormat *this, icu::Calendar *a2, icu::Calendar *a3, icu::UnicodeString *a4, BOOL *a5, icu::FieldPositionHandler *a6, UErrorCode *a7)
{
  v76 = *MEMORY[0x1E69E9840];
  if (*a7 <= 0)
  {
    v13 = a2;
    *a5 = -1;
    if (!(*(*a2 + 40))(a2, a3))
    {
      *a7 = U_ILLEGAL_ARGUMENT_ERROR;
      return a4;
    }

    v15 = icu::Calendar::get(v13, 0, a7);
    v16 = 0;
    if (v15 != icu::Calendar::get(a3, 0, a7))
    {
LABEL_97:
      if (*a7 > 0)
      {
        return a4;
      }

      v70 = 0;
      (*(**(this + 42) + 200))(*(this + 42), *(this + 475), &v70);
      v62 = 1;
      if (((1 << v16) & 0x7600) == 0)
      {
        if (v16 == 25)
        {
          return icu::SimpleDateFormat::_format(*(this + 42), v13, a4, a6, a7);
        }

        v62 = 0;
      }

      v63 = this + 136 * icu::DateIntervalInfo::calendarFieldToIntervalIndex(v16, a7);
      v64 = v63 + 648;
      if (*(v63 + 328) > 0x1Fu)
      {
        v65 = v63[776];
        if (v63[776])
        {
          v66 = a3;
        }

        else
        {
          v66 = v13;
        }

        *a5 = v63[776] != 0;
        v72 = 0u;
        v73 = 0u;
        v75 = 0;
        v74 = 0u;
        v71 = &unk_1F0935D00;
        LOWORD(v72) = 2;
        (*(**(this + 42) + 240))(*(this + 42), &v71);
        (*(**(this + 42) + 256))();
        icu::SimpleDateFormat::_format(*(this + 42), v66, a4, a6, a7);
        if (*(v64 + 36) >= 0x20u)
        {
          if (!v65)
          {
            v13 = a3;
          }

          (*(**(this + 42) + 256))(*(this + 42), v64 + 64);
          v70 = 0;
          (*(**(this + 42) + 200))(*(this + 42), 256, &v70);
          icu::SimpleDateFormat::_format(*(this + 42), v13, a4, a6, a7);
        }

        (*(**(this + 42) + 256))(*(this + 42), &v71);
        goto LABEL_111;
      }

      if (*(v63 + 360) > 0x1Fu)
      {
        v72 = 0u;
        v73 = 0u;
        v75 = 0;
        v74 = 0u;
        v71 = &unk_1F0935D00;
        LOWORD(v72) = 2;
        (*(**(this + 42) + 240))(*(this + 42), &v71);
        (*(**(this + 42) + 256))();
        icu::DateIntervalFormat::fallbackFormat(this, v13, a3, v62, a4, a5, a6, a7);
        icu::UnicodeString::operator=(a4, a4);
        (*(**(this + 42) + 256))();
LABEL_111:
        icu::UnicodeString::~UnicodeString(v67, &v71);
        return a4;
      }

      if (!icu::SimpleDateFormat::isFieldUnitIgnored(*(this + 42), v16))
      {
        icu::DateIntervalFormat::fallbackFormat(this, v13, a3, v62, a4, a5, a6, a7);
        return a4;
      }

      return icu::SimpleDateFormat::_format(*(this + 42), v13, a4, a6, a7);
    }

    v17 = icu::Calendar::get(v13, 1u, a7);
    if (v17 != icu::Calendar::get(a3, 1u, a7))
    {
      if (*(this + 474) != 1 || (*(this + 296) < 0 ? (v21 = *(this + 149)) : (v21 = *(this + 296) >> 5), (icu::UnicodeString::doIndexOf(this + 584, 0x64u, 0, v21) & 0x80000000) != 0 || (*(this + 296) < 0 ? (v25 = *(this + 149)) : (v25 = *(this + 296) >> 5), (icu::UnicodeString::doIndexOf(this + 584, 0x79u, 0, v25) & 0x80000000) == 0)))
      {
        v16 = 1;
        goto LABEL_97;
      }

      TimeInMillis = icu::Calendar::getTimeInMillis(v13, a7);
      v27 = icu::Calendar::getTimeInMillis(a3, a7);
      v28 = icu::Calendar::get(v13, 5u, a7);
      v29 = icu::Calendar::get(a3, 5u, a7);
      v16 = 1;
      (*(*v13 + 56))(v13, 2, 1, a7);
      if (TimeInMillis < v27)
      {
        v30 = icu::Calendar::getTimeInMillis(v13, a7);
        if (v28 <= v29 || v30 <= v27)
        {
          v16 = 1;
        }

        else
        {
          v16 = 5;
        }
      }

      goto LABEL_86;
    }

    v18 = icu::Calendar::get(v13, 2u, a7);
    if (v18 == icu::Calendar::get(a3, 2u, a7))
    {
      v19 = icu::Calendar::get(v13, 5u, a7);
      if (v19 == icu::Calendar::get(a3, 5u, a7))
      {
        if (*(this + 296) < 0)
        {
          v20 = *(this + 149);
        }

        else
        {
          v20 = *(this + 296) >> 5;
        }

        if ((icu::UnicodeString::doIndexOf(this + 584, 0x42u, 0, v20) & 0x80000000) != 0)
        {
          v16 = 9;
          v42 = icu::Calendar::get(v13, 9u, a7);
          if (v42 == icu::Calendar::get(a3, 9u, a7))
          {
            v16 = 10;
            v43 = icu::Calendar::get(v13, 0xAu, a7);
            if (v43 == icu::Calendar::get(a3, 0xAu, a7))
            {
              v16 = 12;
              v44 = icu::Calendar::get(v13, 0xCu, a7);
              if (v44 == icu::Calendar::get(a3, 0xCu, a7))
              {
                v16 = 13;
                v45 = icu::Calendar::get(v13, 0xDu, a7);
                if (v45 == icu::Calendar::get(a3, 0xDu, a7))
                {
                  v46 = icu::Calendar::get(v13, 0xEu, a7);
                  if (v46 == icu::Calendar::get(a3, 0xEu, a7))
                  {
                    v16 = 25;
                  }

                  else
                  {
                    v16 = 14;
                  }
                }
              }
            }
          }
        }

        else
        {
          v32 = sub_1952EB9C0((this + 360), a7);
          v33 = icu::Calendar::get(v13, 0xBu, a7);
          v34 = icu::Calendar::get(a3, 0xBu, a7);
          if (v33 == v34)
          {
            v35 = 12;
          }

          else
          {
            v35 = 10;
          }

          if (*(v32 + 4 + 4 * v33) == *(v32 + 4 + 4 * v34))
          {
            v16 = v35;
          }

          else
          {
            v16 = 9;
          }
        }

        goto LABEL_97;
      }

      if (*(this + 474) == 2)
      {
        v24 = *(this + 296) < 0 ? *(this + 149) : *(this + 296) >> 5;
        if ((icu::UnicodeString::doIndexOf(this + 584, 0x48u, 0, v24) & 0x80000000) == 0 || (*(this + 296) < 0 ? (v49 = *(this + 149)) : (v49 = *(this + 296) >> 5), (icu::UnicodeString::doIndexOf(this + 584, 0x68u, 0, v49) & 0x80000000) == 0 || (*(this + 296) < 0 ? (v51 = *(this + 149)) : (v51 = *(this + 296) >> 5), (icu::UnicodeString::doIndexOf(this + 584, 0x6Au, 0, v51) & 0x80000000) == 0)))
        {
          v56 = icu::Calendar::getTimeInMillis(v13, a7);
          v57 = icu::Calendar::getTimeInMillis(a3, a7);
          v58 = icu::Calendar::get(v13, 0xAu, a7);
          v59 = icu::Calendar::get(a3, 0xAu, a7);
          (*(*v13 + 56))(v13, 11, 12, a7);
          if (v56 < v57)
          {
            v60 = icu::Calendar::getTimeInMillis(v13, a7);
            icu::Calendar::setTimeInMillis(v13, v56, a7);
            v16 = 5;
            if (v60 > v57 && v58 > v59)
            {
              v61 = *(this + 296) < 0 ? *(this + 149) : *(this + 296) >> 5;
              v16 = 9;
              if ((icu::UnicodeString::doIndexOf(this + 584, 0x42u, 0, v61) & 0x80000000) == 0)
              {
                v68 = sub_1952EB9C0((this + 360), a7);
                v69 = icu::Calendar::get(v13, 0xBu, a7);
                if (*(v68 + 4 + 4 * v69) == *(v68 + 4 + 4 * icu::Calendar::get(a3, 0xBu, a7)))
                {
                  v16 = 10;
                }

                else
                {
                  v16 = 9;
                }
              }
            }

            goto LABEL_97;
          }

          icu::Calendar::setTimeInMillis(v13, v56, a7);
        }
      }

      v16 = 5;
      goto LABEL_97;
    }

    v22 = *(this + 474);
    if (v22 == 1)
    {
      if (*(this + 296) < 0)
      {
        v23 = *(this + 149);
      }

      else
      {
        v23 = *(this + 296) >> 5;
      }

      if ((icu::UnicodeString::doIndexOf(this + 584, 0x64u, 0, v23) & 0x80000000) == 0)
      {
        TimeInMillis = icu::Calendar::getTimeInMillis(v13, a7);
        v36 = icu::Calendar::getTimeInMillis(a3, a7);
        v37 = icu::Calendar::get(v13, 5u, a7);
        v38 = icu::Calendar::get(a3, 5u, a7);
        v16 = 2;
        (*(*v13 + 56))(v13, 2, 1, a7);
        if (TimeInMillis < v36)
        {
          v39 = icu::Calendar::getTimeInMillis(v13, a7);
          v40 = v37 <= v38 || v39 <= v36;
          v41 = 5;
LABEL_83:
          if (v40)
          {
            v16 = 2;
          }

          else
          {
            v16 = v41;
          }

          goto LABEL_86;
        }

        goto LABEL_86;
      }

      v22 = *(this + 474);
    }

    if (v22 != 2 || (*(this + 296) < 0 ? (v47 = *(this + 149)) : (v47 = *(this + 296) >> 5), (icu::UnicodeString::doIndexOf(this + 584, 0x48u, 0, v47) & 0x80000000) != 0 && (*(this + 296) < 0 ? (v48 = *(this + 149)) : (v48 = *(this + 296) >> 5), (icu::UnicodeString::doIndexOf(this + 584, 0x68u, 0, v48) & 0x80000000) != 0 && (*(this + 296) < 0 ? (v50 = *(this + 149)) : (v50 = *(this + 296) >> 5), (icu::UnicodeString::doIndexOf(this + 584, 0x6Au, 0, v50) & 0x80000000) != 0))))
    {
      v16 = 2;
      goto LABEL_97;
    }

    TimeInMillis = icu::Calendar::getTimeInMillis(v13, a7);
    v52 = icu::Calendar::getTimeInMillis(a3, a7);
    v53 = icu::Calendar::get(v13, 0xAu, a7);
    v54 = icu::Calendar::get(a3, 0xAu, a7);
    (*(*v13 + 56))(v13, 11, 12, a7);
    v16 = 2;
    if (TimeInMillis < v52)
    {
      v55 = icu::Calendar::getTimeInMillis(v13, a7);
      v40 = v53 <= v54 || v55 <= v52;
      v41 = 9;
      goto LABEL_83;
    }

LABEL_86:
    icu::Calendar::setTimeInMillis(v13, TimeInMillis, a7);
    goto LABEL_97;
  }

  return a4;
}

void icu::DateIntervalFormat::formatToValue(UErrorCode *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = *a4;
  if (*a4 < 1)
  {
    operator new();
  }

  *a5 = &unk_1F093A230;
  *(a5 + 8) = 0;
  *(a5 + 16) = v6;
}

icu::UnicodeString *icu::DateIntervalFormat::fallbackFormat(icu::DateIntervalFormat *this, icu::Calendar *a2, icu::Calendar *a3, int a4, icu::UnicodeString *a5, signed __int8 *a6, icu::FieldPositionHandler *a7, UErrorCode *a8)
{
  v47 = *MEMORY[0x1E69E9840];
  if (*a8 <= 0)
  {
    if (a4 && *(this + 234) && *(this + 235))
    {
      v42 = 0u;
      v43 = 0u;
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      v15 = *(this + 236);
      *(&v42 + 1) = &unk_1F0935D00;
      LOWORD(v43) = 2;
      icu::SimpleFormatter::applyPatternMinMaxArguments(&v42, v15, 2, 2, 1, a8);
      v16 = *a8;
      if (v16 <= 0)
      {
        __b = 0;
        memset(v40, 0, 64);
        sub_195311838(v40, &__b, &v42, 2);
        v36 = 0u;
        v39 = 0;
        v38 = 0u;
        v37 = 0u;
        v35 = &unk_1F0935D00;
        LOWORD(v36) = 2;
        (*(**(this + 42) + 240))(*(this + 42), &v35);
        v31 = 0;
        if (__b >= SHIDWORD(__b))
        {
          icu::UnicodeString::tempSubString(v32, v40, 0, SHIDWORD(__b));
          if ((v33 & 0x8000u) == 0)
          {
            v22 = v33 >> 5;
          }

          else
          {
            v22 = v34;
          }

          icu::UnicodeString::doAppend(a5, v32, 0, v22);
          icu::UnicodeString::~UnicodeString(v23, v32);
          (*(**(this + 42) + 256))();
          icu::SimpleDateFormat::_format(*(this + 42), a2, a5, a7, a8);
          icu::UnicodeString::tempSubString(v32, v40, SHIDWORD(__b), __b - HIDWORD(__b));
          if ((v33 & 0x8000u) == 0)
          {
            v24 = v33 >> 5;
          }

          else
          {
            v24 = v34;
          }

          icu::UnicodeString::doAppend(a5, v32, 0, v24);
          icu::UnicodeString::~UnicodeString(v25, v32);
          (*(**(this + 42) + 256))();
          (*(**(this + 42) + 200))(*(this + 42), 256, &v31);
          icu::DateIntervalFormat::fallbackFormatRange(this, a2, a3, a5, a6, a7, a8);
          v21 = __b;
        }

        else
        {
          icu::UnicodeString::tempSubString(v32, v40, 0, __b);
          if ((v33 & 0x8000u) == 0)
          {
            v17 = v33 >> 5;
          }

          else
          {
            v17 = v34;
          }

          icu::UnicodeString::doAppend(a5, v32, 0, v17);
          icu::UnicodeString::~UnicodeString(v18, v32);
          (*(**(this + 42) + 256))();
          icu::DateIntervalFormat::fallbackFormatRange(this, a2, a3, a5, a6, a7, a8);
          icu::UnicodeString::tempSubString(v32, v40, __b, HIDWORD(__b) - __b);
          if ((v33 & 0x8000u) == 0)
          {
            v19 = v33 >> 5;
          }

          else
          {
            v19 = v34;
          }

          icu::UnicodeString::doAppend(a5, v32, 0, v19);
          icu::UnicodeString::~UnicodeString(v20, v32);
          (*(**(this + 42) + 256))();
          (*(**(this + 42) + 200))(*(this + 42), 256, &v31);
          icu::SimpleDateFormat::_format(*(this + 42), a2, a5, a7, a8);
          v21 = HIDWORD(__b);
        }

        icu::UnicodeString::tempSubString(v32, v40, v21, v21 ^ 0x7FFFFFFF);
        if ((v33 & 0x8000u) == 0)
        {
          v26 = v33 >> 5;
        }

        else
        {
          v26 = v34;
        }

        icu::UnicodeString::doAppend(a5, v32, 0, v26);
        icu::UnicodeString::~UnicodeString(v27, v32);
        (*(**(this + 42) + 256))(*(this + 42), &v35);
        icu::UnicodeString::~UnicodeString(v28, &v35);
        icu::UnicodeString::~UnicodeString(v29, v40);
      }

      icu::SimpleFormatter::~SimpleFormatter(&v42, v16);
    }

    else
    {
      icu::DateIntervalFormat::fallbackFormatRange(this, a2, a3, a5, a6, a7, a8);
    }
  }

  return a5;
}

void icu::DateIntervalFormat::setDateIntervalInfo(icu::DateIntervalFormat *this, const icu::DateIntervalInfo *a2, UErrorCode *a3)
{
  v3 = *(this + 41);
  if (v3)
  {
    icu::DateIntervalInfo::~DateIntervalInfo(v3);
    MEMORY[0x19A8B2600]();
  }

  operator new();
}

icu::SimpleDateFormat **icu::DateIntervalFormat::initializePattern(icu::SimpleDateFormat **this, UErrorCode *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (*a2 <= 0)
  {
    v3 = this;
    SmpFmtLocale = icu::SimpleDateFormat::getSmpFmtLocale(this[42]);
    if (*(v3 + 296) > 0x1Fu || (v54 = 0u, v57 = 0, v56 = 0u, v55 = 0u, v53 = &unk_1F0935D00, LOWORD(v54) = 2, (*(*v3[42] + 240))(v3[42], &v53), icu::DateTimePatternGenerator::staticGetSkeleton(&v48, &v53), icu::UnicodeString::operator=((v3 + 73), &v48), icu::UnicodeString::~UnicodeString(v5, &v48), v6 = *a2, this = icu::UnicodeString::~UnicodeString(v7, &v53), v6 <= U_ZERO_ERROR))
    {
      for (i = 97; i != 250; i += 17)
      {
        LOBYTE(v3[i]) = icu::DateIntervalInfo::getDefaultOrder(v3[41]);
      }

      v54 = 0u;
      v57 = 0;
      v56 = 0u;
      v55 = 0u;
      v52 = 0;
      v53 = &unk_1F0935D00;
      LOWORD(v54) = 2;
      v49 = 0u;
      v51 = 0u;
      v50 = 0u;
      v47 = 0;
      v48 = &unk_1F0935D00;
      LOWORD(v49) = 2;
      v44 = 0u;
      v46 = 0u;
      v45 = 0u;
      v43 = &unk_1F0935D00;
      LOWORD(v44) = 2;
      v39 = 0u;
      v42 = 0;
      v41 = 0u;
      v40 = 0u;
      v38 = &unk_1F0935D00;
      LOWORD(v39) = 2;
      memset(v37, 0, sizeof(v37));
      icu::DateIntervalFormat::normalizeHourMetacharacters(v37, v3, v3 + 73);
      icu::DateIntervalFormat::getDateTimeSkeleton(v37, &v53, &v38, &v48, &v43, v9);
      v10 = v49 >> 5;
      if ((v49 & 0x8000u) != 0)
      {
        v10 = DWORD1(v49);
      }

      if (v10 >= 1)
      {
        v11 = v54 >> 5;
        if ((v54 & 0x8000u) != 0)
        {
          v11 = DWORD1(v54);
        }

        if (v11 >= 1)
        {
          BaseName = icu::Locale::getBaseName(SmpFmtLocale);
          v13 = ures_open(0, BaseName, a2);
          ures_getByKey(v13, "calendar", v13, a2);
          ures_getByKeyWithFallback(v13, "gregorian", v13, a2);
          ures_getByKeyWithFallback(v13, "DateTimePatterns", v13, a2);
          LODWORD(v33) = 0;
          ures_getStringByIndex(v13, 8, &v33, a2);
          if (*a2 <= 0 && v33 >= 3)
          {
            operator new();
          }

          if (v13)
          {
            ures_close(v13);
          }
        }
      }

      v14 = icu::DateIntervalFormat::setSeparateDateTimePtn(v3, &v38, &v43);
      LODWORD(v15) = v49 >> 5;
      if ((v49 & 0x8000u) == 0)
      {
        v15 = v15;
      }

      else
      {
        v15 = DWORD1(v49);
      }

      if (v14)
      {
        if (!v15)
        {
LABEL_56:
          icu::UnicodeString::~UnicodeString(v15, v37);
          icu::UnicodeString::~UnicodeString(v28, &v38);
          icu::UnicodeString::~UnicodeString(v29, &v43);
          icu::UnicodeString::~UnicodeString(v30, &v48);
          return icu::UnicodeString::~UnicodeString(v31, &v53);
        }

        v16 = v54 >> 5;
        if ((v54 & 0x8000u) != 0)
        {
          v16 = DWORD1(v54);
        }

        if (v16)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          icu::UnicodeString::UnicodeString(&v33, v3 + 73);
          if ((v54 & 0x8000u) == 0)
          {
            v17 = v54 >> 5;
          }

          else
          {
            v17 = DWORD1(v54);
          }

          if (icu::UnicodeString::doIndexOf(&v53, 0x64u, 0, v17) == -1)
          {
            LOWORD(v32[0]) = 100;
            icu::UnicodeString::doReplace(&v33, 0, 0, v32, 0, 1);
            icu::DateIntervalFormat::setFallbackPattern(v3, 5, &v33, a2);
          }

          if ((v54 & 0x8000u) == 0)
          {
            v18 = v54 >> 5;
          }

          else
          {
            v18 = DWORD1(v54);
          }

          if (icu::UnicodeString::doIndexOf(&v53, 0x4Du, 0, v18) == -1)
          {
            LOWORD(v32[0]) = 77;
            icu::UnicodeString::doReplace(&v33, 0, 0, v32, 0, 1);
            icu::DateIntervalFormat::setFallbackPattern(v3, 2, &v33, a2);
          }

          if ((v54 & 0x8000u) == 0)
          {
            v19 = v54 >> 5;
          }

          else
          {
            v19 = DWORD1(v54);
          }

          if (icu::UnicodeString::doIndexOf(&v53, 0x79u, 0, v19) == -1)
          {
            LOWORD(v32[0]) = 121;
            icu::UnicodeString::doReplace(&v33, 0, 0, v32, 0, 1);
            icu::DateIntervalFormat::setFallbackPattern(v3, 1, &v33, a2);
          }

          if ((v54 & 0x8000u) == 0)
          {
            v20 = v54 >> 5;
          }

          else
          {
            v20 = DWORD1(v54);
          }

          if (icu::UnicodeString::doIndexOf(&v53, 0x47u, 0, v20) == -1)
          {
            LOWORD(v32[0]) = 71;
            icu::UnicodeString::doReplace(&v33, 0, 0, v32, 0, 1);
            icu::DateIntervalFormat::setFallbackPattern(v3, 0, &v33, a2);
          }

          v21 = v3[236];
          if (v21)
          {
            memset(v32, 0, sizeof(v32));
            icu::DateFormat::getBestPattern(SmpFmtLocale, &v53, a2, v32);
            icu::DateIntervalFormat::concatSingleDate2TimeInterval(v3, v3[236], v32, 9, a2);
            icu::DateIntervalFormat::concatSingleDate2TimeInterval(v3, v3[236], v32, 10, a2);
            icu::DateIntervalFormat::concatSingleDate2TimeInterval(v3, v3[236], v32, 12, a2);
            icu::UnicodeString::~UnicodeString(v22, v32);
          }

LABEL_55:
          icu::UnicodeString::~UnicodeString(v21, &v33);
          goto LABEL_56;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_56;
        }

        LODWORD(v15) = v54 >> 5;
        v15 = (v54 & 0x8000u) == 0 ? v15 : DWORD1(v54);
        if (v15)
        {
          goto LABEL_56;
        }
      }

      icu::UnicodeString::doReplace(&v48, 0, 0, &unk_19548CE4E, 0, 0xFFFFFFFFLL);
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      icu::DateFormat::getBestPattern(SmpFmtLocale, &v48, a2, &v33);
      v21 = *a2;
      if (v21 <= 0)
      {
        DefaultOrder = icu::DateIntervalInfo::getDefaultOrder(v3[41]);
        icu::DateIntervalFormat::setPatternInfo(v3, 5, 0, &v33, DefaultOrder);
        v24 = icu::DateIntervalInfo::getDefaultOrder(v3[41]);
        icu::DateIntervalFormat::setPatternInfo(v3, 2, 0, &v33, v24);
        v25 = icu::DateIntervalInfo::getDefaultOrder(v3[41]);
        icu::DateIntervalFormat::setPatternInfo(v3, 1, 0, &v33, v25);
        LOWORD(v32[0]) = 71;
        icu::UnicodeString::doReplace(&v48, 0, 0, v32, 0, 1);
        icu::DateFormat::getBestPattern(SmpFmtLocale, &v48, a2, v32);
        icu::UnicodeString::operator=(&v33, v32);
        icu::UnicodeString::~UnicodeString(v26, v32);
        v21 = *a2;
        if (v21 <= 0)
        {
          v27 = icu::DateIntervalInfo::getDefaultOrder(v3[41]);
          icu::DateIntervalFormat::setPatternInfo(v3, 0, 0, &v33, v27);
        }
      }

      goto LABEL_55;
    }
  }

  return this;
}

uint64_t icu::DateIntervalFormat::adoptTimeZone(void *a1, uint64_t a2)
{
  v4 = a1[42];
  if (v4)
  {
    (*(*v4 + 184))(v4, a2);
  }

  v5 = a1[43];
  if (v5)
  {
    icu::Calendar::setTimeZone(v5, a2);
  }

  result = a1[44];
  if (result)
  {

    return icu::Calendar::setTimeZone(result, a2);
  }

  return result;
}

uint64_t icu::DateIntervalFormat::setTimeZone(void *a1, uint64_t a2)
{
  v4 = a1[42];
  if (v4)
  {
    (*(*v4 + 192))(v4, a2);
  }

  v5 = a1[43];
  if (v5)
  {
    icu::Calendar::setTimeZone(v5, a2);
  }

  result = a1[44];
  if (result)
  {

    return icu::Calendar::setTimeZone(result, a2);
  }

  return result;
}

uint64_t icu::DateIntervalFormat::getTimeZone(icu::DateIntervalFormat *this)
{
  if (*(this + 42))
  {
    umtx_lock(&unk_1EAEC9CF0);
    v3 = (*(**(this + 42) + 176))(*(this + 42));
    umtx_unlock(&unk_1EAEC9CF0);
    return v3;
  }

  else
  {

    return icu::TimeZone::createDefault(this);
  }
}

uint64_t icu::DateIntervalFormat::setAttribute(uint64_t result, int a2, int a3, int *a4)
{
  if (*a4 <= 0)
  {
    if (a2)
    {
      *a4 = 1;
    }

    else
    {
      *(result + 1896) = a3;
    }
  }

  return result;
}

uint64_t icu::DateIntervalFormat::setContext(uint64_t result, int a2, int *a3)
{
  if (*a3 <= 0)
  {
    if ((a2 & 0xFFFFFF00) == 0x100)
    {
      *(result + 1900) = a2;
    }

    else
    {
      *a3 = 1;
    }
  }

  return result;
}

uint64_t icu::DateIntervalFormat::getContext(uint64_t a1, int a2, int *a3)
{
  if (*a3 > 0)
  {
    return 0;
  }

  if (a2 == 1)
  {
    return *(a1 + 1900);
  }

  result = 0;
  *a3 = 1;
  return result;
}

UChar **icu::DateIntervalFormat::DateIntervalFormat(UChar **this, const icu::Locale *a2, uint64_t ***a3, UErrorCode *a4, UErrorCode *a5)
{
  v10 = icu::Format::Format(this);
  *v10 = &unk_1F093A270;
  *(v10 + 328) = 0u;
  *(v10 + 344) = 0u;
  icu::Locale::Locale((v10 + 360), a2);
  v12 = 0;
  this[73] = &unk_1F0935D00;
  *(this + 296) = 2;
  do
  {
    v13 = &this[v12];
    v13[81] = &unk_1F0935D00;
    *(v13 + 328) = 2;
    v13[89] = &unk_1F0935D00;
    *(v13 + 360) = 2;
    v12 += 17;
  }

  while (v12 != 153);
  this[236] = 0;
  *(this + 117) = 0u;
  this[237] = 0x10000000000;
  v20 = a3;
  if (!a3 && *a5 <= 0)
  {
    *a5 = U_MEMORY_ALLOCATION_ERROR;
  }

  InstanceForSkeleton = icu::DateFormat::createInstanceForSkeleton(a4, a2, a5, v11);
  v15 = InstanceForSkeleton;
  v16 = *a5;
  if (InstanceForSkeleton || v16 > 0)
  {
    if (v16 <= 0)
    {
      icu::UnicodeString::operator=(this + 73, a4);
      v20 = 0;
      this[41] = a3;
      this[42] = v15;
      if ((*(*v15 + 128))(v15))
      {
        v17 = (*(*this[42] + 128))(this[42]);
        this[43] = (*(*v17 + 24))(v17);
        v18 = (*(*this[42] + 128))(this[42]);
        this[44] = (*(*v18 + 24))(v18);
      }

      icu::DateIntervalFormat::initializePattern(this, a5);
    }

    else if (InstanceForSkeleton)
    {
      (*(*InstanceForSkeleton + 8))(InstanceForSkeleton);
    }
  }

  else
  {
    *a5 = U_MEMORY_ALLOCATION_ERROR;
  }

  sub_195311C74(&v20);
  return this;
}

void *icu::DateIntervalFormat::normalizeHourMetacharacters@<X0>(void *__return_ptr a1@<X8>, icu::DateIntervalFormat *this@<X0>, UChar **a3@<X1>)
{
  v50 = *MEMORY[0x1E69E9840];
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  icu::UnicodeString::UnicodeString(a1, a3);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *(a1 + 4);
  v13 = a1 + 10;
  if ((v12 & 2) == 0)
  {
    v13 = a1[3];
  }

  if ((v12 & 0x8000) != 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  result = (v12 >> 5);
  if (v5 < v12 >> 5)
  {
    do
    {
      if (result <= v5)
      {
        goto LABEL_20;
      }

      v15 = *&v13[2 * v5];
      v16 = v15 - 66;
      if ((v15 - 66) > 0x29)
      {
        goto LABEL_20;
      }

      if (((1 << v16) & 0x34000000342) != 0)
      {
        if (v6)
        {
          v8 = v8;
        }

        else
        {
          v6 = *&v13[2 * v5];
          v8 = v5;
        }

        v9 = (v9 + 1);
        goto LABEL_21;
      }

      if (((1 << v16) & 0x180000001) != 0)
      {
        if (v7)
        {
          v10 = v10;
        }

        else
        {
          v7 = *&v13[2 * v5];
          v10 = v5;
        }

        v11 = (v11 + 1);
      }

      else
      {
LABEL_20:
        if (v6 && v7)
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      ++v5;
      if ((v12 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

LABEL_6:
      result = *(a1 + 3);
    }

    while (v5 < *(a1 + 3));
  }

  if (v6)
  {
LABEL_24:
    v43 = 0;
    memset(v49, 0, sizeof(v49));
    icu::UnicodeString::UnicodeString(&v45, v6);
    icu::DateFormat::getBestPattern((this + 360), &v45, &v43, v49);
    icu::UnicodeString::~UnicodeString(v17, &v45);
    if (v43 <= 0)
    {
      if ((SWORD4(v49[0]) & 0x8000u) == 0)
      {
        v22 = WORD4(v49[0]) >> 5;
      }

      else
      {
        v22 = HIDWORD(v49[0]);
      }

      v23 = icu::UnicodeString::doIndexOf(v49, 0x27u, 0, v22);
      if (v23 != -1)
      {
        v24 = v23;
        do
        {
          if (v24 >= -1)
          {
            v27 = v24 + 1;
            if ((WORD4(v49[0]) & 0x8000) != 0)
            {
              v26 = HIDWORD(v49[0]);
              if (SHIDWORD(v49[0]) >= v27)
              {
                v25 = v24 + 1;
              }

              else
              {
                v25 = HIDWORD(v49[0]);
              }
            }

            else
            {
              v26 = WORD4(v49[0]) >> 5;
              if (v26 >= v27)
              {
                v25 = v24 + 1;
              }

              else
              {
                v25 = WORD4(v49[0]) >> 5;
              }
            }
          }

          else
          {
            v25 = 0;
            if ((WORD4(v49[0]) & 0x8000) != 0)
            {
              v26 = HIDWORD(v49[0]);
            }

            else
            {
              v26 = WORD4(v49[0]) >> 5;
            }
          }

          v28 = icu::UnicodeString::doIndexOf(v49, 0x27u, v25, v26 - v25);
          if (v28 == -1)
          {
            v29 = 1;
          }

          else
          {
            v29 = (v28 - v24 + 1);
          }

          *&v45 = &unk_1F0935D00;
          WORD4(v45) = 2;
          icu::UnicodeString::doReplace(v49, v24, v29, &v45, 0, 0);
          icu::UnicodeString::~UnicodeString(v30, &v45);
          if ((SWORD4(v49[0]) & 0x8000u) == 0)
          {
            v31 = WORD4(v49[0]) >> 5;
          }

          else
          {
            v31 = HIDWORD(v49[0]);
          }

          v24 = icu::UnicodeString::doIndexOf(v49, 0x27u, 0, v31);
        }

        while (v24 != -1);
      }

      if ((SWORD4(v49[0]) & 0x8000u) == 0)
      {
        v32 = WORD4(v49[0]) >> 5;
      }

      else
      {
        v32 = HIDWORD(v49[0]);
      }

      v33 = 104;
      if (icu::UnicodeString::doIndexOf(v49, 0x68u, 0, v32) == -1)
      {
        v34 = (SWORD4(v49[0]) & 0x8000u) == 0 ? WORD4(v49[0]) >> 5 : HIDWORD(v49[0]);
        v33 = 75;
        if (icu::UnicodeString::doIndexOf(v49, 0x4Bu, 0, v34) == -1)
        {
          if ((SWORD4(v49[0]) & 0x8000u) == 0)
          {
            v35 = WORD4(v49[0]) >> 5;
          }

          else
          {
            v35 = HIDWORD(v49[0]);
          }

          if (icu::UnicodeString::doIndexOf(v49, 0x6Bu, 0, v35) == -1)
          {
            v33 = 72;
          }

          else
          {
            v33 = 107;
          }
        }
      }

      if ((SWORD4(v49[0]) & 0x8000u) == 0)
      {
        v36 = WORD4(v49[0]) >> 5;
      }

      else
      {
        v36 = HIDWORD(v49[0]);
      }

      v37 = 98;
      if (icu::UnicodeString::doIndexOf(v49, 0x62u, 0, v36) == -1)
      {
        v38 = (SWORD4(v49[0]) & 0x8000u) == 0 ? WORD4(v49[0]) >> 5 : HIDWORD(v49[0]);
        v37 = 66;
        if (icu::UnicodeString::doIndexOf(v49, 0x42u, 0, v38) == -1)
        {
          if (v7)
          {
            v37 = v7;
          }

          else
          {
            v37 = 97;
          }
        }
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      icu::UnicodeString::UnicodeString(&v45, v33);
      if (v33 != 72 && v33 != 107)
      {
        if (v9 <= 2 && v11 <= 2)
        {
          v40 = 1;
        }

        else
        {
          v40 = 3;
        }

        if (v9 <= 4 && v11 <= 4)
        {
          v42 = v40;
        }

        else
        {
          v42 = 5;
        }

        do
        {
          v44 = v37;
          icu::UnicodeString::doAppend(&v45, &v44, 0, 1);
          --v42;
        }

        while (v42);
      }
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      icu::UnicodeString::UnicodeString(&v45, 72);
    }

    if ((SWORD4(v45) & 0x8000u) == 0)
    {
      v18 = WORD4(v45) >> 5;
    }

    else
    {
      v18 = HIDWORD(v45);
    }

    icu::UnicodeString::doReplace(a1, v8, v9, &v45, 0, v18);
    if (v10 > v8)
    {
      v19 = WORD4(v45) >> 5;
      if (SWORD4(v45) < 0)
      {
        v19 = HIDWORD(v45);
      }

      v10 = (v10 - v9 + v19);
    }

    if (v11 == 0x7FFFFFFF && v10 <= 0)
    {
      if (a1[1])
      {
        v20 = 2;
      }

      else
      {
        v20 = a1[1] & 0x1E;
      }

      *(a1 + 4) = v20;
    }

    else
    {
      icu::UnicodeString::doReplace(a1, v10, v11, 0, 0, 0);
    }

    icu::UnicodeString::~UnicodeString(v20, &v45);
    return icu::UnicodeString::~UnicodeString(v21, v49);
  }

  return result;
}

uint64_t icu::DateIntervalFormat::getDateTimeSkeleton(uint64_t this, const icu::UnicodeString *a2, icu::UnicodeString *a3, icu::UnicodeString *a4, icu::UnicodeString *a5, icu::UnicodeString *a6)
{
  v10 = this;
  v11 = 0;
  v26 = 0;
  v27 = 0;
  v12 = 0;
  v25 = 0;
  v28 = 0;
  v13 = 0;
  v14 = this + 10;
  while (1)
  {
    v15 = *(v10 + 8);
    if (v15 < 0)
    {
      break;
    }

    if (v11 >= *(v10 + 8) >> 5)
    {
      goto LABEL_27;
    }

    v16 = *(v10 + 8) >> 5;
LABEL_7:
    if (v16 > v11)
    {
      if ((v15 & 2) != 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = *(v10 + 24);
      }

      v18 = *(v17 + 2 * v11);
      switch(*(v17 + 2 * v11))
      {
        case 'A':
        case 'B':
        case 'S':
        case 'V':
        case 'Z':
        case 'a':
        case 'b':
        case 'j':
        case 's':
          v29 = *(v17 + 2 * v11);
          icu::UnicodeString::doAppend(a4, &v29, 0, 1);
          v29 = v18;
          v19 = a5;
          goto LABEL_14;
        case 'D':
        case 'F':
        case 'G':
        case 'L':
        case 'Q':
        case 'U':
        case 'W':
        case 'Y':
        case 'c':
        case 'e':
        case 'g':
        case 'l':
        case 'q':
        case 'r':
        case 'u':
        case 'w':
          v29 = *(v17 + 2 * v11);
          icu::UnicodeString::doAppend(a3, &v29, 0, 1);
          v29 = v18;
          v19 = a2;
          goto LABEL_14;
        case 'E':
          v29 = 69;
          this = icu::UnicodeString::doAppend(a2, &v29, 0, 1);
          ++HIDWORD(v26);
          break;
        case 'H':
        case 'K':
        case 'h':
        case 'k':
          v29 = *(v17 + 2 * v11);
          this = icu::UnicodeString::doAppend(a4, &v29, 0, 1);
          if (!v13)
          {
            v13 = v18;
          }

          break;
        case 'M':
          v29 = 77;
          this = icu::UnicodeString::doAppend(a2, &v29, 0, 1);
          LODWORD(v26) = v26 + 1;
          break;
        case 'd':
          v29 = 100;
          this = icu::UnicodeString::doAppend(a2, &v29, 0, 1);
          LODWORD(v27) = v27 + 1;
          break;
        case 'm':
          v29 = 109;
          this = icu::UnicodeString::doAppend(a4, &v29, 0, 1);
          ++HIDWORD(v27);
          break;
        case 'v':
          ++v25;
          v20 = 118;
          goto LABEL_26;
        case 'y':
          v29 = 121;
          this = icu::UnicodeString::doAppend(a2, &v29, 0, 1);
          ++v12;
          break;
        case 'z':
          ++v28;
          v20 = 122;
LABEL_26:
          v29 = v20;
          v19 = a4;
LABEL_14:
          this = icu::UnicodeString::doAppend(v19, &v29, 0, 1);
          break;
        default:
          break;
      }
    }

    ++v11;
  }

  v16 = *(v10 + 12);
  if (v11 < v16)
  {
    v16 = v16;
    goto LABEL_7;
  }

LABEL_27:
  if (v12 >= 1)
  {
    do
    {
      v29 = 121;
      this = icu::UnicodeString::doAppend(a3, &v29, 0, 1);
      --v12;
    }

    while (v12);
  }

  if (v26)
  {
    if (v26 >= 3)
    {
      v21 = v26 - 1;
      if ((v26 - 1) >= 4)
      {
        v21 = 4;
      }

      v22 = v21 + 1;
      do
      {
        v29 = 77;
        this = icu::UnicodeString::doAppend(a3, &v29, 0, 1);
        --v22;
      }

      while (v22);
    }

    else
    {
      v29 = 77;
      this = icu::UnicodeString::doAppend(a3, &v29, 0, 1);
    }
  }

  if (HIDWORD(v26))
  {
    if (SHIDWORD(v26) >= 4)
    {
      v23 = HIDWORD(v26) - 1;
      if ((HIDWORD(v26) - 1) >= 4)
      {
        v23 = 4;
      }

      v24 = v23 + 1;
      do
      {
        v29 = 69;
        this = icu::UnicodeString::doAppend(a3, &v29, 0, 1);
        --v24;
      }

      while (v24);
    }

    else
    {
      v29 = 69;
      this = icu::UnicodeString::doAppend(a3, &v29, 0, 1);
    }
  }

  if (v27)
  {
    v29 = 100;
    this = icu::UnicodeString::doAppend(a3, &v29, 0, 1);
  }

  if (v13)
  {
    v29 = v13;
    this = icu::UnicodeString::doAppend(a5, &v29, 0, 1);
  }

  if (HIDWORD(v27))
  {
    v29 = 109;
    this = icu::UnicodeString::doAppend(a5, &v29, 0, 1);
  }

  if (v28)
  {
    v29 = 122;
    this = icu::UnicodeString::doAppend(a5, &v29, 0, 1);
  }

  if (v25)
  {
    v29 = 118;
    return icu::UnicodeString::doAppend(a5, &v29, 0, 1);
  }

  return this;
}

uint64_t icu::DateIntervalFormat::setSeparateDateTimePtn(icu::DateIntervalInfo **this, const icu::UnicodeString *a2, const icu::UnicodeString *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 4);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 < 0)
  {
    v8 = *(a3 + 3);
  }

  if (v8)
  {
    v9 = a3;
  }

  else
  {
    v9 = a2;
  }

  v28 = 0;
  BestSkeleton = icu::DateIntervalInfo::getBestSkeleton(this[41], v9, &v28);
  if (!BestSkeleton)
  {
    return 0;
  }

  v11 = BestSkeleton;
  v27 = 0;
  v12 = *(a2 + 4);
  v13 = v12;
  v14 = v12 >> 5;
  if (v13 < 0)
  {
    v14 = *(a2 + 3);
  }

  if (v14)
  {
    operator new();
  }

  v15 = *(a3 + 4);
  v16 = v15;
  v17 = v15 >> 5;
  if (v16 < 0)
  {
    v17 = *(a3 + 3);
  }

  if (v17)
  {
    v27 = 0;
    operator new();
  }

  v18 = v28;
  if (v18 == -1)
  {
    return 0;
  }

  v19 = *(a3 + 4);
  v20 = v19;
  v21 = v19 >> 5;
  if (v20 < 0)
  {
    v21 = *(a3 + 3);
  }

  if (v21)
  {
    icu::DateIntervalFormat::setIntervalPattern(this, 12, v9, BestSkeleton, v18, 0, 0);
    icu::DateIntervalFormat::setIntervalPattern(this, 10, v9, v11, v28, 0, 0);
    icu::DateIntervalFormat::setIntervalPattern(this, 9, v9, v11, v28, 0, 0);
    return 1;
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
    v38 = 0;
    v37 = 0u;
    v24 = &v34;
    v33 = 0;
    v34 = &unk_1F0935D00;
    LOWORD(v35) = 2;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = &unk_1F0935D00;
    LOWORD(v30) = 2;
    icu::DateIntervalFormat::setIntervalPattern(this, 5, v9, BestSkeleton, v18, &v34, &v29);
    if (icu::DateIntervalFormat::setIntervalPattern(this, 2, v9, v11, v28, &v34, &v29))
    {
      v11 = &v29;
    }

    else
    {
      v24 = v9;
    }

    v22 = 1;
    icu::DateIntervalFormat::setIntervalPattern(this, 1, v24, v11, v28, &v34, &v29);
    icu::DateIntervalFormat::setIntervalPattern(this, 0, v24, v11, v28, &v34, &v29);
    icu::UnicodeString::~UnicodeString(v25, &v29);
    icu::UnicodeString::~UnicodeString(v26, &v34);
  }

  return v22;
}

icu::UnicodeString *icu::DateIntervalFormat::setPatternInfo(uint64_t a1, uint64_t a2, UChar **a3, UChar **a4, char a5)
{
  v12 = 0;
  result = icu::DateIntervalInfo::calendarFieldToIntervalIndex(a2, &v12);
  if (v12 <= 0)
  {
    v10 = a1 + 136 * result;
    v11 = v10 + 648;
    if (a3)
    {
      result = icu::UnicodeString::operator=((v10 + 648), a3);
    }

    if (a4)
    {
      result = icu::UnicodeString::operator=((v11 + 64), a4);
    }

    *(v11 + 128) = a5;
  }

  return result;
}

BOOL icu::DateIntervalFormat::fieldExistsInSkeleton(int a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2;
  v4 = v2 >> 5;
  if (v3 >= 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(a2 + 12);
  }

  return icu::UnicodeString::doIndexOf(a2, icu::DateIntervalFormat::fgCalendarFieldToPatternLetter[a1], 0, v5) != -1;
}

char *icu::DateIntervalFormat::setFallbackPattern(char *result, uint64_t a2, UErrorCode *a3, UErrorCode *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v6 = result;
    memset(v9, 0, sizeof(v9));
    icu::DateFormat::getBestPattern((result + 360), a3, a4, v9);
    v7 = *a4;
    if (v7 <= 0)
    {
      DefaultOrder = icu::DateIntervalInfo::getDefaultOrder(*(v6 + 41));
      icu::DateIntervalFormat::setPatternInfo(v6, a2, 0, v9, DefaultOrder);
    }

    return icu::UnicodeString::~UnicodeString(v7, v9);
  }

  return result;
}

void *icu::DateIntervalFormat::concatSingleDate2TimeInterval(uint64_t a1, const icu::UnicodeString *a2, const icu::UnicodeString *a3, uint64_t a4, UErrorCode *a5)
{
  v29 = *MEMORY[0x1E69E9840];
  result = icu::DateIntervalInfo::calendarFieldToIntervalIndex(a4, a5);
  if (*a5 <= 0)
  {
    v11 = a1 + 136 * result;
    if (*(v11 + 656) >= 0x20u)
    {
      v12 = v11 + 648;
      memset(v28, 0, 64);
      icu::UnicodeString::UnicodeString(v28, (v11 + 648));
      v13 = *(v12 + 72);
      v14 = v13;
      v15 = v13 >> 5;
      if (v14 >= 0)
      {
        v16 = v15;
      }

      else
      {
        v16 = *(v12 + 76);
      }

      icu::UnicodeString::doAppend(v28, (v12 + 64), 0, v16);
      v24 = 0u;
      v27 = 0;
      v26 = 0u;
      v25 = 0u;
      v23 = &unk_1F0935D00;
      LOWORD(v24) = 2;
      v21 = &unk_1F0935D00;
      v22 = 2;
      icu::SimpleFormatter::applyPatternMinMaxArguments(v20, a2, 2, 2, 0, a5);
      icu::SimpleFormatter::format(v20, v28, a3, &v23, a5);
      icu::SimpleFormatter::~SimpleFormatter(v20, v17);
      v18 = *a5;
      if (v18 <= 0)
      {
        icu::DateIntervalFormat::setIntervalPattern(a1, a4, &v23, *(v12 + 128));
      }

      icu::UnicodeString::~UnicodeString(v18, &v23);
      return icu::UnicodeString::~UnicodeString(v19, v28);
    }
  }

  return result;
}

uint64_t icu::DateIntervalFormat::setIntervalPattern(uint64_t a1, uint64_t a2, int32_t *a3, const icu::UnicodeString *a4, const icu::UnicodeString *a5, uint64_t a6, UChar **a7)
{
  v10 = a4;
  v42 = *MEMORY[0x1E69E9840];
  v32[0] = a5;
  v31 = 0;
  v38 = 0u;
  v39 = 0u;
  v41 = 0;
  v40 = 0u;
  v37 = &unk_1F0935D00;
  LOWORD(v38) = 2;
  icu::DateIntervalInfo::getIntervalPattern(*(a1 + 328), a4, a2, &v37, &v31);
  if (v38 > 0x1Fu)
  {
    goto LABEL_2;
  }

  if (icu::SimpleDateFormat::isFieldUnitIgnored(v10, a2))
  {
    goto LABEL_28;
  }

  if (a2 == 9)
  {
    icu::DateIntervalInfo::getIntervalPattern(*(a1 + 328), v10, 10, &v37, &v31);
    v15 = v38;
    if (v38 >= 0x20u)
    {
      if (*(a1 + 592) < 0)
      {
        v16 = *(a1 + 596);
      }

      else
      {
        v16 = *(a1 + 592) >> 5;
      }

      v26 = icu::UnicodeString::doIndexOf(a1 + 584, 0x4Au, 0, v16) != -1;
      v33 = 0u;
      v34 = 0u;
      v36 = 0;
      v35 = 0u;
      *&v32[1] = &unk_1F0935D00;
      LOWORD(v33) = 2;
      icu::DateIntervalFormat::adjustFieldWidth(a3, v10, &v37, a5, v26, &v32[1], v27);
      DefaultOrder = icu::DateIntervalInfo::getDefaultOrder(*(a1 + 328));
      icu::DateIntervalFormat::setIntervalPattern(a1, 9, &v32[1], DefaultOrder);
      icu::UnicodeString::~UnicodeString(v29, &v32[1]);
    }

    goto LABEL_28;
  }

  if (!a6)
  {
    goto LABEL_23;
  }

  v23 = icu::DateIntervalFormat::fgCalendarFieldToPatternLetter[a2];
  icu::UnicodeString::operator=(a6, a3);
  icu::UnicodeString::operator=(a7, v10);
  *&v32[1] = v23;
  icu::UnicodeString::doReplace(a6, 0, 0, &v32[1], 0, 1);
  *&v32[1] = v23;
  icu::UnicodeString::doReplace(a7, 0, 0, &v32[1], 0, 1);
  icu::DateIntervalInfo::getIntervalPattern(*(a1 + 328), a7, a2, &v37, &v31);
  v15 = v38;
  if (v38 <= 0x1Fu && !a5)
  {
    BestSkeleton = icu::DateIntervalInfo::getBestSkeleton(*(a1 + 328), a7, v32);
    if (BestSkeleton && v32[0] != 255)
    {
      v25 = BestSkeleton;
      icu::DateIntervalInfo::getIntervalPattern(*(a1 + 328), BestSkeleton, a2, &v37, &v31);
      v10 = v25;
    }

LABEL_23:
    v15 = v38;
  }

  if (v15 < 0x20)
  {
    goto LABEL_28;
  }

LABEL_2:
  if (*(a1 + 592) < 0)
  {
    v14 = *(a1 + 596);
  }

  else
  {
    v14 = *(a1 + 592) >> 5;
  }

  v17 = icu::UnicodeString::doIndexOf(a1 + 584, 0x4Au, 0, v14);
  if (v32[0] || v17 != -1)
  {
    v33 = 0u;
    v34 = 0u;
    v36 = 0;
    v35 = 0u;
    *&v32[1] = &unk_1F0935D00;
    LOWORD(v33) = 2;
    icu::DateIntervalFormat::adjustFieldWidth(a3, v10, &v37, v32[0], v17 != -1, &v32[1], v18);
    v20 = icu::DateIntervalInfo::getDefaultOrder(*(a1 + 328));
    icu::DateIntervalFormat::setIntervalPattern(a1, a2, &v32[1], v20);
    icu::UnicodeString::~UnicodeString(v21, &v32[1]);
    if (a6)
    {
      goto LABEL_15;
    }

LABEL_28:
    v22 = 0;
    goto LABEL_29;
  }

  v19 = icu::DateIntervalInfo::getDefaultOrder(*(a1 + 328));
  icu::DateIntervalFormat::setIntervalPattern(a1, a2, &v37, v19);
  if (!a6)
  {
    goto LABEL_28;
  }

LABEL_15:
  v15 = *(a6 + 8);
  if (v15 <= 0x1F)
  {
    goto LABEL_28;
  }

  v22 = 1;
LABEL_29:
  icu::UnicodeString::~UnicodeString(v15, &v37);
  return v22;
}

void *icu::DateIntervalFormat::setIntervalPattern(uint64_t a1, uint64_t a2, void **a3)
{
  DefaultOrder = icu::DateIntervalInfo::getDefaultOrder(*(a1 + 328));

  return icu::DateIntervalFormat::setIntervalPattern(a1, a2, a3, DefaultOrder);
}

void *icu::DateIntervalFormat::setIntervalPattern(uint64_t a1, uint64_t a2, void **a3, char a4)
{
  v5 = a3;
  v39 = *MEMORY[0x1E69E9840];
  v35 = 0u;
  v38 = 0;
  v37 = 0u;
  v36 = 0u;
  v34 = &unk_1F0935D00;
  LOWORD(v35) = 2;
  v8 = 12;
  if (icu::UnicodeString::doEqualsSubstring(a3, 0, 12, aLatestfirstEar, 0, 12))
  {
    a4 = 1;
    v9 = -12;
  }

  else
  {
    v8 = 14;
    if (!icu::UnicodeString::doEqualsSubstring(v5, 0, 14, &aLatestfirstEar[12], 0, 14))
    {
      goto LABEL_11;
    }

    a4 = 0;
    v9 = -14;
  }

  v11 = *(v5 + 4);
  v12 = v11;
  v13 = v11 >> 5;
  if (v12 < 0)
  {
    v13 = *(v5 + 3);
  }

  if ((v35 & 0x8000u) == 0)
  {
    v14 = v35 >> 5;
  }

  else
  {
    v14 = DWORD1(v35);
  }

  icu::UnicodeString::doReplace(&v34, 0, v14, v5, v8, v13 + v9);
  v5 = &v34;
LABEL_11:
  v15 = icu::DateIntervalFormat::splitPatternInto2Part(v5, v10);
  v16 = v15;
  v30 = 0u;
  v31 = 0u;
  v33 = 0;
  v32 = 0u;
  v28 = 0;
  v29 = &unk_1F0935D00;
  LOWORD(v30) = 2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = &unk_1F0935D00;
  LOWORD(v25) = 2;
  icu::UnicodeString::doReplace(&v29, 0, 0, v5, 0, v15);
  v17 = *(v5 + 4);
  if ((v17 & 0x8000) != 0)
  {
    v18 = *(v5 + 3);
    if (v16 >= v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v16 >= (v17 >> 5))
    {
      goto LABEL_19;
    }

    v18 = v17 >> 5;
  }

  if ((v25 & 0x8000u) == 0)
  {
    v19 = v25 >> 5;
  }

  else
  {
    v19 = DWORD1(v25);
  }

  icu::UnicodeString::doReplace(&v24, 0, v19, v5, v16, (v18 - v16));
LABEL_19:
  icu::DateIntervalFormat::setPatternInfo(a1, a2, &v29, &v24, a4);
  icu::UnicodeString::~UnicodeString(v20, &v24);
  icu::UnicodeString::~UnicodeString(v21, &v29);
  return icu::UnicodeString::~UnicodeString(v22, &v34);
}

uint64_t icu::DateIntervalFormat::splitPatternInto2Part(icu::DateIntervalFormat *this, const icu::UnicodeString *a2)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v20 = *MEMORY[0x1E69E9840];
  memset(v19, 0, 58);
  v6 = *(this + 4);
  v7 = v6 >> 5;
  v8 = *(this + 3);
  v9 = this + 10;
  if ((v6 & 2) == 0)
  {
    v9 = *(this + 3);
  }

  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v10 = v6 >> 5;
  if (v3 < v7)
  {
    while (1)
    {
      if (v10 <= v3)
      {
        v11 = 0xFFFF;
      }

      else
      {
        v11 = *&v9[2 * v3];
      }

      if (v11 != v4 && v2 >= 1)
      {
        v12 = v4 - 65;
        if (*(v19 + v12))
        {
          return v3 - v2;
        }

        v2 = 0;
        *(v19 + v12) = 1;
      }

      if (v11 == 39)
      {
        break;
      }

      v15 = (v11 & 0xFFFFFFDF) - 65;
      v16 = v15 >= 0x1A;
      if (v15 >= 0x1A)
      {
        v17 = v2;
      }

      else
      {
        v17 = v2 + 1;
      }

      if (v16)
      {
        v11 = v4;
      }

      if (!v5)
      {
        v2 = v17;
        v4 = v11;
      }

      v5 = v5;
LABEL_32:
      ++v3;
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_4;
      }

LABEL_6:
      v10 = v8;
      if (v3 >= v8)
      {
        goto LABEL_34;
      }
    }

    v13 = v3 + 1;
    if ((v6 & 0x8000) != 0)
    {
      v14 = v8;
      if (v13 >= v8)
      {
LABEL_31:
        v5 = !v5;
        goto LABEL_32;
      }
    }

    else
    {
      v14 = v6 >> 5;
      if (v13 >= v7)
      {
        goto LABEL_31;
      }
    }

    if (v14 > v13 && *&v9[2 * v13] == 39)
    {
      ++v3;
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_34:
  if (v2 >= 1 && !*(&v19[-4] + v4 - 1))
  {
    v2 = 0;
  }

  return v3 - v2;
}

uint64_t icu::DateIntervalFormat::adjustFieldWidth(int32_t *this, const icu::UnicodeString *a2, UChar **a3, const icu::UnicodeString *a4, int a5, uint64_t a6, icu::UnicodeString *a7)
{
  v9 = a4;
  v118 = *MEMORY[0x1E69E9840];
  icu::UnicodeString::operator=(a6, a3);
  v117 = 0;
  memset(v116, 0, sizeof(v116));
  v115 = 0;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  memset(v108, 0, sizeof(v108));
  icu::DateIntervalInfo::parseSkeleton(this, v116, v12);
  icu::DateIntervalInfo::parseSkeleton(a2, v108, v13);
  if (a5)
  {
    icu::UnicodeString::UnicodeString(v107, &unk_19549DEDC, 0xFFFFFFFFLL);
    v105 = &unk_1F0935D00;
    v106 = 2;
    icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v14);
    icu::UnicodeString::~UnicodeString(v15, &v105);
    icu::UnicodeString::~UnicodeString(v16, v107);
    icu::UnicodeString::UnicodeString(v107, &unk_19549DEE2, 0xFFFFFFFFLL);
    v105 = &unk_1F0935D00;
    v106 = 2;
    icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v17);
    icu::UnicodeString::~UnicodeString(v18, &v105);
    icu::UnicodeString::~UnicodeString(v19, v107);
    icu::UnicodeString::UnicodeString(v107, &unk_19549DEE8, 0xFFFFFFFFLL);
    v105 = &unk_1F0935D00;
    v106 = 2;
    icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v20);
    icu::UnicodeString::~UnicodeString(v21, &v105);
    icu::UnicodeString::~UnicodeString(v22, v107);
    icu::UnicodeString::UnicodeString(v107, &unk_19549DEEE, 0xFFFFFFFFLL);
    v105 = &unk_1F0935D00;
    v106 = 2;
    icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v23);
    icu::UnicodeString::~UnicodeString(v24, &v105);
    icu::UnicodeString::~UnicodeString(v25, v107);
    icu::UnicodeString::UnicodeString(v107, 97);
    v105 = &unk_1F0935D00;
    v106 = 2;
    icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v26);
    icu::UnicodeString::~UnicodeString(v27, &v105);
    icu::UnicodeString::~UnicodeString(v28, v107);
    sub_1951D6EE0(v107, L"  ");
    sub_1951D6EE0(&v105, " ");
    icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v29);
    icu::UnicodeString::~UnicodeString(v30, &v105);
    icu::UnicodeString::~UnicodeString(v31, v107);
    sub_1951D6EE0(v107, " ");
    sub_1951D6EE0(&v105, "\t ");
    icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v32);
    icu::UnicodeString::~UnicodeString(v33, &v105);
    icu::UnicodeString::~UnicodeString(v34, v107);
    icu::UnicodeString::trim(a6);
  }

  if (v9 == 2)
  {
    v35 = *(this + 4);
    v36 = v35;
    v37 = v35 >> 5;
    if (v36 >= 0)
    {
      v38 = v37;
    }

    else
    {
      v38 = this[3];
    }

    if (icu::UnicodeString::doIndexOf(this, 0x7Au, 0, v38) != -1)
    {
      icu::UnicodeString::UnicodeString(v107, 118);
      icu::UnicodeString::UnicodeString(&v105, 122);
      icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v39);
      icu::UnicodeString::~UnicodeString(v40, &v105);
      icu::UnicodeString::~UnicodeString(v41, v107);
    }

    v42 = *(this + 4);
    v43 = v42;
    v44 = v42 >> 5;
    if (v43 >= 0)
    {
      v45 = v44;
    }

    else
    {
      v45 = this[3];
    }

    if (icu::UnicodeString::doIndexOf(this, 0x4Bu, 0, v45) != -1)
    {
      icu::UnicodeString::UnicodeString(v107, 104);
      icu::UnicodeString::UnicodeString(&v105, 75);
      icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v46);
      icu::UnicodeString::~UnicodeString(v47, &v105);
      icu::UnicodeString::~UnicodeString(v48, v107);
    }

    v49 = *(this + 4);
    v50 = v49;
    v51 = v49 >> 5;
    if (v50 >= 0)
    {
      v52 = v51;
    }

    else
    {
      v52 = this[3];
    }

    if (icu::UnicodeString::doIndexOf(this, 0x6Bu, 0, v52) != -1)
    {
      icu::UnicodeString::UnicodeString(v107, 72);
      icu::UnicodeString::UnicodeString(&v105, 107);
      icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v53);
      icu::UnicodeString::~UnicodeString(v54, &v105);
      icu::UnicodeString::~UnicodeString(v55, v107);
    }

    v56 = *(this + 4);
    v57 = v56;
    v58 = v56 >> 5;
    if (v57 >= 0)
    {
      v59 = v58;
    }

    else
    {
      v59 = this[3];
    }

    if (icu::UnicodeString::doIndexOf(this, 0x62u, 0, v59) != -1)
    {
      icu::UnicodeString::UnicodeString(v107, 97);
      icu::UnicodeString::UnicodeString(&v105, 98);
      icu::DateIntervalFormat::findReplaceInPattern(a6, v107, &v105, v60);
      icu::UnicodeString::~UnicodeString(v61, &v105);
      icu::UnicodeString::~UnicodeString(v62, v107);
    }
  }

  v63 = *(a6 + 8);
  v64 = v63;
  v65 = v63 >> 5;
  if (v64 >= 0)
  {
    v66 = v65;
  }

  else
  {
    v66 = *(a6 + 12);
  }

  if (icu::UnicodeString::doIndexOf(a6, 0x61u, 0, v66) != -1 && !v109)
  {
    LODWORD(v109) = 1;
  }

  v67 = *(a6 + 8);
  v68 = v67;
  v69 = v67 >> 5;
  if (v68 >= 0)
  {
    v70 = v69;
  }

  else
  {
    v70 = *(a6 + 12);
  }

  result = icu::UnicodeString::doIndexOf(a6, 0x62u, 0, v70);
  if (result != -1 && !DWORD1(v109))
  {
    DWORD1(v109) = 1;
  }

  v72 = *(a6 + 8);
  v73 = v72;
  v74 = v72 >> 5;
  if (v73 >= 0)
  {
    v75 = v74;
  }

  else
  {
    v75 = *(a6 + 12);
  }

  if (v75 >= 1)
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    while (1)
    {
      v80 = *(a6 + 8);
      if ((v80 & 0x8000u) == 0)
      {
        v81 = v80 >> 5;
      }

      else
      {
        v81 = *(a6 + 12);
      }

      if (v81 <= v79)
      {
        v83 = 0xFFFF;
      }

      else
      {
        if ((v80 & 2) != 0)
        {
          v82 = a6 + 10;
        }

        else
        {
          v82 = *(a6 + 24);
        }

        v83 = *(v82 + 2 * v79);
      }

      if (v83 != v77 && v78 >= 1)
      {
        if (v77 == 76)
        {
          v84 = 77;
        }

        else
        {
          v84 = v77;
        }

        v85 = 4 * v84 - 260;
        v86 = *(v108 + v85);
        v87 = *(v116 + v85);
        if (v86 != v78 || v87 <= v86)
        {
          v78 = 0;
        }

        else
        {
          v89 = v87 - v78;
          if (v87 - v78 >= 1)
          {
            v90 = v87 - v78;
            do
            {
              v107[0] = v77;
              result = icu::UnicodeString::doReplace(a6, v79, 0, v107, 0, 1);
              --v90;
            }

            while (v90);
          }

          v78 = 0;
          LODWORD(v79) = v89 + v79;
          v75 += v89;
        }
      }

      if (v83 != 39)
      {
        v94 = (v83 & 0xFFFFFFDF) - 65;
        v95 = v94 >= 0x1A;
        if (v94 >= 0x1A)
        {
          v96 = v78;
        }

        else
        {
          v96 = v78 + 1;
        }

        if (v95)
        {
          v97 = v77;
        }

        else
        {
          v97 = v83;
        }

        if (!v76)
        {
          v78 = v96;
          v77 = v97;
        }

        v76 = v76;
        goto LABEL_86;
      }

      v91 = v79 + 1;
      v92 = *(a6 + 8);
      if (*(a6 + 8) < 0)
      {
        v93 = *(a6 + 12);
        if (v91 >= v93)
        {
          goto LABEL_85;
        }
      }

      else
      {
        if (v91 >= (v92 >> 5))
        {
          goto LABEL_85;
        }

        v93 = v92 >> 5;
      }

      if (v93 <= v91 || ((v92 & 2) != 0 ? (v98 = a6 + 10) : (v98 = *(a6 + 24)), *(v98 + 2 * v91) != 39))
      {
LABEL_85:
        v76 = !v76;
        goto LABEL_86;
      }

      LODWORD(v79) = v79 + 1;
LABEL_86:
      v79 = (v79 + 1);
      if (v79 >= v75)
      {
        if (v78 >= 1)
        {
          if (v77 == 76)
          {
            v99 = 77;
          }

          else
          {
            v99 = v77;
          }

          v100 = 4 * v99 - 260;
          v101 = *(v108 + v100);
          v102 = *(v116 + v100);
          if (v101 == v78 && v102 > v101)
          {
            v104 = v102 - v78;
            if (v102 - v78 >= 1)
            {
              do
              {
                v107[0] = v77;
                result = icu::UnicodeString::doAppend(a6, v107, 0, 1);
                --v104;
              }

              while (v104);
            }
          }
        }

        return result;
      }
    }
  }

  return result;
}

void *icu::DateIntervalFormat::fallbackFormatRange(icu::DateIntervalInfo **this, icu::Calendar *a2, icu::Calendar *a3, icu::UnicodeString *a4, signed __int8 *a5, icu::FieldPositionHandler *a6, UErrorCode *a7)
{
  v47 = *MEMORY[0x1E69E9840];
  v43 = 0u;
  v46 = 0;
  v45 = 0u;
  v44 = 0u;
  v42 = &unk_1F0935D00;
  LOWORD(v43) = 2;
  icu::DateIntervalInfo::getFallbackIntervalPattern(this[41], &v42);
  v37[0] = 0;
  v38 = 0u;
  v41 = 0;
  v40 = 0u;
  v39 = 0u;
  v37[1] = &unk_1F0935D00;
  LOWORD(v38) = 2;
  icu::SimpleFormatter::applyPatternMinMaxArguments(v37, &v42, 2, 2, 0, a7);
  v14 = *a7;
  if (v14 <= 0)
  {
    __b = 0;
    memset(v35, 0, sizeof(v35));
    sub_195311838(v35, &__b, v37, 2);
    v31 = 0;
    v15 = __b;
    v16 = HIDWORD(__b);
    if (__b >= SHIDWORD(__b))
    {
      *a5 = 1;
      icu::UnicodeString::tempSubString(v32, v35, 0, v16);
      if ((v33 & 0x8000u) == 0)
      {
        v22 = v33 >> 5;
      }

      else
      {
        v22 = v34;
      }

      icu::UnicodeString::doAppend(a4, v32, 0, v22);
      icu::UnicodeString::~UnicodeString(v23, v32);
      icu::SimpleDateFormat::_format(this[42], a3, a4, a6, a7);
      icu::UnicodeString::tempSubString(v32, v35, SHIDWORD(__b), __b - HIDWORD(__b));
      if ((v33 & 0x8000u) == 0)
      {
        v24 = v33 >> 5;
      }

      else
      {
        v24 = v34;
      }

      icu::UnicodeString::doAppend(a4, v32, 0, v24);
      icu::UnicodeString::~UnicodeString(v25, v32);
      (*(*this[42] + 200))(this[42], 256, &v31);
      icu::SimpleDateFormat::_format(this[42], a2, a4, a6, a7);
      v21 = __b;
    }

    else
    {
      *a5 = 0;
      icu::UnicodeString::tempSubString(v32, v35, 0, v15);
      if ((v33 & 0x8000u) == 0)
      {
        v17 = v33 >> 5;
      }

      else
      {
        v17 = v34;
      }

      icu::UnicodeString::doAppend(a4, v32, 0, v17);
      icu::UnicodeString::~UnicodeString(v18, v32);
      icu::SimpleDateFormat::_format(this[42], a2, a4, a6, a7);
      icu::UnicodeString::tempSubString(v32, v35, __b, HIDWORD(__b) - __b);
      if ((v33 & 0x8000u) == 0)
      {
        v19 = v33 >> 5;
      }

      else
      {
        v19 = v34;
      }

      icu::UnicodeString::doAppend(a4, v32, 0, v19);
      icu::UnicodeString::~UnicodeString(v20, v32);
      (*(*this[42] + 200))(this[42], 256, &v31);
      icu::SimpleDateFormat::_format(this[42], a3, a4, a6, a7);
      v21 = HIDWORD(__b);
    }

    icu::UnicodeString::tempSubString(v32, v35, v21, v21 ^ 0x7FFFFFFF);
    if ((v33 & 0x8000u) == 0)
    {
      v26 = v33 >> 5;
    }

    else
    {
      v26 = v34;
    }

    icu::UnicodeString::doAppend(a4, v32, 0, v26);
    icu::UnicodeString::~UnicodeString(v27, v32);
    icu::UnicodeString::~UnicodeString(v28, v35);
  }

  icu::SimpleFormatter::~SimpleFormatter(v37, v14);
  return icu::UnicodeString::~UnicodeString(v29, &v42);
}

uint64_t *sub_195311838@<X0>(uint64_t *__return_ptr a1@<X8>, void *__b@<X1>, uint64_t a3@<X0>, int a4@<W2>)
{
  v6 = *(a3 + 16);
  if ((v6 & 0x11) == 0)
  {
    if ((v6 & 2) != 0)
    {
      v7 = (a3 + 18);
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v7 = *(a3 + 32);
      if ((v6 & 0x8000) == 0)
      {
        goto LABEL_6;
      }
    }

LABEL_8:
    v8 = *(a3 + 20);
    return icu::SimpleFormatter::getTextWithNoArguments(__b, v7, v8, a4, a1);
  }

  v7 = 0;
  if ((v6 & 0x8000) != 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8 = v6 >> 5;
  return icu::SimpleFormatter::getTextWithNoArguments(__b, v7, v8, a4, a1);
}

icu::UnicodeString *icu::DateIntervalFormat::findReplaceInPattern(icu::DateIntervalFormat *this, icu::UnicodeString *a2, const icu::UnicodeString *a3, const icu::UnicodeString *a4)
{
  v63 = *MEMORY[0x1E69E9840];
  v7 = *(this + 4);
  v8 = v7;
  v9 = v7 >> 5;
  if (v8 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(this + 3);
  }

  v11 = icu::UnicodeString::doIndexOf(this, 0x27u, 0, v10);
  if (v11 == -1)
  {
    v44 = *(this + 4);
    v45 = v44;
    v46 = v44 >> 5;
    if (v45 >= 0)
    {
      v47 = v46;
    }

    else
    {
      v47 = *(this + 3);
    }

    v48 = *(a2 + 4);
    v49 = v48;
    v50 = v48 >> 5;
    if (v49 >= 0)
    {
      v51 = v50;
    }

    else
    {
      v51 = *(a2 + 3);
    }

    v52 = *(a3 + 4);
    v53 = v52;
    v54 = v52 >> 5;
    if (v53 < 0)
    {
      v54 = *(a3 + 3);
    }

    return icu::UnicodeString::findAndReplace(this, 0, v47, a2, 0, v51, a3, 0, v54);
  }

  else
  {
    v12 = v11;
    v59 = 0u;
    v62 = 0;
    v61 = 0u;
    v60 = 0u;
    v58 = &unk_1F0935D00;
    LOWORD(v59) = 2;
    memset(v57, 0, sizeof(v57));
    icu::UnicodeString::UnicodeString(v57, this);
    while ((v12 & 0x80000000) == 0)
    {
      v13 = v12 + 1;
      if (SWORD4(v57[0]) < 0)
      {
        v14 = HIDWORD(v57[0]);
        if (SHIDWORD(v57[0]) >= v13)
        {
          v15 = v12 + 1;
        }

        else
        {
          v15 = HIDWORD(v57[0]);
        }
      }

      else
      {
        v14 = WORD4(v57[0]) >> 5;
        if (v14 >= v13)
        {
          v15 = v12 + 1;
        }

        else
        {
          v15 = WORD4(v57[0]) >> 5;
        }
      }

      v16 = icu::UnicodeString::doIndexOf(v57, 0x27u, v15, v14 - v15);
      if (v16 == -1)
      {
        v17 = WORD4(v57[0]) >> 5;
        if (SWORD4(v57[0]) < 0)
        {
          v17 = HIDWORD(v57[0]);
        }

        v16 = v17 - 1;
      }

      memset(v56, 0, sizeof(v56));
      icu::UnicodeString::UnicodeString(v56, v57, 0, v12);
      memset(v55, 0, sizeof(v55));
      icu::UnicodeString::UnicodeString(v55, v57, v12, (v16 - v12 + 1));
      if ((SWORD4(v56[0]) & 0x8000u) == 0)
      {
        v18 = WORD4(v56[0]) >> 5;
      }

      else
      {
        v18 = HIDWORD(v56[0]);
      }

      v19 = *(a2 + 4);
      v20 = v19;
      v21 = v19 >> 5;
      if (v20 >= 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = *(a2 + 3);
      }

      v23 = *(a3 + 4);
      v24 = v23;
      v25 = v23 >> 5;
      if (v24 < 0)
      {
        v25 = *(a3 + 3);
      }

      icu::UnicodeString::findAndReplace(v56, 0, v18, a2, 0, v22, a3, 0, v25);
      if ((SWORD4(v56[0]) & 0x8000u) == 0)
      {
        v26 = WORD4(v56[0]) >> 5;
      }

      else
      {
        v26 = HIDWORD(v56[0]);
      }

      icu::UnicodeString::doAppend(&v58, v56, 0, v26);
      if ((SWORD4(v55[0]) & 0x8000u) == 0)
      {
        v27 = WORD4(v55[0]) >> 5;
      }

      else
      {
        v27 = HIDWORD(v55[0]);
      }

      icu::UnicodeString::doAppend(&v58, v55, 0, v27);
      if (v16 == 2147483646)
      {
        if (BYTE8(v57[0]))
        {
          v28 = 2;
        }

        else
        {
          v28 = BYTE8(v57[0]) & 0x1E;
        }

        WORD4(v57[0]) = v28;
      }

      else
      {
        icu::UnicodeString::doReplace(v57, 0, (v16 + 1), 0, 0, 0);
        v28 = WORD4(v57[0]);
        if ((WORD4(v57[0]) & 0x8000) != 0)
        {
          v29 = HIDWORD(v57[0]);
          goto LABEL_38;
        }
      }

      v29 = v28 >> 5;
LABEL_38:
      v12 = icu::UnicodeString::doIndexOf(v57, 0x27u, 0, v29);
      icu::UnicodeString::~UnicodeString(v30, v55);
      icu::UnicodeString::~UnicodeString(v31, v56);
    }

    if ((SWORD4(v57[0]) & 0x8000u) == 0)
    {
      v32 = WORD4(v57[0]) >> 5;
    }

    else
    {
      v32 = HIDWORD(v57[0]);
    }

    v33 = *(a2 + 4);
    v34 = v33;
    v35 = v33 >> 5;
    if (v34 >= 0)
    {
      v36 = v35;
    }

    else
    {
      v36 = *(a2 + 3);
    }

    v37 = *(a3 + 4);
    v38 = v37;
    v39 = v37 >> 5;
    if (v38 < 0)
    {
      v39 = *(a3 + 3);
    }

    icu::UnicodeString::findAndReplace(v57, 0, v32, a2, 0, v36, a3, 0, v39);
    if ((SWORD4(v57[0]) & 0x8000u) == 0)
    {
      v40 = WORD4(v57[0]) >> 5;
    }

    else
    {
      v40 = HIDWORD(v57[0]);
    }

    icu::UnicodeString::doAppend(&v58, v57, 0, v40);
    icu::UnicodeString::operator=(this, &v58);
    icu::UnicodeString::~UnicodeString(v41, v57);
    return icu::UnicodeString::~UnicodeString(v42, &v58);
  }
}

uint64_t ****sub_195311C74(uint64_t ****a1)
{
  v2 = *a1;
  if (v2)
  {
    icu::DateIntervalInfo::~DateIntervalInfo(v2);
    MEMORY[0x19A8B2600]();
  }

  return a1;
}

icu::DateIntervalInfo *icu::DateIntervalInfo::DateIntervalInfo(icu::DateIntervalInfo *this, UErrorCode *a2)
{
  *this = &unk_1F093A398;
  v4 = sub_1951D6EE0((this + 8), L"{0} – {1}");
  *(this + 72) = 0;
  *(this + 10) = 0;
  *(this + 10) = icu::DateIntervalInfo::initHash(v4, a2);
  return this;
}

{
  *this = &unk_1F093A398;
  v4 = sub_1951D6EE0((this + 8), L"{0} – {1}");
  *(this + 72) = 0;
  *(this + 10) = 0;
  *(this + 10) = icu::DateIntervalInfo::initHash(v4, a2);
  return this;
}

uint64_t *icu::DateIntervalInfo::initHash(icu::DateIntervalInfo *this, UErrorCode *a2)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

icu::DateIntervalInfo *icu::DateIntervalInfo::DateIntervalInfo(icu::DateIntervalInfo *this, const icu::Locale *a2, UErrorCode *a3)
{
  *this = &unk_1F093A398;
  sub_1951D6EE0((this + 8), L"{0} – {1}");
  *(this + 72) = 0;
  *(this + 10) = 0;
  icu::DateIntervalInfo::initializeData(this, a2, a3);
  return this;
}

{
  *this = &unk_1F093A398;
  sub_1951D6EE0((this + 8), L"{0} – {1}");
  *(this + 72) = 0;
  *(this + 10) = 0;
  icu::DateIntervalInfo::initializeData(this, a2, a3);
  return this;
}

void icu::DateIntervalInfo::initializeData(icu::DateIntervalInfo *this, const icu::Locale *a2, UErrorCode *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  *(this + 10) = icu::DateIntervalInfo::initHash(this, a3);
  if (*a3 <= 0)
  {
    v6 = *(a2 + 5);
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    ures_getFunctionalEquivalent(v43, 258, 0, "calendar", "calendar", v6, 0, 0, a3);
    HIBYTE(v44) = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    ulocimp_getKeywordValue(v43, "calendar", 8, a3, &v39);
    if (*a3 <= 0)
    {
      v7 = v39;
    }

    else
    {
      v7 = "gregorian";
    }

    *a3 = U_ZERO_ERROR;
    v32 = 0;
    v8 = ures_open(0, v6, a3);
    v9 = ures_openWithCountryFallback(0, v6, &v32, a3);
    if (*a3 <= 0)
    {
      v10 = v9;
      v11 = ures_getByKeyWithFallback(v8, "calendar", 0, a3);
      v12 = ures_getByKeyWithFallback(v10, "calendar", 0, a3);
      v13 = v12;
      if (*a3 <= 0)
      {
        v23 = v12;
        v22 = v10;
        v31 = 0;
        v14 = ures_getByKeyWithFallback(v11, v7, 0, a3);
        v15 = ures_getByKeyWithFallback(v14, "intervalFormats", 0, a3);
        v16 = v15;
        if (*a3 <= 0)
        {
          StringByKeyWithFallback = ures_getStringByKeyWithFallback(v15, "fallback", &v31, a3);
          if (*a3 <= 0)
          {
            if (StringByKeyWithFallback)
            {
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
              v30 = StringByKeyWithFallback;
              icu::UnicodeString::UnicodeString(&v33, 1, &v30, v31);
              icu::DateIntervalInfo::setFallbackIntervalPattern(this, &v33, a3);
              icu::UnicodeString::~UnicodeString(v18, &v33);
            }
          }
        }

        ures_close(v16);
        ures_close(v14);
        if (v32)
        {
          v19 = v23;
        }

        else
        {
          v19 = v11;
        }

        while (v19)
        {
          v38 = 0;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
          v20 = icu::Locale::isRightToLeft(a2) == 0;
          *&v33 = &unk_1F093A3D0;
          *(&v33 + 1) = this;
          icu::UnicodeString::UnicodeString(&v34, v7, -1);
          LOBYTE(v38) = v19 != v11;
          BYTE1(v38) = v20;
          v29 = 0;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          *v24 = 0u;
          v21 = *a3;
          if (v21 < 1)
          {
            uhash_init(&v24[1], uhash_hashUnicodeString, uhash_compareUnicodeString, 0, a3);
            v21 = *a3;
            if (v21 <= 0)
            {
              v24[0] = &v24[1];
              uhash_setKeyDeleter(&v24[1], uprv_deleteUObject);
              v21 = *a3;
              if (v21 <= 0)
              {
                v21 = WORD4(v34);
                if ((BYTE8(v34) & 1) == 0)
                {
                  if (uhash_geti(&v24[1], &v34) != 1)
                  {
                    operator new();
                  }

                  v21 = 3;
                  *a3 = U_INVALID_FORMAT_ERROR;
                }
              }
            }

            if (v19 == v11)
            {
              v19 = 0;
            }

            else
            {
              v19 = v11;
            }

            if (v24[0])
            {
              uhash_close(v24[0]);
            }
          }

          else if (v19 == v11)
          {
            v19 = 0;
          }

          else
          {
            v19 = v11;
          }

          *&v33 = &unk_1F093A3D0;
          icu::UnicodeString::~UnicodeString(v21, &v34);
          icu::ResourceSink::~ResourceSink(&v33);
        }

        v10 = v22;
        v13 = v23;
      }

      ures_close(v11);
      ures_close(v8);
      ures_close(v13);
      ures_close(v10);
    }

    if (BYTE12(v39))
    {
      free(v39);
    }
  }
}

UChar **icu::DateIntervalInfo::setIntervalPattern(uint64_t a1, const icu::UnicodeString *a2, uint64_t a3, UChar **a4, int *a5)
{
  if (a3 == 11)
  {
    icu::DateIntervalInfo::setIntervalPatternInternally(a1, a2, 9, a4, a5);
    a3 = 10;
  }

  else if ((a3 & 0xFFFFFFFD) == 5)
  {
    a3 = 5;
  }

  else
  {
    a3 = a3;
  }

  return icu::DateIntervalInfo::setIntervalPatternInternally(a1, a2, a3, a4, a5);
}

UChar **icu::DateIntervalInfo::setIntervalPatternInternally(uint64_t a1, const icu::UnicodeString *a2, uint64_t a3, UChar **a4, int *a5)
{
  result = icu::DateIntervalInfo::calendarFieldToIntervalIndex(a3, a5);
  if (*a5 <= 0)
  {
    v10 = result;
    v11 = uhash_get(**(a1 + 80), a2);
    if (!v11)
    {
      operator new[]();
    }

    v12 = (v11 + (v10 << 6));

    return icu::UnicodeString::operator=(v12, a4);
  }

  return result;
}

UChar **icu::DateIntervalInfo::setFallbackIntervalPattern(UChar **this, const icu::UnicodeString *a2, UErrorCode *a3)
{
  if (*a3 <= 0)
  {
    v5 = this;
    if (*(a2 + 4) < 0)
    {
      v7 = *(a2 + 3);
      v6 = v7 & (v7 >> 31);
    }

    else
    {
      v6 = 0;
      v7 = *(a2 + 4) >> 5;
    }

    v8 = icu::UnicodeString::indexOf(a2, a01_5, 0, 3, v6, v7 - v6);
    v9 = *(a2 + 4);
    if ((v9 & 0x8000) != 0)
    {
      v11 = *(a2 + 3);
      v10 = v11 & (v11 >> 31);
    }

    else
    {
      v10 = 0;
      v11 = v9 >> 5;
    }

    this = icu::UnicodeString::indexOf(a2, &a01_5[3], 0, 3, v10, v11 - v10);
    if (v8 == -1 || this == -1)
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      if (v8 > this)
      {
        *(v5 + 72) = 1;
      }

      return icu::UnicodeString::operator=(v5 + 1, a2);
    }
  }

  return this;
}

uint64_t icu::DateIntervalInfo::DateIntervalInfo(uint64_t this, uint64_t a2)
{
  *this = &unk_1F093A398;
  *(this + 8) = &unk_1F0935D00;
  *(this + 16) = 2;
  *(this + 80) = 0;
  return icu::DateIntervalInfo::operator=(this, a2);
}

{
  *this = &unk_1F093A398;
  *(this + 8) = &unk_1F0935D00;
  *(this + 16) = 2;
  *(this + 80) = 0;
  return icu::DateIntervalInfo::operator=(this, a2);
}

uint64_t icu::DateIntervalInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = U_ZERO_ERROR;
    v4 = icu::DateIntervalInfo::deleteHash(a1, *(a1 + 80));
    inited = icu::DateIntervalInfo::initHash(v4, &v7);
    *(a1 + 80) = inited;
    icu::DateIntervalInfo::copyHash(inited, *(a2 + 80), inited, &v7);
    if (v7 <= U_ZERO_ERROR)
    {
      icu::UnicodeString::operator=((a1 + 8), (a2 + 8));
      *(a1 + 72) = *(a2 + 72);
    }
  }

  return a1;
}

uint64_t icu::DateIntervalInfo::deleteHash(uint64_t result, uint64_t **a2)
{
  if (a2)
  {
    v3 = result;
    v9 = -1;
    for (result = uhash_nextElement(*a2, &v9); result; result = uhash_nextElement(*a2, &v9))
    {
      v4 = *(result + 8);
      if (v4)
      {
        v5 = *(v4 - 8);
        if (v5)
        {
          v6 = (v4 + (v5 << 6) - 64);
          v7 = -64 * v5;
          do
          {
            v6 = (icu::UnicodeString::~UnicodeString(v5, v6) - 64);
            v7 += 64;
          }

          while (v7);
        }

        MEMORY[0x19A8B25E0](v4 - 16, 0x1093C808E78F3FDLL);
      }
    }

    v8 = *(v3 + 80);
    if (v8)
    {
      if (*v8)
      {
        uhash_close(*v8);
      }

      return MEMORY[0x19A8B2600](v8, 0x10A0C40DD2A5DBALL);
    }
  }

  return result;
}

void icu::DateIntervalInfo::copyHash(uint64_t a1, uint64_t **a2, uint64_t *a3, int *a4)
{
  v5 = *MEMORY[0x1E69E9840];
  if (*a4 <= 0)
  {
    v4 = -1;
    if (a2)
    {
      if (uhash_nextElement(*a2, &v4))
      {
        operator new[]();
      }
    }
  }
}

void icu::DateIntervalInfo::~DateIntervalInfo(uint64_t ***this)
{
  icu::DateIntervalInfo::deleteHash(this, this[10]);
  this[10] = 0;
  icu::UnicodeString::~UnicodeString(v2, (this + 1));

  icu::UObject::~UObject(this);
}

{
  icu::DateIntervalInfo::~DateIntervalInfo(this);

  JUMPOUT(0x19A8B2600);
}

BOOL icu::DateIntervalInfo::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }

LABEL_16:
    if (*(a1 + 72) == *(a2 + 72))
    {
      return uhash_equals(**(a1 + 80), **(a2 + 80)) != 0;
    }

    return 0;
  }

  if ((v4 & 0x8000) != 0)
  {
    v5 = *(a1 + 20);
  }

  else
  {
    v5 = v4 >> 5;
  }

  result = 0;
  v7 = *(a2 + 16);
  if ((v7 & 0x8000u) == 0)
  {
    v8 = v7 >> 5;
  }

  else
  {
    v8 = *(a2 + 20);
  }

  if ((v7 & 1) == 0 && v5 == v8)
  {
    v9 = (v7 & 2) != 0 ? (a2 + 18) : *(a2 + 32);
    result = icu::UnicodeString::doEquals(a1 + 8, v9, v5);
    if (result)
    {
      goto LABEL_16;
    }
  }

  return result;
}

UChar **icu::DateIntervalInfo::getIntervalPattern(uint64_t a1, uint64_t a2, uint64_t a3, UChar **a4, int *a5)
{
  if (*a5 <= 0)
  {
    v8 = a3;
    v9 = uhash_get(**(a1 + 80), a2);
    if (v9)
    {
      v10 = v9;
      v11 = icu::DateIntervalInfo::calendarFieldToIntervalIndex(v8, a5);
      if (*a5 <= 0)
      {
        v12 = v10 + (v11 << 6);
        if (*(v12 + 8) >= 0x20u)
        {
          icu::UnicodeString::operator=(a4, v12);
        }
      }
    }
  }

  return a4;
}

uint64_t icu::DateIntervalInfo::calendarFieldToIntervalIndex(unsigned int a1, int *a2)
{
  if (*a2 <= 0)
  {
    if (a1 < 0xF && ((0x7EA7u >> a1) & 1) != 0)
    {
      return dword_19548CF54[a1];
    }

    *a2 = 1;
  }

  return 9;
}

void sub_195312DF8(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F093A3D0;
  icu::UnicodeString::~UnicodeString(a2, (a1 + 16));

  icu::ResourceSink::~ResourceSink(a1);
}

void sub_195312E4C(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a1 = &unk_1F093A3D0;
  icu::UnicodeString::~UnicodeString(a2, (a1 + 16));
  icu::ResourceSink::~ResourceSink(a1);

  JUMPOUT(0x19A8B2600);
}

uint64_t icu::DateIntervalInfo::parseSkeleton(uint64_t this, const icu::UnicodeString *a2, int *a3)
{
  for (i = 0; ; ++i)
  {
    v4 = *(this + 8);
    if (v4 < 0)
    {
      break;
    }

    if (i >= *(this + 8) >> 5)
    {
      return this;
    }

    v5 = *(this + 8) >> 5;
LABEL_7:
    if (v5 <= i)
    {
      v7 = -1;
    }

    else
    {
      if ((v4 & 2) != 0)
      {
        v6 = this + 10;
      }

      else
      {
        v6 = *(this + 24);
      }

      v7 = *(v6 + 2 * i);
    }

    ++*(a2 + v7 - 65);
  }

  v5 = *(this + 12);
  if (i < v5)
  {
    v5 = v5;
    goto LABEL_7;
  }

  return this;
}

uint64_t icu::DateIntervalInfo::getBestSkeleton(uint64_t ***this, const icu::UnicodeString *a2, signed __int8 *a3)
{
  v4 = a2;
  v77 = *MEMORY[0x1E69E9840];
  v76 = 0;
  memset(v75, 0, sizeof(v75));
  v69 = 0u;
  v72 = 0;
  v71 = 0u;
  v70 = 0u;
  v68 = &unk_1F0935D00;
  v6 = *(a2 + 4);
  v7 = v6;
  v8 = v6 >> 5;
  if (v7 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(a2 + 3);
  }

  LOWORD(v69) = 2;
  if (icu::UnicodeString::doIndexOf(a2, 0x7Au, 0, v9) == -1 && ((v10 = *(v4 + 4), v11 = v10, v12 = v10 >> 5, v11 >= 0) ? (v13 = v12) : (v13 = *(v4 + 3)), icu::UnicodeString::doIndexOf(v4, 0x6Bu, 0, v13) == -1 && ((v14 = *(v4 + 4), v15 = v14, v16 = v14 >> 5, v15 >= 0) ? (v17 = v16) : (v17 = *(v4 + 3)), icu::UnicodeString::doIndexOf(v4, 0x4Bu, 0, v17) == -1 && ((v18 = *(v4 + 4), v19 = v18, v20 = v18 >> 5, v19 >= 0) ? (v21 = v20) : (v21 = *(v4 + 3)), icu::UnicodeString::doIndexOf(v4, 0x61u, 0, v21) == -1 && ((v22 = *(v4 + 4), v23 = v22, v24 = v22 >> 5, v23 >= 0) ? (v25 = v24) : (v25 = *(v4 + 3)), icu::UnicodeString::doIndexOf(v4, 0x62u, 0, v25) == -1)))))
  {
    v50 = 1;
  }

  else
  {
    icu::UnicodeString::operator=(&v68, v4);
    icu::UnicodeString::UnicodeString(v73, 122);
    icu::UnicodeString::UnicodeString(&v65, 118);
    if ((v69 & 0x8000u) == 0)
    {
      v27 = v69 >> 5;
    }

    else
    {
      v27 = DWORD1(v69);
    }

    if ((SWORD4(v73[0]) & 0x8000u) == 0)
    {
      v28 = WORD4(v73[0]) >> 5;
    }

    else
    {
      v28 = HIDWORD(v73[0]);
    }

    v29 = v66 >> 5;
    if ((v66 & 0x8000u) != 0)
    {
      v29 = v67;
    }

    icu::UnicodeString::findAndReplace(&v68, 0, v27, v73, 0, v28, &v65, 0, v29);
    icu::UnicodeString::~UnicodeString(v30, &v65);
    icu::UnicodeString::~UnicodeString(v31, v73);
    icu::UnicodeString::UnicodeString(v73, 107);
    icu::UnicodeString::UnicodeString(&v65, 72);
    if ((v69 & 0x8000u) == 0)
    {
      v32 = v69 >> 5;
    }

    else
    {
      v32 = DWORD1(v69);
    }

    if ((SWORD4(v73[0]) & 0x8000u) == 0)
    {
      v33 = WORD4(v73[0]) >> 5;
    }

    else
    {
      v33 = HIDWORD(v73[0]);
    }

    v34 = v66 >> 5;
    if ((v66 & 0x8000u) != 0)
    {
      v34 = v67;
    }

    icu::UnicodeString::findAndReplace(&v68, 0, v32, v73, 0, v33, &v65, 0, v34);
    icu::UnicodeString::~UnicodeString(v35, &v65);
    icu::UnicodeString::~UnicodeString(v36, v73);
    icu::UnicodeString::UnicodeString(v73, 75);
    icu::UnicodeString::UnicodeString(&v65, 104);
    if ((v69 & 0x8000u) == 0)
    {
      v37 = v69 >> 5;
    }

    else
    {
      v37 = DWORD1(v69);
    }

    if ((SWORD4(v73[0]) & 0x8000u) == 0)
    {
      v38 = WORD4(v73[0]) >> 5;
    }

    else
    {
      v38 = HIDWORD(v73[0]);
    }

    v39 = v66 >> 5;
    if ((v66 & 0x8000u) != 0)
    {
      v39 = v67;
    }

    icu::UnicodeString::findAndReplace(&v68, 0, v37, v73, 0, v38, &v65, 0, v39);
    icu::UnicodeString::~UnicodeString(v40, &v65);
    icu::UnicodeString::~UnicodeString(v41, v73);
    icu::UnicodeString::UnicodeString(v73, 97);
    v65 = &unk_1F0935D00;
    v66 = 2;
    if ((v69 & 0x8000u) == 0)
    {
      v42 = v69 >> 5;
    }

    else
    {
      v42 = DWORD1(v69);
    }

    if ((SWORD4(v73[0]) & 0x8000u) == 0)
    {
      v43 = WORD4(v73[0]) >> 5;
    }

    else
    {
      v43 = HIDWORD(v73[0]);
    }

    icu::UnicodeString::findAndReplace(&v68, 0, v42, v73, 0, v43, &v65, 0, 0);
    icu::UnicodeString::~UnicodeString(v44, &v65);
    icu::UnicodeString::~UnicodeString(v45, v73);
    icu::UnicodeString::UnicodeString(v73, 98);
    v65 = &unk_1F0935D00;
    v66 = 2;
    if ((v69 & 0x8000u) == 0)
    {
      v46 = v69 >> 5;
    }

    else
    {
      v46 = DWORD1(v69);
    }

    if ((SWORD4(v73[0]) & 0x8000u) == 0)
    {
      v47 = WORD4(v73[0]) >> 5;
    }

    else
    {
      v47 = HIDWORD(v73[0]);
    }

    icu::UnicodeString::findAndReplace(&v68, 0, v46, v73, 0, v47, &v65, 0, 0);
    icu::UnicodeString::~UnicodeString(v48, &v65);
    icu::UnicodeString::~UnicodeString(v49, v73);
    v50 = 0;
    v4 = &v68;
  }

  icu::DateIntervalInfo::parseSkeleton(v4, v75, v26);
  v51 = 0;
  *a3 = 0;
  LODWORD(v65) = -1;
  v52 = 56632;
  while (1)
  {
    Element = uhash_nextElement(*this[10], &v65);
    if (!Element)
    {
      break;
    }

    v55 = *(Element + 16);
    memset(v73, 0, sizeof(v73));
    v74 = 0;
    icu::DateIntervalInfo::parseSkeleton(v55, v73, v54);
    v56 = 0;
    v57 = 0;
    v58 = 1;
    do
    {
      v59 = *(v75 + v56);
      v60 = *(v73 + v56);
      v61 = v59 - v60;
      if (v59 != v60)
      {
        if (v59 && v60)
        {
          if (v56 != 48 || (v59 <= 2 ? (v62 = v60 <= 2) : (v62 = 1), v62 && (v59 < 3 || v60 > 2)))
          {
            if (v61 < 0)
            {
              v61 = v60 - v59;
            }

            v57 += v61;
          }

          else
          {
            v57 += 256;
          }
        }

        else
        {
          v57 += 4096;
          v58 = -1;
        }
      }

      v56 += 4;
    }

    while (v56 != 232);
    if (v57 >= v52)
    {
      if (!v57)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v51 = v55;
      v52 = v57;
LABEL_81:
      if (!v57)
      {
        v58 = 0;
      }

      *a3 = v58;
      if (!v57)
      {
        break;
      }
    }
  }

  if (*a3 == -1)
  {
    v63 = 1;
  }

  else
  {
    v63 = v50;
  }

  if ((v63 & 1) == 0)
  {
    v63 = 2;
    *a3 = 2;
  }

  icu::UnicodeString::~UnicodeString(v63, &v68);
  return v51;
}

uint64_t sub_19531354C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = *(a1 + v4 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    result = *(a2 + v4 + 8) & 1;
LABEL_15:
    if (v5 <= 7)
    {
      ++v5;
      v4 += 64;
      if (result)
      {
        continue;
      }
    }

    return result;
  }

  if ((v6 & 0x8000) != 0)
  {
    v7 = *(a1 + v4 + 12);
  }

  else
  {
    v7 = v6 >> 5;
  }

  result = 0;
  v9 = *(a2 + v4 + 8);
  v10 = *(a2 + v4 + 12);
  if ((v9 & 0x8000u) == 0)
  {
    v10 = v9 >> 5;
  }

  if ((v9 & 1) == 0 && v7 == v10)
  {
    if ((v9 & 2) != 0)
    {
      v11 = (a2 + v4 + 10);
    }

    else
    {
      v11 = *(a2 + v4 + 24);
    }

    result = icu::UnicodeString::doEquals(a1 + v4, v11, v7);
    goto LABEL_15;
  }

  return result;
}

void *sub_195313614(void *result, char *a2, icu::ResourceValue *a3, uint64_t a4, int *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  __s1 = a2;
  if (*a5 > 0)
  {
    return result;
  }

  v7 = result;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  result = (*(*a3 + 88))(v12, a3, a5);
  if (*a5 > 0)
  {
    return result;
  }

  result = icu::ResourceTable::getKeyAndValue(v12, 0, &__s1, a3);
  if (!result)
  {
    return result;
  }

  v8 = 1;
  while (1)
  {
    if (strcmp(__s1, "intervalFormats"))
    {
      goto LABEL_9;
    }

    if ((*(*a3 + 24))(a3) == 3)
    {
      break;
    }

    if ((*(*a3 + 24))(a3) == 2)
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      result = (*(*a3 + 88))(v17, a3, a5);
      if (*a5 <= 0)
      {
        result = icu::ResourceTable::getKeyAndValue(v17, 0, &__s1, a3);
        if (result)
        {
          v11 = 1;
          do
          {
            if (sub_195313A5C(v7, __s1))
            {
              if ((*(*a3 + 24))(a3) == 2)
              {
                result = sub_195313AE8(v7, __s1, a3, a5);
                if (*a5 > 0)
                {
                  break;
                }
              }
            }

            result = icu::ResourceTable::getKeyAndValue(v17, v11++, &__s1, a3);
          }

          while (result);
        }
      }

      return result;
    }

LABEL_9:
    result = icu::ResourceTable::getKeyAndValue(v12, v8++, &__s1, a3);
    if (!result)
    {
      return result;
    }
  }

  v16 = 0;
  v15 = (*(*a3 + 40))(a3, &v16, a5);
  icu::UnicodeString::UnicodeString(v17, 1, &v15, v16);
  v9 = *a5;
  if (v9 <= 0)
  {
    v10 = (v7[3] & 1) != 0 ? 2 : v7[3] & 0x1E;
    *(v7 + 12) = v10;
    sub_19531391C(v17, (v7 + 2), a5);
    v9 = *a5;
    if (v9 >= 1)
    {
      icu::UnicodeString::setToBogus((v7 + 2));
    }
  }

  return icu::UnicodeString::~UnicodeString(v9, v17);
}

uint64_t sub_19531391C(uint64_t result, uint64_t a2, int *a3)
{
  if (*a3 <= 0)
  {
    v5 = result;
    result = icu::UnicodeString::doEqualsSubstring(result, 0, 17, L"/LOCALE/calendar//intervalFormats", 0, 17);
    if (!result)
    {
      goto LABEL_11;
    }

    v6 = *(v5 + 8);
    v7 = v6;
    v8 = v6 >> 5;
    if (v7 < 0)
    {
      v8 = *(v5 + 12);
    }

    result = icu::UnicodeString::doEqualsSubstring(v5, v8 - 16, 16, L"/intervalFormats", 0, 16);
    if (result)
    {
      v9 = *(v5 + 8);
      v10 = v9;
      v11 = v9 >> 5;
      if (v10 < 0)
      {
        v11 = *(v5 + 12);
      }

      v12 = *(*v5 + 24);

      return v12(v5, 17, v11 - 16, a2);
    }

    else
    {
LABEL_11:
      *a3 = 3;
    }
  }

  return result;
}

uint64_t sub_195313A5C(uint64_t a1, _BYTE *a2)
{
  if (!*(a1 + 80))
  {
    return 1;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = a2 + 1;
  do
  {
    if (v2 == 121)
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = v5;
    }

    if (v2 == 100)
    {
      v7 = v5;
      v8 = v3 + 1;
    }

    else
    {
      v8 = v3;
    }

    if (v2 == 77)
    {
      ++v4;
    }

    else
    {
      v5 = v7;
    }

    if (v2 != 77)
    {
      v3 = v8;
    }

    v9 = *v6++;
    v2 = v9;
  }

  while (v9);
  if (v4 > 2)
  {
    return 0;
  }

  v10 = v5 > 0;
  v11 = v4 <= 0;
  v12 = v4 > 0 && v10;
  if (!v11)
  {
    v10 = 1;
  }

  v13 = v3 > 0 && v10;
  result = 1;
  if (!v12 && !v13)
  {
    return 0;
  }

  return result;
}

void *sub_195313AE8(void *result, char *a2, icu::ResourceValue *a3, int *a4)
{
  v12 = a2;
  if (*a4 <= 0)
  {
    v7 = result;
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    result = (*(*a3 + 88))(v10, a3, a4);
    if (*a4 <= 0)
    {
      result = icu::ResourceTable::getKeyAndValue(v10, 0, &v12, a3);
      if (result)
      {
        v8 = 1;
        do
        {
          if (!(*(*a3 + 24))(a3))
          {
            v9 = sub_195313C20(v7, v12);
            if (v9 <= 24)
            {
              result = sub_195313CBC(v7, a2, v9, a3, a4);
              if (*a4 > 0)
              {
                break;
              }
            }
          }

          result = icu::ResourceTable::getKeyAndValue(v10, v8++, &v12, a3);
        }

        while (result);
      }
    }
  }

  return result;
}

uint64_t sub_195313C20(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (!*a2 || a2[1])
  {
    return 25;
  }

  if (*a2 <= 0x60u)
  {
    if (v2 != 66)
    {
      if (v2 == 71)
      {
        return 0;
      }

      if (v2 == 77)
      {
        return 2;
      }

      goto LABEL_14;
    }

    return 9;
  }

  switch(v2)
  {
    case 'a':
      return 9;
    case 'd':
      return 5;
    case 'y':
      return 1;
  }

LABEL_14:
  if ((v2 & 0xFFFFFFDF) == 0x48)
  {
    return 10;
  }

  if (v2 != 109)
  {
    return 25;
  }

  return 12;
}

void *sub_195313CBC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  result = icu::DateIntervalInfo::calendarFieldToIntervalIndex(a3, a5);
  if (*a5 <= 0)
  {
    v11 = result;
    memset(v25, 0, 64);
    icu::UnicodeString::UnicodeString(v25, a2, -1);
    v12 = uhash_get(**(*(a1 + 8) + 80), v25);
    if (!v12 || (v13 = *(v12 + (v11 << 6) + 8), v13 <= 0x1F))
    {
      memset(v24, 0, sizeof(v24));
      LODWORD(v19) = 0;
      v21 = (*(*a4 + 32))(a4, &v19, a5);
      icu::UnicodeString::UnicodeString(v24, 1, &v21, v19);
      if (*(a1 + 81))
      {
        icu::UnicodeString::UnicodeString(&v21, 8207);
        v19 = &unk_1F0935D00;
        v20 = 2;
        if (SLOWORD(v24[1]) >= 0)
        {
          v14 = LOWORD(v24[1]) >> 5;
        }

        else
        {
          v14 = HIDWORD(v24[1]);
        }

        if ((v22 & 0x8000u) == 0)
        {
          v15 = v22 >> 5;
        }

        else
        {
          v15 = v23;
        }

        icu::UnicodeString::findAndReplace(v24, 0, v14, &v21, 0, v15, &v19, 0, 0);
        icu::UnicodeString::~UnicodeString(v16, &v19);
        icu::UnicodeString::~UnicodeString(v17, &v21);
      }

      icu::DateIntervalInfo::setIntervalPatternInternally(*(a1 + 8), v25, a3, v24, a5);
      icu::UnicodeString::~UnicodeString(v18, v24);
    }

    return icu::UnicodeString::~UnicodeString(v13, v25);
  }

  return result;
}

uint64_t icu::DateTimePatternGenerator::createInstance(icu::DateTimePatternGenerator *this, UErrorCode *a2)
{
  Default = icu::Locale::getDefault(this);

  return icu::DateTimePatternGenerator::createInstance(Default, this, 0);
}

uint64_t icu::DateTimePatternGenerator::createInstance(icu::DateTimePatternGenerator *this, UErrorCode *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::DateTimePatternGenerator::createInstanceNoStdPat(icu::DateTimePatternGenerator *this, UErrorCode *a2, UErrorCode *a3)
{
  if (*a2 <= 0)
  {
    operator new();
  }

  return 0;
}

uint64_t icu::DateTimePatternGenerator::createEmptyInstance(UErrorCode *this, UErrorCode *a2)
{
  if (*this <= 0)
  {
    operator new();
  }

  return 0;
}

void icu::DateTimePatternGenerator::DateTimePatternGenerator(icu::DateTimePatternGenerator *this, UErrorCode *a2)
{
  *this = &unk_1F093A430;
  icu::Locale::Locale((this + 8));
  for (i = 0; i != 1024; i += 64)
  {
    v4 = this + i;
    *(v4 + 33) = &unk_1F0935D00;
    *(v4 + 136) = 2;
  }

  for (j = 0; j != 3072; j += 64)
  {
    v6 = this + j;
    *(v6 + 161) = &unk_1F0935D00;
    *(v6 + 648) = 2;
  }

  for (k = 0; k != 256; k += 64)
  {
    v8 = this + k;
    *(v8 + 545) = &unk_1F0935D00;
    *(v8 + 2184) = 2;
  }

  *(this + 577) = &unk_1F0935D00;
  *(this + 2312) = 2;
  *(this + 4680) = 0u;
  *(this + 587) = &unk_1F0935D00;
  *(this + 2352) = 2;
  *(this + 2380) = 0;
  *(this + 1198) = 0;
  operator new();
}

void icu::DateTimePatternGenerator::DateTimePatternGenerator(icu::DateTimePatternGenerator *this, const icu::Locale *a2, UErrorCode *a3, signed __int8 a4)
{
  *this = &unk_1F093A430;
  icu::Locale::Locale((this + 8), a2);
  for (i = 0; i != 1024; i += 64)
  {
    v6 = this + i;
    *(v6 + 33) = &unk_1F0935D00;
    *(v6 + 136) = 2;
  }

  for (j = 0; j != 3072; j += 64)
  {
    v8 = this + j;
    *(v8 + 161) = &unk_1F0935D00;
    *(v8 + 648) = 2;
  }

  for (k = 0; k != 256; k += 64)
  {
    v10 = this + k;
    *(v10 + 545) = &unk_1F0935D00;
    *(v10 + 2184) = 2;
  }

  *(this + 577) = &unk_1F0935D00;
  *(this + 2312) = 2;
  *(this + 4680) = 0u;
  *(this + 587) = &unk_1F0935D00;
  *(this + 2352) = 2;
  *(this + 2380) = 0;
  *(this + 1198) = 0;
  operator new();
}

void icu::DateTimePatternGenerator::initData(uint64_t this, const char **a2, UErrorCode *a3, int a4)
{
  if (*a3 <= 0)
  {
    if (*(a2 + 216))
    {
      *a3 = U_ILLEGAL_ARGUMENT_ERROR;
    }

    else
    {
      *(this + 4680) = 0u;
      icu::DateTimePatternGenerator::addCanonicalItems(this, a3);
      if (!a4)
      {
        icu::DateTimePatternGenerator::addICUPatterns(this, a2, a3);
      }

      icu::DateTimePatternGenerator::addCLDRData(this, a2, a3);
      icu::DateTimePatternGenerator::setDateTimeFromCalendar(this, a2, a3);
      icu::DateTimePatternGenerator::setDecimalSymbols(this, a2, a3);
      if (*a3 <= 0)
      {
        if (atomic_load_explicit(&dword_1ED442BB0, memory_order_acquire) == 2 || !icu::umtx_initImplPreInit(&dword_1ED442BB0))
        {
          if (dword_1ED442BB4 >= 1)
          {
            *a3 = dword_1ED442BB4;
          }
        }

        else
        {
          icu::DateTimePatternGenerator::loadAllowedHourFormatsData(a3, v8);
          dword_1ED442BB4 = *a3;
          icu::umtx_initImplPostInit(&dword_1ED442BB0);
        }
      }

      icu::DateTimePatternGenerator::getAllowedHourFormats(this, a2, a3);
      *(this + 4792) = *a3;
    }
  }
}