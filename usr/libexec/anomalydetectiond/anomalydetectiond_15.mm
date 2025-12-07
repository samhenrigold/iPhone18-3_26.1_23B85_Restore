uint64_t CMMsl::DisplacingState::DisplacingState(uint64_t this)
{
  *this = off_10041DD28;
  *(this + 20) = 0;
  return this;
}

{
  *this = off_10041DD28;
  *(this + 20) = 0;
  return this;
}

void CMMsl::DisplacingState::~DisplacingState(CMMsl::DisplacingState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::DisplacingState::DisplacingState(uint64_t this, const CMMsl::DisplacingState *a2)
{
  *this = off_10041DD28;
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

const CMMsl::DisplacingState *CMMsl::DisplacingState::operator=(const CMMsl::DisplacingState *a1, const CMMsl::DisplacingState *a2)
{
  if (a1 != a2)
  {
    CMMsl::DisplacingState::DisplacingState(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::DisplacingState *a2, CMMsl::DisplacingState *a3)
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

double CMMsl::DisplacingState::DisplacingState(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DD28;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041DD28;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::DisplacingState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = off_10041DD28;
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

uint64_t CMMsl::DisplacingState::formatText(CMMsl::DisplacingState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "displacingState", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DisplacingState::readFrom(CMMsl::DisplacingState *this, PB::Reader *a2)
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

uint64_t CMMsl::DisplacingState::writeTo(uint64_t this, PB::Writer *a2)
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

BOOL CMMsl::DisplacingState::operator==(uint64_t a1, uint64_t a2)
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

uint64_t CMMsl::DisplacingState::hash_value(CMMsl::DisplacingState *this)
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

uint64_t CMMsl::DisplayPoseState::DisplayPoseState(uint64_t this)
{
  *this = off_10041DD60;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_10041DD60;
  *(this + 24) = 0;
  return this;
}

void CMMsl::DisplayPoseState::~DisplayPoseState(CMMsl::DisplayPoseState *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::DisplayPoseState::DisplayPoseState(uint64_t this, const CMMsl::DisplayPoseState *a2)
{
  *this = off_10041DD60;
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
    v6 = *(a2 + 20);
    *(this + 24) = v3 | 4;
    *(this + 20) = v6;
  }

  return this;
}

uint64_t CMMsl::DisplayPoseState::operator=(uint64_t a1, const CMMsl::DisplayPoseState *a2)
{
  if (a1 != a2)
  {
    CMMsl::DisplayPoseState::DisplayPoseState(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v4;
    LOBYTE(v3) = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    PB::Base::~Base(&v6);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::DisplayPoseState *a2, CMMsl::DisplayPoseState *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  LOBYTE(v3) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  return result;
}

float CMMsl::DisplayPoseState::DisplayPoseState(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DD60;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 20) = *(a2 + 20);
  return result;
}

{
  *a1 = off_10041DD60;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 20) = *(a2 + 20);
  return result;
}

uint64_t CMMsl::DisplayPoseState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = off_10041DD60;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a2 + 20);
    v7 = *(a1 + 24);
    *(a1 + 24) = v3;
    v13 = v7;
    v8 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[1] = v8;
    LODWORD(v4) = *(a1 + 16);
    *(a1 + 16) = v5;
    v11 = v4;
    LOBYTE(v3) = *(a1 + 20);
    *(a1 + 20) = v6;
    v12 = v3;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::DisplayPoseState::formatText(CMMsl::DisplayPoseState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "isPitchStable", *(this + 20));
    v5 = *(this + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "pitch", *(this + 4));
  if (*(this + 24))
  {
LABEL_4:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DisplayPoseState::readFrom(CMMsl::DisplayPoseState *this, PB::Reader *a2)
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
        *(this + 24) |= 4u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
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

        *(this + 20) = v24;
        goto LABEL_39;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_30;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
LABEL_38:
        *(a2 + 1) = v2;
        goto LABEL_39;
      }

      if (!PB::Reader::skip(a2, v22, v10 & 7, 0))
      {
        v25 = 0;
        return v25 & 1;
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

    *(this + 24) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_30:
      *(a2 + 24) = 1;
      goto LABEL_39;
    }

    *(this + 4) = *(*a2 + v2);
    v2 = *(a2 + 1) + 4;
    goto LABEL_38;
  }

LABEL_43:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t CMMsl::DisplayPoseState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 16), 2u);
    if ((*(v3 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8), 1u);
  v4 = *(v3 + 24);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v5 = *(v3 + 20);

  return PB::Writer::write(a2, v5, 3u);
}

BOOL CMMsl::DisplayPoseState::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  if ((*(a1 + 24) & 2) != 0)
  {
    if ((*(a2 + 24) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 4) == 0;
  if ((*(a1 + 24) & 4) != 0)
  {
    return (*(a2 + 24) & 4) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return v2;
}

uint64_t CMMsl::DisplayPoseState::hash_value(CMMsl::DisplayPoseState *this)
{
  if (*(this + 24))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 24) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 4);
      v3 = LODWORD(v2);
      if (v2 == 0.0)
      {
        v3 = 0;
      }

      if ((*(this + 24) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      v4 = 0;
      return v3 ^ *&v1 ^ v4;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v4 = *(this + 20);
  return v3 ^ *&v1 ^ v4;
}

uint64_t CMMsl::DisplayStatus::DisplayStatus(uint64_t this)
{
  *this = off_10041DD98;
  *(this + 12) = 0;
  return this;
}

{
  *this = off_10041DD98;
  *(this + 12) = 0;
  return this;
}

void CMMsl::DisplayStatus::~DisplayStatus(CMMsl::DisplayStatus *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::DisplayStatus::DisplayStatus(uint64_t this, const CMMsl::DisplayStatus *a2)
{
  *this = off_10041DD98;
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
  *this = off_10041DD98;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::DisplayStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = off_10041DD98;
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
    v7 = off_10041DD98;
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

uint64_t CMMsl::swap(uint64_t this, CMMsl::DisplayStatus *a2, CMMsl::DisplayStatus *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::DisplayStatus::DisplayStatus(uint64_t result, uint64_t a2)
{
  *result = off_10041DD98;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = off_10041DD98;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::DisplayStatus::formatText(CMMsl::DisplayStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "displayOn", *(this + 8));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DisplayStatus::readFrom(CMMsl::DisplayStatus *this, PB::Reader *a2)
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

uint64_t CMMsl::DisplayStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::write(a2, *(this + 8), 1u);
  }

  return this;
}

BOOL CMMsl::DisplayStatus::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t CMMsl::DisplayStatus::hash_value(CMMsl::DisplayStatus *this)
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

double CMMsl::DoTEstimatorHandSwing::DoTEstimatorHandSwing(CMMsl::DoTEstimatorHandSwing *this)
{
  *this = off_10041DDD0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 42) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

{
  *this = off_10041DDD0;
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 42) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  return result;
}

void CMMsl::DoTEstimatorHandSwing::~DoTEstimatorHandSwing(CMMsl::DoTEstimatorHandSwing *this)
{
  *this = off_10041DDD0;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 13);
  *(this + 13) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(this + 5) = v6;
    operator delete(v6);
  }

  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::DoTEstimatorHandSwing::~DoTEstimatorHandSwing(this);

  operator delete();
}

CMMsl::DoTEstimatorHandSwing *CMMsl::DoTEstimatorHandSwing::DoTEstimatorHandSwing(CMMsl::DoTEstimatorHandSwing *this, const CMMsl::DoTEstimatorHandSwing *a2)
{
  *this = off_10041DDD0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 36) = 0;
  *(this + 40) = 0;
  *(this + 42) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  if ((*(a2 + 84) & 2) != 0)
  {
    v6 = *(a2 + 16);
    *(this + 84) = 2;
    *(this + 16) = v6;
  }

  if (this != a2)
  {
    sub_100035D1C(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_100035D1C(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  v7 = *(a2 + 84);
  if ((v7 & 0x20) != 0)
  {
    v12 = *(a2 + 37);
    *(this + 84) |= 0x20u;
    *(this + 37) = v12;
    v7 = *(a2 + 84);
    if ((v7 & 1) == 0)
    {
LABEL_7:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = *(a2 + 15);
  *(this + 84) |= 1u;
  *(this + 15) = v13;
  if ((*(a2 + 84) & 0x100) != 0)
  {
LABEL_8:
    v8 = *(a2 + 40);
    *(this + 84) |= 0x100u;
    *(this + 40) = v8;
  }

LABEL_9:
  if (*(a2 + 13))
  {
    operator new();
  }

  if (*(a2 + 14))
  {
    operator new();
  }

  v9 = *(a2 + 84);
  if ((v9 & 0x10) != 0)
  {
    v14 = *(a2 + 36);
    *(this + 84) |= 0x10u;
    *(this + 36) = v14;
    v9 = *(a2 + 84);
    if ((v9 & 0x200) == 0)
    {
LABEL_15:
      if ((v9 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_28;
    }
  }

  else if ((*(a2 + 84) & 0x200) == 0)
  {
    goto LABEL_15;
  }

  v15 = *(a2 + 164);
  *(this + 84) |= 0x200u;
  *(this + 164) = v15;
  v9 = *(a2 + 84);
  if ((v9 & 4) == 0)
  {
LABEL_16:
    if ((v9 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = *(a2 + 34);
  *(this + 84) |= 4u;
  *(this + 34) = v16;
  v9 = *(a2 + 84);
  if ((v9 & 8) == 0)
  {
LABEL_17:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = *(a2 + 35);
  *(this + 84) |= 8u;
  *(this + 35) = v17;
  v9 = *(a2 + 84);
  if ((v9 & 0x40) == 0)
  {
LABEL_18:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_30:
  v18 = *(a2 + 38);
  *(this + 84) |= 0x40u;
  *(this + 38) = v18;
  if ((*(a2 + 84) & 0x80) != 0)
  {
LABEL_19:
    v10 = *(a2 + 39);
    *(this + 84) |= 0x80u;
    *(this + 39) = v10;
  }

LABEL_20:
  if (this != a2)
  {
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  return this;
}

CMMsl *CMMsl::DoTEstimatorHandSwing::operator=(CMMsl *a1, const CMMsl::DoTEstimatorHandSwing *a2)
{
  if (a1 != a2)
  {
    CMMsl::DoTEstimatorHandSwing::DoTEstimatorHandSwing(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::DoTEstimatorHandSwing::~DoTEstimatorHandSwing(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::DoTEstimatorHandSwing *a2, CMMsl::DoTEstimatorHandSwing *a3)
{
  v3 = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v3;
  v4 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v5;
  v6 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  v7 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v8;
  v9 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v9;
  v10 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v10;
  v11 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v11;
  LODWORD(v11) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v11;
  LOBYTE(v11) = *(this + 164);
  *(this + 164) = *(a2 + 164);
  *(a2 + 164) = v11;
  LODWORD(v11) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v11;
  v12 = *(this + 39);
  LODWORD(v11) = *(this + 40);
  v13 = *(a2 + 40);
  *(this + 39) = *(a2 + 39);
  *(this + 40) = v13;
  v14 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v14;
  LODWORD(v14) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v14;
  v15 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v15;
  LODWORD(v15) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v15;
  result = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = result;
  *(a2 + 39) = v12;
  *(a2 + 40) = v11;
  v17 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v17;
  v18 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v18;
  v19 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v19;
  v20 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v20;
  v21 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v21;
  v22 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v22;
  return result;
}

uint64_t CMMsl::DoTEstimatorHandSwing::DoTEstimatorHandSwing(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DDD0;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  v5 = a1 + 56;
  *(a1 + 104) = 0u;
  *(a1 + 168) = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a1 + 128) = *(a2 + 128);
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  sub_1002A2DD0(v5, (a2 + 56));
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 160) = *(a2 + 160);
  v6 = *(a2 + 104);
  *(a2 + 104) = 0;
  v7 = *(a1 + 104);
  *(a1 + 104) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a2 + 112);
  *(a2 + 112) = 0;
  v9 = *(a1 + 112);
  *(a1 + 112) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 156) = *(a2 + 156);
  sub_1002A2DD0(v4, (a2 + 8));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  return a1;
}

CMMsl *CMMsl::DoTEstimatorHandSwing::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::DoTEstimatorHandSwing::DoTEstimatorHandSwing(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::DoTEstimatorHandSwing::~DoTEstimatorHandSwing(v5);
  }

  return a1;
}

uint64_t CMMsl::DoTEstimatorHandSwing::formatText(CMMsl::DoTEstimatorHandSwing *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 84);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "AzABufferMean", *(this + 34));
    v5 = *(this + 84);
  }

  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "AzBBufferMean", *(this + 35));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "cachedAttitude", v8);
  }

  v9 = *(this + 13);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "candidateA");
  }

  v10 = *(this + 14);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "candidateB");
  }

  v11 = *(this + 4);
  v12 = *(this + 5);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "currAttitude", v13);
  }

  v14 = *(this + 84);
  if ((v14 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "disambiguationFlag", *(this + 36));
    v14 = *(this + 84);
    if ((v14 & 1) == 0)
    {
LABEL_15:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

  PB::TextFormatter::format(a2, "lastDoTUpdateTime", *(this + 15));
  if ((*(this + 84) & 0x20) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(a2, "lastEstimatedDoTAngleRad", *(this + 37));
  }

LABEL_17:
  v15 = *(this + 7);
  v16 = *(this + 8);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(a2, "lpfInertialRotationRate", v17);
  }

  v18 = *(this + 10);
  v19 = *(this + 11);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(a2, "lpfInertialUserAccel", v20);
  }

  v21 = *(this + 84);
  if ((v21 & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "newDisambiguation", *(this + 164));
    v21 = *(this + 84);
    if ((v21 & 0x40) == 0)
    {
LABEL_23:
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }
  }

  else if ((v21 & 0x40) == 0)
  {
    goto LABEL_23;
  }

  PB::TextFormatter::format(a2, "numAbortedPeaks", *(this + 38));
  v21 = *(this + 84);
  if ((v21 & 0x80) == 0)
  {
LABEL_24:
    if ((v21 & 0x100) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "numLargeYawDetections", *(this + 39));
  v21 = *(this + 84);
  if ((v21 & 0x100) == 0)
  {
LABEL_25:
    if ((v21 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "stateFSM", *(this + 40));
  if ((*(this + 84) & 2) != 0)
  {
LABEL_26:
    PB::TextFormatter::format(a2, "timestamp", *(this + 16));
  }

LABEL_27:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DoTEstimatorHandSwing::readFrom(CMMsl::DoTEstimatorHandSwing *this, PB::Reader *a2)
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
        break;
      }

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

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_267;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 84) |= 2u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_259;
          }

          *(this + 16) = *(*a2 + v23);
          goto LABEL_52;
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_269:
              v207 = 0;
              return v207 & 1;
            }

            v89 = *(a2 + 1);
            v90 = *(a2 + 2);
            while (v89 < v90 && (*(a2 + 24) & 1) == 0)
            {
              v92 = *(this + 11);
              v91 = *(this + 12);
              if (v92 >= v91)
              {
                v94 = *(this + 10);
                v95 = v92 - v94;
                v96 = (v92 - v94) >> 2;
                v97 = v96 + 1;
                if ((v96 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v98 = v91 - v94;
                if (v98 >> 1 > v97)
                {
                  v97 = v98 >> 1;
                }

                if (v98 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v99 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v99 = v97;
                }

                if (v99)
                {
                  sub_10002290C(this + 80, v99);
                }

                v100 = (v92 - v94) >> 2;
                v101 = (4 * v96);
                v102 = (4 * v96 - 4 * v100);
                *v101 = 0;
                v93 = v101 + 1;
                memcpy(v102, v94, v95);
                v103 = *(this + 10);
                *(this + 10) = v102;
                *(this + 11) = v93;
                *(this + 12) = 0;
                if (v103)
                {
                  operator delete(v103);
                }
              }

              else
              {
                *v92 = 0;
                v93 = v92 + 4;
              }

              *(this + 11) = v93;
              v104 = *(a2 + 1);
              if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(a2 + 2))
              {
                goto LABEL_153;
              }

              *(v93 - 1) = *(*a2 + v104);
              v90 = *(a2 + 2);
              v89 = *(a2 + 1) + 4;
              *(a2 + 1) = v89;
            }

LABEL_154:
            PB::Reader::recallMark();
          }

          else
          {
            v147 = *(this + 11);
            v146 = *(this + 12);
            if (v147 >= v146)
            {
              v184 = *(this + 10);
              v185 = v147 - v184;
              v186 = (v147 - v184) >> 2;
              v187 = v186 + 1;
              if ((v186 + 1) >> 62)
              {
LABEL_270:
                sub_10000CD24();
              }

              v188 = v146 - v184;
              if (v188 >> 1 > v187)
              {
                v187 = v188 >> 1;
              }

              if (v188 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v189 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v189 = v187;
              }

              if (v189)
              {
                sub_10002290C(this + 80, v189);
              }

              v202 = (v147 - v184) >> 2;
              v203 = (4 * v186);
              v204 = (4 * v186 - 4 * v202);
              *v203 = 0;
              v135 = v203 + 1;
              memcpy(v204, v184, v185);
              v205 = *(this + 10);
              *(this + 10) = v204;
              *(this + 11) = v135;
              *(this + 12) = 0;
              if (v205)
              {
                operator delete(v205);
              }
            }

            else
            {
              *v147 = 0;
              v135 = v147 + 4;
            }

            *(this + 11) = v135;
LABEL_257:
            v206 = *(a2 + 1);
            if (v206 <= 0xFFFFFFFFFFFFFFFBLL && v206 + 4 <= *(a2 + 2))
            {
              *(v135 - 1) = *(*a2 + v206);
LABEL_261:
              v42 = *(a2 + 1) + 4;
LABEL_262:
              *(a2 + 1) = v42;
            }

            else
            {
LABEL_259:
              *(a2 + 24) = 1;
            }
          }

LABEL_263:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_267;
          }

          break;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
            }

            v56 = *(a2 + 1);
            v57 = *(a2 + 2);
            while (v56 < v57 && (*(a2 + 24) & 1) == 0)
            {
              v59 = *(this + 8);
              v58 = *(this + 9);
              if (v59 >= v58)
              {
                v61 = *(this + 7);
                v62 = v59 - v61;
                v63 = (v59 - v61) >> 2;
                v64 = v63 + 1;
                if ((v63 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v65 = v58 - v61;
                if (v65 >> 1 > v64)
                {
                  v64 = v65 >> 1;
                }

                if (v65 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v66 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v66 = v64;
                }

                if (v66)
                {
                  sub_10002290C(this + 56, v66);
                }

                v67 = (v59 - v61) >> 2;
                v68 = (4 * v63);
                v69 = (4 * v63 - 4 * v67);
                *v68 = 0;
                v60 = v68 + 1;
                memcpy(v69, v61, v62);
                v70 = *(this + 7);
                *(this + 7) = v69;
                *(this + 8) = v60;
                *(this + 9) = 0;
                if (v70)
                {
                  operator delete(v70);
                }
              }

              else
              {
                *v59 = 0;
                v60 = v59 + 4;
              }

              *(this + 8) = v60;
              v71 = *(a2 + 1);
              if (v71 > 0xFFFFFFFFFFFFFFFBLL || v71 + 4 > *(a2 + 2))
              {
                goto LABEL_153;
              }

              *(v60 - 1) = *(*a2 + v71);
              v57 = *(a2 + 2);
              v56 = *(a2 + 1) + 4;
              *(a2 + 1) = v56;
            }

            goto LABEL_154;
          }

          v143 = *(this + 8);
          v142 = *(this + 9);
          if (v143 >= v142)
          {
            v172 = *(this + 7);
            v173 = v143 - v172;
            v174 = (v143 - v172) >> 2;
            v175 = v174 + 1;
            if ((v174 + 1) >> 62)
            {
              goto LABEL_270;
            }

            v176 = v142 - v172;
            if (v176 >> 1 > v175)
            {
              v175 = v176 >> 1;
            }

            if (v176 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v177 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v177 = v175;
            }

            if (v177)
            {
              sub_10002290C(this + 56, v177);
            }

            v194 = (v143 - v172) >> 2;
            v195 = (4 * v174);
            v196 = (4 * v174 - 4 * v194);
            *v195 = 0;
            v135 = v195 + 1;
            memcpy(v196, v172, v173);
            v197 = *(this + 7);
            *(this + 7) = v196;
            *(this + 8) = v135;
            *(this + 9) = 0;
            if (v197)
            {
              operator delete(v197);
            }
          }

          else
          {
            *v143 = 0;
            v135 = v143 + 4;
          }

          *(this + 8) = v135;
          goto LABEL_257;
        case 4u:
          *(this + 84) |= 0x20u;
          v88 = *(a2 + 1);
          if (v88 > 0xFFFFFFFFFFFFFFFBLL || v88 + 4 > *(a2 + 2))
          {
            goto LABEL_259;
          }

          *(this + 37) = *(*a2 + v88);
          goto LABEL_261;
        case 5u:
          *(this + 84) |= 1u;
          v41 = *(a2 + 1);
          if (v41 > 0xFFFFFFFFFFFFFFF7 || v41 + 8 > *(a2 + 2))
          {
            goto LABEL_259;
          }

          *(this + 15) = *(*a2 + v41);
LABEL_52:
          v42 = *(a2 + 1) + 8;
          goto LABEL_262;
        case 6u:
          *(this + 84) |= 0x100u;
          v106 = *(a2 + 1);
          v105 = *(a2 + 2);
          v107 = *a2;
          if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            do
            {
              *(a2 + 1) = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                goto LABEL_238;
              }

              v108 += 7;
              ++v112;
              v14 = v109++ > 8;
            }

            while (!v14);
LABEL_180:
            LODWORD(v110) = 0;
            goto LABEL_238;
          }

          v148 = 0;
          v149 = 0;
          v110 = 0;
          v17 = v105 >= v106;
          v150 = v105 - v106;
          if (!v17)
          {
            v150 = 0;
          }

          v151 = (v107 + v106);
          v152 = v106 + 1;
          while (2)
          {
            if (v150)
            {
              v153 = *v151;
              *(a2 + 1) = v152;
              v110 |= (v153 & 0x7F) << v148;
              if (v153 < 0)
              {
                v148 += 7;
                --v150;
                ++v151;
                ++v152;
                v14 = v149++ > 8;
                if (v14)
                {
                  goto LABEL_180;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v110) = 0;
              }
            }

            else
            {
              LODWORD(v110) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_238:
          *(this + 40) = v110;
          goto LABEL_263;
        case 7u:
          operator new();
        case 8u:
          operator new();
        case 9u:
          *(this + 84) |= 0x10u;
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
                goto LABEL_244;
              }

              v127 += 7;
              ++v131;
              v14 = v128++ > 8;
            }

            while (!v14);
LABEL_196:
            LODWORD(v129) = 0;
            goto LABEL_244;
          }

          v160 = 0;
          v161 = 0;
          v129 = 0;
          v17 = v124 >= v125;
          v162 = v124 - v125;
          if (!v17)
          {
            v162 = 0;
          }

          v163 = (v126 + v125);
          v164 = v125 + 1;
          while (2)
          {
            if (v162)
            {
              v165 = *v163;
              *(a2 + 1) = v164;
              v129 |= (v165 & 0x7F) << v160;
              if (v165 < 0)
              {
                v160 += 7;
                --v162;
                ++v163;
                ++v164;
                v14 = v161++ > 8;
                if (v14)
                {
                  goto LABEL_196;
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

LABEL_244:
          *(this + 36) = v129;
          goto LABEL_263;
        case 0xAu:
          *(this + 84) |= 0x200u;
          v52 = *(a2 + 1);
          if (v52 >= *(a2 + 2))
          {
            v55 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v53 = v52 + 1;
            v54 = *(*a2 + v52);
            *(a2 + 1) = v53;
            v55 = v54 != 0;
          }

          *(this + 164) = v55;
          goto LABEL_263;
        case 0xBu:
          *(this + 84) |= 4u;
          v123 = *(a2 + 1);
          if (v123 > 0xFFFFFFFFFFFFFFFBLL || v123 + 4 > *(a2 + 2))
          {
            goto LABEL_259;
          }

          *(this + 34) = *(*a2 + v123);
          goto LABEL_261;
        case 0xCu:
          *(this + 84) |= 8u;
          v40 = *(a2 + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
          {
            goto LABEL_259;
          }

          *(this + 35) = *(*a2 + v40);
          goto LABEL_261;
        case 0xDu:
          *(this + 84) |= 0x40u;
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
                goto LABEL_235;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_164:
            LODWORD(v48) = 0;
            goto LABEL_235;
          }

          v136 = 0;
          v137 = 0;
          v48 = 0;
          v17 = v43 >= v44;
          v138 = v43 - v44;
          if (!v17)
          {
            v138 = 0;
          }

          v139 = (v45 + v44);
          v140 = v44 + 1;
          while (2)
          {
            if (v138)
            {
              v141 = *v139;
              *(a2 + 1) = v140;
              v48 |= (v141 & 0x7F) << v136;
              if (v141 < 0)
              {
                v136 += 7;
                --v138;
                ++v139;
                ++v140;
                v14 = v137++ > 8;
                if (v14)
                {
                  goto LABEL_164;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v48) = 0;
              }
            }

            else
            {
              LODWORD(v48) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_235:
          *(this + 38) = v48;
          goto LABEL_263;
        case 0xEu:
          *(this + 84) |= 0x80u;
          v115 = *(a2 + 1);
          v114 = *(a2 + 2);
          v116 = *a2;
          if (v115 <= 0xFFFFFFFFFFFFFFF5 && v115 + 10 <= v114)
          {
            v117 = 0;
            v118 = 0;
            v119 = 0;
            v120 = (v116 + v115);
            v121 = v115 + 1;
            do
            {
              *(a2 + 1) = v121;
              v122 = *v120++;
              v119 |= (v122 & 0x7F) << v117;
              if ((v122 & 0x80) == 0)
              {
                goto LABEL_241;
              }

              v117 += 7;
              ++v121;
              v14 = v118++ > 8;
            }

            while (!v14);
LABEL_188:
            LODWORD(v119) = 0;
            goto LABEL_241;
          }

          v154 = 0;
          v155 = 0;
          v119 = 0;
          v17 = v114 >= v115;
          v156 = v114 - v115;
          if (!v17)
          {
            v156 = 0;
          }

          v157 = (v116 + v115);
          v158 = v115 + 1;
          while (2)
          {
            if (v156)
            {
              v159 = *v157;
              *(a2 + 1) = v158;
              v119 |= (v159 & 0x7F) << v154;
              if (v159 < 0)
              {
                v154 += 7;
                --v156;
                ++v157;
                ++v158;
                v14 = v155++ > 8;
                if (v14)
                {
                  goto LABEL_188;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v119) = 0;
              }
            }

            else
            {
              LODWORD(v119) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_241:
          *(this + 39) = v119;
          goto LABEL_263;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
            }

            v24 = *(a2 + 1);
            v25 = *(a2 + 2);
            while (v24 < v25 && (*(a2 + 24) & 1) == 0)
            {
              v27 = *(this + 2);
              v26 = *(this + 3);
              if (v27 >= v26)
              {
                v29 = *(this + 1);
                v30 = v27 - v29;
                v31 = (v27 - v29) >> 2;
                v32 = v31 + 1;
                if ((v31 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v33 = v26 - v29;
                if (v33 >> 1 > v32)
                {
                  v32 = v33 >> 1;
                }

                if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v34 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v34 = v32;
                }

                if (v34)
                {
                  sub_10002290C(this + 8, v34);
                }

                v35 = (v27 - v29) >> 2;
                v36 = (4 * v31);
                v37 = (4 * v31 - 4 * v35);
                *v36 = 0;
                v28 = v36 + 1;
                memcpy(v37, v29, v30);
                v38 = *(this + 1);
                *(this + 1) = v37;
                *(this + 2) = v28;
                *(this + 3) = 0;
                if (v38)
                {
                  operator delete(v38);
                }
              }

              else
              {
                *v27 = 0;
                v28 = v27 + 4;
              }

              *(this + 2) = v28;
              v39 = *(a2 + 1);
              if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
              {
                goto LABEL_153;
              }

              *(v28 - 1) = *(*a2 + v39);
              v25 = *(a2 + 2);
              v24 = *(a2 + 1) + 4;
              *(a2 + 1) = v24;
            }

            goto LABEL_154;
          }

          v134 = *(this + 2);
          v133 = *(this + 3);
          if (v134 >= v133)
          {
            v166 = *(this + 1);
            v167 = v134 - v166;
            v168 = (v134 - v166) >> 2;
            v169 = v168 + 1;
            if ((v168 + 1) >> 62)
            {
              goto LABEL_270;
            }

            v170 = v133 - v166;
            if (v170 >> 1 > v169)
            {
              v169 = v170 >> 1;
            }

            if (v170 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v171 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v171 = v169;
            }

            if (v171)
            {
              sub_10002290C(this + 8, v171);
            }

            v190 = (v134 - v166) >> 2;
            v191 = (4 * v168);
            v192 = (4 * v168 - 4 * v190);
            *v191 = 0;
            v135 = v191 + 1;
            memcpy(v192, v166, v167);
            v193 = *(this + 1);
            *(this + 1) = v192;
            *(this + 2) = v135;
            *(this + 3) = 0;
            if (v193)
            {
              operator delete(v193);
            }
          }

          else
          {
            *v134 = 0;
            v135 = v134 + 4;
          }

          *(this + 2) = v135;
          goto LABEL_257;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_269;
            }

            v72 = *(a2 + 1);
            v73 = *(a2 + 2);
            while (v72 < v73 && (*(a2 + 24) & 1) == 0)
            {
              v75 = *(this + 5);
              v74 = *(this + 6);
              if (v75 >= v74)
              {
                v77 = *(this + 4);
                v78 = v75 - v77;
                v79 = (v75 - v77) >> 2;
                v80 = v79 + 1;
                if ((v79 + 1) >> 62)
                {
                  goto LABEL_270;
                }

                v81 = v74 - v77;
                if (v81 >> 1 > v80)
                {
                  v80 = v81 >> 1;
                }

                if (v81 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v82 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v82 = v80;
                }

                if (v82)
                {
                  sub_10002290C(this + 32, v82);
                }

                v83 = (v75 - v77) >> 2;
                v84 = (4 * v79);
                v85 = (4 * v79 - 4 * v83);
                *v84 = 0;
                v76 = v84 + 1;
                memcpy(v85, v77, v78);
                v86 = *(this + 4);
                *(this + 4) = v85;
                *(this + 5) = v76;
                *(this + 6) = 0;
                if (v86)
                {
                  operator delete(v86);
                }
              }

              else
              {
                *v75 = 0;
                v76 = v75 + 4;
              }

              *(this + 5) = v76;
              v87 = *(a2 + 1);
              if (v87 > 0xFFFFFFFFFFFFFFFBLL || v87 + 4 > *(a2 + 2))
              {
LABEL_153:
                *(a2 + 24) = 1;
                goto LABEL_154;
              }

              *(v76 - 1) = *(*a2 + v87);
              v73 = *(a2 + 2);
              v72 = *(a2 + 1) + 4;
              *(a2 + 1) = v72;
            }

            goto LABEL_154;
          }

          v145 = *(this + 5);
          v144 = *(this + 6);
          if (v145 >= v144)
          {
            v178 = *(this + 4);
            v179 = v145 - v178;
            v180 = (v145 - v178) >> 2;
            v181 = v180 + 1;
            if ((v180 + 1) >> 62)
            {
              goto LABEL_270;
            }

            v182 = v144 - v178;
            if (v182 >> 1 > v181)
            {
              v181 = v182 >> 1;
            }

            if (v182 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v183 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v183 = v181;
            }

            if (v183)
            {
              sub_10002290C(this + 32, v183);
            }

            v198 = (v145 - v178) >> 2;
            v199 = (4 * v180);
            v200 = (4 * v180 - 4 * v198);
            *v199 = 0;
            v135 = v199 + 1;
            memcpy(v200, v178, v179);
            v201 = *(this + 4);
            *(this + 4) = v200;
            *(this + 5) = v135;
            *(this + 6) = 0;
            if (v201)
            {
              operator delete(v201);
            }
          }

          else
          {
            *v145 = 0;
            v135 = v145 + 4;
          }

          *(this + 5) = v135;
          goto LABEL_257;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v22, 0) & 1) == 0)
          {
            goto LABEL_269;
          }

          goto LABEL_263;
      }
    }

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
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
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

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_267:
  v207 = v4 ^ 1;
  return v207 & 1;
}

uint64_t CMMsl::SwingDoTCandidate::SwingDoTCandidate(uint64_t this)
{
  *this = off_1004224B0;
  *(this + 32) = 0;
  return this;
}

{
  *this = off_1004224B0;
  *(this + 32) = 0;
  return this;
}

uint64_t CMMsl::DoTEstimatorHandSwing::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if ((*(this + 168) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 128), 1u);
  }

  v4 = *(v3 + 80);
  v5 = *(v3 + 88);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  v10 = *(v3 + 168);
  if ((v10 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 148), 4u);
    v10 = *(v3 + 168);
    if ((v10 & 1) == 0)
    {
LABEL_11:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  this = PB::Writer::write(a2, *(v3 + 120), 5u);
  if ((*(v3 + 168) & 0x100) != 0)
  {
LABEL_12:
    this = PB::Writer::writeVarInt(a2, *(v3 + 160), 6u);
  }

LABEL_13:
  v11 = *(v3 + 104);
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11, 7u);
  }

  v12 = *(v3 + 112);
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12, 8u);
  }

  v13 = *(v3 + 168);
  if ((v13 & 0x10) != 0)
  {
    this = PB::Writer::writeVarInt(a2, *(v3 + 144), 9u);
    v13 = *(v3 + 168);
    if ((v13 & 0x200) == 0)
    {
LABEL_19:
      if ((v13 & 4) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }
  }

  else if ((*(v3 + 168) & 0x200) == 0)
  {
    goto LABEL_19;
  }

  this = PB::Writer::write(a2, *(v3 + 164), 0xAu);
  v13 = *(v3 + 168);
  if ((v13 & 4) == 0)
  {
LABEL_20:
    if ((v13 & 8) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 136), 0xBu);
  v13 = *(v3 + 168);
  if ((v13 & 8) == 0)
  {
LABEL_21:
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_22;
    }

LABEL_38:
    this = PB::Writer::writeVarInt(a2, *(v3 + 152), 0xDu);
    if ((*(v3 + 168) & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 140), 0xCu);
  v13 = *(v3 + 168);
  if ((v13 & 0x40) != 0)
  {
    goto LABEL_38;
  }

LABEL_22:
  if ((v13 & 0x80) != 0)
  {
LABEL_23:
    this = PB::Writer::writeVarInt(a2, *(v3 + 156), 0xEu);
  }

LABEL_24:
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::write(a2, v16, 0xFu);
  }

  v18 = *(v3 + 32);
  v17 = *(v3 + 40);
  while (v18 != v17)
  {
    v19 = *v18++;
    this = PB::Writer::write(a2, v19, 0x10u);
  }

  return this;
}

BOOL CMMsl::DoTEstimatorHandSwing::operator==(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = *(a1 + 168);
  v6 = *(a2 + 168);
  if ((v5 & 2) != 0)
  {
    if ((v6 & 2) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v6 & 2) != 0)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  v7 = *(a1 + 88);
  v9 = *(a2 + 80);
  if (v7 - v8 != *(a2 + 88) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
  }

  v11 = *(a1 + 56);
  v10 = *(a1 + 64);
  v12 = *(a2 + 56);
  if (v10 - v11 != *(a2 + 64) - v12)
  {
    return 0;
  }

  while (v11 != v10)
  {
    if (*v11 != *v12)
    {
      return 0;
    }

    ++v11;
    ++v12;
  }

  if ((v5 & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || *(a1 + 148) != *(a2 + 148))
    {
      return 0;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v6 & 1) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((*(a1 + 168) & 0x100) != 0)
  {
    if ((*(a2 + 168) & 0x100) == 0 || *(a1 + 160) != *(a2 + 160))
    {
      return 0;
    }
  }

  else if ((*(a2 + 168) & 0x100) != 0)
  {
    return 0;
  }

  v13 = *(a1 + 104);
  v14 = *(a2 + 104);
  if (v13)
  {
    if (!v14 || !CMMsl::SwingDoTCandidate::operator==(v13, v14))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 112);
  v16 = *(a2 + 112);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_39;
    }

    return 0;
  }

  if (!v16 || !CMMsl::SwingDoTCandidate::operator==(v15, v16))
  {
    return 0;
  }

LABEL_39:
  if ((v5 & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || *(a1 + 144) != *(a2 + 144))
    {
      return 0;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    return 0;
  }

  if ((v5 & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || *(a1 + 164) != *(a2 + 164))
    {
      return 0;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    return 0;
  }

  if ((v5 & 4) != 0)
  {
    if ((v6 & 4) == 0 || *(a1 + 136) != *(a2 + 136))
    {
      return 0;
    }
  }

  else if ((v6 & 4) != 0)
  {
    return 0;
  }

  if ((v5 & 8) != 0)
  {
    if ((v6 & 8) == 0 || *(a1 + 140) != *(a2 + 140))
    {
      return 0;
    }
  }

  else if ((v6 & 8) != 0)
  {
    return 0;
  }

  if ((v5 & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || *(a1 + 152) != *(a2 + 152))
    {
      return 0;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    return 0;
  }

  if ((v5 & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || *(a1 + 156) != *(a2 + 156))
    {
      return 0;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    return 0;
  }

  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  v19 = *(a2 + 8);
  if (v17 - v18 != *(a2 + 16) - v19)
  {
    return 0;
  }

  while (v18 != v17)
  {
    if (*v18 != *v19)
    {
      return 0;
    }

    ++v18;
    ++v19;
  }

  v21 = *(a1 + 32);
  v20 = *(a1 + 40);
  v22 = *(a2 + 32);
  if (v20 - v21 != *(a2 + 40) - v22)
  {
    return 0;
  }

  if (v21 == v20)
  {
    return 1;
  }

  v23 = v21 + 4;
  do
  {
    v24 = *v22++;
    result = *(v23 - 4) == v24;
    v26 = *(v23 - 4) != v24 || v23 == v20;
    v23 += 4;
  }

  while (!v26);
  return result;
}

BOOL CMMsl::SwingDoTCandidate::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 4) != 0)
  {
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 2) == 0;
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*(a2 + 32) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::DoTEstimatorHandSwing::hash_value(CMMsl::DoTEstimatorHandSwing *this)
{
  if ((*(this + 84) & 2) != 0)
  {
    if (*(this + 16) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = PBHashBytes();
  v4 = PBHashBytes();
  v5 = *(this + 84);
  if ((v5 & 0x20) != 0)
  {
    v9 = *(this + 37);
    if (v9 == 0.0)
    {
      v6 = 0;
    }

    else
    {
      v6 = LODWORD(v9);
    }

    if (v5)
    {
LABEL_8:
      if (*(this + 15) == 0.0)
      {
        v7 = 0;
      }

      else
      {
        v7 = *(this + 15);
      }

      if ((*(this + 84) & 0x100) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v6 = 0;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  v7 = 0;
  if ((*(this + 84) & 0x100) != 0)
  {
LABEL_12:
    v8 = *(this + 40);
    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
LABEL_19:
  v10 = *(this + 13);
  if (v10)
  {
    v11 = CMMsl::SwingDoTCandidate::hash_value(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(this + 14);
  if (v12)
  {
    v12 = CMMsl::SwingDoTCandidate::hash_value(v12);
  }

  if ((v5 & 0x10) != 0)
  {
    v13 = *(this + 36);
    if ((v5 & 0x200) != 0)
    {
LABEL_26:
      v14 = *(this + 164);
      if ((v5 & 4) != 0)
      {
        goto LABEL_27;
      }

LABEL_37:
      v16 = 0;
      if ((v5 & 8) != 0)
      {
        goto LABEL_30;
      }

LABEL_38:
      v18 = 0;
      if ((v5 & 0x40) != 0)
      {
        goto LABEL_33;
      }

LABEL_39:
      v19 = 0;
      if ((v5 & 0x80) != 0)
      {
        goto LABEL_34;
      }

LABEL_40:
      v20 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0;
    if ((v5 & 0x200) != 0)
    {
      goto LABEL_26;
    }
  }

  v14 = 0;
  if ((v5 & 4) == 0)
  {
    goto LABEL_37;
  }

LABEL_27:
  v15 = *(this + 34);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v5 & 8) == 0)
  {
    goto LABEL_38;
  }

LABEL_30:
  v17 = *(this + 35);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v5 & 0x40) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v19 = *(this + 38);
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_40;
  }

LABEL_34:
  v20 = *(this + 39);
LABEL_41:
  v21 = v3 ^ v2 ^ v4 ^ v6 ^ v7 ^ v8 ^ v11 ^ v12 ^ v13 ^ v14 ^ v16 ^ v18 ^ v19;
  v22 = v20 ^ PBHashBytes();
  return v21 ^ v22 ^ PBHashBytes();
}

void *CMMsl::DoTEstimatorHandSwing::makeCandidateA(void *this)
{
  if (!this[13])
  {
    operator new();
  }

  return this;
}

void *CMMsl::DoTEstimatorHandSwing::makeCandidateB(void *this)
{
  if (!this[14])
  {
    operator new();
  }

  return this;
}

double CMMsl::DoTEstimatorWithTNB::DoTEstimatorWithTNB(CMMsl::DoTEstimatorWithTNB *this)
{
  *this = off_10041DE08;
  *(this + 51) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  return result;
}

{
  *this = off_10041DE08;
  *(this + 51) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  return result;
}

void CMMsl::DoTEstimatorWithTNB::~DoTEstimatorWithTNB(CMMsl::DoTEstimatorWithTNB *this)
{
  *this = off_10041DE08;
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    *(this + 20) = v3;
    operator delete(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    *(this + 17) = v4;
    operator delete(v4);
  }

  v5 = *(this + 13);
  if (v5)
  {
    *(this + 14) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    *(this + 11) = v6;
    operator delete(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    *(this + 8) = v7;
    operator delete(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    *(this + 2) = v9;
    operator delete(v9);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::DoTEstimatorWithTNB::~DoTEstimatorWithTNB(this);

  operator delete();
}

CMMsl::DoTEstimatorWithTNB *CMMsl::DoTEstimatorWithTNB::DoTEstimatorWithTNB(CMMsl::DoTEstimatorWithTNB *this, const CMMsl::DoTEstimatorWithTNB *a2)
{
  *this = off_10041DE08;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 56) = 0u;
  v5 = (this + 56);
  *(this + 104) = 0u;
  v6 = (this + 104);
  *(this + 152) = 0u;
  v7 = (this + 152);
  *(this + 51) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 168) = 0u;
  if (*(a2 + 204))
  {
    v8 = *(a2 + 23);
    *(this + 204) = 1;
    *(this + 23) = v8;
  }

  if (this != a2)
  {
    sub_100035D1C(v7, *(a2 + 19), *(a2 + 20), (*(a2 + 20) - *(a2 + 19)) >> 2);
    sub_100035D1C(this + 10, *(a2 + 10), *(a2 + 11), (*(a2 + 11) - *(a2 + 10)) >> 2);
    sub_100035D1C(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    sub_100035D1C(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v9 = *(a2 + 204);
  if ((v9 & 2) != 0)
  {
    v13 = *(a2 + 48);
    *(this + 204) |= 2u;
    *(this + 48) = v13;
    v9 = *(a2 + 204);
    if ((v9 & 8) == 0)
    {
LABEL_7:
      if ((v9 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a2 + 204) & 8) == 0)
  {
    goto LABEL_7;
  }

  v14 = *(a2 + 200);
  *(this + 204) |= 8u;
  *(this + 200) = v14;
  v9 = *(a2 + 204);
  if ((v9 & 0x10) == 0)
  {
LABEL_8:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_21:
  v15 = *(a2 + 201);
  *(this + 204) |= 0x10u;
  *(this + 201) = v15;
  if ((*(a2 + 204) & 0x20) != 0)
  {
LABEL_9:
    v10 = *(a2 + 202);
    *(this + 204) |= 0x20u;
    *(this + 202) = v10;
  }

LABEL_10:
  if (*(a2 + 22))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_100035D1C(v6, *(a2 + 13), *(a2 + 14), (*(a2 + 14) - *(a2 + 13)) >> 2);
  }

  if ((*(a2 + 204) & 4) != 0)
  {
    v11 = *(a2 + 49);
    *(this + 204) |= 4u;
    *(this + 49) = v11;
  }

  if (this != a2)
  {
    sub_100035D1C(this + 16, *(a2 + 16), *(a2 + 17), (*(a2 + 17) - *(a2 + 16)) >> 2);
    sub_100035D1C(v5, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 2);
  }

  return this;
}

CMMsl *CMMsl::DoTEstimatorWithTNB::operator=(CMMsl *a1, const CMMsl::DoTEstimatorWithTNB *a2)
{
  if (a1 != a2)
  {
    CMMsl::DoTEstimatorWithTNB::DoTEstimatorWithTNB(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::DoTEstimatorWithTNB::~DoTEstimatorWithTNB(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::DoTEstimatorWithTNB *a2, CMMsl::DoTEstimatorWithTNB *a3)
{
  v3 = *(this + 51);
  *(this + 51) = *(a2 + 51);
  *(a2 + 51) = v3;
  v4 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  v5 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v5;
  v6 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v6;
  v7 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v7;
  v8 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v9;
  v10 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v12;
  v13 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v13;
  v14 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v14;
  v15 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v15;
  v16 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v16;
  LODWORD(v4) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v4;
  LOBYTE(v16) = *(this + 200);
  *(this + 200) = *(a2 + 200);
  *(a2 + 200) = v16;
  LOBYTE(v16) = *(this + 201);
  *(this + 201) = *(a2 + 201);
  *(a2 + 201) = v16;
  LOBYTE(v16) = *(this + 202);
  *(this + 202) = *(a2 + 202);
  *(a2 + 202) = v16;
  v17 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v17;
  v18 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v18;
  v19 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v19;
  v20 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v20;
  result = *(this + 49);
  *(this + 49) = *(a2 + 49);
  *(a2 + 49) = result;
  v22 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v22;
  v23 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v23;
  v24 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v24;
  v25 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v25;
  v26 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v26;
  v27 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v27;
  return result;
}

uint64_t CMMsl::DoTEstimatorWithTNB::DoTEstimatorWithTNB(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DE08;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 204) = *(a2 + 204);
  *(a2 + 204) = 0;
  *(a1 + 184) = *(a2 + 184);
  sub_1002A2DD0(a1 + 152, (a2 + 152));
  sub_1002A2DD0(a1 + 80, (a2 + 80));
  sub_1002A2DD0(v4, (a2 + 8));
  sub_1002A2DD0(a1 + 32, (a2 + 32));
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 202) = *(a2 + 202);
  v5 = *(a2 + 176);
  *(a2 + 176) = 0;
  v6 = *(a1 + 176);
  *(a1 + 176) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_1002A2DD0(a1 + 104, (a2 + 104));
  *(a1 + 196) = *(a2 + 196);
  sub_1002A2DD0(a1 + 128, (a2 + 128));
  sub_1002A2DD0(a1 + 56, (a2 + 56));
  return a1;
}

CMMsl *CMMsl::DoTEstimatorWithTNB::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::DoTEstimatorWithTNB::DoTEstimatorWithTNB(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::DoTEstimatorWithTNB::~DoTEstimatorWithTNB(v5);
  }

  return a1;
}

uint64_t CMMsl::DoTEstimatorWithTNB::formatText(CMMsl::DoTEstimatorWithTNB *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 22);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "TNBFrame");
  }

  if ((*(this + 204) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "dotQuality", *(this + 48));
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "dotVector", v8);
  }

  if ((*(this + 204) & 8) != 0)
  {
    PB::TextFormatter::format(a2, "fusingGaze", *(this + 200));
  }

  v9 = *(this + 4);
  v10 = *(this + 5);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "gazeVector", v11);
  }

  v12 = *(this + 204);
  if ((v12 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "hasStep", *(this + 201));
    v12 = *(this + 204);
  }

  if ((v12 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "hasValidTNBFrame", *(this + 202));
  }

  v13 = *(this + 7);
  v14 = *(this + 8);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(a2, "lpfInertialRotationRate", v15);
  }

  v16 = *(this + 10);
  v17 = *(this + 11);
  while (v16 != v17)
  {
    v18 = *v16++;
    PB::TextFormatter::format(a2, "lpfInertialUserAccel", v18);
  }

  v19 = *(this + 13);
  v20 = *(this + 14);
  while (v19 != v20)
  {
    v21 = *v19++;
    PB::TextFormatter::format(a2, "rawDoTVector", v21);
  }

  v22 = *(this + 16);
  v23 = *(this + 17);
  while (v22 != v23)
  {
    v24 = *v22++;
    PB::TextFormatter::format(a2, "rawInertialRotationRate", v24);
  }

  v25 = *(this + 19);
  v26 = *(this + 20);
  while (v25 != v26)
  {
    v27 = *v25++;
    PB::TextFormatter::format(a2, "rawInertialUserAccel", v27);
  }

  v28 = *(this + 204);
  if ((v28 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "speed", *(this + 49));
    v28 = *(this + 204);
  }

  if (v28)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 23));
  }

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DoTEstimatorWithTNB::readFrom(CMMsl::DoTEstimatorWithTNB *this, PB::Reader *a2)
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
        break;
      }

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

LABEL_21:
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_290;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 204) |= 1u;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
          {
            goto LABEL_282;
          }

          *(this + 23) = *(*a2 + v23);
          v24 = *(a2 + 1) + 8;
          goto LABEL_285;
        case 2u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v94 = *(a2 + 1);
            v95 = *(a2 + 2);
            while (v94 < v95 && (*(a2 + 24) & 1) == 0)
            {
              v97 = *(this + 20);
              v96 = *(this + 21);
              if (v97 >= v96)
              {
                v99 = *(this + 19);
                v100 = v97 - v99;
                v101 = (v97 - v99) >> 2;
                v102 = v101 + 1;
                if ((v101 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v103 = v96 - v99;
                if (v103 >> 1 > v102)
                {
                  v102 = v103 >> 1;
                }

                if (v103 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v104 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v104 = v102;
                }

                if (v104)
                {
                  sub_10002290C(this + 152, v104);
                }

                v105 = (v97 - v99) >> 2;
                v106 = (4 * v101);
                v107 = (4 * v101 - 4 * v105);
                *v106 = 0;
                v98 = v106 + 1;
                memcpy(v107, v99, v100);
                v108 = *(this + 19);
                *(this + 19) = v107;
                *(this + 20) = v98;
                *(this + 21) = 0;
                if (v108)
                {
                  operator delete(v108);
                }
              }

              else
              {
                *v97 = 0;
                v98 = v97 + 4;
              }

              *(this + 20) = v98;
              v109 = *(a2 + 1);
              if (v109 > 0xFFFFFFFFFFFFFFFBLL || v109 + 4 > *(a2 + 2))
              {
                goto LABEL_177;
              }

              *(v98 - 1) = *(*a2 + v109);
              v95 = *(a2 + 2);
              v94 = *(a2 + 1) + 4;
              *(a2 + 1) = v94;
            }

            goto LABEL_178;
          }

          v161 = *(this + 20);
          v160 = *(this + 21);
          if (v161 >= v160)
          {
            v190 = *(this + 19);
            v191 = v161 - v190;
            v192 = (v161 - v190) >> 2;
            v193 = v192 + 1;
            if ((v192 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v194 = v160 - v190;
            if (v194 >> 1 > v193)
            {
              v193 = v194 >> 1;
            }

            if (v194 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v195 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v195 = v193;
            }

            if (v195)
            {
              sub_10002290C(this + 152, v195);
            }

            v224 = (v161 - v190) >> 2;
            v225 = (4 * v192);
            v226 = (4 * v192 - 4 * v224);
            *v225 = 0;
            v153 = v225 + 1;
            memcpy(v226, v190, v191);
            v227 = *(this + 19);
            *(this + 19) = v226;
            *(this + 20) = v153;
            *(this + 21) = 0;
            if (v227)
            {
              operator delete(v227);
            }
          }

          else
          {
            *v161 = 0;
            v153 = v161 + 4;
          }

          *(this + 20) = v153;
          goto LABEL_280;
        case 3u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v58 = *(a2 + 1);
            v59 = *(a2 + 2);
            while (v58 < v59 && (*(a2 + 24) & 1) == 0)
            {
              v61 = *(this + 11);
              v60 = *(this + 12);
              if (v61 >= v60)
              {
                v63 = *(this + 10);
                v64 = v61 - v63;
                v65 = (v61 - v63) >> 2;
                v66 = v65 + 1;
                if ((v65 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v67 = v60 - v63;
                if (v67 >> 1 > v66)
                {
                  v66 = v67 >> 1;
                }

                if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v68 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v68 = v66;
                }

                if (v68)
                {
                  sub_10002290C(this + 80, v68);
                }

                v69 = (v61 - v63) >> 2;
                v70 = (4 * v65);
                v71 = (4 * v65 - 4 * v69);
                *v70 = 0;
                v62 = v70 + 1;
                memcpy(v71, v63, v64);
                v72 = *(this + 10);
                *(this + 10) = v71;
                *(this + 11) = v62;
                *(this + 12) = 0;
                if (v72)
                {
                  operator delete(v72);
                }
              }

              else
              {
                *v61 = 0;
                v62 = v61 + 4;
              }

              *(this + 11) = v62;
              v73 = *(a2 + 1);
              if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(a2 + 2))
              {
                goto LABEL_177;
              }

              *(v62 - 1) = *(*a2 + v73);
              v59 = *(a2 + 2);
              v58 = *(a2 + 1) + 4;
              *(a2 + 1) = v58;
            }

            goto LABEL_178;
          }

          v157 = *(this + 11);
          v156 = *(this + 12);
          if (v157 >= v156)
          {
            v178 = *(this + 10);
            v179 = v157 - v178;
            v180 = (v157 - v178) >> 2;
            v181 = v180 + 1;
            if ((v180 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v182 = v156 - v178;
            if (v182 >> 1 > v181)
            {
              v181 = v182 >> 1;
            }

            if (v182 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v183 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v183 = v181;
            }

            if (v183)
            {
              sub_10002290C(this + 80, v183);
            }

            v216 = (v157 - v178) >> 2;
            v217 = (4 * v180);
            v218 = (4 * v180 - 4 * v216);
            *v217 = 0;
            v153 = v217 + 1;
            memcpy(v218, v178, v179);
            v219 = *(this + 10);
            *(this + 10) = v218;
            *(this + 11) = v153;
            *(this + 12) = 0;
            if (v219)
            {
              operator delete(v219);
            }
          }

          else
          {
            *v157 = 0;
            v153 = v157 + 4;
          }

          *(this + 11) = v153;
          goto LABEL_280;
        case 4u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v74 = *(a2 + 1);
            v75 = *(a2 + 2);
            while (v74 < v75 && (*(a2 + 24) & 1) == 0)
            {
              v77 = *(this + 2);
              v76 = *(this + 3);
              if (v77 >= v76)
              {
                v79 = *(this + 1);
                v80 = v77 - v79;
                v81 = (v77 - v79) >> 2;
                v82 = v81 + 1;
                if ((v81 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v83 = v76 - v79;
                if (v83 >> 1 > v82)
                {
                  v82 = v83 >> 1;
                }

                if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v84 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = v82;
                }

                if (v84)
                {
                  sub_10002290C(this + 8, v84);
                }

                v85 = (v77 - v79) >> 2;
                v86 = (4 * v81);
                v87 = (4 * v81 - 4 * v85);
                *v86 = 0;
                v78 = v86 + 1;
                memcpy(v87, v79, v80);
                v88 = *(this + 1);
                *(this + 1) = v87;
                *(this + 2) = v78;
                *(this + 3) = 0;
                if (v88)
                {
                  operator delete(v88);
                }
              }

              else
              {
                *v77 = 0;
                v78 = v77 + 4;
              }

              *(this + 2) = v78;
              v89 = *(a2 + 1);
              if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(a2 + 2))
              {
                goto LABEL_177;
              }

              *(v78 - 1) = *(*a2 + v89);
              v75 = *(a2 + 2);
              v74 = *(a2 + 1) + 4;
              *(a2 + 1) = v74;
            }

            goto LABEL_178;
          }

          v159 = *(this + 2);
          v158 = *(this + 3);
          if (v159 >= v158)
          {
            v184 = *(this + 1);
            v185 = v159 - v184;
            v186 = (v159 - v184) >> 2;
            v187 = v186 + 1;
            if ((v186 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v188 = v158 - v184;
            if (v188 >> 1 > v187)
            {
              v187 = v188 >> 1;
            }

            if (v188 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v189 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v189 = v187;
            }

            if (v189)
            {
              sub_10002290C(this + 8, v189);
            }

            v220 = (v159 - v184) >> 2;
            v221 = (4 * v186);
            v222 = (4 * v186 - 4 * v220);
            *v221 = 0;
            v153 = v221 + 1;
            memcpy(v222, v184, v185);
            v223 = *(this + 1);
            *(this + 1) = v222;
            *(this + 2) = v153;
            *(this + 3) = 0;
            if (v223)
            {
              operator delete(v223);
            }
          }

          else
          {
            *v159 = 0;
            v153 = v159 + 4;
          }

          *(this + 2) = v153;
          goto LABEL_280;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v26 = *(a2 + 1);
            v27 = *(a2 + 2);
            while (v26 < v27 && (*(a2 + 24) & 1) == 0)
            {
              v29 = *(this + 5);
              v28 = *(this + 6);
              if (v29 >= v28)
              {
                v31 = *(this + 4);
                v32 = v29 - v31;
                v33 = (v29 - v31) >> 2;
                v34 = v33 + 1;
                if ((v33 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v35 = v28 - v31;
                if (v35 >> 1 > v34)
                {
                  v34 = v35 >> 1;
                }

                if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v36 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v36 = v34;
                }

                if (v36)
                {
                  sub_10002290C(this + 32, v36);
                }

                v37 = (v29 - v31) >> 2;
                v38 = (4 * v33);
                v39 = (4 * v33 - 4 * v37);
                *v38 = 0;
                v30 = v38 + 1;
                memcpy(v39, v31, v32);
                v40 = *(this + 4);
                *(this + 4) = v39;
                *(this + 5) = v30;
                *(this + 6) = 0;
                if (v40)
                {
                  operator delete(v40);
                }
              }

              else
              {
                *v29 = 0;
                v30 = v29 + 4;
              }

              *(this + 5) = v30;
              v41 = *(a2 + 1);
              if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(a2 + 2))
              {
                goto LABEL_177;
              }

              *(v30 - 1) = *(*a2 + v41);
              v27 = *(a2 + 2);
              v26 = *(a2 + 1) + 4;
              *(a2 + 1) = v26;
            }

            goto LABEL_178;
          }

          v152 = *(this + 5);
          v151 = *(this + 6);
          if (v152 >= v151)
          {
            v166 = *(this + 4);
            v167 = v152 - v166;
            v168 = (v152 - v166) >> 2;
            v169 = v168 + 1;
            if ((v168 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v170 = v151 - v166;
            if (v170 >> 1 > v169)
            {
              v169 = v170 >> 1;
            }

            if (v170 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v171 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v171 = v169;
            }

            if (v171)
            {
              sub_10002290C(this + 32, v171);
            }

            v208 = (v152 - v166) >> 2;
            v209 = (4 * v168);
            v210 = (4 * v168 - 4 * v208);
            *v209 = 0;
            v153 = v209 + 1;
            memcpy(v210, v166, v167);
            v211 = *(this + 4);
            *(this + 4) = v210;
            *(this + 5) = v153;
            *(this + 6) = 0;
            if (v211)
            {
              operator delete(v211);
            }
          }

          else
          {
            *v152 = 0;
            v153 = v152 + 4;
          }

          *(this + 5) = v153;
          goto LABEL_280;
        case 6u:
          *(this + 204) |= 2u;
          v110 = *(a2 + 1);
          if (v110 > 0xFFFFFFFFFFFFFFFBLL || v110 + 4 > *(a2 + 2))
          {
            goto LABEL_282;
          }

          *(this + 48) = *(*a2 + v110);
          goto LABEL_284;
        case 7u:
          *(this + 204) |= 8u;
          v127 = *(a2 + 1);
          if (v127 >= *(a2 + 2))
          {
            v130 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v128 = v127 + 1;
            v129 = *(*a2 + v127);
            *(a2 + 1) = v128;
            v130 = v129 != 0;
          }

          *(this + 200) = v130;
          goto LABEL_286;
        case 8u:
          *(this + 204) |= 0x10u;
          v90 = *(a2 + 1);
          if (v90 >= *(a2 + 2))
          {
            v93 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v91 = v90 + 1;
            v92 = *(*a2 + v90);
            *(a2 + 1) = v91;
            v93 = v92 != 0;
          }

          *(this + 201) = v93;
          goto LABEL_286;
        case 9u:
          *(this + 204) |= 0x20u;
          v147 = *(a2 + 1);
          if (v147 >= *(a2 + 2))
          {
            v150 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v148 = v147 + 1;
            v149 = *(*a2 + v147);
            *(a2 + 1) = v148;
            v150 = v149 != 0;
          }

          *(this + 202) = v150;
          goto LABEL_286;
        case 0xAu:
          operator new();
        case 0xBu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_292:
              v237 = 0;
              return v237 & 1;
            }

            v131 = *(a2 + 1);
            v132 = *(a2 + 2);
            while (v131 < v132 && (*(a2 + 24) & 1) == 0)
            {
              v134 = *(this + 14);
              v133 = *(this + 15);
              if (v134 >= v133)
              {
                v136 = *(this + 13);
                v137 = v134 - v136;
                v138 = (v134 - v136) >> 2;
                v139 = v138 + 1;
                if ((v138 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v140 = v133 - v136;
                if (v140 >> 1 > v139)
                {
                  v139 = v140 >> 1;
                }

                if (v140 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v141 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v141 = v139;
                }

                if (v141)
                {
                  sub_10002290C(this + 104, v141);
                }

                v142 = (v134 - v136) >> 2;
                v143 = (4 * v138);
                v144 = (4 * v138 - 4 * v142);
                *v143 = 0;
                v135 = v143 + 1;
                memcpy(v144, v136, v137);
                v145 = *(this + 13);
                *(this + 13) = v144;
                *(this + 14) = v135;
                *(this + 15) = 0;
                if (v145)
                {
                  operator delete(v145);
                }
              }

              else
              {
                *v134 = 0;
                v135 = v134 + 4;
              }

              *(this + 14) = v135;
              v146 = *(a2 + 1);
              if (v146 > 0xFFFFFFFFFFFFFFFBLL || v146 + 4 > *(a2 + 2))
              {
                goto LABEL_177;
              }

              *(v135 - 1) = *(*a2 + v146);
              v132 = *(a2 + 2);
              v131 = *(a2 + 1) + 4;
              *(a2 + 1) = v131;
            }

LABEL_178:
            PB::Reader::recallMark();
          }

          else
          {
            v165 = *(this + 14);
            v164 = *(this + 15);
            if (v165 >= v164)
            {
              v202 = *(this + 13);
              v203 = v165 - v202;
              v204 = (v165 - v202) >> 2;
              v205 = v204 + 1;
              if ((v204 + 1) >> 62)
              {
LABEL_293:
                sub_10000CD24();
              }

              v206 = v164 - v202;
              if (v206 >> 1 > v205)
              {
                v205 = v206 >> 1;
              }

              if (v206 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v207 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v207 = v205;
              }

              if (v207)
              {
                sub_10002290C(this + 104, v207);
              }

              v232 = (v165 - v202) >> 2;
              v233 = (4 * v204);
              v234 = (4 * v204 - 4 * v232);
              *v233 = 0;
              v153 = v233 + 1;
              memcpy(v234, v202, v203);
              v235 = *(this + 13);
              *(this + 13) = v234;
              *(this + 14) = v153;
              *(this + 15) = 0;
              if (v235)
              {
                operator delete(v235);
              }
            }

            else
            {
              *v165 = 0;
              v153 = v165 + 4;
            }

            *(this + 14) = v153;
LABEL_280:
            v236 = *(a2 + 1);
            if (v236 <= 0xFFFFFFFFFFFFFFFBLL && v236 + 4 <= *(a2 + 2))
            {
              *(v153 - 1) = *(*a2 + v236);
LABEL_284:
              v24 = *(a2 + 1) + 4;
LABEL_285:
              *(a2 + 1) = v24;
            }

            else
            {
LABEL_282:
              *(a2 + 24) = 1;
            }
          }

LABEL_286:
          v2 = *(a2 + 1);
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_290;
          }

          break;
        case 0xCu:
          *(this + 204) |= 4u;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
          {
            goto LABEL_282;
          }

          *(this + 49) = *(*a2 + v25);
          goto LABEL_284;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v42 = *(a2 + 1);
            v43 = *(a2 + 2);
            while (v42 < v43 && (*(a2 + 24) & 1) == 0)
            {
              v45 = *(this + 17);
              v44 = *(this + 18);
              if (v45 >= v44)
              {
                v47 = *(this + 16);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v51 = v44 - v47;
                if (v51 >> 1 > v50)
                {
                  v50 = v51 >> 1;
                }

                if (v51 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v52 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v50;
                }

                if (v52)
                {
                  sub_10002290C(this + 128, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(this + 16);
                *(this + 16) = v55;
                *(this + 17) = v46;
                *(this + 18) = 0;
                if (v56)
                {
                  operator delete(v56);
                }
              }

              else
              {
                *v45 = 0;
                v46 = v45 + 4;
              }

              *(this + 17) = v46;
              v57 = *(a2 + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(a2 + 2))
              {
                goto LABEL_177;
              }

              *(v46 - 1) = *(*a2 + v57);
              v43 = *(a2 + 2);
              v42 = *(a2 + 1) + 4;
              *(a2 + 1) = v42;
            }

            goto LABEL_178;
          }

          v155 = *(this + 17);
          v154 = *(this + 18);
          if (v155 >= v154)
          {
            v172 = *(this + 16);
            v173 = v155 - v172;
            v174 = (v155 - v172) >> 2;
            v175 = v174 + 1;
            if ((v174 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v176 = v154 - v172;
            if (v176 >> 1 > v175)
            {
              v175 = v176 >> 1;
            }

            if (v176 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v177 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v177 = v175;
            }

            if (v177)
            {
              sub_10002290C(this + 128, v177);
            }

            v212 = (v155 - v172) >> 2;
            v213 = (4 * v174);
            v214 = (4 * v174 - 4 * v212);
            *v213 = 0;
            v153 = v213 + 1;
            memcpy(v214, v172, v173);
            v215 = *(this + 16);
            *(this + 16) = v214;
            *(this + 17) = v153;
            *(this + 18) = 0;
            if (v215)
            {
              operator delete(v215);
            }
          }

          else
          {
            *v155 = 0;
            v153 = v155 + 4;
          }

          *(this + 17) = v153;
          goto LABEL_280;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_292;
            }

            v111 = *(a2 + 1);
            v112 = *(a2 + 2);
            while (v111 < v112 && (*(a2 + 24) & 1) == 0)
            {
              v114 = *(this + 8);
              v113 = *(this + 9);
              if (v114 >= v113)
              {
                v116 = *(this + 7);
                v117 = v114 - v116;
                v118 = (v114 - v116) >> 2;
                v119 = v118 + 1;
                if ((v118 + 1) >> 62)
                {
                  goto LABEL_293;
                }

                v120 = v113 - v116;
                if (v120 >> 1 > v119)
                {
                  v119 = v120 >> 1;
                }

                if (v120 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v121 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v121 = v119;
                }

                if (v121)
                {
                  sub_10002290C(this + 56, v121);
                }

                v122 = (v114 - v116) >> 2;
                v123 = (4 * v118);
                v124 = (4 * v118 - 4 * v122);
                *v123 = 0;
                v115 = v123 + 1;
                memcpy(v124, v116, v117);
                v125 = *(this + 7);
                *(this + 7) = v124;
                *(this + 8) = v115;
                *(this + 9) = 0;
                if (v125)
                {
                  operator delete(v125);
                }
              }

              else
              {
                *v114 = 0;
                v115 = v114 + 4;
              }

              *(this + 8) = v115;
              v126 = *(a2 + 1);
              if (v126 > 0xFFFFFFFFFFFFFFFBLL || v126 + 4 > *(a2 + 2))
              {
LABEL_177:
                *(a2 + 24) = 1;
                goto LABEL_178;
              }

              *(v115 - 1) = *(*a2 + v126);
              v112 = *(a2 + 2);
              v111 = *(a2 + 1) + 4;
              *(a2 + 1) = v111;
            }

            goto LABEL_178;
          }

          v163 = *(this + 8);
          v162 = *(this + 9);
          if (v163 >= v162)
          {
            v196 = *(this + 7);
            v197 = v163 - v196;
            v198 = (v163 - v196) >> 2;
            v199 = v198 + 1;
            if ((v198 + 1) >> 62)
            {
              goto LABEL_293;
            }

            v200 = v162 - v196;
            if (v200 >> 1 > v199)
            {
              v199 = v200 >> 1;
            }

            if (v200 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v201 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v201 = v199;
            }

            if (v201)
            {
              sub_10002290C(this + 56, v201);
            }

            v228 = (v163 - v196) >> 2;
            v229 = (4 * v198);
            v230 = (4 * v198 - 4 * v228);
            *v229 = 0;
            v153 = v229 + 1;
            memcpy(v230, v196, v197);
            v231 = *(this + 7);
            *(this + 7) = v230;
            *(this + 8) = v153;
            *(this + 9) = 0;
            if (v231)
            {
              operator delete(v231);
            }
          }

          else
          {
            *v163 = 0;
            v153 = v163 + 4;
          }

          *(this + 8) = v153;
          goto LABEL_280;
        default:
          if ((PB::Reader::skip(a2, v10 >> 3, v22, 0) & 1) == 0)
          {
            goto LABEL_292;
          }

          goto LABEL_286;
      }
    }

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
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
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

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_290:
  v237 = v4 ^ 1;
  return v237 & 1;
}

uint64_t CMMsl::DoTEstimatorWithTNB::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 204))
  {
    this = PB::Writer::write(a2, *(this + 184), 1u);
  }

  v4 = *(v3 + 152);
  v5 = *(v3 + 160);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6, 2u);
  }

  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9, 3u);
  }

  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12, 4u);
  }

  v13 = *(v3 + 32);
  v14 = *(v3 + 40);
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15, 5u);
  }

  v16 = *(v3 + 204);
  if ((v16 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 192), 6u);
    v16 = *(v3 + 204);
    if ((v16 & 8) == 0)
    {
LABEL_17:
      if ((v16 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }
  }

  else if ((*(v3 + 204) & 8) == 0)
  {
    goto LABEL_17;
  }

  this = PB::Writer::write(a2, *(v3 + 200), 7u);
  v16 = *(v3 + 204);
  if ((v16 & 0x10) == 0)
  {
LABEL_18:
    if ((v16 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 201), 8u);
  if ((*(v3 + 204) & 0x20) != 0)
  {
LABEL_19:
    this = PB::Writer::write(a2, *(v3 + 202), 9u);
  }

LABEL_20:
  v17 = *(v3 + 176);
  if (v17)
  {
    this = PB::Writer::writeSubmessage(a2, v17, 0xAu);
  }

  v18 = *(v3 + 104);
  v19 = *(v3 + 112);
  while (v18 != v19)
  {
    v20 = *v18++;
    this = PB::Writer::write(a2, v20, 0xBu);
  }

  if ((*(v3 + 204) & 4) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 196), 0xCu);
  }

  v21 = *(v3 + 128);
  v22 = *(v3 + 136);
  while (v21 != v22)
  {
    v23 = *v21++;
    this = PB::Writer::write(a2, v23, 0xDu);
  }

  v25 = *(v3 + 56);
  v24 = *(v3 + 64);
  while (v25 != v24)
  {
    v26 = *v25++;
    this = PB::Writer::write(a2, v26, 0xEu);
  }

  return this;
}

BOOL CMMsl::DoTEstimatorWithTNB::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 204))
  {
    if ((*(a2 + 204) & 1) == 0 || *(a1 + 184) != *(a2 + 184))
    {
      return 0;
    }
  }

  else if (*(a2 + 204))
  {
    return 0;
  }

  v3 = *(a1 + 152);
  v2 = *(a1 + 160);
  v4 = *(a2 + 152);
  if (v2 - v3 != *(a2 + 160) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  v8 = *(a2 + 80);
  if (v6 - v7 != *(a2 + 88) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    if (*v7 != *v8)
    {
      return 0;
    }

    ++v7;
    ++v8;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  v11 = *(a2 + 8);
  if (v9 - v10 != *(a2 + 16) - v11)
  {
    return 0;
  }

  while (v10 != v9)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
  }

  v13 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = *(a2 + 32);
  if (v12 - v13 != *(a2 + 40) - v14)
  {
    return 0;
  }

  while (v13 != v12)
  {
    if (*v13 != *v14)
    {
      return 0;
    }

    ++v13;
    ++v14;
  }

  if ((*(a1 + 204) & 2) != 0)
  {
    if ((*(a2 + 204) & 2) == 0 || *(a1 + 192) != *(a2 + 192))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 204) & 8) != 0)
  {
    if ((*(a2 + 204) & 8) == 0 || *(a1 + 200) != *(a2 + 200))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 8) != 0)
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x10) != 0)
  {
    if ((*(a2 + 204) & 0x10) == 0 || *(a1 + 201) != *(a2 + 201))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 204) & 0x20) != 0)
  {
    if ((*(a2 + 204) & 0x20) == 0 || *(a1 + 202) != *(a2 + 202))
    {
      return 0;
    }
  }

  else if ((*(a2 + 204) & 0x20) != 0)
  {
    return 0;
  }

  v29 = *(a2 + 204);
  v30 = *(a1 + 204);
  v15 = *(a1 + 176);
  v16 = *(a2 + 176);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_48;
    }

    return 0;
  }

  if (!v16 || !CMMsl::AccelTNBFrame::operator==(v15, v16))
  {
    return 0;
  }

LABEL_48:
  v18 = *(a1 + 104);
  v17 = *(a1 + 112);
  v19 = *(a2 + 104);
  if (v17 - v18 != *(a2 + 112) - v19)
  {
    return 0;
  }

  while (v18 != v17)
  {
    if (*v18 != *v19)
    {
      return 0;
    }

    ++v18;
    ++v19;
  }

  if ((v30 & 4) != 0)
  {
    if ((v29 & 4) == 0 || *(a1 + 196) != *(a2 + 196))
    {
      return 0;
    }
  }

  else if ((v29 & 4) != 0)
  {
    return 0;
  }

  v21 = *(a1 + 128);
  v20 = *(a1 + 136);
  v22 = *(a2 + 128);
  if (v20 - v21 != *(a2 + 136) - v22)
  {
    return 0;
  }

  while (v21 != v20)
  {
    if (*v21 != *v22)
    {
      return 0;
    }

    ++v21;
    ++v22;
  }

  v24 = *(a1 + 56);
  v23 = *(a1 + 64);
  v25 = *(a2 + 56);
  if (v23 - v24 != *(a2 + 64) - v25)
  {
    return 0;
  }

  if (v24 == v23)
  {
    return 1;
  }

  v26 = v24 + 4;
  do
  {
    v27 = *v25++;
    result = *(v26 - 4) == v27;
    v28 = *(v26 - 4) != v27 || v26 == v23;
    v26 += 4;
  }

  while (!v28);
  return result;
}

uint64_t CMMsl::DoTEstimatorWithTNB::hash_value(CMMsl::DoTEstimatorWithTNB *this)
{
  if (*(this + 204))
  {
    v2 = *(this + 23);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    v19 = v2;
  }

  else
  {
    v19 = 0.0;
  }

  v3 = PBHashBytes();
  v4 = PBHashBytes();
  v5 = PBHashBytes();
  v6 = PBHashBytes();
  if ((*(this + 204) & 2) != 0)
  {
    v11 = *(this + 48);
    if (v11 == 0.0)
    {
      v7 = 0;
    }

    else
    {
      v7 = LODWORD(v11);
    }

    if ((*(this + 204) & 8) != 0)
    {
LABEL_8:
      v8 = *(this + 200);
      if ((*(this + 204) & 0x10) != 0)
      {
        goto LABEL_9;
      }

LABEL_16:
      v9 = 0;
      if ((*(this + 204) & 0x20) != 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v7 = 0;
    if ((*(this + 204) & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  v8 = 0;
  if ((*(this + 204) & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v9 = *(this + 201);
  if ((*(this + 204) & 0x20) != 0)
  {
LABEL_10:
    v10 = *(this + 202);
    goto LABEL_18;
  }

LABEL_17:
  v10 = 0;
LABEL_18:
  v12 = *(this + 22);
  if (v12)
  {
    v13 = CMMsl::AccelTNBFrame::hash_value(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = PBHashBytes();
  if ((*(this + 204) & 4) != 0)
  {
    v16 = *(this + 49);
    v15 = LODWORD(v16);
    if (v16 == 0.0)
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = v3 ^ *&v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ PBHashBytes();
  return v17 ^ PBHashBytes();
}

void *CMMsl::DoTEstimatorWithTNB::makeTNBFrame(void *this)
{
  if (!this[22])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::DopplerDebugRecord::DopplerDebugRecord(uint64_t this)
{
  *this = off_10041DE40;
  *(this + 120) = 0;
  return this;
}

{
  *this = off_10041DE40;
  *(this + 120) = 0;
  return this;
}

void CMMsl::DopplerDebugRecord::~DopplerDebugRecord(CMMsl::DopplerDebugRecord *this)
{
  PB::Base::~Base(this);

  operator delete();
}

float CMMsl::DopplerDebugRecord::DopplerDebugRecord(CMMsl::DopplerDebugRecord *this, const CMMsl::DopplerDebugRecord *a2)
{
  *this = off_10041DE40;
  *(this + 30) = 0;
  v2 = *(a2 + 30);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 30) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 30);
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x1000000) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 27);
    v3 |= 0x1000000u;
    *(this + 30) = v3;
    *(this + 27) = v4;
    v2 = *(a2 + 30);
  }

LABEL_6:
  if ((v2 & 0x200000) != 0)
  {
    LODWORD(v4) = *(a2 + 24);
    v3 |= 0x200000u;
    *(this + 30) = v3;
    *(this + 24) = v4;
    v2 = *(a2 + 30);
    if ((v2 & 0x400000) == 0)
    {
LABEL_8:
      if ((v2 & 0x800000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x400000) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 25);
  v3 |= 0x400000u;
  *(this + 30) = v3;
  *(this + 25) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x800000) == 0)
  {
LABEL_9:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(v4) = *(a2 + 26);
  v3 |= 0x800000u;
  *(this + 30) = v3;
  *(this + 26) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x100000) == 0)
  {
LABEL_10:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(v4) = *(a2 + 23);
  v3 |= 0x100000u;
  *(this + 30) = v3;
  *(this + 23) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 28);
  v3 |= 0x2000000u;
  *(this + 30) = v3;
  *(this + 28) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 30) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(v4) = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 30) = v3;
  *(this + 8) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(v4) = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 30) = v3;
  *(this + 7) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x20000) == 0)
  {
LABEL_15:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(v4) = *(a2 + 20);
  v3 |= 0x20000u;
  *(this + 30) = v3;
  *(this + 20) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x10000) == 0)
  {
LABEL_16:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v5 = *(a2 + 19);
  v3 |= 0x10000u;
  *(this + 30) = v3;
  *(this + 19) = v5;
  v2 = *(a2 + 30);
  if ((v2 & 0x4000) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  LODWORD(v4) = *(a2 + 17);
  v3 |= 0x4000u;
  *(this + 30) = v3;
  *(this + 17) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x8000) == 0)
  {
LABEL_18:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(v4) = *(a2 + 18);
  v3 |= 0x8000u;
  *(this + 30) = v3;
  *(this + 18) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x2000) == 0)
  {
LABEL_19:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(v4) = *(a2 + 16);
  v3 |= 0x2000u;
  *(this + 30) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x800) == 0)
  {
LABEL_20:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(v4) = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 30) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x1000) == 0)
  {
LABEL_21:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v6 = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 30) = v3;
  *(this + 15) = v6;
  v2 = *(a2 + 30);
  if ((v2 & 0x200) == 0)
  {
LABEL_22:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  LODWORD(v4) = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 30) = v3;
  *(this + 12) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x400) == 0)
  {
LABEL_23:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  LODWORD(v4) = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 30) = v3;
  *(this + 13) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x100) == 0)
  {
LABEL_24:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  LODWORD(v4) = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 30) = v3;
  *(this + 11) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x40) == 0)
  {
LABEL_25:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 30) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x80) == 0)
  {
LABEL_26:
    if ((v2 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  v7 = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 30) = v3;
  *(this + 10) = v7;
  v2 = *(a2 + 30);
  if ((v2 & 2) == 0)
  {
LABEL_27:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  LODWORD(v4) = *(a2 + 4);
  v3 |= 2u;
  *(this + 30) = v3;
  *(this + 4) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  LODWORD(v4) = *(a2 + 29);
  v3 |= 0x4000000u;
  *(this + 30) = v3;
  *(this + 29) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 0x80000) == 0)
  {
LABEL_29:
    if ((v2 & 4) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  LODWORD(v4) = *(a2 + 22);
  v3 |= 0x80000u;
  *(this + 30) = v3;
  *(this + 22) = v4;
  v2 = *(a2 + 30);
  if ((v2 & 4) == 0)
  {
LABEL_30:
    if ((v2 & 0x40000) == 0)
    {
      return *&v4;
    }

    goto LABEL_56;
  }

LABEL_55:
  v8 = *(a2 + 5);
  v3 |= 4u;
  *(this + 30) = v3;
  *(this + 5) = v8;
  if ((*(a2 + 30) & 0x40000) == 0)
  {
    return *&v4;
  }

LABEL_56:
  LODWORD(v4) = *(a2 + 21);
  *(this + 30) = v3 | 0x40000;
  *(this + 21) = v4;
  return *&v4;
}

CMMsl *CMMsl::DopplerDebugRecord::operator=(CMMsl *a1, const CMMsl::DopplerDebugRecord *a2)
{
  if (a1 != a2)
  {
    CMMsl::DopplerDebugRecord::DopplerDebugRecord(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::DopplerDebugRecord *a2, CMMsl::DopplerDebugRecord *a3)
{
  v3 = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v4;
  LODWORD(v4) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v4;
  LODWORD(v4) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v4;
  LODWORD(v4) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v4;
  LODWORD(v4) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  LODWORD(v4) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v4;
  v5 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v5;
  LODWORD(v4) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v4;
  LODWORD(v4) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v4;
  LODWORD(v4) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v4;
  v6 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v6;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v4;
  LODWORD(v4) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v4;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  result = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = result;
  return result;
}

float CMMsl::DopplerDebugRecord::DopplerDebugRecord(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DE40;
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 84);
  *(a1 + 84) = result;
  return result;
}

CMMsl *CMMsl::DopplerDebugRecord::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::DopplerDebugRecord::DopplerDebugRecord(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::DopplerDebugRecord::formatText(CMMsl::DopplerDebugRecord *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 30);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "biasFraction", *(this + 4));
    v5 = *(this + 30);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "cookie", *(this + 5));
  v5 = *(this + 30);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "currentRange", *(this + 6));
  v5 = *(this + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "distanceReleaseThreshold", *(this + 7));
  v5 = *(this + 30);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "distanceTriggerThreshold", *(this + 8));
  v5 = *(this + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "habcBiasCorrectedDenominator", *(this + 9));
  v5 = *(this + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "habcBiasCorrectedNumFramesCaptured", *(this + 10));
  v5 = *(this + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "habcBiasCorrectedNumerator", *(this + 11));
  v5 = *(this + 30);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "habcBiasCorrectedRateBaseline", *(this + 12));
  v5 = *(this + 30);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "habcBiasCorrectedRateBaselineSigma", *(this + 13));
  v5 = *(this + 30);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "habcDenominator", *(this + 14));
  v5 = *(this + 30);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "habcNumFramesCaptured", *(this + 15));
  v5 = *(this + 30);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "habcNumerator", *(this + 16));
  v5 = *(this + 30);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "habcRateBaseline", *(this + 17));
  v5 = *(this + 30);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "habcRateBaselineSigma", *(this + 18));
  v5 = *(this + 30);
  if ((v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "numBaselineCaptureFrames", *(this + 19));
  v5 = *(this + 30);
  if ((v5 & 0x20000) == 0)
  {
LABEL_18:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "numEffSpads", *(this + 20));
  v5 = *(this + 30);
  if ((v5 & 0x40000) == 0)
  {
LABEL_19:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "rateScalingFactor", *(this + 21));
  v5 = *(this + 30);
  if ((v5 & 0x80000) == 0)
  {
LABEL_20:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "reflectanceEstimate", *(this + 22));
  v5 = *(this + 30);
  if ((v5 & 0x100000) == 0)
  {
LABEL_21:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "signalDeltaNCounts", *(this + 23));
  v5 = *(this + 30);
  if ((v5 & 0x200000) == 0)
  {
LABEL_22:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "signalRateBaselineKcpss", *(this + 24));
  v5 = *(this + 30);
  if ((v5 & 0x400000) == 0)
  {
LABEL_23:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "signalRateBaselineSigmaKcpss", *(this + 25));
  v5 = *(this + 30);
  if ((v5 & 0x800000) == 0)
  {
LABEL_24:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "signalRateNoiseMarginKcpss", *(this + 26));
  v5 = *(this + 30);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_25:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "signalRateSigmaKcpss", *(this + 27));
  v5 = *(this + 30);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "signalRateTriggerThresholdNCounts", *(this + 28));
  v5 = *(this + 30);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v5 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "smudgeTimeoutCountdownMs", *(this + 29));
  if (*(this + 30))
  {
LABEL_28:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_29:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DopplerDebugRecord::readFrom(CMMsl::DopplerDebugRecord *this, PB::Reader *a2)
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
        break;
      }

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

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_181;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 30) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_156;
        case 2u:
          *(this + 30) |= 0x1000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 27) = *(*a2 + v2);
          goto LABEL_155;
        case 3u:
          *(this + 30) |= 0x200000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 24) = *(*a2 + v2);
          goto LABEL_155;
        case 4u:
          *(this + 30) |= 0x400000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 25) = *(*a2 + v2);
          goto LABEL_155;
        case 5u:
          *(this + 30) |= 0x800000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 26) = *(*a2 + v2);
          goto LABEL_155;
        case 6u:
          *(this + 30) |= 0x100000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 23) = *(*a2 + v2);
          goto LABEL_155;
        case 7u:
          *(this + 30) |= 0x2000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 28) = *(*a2 + v2);
          goto LABEL_155;
        case 8u:
          *(this + 30) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_155;
        case 9u:
          *(this + 30) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_155;
        case 0xAu:
          *(this + 30) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_155;
        case 0xBu:
          *(this + 30) |= 0x20000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 20) = *(*a2 + v2);
          goto LABEL_155;
        case 0xCu:
          *(this + 30) |= 0x10000u;
          v30 = *(a2 + 1);
          v2 = *(a2 + 2);
          v31 = *a2;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v61 = 0;
            v62 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(a2 + 1);
            }

            v63 = v2 - v30;
            v64 = (v31 + v30);
            v65 = v30 + 1;
            while (1)
            {
              if (!v63)
              {
                LODWORD(v34) = 0;
                *(a2 + 24) = 1;
                goto LABEL_171;
              }

              v66 = v65;
              v67 = *v64;
              *(a2 + 1) = v66;
              v34 |= (v67 & 0x7F) << v61;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              --v63;
              ++v64;
              v65 = v66 + 1;
              v14 = v62++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_170:
                v2 = v66;
                goto LABEL_171;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_170;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(a2 + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_171:
          *(this + 19) = v34;
          goto LABEL_157;
        case 0xDu:
          *(this + 30) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_155;
        case 0xEu:
          *(this + 30) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 18) = *(*a2 + v2);
          goto LABEL_155;
        case 0xFu:
          *(this + 30) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_155;
        case 0x10u:
          *(this + 30) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_155;
        case 0x11u:
          *(this + 30) |= 0x1000u;
          v22 = *(a2 + 1);
          v2 = *(a2 + 2);
          v23 = *a2;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v54 = 0;
            v55 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(a2 + 1);
            }

            v56 = v2 - v22;
            v57 = (v23 + v22);
            v58 = v22 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v26) = 0;
                *(a2 + 24) = 1;
                goto LABEL_167;
              }

              v59 = v58;
              v60 = *v57;
              *(a2 + 1) = v59;
              v26 |= (v60 & 0x7F) << v54;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              --v56;
              ++v57;
              v58 = v59 + 1;
              v14 = v55++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_166:
                v2 = v59;
                goto LABEL_167;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_166;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_167;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_167:
          *(this + 15) = v26;
          goto LABEL_157;
        case 0x12u:
          *(this + 30) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_155;
        case 0x13u:
          *(this + 30) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_155;
        case 0x14u:
          *(this + 30) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_155;
        case 0x15u:
          *(this + 30) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_155;
        case 0x16u:
          *(this + 30) |= 0x80u;
          v46 = *(a2 + 1);
          v2 = *(a2 + 2);
          v47 = *a2;
          if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v2)
          {
            v75 = 0;
            v76 = 0;
            v50 = 0;
            if (v2 <= v46)
            {
              v2 = *(a2 + 1);
            }

            v77 = v2 - v46;
            v78 = (v47 + v46);
            v79 = v46 + 1;
            while (1)
            {
              if (!v77)
              {
                LODWORD(v50) = 0;
                *(a2 + 24) = 1;
                goto LABEL_179;
              }

              v80 = v79;
              v81 = *v78;
              *(a2 + 1) = v80;
              v50 |= (v81 & 0x7F) << v75;
              if ((v81 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              --v77;
              ++v78;
              v79 = v80 + 1;
              v14 = v76++ > 8;
              if (v14)
              {
                LODWORD(v50) = 0;
LABEL_178:
                v2 = v80;
                goto LABEL_179;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v50) = 0;
            }

            goto LABEL_178;
          }

          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = (v47 + v46);
          v52 = v46 + 1;
          do
          {
            v2 = v52;
            *(a2 + 1) = v52;
            v53 = *v51++;
            v50 |= (v53 & 0x7F) << v48;
            if ((v53 & 0x80) == 0)
            {
              goto LABEL_179;
            }

            v48 += 7;
            ++v52;
            v14 = v49++ > 8;
          }

          while (!v14);
          LODWORD(v50) = 0;
LABEL_179:
          *(this + 10) = v50;
          goto LABEL_157;
        case 0x17u:
          *(this + 30) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_155;
        case 0x18u:
          *(this + 30) |= 0x4000000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 29) = *(*a2 + v2);
          goto LABEL_155;
        case 0x19u:
          *(this + 30) |= 0x80000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_119;
          }

          *(this + 22) = *(*a2 + v2);
          goto LABEL_155;
        case 0x1Au:
          *(this + 30) |= 4u;
          v38 = *(a2 + 1);
          v2 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v68 = 0;
            v69 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(a2 + 1);
            }

            v70 = v2 - v38;
            v71 = (v39 + v38);
            v72 = v38 + 1;
            while (1)
            {
              if (!v70)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_175;
              }

              v73 = v72;
              v74 = *v71;
              *(a2 + 1) = v73;
              v42 |= (v74 & 0x7F) << v68;
              if ((v74 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              --v70;
              ++v71;
              v72 = v73 + 1;
              v14 = v69++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_174:
                v2 = v73;
                goto LABEL_175;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_174;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(a2 + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_175;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_175:
          *(this + 5) = v42;
          goto LABEL_157;
        case 0x1Bu:
          *(this + 30) |= 0x40000u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
          {
            *(this + 21) = *(*a2 + v2);
LABEL_155:
            v2 = *(a2 + 1) + 4;
LABEL_156:
            *(a2 + 1) = v2;
          }

          else
          {
LABEL_119:
            *(a2 + 24) = 1;
          }

          goto LABEL_157;
        default:
          if (!PB::Reader::skip(a2, v10 >> 3, v10 & 7, 0))
          {
            v82 = 0;
            return v82 & 1;
          }

          v2 = *(a2 + 1);
LABEL_157:
          v3 = *(a2 + 2);
          v4 = *(a2 + 24);
          if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
          {
            goto LABEL_181;
          }

          break;
      }
    }

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
    while (v18)
    {
      v21 = *v19;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        if (v4)
        {
          v10 = 0;
        }

        goto LABEL_21;
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

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_181:
  v82 = v4 ^ 1;
  return v82 & 1;
}

uint64_t CMMsl::DopplerDebugRecord::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 120);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8), 1u);
    v4 = *(v3 + 120);
    if ((v4 & 0x1000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x1000000) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 108), 2u);
  v4 = *(v3 + 120);
  if ((v4 & 0x200000) == 0)
  {
LABEL_4:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::write(a2, *(v3 + 96), 3u);
  v4 = *(v3 + 120);
  if ((v4 & 0x400000) == 0)
  {
LABEL_5:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2, *(v3 + 100), 4u);
  v4 = *(v3 + 120);
  if ((v4 & 0x800000) == 0)
  {
LABEL_6:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = PB::Writer::write(a2, *(v3 + 104), 5u);
  v4 = *(v3 + 120);
  if ((v4 & 0x100000) == 0)
  {
LABEL_7:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = PB::Writer::write(a2, *(v3 + 92), 6u);
  v4 = *(v3 + 120);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = PB::Writer::write(a2, *(v3 + 112), 7u);
  v4 = *(v3 + 120);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = PB::Writer::write(a2, *(v3 + 24), 8u);
  v4 = *(v3 + 120);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = PB::Writer::write(a2, *(v3 + 32), 9u);
  v4 = *(v3 + 120);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = PB::Writer::write(a2, *(v3 + 28), 0xAu);
  v4 = *(v3 + 120);
  if ((v4 & 0x20000) == 0)
  {
LABEL_12:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = PB::Writer::write(a2, *(v3 + 80), 0xBu);
  v4 = *(v3 + 120);
  if ((v4 & 0x10000) == 0)
  {
LABEL_13:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = PB::Writer::writeVarInt(a2, *(v3 + 76), 0xCu);
  v4 = *(v3 + 120);
  if ((v4 & 0x4000) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = PB::Writer::write(a2, *(v3 + 68), 0xDu);
  v4 = *(v3 + 120);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  this = PB::Writer::write(a2, *(v3 + 72), 0xEu);
  v4 = *(v3 + 120);
  if ((v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  this = PB::Writer::write(a2, *(v3 + 64), 0xFu);
  v4 = *(v3 + 120);
  if ((v4 & 0x800) == 0)
  {
LABEL_17:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  this = PB::Writer::write(a2, *(v3 + 56), 0x10u);
  v4 = *(v3 + 120);
  if ((v4 & 0x1000) == 0)
  {
LABEL_18:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  this = PB::Writer::writeVarInt(a2, *(v3 + 60), 0x11u);
  v4 = *(v3 + 120);
  if ((v4 & 0x200) == 0)
  {
LABEL_19:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  this = PB::Writer::write(a2, *(v3 + 48), 0x12u);
  v4 = *(v3 + 120);
  if ((v4 & 0x400) == 0)
  {
LABEL_20:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  this = PB::Writer::write(a2, *(v3 + 52), 0x13u);
  v4 = *(v3 + 120);
  if ((v4 & 0x100) == 0)
  {
LABEL_21:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  this = PB::Writer::write(a2, *(v3 + 44), 0x14u);
  v4 = *(v3 + 120);
  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::write(a2, *(v3 + 36), 0x15u);
  v4 = *(v3 + 120);
  if ((v4 & 0x80) == 0)
  {
LABEL_23:
    if ((v4 & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::writeVarInt(a2, *(v3 + 40), 0x16u);
  v4 = *(v3 + 120);
  if ((v4 & 2) == 0)
  {
LABEL_24:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2, *(v3 + 16), 0x17u);
  v4 = *(v3 + 120);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 116), 0x18u);
  v4 = *(v3 + 120);
  if ((v4 & 0x80000) == 0)
  {
LABEL_26:
    if ((v4 & 4) == 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    this = PB::Writer::writeVarInt(a2, *(v3 + 20), 0x1Au);
    if ((*(v3 + 120) & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_55;
  }

LABEL_53:
  this = PB::Writer::write(a2, *(v3 + 88), 0x19u);
  v4 = *(v3 + 120);
  if ((v4 & 4) != 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  if ((v4 & 0x40000) == 0)
  {
    return this;
  }

LABEL_55:
  v5 = *(v3 + 84);

  return PB::Writer::write(a2, v5, 0x1Bu);
}

BOOL CMMsl::DopplerDebugRecord::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  v3 = *(a2 + 120);
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

  if ((v2 & 0x1000000) != 0)
  {
    if ((v3 & 0x1000000) == 0 || *(a1 + 108) != *(a2 + 108))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200000) != 0)
  {
    if ((v3 & 0x200000) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400000) != 0)
  {
    if ((v3 & 0x400000) == 0 || *(a1 + 100) != *(a2 + 100))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800000) != 0)
  {
    if ((v3 & 0x800000) == 0 || *(a1 + 104) != *(a2 + 104))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100000) != 0)
  {
    if ((v3 & 0x100000) == 0 || *(a1 + 92) != *(a2 + 92))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000000) != 0)
  {
    if ((v3 & 0x2000000) == 0 || *(a1 + 112) != *(a2 + 112))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000000) != 0)
  {
    return 0;
  }

  if ((v2 & 8) != 0)
  {
    if ((v3 & 8) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((v3 & 8) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20) != 0)
  {
    if ((v3 & 0x20) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10) != 0)
  {
    if ((v3 & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10) != 0)
  {
    return 0;
  }

  if ((v2 & 0x20000) != 0)
  {
    if ((v3 & 0x20000) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v3 & 0x20000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x10000) != 0)
  {
    if ((v3 & 0x10000) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((v3 & 0x10000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x4000) != 0)
  {
    if ((v3 & 0x4000) == 0 || *(a1 + 68) != *(a2 + 68))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x8000) != 0)
  {
    if ((v3 & 0x8000) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x2000) != 0)
  {
    if ((v3 & 0x2000) == 0 || *(a1 + 64) != *(a2 + 64))
    {
      return 0;
    }
  }

  else if ((v3 & 0x2000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x800) != 0)
  {
    if ((v3 & 0x800) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v3 & 0x800) != 0)
  {
    return 0;
  }

  if ((v2 & 0x1000) != 0)
  {
    if ((v3 & 0x1000) == 0 || *(a1 + 60) != *(a2 + 60))
    {
      return 0;
    }
  }

  else if ((v3 & 0x1000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x200) != 0)
  {
    if ((v3 & 0x200) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((v3 & 0x200) != 0)
  {
    return 0;
  }

  if ((v2 & 0x400) != 0)
  {
    if ((v3 & 0x400) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v3 & 0x400) != 0)
  {
    return 0;
  }

  if ((v2 & 0x100) != 0)
  {
    if ((v3 & 0x100) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v3 & 0x100) != 0)
  {
    return 0;
  }

  if ((v2 & 0x40) != 0)
  {
    if ((v3 & 0x40) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v3 & 0x40) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    if ((v3 & 0x80) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80) != 0)
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

  if ((v2 & 0x4000000) != 0)
  {
    if ((v3 & 0x4000000) == 0 || *(a1 + 116) != *(a2 + 116))
    {
      return 0;
    }
  }

  else if ((v3 & 0x4000000) != 0)
  {
    return 0;
  }

  if ((v2 & 0x80000) != 0)
  {
    if ((v3 & 0x80000) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v3 & 0x80000) != 0)
  {
    return 0;
  }

  if ((v2 & 4) != 0)
  {
    if ((v3 & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((v3 & 4) != 0)
  {
    return 0;
  }

  v4 = (v3 & 0x40000) == 0;
  if ((v2 & 0x40000) != 0)
  {
    return (v3 & 0x40000) != 0 && *(a1 + 84) == *(a2 + 84);
  }

  return v4;
}

uint64_t CMMsl::DopplerDebugRecord::hash_value(CMMsl::DopplerDebugRecord *this)
{
  v1 = *(this + 30);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_3;
    }

LABEL_49:
    v4 = 0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_6;
    }

LABEL_50:
    v6 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_9;
    }

LABEL_51:
    v8 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_12;
    }

LABEL_52:
    v10 = 0;
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_15;
    }

LABEL_53:
    v12 = 0;
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_18;
    }

LABEL_54:
    v14 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_21;
    }

LABEL_55:
    v16 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_24;
    }

LABEL_56:
    v18 = 0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_27;
    }

LABEL_57:
    v20 = 0;
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_30;
    }

LABEL_58:
    v22 = 0;
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_59;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_3:
  v3 = *(this + 27);
  v4 = LODWORD(v3);
  if (v3 == 0.0)
  {
    v4 = 0;
  }

  if ((v1 & 0x200000) == 0)
  {
    goto LABEL_50;
  }

LABEL_6:
  v5 = *(this + 24);
  v6 = LODWORD(v5);
  if (v5 == 0.0)
  {
    v6 = 0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_51;
  }

LABEL_9:
  v7 = *(this + 25);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_52;
  }

LABEL_12:
  v9 = *(this + 26);
  v10 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v10 = 0;
  }

  if ((v1 & 0x100000) == 0)
  {
    goto LABEL_53;
  }

LABEL_15:
  v11 = *(this + 23);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_54;
  }

LABEL_18:
  v13 = *(this + 28);
  v14 = LODWORD(v13);
  if (v13 == 0.0)
  {
    v14 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_55;
  }

LABEL_21:
  v15 = *(this + 6);
  v16 = LODWORD(v15);
  if (v15 == 0.0)
  {
    v16 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_56;
  }

LABEL_24:
  v17 = *(this + 8);
  v18 = LODWORD(v17);
  if (v17 == 0.0)
  {
    v18 = 0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_57;
  }

LABEL_27:
  v19 = *(this + 7);
  v20 = LODWORD(v19);
  if (v19 == 0.0)
  {
    v20 = 0;
  }

  if ((v1 & 0x20000) == 0)
  {
    goto LABEL_58;
  }

LABEL_30:
  v21 = *(this + 20);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x10000) != 0)
  {
LABEL_33:
    v23 = *(this + 19);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_34;
    }

LABEL_60:
    v25 = 0;
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_37;
    }

LABEL_61:
    v27 = 0;
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_62;
  }

LABEL_59:
  v23 = 0;
  if ((v1 & 0x4000) == 0)
  {
    goto LABEL_60;
  }

LABEL_34:
  v24 = *(this + 17);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  if ((v1 & 0x8000) == 0)
  {
    goto LABEL_61;
  }

LABEL_37:
  v26 = *(this + 18);
  v27 = LODWORD(v26);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  if ((v1 & 0x2000) != 0)
  {
LABEL_40:
    v28 = *(this + 16);
    v29 = LODWORD(v28);
    if (v28 == 0.0)
    {
      v29 = 0;
    }

    if ((v1 & 0x800) != 0)
    {
      goto LABEL_43;
    }

LABEL_63:
    v31 = 0;
    goto LABEL_64;
  }

LABEL_62:
  v29 = 0;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_63;
  }

LABEL_43:
  v30 = *(this + 14);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

LABEL_64:
  if ((v1 & 0x1000) == 0)
  {
    v32 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_66;
    }

LABEL_93:
    v34 = 0;
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_69;
    }

LABEL_94:
    v36 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_72;
    }

LABEL_95:
    v38 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_75;
    }

LABEL_96:
    v40 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_78;
    }

    goto LABEL_97;
  }

  v32 = *(this + 15);
  if ((v1 & 0x200) == 0)
  {
    goto LABEL_93;
  }

LABEL_66:
  v33 = *(this + 12);
  v34 = LODWORD(v33);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  if ((v1 & 0x400) == 0)
  {
    goto LABEL_94;
  }

LABEL_69:
  v35 = *(this + 13);
  v36 = LODWORD(v35);
  if (v35 == 0.0)
  {
    v36 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_95;
  }

LABEL_72:
  v37 = *(this + 11);
  v38 = LODWORD(v37);
  if (v37 == 0.0)
  {
    v38 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_96;
  }

LABEL_75:
  v39 = *(this + 9);
  v40 = LODWORD(v39);
  if (v39 == 0.0)
  {
    v40 = 0;
  }

  if ((v1 & 0x80) != 0)
  {
LABEL_78:
    v41 = *(this + 10);
    if ((v1 & 2) != 0)
    {
      goto LABEL_79;
    }

LABEL_98:
    v43 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_82;
    }

LABEL_99:
    v45 = 0;
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_85;
    }

LABEL_100:
    v47 = 0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_88;
    }

    goto LABEL_101;
  }

LABEL_97:
  v41 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_98;
  }

LABEL_79:
  v42 = *(this + 4);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_99;
  }

LABEL_82:
  v44 = *(this + 29);
  v45 = LODWORD(v44);
  if (v44 == 0.0)
  {
    v45 = 0;
  }

  if ((v1 & 0x80000) == 0)
  {
    goto LABEL_100;
  }

LABEL_85:
  v46 = *(this + 22);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  if ((v1 & 4) != 0)
  {
LABEL_88:
    v48 = *(this + 5);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_89;
    }

LABEL_102:
    v50 = 0;
    return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v23 ^ v25 ^ v27 ^ v29 ^ v31 ^ v32 ^ v34 ^ v36 ^ v38 ^ v40 ^ v41 ^ v43 ^ v45 ^ v47 ^ v48 ^ v50;
  }

LABEL_101:
  v48 = 0;
  if ((v1 & 0x40000) == 0)
  {
    goto LABEL_102;
  }

LABEL_89:
  v49 = *(this + 21);
  v50 = LODWORD(v49);
  if (v49 == 0.0)
  {
    v50 = 0;
  }

  return v4 ^ *&v2 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v18 ^ v20 ^ v22 ^ v23 ^ v25 ^ v27 ^ v29 ^ v31 ^ v32 ^ v34 ^ v36 ^ v38 ^ v40 ^ v41 ^ v43 ^ v45 ^ v47 ^ v48 ^ v50;
}

uint64_t CMMsl::DopplerProximityEvent::DopplerProximityEvent(uint64_t this)
{
  *this = off_10041DE78;
  *(this + 24) = 0;
  return this;
}

{
  *this = off_10041DE78;
  *(this + 24) = 0;
  return this;
}

void CMMsl::DopplerProximityEvent::~DopplerProximityEvent(CMMsl::DopplerProximityEvent *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::DopplerProximityEvent::DopplerProximityEvent(uint64_t this, const CMMsl::DopplerProximityEvent *a2)
{
  *this = off_10041DE78;
  *(this + 24) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 24);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 24) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 5);
    v3 |= 4u;
    *(this + 24) = v3;
    *(this + 20) = v5;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 4);
    *(this + 24) = v3 | 2;
    *(this + 16) = v6;
  }

  return this;
}

uint64_t CMMsl::DopplerProximityEvent::operator=(uint64_t a1, const CMMsl::DopplerProximityEvent *a2)
{
  if (a1 != a2)
  {
    CMMsl::DopplerProximityEvent::DopplerProximityEvent(&v8, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::DopplerProximityEvent *a2, CMMsl::DopplerProximityEvent *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v6;
  return result;
}

double CMMsl::DopplerProximityEvent::DopplerProximityEvent(uint64_t a1, uint64_t a2)
{
  *a1 = off_10041DE78;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = off_10041DE78;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::DopplerProximityEvent::operator=(uint64_t a1, uint64_t a2)
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
    v8[0] = off_10041DE78;
    v9 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8[1] = v4;
    v8[2] = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::DopplerProximityEvent::formatText(CMMsl::DopplerProximityEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "proximityRawValue", *(this + 4));
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

  PB::TextFormatter::format(a2, "proximityState", *(this + 5));
  if (*(this + 24))
  {
LABEL_4:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_5:

  return PB::TextFormatter::endObject(a2);
}

uint64_t CMMsl::DopplerProximityEvent::readFrom(CMMsl::DopplerProximityEvent *this, PB::Reader *a2)
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
        *(this + 24) |= 2u;
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
        *(this + 4) = v35;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 4u;
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
        *(this + 5) = v27;
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

uint64_t CMMsl::DopplerProximityEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 24) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::writeVarInt(a2, *(v3 + 20), 2u);
    if ((*(v3 + 24) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8), 1u);
  v4 = *(v3 + 24);
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
  v5 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2, v5, 3u);
}

BOOL CMMsl::DopplerProximityEvent::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    if ((*(a2 + 24) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 24))
  {
    return 0;
  }

  if ((*(a1 + 24) & 4) != 0)
  {
    if ((*(a2 + 24) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 24) & 4) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 24) & 2) == 0;
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*(a2 + 24) & 2) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t CMMsl::DopplerProximityEvent::hash_value(CMMsl::DopplerProximityEvent *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 24) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v2 = 0;
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v3 = 0;
    return v2 ^ *&v1 ^ v3;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 24) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v2 = *(this + 5);
  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v3 = *(this + 4);
  return v2 ^ *&v1 ^ v3;
}

void *CMMsl::DopplerRawDataInput::DopplerRawDataInput(void *this)
{
  *this = off_10041DEB0;
  *(this + 164) = 0;
  return this;
}

{
  *this = off_10041DEB0;
  *(this + 164) = 0;
  return this;
}

void CMMsl::DopplerRawDataInput::~DopplerRawDataInput(CMMsl::DopplerRawDataInput *this)
{
  PB::Base::~Base(this);

  operator delete();
}

uint64_t CMMsl::DopplerRawDataInput::DopplerRawDataInput(uint64_t this, const CMMsl::DopplerRawDataInput *a2)
{
  *this = off_10041DEB0;
  *(this + 164) = 0;
  v2 = *(a2 + 164);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 164) = 16;
    *(this + 40) = v4;
    v2 = *(a2 + 164);
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 26);
    v3 |= 0x80000uLL;
    *(this + 164) = v3;
    *(this + 104) = v5;
    v2 = *(a2 + 164);
  }

LABEL_6:
  if ((v2 & 0x20000000) != 0)
  {
    v6 = *(a2 + 36);
    v3 |= 0x20000000uLL;
    *(this + 164) = v3;
    *(this + 144) = v6;
    v2 = *(a2 + 164);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_41;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 12);
  v3 |= 0x20uLL;
  *(this + 164) = v3;
  *(this + 48) = v7;
  v2 = *(a2 + 164);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  v8 = *(a2 + 37);
  v3 |= 0x40000000uLL;
  *(this + 164) = v3;
  *(this + 148) = v8;
  v2 = *(a2 + 164);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x100000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  v9 = *(a2 + 13);
  v3 |= 0x40uLL;
  *(this + 164) = v3;
  *(this + 52) = v9;
  v2 = *(a2 + 164);
  if ((v2 & 0x100000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  v10 = *(a2 + 39);
  v3 |= &_mh_execute_header;
  *(this + 164) = v3;
  *(this + 156) = v10;
  v2 = *(a2 + 164);
  if ((v2 & 0x2000) == 0)
  {
LABEL_12:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  v11 = *(a2 + 20);
  v3 |= 0x2000uLL;
  *(this + 164) = v3;
  *(this + 80) = v11;
  v2 = *(a2 + 164);
  if ((v2 & 0x1000) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  v12 = *(a2 + 19);
  v3 |= 0x1000uLL;
  *(this + 164) = v3;
  *(this + 76) = v12;
  v2 = *(a2 + 164);
  if ((v2 & 0x80) == 0)
  {
LABEL_14:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  v13 = *(a2 + 14);
  v3 |= 0x80uLL;
  *(this + 164) = v3;
  *(this + 56) = v13;
  v2 = *(a2 + 164);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_15:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  v14 = *(a2 + 40);
  v3 |= 0x200000000uLL;
  *(this + 164) = v3;
  *(this + 160) = v14;
  v2 = *(a2 + 164);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_16:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  v15 = *(a2 + 35);
  v3 |= 0x10000000uLL;
  *(this + 164) = v3;
  *(this + 140) = v15;
  v2 = *(a2 + 164);
  if ((v2 & 0x400) == 0)
  {
LABEL_17:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  v16 = *(a2 + 17);
  v3 |= 0x400uLL;
  *(this + 164) = v3;
  *(this + 68) = v16;
  v2 = *(a2 + 164);
  if ((v2 & 0x4000) == 0)
  {
LABEL_18:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  v17 = *(a2 + 21);
  v3 |= 0x4000uLL;
  *(this + 164) = v3;
  *(this + 84) = v17;
  v2 = *(a2 + 164);
  if ((v2 & 0x800000) == 0)
  {
LABEL_19:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  v18 = *(a2 + 30);
  v3 |= 0x800000uLL;
  *(this + 164) = v3;
  *(this + 120) = v18;
  v2 = *(a2 + 164);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  v19 = *(a2 + 32);
  v3 |= 0x2000000uLL;
  *(this + 164) = v3;
  *(this + 128) = v19;
  v2 = *(a2 + 164);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  v20 = *(a2 + 34);
  v3 |= 0x8000000uLL;
  *(this + 164) = v3;
  *(this + 136) = v20;
  v2 = *(a2 + 164);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  v21 = *(a2 + 33);
  v3 |= 0x4000000uLL;
  *(this + 164) = v3;
  *(this + 132) = v21;
  v2 = *(a2 + 164);
  if ((v2 & 0x400000) == 0)
  {
LABEL_23:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  v22 = *(a2 + 29);
  v3 |= 0x400000uLL;
  *(this + 164) = v3;
  *(this + 116) = v22;
  v2 = *(a2 + 164);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  v23 = *(a2 + 31);
  v3 |= 0x1000000uLL;
  *(this + 164) = v3;
  *(this + 124) = v23;
  v2 = *(a2 + 164);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  v24 = *(a2 + 38);
  v3 |= 0x80000000uLL;
  *(this + 164) = v3;
  *(this + 152) = v24;
  v2 = *(a2 + 164);
  if ((v2 & 0x8000) == 0)
  {
LABEL_26:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  v25 = *(a2 + 22);
  v3 |= 0x8000uLL;
  *(this + 164) = v3;
  *(this + 88) = v25;
  v2 = *(a2 + 164);
  if ((v2 & 0x100000) == 0)
  {
LABEL_27:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  v26 = *(a2 + 27);
  v3 |= 0x100000uLL;
  *(this + 164) = v3;
  *(this + 108) = v26;
  v2 = *(a2 + 164);
  if ((v2 & 0x100) == 0)
  {
LABEL_28:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  v27 = *(a2 + 15);
  v3 |= 0x100uLL;
  *(this + 164) = v3;
  *(this + 60) = v27;
  v2 = *(a2 + 164);
  if ((v2 & 0x200000) == 0)
  {
LABEL_29:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v28 = *(a2 + 28);
  v3 |= 0x200000uLL;
  *(this + 164) = v3;
  *(this + 112) = v28;
  v2 = *(a2 + 164);
  if ((v2 & 0x200) == 0)
  {
LABEL_30:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  v29 = *(a2 + 16);
  v3 |= 0x200uLL;
  *(this + 164) = v3;
  *(this + 64) = v29;
  v2 = *(a2 + 164);
  if ((v2 & 0x20000) == 0)
  {
LABEL_31:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  v30 = *(a2 + 24);
  v3 |= 0x20000uLL;
  *(this + 164) = v3;
  *(this + 96) = v30;
  v2 = *(a2 + 164);
  if ((v2 & 0x40000) == 0)
  {
LABEL_32:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  v31 = *(a2 + 25);
  v3 |= 0x40000uLL;
  *(this + 164) = v3;
  *(this + 100) = v31;
  v2 = *(a2 + 164);
  if ((v2 & 0x10000) == 0)
  {
LABEL_33:
    if ((v2 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  v32 = *(a2 + 23);
  v3 |= 0x10000uLL;
  *(this + 164) = v3;
  *(this + 92) = v32;
  v2 = *(a2 + 164);
  if ((v2 & 8) == 0)
  {
LABEL_34:
    if ((v2 & 4) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  v33 = *(a2 + 4);
  v3 |= 8uLL;
  *(this + 164) = v3;
  *(this + 32) = v33;
  v2 = *(a2 + 164);
  if ((v2 & 4) == 0)
  {
LABEL_35:
    if ((v2 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  v34 = *(a2 + 3);
  v3 |= 4uLL;
  *(this + 164) = v3;
  *(this + 24) = v34;
  v2 = *(a2 + 164);
  if ((v2 & 1) == 0)
  {
LABEL_36:
    if ((v2 & 2) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  v35 = *(a2 + 1);
  v3 |= 1uLL;
  *(this + 164) = v3;
  *(this + 8) = v35;
  v2 = *(a2 + 164);
  if ((v2 & 2) == 0)
  {
LABEL_37:
    if ((v2 & 0x800) == 0)
    {
      return this;
    }

LABEL_70:
    v37 = *(a2 + 18);
    *(this + 164) = v3 | 0x800;
    *(this + 72) = v37;
    return this;
  }

LABEL_69:
  v36 = *(a2 + 2);
  v3 |= 2uLL;
  *(this + 164) = v3;
  *(this + 16) = v36;
  if ((*(a2 + 164) & 0x800) != 0)
  {
    goto LABEL_70;
  }

  return this;
}