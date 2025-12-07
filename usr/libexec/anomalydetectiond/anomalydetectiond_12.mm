uint64_t CMMsl::CVIMUMeasurement::hash_value(CMMsl::CVIMUMeasurement *this)
{
  if ((*(this + 68) & 0x40) == 0)
  {
    v1 = 0.0;
    if ((*(this + 68) & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_25:
    v2 = 0.0;
    if ((*(this + 68) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    v3 = 0.0;
    if ((*(this + 68) & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_27:
    v4 = 0.0;
    if (*(this + 68))
    {
      goto LABEL_12;
    }

LABEL_28:
    v5 = 0.0;
    if ((*(this + 68) & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v6 = 0.0;
    if ((*(this + 68) & 4) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

  v1 = *(this + 7);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 68) & 8) == 0)
  {
    goto LABEL_25;
  }

LABEL_3:
  v2 = *(this + 4);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 68) & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v3 = *(this + 5);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 68) & 0x20) == 0)
  {
    goto LABEL_27;
  }

LABEL_9:
  v4 = *(this + 6);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 68) & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  v5 = *(this + 1);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((*(this + 68) & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v6 = *(this + 2);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((*(this + 68) & 4) != 0)
  {
LABEL_18:
    v7 = *(this + 3);
    if (v7 == 0.0)
    {
      v7 = 0.0;
    }

    if ((*(this + 68) & 0x80) != 0)
    {
      goto LABEL_21;
    }

LABEL_31:
    v8 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8;
  }

LABEL_30:
  v7 = 0.0;
  if ((*(this + 68) & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v8 = *(this + 16);
  return *&v2 ^ *&v1 ^ *&v3 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8;
}

uint64_t CMMsl::CVWatchCalories::CVWatchCalories(uint64_t this)
{
  *this = off_10041D708;
  *(this + 28) = 0;
  return this;
}

{
  *this = off_10041D708;
  *(this + 28) = 0;
  return this;
}

void CMMsl::CVWatchCalories::~CVWatchCalories(CMMsl::CVWatchCalories *this)
{
  PB::Base::~Base(this);

  operator delete();
}

double CMMsl::CVWatchCalories::CVWatchCalories(CMMsl::CVWatchCalories *this, const CMMsl::CVWatchCalories *a2)
{
  *this = off_10041D708;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    LODWORD(result) = *(a2 + 6);
    v3 = 4;
    *(this + 28) = 4;
    *(this + 6) = LODWORD(result);
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if (v2)
  {
    result = *(a2 + 1);
    *(this + 28) = v3 | 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::CVWatchCalories::operator=(uint64_t a1, const CMMsl::CVWatchCalories *a2)
{
  if (a1 != a2)
  {
    CMMsl::CVWatchCalories::CVWatchCalories(&v7, a2);
    v3 = *(a1 + 28);
    *(a1 + 28) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CVWatchCalories *a2, CMMsl::CVWatchCalories *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::CVWatchCalories::CVWatchCalories(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D708;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = off_10041D708;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::CVWatchCalories::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = off_10041D708;
    v3 = *(a2 + 28);
    *(a2 + 28) = 0;
    v4 = *(a2 + 24);
    v12 = *(a1 + 28);
    v5 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v5;
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    *(a1 + 28) = v3;
    *(a1 + 8) = v7;
    v10 = v6;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::CVWatchCalories::formatText(CMMsl::CVWatchCalories *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "calories_kCal", *(this + 6));
    v5 = *(this + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "globalMachtime", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "localMachtime", *(this + 2));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CVWatchCalories::readFrom(CMMsl::CVWatchCalories *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_43;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_43;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_33;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_37:
        v2 = *(a2 + 1) + 8;
LABEL_38:
        *(a2 + 1) = v2;
        goto LABEL_39;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_33;
        }

        *(this + 6) = *(*a2 + v2);
        v2 = *(a2 + 1) + 4;
        goto LABEL_38;
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_39:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_43;
      }
    }

    *(this + 28) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_33:
      *(a2 + 24) = 1;
      goto LABEL_39;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_37;
  }

LABEL_43:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::CVWatchCalories::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 16), 2u);
    if ((*(v3 + 28) & 1) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 24), 1u);
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5, 3u);
}

BOOL CMMsl::CVWatchCalories::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 28) & 2) != 0)
  {
    if ((*(a2 + 28) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 28) & 1) == 0;
  if (*(a1 + 28))
  {
    return (*(a2 + 28) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t CMMsl::CVWatchCalories::hash_value(CMMsl::CVWatchCalories *this)
{
  if ((*(this + 28) & 4) != 0)
  {
    v4 = *(this + 6);
    v1 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v1 = 0;
    }

    if ((*(this + 28) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 2);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if (*(this + 28))
      {
        goto LABEL_6;
      }

LABEL_13:
      v3 = 0.0;
      return *&v2 ^ v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3;
}

void *CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(void *this)
{
  *this = off_10041D740;
  this[28] = 0;
  return this;
}

{
  *this = off_10041D740;
  this[28] = 0;
  return this;
}

void CMMsl::CalorieControllerMETsConsumed::~CalorieControllerMETsConsumed(CMMsl::CalorieControllerMETsConsumed *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(CMMsl::CalorieControllerMETsConsumed *this, const CMMsl::CalorieControllerMETsConsumed *a2)
{
  *this = off_10041D740;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000) != 0)
  {
    v4 = *(a2 + 13);
    v3 = 4096;
    *(this + 28) = 4096;
    *(this + 13) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 2);
    v3 |= 2uLL;
    *(this + 28) = v3;
    *(this + 2) = v4;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 8);
    v3 |= 0x80uLL;
    *(this + 28) = v3;
    *(this + 8) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 0x40000) == 0)
    {
LABEL_8:
      if ((v2 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_45;
    }
  }

  else if ((v2 & 0x40000) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(a2 + 38);
  v3 |= 0x40000uLL;
  *(this + 28) = v3;
  *(this + 38) = v5;
  v2 = *(a2 + 28);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(v4) = *(a2 + 51);
  v3 |= 0x80000000uLL;
  *(this + 28) = v3;
  *(this + 51) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_10:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_47;
  }

LABEL_46:
  LODWORD(v4) = *(a2 + 54);
  v3 |= 0x400000000uLL;
  *(this + 28) = v3;
  *(this + 54) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_48;
  }

LABEL_47:
  LODWORD(v4) = *(a2 + 48);
  v3 |= 0x10000000uLL;
  *(this + 28) = v3;
  *(this + 48) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x100000) == 0)
  {
LABEL_12:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_49;
  }

LABEL_48:
  LODWORD(v4) = *(a2 + 40);
  v3 |= 0x100000uLL;
  *(this + 28) = v3;
  *(this + 40) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x200000) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_50;
  }

LABEL_49:
  LODWORD(v4) = *(a2 + 41);
  v3 |= 0x200000uLL;
  *(this + 28) = v3;
  *(this + 41) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_51;
  }

LABEL_50:
  v4 = *(a2 + 11);
  v3 |= 0x400uLL;
  *(this + 28) = v3;
  *(this + 11) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_52;
  }

LABEL_51:
  v6 = *(a2 + 222);
  v3 |= 0x2000000000uLL;
  *(this + 28) = v3;
  *(this + 222) = v6;
  v2 = *(a2 + 28);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_53;
  }

LABEL_52:
  v4 = *(a2 + 5);
  v3 |= 0x10uLL;
  *(this + 28) = v3;
  *(this + 5) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x4000) == 0)
  {
LABEL_17:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_54;
  }

LABEL_53:
  v4 = *(a2 + 15);
  v3 |= 0x4000uLL;
  *(this + 28) = v3;
  *(this + 15) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_55;
  }

LABEL_54:
  v7 = *(a2 + 50);
  v3 |= 0x40000000uLL;
  *(this + 28) = v3;
  *(this + 50) = v7;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_56;
  }

LABEL_55:
  v4 = *(a2 + 14);
  v3 |= 0x2000uLL;
  *(this + 28) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x8000) == 0)
  {
LABEL_20:
    if ((v2 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_57;
  }

LABEL_56:
  v4 = *(a2 + 16);
  v3 |= 0x8000uLL;
  *(this + 28) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 8) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_58;
  }

LABEL_57:
  v4 = *(a2 + 4);
  v3 |= 8uLL;
  *(this + 28) = v3;
  *(this + 4) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_59;
  }

LABEL_58:
  v4 = *(a2 + 12);
  v3 |= 0x800uLL;
  *(this + 28) = v3;
  *(this + 12) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_23:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_60;
  }

LABEL_59:
  v8 = *(a2 + 44);
  v3 |= 0x1000000uLL;
  *(this + 28) = v3;
  *(this + 44) = v8;
  v2 = *(a2 + 28);
  if ((v2 & 0x20000) == 0)
  {
LABEL_24:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_61;
  }

LABEL_60:
  v4 = *(a2 + 18);
  v3 |= 0x20000uLL;
  *(this + 28) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x20) == 0)
  {
LABEL_25:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

LABEL_61:
  v4 = *(a2 + 6);
  v3 |= 0x20uLL;
  *(this + 28) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x40) == 0)
  {
LABEL_26:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_63;
  }

LABEL_62:
  v4 = *(a2 + 7);
  v3 |= 0x40uLL;
  *(this + 28) = v3;
  *(this + 7) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x800000) == 0)
  {
LABEL_27:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_64;
  }

LABEL_63:
  v9 = *(a2 + 43);
  v3 |= 0x800000uLL;
  *(this + 28) = v3;
  *(this + 43) = v9;
  v2 = *(a2 + 28);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_65;
  }

LABEL_64:
  LODWORD(v4) = *(a2 + 47);
  v3 |= 0x8000000uLL;
  *(this + 28) = v3;
  *(this + 47) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_29:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_66;
  }

LABEL_65:
  LODWORD(v4) = *(a2 + 46);
  v3 |= 0x4000000uLL;
  *(this + 28) = v3;
  *(this + 46) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x10000) == 0)
  {
LABEL_30:
    if ((v2 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_67;
  }

LABEL_66:
  v10 = *(a2 + 17);
  v3 |= 0x10000uLL;
  *(this + 28) = v3;
  *(this + 17) = v10;
  v2 = *(a2 + 28);
  if ((v2 & 1) == 0)
  {
LABEL_31:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_68;
  }

LABEL_67:
  v11 = *(a2 + 1);
  v3 |= 1uLL;
  *(this + 28) = v3;
  *(this + 1) = v11;
  v2 = *(a2 + 28);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

LABEL_68:
  LODWORD(v4) = *(a2 + 52);
  v3 |= &_mh_execute_header;
  *(this + 28) = v3;
  *(this + 52) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_33:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_70;
  }

LABEL_69:
  v12 = *(a2 + 45);
  v3 |= 0x2000000uLL;
  *(this + 28) = v3;
  *(this + 45) = v12;
  v2 = *(a2 + 28);
  if ((v2 & 0x80000) == 0)
  {
LABEL_34:
    if ((v2 & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_71;
  }

LABEL_70:
  v13 = *(a2 + 39);
  v3 |= 0x80000uLL;
  *(this + 28) = v3;
  *(this + 39) = v13;
  v2 = *(a2 + 28);
  if ((v2 & 0x1000000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_72;
  }

LABEL_71:
  v14 = *(a2 + 221);
  v3 |= 0x1000000000uLL;
  *(this + 28) = v3;
  *(this + 221) = v14;
  v2 = *(a2 + 28);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_36:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_73;
  }

LABEL_72:
  v15 = *(a2 + 220);
  v3 |= 0x800000000uLL;
  *(this + 28) = v3;
  *(this + 220) = v15;
  v2 = *(a2 + 28);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_37:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  LODWORD(v4) = *(a2 + 49);
  v3 |= 0x20000000uLL;
  *(this + 28) = v3;
  *(this + 49) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x100) == 0)
  {
LABEL_38:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  v4 = *(a2 + 9);
  v3 |= 0x100uLL;
  *(this + 28) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x200) == 0)
  {
LABEL_39:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_76;
  }

LABEL_75:
  v4 = *(a2 + 10);
  v3 |= 0x200uLL;
  *(this + 28) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 28);
  if ((v2 & 0x400000) == 0)
  {
LABEL_40:
    if ((v2 & 4) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_77;
  }

LABEL_76:
  v16 = *(a2 + 42);
  v3 |= 0x400000uLL;
  *(this + 28) = v3;
  *(this + 42) = v16;
  v2 = *(a2 + 28);
  if ((v2 & 4) == 0)
  {
LABEL_41:
    if ((v2 & 0x200000000) == 0)
    {
      return *&v4;
    }

    goto LABEL_78;
  }

LABEL_77:
  v4 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 28) = v3;
  *(this + 3) = v4;
  if ((*(a2 + 28) & 0x200000000) == 0)
  {
    return *&v4;
  }

LABEL_78:
  LODWORD(v4) = *(a2 + 53);
  *(this + 28) = v3 | 0x200000000;
  *(this + 53) = v4;
  return *&v4;
}

CMMsl *CMMsl::CalorieControllerMETsConsumed::operator=(CMMsl *a1, const CMMsl::CalorieControllerMETsConsumed *a2)
{
  if (a1 != a2)
  {
    CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::CalorieControllerMETsConsumed *a2, CMMsl::CalorieControllerMETsConsumed *a3)
{
  v3 = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v4 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LODWORD(v3) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  LODWORD(v6) = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v6;
  LODWORD(v6) = *(this + 54);
  *(this + 54) = *(a2 + 54);
  *(a2 + 54) = v6;
  LODWORD(v6) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v6;
  LODWORD(v6) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  LODWORD(v6) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v6;
  v7 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v7;
  LOBYTE(v3) = *(this + 222);
  *(this + 222) = *(a2 + 222);
  *(a2 + 222) = v3;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v9;
  LODWORD(v3) = *(this + 50);
  *(this + 50) = *(a2 + 50);
  *(a2 + 50) = v3;
  v10 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v13;
  LODWORD(v3) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  v14 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v14;
  v15 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v15;
  v16 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v16;
  LODWORD(v3) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v3;
  LODWORD(v16) = *(this + 47);
  *(this + 47) = *(a2 + 47);
  *(a2 + 47) = v16;
  LODWORD(v16) = *(this + 46);
  *(this + 46) = *(a2 + 46);
  *(a2 + 46) = v16;
  v17 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v17;
  v18 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v18;
  LODWORD(v16) = *(this + 52);
  *(this + 52) = *(a2 + 52);
  *(a2 + 52) = v16;
  LODWORD(v18) = *(this + 45);
  *(this + 45) = *(a2 + 45);
  *(a2 + 45) = v18;
  LODWORD(v18) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v18;
  LOBYTE(v18) = *(this + 221);
  *(this + 221) = *(a2 + 221);
  *(a2 + 221) = v18;
  LOBYTE(v18) = *(this + 220);
  *(this + 220) = *(a2 + 220);
  *(a2 + 220) = v18;
  LODWORD(v16) = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = v16;
  v19 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v19;
  v20 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v20;
  LODWORD(v18) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v18;
  v21 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v21;
  result = *(this + 53);
  *(this + 53) = *(a2 + 53);
  *(a2 + 53) = result;
  return result;
}

float CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D740;
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 204) = *(a2 + 204);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 222) = *(a2 + 222);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 188) = *(a2 + 188);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 221) = *(a2 + 221);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 196) = *(a2 + 196);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 212);
  *(a1 + 212) = result;
  return result;
}

CMMsl *CMMsl::CalorieControllerMETsConsumed::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::CalorieControllerMETsConsumed::CalorieControllerMETsConsumed(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::CalorieControllerMETsConsumed::formatText(CMMsl::CalorieControllerMETsConsumed *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 0x40000) != 0)
  {
    PB::TextFormatter::format(a2, "activity", *(this + 38));
    v5 = *(this + 28);
    if ((v5 & 0x80000) == 0)
    {
LABEL_3:
      if ((v5 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((v5 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "activityTypeWithoutOverride", *(this + 39));
  v5 = *(this + 28);
  if ((v5 & 0x100000) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "avgTruthMets", *(this + 40));
  v5 = *(this + 28);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "basalCalories", *(this + 1));
  v5 = *(this + 28);
  if ((v5 & 0x200000) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "basalMets", *(this + 41));
  v5 = *(this + 28);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "computeTime", *(this + 2));
  v5 = *(this + 28);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "currentPace", *(this + 3));
  v5 = *(this + 28);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "distance", *(this + 4));
  v5 = *(this + 28);
  if ((v5 & 0x400000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "distanceSource", *(this + 42));
  v5 = *(this + 28);
  if ((v5 & 0x10) == 0)
  {
LABEL_11:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "duration", *(this + 5));
  v5 = *(this + 28);
  if ((v5 & 0x800000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "elevationAscended", *(this + 43));
  v5 = *(this + 28);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "gradeType", *(this + 44));
  v5 = *(this + 28);
  if ((v5 & 0x20) == 0)
  {
LABEL_14:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "heartRate", *(this + 6));
  v5 = *(this + 28);
  if ((v5 & 0x40) == 0)
  {
LABEL_15:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "heartRateConfidence", *(this + 7));
  v5 = *(this + 28);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "isMotionOverrideSet", *(this + 220));
  v5 = *(this + 28);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "isStanding", *(this + 221));
  v5 = *(this + 28);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_18:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "isStored", *(this + 222));
  v5 = *(this + 28);
  if ((v5 & 0x80) == 0)
  {
LABEL_19:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "now", *(this + 8));
  v5 = *(this + 28);
  if ((v5 & 0x100) == 0)
  {
LABEL_20:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "pedDistance", *(this + 9));
  v5 = *(this + 28);
  if ((v5 & 0x200) == 0)
  {
LABEL_21:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "pedRawDistance", *(this + 10));
  v5 = *(this + 28);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "pushCount", *(this + 45));
  v5 = *(this + 28);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "rawFMMets", *(this + 46));
  v5 = *(this + 28);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "rawHRMets", *(this + 47));
  v5 = *(this + 28);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "rawTruthMets", *(this + 48));
  v5 = *(this + 28);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "rawWRMets", *(this + 49));
  v5 = *(this + 28);
  if ((v5 & 0x400) == 0)
  {
LABEL_27:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "recordInterval", *(this + 11));
  v5 = *(this + 28);
  if ((v5 & 0x800) == 0)
  {
LABEL_28:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "speed", *(this + 12));
  v5 = *(this + 28);
  if ((v5 & 0x1000) == 0)
  {
LABEL_29:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "startTime", *(this + 13));
  v5 = *(this + 28);
  if ((v5 & 0x2000) == 0)
  {
LABEL_30:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "stepBegin", *(this + 14));
  v5 = *(this + 28);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "stepCount", *(this + 50));
  v5 = *(this + 28);
  if ((v5 & 0x4000) == 0)
  {
LABEL_32:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "stepDuration", *(this + 15));
  v5 = *(this + 28);
  if ((v5 & 0x8000) == 0)
  {
LABEL_33:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "stepEnd", *(this + 16));
  v5 = *(this + 28);
  if ((v5 & 0x10000) == 0)
  {
LABEL_34:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "totalCalories", *(this + 17));
  v5 = *(this + 28);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "userMets", *(this + 51));
  v5 = *(this + 28);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(a2, "vectorMag", *(this + 52));
  v5 = *(this + 28);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(a2, "vectorMagCmSimOnly", *(this + 53));
  v5 = *(this + 28);
  if ((v5 & 0x20000) == 0)
  {
LABEL_38:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "verticalSpeed", *(this + 18));
  if ((*(this + 28) & 0x400000000) != 0)
  {
LABEL_39:
    PB::TextFormatter::format(a2, "wrMets", *(this + 54));
  }

LABEL_40:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CalorieControllerMETsConsumed::readFrom(CMMsl::CalorieControllerMETsConsumed *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_294;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 28) |= 0x1000uLL;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 13) = *(*a2 + v22);
          goto LABEL_146;
        case 2u:
          *(this + 28) |= 2uLL;
          v65 = *(a2 + 1);
          if (v65 > 0xFFFFFFFFFFFFFFF7 || v65 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 2) = *(*a2 + v65);
          goto LABEL_146;
        case 3u:
          *(this + 28) |= 0x80uLL;
          v53 = *(a2 + 1);
          if (v53 > 0xFFFFFFFFFFFFFFF7 || v53 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 8) = *(*a2 + v53);
          goto LABEL_146;
        case 4u:
          *(this + 28) |= 0x40000uLL;
          v56 = *(a2 + 1);
          v55 = *(a2 + 2);
          v57 = *a2;
          if (v56 <= 0xFFFFFFFFFFFFFFF5 && v56 + 10 <= v55)
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            do
            {
              *(a2 + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                goto LABEL_274;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
            }

            while (!v14);
LABEL_196:
            LODWORD(v60) = 0;
            goto LABEL_274;
          }

          v154 = 0;
          v155 = 0;
          v60 = 0;
          v17 = v55 >= v56;
          v156 = v55 - v56;
          if (!v17)
          {
            v156 = 0;
          }

          v157 = (v57 + v56);
          v158 = v56 + 1;
          while (2)
          {
            if (v156)
            {
              v159 = *v157;
              *(a2 + 1) = v158;
              v60 |= (v159 & 0x7F) << v154;
              if (v159 < 0)
              {
                v154 += 7;
                --v156;
                ++v157;
                ++v158;
                v14 = v155++ > 8;
                if (v14)
                {
                  goto LABEL_196;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v60) = 0;
              }
            }

            else
            {
              LODWORD(v60) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_274:
          *(this + 38) = v60;
          goto LABEL_254;
        case 5u:
          *(this + 28) |= 0x80000000uLL;
          v40 = *(a2 + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 51) = *(*a2 + v40);
          goto LABEL_252;
        case 6u:
          *(this + 28) |= 0x400000000uLL;
          v72 = *(a2 + 1);
          if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 54) = *(*a2 + v72);
          goto LABEL_252;
        case 7u:
          *(this + 28) |= 0x10000000uLL;
          v83 = *(a2 + 1);
          if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 48) = *(*a2 + v83);
          goto LABEL_252;
        case 8u:
          *(this + 28) |= 0x100000uLL;
          v64 = *(a2 + 1);
          if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 40) = *(*a2 + v64);
          goto LABEL_252;
        case 9u:
          *(this + 28) |= 0x200000uLL;
          v97 = *(a2 + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 41) = *(*a2 + v97);
          goto LABEL_252;
        case 0xAu:
          *(this + 28) |= 0x400uLL;
          v42 = *(a2 + 1);
          if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 11) = *(*a2 + v42);
          goto LABEL_146;
        case 0xBu:
          *(this + 28) |= 0x2000000000uLL;
          v93 = *(a2 + 1);
          if (v93 >= *(a2 + 2))
          {
            v96 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v94 = v93 + 1;
            v95 = *(*a2 + v93);
            *(a2 + 1) = v94;
            v96 = v95 != 0;
          }

          *(this + 222) = v96;
          goto LABEL_254;
        case 0xCu:
          *(this + 28) |= 0x10uLL;
          v39 = *(a2 + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 5) = *(*a2 + v39);
          goto LABEL_146;
        case 0xDu:
          *(this + 28) |= 0x4000uLL;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 15) = *(*a2 + v41);
          goto LABEL_146;
        case 0xEu:
          *(this + 28) |= 0x40000000uLL;
          v75 = *(a2 + 1);
          v74 = *(a2 + 2);
          v76 = *a2;
          if (v75 <= 0xFFFFFFFFFFFFFFF5 && v75 + 10 <= v74)
          {
            v77 = 0;
            v78 = 0;
            v79 = 0;
            v80 = (v76 + v75);
            v81 = v75 + 1;
            do
            {
              *(a2 + 1) = v81;
              v82 = *v80++;
              v79 |= (v82 & 0x7F) << v77;
              if ((v82 & 0x80) == 0)
              {
                goto LABEL_277;
              }

              v77 += 7;
              ++v81;
              v14 = v78++ > 8;
            }

            while (!v14);
LABEL_206:
            LODWORD(v79) = 0;
            goto LABEL_277;
          }

          v160 = 0;
          v161 = 0;
          v79 = 0;
          v17 = v74 >= v75;
          v162 = v74 - v75;
          if (!v17)
          {
            v162 = 0;
          }

          v163 = (v76 + v75);
          v164 = v75 + 1;
          while (2)
          {
            if (v162)
            {
              v165 = *v163;
              *(a2 + 1) = v164;
              v79 |= (v165 & 0x7F) << v160;
              if (v165 < 0)
              {
                v160 += 7;
                --v162;
                ++v163;
                ++v164;
                v14 = v161++ > 8;
                if (v14)
                {
                  goto LABEL_206;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v79) = 0;
              }
            }

            else
            {
              LODWORD(v79) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_277:
          *(this + 50) = v79;
          goto LABEL_254;
        case 0xFu:
          *(this + 28) |= 0x2000uLL;
          v37 = *(a2 + 1);
          if (v37 > 0xFFFFFFFFFFFFFFF7 || v37 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 14) = *(*a2 + v37);
          goto LABEL_146;
        case 0x10u:
          *(this + 28) |= 0x8000uLL;
          v54 = *(a2 + 1);
          if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 16) = *(*a2 + v54);
          goto LABEL_146;
        case 0x11u:
          *(this + 28) |= 8uLL;
          v36 = *(a2 + 1);
          if (v36 > 0xFFFFFFFFFFFFFFF7 || v36 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 4) = *(*a2 + v36);
          goto LABEL_146;
        case 0x12u:
          *(this + 28) |= 0x800uLL;
          v70 = *(a2 + 1);
          if (v70 > 0xFFFFFFFFFFFFFFF7 || v70 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 12) = *(*a2 + v70);
          goto LABEL_146;
        case 0x13u:
          *(this + 28) |= 0x1000000uLL;
          v85 = *(a2 + 1);
          v84 = *(a2 + 2);
          v86 = *a2;
          if (v85 <= 0xFFFFFFFFFFFFFFF5 && v85 + 10 <= v84)
          {
            v87 = 0;
            v88 = 0;
            v89 = 0;
            v90 = (v86 + v85);
            v91 = v85 + 1;
            do
            {
              *(a2 + 1) = v91;
              v92 = *v90++;
              v89 |= (v92 & 0x7F) << v87;
              if ((v92 & 0x80) == 0)
              {
                goto LABEL_280;
              }

              v87 += 7;
              ++v91;
              v14 = v88++ > 8;
            }

            while (!v14);
LABEL_214:
            LODWORD(v89) = 0;
            goto LABEL_280;
          }

          v166 = 0;
          v167 = 0;
          v89 = 0;
          v17 = v84 >= v85;
          v168 = v84 - v85;
          if (!v17)
          {
            v168 = 0;
          }

          v169 = (v86 + v85);
          v170 = v85 + 1;
          while (2)
          {
            if (v168)
            {
              v171 = *v169;
              *(a2 + 1) = v170;
              v89 |= (v171 & 0x7F) << v166;
              if (v171 < 0)
              {
                v166 += 7;
                --v168;
                ++v169;
                ++v170;
                v14 = v167++ > 8;
                if (v14)
                {
                  goto LABEL_214;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v89) = 0;
              }
            }

            else
            {
              LODWORD(v89) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_280:
          *(this + 44) = v89;
          goto LABEL_254;
        case 0x14u:
          *(this + 28) |= 0x20000uLL;
          v112 = *(a2 + 1);
          if (v112 > 0xFFFFFFFFFFFFFFF7 || v112 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 18) = *(*a2 + v112);
          goto LABEL_146;
        case 0x15u:
          *(this + 28) |= 0x20uLL;
          v71 = *(a2 + 1);
          if (v71 > 0xFFFFFFFFFFFFFFF7 || v71 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 6) = *(*a2 + v71);
          goto LABEL_146;
        case 0x16u:
          *(this + 28) |= 0x40uLL;
          v73 = *(a2 + 1);
          if (v73 > 0xFFFFFFFFFFFFFFF7 || v73 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 7) = *(*a2 + v73);
          goto LABEL_146;
        case 0x17u:
          *(this + 28) |= 0x800000uLL;
          v104 = *(a2 + 1);
          v103 = *(a2 + 2);
          v105 = *a2;
          if (v104 <= 0xFFFFFFFFFFFFFFF5 && v104 + 10 <= v103)
          {
            v106 = 0;
            v107 = 0;
            v108 = 0;
            v109 = (v105 + v104);
            v110 = v104 + 1;
            do
            {
              *(a2 + 1) = v110;
              v111 = *v109++;
              v108 |= (v111 & 0x7F) << v106;
              if ((v111 & 0x80) == 0)
              {
                goto LABEL_283;
              }

              v106 += 7;
              ++v110;
              v14 = v107++ > 8;
            }

            while (!v14);
LABEL_226:
            LODWORD(v108) = 0;
            goto LABEL_283;
          }

          v172 = 0;
          v173 = 0;
          v108 = 0;
          v17 = v103 >= v104;
          v174 = v103 - v104;
          if (!v17)
          {
            v174 = 0;
          }

          v175 = (v105 + v104);
          v176 = v104 + 1;
          while (2)
          {
            if (v174)
            {
              v177 = *v175;
              *(a2 + 1) = v176;
              v108 |= (v177 & 0x7F) << v172;
              if (v177 < 0)
              {
                v172 += 7;
                --v174;
                ++v175;
                ++v176;
                v14 = v173++ > 8;
                if (v14)
                {
                  goto LABEL_226;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v108) = 0;
              }
            }

            else
            {
              LODWORD(v108) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_283:
          *(this + 43) = v108;
          goto LABEL_254;
        case 0x18u:
          *(this + 28) |= 0x8000000uLL;
          v114 = *(a2 + 1);
          if (v114 > 0xFFFFFFFFFFFFFFFBLL || v114 + 4 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 47) = *(*a2 + v114);
          goto LABEL_252;
        case 0x19u:
          *(this + 28) |= 0x4000000uLL;
          v52 = *(a2 + 1);
          if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 46) = *(*a2 + v52);
          goto LABEL_252;
        case 0x1Au:
          *(this + 28) |= 0x10000uLL;
          v44 = *(a2 + 1);
          v43 = *(a2 + 2);
          v45 = *a2;
          if (v44 <= 0xFFFFFFFFFFFFFFF5 && v44 + 10 <= v43)
          {
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v49 = (v45 + v44);
            v50 = v44 + 1;
            do
            {
              *(a2 + 1) = v50;
              v51 = *v49++;
              v48 |= (v51 & 0x7F) << v46;
              if ((v51 & 0x80) == 0)
              {
                goto LABEL_271;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_188:
            v48 = 0;
            goto LABEL_271;
          }

          v148 = 0;
          v149 = 0;
          v48 = 0;
          v17 = v43 >= v44;
          v150 = v43 - v44;
          if (!v17)
          {
            v150 = 0;
          }

          v151 = (v45 + v44);
          v152 = v44 + 1;
          while (2)
          {
            if (v150)
            {
              v153 = *v151;
              *(a2 + 1) = v152;
              v48 |= (v153 & 0x7F) << v148;
              if (v153 < 0)
              {
                v148 += 7;
                --v150;
                ++v151;
                ++v152;
                v14 = v149++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v48 = 0;
              }
            }

            else
            {
              v48 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_271:
          *(this + 17) = v48;
          goto LABEL_254;
        case 0x1Bu:
          *(this + 28) |= 1uLL;
          v134 = *(a2 + 1);
          v133 = *(a2 + 2);
          v135 = *a2;
          if (v134 <= 0xFFFFFFFFFFFFFFF5 && v134 + 10 <= v133)
          {
            v136 = 0;
            v137 = 0;
            v138 = 0;
            v139 = (v135 + v134);
            v140 = v134 + 1;
            do
            {
              *(a2 + 1) = v140;
              v141 = *v139++;
              v138 |= (v141 & 0x7F) << v136;
              if ((v141 & 0x80) == 0)
              {
                goto LABEL_292;
              }

              v136 += 7;
              ++v140;
              v14 = v137++ > 8;
            }

            while (!v14);
LABEL_250:
            v138 = 0;
            goto LABEL_292;
          }

          v190 = 0;
          v191 = 0;
          v138 = 0;
          v17 = v133 >= v134;
          v192 = v133 - v134;
          if (!v17)
          {
            v192 = 0;
          }

          v193 = (v135 + v134);
          v194 = v134 + 1;
          while (2)
          {
            if (v192)
            {
              v195 = *v193;
              *(a2 + 1) = v194;
              v138 |= (v195 & 0x7F) << v190;
              if (v195 < 0)
              {
                v190 += 7;
                --v192;
                ++v193;
                ++v194;
                v14 = v191++ > 8;
                if (v14)
                {
                  goto LABEL_250;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v138 = 0;
              }
            }

            else
            {
              v138 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_292:
          *(this + 1) = v138;
          goto LABEL_254;
        case 0x1Cu:
          *(this + 28) |= &_mh_execute_header;
          v34 = *(a2 + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 52) = *(*a2 + v34);
          goto LABEL_252;
        case 0x1Du:
          *(this + 28) |= 0x2000000uLL;
          v116 = *(a2 + 1);
          v115 = *(a2 + 2);
          v117 = *a2;
          if (v116 <= 0xFFFFFFFFFFFFFFF5 && v116 + 10 <= v115)
          {
            v118 = 0;
            v119 = 0;
            v120 = 0;
            v121 = (v117 + v116);
            v122 = v116 + 1;
            do
            {
              *(a2 + 1) = v122;
              v123 = *v121++;
              v120 |= (v123 & 0x7F) << v118;
              if ((v123 & 0x80) == 0)
              {
                goto LABEL_286;
              }

              v118 += 7;
              ++v122;
              v14 = v119++ > 8;
            }

            while (!v14);
LABEL_234:
            LODWORD(v120) = 0;
            goto LABEL_286;
          }

          v178 = 0;
          v179 = 0;
          v120 = 0;
          v17 = v115 >= v116;
          v180 = v115 - v116;
          if (!v17)
          {
            v180 = 0;
          }

          v181 = (v117 + v116);
          v182 = v116 + 1;
          while (2)
          {
            if (v180)
            {
              v183 = *v181;
              *(a2 + 1) = v182;
              v120 |= (v183 & 0x7F) << v178;
              if (v183 < 0)
              {
                v178 += 7;
                --v180;
                ++v181;
                ++v182;
                v14 = v179++ > 8;
                if (v14)
                {
                  goto LABEL_234;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v120) = 0;
              }
            }

            else
            {
              LODWORD(v120) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_286:
          *(this + 45) = v120;
          goto LABEL_254;
        case 0x1Eu:
          *(this + 28) |= 0x80000uLL;
          v125 = *(a2 + 1);
          v124 = *(a2 + 2);
          v126 = *a2;
          if (v125 <= 0xFFFFFFFFFFFFFFF5 && v125 + 10 <= v124)
          {
            v127 = 0;
            v128 = 0;
            v129 = 0;
            v130 = (v126 + v125);
            v131 = v125 + 1;
            do
            {
              *(a2 + 1) = v131;
              v132 = *v130++;
              v129 |= (v132 & 0x7F) << v127;
              if ((v132 & 0x80) == 0)
              {
                goto LABEL_289;
              }

              v127 += 7;
              ++v131;
              v14 = v128++ > 8;
            }

            while (!v14);
LABEL_242:
            LODWORD(v129) = 0;
            goto LABEL_289;
          }

          v184 = 0;
          v185 = 0;
          v129 = 0;
          v17 = v124 >= v125;
          v186 = v124 - v125;
          if (!v17)
          {
            v186 = 0;
          }

          v187 = (v126 + v125);
          v188 = v125 + 1;
          while (2)
          {
            if (v186)
            {
              v189 = *v187;
              *(a2 + 1) = v188;
              v129 |= (v189 & 0x7F) << v184;
              if (v189 < 0)
              {
                v184 += 7;
                --v186;
                ++v187;
                ++v188;
                v14 = v185++ > 8;
                if (v14)
                {
                  goto LABEL_242;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v129) = 0;
              }
            }

            else
            {
              LODWORD(v129) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_289:
          *(this + 39) = v129;
          goto LABEL_254;
        case 0x1Fu:
          *(this + 28) |= 0x1000000000uLL;
          v98 = *(a2 + 1);
          if (v98 >= *(a2 + 2))
          {
            v101 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v99 = v98 + 1;
            v100 = *(*a2 + v98);
            *(a2 + 1) = v99;
            v101 = v100 != 0;
          }

          *(this + 221) = v101;
          goto LABEL_254;
        case 0x20u:
          *(this + 28) |= 0x800000000uLL;
          v66 = *(a2 + 1);
          if (v66 >= *(a2 + 2))
          {
            v69 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v67 = v66 + 1;
            v68 = *(*a2 + v66);
            *(a2 + 1) = v67;
            v69 = v68 != 0;
          }

          *(this + 220) = v69;
          goto LABEL_254;
        case 0x21u:
          *(this + 28) |= 0x20000000uLL;
          v102 = *(a2 + 1);
          if (v102 > 0xFFFFFFFFFFFFFFFBLL || v102 + 4 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 49) = *(*a2 + v102);
          goto LABEL_252;
        case 0x22u:
          *(this + 28) |= 0x100uLL;
          v38 = *(a2 + 1);
          if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 9) = *(*a2 + v38);
          goto LABEL_146;
        case 0x23u:
          *(this + 28) |= 0x200uLL;
          v35 = *(a2 + 1);
          if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 10) = *(*a2 + v35);
          goto LABEL_146;
        case 0x24u:
          *(this + 28) |= 0x400000uLL;
          v25 = *(a2 + 1);
          v24 = *(a2 + 2);
          v26 = *a2;
          if (v25 <= 0xFFFFFFFFFFFFFFF5 && v25 + 10 <= v24)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            do
            {
              *(a2 + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                goto LABEL_268;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
            }

            while (!v14);
LABEL_180:
            LODWORD(v29) = 0;
            goto LABEL_268;
          }

          v142 = 0;
          v143 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v144 = v24 - v25;
          if (!v17)
          {
            v144 = 0;
          }

          v145 = (v26 + v25);
          v146 = v25 + 1;
          break;
        case 0x25u:
          *(this + 28) |= 4uLL;
          v33 = *(a2 + 1);
          if (v33 > 0xFFFFFFFFFFFFFFF7 || v33 + 8 > *(a2 + 2))
          {
            goto LABEL_149;
          }

          *(this + 3) = *(*a2 + v33);
LABEL_146:
          v113 = *(a2 + 1) + 8;
          goto LABEL_253;
        case 0x26u:
          *(this + 28) |= 0x200000000uLL;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
          {
LABEL_149:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 53) = *(*a2 + v23);
LABEL_252:
            v113 = *(a2 + 1) + 4;
LABEL_253:
            *(a2 + 1) = v113;
          }

          goto LABEL_254;
        default:
          if (PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            goto LABEL_254;
          }

          v197 = 0;
          return v197 & 1;
      }

      while (1)
      {
        if (!v144)
        {
          LODWORD(v29) = 0;
          *(a2 + 24) = 1;
          goto LABEL_268;
        }

        v147 = *v145;
        *(a2 + 1) = v146;
        v29 |= (v147 & 0x7F) << v142;
        if ((v147 & 0x80) == 0)
        {
          break;
        }

        v142 += 7;
        --v144;
        ++v145;
        ++v146;
        v14 = v143++ > 8;
        if (v14)
        {
          goto LABEL_180;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v29) = 0;
      }

LABEL_268:
      *(this + 42) = v29;
LABEL_254:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(a2 + 24) & 1) == 0);
  }

LABEL_294:
  v197 = v4 ^ 1;
  return v197 & 1;
}

uint64_t CMMsl::CalorieControllerMETsConsumed::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 224);
  if ((v4 & 0x1000) != 0)
  {
    this = PB::Writer::write(a2, *(this + 104), 1u);
    v4 = *(v3 + 224);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16), 2u);
  v4 = *(v3 + 224);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 64), 3u);
  v4 = *(v3 + 224);
  if ((v4 & 0x40000) == 0)
  {
LABEL_5:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::writeVarInt(a2, *(v3 + 152), 4u);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 204), 5u);
  v4 = *(v3 + 224);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::write(a2, *(v3 + 216), 6u);
  v4 = *(v3 + 224);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 192), 7u);
  v4 = *(v3 + 224);
  if ((v4 & 0x100000) == 0)
  {
LABEL_9:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 160), 8u);
  v4 = *(v3 + 224);
  if ((v4 & 0x200000) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 164), 9u);
  v4 = *(v3 + 224);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 88), 0xAu);
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 222), 0xBu);
  v4 = *(v3 + 224);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 40), 0xCu);
  v4 = *(v3 + 224);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 120), 0xDu);
  v4 = *(v3 + 224);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::writeVarInt(a2, *(v3 + 200), 0xEu);
  v4 = *(v3 + 224);
  if ((v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 112), 0xFu);
  v4 = *(v3 + 224);
  if ((v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((v4 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2, *(v3 + 128), 0x10u);
  v4 = *(v3 + 224);
  if ((v4 & 8) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::write(a2, *(v3 + 32), 0x11u);
  v4 = *(v3 + 224);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 96), 0x12u);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_20:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::writeVarInt(a2, *(v3 + 176), 0x13u);
  v4 = *(v3 + 224);
  if ((v4 & 0x20000) == 0)
  {
LABEL_21:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2, *(v3 + 144), 0x14u);
  v4 = *(v3 + 224);
  if ((v4 & 0x20) == 0)
  {
LABEL_22:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::write(a2, *(v3 + 48), 0x15u);
  v4 = *(v3 + 224);
  if ((v4 & 0x40) == 0)
  {
LABEL_23:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::write(a2, *(v3 + 56), 0x16u);
  v4 = *(v3 + 224);
  if ((v4 & 0x800000) == 0)
  {
LABEL_24:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::writeVarInt(a2, *(v3 + 172), 0x17u);
  v4 = *(v3 + 224);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::write(a2, *(v3 + 188), 0x18u);
  v4 = *(v3 + 224);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::write(a2, *(v3 + 184), 0x19u);
  v4 = *(v3 + 224);
  if ((v4 & 0x10000) == 0)
  {
LABEL_27:
    if ((v4 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::writeVarInt(a2, *(v3 + 136), 0x1Au);
  v4 = *(v3 + 224);
  if ((v4 & 1) == 0)
  {
LABEL_28:
    if ((v4 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::writeVarInt(a2, *(v3 + 8), 0x1Bu);
  v4 = *(v3 + 224);
  if ((v4 & 0x100000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::write(a2, *(v3 + 208), 0x1Cu);
  v4 = *(v3 + 224);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::writeVarInt(a2, *(v3 + 180), 0x1Du);
  v4 = *(v3 + 224);
  if ((v4 & 0x80000) == 0)
  {
LABEL_31:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::writeVarInt(a2, *(v3 + 156), 0x1Eu);
  v4 = *(v3 + 224);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::write(a2, *(v3 + 221), 0x1Fu);
  v4 = *(v3 + 224);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_33:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::write(a2, *(v3 + 220), 0x20u);
  v4 = *(v3 + 224);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_34:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::write(a2, *(v3 + 196), 0x21u);
  v4 = *(v3 + 224);
  if ((v4 & 0x100) == 0)
  {
LABEL_35:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::write(a2, *(v3 + 72), 0x22u);
  v4 = *(v3 + 224);
  if ((v4 & 0x200) == 0)
  {
LABEL_36:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 80), 0x23u);
  v4 = *(v3 + 224);
  if ((v4 & 0x400000) == 0)
  {
LABEL_37:
    if ((v4 & 4) == 0)
    {
      goto LABEL_38;
    }

LABEL_76:
    this = PB::Writer::write(a2, *(v3 + 24), 0x25u);
    if ((*(v3 + 224) & 0x200000000) == 0)
    {
      return this;
    }

    goto LABEL_77;
  }

LABEL_75:
  this = PB::Writer::writeVarInt(a2, *(v3 + 168), 0x24u);
  v4 = *(v3 + 224);
  if ((v4 & 4) != 0)
  {
    goto LABEL_76;
  }

LABEL_38:
  if ((v4 & 0x200000000) == 0)
  {
    return this;
  }

LABEL_77:
  v5 = *(v3 + 212);

  return PB::Writer::write(a2, v5, 0x26u);
}

BOOL CMMsl::CalorieControllerMETsConsumed::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = *(a2 + 224);
  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000) != 0)
  {
    if ((v3 & 0x40000) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000000) != 0)
  {
    if ((v3 & 0x80000000) == 0 || *(a1 + 204) != *(a2 + 204))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000000) != 0)
  {
    if ((v3 & 0x400000000) == 0 || *(a1 + 216) != *(a2 + 216))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000000) != 0)
  {
    if ((v3 & 0x10000000) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000000) != 0)
  {
    if ((v3 & 0x2000000000) == 0 || *(a1 + 222) != *(a2 + 222))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40000000) != 0)
  {
    if ((v3 & 0x40000000) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 176) != *(a2 + 176))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 172) != *(a2 + 172))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000000) != 0)
  {
    if ((v3 & 0x8000000) == 0 || *(a1 + 188) != *(a2 + 188))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 0x100000000) != 0)
  {
    if ((v3 & 0x100000000) == 0 || *(a1 + 208) != *(a2 + 208))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 180) != *(a2 + 180))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000000000) != 0)
  {
    if ((v3 & 0x1000000000) == 0 || *(a1 + 221) != *(a2 + 221))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000000) != 0)
  {
    if ((v3 & 0x800000000) == 0 || *(a1 + 220) != *(a2 + 220))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000000) != 0)
  {
    if ((v3 & 0x20000000) == 0 || *(a1 + 196) != *(a2 + 196))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 168) != *(a2 + 168))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x200000000) == 0;
  if ((v2 & 0x200000000) != 0)
  {
    return (v3 & 0x200000000) != 0 && *(a1 + 212) == *(a2 + 212);
  }

  return v4;
}

uint64_t CMMsl::CalorieControllerMETsConsumed::hash_value(CMMsl::CalorieControllerMETsConsumed *this)
{
  v1 = *(this + 28);
  if ((v1 & 0x1000) != 0)
  {
    if (*(this + 13) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 13);
    }
  }

  else
  {
    v2 = 0;
  }

  if ((v1 & 2) == 0)
  {
    v59 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_105:
    v58 = 0.0;
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_106;
  }

  v47 = *(this + 2);
  if (v47 == 0.0)
  {
    v47 = 0.0;
  }

  v59 = v47;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_105;
  }

LABEL_8:
  v3 = *(this + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v58 = v3;
  if ((v1 & 0x40000) != 0)
  {
LABEL_11:
    v57 = *(this + 38);
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_12;
    }

LABEL_107:
    v56 = 0;
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_108:
    v55 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_109:
    v54 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_21;
    }

LABEL_110:
    v53 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_24;
    }

LABEL_111:
    v52 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_27;
    }

LABEL_112:
    v51 = 0.0;
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_113;
  }

LABEL_106:
  v57 = 0;
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_12:
  v4 = *(this + 51);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  v56 = v5;
  if ((v1 & 0x400000000) == 0)
  {
    goto LABEL_108;
  }

LABEL_15:
  v6 = *(this + 54);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  v55 = v7;
  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_109;
  }

LABEL_18:
  v8 = *(this + 48);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  v54 = v9;
  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_110;
  }

LABEL_21:
  v10 = *(this + 40);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  v53 = v11;
  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_111;
  }

LABEL_24:
  v12 = *(this + 41);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  v52 = v13;
  if ((v1 & 0x400) == 0)
  {
    goto LABEL_112;
  }

LABEL_27:
  v14 = *(this + 11);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  v51 = v14;
  if ((v1 & 0x2000000000) != 0)
  {
LABEL_30:
    v50 = *(this + 222);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_31;
    }

LABEL_114:
    v49 = 0.0;
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_34;
    }

LABEL_115:
    v16 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_116;
  }

LABEL_113:
  v50 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_114;
  }

LABEL_31:
  v15 = *(this + 5);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  v49 = v15;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_115;
  }

LABEL_34:
  if (*(this + 15) == 0.0)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(this + 15);
  }

  if ((v1 & 0x40000000) != 0)
  {
LABEL_38:
    v17 = *(this + 50);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_39;
    }

LABEL_117:
    v18 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_43;
    }

LABEL_118:
    v19 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_47;
    }

LABEL_119:
    v20 = 0;
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_51;
    }

LABEL_120:
    v21 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_121;
  }

LABEL_116:
  v17 = 0;
  if ((v1 & 0x2000) == 0)
  {
    goto LABEL_117;
  }

LABEL_39:
  if (*(this + 14) == 0.0)
  {
    v18 = 0;
  }

  else
  {
    v18 = *(this + 14);
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_118;
  }

LABEL_43:
  if (*(this + 16) == 0.0)
  {
    v19 = 0;
  }

  else
  {
    v19 = *(this + 16);
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_119;
  }

LABEL_47:
  if (*(this + 4) == 0.0)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(this + 4);
  }

  if ((v1 & 0x800) == 0)
  {
    goto LABEL_120;
  }

LABEL_51:
  if (*(this + 12) == 0.0)
  {
    v21 = 0;
  }

  else
  {
    v21 = *(this + 12);
  }

  if ((v1 & 0x1000000) != 0)
  {
LABEL_55:
    v22 = *(this + 44);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_56;
    }

LABEL_122:
    v23 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_60;
    }

LABEL_123:
    v24 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_64;
    }

LABEL_124:
    v25 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_125;
  }

LABEL_121:
  v22 = 0;
  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

LABEL_56:
  if (*(this + 18) == 0.0)
  {
    v23 = 0;
  }

  else
  {
    v23 = *(this + 18);
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_123;
  }

LABEL_60:
  if (*(this + 6) == 0.0)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(this + 6);
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_124;
  }

LABEL_64:
  if (*(this + 7) == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = *(this + 7);
  }

  if ((v1 & 0x800000) != 0)
  {
LABEL_68:
    v26 = *(this + 43);
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_69;
    }

LABEL_126:
    v28 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_73;
    }

LABEL_127:
    v30 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_77;
    }

    goto LABEL_128;
  }

LABEL_125:
  v26 = 0;
  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_126;
  }

LABEL_69:
  v27 = *(this + 47);
  if (v27 == 0.0)
  {
    v28 = 0;
  }

  else
  {
    v28 = LODWORD(v27);
  }

  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_127;
  }

LABEL_73:
  v29 = *(this + 46);
  if (v29 == 0.0)
  {
    v30 = 0;
  }

  else
  {
    v30 = LODWORD(v29);
  }

  if ((v1 & 0x10000) != 0)
  {
LABEL_77:
    v31 = *(this + 17);
    if (v1)
    {
      goto LABEL_78;
    }

    goto LABEL_129;
  }

LABEL_128:
  v31 = 0;
  if (v1)
  {
LABEL_78:
    v32 = *(this + 1);
    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_79;
    }

LABEL_130:
    v34 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_82;
    }

    goto LABEL_131;
  }

LABEL_129:
  v32 = 0;
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_130;
  }

LABEL_79:
  v33 = *(this + 52);
  v34 = LODWORD(v33);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  if ((v1 & 0x2000000) != 0)
  {
LABEL_82:
    v35 = *(this + 45);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_132;
  }

LABEL_131:
  v35 = 0;
  if ((v1 & 0x80000) != 0)
  {
LABEL_83:
    v36 = *(this + 39);
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_133;
  }

LABEL_132:
  v36 = 0;
  if ((v1 & 0x1000000000) != 0)
  {
LABEL_84:
    v37 = *(this + 221);
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_85;
    }

    goto LABEL_134;
  }

LABEL_133:
  v37 = 0;
  if ((v1 & 0x800000000) != 0)
  {
LABEL_85:
    v38 = *(this + 220);
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_86;
    }

LABEL_135:
    v40 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_89;
    }

LABEL_136:
    v41 = 0.0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_92;
    }

LABEL_137:
    v42 = 0.0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_95;
    }

    goto LABEL_138;
  }

LABEL_134:
  v38 = 0;
  if ((v1 & 0x20000000) == 0)
  {
    goto LABEL_135;
  }

LABEL_86:
  v39 = *(this + 49);
  v40 = LODWORD(v39);
  if (v39 == 0.0)
  {
    v40 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_136;
  }

LABEL_89:
  v41 = *(this + 9);
  if (v41 == 0.0)
  {
    v41 = 0.0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_137;
  }

LABEL_92:
  v42 = *(this + 10);
  if (v42 == 0.0)
  {
    v42 = 0.0;
  }

  if ((v1 & 0x400000) != 0)
  {
LABEL_95:
    v43 = *(this + 42);
    if ((v1 & 4) != 0)
    {
      goto LABEL_96;
    }

    goto LABEL_139;
  }

LABEL_138:
  v43 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_96:
    v44 = *(this + 3);
    if (v44 == 0.0)
    {
      v44 = 0.0;
    }

    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_99;
    }

LABEL_140:
    v46 = 0;
    return *&v59 ^ v2 ^ *&v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ *&v51 ^ v50 ^ *&v49 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v28 ^ v30 ^ v31 ^ v32 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v40 ^ *&v41 ^ *&v42 ^ v43 ^ *&v44 ^ v46;
  }

LABEL_139:
  v44 = 0.0;
  if ((v1 & 0x200000000) == 0)
  {
    goto LABEL_140;
  }

LABEL_99:
  v45 = *(this + 53);
  v46 = LODWORD(v45);
  if (v45 == 0.0)
  {
    v46 = 0;
  }

  return *&v59 ^ v2 ^ *&v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ *&v51 ^ v50 ^ *&v49 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v28 ^ v30 ^ v31 ^ v32 ^ v34 ^ v35 ^ v36 ^ v37 ^ v38 ^ v40 ^ *&v41 ^ *&v42 ^ v43 ^ *&v44 ^ v46;
}

uint64_t CMMsl::CalorimetryPauseEvent::CalorimetryPauseEvent(uint64_t this)
{
  *this = off_10041D778;
  *(this + 12) = 0;
  return this;
}

{
  *this = off_10041D778;
  *(this + 12) = 0;
  return this;
}

void CMMsl::CalorimetryPauseEvent::~CalorimetryPauseEvent(CMMsl::CalorimetryPauseEvent *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::CalorimetryPauseEvent::CalorimetryPauseEvent(uint64_t this, const CMMsl::CalorimetryPauseEvent *a2)
{
  *this = off_10041D778;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = off_10041D778;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::CalorimetryPauseEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = off_10041D778;
    v3 = *(a2 + 8);
    v4 = *(a1 + 12);
    *(a1 + 12) = *(a2 + 12) & 1;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v7 = off_10041D778;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 8);
    *(a1 + 8) = v4;
    v8 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::CalorimetryPauseEvent *a2, CMMsl::CalorimetryPauseEvent *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::CalorimetryPauseEvent::CalorimetryPauseEvent(uint64_t result, uint64_t a2)
{
  *result = off_10041D778;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_10041D778;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::CalorimetryPauseEvent::formatText(CMMsl::CalorimetryPauseEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "pause", *(this + 8));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CalorimetryPauseEvent::readFrom(CMMsl::CalorimetryPauseEvent *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_34;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
        if (v2 >= v3)
        {
          v24 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v23 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v24 = v23 != 0;
        }

        *(this + 8) = v24;
      }

      else
      {
        if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(a2 + 1);
        v3 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_34:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::CalorimetryPauseEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::write(a2, *(this + 8), 1u);
  }

  return this;
}

BOOL CMMsl::CalorimetryPauseEvent::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::CalorimetryPauseEvent::hash_value(CMMsl::CalorimetryPauseEvent *this)
{
  if (*(this + 12))
  {
    return *(this + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t CMMsl::CatherineHealthKitData::CatherineHealthKitData(uint64_t this)
{
  *this = off_10041D7B0;
  *(this + 36) = 0;
  return this;
}

{
  *this = off_10041D7B0;
  *(this + 36) = 0;
  return this;
}

void CMMsl::CatherineHealthKitData::~CatherineHealthKitData(CMMsl::CatherineHealthKitData *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::CatherineHealthKitData::CatherineHealthKitData(uint64_t this, const CMMsl::CatherineHealthKitData *a2)
{
  *this = off_10041D7B0;
  *(this + 36) = 0;
  v2 = *(a2 + 36);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 36) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 36);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 36))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 36) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 36);
  }

LABEL_6:
  if ((v2 & 2) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return this;
    }

LABEL_10:
    v7 = *(a2 + 8);
    *(this + 36) = v3 | 8;
    *(this + 32) = v7;
    return this;
  }

  v6 = *(a2 + 2);
  v3 |= 2u;
  *(this + 36) = v3;
  *(this + 16) = v6;
  if ((*(a2 + 36) & 8) != 0)
  {
    goto LABEL_10;
  }

  return this;
}

uint64_t CMMsl::CatherineHealthKitData::operator=(uint64_t a1, const CMMsl::CatherineHealthKitData *a2)
{
  if (a1 != a2)
  {
    CMMsl::CatherineHealthKitData::CatherineHealthKitData(v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    *&v3 = v10;
    v4 = *(a1 + 24);
    v5 = *(a1 + 32);
    *(a1 + 24) = v9;
    *(a1 + 32) = v3;
    v9 = v4;
    v10 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CatherineHealthKitData *a2, CMMsl::CatherineHealthKitData *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  return result;
}

double CMMsl::CatherineHealthKitData::CatherineHealthKitData(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D7B0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

{
  *a1 = off_10041D7B0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  return result;
}

uint64_t CMMsl::CatherineHealthKitData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = off_10041D7B0;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    *(a2 + 36) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v3;
    v9 = v6;
    *&v3 = *(a1 + 24);
    *&v6 = *(a1 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    v10 = v3;
    v11 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::CatherineHealthKitData::formatText(CMMsl::CatherineHealthKitData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 36);
  if (v5)
  {
    PB::TextFormatter::format(a2, "endDate", *(this + 1));
    v5 = *(this + 36);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "hkType", *(this + 8));
  v5 = *(this + 36);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "hr", *(this + 2));
  if ((*(this + 36) & 4) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "startDate", *(this + 3));
  }

LABEL_6:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CatherineHealthKitData::readFrom(CMMsl::CatherineHealthKitData *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_64;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(this + 36) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_44:
            *(a2 + 24) = 1;
            goto LABEL_60;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          *(this + 36) |= 8u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v31 = 0;
            v32 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v33 = v2 - v23;
            v34 = (v24 + v23);
            v35 = v23 + 1;
            while (1)
            {
              if (!v33)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_59;
              }

              v36 = v35;
              v37 = *v34;
              *(a2 + 1) = v36;
              v27 |= (v37 & 0x7F) << v31;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v31 += 7;
              --v33;
              ++v34;
              v35 = v36 + 1;
              v14 = v32++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_58;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_58:
            v2 = v36;
          }

          else
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            while (1)
            {
              v2 = v29;
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                break;
              }
            }
          }

LABEL_59:
          *(this + 8) = v27;
          goto LABEL_60;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 36) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_54;
        }

        if (v22 == 2)
        {
          *(this + 36) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 1) = *(*a2 + v2);
LABEL_54:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_60;
        }
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
LABEL_60:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_64:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::CatherineHealthKitData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 36);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24), 1u);
    v4 = *(v3 + 36);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::write(a2, *(v3 + 16), 3u);
      if ((*(v3 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8), 2u);
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 32);

  return PB::Writer::writeVarInt(a2, v5, 4u);
}

BOOL CMMsl::CatherineHealthKitData::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 36) & 4) != 0)
  {
    if ((*(a2 + 36) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 36))
  {
    if ((*(a2 + 36) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 36))
  {
    return 0;
  }

  if ((*(a1 + 36) & 2) != 0)
  {
    if ((*(a2 + 36) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 36) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 36) & 8) == 0;
  if ((*(a1 + 36) & 8) != 0)
  {
    return (*(a2 + 36) & 8) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return v2;
}

uint64_t CMMsl::CatherineHealthKitData::hash_value(CMMsl::CatherineHealthKitData *this)
{
  if ((*(this + 36) & 4) == 0)
  {
    v1 = 0.0;
    if (*(this + 36))
    {
      goto LABEL_3;
    }

LABEL_13:
    v2 = 0.0;
    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 36) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 36) & 2) != 0)
  {
LABEL_6:
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }

    if ((*(this + 36) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    v4 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4;
  }

LABEL_14:
  v3 = 0.0;
  if ((*(this + 36) & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v4 = *(this + 8);
  return *&v2 ^ *&v1 ^ *&v3 ^ v4;
}

uint64_t CMMsl::ClefCalibration::ClefCalibration(uint64_t this)
{
  *this = off_10041D7E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  return this;
}

{
  *this = off_10041D7E8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 64) = 0;
  return this;
}

void CMMsl::ClefCalibration::~ClefCalibration(CMMsl::ClefCalibration *this)
{
  *this = off_10041D7E8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041D7E8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
}

{
  *this = off_10041D7E8;
  v2 = (this + 8);
  sub_1002A2E24(&v2);
  PB::Base::~Base(this);
  operator delete();
}

CMMsl::ClefCalibration *CMMsl::ClefCalibration::ClefCalibration(CMMsl::ClefCalibration *this, const CMMsl::ClefCalibration *a2)
{
  *this = off_10041D7E8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 9);
    v3 = 2;
    *(this + 64) = 2;
    *(this + 9) = v4;
    v2 = *(a2 + 64);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 64) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 11);
    v3 |= 8u;
    *(this + 64) = v3;
    *(this + 11) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if (v2)
  {
    v8 = *(a2 + 8);
    v3 |= 1u;
    *(this + 64) = v3;
    *(this + 8) = v8;
    v2 = *(a2 + 64);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v9 = *(a2 + 10);
  v3 |= 4u;
  *(this + 64) = v3;
  *(this + 10) = v9;
  v2 = *(a2 + 64);
  if ((v2 & 0x80) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 60);
  v3 |= 0x80u;
  *(this + 64) = v3;
  *(this + 60) = v10;
  v2 = *(a2 + 64);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = *(a2 + 12);
  v3 |= 0x10u;
  *(this + 64) = v3;
  *(this + 12) = v11;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v12 = *(a2 + 13);
  v3 |= 0x20u;
  *(this + 64) = v3;
  *(this + 13) = v12;
  if ((*(a2 + 64) & 0x40) != 0)
  {
LABEL_12:
    v6 = *(a2 + 14);
    *(this + 64) = v3 | 0x40;
    *(this + 14) = v6;
  }

LABEL_13:
  v7 = *(a2 + 1);
  if (v7 != *(a2 + 2))
  {
    sub_1000A684C(this + 1, *v7);
  }

  return this;
}

CMMsl *CMMsl::ClefCalibration::operator=(CMMsl *a1, const CMMsl::ClefCalibration *a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefCalibration::ClefCalibration(&v5, a2);
    CMMsl::swap(a1, &v5, v3);
    v5 = off_10041D7E8;
    v7 = &v6;
    sub_1002A2E24(&v7);
    PB::Base::~Base(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ClefCalibration *a2, CMMsl::ClefCalibration *a3)
{
  v3 = *(this + 64);
  *(this + 64) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 36);
  *(this + 36) = *(a2 + 9);
  *(a2 + 9) = v4;
  v5 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v5;
  v6 = *(this + 32);
  *(this + 32) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v7;
  LOBYTE(v7) = *(this + 60);
  *(this + 60) = *(a2 + 60);
  *(a2 + 60) = v7;
  v8 = *(this + 48);
  *(this + 48) = *(a2 + 12);
  *(a2 + 12) = v8;
  v9 = *(this + 52);
  *(this + 52) = *(a2 + 13);
  *(a2 + 13) = v9;
  v10 = *(this + 56);
  *(this + 56) = *(a2 + 14);
  *(a2 + 14) = v10;
  v11 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v12;
  v13 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v13;
  return this;
}

uint64_t CMMsl::ClefCalibration::ClefCalibration(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D7E8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  sub_1002A2EE4((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::ClefCalibration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefCalibration::ClefCalibration(&v5, a2);
    CMMsl::swap(a1, &v5, v3);
    v5 = off_10041D7E8;
    v7 = &v6;
    sub_1002A2E24(&v7);
    PB::Base::~Base(&v5);
  }

  return a1;
}

uint64_t CMMsl::ClefCalibration::formatText(CMMsl::ClefCalibration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 64);
  if (v5)
  {
    PB::TextFormatter::format(a2, "gain", *(this + 8));
    v5 = *(this + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "location", *(this + 9));
  if ((*(this + 64) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "offset", *(this + 10));
  }

LABEL_5:
  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "point");
  }

  v9 = *(this + 64);
  if ((v9 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "sensor", *(this + 11));
    v9 = *(this + 64);
    if ((v9 & 0x10) == 0)
    {
LABEL_9:
      if ((v9 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }
  }

  else if ((*(this + 64) & 0x10) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(a2, "tempCalA", *(this + 12));
  v9 = *(this + 64);
  if ((v9 & 0x20) == 0)
  {
LABEL_10:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "tempCalB", *(this + 13));
  v9 = *(this + 64);
  if ((v9 & 0x80) == 0)
  {
LABEL_11:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "tempCalEnabled", *(this + 60));
  if ((*(this + 64) & 0x40) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "tempCalT0", *(this + 14));
  }

LABEL_13:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ClefCalibration::readFrom(CMMsl::ClefCalibration *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_178;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(this + 64) |= 1u;
            v60 = *(a2 + 1);
            v59 = *(a2 + 2);
            v61 = *a2;
            if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
            {
              v114 = 0;
              v115 = 0;
              v64 = 0;
              v17 = v59 >= v60;
              v116 = v59 - v60;
              if (!v17)
              {
                v116 = 0;
              }

              v117 = (v61 + v60);
              v118 = v60 + 1;
              while (1)
              {
                if (!v116)
                {
                  LODWORD(v64) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_167;
                }

                v119 = *v117;
                *(a2 + 1) = v118;
                v64 |= (v119 & 0x7F) << v114;
                if ((v119 & 0x80) == 0)
                {
                  break;
                }

                v114 += 7;
                --v116;
                ++v117;
                ++v118;
                v14 = v115++ > 8;
                if (v14)
                {
LABEL_127:
                  LODWORD(v64) = 0;
                  goto LABEL_167;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = (v61 + v60);
              v66 = v60 + 1;
              while (1)
              {
                *(a2 + 1) = v66;
                v67 = *v65++;
                v64 |= (v67 & 0x7F) << v62;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                ++v66;
                v14 = v63++ > 8;
                if (v14)
                {
                  goto LABEL_127;
                }
              }
            }

LABEL_167:
            *(this + 8) = v64;
            goto LABEL_174;
          }

          if (v22 == 4)
          {
            *(this + 64) |= 4u;
            v33 = *(a2 + 1);
            v32 = *(a2 + 2);
            v34 = *a2;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v96 = 0;
              v97 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v98 = v32 - v33;
              if (!v17)
              {
                v98 = 0;
              }

              v99 = (v34 + v33);
              v100 = v33 + 1;
              while (1)
              {
                if (!v98)
                {
                  LODWORD(v37) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_158;
                }

                v101 = *v99;
                *(a2 + 1) = v100;
                v37 |= (v101 & 0x7F) << v96;
                if ((v101 & 0x80) == 0)
                {
                  break;
                }

                v96 += 7;
                --v98;
                ++v99;
                ++v100;
                v14 = v97++ > 8;
                if (v14)
                {
LABEL_103:
                  LODWORD(v37) = 0;
                  goto LABEL_158;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v37) = 0;
              }
            }

            else
            {
              v35 = 0;
              v36 = 0;
              v37 = 0;
              v38 = (v34 + v33);
              v39 = v33 + 1;
              while (1)
              {
                *(a2 + 1) = v39;
                v40 = *v38++;
                v37 |= (v40 & 0x7F) << v35;
                if ((v40 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                ++v39;
                v14 = v36++ > 8;
                if (v14)
                {
                  goto LABEL_103;
                }
              }
            }

LABEL_158:
            *(this + 10) = v37;
            goto LABEL_174;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(this + 64) |= 2u;
            v51 = *(a2 + 1);
            v50 = *(a2 + 2);
            v52 = *a2;
            if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
            {
              v108 = 0;
              v109 = 0;
              v55 = 0;
              v17 = v50 >= v51;
              v110 = v50 - v51;
              if (!v17)
              {
                v110 = 0;
              }

              v111 = (v52 + v51);
              v112 = v51 + 1;
              while (1)
              {
                if (!v110)
                {
                  LODWORD(v55) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_164;
                }

                v113 = *v111;
                *(a2 + 1) = v112;
                v55 |= (v113 & 0x7F) << v108;
                if ((v113 & 0x80) == 0)
                {
                  break;
                }

                v108 += 7;
                --v110;
                ++v111;
                ++v112;
                v14 = v109++ > 8;
                if (v14)
                {
LABEL_119:
                  LODWORD(v55) = 0;
                  goto LABEL_164;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v55) = 0;
              }
            }

            else
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v56 = (v52 + v51);
              v57 = v51 + 1;
              while (1)
              {
                *(a2 + 1) = v57;
                v58 = *v56++;
                v55 |= (v58 & 0x7F) << v53;
                if ((v58 & 0x80) == 0)
                {
                  break;
                }

                v53 += 7;
                ++v57;
                v14 = v54++ > 8;
                if (v14)
                {
                  goto LABEL_119;
                }
              }
            }

LABEL_164:
            *(this + 9) = v55;
            goto LABEL_174;
          }

          if (v22 == 2)
          {
            *(this + 64) |= 8u;
            v24 = *(a2 + 1);
            v23 = *(a2 + 2);
            v25 = *a2;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v90 = 0;
              v91 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v92 = v23 - v24;
              if (!v17)
              {
                v92 = 0;
              }

              v93 = (v25 + v24);
              v94 = v24 + 1;
              while (1)
              {
                if (!v92)
                {
                  LODWORD(v28) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_155;
                }

                v95 = *v93;
                *(a2 + 1) = v94;
                v28 |= (v95 & 0x7F) << v90;
                if ((v95 & 0x80) == 0)
                {
                  break;
                }

                v90 += 7;
                --v92;
                ++v93;
                ++v94;
                v14 = v91++ > 8;
                if (v14)
                {
LABEL_95:
                  LODWORD(v28) = 0;
                  goto LABEL_155;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(a2 + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_95;
                }
              }
            }

LABEL_155:
            *(this + 11) = v28;
            goto LABEL_174;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(this + 64) |= 0x80u;
          v77 = *(a2 + 1);
          if (v77 >= *(a2 + 2))
          {
            v80 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v78 = v77 + 1;
            v79 = *(*a2 + v77);
            *(a2 + 1) = v78;
            v80 = v79 != 0;
          }

          *(this + 60) = v80;
          goto LABEL_174;
        }

        if (v22 == 6)
        {
          *(this + 64) |= 0x10u;
          v42 = *(a2 + 1);
          v41 = *(a2 + 2);
          v43 = *a2;
          if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
          {
            v102 = 0;
            v103 = 0;
            v46 = 0;
            v17 = v41 >= v42;
            v104 = v41 - v42;
            if (!v17)
            {
              v104 = 0;
            }

            v105 = (v43 + v42);
            v106 = v42 + 1;
            while (1)
            {
              if (!v104)
              {
                LODWORD(v46) = 0;
                *(a2 + 24) = 1;
                goto LABEL_161;
              }

              v107 = *v105;
              *(a2 + 1) = v106;
              v46 |= (v107 & 0x7F) << v102;
              if ((v107 & 0x80) == 0)
              {
                break;
              }

              v102 += 7;
              --v104;
              ++v105;
              ++v106;
              v14 = v103++ > 8;
              if (v14)
              {
LABEL_111:
                LODWORD(v46) = 0;
                goto LABEL_161;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v46) = 0;
            }
          }

          else
          {
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = (v43 + v42);
            v48 = v42 + 1;
            while (1)
            {
              *(a2 + 1) = v48;
              v49 = *v47++;
              v46 |= (v49 & 0x7F) << v44;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v44 += 7;
              ++v48;
              v14 = v45++ > 8;
              if (v14)
              {
                goto LABEL_111;
              }
            }
          }

LABEL_161:
          *(this + 12) = v46;
          goto LABEL_174;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(this + 64) |= 0x20u;
            v69 = *(a2 + 1);
            v68 = *(a2 + 2);
            v70 = *a2;
            if (v69 > 0xFFFFFFFFFFFFFFF5 || v69 + 10 > v68)
            {
              v120 = 0;
              v121 = 0;
              v73 = 0;
              v17 = v68 >= v69;
              v122 = v68 - v69;
              if (!v17)
              {
                v122 = 0;
              }

              v123 = (v70 + v69);
              v124 = v69 + 1;
              while (1)
              {
                if (!v122)
                {
                  LODWORD(v73) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_170;
                }

                v125 = *v123;
                *(a2 + 1) = v124;
                v73 |= (v125 & 0x7F) << v120;
                if ((v125 & 0x80) == 0)
                {
                  break;
                }

                v120 += 7;
                --v122;
                ++v123;
                ++v124;
                v14 = v121++ > 8;
                if (v14)
                {
LABEL_135:
                  LODWORD(v73) = 0;
                  goto LABEL_170;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v73) = 0;
              }
            }

            else
            {
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v74 = (v70 + v69);
              v75 = v69 + 1;
              while (1)
              {
                *(a2 + 1) = v75;
                v76 = *v74++;
                v73 |= (v76 & 0x7F) << v71;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v71 += 7;
                ++v75;
                v14 = v72++ > 8;
                if (v14)
                {
                  goto LABEL_135;
                }
              }
            }

LABEL_170:
            *(this + 13) = v73;
            goto LABEL_174;
          case 8:
            *(this + 64) |= 0x40u;
            v82 = *(a2 + 1);
            v81 = *(a2 + 2);
            v83 = *a2;
            if (v82 > 0xFFFFFFFFFFFFFFF5 || v82 + 10 > v81)
            {
              v126 = 0;
              v127 = 0;
              v86 = 0;
              v17 = v81 >= v82;
              v128 = v81 - v82;
              if (!v17)
              {
                v128 = 0;
              }

              v129 = (v83 + v82);
              v130 = v82 + 1;
              while (1)
              {
                if (!v128)
                {
                  LODWORD(v86) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_173;
                }

                v131 = *v129;
                *(a2 + 1) = v130;
                v86 |= (v131 & 0x7F) << v126;
                if ((v131 & 0x80) == 0)
                {
                  break;
                }

                v126 += 7;
                --v128;
                ++v129;
                ++v130;
                v14 = v127++ > 8;
                if (v14)
                {
LABEL_145:
                  LODWORD(v86) = 0;
                  goto LABEL_173;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v86) = 0;
              }
            }

            else
            {
              v84 = 0;
              v85 = 0;
              v86 = 0;
              v87 = (v83 + v82);
              v88 = v82 + 1;
              while (1)
              {
                *(a2 + 1) = v88;
                v89 = *v87++;
                v86 |= (v89 & 0x7F) << v84;
                if ((v89 & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                ++v88;
                v14 = v85++ > 8;
                if (v14)
                {
                  goto LABEL_145;
                }
              }
            }

LABEL_173:
            *(this + 14) = v86;
            goto LABEL_174;
          case 9:
            sub_1000A76D4(this + 1);
        }
      }

      if ((PB::Reader::skip(a2, v22, v10 & 7, 0) & 1) == 0)
      {
        v133 = 0;
        return v133 & 1;
      }

LABEL_174:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_178:
  v133 = v4 ^ 1;
  return v133 & 1;
}

uint64_t CMMsl::ClefCalibration::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 36), 1u);
    v4 = *(v3 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 64) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2, *(v3 + 44), 2u);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::writeVarInt(a2, *(v3 + 32), 3u);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 4u);
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 60), 5u);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    this = PB::Writer::writeVarInt(a2, *(v3 + 52), 7u);
    if ((*(v3 + 64) & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  this = PB::Writer::writeVarInt(a2, *(v3 + 48), 6u);
  v4 = *(v3 + 64);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v4 & 0x40) != 0)
  {
LABEL_9:
    this = PB::Writer::writeVarInt(a2, *(v3 + 56), 8u);
  }

LABEL_10:
  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v7, 9u);
  }

  return this;
}

BOOL CMMsl::ClefCalibration::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  v3 = *(a2 + 64);
  if ((v2 & 2) != 0)
  {
    if ((v3 & 2) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 2) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if (v2)
  {
    if ((v3 & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  if ((v2 & v3 & 0x80) == 0)
  {
    if (((v2 | v3) & 0x80) != 0)
    {
      return 0;
    }

LABEL_25:
    if ((v2 & 0x10) != 0)
    {
      if ((v3 & 0x10) == 0 || *(a1 + 48) != *(a2 + 48))
      {
        return 0;
      }
    }

    else if ((v3 & 0x10) != 0)
    {
      return 0;
    }

    if ((v2 & 0x20) != 0)
    {
      if ((v3 & 0x20) == 0 || *(a1 + 52) != *(a2 + 52))
      {
        return 0;
      }
    }

    else if ((v3 & 0x20) != 0)
    {
      return 0;
    }

    if ((v2 & 0x40) != 0)
    {
      if ((v3 & 0x40) == 0 || *(a1 + 56) != *(a2 + 56))
      {
        return 0;
      }
    }

    else if ((v3 & 0x40) != 0)
    {
      return 0;
    }

    return sub_1000A7A88((a1 + 8), a2 + 8);
  }

  if (*(a1 + 60) == *(a2 + 60))
  {
    goto LABEL_25;
  }

  return 0;
}

BOOL sub_1000A7A88(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  v5 = v2 + 8;
  do
  {
    v6 = *v4++;
    result = CMMsl::ClefCalibrationPoint::operator==(*(v5 - 8), v6);
    v8 = !result || v5 == v3;
    v5 += 8;
  }

  while (!v8);
  return result;
}

uint64_t CMMsl::ClefCalibration::hash_value(CMMsl::ClefCalibration *this)
{
  v3 = *(this + 64);
  if ((v3 & 2) != 0)
  {
    v4 = *(this + 9);
    if ((*(this + 64) & 8) != 0)
    {
LABEL_3:
      v5 = *(this + 11);
      if (*(this + 64))
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 64) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if (*(this + 64))
  {
LABEL_4:
    v6 = *(this + 8);
    if ((*(this + 64) & 4) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = 0;
  if ((*(this + 64) & 4) != 0)
  {
LABEL_5:
    v7 = *(this + 10);
    if ((*(this + 64) & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
  if ((*(this + 64) & 0x80) != 0)
  {
LABEL_6:
    v8 = *(this + 60);
    if ((*(this + 64) & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v9 = 0;
    if ((*(this + 64) & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v8 = 0;
  if ((*(this + 64) & 0x10) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v9 = *(this + 12);
  if ((*(this + 64) & 0x20) != 0)
  {
LABEL_8:
    v10 = *(this + 13);
    goto LABEL_16;
  }

LABEL_15:
  v10 = 0;
LABEL_16:
  v14 = v1;
  v15 = v2;
  if ((v3 & 0x40) != 0)
  {
    v11 = *(this + 14);
  }

  else
  {
    v11 = 0;
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ sub_1000A7BD4(&v13, this + 1);
}

uint64_t sub_1000A7BD4(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v6 = *v2++;
    v5 = v6;
    v7 = *(v6 + 20);
    v8 = *(v6 + 8);
    v9 = *(v6 + 12);
    if ((v7 & 1) == 0)
    {
      v8 = 0;
    }

    v10 = *(v5 + 16);
    if ((v7 & 4) == 0)
    {
      v10 = 0;
    }

    if ((v7 & 2) != 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    result ^= v8 ^ v10 ^ v11;
  }

  while (v2 != v3);
  return result;
}

uint64_t CMMsl::ClefCalibrationPoint::ClefCalibrationPoint(uint64_t this)
{
  *this = off_10041D820;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041D820;
  *(this + 20) = 0;
  return this;
}

void CMMsl::ClefCalibrationPoint::~ClefCalibrationPoint(CMMsl::ClefCalibrationPoint *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::ClefCalibrationPoint::ClefCalibrationPoint(uint64_t this, const CMMsl::ClefCalibrationPoint *a2)
{
  *this = off_10041D820;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if (v2)
  {
    v4 = *(a2 + 2);
    v3 = 1;
    *(this + 20) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 20) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 4u;
    *(this + 20) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 3);
    *(this + 20) = v3 | 2;
    *(this + 12) = v6;
  }

  return this;
}

uint64_t CMMsl::ClefCalibrationPoint::operator=(uint64_t a1, const CMMsl::ClefCalibrationPoint *a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefCalibrationPoint::ClefCalibrationPoint(v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    PB::Base::~Base(v5);
  }

  return a1;
}

_DWORD *CMMsl::swap(_DWORD *this, CMMsl::ClefCalibrationPoint *a2, CMMsl::ClefCalibrationPoint *a3)
{
  v3 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t CMMsl::ClefCalibrationPoint::ClefCalibrationPoint(uint64_t result, _DWORD *a2)
{
  *result = off_10041D820;
  *(result + 20) = a2[5];
  a2[5] = 0;
  *(result + 8) = a2[2];
  *(result + 16) = a2[4];
  *(result + 12) = a2[3];
  return result;
}

{
  *result = off_10041D820;
  *(result + 20) = a2[5];
  a2[5] = 0;
  *(result + 8) = a2[2];
  *(result + 16) = a2[4];
  *(result + 12) = a2[3];
  return result;
}

uint64_t CMMsl::ClefCalibrationPoint::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6 = off_10041D820;
    v3 = *(a2 + 8);
    *(a2 + 20) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

uint64_t CMMsl::ClefCalibrationPoint::formatText(CMMsl::ClefCalibrationPoint *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    PB::TextFormatter::format(a2, "base", *(this + 2));
    v5 = *(this + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "distance", *(this + 3));
  if ((*(this + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "peak", *(this + 4));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ClefCalibrationPoint::readFrom(CMMsl::ClefCalibrationPoint *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_95;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 2u;
        v40 = *(a2 + 1);
        v2 = *(a2 + 2);
        v41 = *a2;
        if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
        {
          v55 = 0;
          v56 = 0;
          v44 = 0;
          if (v2 <= v40)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v57 = v3 - v40;
          v58 = (v41 + v40);
          v59 = v40 + 1;
          while (1)
          {
            if (!v57)
            {
              LODWORD(v44) = 0;
              *(a2 + 24) = 1;
              goto LABEL_86;
            }

            v60 = v59;
            v61 = *v58;
            *(a2 + 1) = v60;
            v44 |= (v61 & 0x7F) << v55;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            --v57;
            ++v58;
            v59 = v60 + 1;
            v14 = v56++ > 8;
            if (v14)
            {
              LODWORD(v44) = 0;
              goto LABEL_85;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v44) = 0;
          }

LABEL_85:
          v3 = v60;
        }

        else
        {
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          while (1)
          {
            v3 = v46;
            *(a2 + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
            if (v14)
            {
              LODWORD(v44) = 0;
              break;
            }
          }
        }

LABEL_86:
        *(this + 3) = v44;
      }

      else if (v23 == 2)
      {
        *(this + 20) |= 4u;
        v32 = *(a2 + 1);
        v2 = *(a2 + 2);
        v33 = *a2;
        if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
        {
          v48 = 0;
          v49 = 0;
          v36 = 0;
          if (v2 <= v32)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v50 = v3 - v32;
          v51 = (v33 + v32);
          v52 = v32 + 1;
          while (1)
          {
            if (!v50)
            {
              LODWORD(v36) = 0;
              *(a2 + 24) = 1;
              goto LABEL_82;
            }

            v53 = v52;
            v54 = *v51;
            *(a2 + 1) = v53;
            v36 |= (v54 & 0x7F) << v48;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            --v50;
            ++v51;
            v52 = v53 + 1;
            v14 = v49++ > 8;
            if (v14)
            {
              LODWORD(v36) = 0;
              goto LABEL_81;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v36) = 0;
          }

LABEL_81:
          v3 = v53;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          while (1)
          {
            v3 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
            if (v14)
            {
              LODWORD(v36) = 0;
              break;
            }
          }
        }

LABEL_82:
        *(this + 4) = v36;
      }

      else if (v23 == 1)
      {
        *(this + 20) |= 1u;
        v24 = *(a2 + 1);
        v2 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
        {
          v62 = 0;
          v63 = 0;
          v28 = 0;
          if (v2 <= v24)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v64 = v3 - v24;
          v65 = (v25 + v24);
          v66 = v24 + 1;
          while (1)
          {
            if (!v64)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_90;
            }

            v67 = v66;
            v68 = *v65;
            *(a2 + 1) = v67;
            v28 |= (v68 & 0x7F) << v62;
            if ((v68 & 0x80) == 0)
            {
              break;
            }

            v62 += 7;
            --v64;
            ++v65;
            v66 = v67 + 1;
            v14 = v63++ > 8;
            if (v14)
            {
              LODWORD(v28) = 0;
              goto LABEL_89;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
          }

LABEL_89:
          v3 = v67;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            v3 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              LODWORD(v28) = 0;
              break;
            }
          }
        }

LABEL_90:
        *(this + 2) = v28;
      }

      else
      {
        if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
        {
          v69 = 0;
          return v69 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_95:
  v69 = v4 ^ 1;
  return v69 & 1;
}

uint64_t CMMsl::ClefCalibrationPoint::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 20) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2, *(v3 + 16), 2u);
    if ((*(v3 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
  v4 = *(v3 + 20);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 12);

  return PB::Writer::writeVarInt(a2, v5, 3u);
}

BOOL CMMsl::ClefCalibrationPoint::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  if ((*(a1 + 20) & 4) != 0)
  {
    if ((*(a2 + 20) & 4) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t CMMsl::ClefCalibrationPoint::hash_value(CMMsl::ClefCalibrationPoint *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 20) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v1 = *(this + 2);
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(this + 4);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = *(this + 3);
  return v2 ^ v1 ^ v3;
}

uint64_t CMMsl::ClefMeasurement::ClefMeasurement(uint64_t this)
{
  *this = off_10041D858;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_10041D858;
  *(this + 16) = 0;
  return this;
}

void CMMsl::ClefMeasurement::~ClefMeasurement(CMMsl::ClefMeasurement *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::ClefMeasurement::ClefMeasurement(CMMsl::ClefMeasurement *this, const CMMsl::ClefMeasurement *a2)
{
  *this = off_10041D858;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    result = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 3) = result;
  }

  return result;
}

uint64_t CMMsl::ClefMeasurement::operator=(uint64_t a1, const CMMsl::ClefMeasurement *a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefMeasurement::ClefMeasurement(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::ClefMeasurement *a2, CMMsl::ClefMeasurement *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

float CMMsl::ClefMeasurement::ClefMeasurement(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D858;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = off_10041D858;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t CMMsl::ClefMeasurement::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = off_10041D858;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::ClefMeasurement::formatText(CMMsl::ClefMeasurement *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    PB::TextFormatter::format(a2, "concha", *(this + 2));
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "tragus", *(this + 3));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ClefMeasurement::readFrom(CMMsl::ClefMeasurement *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_38;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_38;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 16) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_29;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_33:
        v2 = *(a2 + 1) + 4;
        *(a2 + 1) = v2;
        goto LABEL_34;
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_34:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(this + 16) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_29:
      *(a2 + 24) = 1;
      goto LABEL_34;
    }

    *(this + 3) = *(*a2 + v2);
    goto LABEL_33;
  }

LABEL_38:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::ClefMeasurement::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 12);

    return PB::Writer::write(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::ClefMeasurement::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t CMMsl::ClefMeasurement::hash_value(CMMsl::ClefMeasurement *this)
{
  if (*(this + 16))
  {
    v4 = *(this + 2);
    v1 = LODWORD(v4);
    if (v4 == 0.0)
    {
      v1 = 0;
    }

    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 3);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

uint64_t CMMsl::ClefTemperature::ClefTemperature(uint64_t this)
{
  *this = off_10041D890;
  *(this + 16) = 0;
  return this;
}

{
  *this = off_10041D890;
  *(this + 16) = 0;
  return this;
}

void CMMsl::ClefTemperature::~ClefTemperature(CMMsl::ClefTemperature *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::ClefTemperature::ClefTemperature(uint64_t this, const CMMsl::ClefTemperature *a2)
{
  *this = off_10041D890;
  *(this + 16) = 0;
  if (*(a2 + 16))
  {
    v3 = *(a2 + 2);
    *(this + 16) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 16) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 16) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 3);
    *(this + 16) = v2;
    *(this + 12) = v4;
  }

  return this;
}

uint64_t CMMsl::ClefTemperature::operator=(uint64_t a1, const CMMsl::ClefTemperature *a2)
{
  if (a1 != a2)
  {
    CMMsl::ClefTemperature::ClefTemperature(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

_DWORD *CMMsl::swap(_DWORD *this, CMMsl::ClefTemperature *a2, CMMsl::ClefTemperature *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t CMMsl::ClefTemperature::ClefTemperature(uint64_t result, _DWORD *a2)
{
  *result = off_10041D890;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 8) = a2[2];
  *(result + 12) = a2[3];
  return result;
}

{
  *result = off_10041D890;
  *(result + 16) = a2[4];
  a2[4] = 0;
  *(result + 8) = a2[2];
  *(result + 12) = a2[3];
  return result;
}

uint64_t CMMsl::ClefTemperature::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = off_10041D890;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v8 = *(a1 + 16);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 16) = v3;
    *(a1 + 8) = v5;
    v7[1] = v4;
    PB::Base::~Base(v7);
  }

  return a1;
}

uint64_t CMMsl::ClefTemperature::formatText(CMMsl::ClefTemperature *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    PB::TextFormatter::format(a2, "conchaTemp", *(this + 2));
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "tragusTemp", *(this + 3));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::ClefTemperature::readFrom(CMMsl::ClefTemperature *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = v2 >= v3;
        v19 = v2 - v3;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v3);
        v21 = v3 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_73;
          }

          v22 = *v20;
          *(a2 + 1) = v21;
          v17 |= (v22 & 0x7F) << v15;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v19;
          ++v20;
          ++v21;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_22;
          }
        }

        v10 = (v4 & 1) != 0 ? 0 : v17;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(this + 16) |= 2u;
        v32 = *(a2 + 1);
        v2 = *(a2 + 2);
        v33 = *a2;
        if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v36 = 0;
          if (v2 <= v32)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v49 = v3 - v32;
          v50 = (v33 + v32);
          v51 = v32 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v36) = 0;
              *(a2 + 24) = 1;
              goto LABEL_68;
            }

            v52 = v51;
            v53 = *v50;
            *(a2 + 1) = v52;
            v36 |= (v53 & 0x7F) << v47;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            v51 = v52 + 1;
            v14 = v48++ > 8;
            if (v14)
            {
              LODWORD(v36) = 0;
              goto LABEL_67;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v36) = 0;
          }

LABEL_67:
          v3 = v52;
        }

        else
        {
          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          while (1)
          {
            v3 = v38;
            *(a2 + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
            if (v14)
            {
              LODWORD(v36) = 0;
              break;
            }
          }
        }

LABEL_68:
        *(this + 3) = v36;
      }

      else if (v23 == 1)
      {
        *(this + 16) |= 1u;
        v24 = *(a2 + 1);
        v2 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
        {
          v40 = 0;
          v41 = 0;
          v28 = 0;
          if (v2 <= v24)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v42 = v3 - v24;
          v43 = (v25 + v24);
          v44 = v24 + 1;
          while (1)
          {
            if (!v42)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v45 = v44;
            v46 = *v43;
            *(a2 + 1) = v45;
            v28 |= (v46 & 0x7F) << v40;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            --v42;
            ++v43;
            v44 = v45 + 1;
            v14 = v41++ > 8;
            if (v14)
            {
              LODWORD(v28) = 0;
              goto LABEL_63;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
          }

LABEL_63:
          v3 = v45;
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            v3 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              LODWORD(v28) = 0;
              break;
            }
          }
        }

LABEL_64:
        *(this + 2) = v28;
      }

      else
      {
        if (!PB::Reader::skip(a2, v23, v10 & 7, 0))
        {
          v54 = 0;
          return v54 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
    }

    while (v3 < v2 && (*(a2 + 24) & 1) == 0);
  }

LABEL_73:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t CMMsl::ClefTemperature::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2, *(this + 8), 1u);
    v4 = *(v3 + 16);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 12);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::ClefTemperature::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  v2 = (*(a2 + 16) & 2) == 0;
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*(a2 + 16) & 2) != 0 && *(a1 + 12) == *(a2 + 12);
  }

  return v2;
}

uint64_t CMMsl::ClefTemperature::hash_value(CMMsl::ClefTemperature *this)
{
  if (*(this + 16))
  {
    v1 = *(this + 2);
    if ((*(this + 16) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v2 = 0;
    return v2 ^ v1;
  }

  v1 = 0;
  if ((*(this + 16) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = *(this + 3);
  return v2 ^ v1;
}

uint64_t CMMsl::CoarseElevationChange::CoarseElevationChange(uint64_t this)
{
  *this = off_10041D8C8;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041D8C8;
  *(this + 20) = 0;
  return this;
}

void CMMsl::CoarseElevationChange::~CoarseElevationChange(CMMsl::CoarseElevationChange *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::CoarseElevationChange::CoarseElevationChange(uint64_t this, const CMMsl::CoarseElevationChange *a2)
{
  *this = off_10041D8C8;
  *(this + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 8) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return this;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

const CMMsl::CoarseElevationChange *CMMsl::CoarseElevationChange::operator=(const CMMsl::CoarseElevationChange *a1, const CMMsl::CoarseElevationChange *a2)
{
  if (a1 != a2)
  {
    CMMsl::CoarseElevationChange::CoarseElevationChange(v7, a2);
    v3 = v9;
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    *(a1 + 1) = v8;
    *(a1 + 2) = v3;
    v8 = v4;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CoarseElevationChange *a2, CMMsl::CoarseElevationChange *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  return result;
}

double CMMsl::CoarseElevationChange::CoarseElevationChange(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D8C8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041D8C8;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::CoarseElevationChange::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = off_10041D8C8;
    v3 = *(a2 + 8);
    v4 = *(a2 + 16);
    *(a2 + 20) = 0;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    v8[1] = v5;
    v8[2] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::CoarseElevationChange::formatText(CMMsl::CoarseElevationChange *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "elevationAscended", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "startTime", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CoarseElevationChange::readFrom(CMMsl::CoarseElevationChange *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v33 = v2 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_49;
            }

            v36 = v35;
            v37 = *v34;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_48;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_48:
          v2 = v36;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(this + 4) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_54:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::CoarseElevationChange::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2, v5, 2u);
  }

  return this;
}

BOOL CMMsl::CoarseElevationChange::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 2) == 0;
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*(a2 + 20) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::CoarseElevationChange::hash_value(CMMsl::CoarseElevationChange *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v2 = 0;
    return v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  return v2 ^ *&v1;
}

uint64_t CMMsl::CompanionStepCountElevation::CompanionStepCountElevation(uint64_t this)
{
  *this = off_10041D900;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_10041D900;
  *(this + 24) = 0;
  return this;
}

void CMMsl::CompanionStepCountElevation::~CompanionStepCountElevation(CMMsl::CompanionStepCountElevation *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::CompanionStepCountElevation::CompanionStepCountElevation(uint64_t this, const CMMsl::CompanionStepCountElevation *a2)
{
  *this = off_10041D900;
  *(this + 24) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    *(this + 24) = v3 | 4;
    *(this + 20) = v6;
  }

  return this;
}

uint64_t CMMsl::CompanionStepCountElevation::operator=(uint64_t a1, const CMMsl::CompanionStepCountElevation *a2)
{
  if (a1 != a2)
  {
    CMMsl::CompanionStepCountElevation::CompanionStepCountElevation(&v8, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v3;
    v4 = v10;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    *(a1 + 8) = v9;
    *(a1 + 16) = v4;
    v9 = v5;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::CompanionStepCountElevation *a2, CMMsl::CompanionStepCountElevation *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  return result;
}

double CMMsl::CompanionStepCountElevation::CompanionStepCountElevation(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041D900;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

{
  *a1 = off_10041D900;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return result;
}

uint64_t CMMsl::CompanionStepCountElevation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v6;
    v8[0] = off_10041D900;
    v9 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8[1] = v4;
    v8[2] = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::CompanionStepCountElevation::formatText(CMMsl::CompanionStepCountElevation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "elevationAscended", *(this + 4));
    v5 = *(this + 24);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "elevationDescended", *(this + 5));
  if (*(this + 24))
  {
LABEL_4:
    PB::TextFormatter::format(a2, "startTime", *(this + 1));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::CompanionStepCountElevation::readFrom(CMMsl::CompanionStepCountElevation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(a2 + 24) = 1;
            goto LABEL_75;
          }

          v21 = *v19;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(a2 + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 24) |= 4u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v48 = v2 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_70;
            }

            v51 = v50;
            v52 = *v49;
            *(a2 + 1) = v51;
            v35 |= (v52 & 0x7F) << v46;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            --v48;
            ++v49;
            v50 = v51 + 1;
            v14 = v47++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_69;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_69:
          v2 = v51;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v2 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_70:
        *(this + 5) = v35;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(a2 + 1);
          }

          v41 = v2 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_66;
            }

            v44 = v43;
            v45 = *v42;
            *(a2 + 1) = v44;
            v27 |= (v45 & 0x7F) << v39;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            --v41;
            ++v42;
            v43 = v44 + 1;
            v14 = v40++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_65;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_65:
          v2 = v44;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v2 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_66:
        *(this + 4) = v27;
      }

      else if (v22 == 1)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
        {
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

LABEL_75:
  v53 = v4 ^ 1;
  return v53 & 1;
}