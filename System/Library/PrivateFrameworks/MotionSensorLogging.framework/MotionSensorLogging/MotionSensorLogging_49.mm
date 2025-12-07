void CMMsl::PostureSkeleton::~PostureSkeleton(CMMsl::PostureSkeleton *this)
{
  *this = &unk_286C22B88;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C22B88;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C22B88;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PostureSkeleton *CMMsl::PostureSkeleton::PostureSkeleton(CMMsl::PostureSkeleton *this, const CMMsl::PostureSkeleton *a2)
{
  *(this + 1) = 0;
  *this = &unk_286C22B88;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (*(a2 + 1) != *(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::PostureSkeleton::operator=(uint64_t a1, const CMMsl::PostureSkeleton *a2)
{
  if (a1 != a2)
  {
    CMMsl::PostureSkeleton::PostureSkeleton(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_286C22B88;
    v9 = &v7;
    sub_25AD28930(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::PostureSkeleton *a2, CMMsl::PostureSkeleton *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

void **CMMsl::PostureSkeleton::PostureSkeleton(void **a1, uint64_t a2)
{
  *a1 = &unk_286C22B88;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v4 = a1 + 1;
  sub_25AD289F0(a1 + 1);
  *v4 = *(a2 + 8);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_286C22B88;
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  v4 = a1 + 1;
  sub_25AD289F0(a1 + 1);
  *v4 = *(a2 + 8);
  a1[3] = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t CMMsl::PostureSkeleton::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C22B88;
    v10 = 0uLL;
    v11 = 0;
    sub_25AD289F0(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_286C22B88;
    sub_25AD28930(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::PostureSkeleton::formatText(CMMsl::PostureSkeleton *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "joint");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PostureSkeleton::readFrom(CMMsl::PostureSkeleton *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_27;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_27;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_27:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::PostureSkeleton::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL sub_25ACAE394(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a2 - a1 != a4 - a3)
  {
    return 0;
  }

  if (a1 == a2)
  {
    return 1;
  }

  v5 = a3;
  v6 = a1 + 8;
  do
  {
    v7 = *v5++;
    result = CMMsl::PostureJoint::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::PostureSkeleton::hash_value(CMMsl::PostureSkeleton *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= CMMsl::PostureJoint::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void CMMsl::PowerManagementUserActivity::~PowerManagementUserActivity(CMMsl::PowerManagementUserActivity *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PowerManagementUserActivity::PowerManagementUserActivity(uint64_t this, const CMMsl::PowerManagementUserActivity *a2)
{
  *this = &unk_286C22BC0;
  *(this + 16) = 0;
  if (*(a2 + 16))
  {
    v2 = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t CMMsl::PowerManagementUserActivity::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    v4 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16) & 1;
    v8 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7[0] = &unk_286C22BC0;
    v7[1] = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    *(a1 + 16) = v3;
    v9 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v8[0] = &unk_286C22BC0;
    v8[1] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PowerManagementUserActivity *a2, CMMsl::PowerManagementUserActivity *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

uint64_t CMMsl::PowerManagementUserActivity::formatText(CMMsl::PowerManagementUserActivity *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 16))
  {
    PB::TextFormatter::format(a2, "userActivity");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PowerManagementUserActivity::readFrom(CMMsl::PowerManagementUserActivity *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

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
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_47;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 16) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          v32 = (v23 + v22);
          v33 = v3 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_42;
            }

            v35 = v34;
            v36 = *v32;
            *(a2 + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v32;
            --v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_41;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_41:
          v3 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v3 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              v26 = 0;
              break;
            }
          }
        }

LABEL_42:
        *(this + 1) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_47;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::PowerManagementUserActivity::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 16))
  {
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::PowerManagementUserActivity::hash_value(CMMsl::PowerManagementUserActivity *this)
{
  if (*(this + 16))
  {
    return *(this + 1);
  }

  else
  {
    return 0;
  }
}

void CMMsl::PrecisionFindingDOTEstimate::~PrecisionFindingDOTEstimate(CMMsl::PrecisionFindingDOTEstimate *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PrecisionFindingDOTEstimate::PrecisionFindingDOTEstimate(CMMsl::PrecisionFindingDOTEstimate *this, const CMMsl::PrecisionFindingDOTEstimate *a2)
{
  *this = &unk_286C22BF8;
  *(this + 6) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 24) = 2;
    *(this + 2) = result;
    v2 = 3;
    if ((*(a2 + 24) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 24))
  {
LABEL_5:
    result = *(a2 + 1);
    *(this + 24) = v2;
    *(this + 1) = result;
  }

  return result;
}

uint64_t CMMsl::PrecisionFindingDOTEstimate::operator=(uint64_t a1, const CMMsl::PrecisionFindingDOTEstimate *a2)
{
  if (a1 != a2)
  {
    CMMsl::PrecisionFindingDOTEstimate::PrecisionFindingDOTEstimate(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PrecisionFindingDOTEstimate *a2, CMMsl::PrecisionFindingDOTEstimate *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::PrecisionFindingDOTEstimate::PrecisionFindingDOTEstimate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22BF8;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C22BF8;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::PrecisionFindingDOTEstimate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C22BF8;
    v3 = *(a2 + 24);
    *(a2 + 24) = 0;
    v9 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v5;
    v8 = v4;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::PrecisionFindingDOTEstimate::formatText(CMMsl::PrecisionFindingDOTEstimate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PrecisionFindingDOTEstimate::readFrom(CMMsl::PrecisionFindingDOTEstimate *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_18;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_24;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_35;
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_30:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_31;
      }

LABEL_24:
      if (!PB::Reader::skip(a2))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
LABEL_31:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    *(this + 24) |= 1u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 1) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::PrecisionFindingDOTEstimate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

uint64_t CMMsl::PrecisionFindingDOTEstimate::hash_value(CMMsl::PrecisionFindingDOTEstimate *this)
{
  if ((*(this + 24) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if (*(this + 24))
    {
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    return *&v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ *&v1;
}

void CMMsl::PrecisionFindingRangeFilter::~PrecisionFindingRangeFilter(CMMsl::PrecisionFindingRangeFilter *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PrecisionFindingRangeFilter::PrecisionFindingRangeFilter(uint64_t this, const CMMsl::PrecisionFindingRangeFilter *a2)
{
  *this = &unk_286C22C30;
  *(this + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 2);
    v3 = 2;
    *(this + 40) = 2;
    *(this + 16) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 40))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 40) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 24) = v6;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 0x10u;
  *(this + 40) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 40);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 7);
  v3 |= 8u;
  *(this + 40) = v3;
  *(this + 28) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 37);
    *(this + 40) = v3 | 0x40;
    *(this + 37) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 36);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 36) = v9;
  if ((*(a2 + 40) & 0x40) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::PrecisionFindingRangeFilter::operator=(uint64_t a1, const CMMsl::PrecisionFindingRangeFilter *a2)
{
  if (a1 != a2)
  {
    CMMsl::PrecisionFindingRangeFilter::PrecisionFindingRangeFilter(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    *&v4 = *(a1 + 28);
    *(a1 + 28) = v10;
    v10 = v4;
    LOBYTE(v5) = *(a1 + 36);
    *(a1 + 36) = v11;
    v11 = v5;
    LOBYTE(v5) = *(a1 + 37);
    *(a1 + 37) = v12;
    v12 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PrecisionFindingRangeFilter *a2, CMMsl::PrecisionFindingRangeFilter *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  LOBYTE(v6) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v6;
  LOBYTE(v6) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v6;
  return result;
}

float CMMsl::PrecisionFindingRangeFilter::PrecisionFindingRangeFilter(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22C30;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  return result;
}

{
  *a1 = &unk_286C22C30;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 28);
  *(a1 + 28) = result;
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  return result;
}

uint64_t CMMsl::PrecisionFindingRangeFilter::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_286C22C30;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 24);
    v5 = *(a2 + 36);
    v6 = *(a2 + 37);
    v17 = *(a1 + 40);
    v7 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    v12 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v4;
    v13 = v8;
    *&v7 = *(a1 + 28);
    v9 = *(a2 + 28);
    *(a1 + 40) = v3;
    *(a1 + 28) = v9;
    v14 = v7;
    LOBYTE(v3) = *(a1 + 36);
    *(a1 + 36) = v5;
    v15 = v3;
    LOBYTE(v3) = *(a1 + 37);
    *(a1 + 37) = v6;
    v16 = v3;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::PrecisionFindingRangeFilter::formatText(CMMsl::PrecisionFindingRangeFilter *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "inlierCount");
    v5 = *(this + 40);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 40) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "isOutlierCurrentSample");
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "isValidMeasurement");
  v5 = *(this + 40);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "range", *(this + 1));
  v5 = *(this + 40);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "rangeFrequency", *(this + 7));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "rangeShift", *(this + 8));
  if ((*(this + 40) & 2) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PrecisionFindingRangeFilter::readFrom(CMMsl::PrecisionFindingRangeFilter *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 40) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_52:
            *(a2 + 24) = 1;
            goto LABEL_73;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_66:
          v2 = *(a2 + 1) + 8;
LABEL_67:
          *(a2 + 1) = v2;
          goto LABEL_73;
        case 2:
          *(this + 40) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_66;
        case 3:
          *(this + 40) |= 4u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v35 = 0;
            v36 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v37 = (v24 + v23);
            v38 = v2 - v23;
            v39 = v23 + 1;
            while (1)
            {
              if (!v38)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_72;
              }

              v40 = v39;
              v41 = *v37;
              *(a2 + 1) = v40;
              v27 |= (v41 & 0x7F) << v35;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v37;
              --v38;
              v39 = v40 + 1;
              v14 = v36++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_71;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_71:
            v2 = v40;
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

LABEL_72:
          *(this + 6) = v27;
          goto LABEL_73;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 40) |= 0x20u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v34 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v33 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v34 = v33 != 0;
        }

        *(this + 36) = v34;
        goto LABEL_73;
      }

      if (v22 == 7)
      {
        *(this + 40) |= 0x40u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v32 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v31 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v32 = v31 != 0;
        }

        *(this + 37) = v32;
        goto LABEL_73;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 40) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_52;
        }

        *(this + 8) = *(*a2 + v2);
        goto LABEL_47;
      }

      if (v22 == 5)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_52;
        }

        *(this + 7) = *(*a2 + v2);
LABEL_47:
        v2 = *(a2 + 1) + 4;
        goto LABEL_67;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v42 = 0;
      return v42 & 1;
    }

    v2 = *(a2 + 1);
LABEL_73:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v42 = v4 ^ 1;
  return v42 & 1;
}

uint64_t CMMsl::PrecisionFindingRangeFilter::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 40);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 40);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2);
    if ((*(v3 + 40) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_15:

  return PB::Writer::write(a2);
}

uint64_t CMMsl::PrecisionFindingRangeFilter::hash_value(CMMsl::PrecisionFindingRangeFilter *this)
{
  if ((*(this + 40) & 2) == 0)
  {
    v1 = 0.0;
    if (*(this + 40))
    {
      goto LABEL_3;
    }

LABEL_18:
    v2 = 0.0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v1 = *(this + 2);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 40) & 4) != 0)
  {
LABEL_6:
    v3 = *(this + 6);
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_20:
    v5 = 0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v7 = 0;
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_13;
    }

LABEL_22:
    v8 = 0;
    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    v9 = 0;
    return *&v2 ^ *&v1 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9;
  }

LABEL_19:
  v3 = 0;
  if ((*(this + 40) & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_7:
  v4 = *(this + 8);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  v6 = *(this + 7);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 40) & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v8 = *(this + 36);
  if ((*(this + 40) & 0x40) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  v9 = *(this + 37);
  return *&v2 ^ *&v1 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9;
}

void CMMsl::PrecisionFindingSessionStartStop::~PrecisionFindingSessionStartStop(CMMsl::PrecisionFindingSessionStartStop *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PrecisionFindingSessionStartStop::PrecisionFindingSessionStartStop(uint64_t this, const CMMsl::PrecisionFindingSessionStartStop *a2)
{
  *this = &unk_286C22C68;
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
    v4 = *(a2 + 16);
    *(this + 20) = v2;
    *(this + 16) = v4;
  }

  return this;
}

uint64_t CMMsl::PrecisionFindingSessionStartStop::operator=(uint64_t a1, const CMMsl::PrecisionFindingSessionStartStop *a2)
{
  if (a1 != a2)
  {
    CMMsl::PrecisionFindingSessionStartStop::PrecisionFindingSessionStartStop(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    PB::Base::~Base(v6);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PrecisionFindingSessionStartStop *a2, CMMsl::PrecisionFindingSessionStartStop *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  return result;
}

double CMMsl::PrecisionFindingSessionStartStop::PrecisionFindingSessionStartStop(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22C68;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C22C68;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::PrecisionFindingSessionStartStop::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C22C68;
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v7;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v5;
    v10 = v3;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::PrecisionFindingSessionStartStop::formatText(CMMsl::PrecisionFindingSessionStartStop *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "isStart");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PrecisionFindingSessionStartStop::readFrom(CMMsl::PrecisionFindingSessionStartStop *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v23 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v22 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v23 = v22 != 0;
        }

        *(this + 16) = v23;
      }

      else if ((v10 >> 3) == 1)
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
LABEL_24:
        if (!PB::Reader::skip(a2))
        {
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_24;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t CMMsl::PrecisionFindingSessionStartStop::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {

    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t CMMsl::PrecisionFindingSessionStartStop::hash_value(CMMsl::PrecisionFindingSessionStartStop *this)
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
  v2 = *(this + 16);
  return v2 ^ *&v1;
}

void CMMsl::PrecisionFindingState::~PrecisionFindingState(CMMsl::PrecisionFindingState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PrecisionFindingState::PrecisionFindingState(CMMsl::PrecisionFindingState *this, const CMMsl::PrecisionFindingState *a2)
{
  *this = &unk_286C22CA0;
  *(this + 23) = 0;
  v2 = *(a2 + 46);
  if ((v2 & 0x40) != 0)
  {
    result = *(a2 + 7);
    v3 = 64;
    *(this + 46) = 64;
    *(this + 7) = result;
    v2 = *(a2 + 46);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (v2)
  {
LABEL_5:
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 46) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 46);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 46) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 46);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 46) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 46);
  if ((v2 & 8) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 46) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 46);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 46) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 46);
  if ((v2 & 0x80) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 46) = v3;
  *(this + 8) = result;
  v2 = *(a2 + 46);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 46) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 46);
  if ((v2 & 0x800) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v5 = *(a2 + 88);
  v3 |= 0x800u;
  *(this + 46) = v3;
  *(this + 88) = v5;
  v2 = *(a2 + 46);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v6 = *(a2 + 21);
  v3 |= 0x400u;
  *(this + 46) = v3;
  *(this + 21) = v6;
  v2 = *(a2 + 46);
  if ((v2 & 0x200) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  LODWORD(result) = *(a2 + 20);
  v3 |= 0x200u;
  *(this + 46) = v3;
  *(this + 20) = LODWORD(result);
  v2 = *(a2 + 46);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_28:
    result = *(a2 + 6);
    *(this + 46) = v3 | 0x20;
    *(this + 6) = result;
    return result;
  }

LABEL_27:
  v7 = *(a2 + 89);
  v3 |= 0x1000u;
  *(this + 46) = v3;
  *(this + 89) = v7;
  if ((*(a2 + 46) & 0x20) != 0)
  {
    goto LABEL_28;
  }

  return result;
}

CMMsl *CMMsl::PrecisionFindingState::operator=(CMMsl *a1, const CMMsl::PrecisionFindingState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PrecisionFindingState::PrecisionFindingState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PrecisionFindingState *a2, CMMsl::PrecisionFindingState *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  LOBYTE(v3) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v3;
  v12 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v12;
  LODWORD(v11) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v11;
  LOBYTE(v12) = *(this + 89);
  *(this + 89) = *(a2 + 89);
  *(a2 + 89) = v12;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

double CMMsl::PrecisionFindingState::PrecisionFindingState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22CA0;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 89) = *(a2 + 89);
  result = *(a2 + 48);
  *(a1 + 48) = result;
  return result;
}

CMMsl *CMMsl::PrecisionFindingState::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::PrecisionFindingState::PrecisionFindingState(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::PrecisionFindingState::formatText(CMMsl::PrecisionFindingState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 46);
  if ((v5 & 0x200) != 0)
  {
    PB::TextFormatter::format(a2, "distanceFromParticleFilter", *(this + 20));
    v5 = *(this + 46);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "horizontalAngle", *(this + 1));
  v5 = *(this + 46);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "horizontalAngleUncertainty", *(this + 2));
  v5 = *(this + 46);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "horizontalAngleUncertaintyUnfiltered", *(this + 3));
  v5 = *(this + 46);
  if ((v5 & 0x800) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "isConverged");
  v5 = *(this + 46);
  if ((v5 & 0x1000) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "isDistanceValid");
  v5 = *(this + 46);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "positionX", *(this + 4));
  v5 = *(this + 46);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "positionY", *(this + 5));
  v5 = *(this + 46);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "positionZ", *(this + 6));
  v5 = *(this + 46);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "revokeReason");
  v5 = *(this + 46);
  if ((v5 & 0x40) == 0)
  {
LABEL_12:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  v5 = *(this + 46);
  if ((v5 & 0x80) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "velocityX", *(this + 8));
  if ((*(this + 46) & 0x100) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(a2, "velocityY", *(this + 9));
  }

LABEL_15:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PrecisionFindingState::readFrom(CMMsl::PrecisionFindingState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_86:
    v41 = v4 ^ 1;
  }

  else
  {
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_86;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 46) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_61;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_57;
        case 2u:
          *(this + 46) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_61;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_57;
        case 3u:
          *(this + 46) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_61;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_57;
        case 4u:
          *(this + 46) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_61;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_57;
        case 5u:
          *(this + 46) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_61;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_57;
        case 6u:
          *(this + 46) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_61;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_57;
        case 7u:
          *(this + 46) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_61;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_57;
        case 8u:
          *(this + 46) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_61;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_57;
        case 9u:
          *(this + 46) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v33 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v33 = v32 != 0;
          }

          *(this + 88) = v33;
          break;
        case 0xAu:
          *(this + 46) |= 0x400u;
          v24 = *(a2 + 1);
          v2 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v34 = 0;
            v35 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(a2 + 1);
            }

            v36 = (v25 + v24);
            v37 = v2 - v24;
            v38 = v24 + 1;
            while (1)
            {
              if (!v37)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_84;
              }

              v39 = v38;
              v40 = *v36;
              *(a2 + 1) = v39;
              v28 |= (v40 & 0x7F) << v34;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v34 += 7;
              ++v36;
              --v37;
              v38 = v39 + 1;
              v14 = v35++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_83:
                v2 = v39;
                goto LABEL_84;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_83;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_84;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_84:
          *(this + 21) = v28;
          break;
        case 0xBu:
          *(this + 46) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_61;
          }

          *(this + 20) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          goto LABEL_58;
        case 0xCu:
          *(this + 46) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v23 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v22 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v23 = v22 != 0;
          }

          *(this + 89) = v23;
          break;
        case 0xDu:
          *(this + 46) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_61:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 6) = *(*a2 + v2);
LABEL_57:
            v2 = *(a2 + 1) + 8;
LABEL_58:
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_62:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_86;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_86;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      v2 = *(a2 + 1);
      goto LABEL_62;
    }

    v41 = 0;
  }

  return v41 & 1;
}

uint64_t CMMsl::PrecisionFindingState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 92);
  if ((v4 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(this + 56));
    v4 = *(v3 + 92);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    this = PB::Writer::write(a2);
    if ((*(v3 + 92) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 80));
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_27:
  v5 = *(v3 + 48);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PrecisionFindingState::hash_value(CMMsl::PrecisionFindingState *this)
{
  v1 = *(this + 46);
  if ((v1 & 0x40) == 0)
  {
    v2 = 0.0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_36:
    v3 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_37:
    v4 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_38:
    v5 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_39:
    v6 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_15;
    }

LABEL_40:
    v7 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    v8 = 0.0;
    if ((*(this + 46) & 0x100) != 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    v9 = 0.0;
    if ((*(this + 46) & 0x800) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_43;
  }

  v2 = *(this + 7);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_3:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_37;
  }

LABEL_6:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_38;
  }

LABEL_9:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_39;
  }

LABEL_12:
  v6 = *(this + 4);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_40;
  }

LABEL_15:
  v7 = *(this + 5);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_41;
  }

LABEL_18:
  v8 = *(this + 8);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((*(this + 46) & 0x100) == 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  v9 = *(this + 9);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  if ((*(this + 46) & 0x800) != 0)
  {
LABEL_24:
    v10 = *(this + 88);
    if ((*(this + 46) & 0x400) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_44;
  }

LABEL_43:
  v10 = 0;
  if ((*(this + 46) & 0x400) != 0)
  {
LABEL_25:
    v11 = *(this + 21);
    if ((*(this + 46) & 0x200) != 0)
    {
      goto LABEL_26;
    }

LABEL_45:
    v13 = 0;
    if ((*(this + 46) & 0x1000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_46;
  }

LABEL_44:
  v11 = 0;
  if ((*(this + 46) & 0x200) == 0)
  {
    goto LABEL_45;
  }

LABEL_26:
  v12 = *(this + 20);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((*(this + 46) & 0x1000) != 0)
  {
LABEL_29:
    v14 = *(this + 89);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_30;
    }

LABEL_47:
    v15 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ *&v15;
  }

LABEL_46:
  v14 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_47;
  }

LABEL_30:
  v15 = *(this + 6);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ *&v9 ^ v10 ^ v11 ^ v13 ^ v14 ^ *&v15;
}

void CMMsl::PrecisionFindingVelocityEstimate::~PrecisionFindingVelocityEstimate(CMMsl::PrecisionFindingVelocityEstimate *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::PrecisionFindingVelocityEstimate::PrecisionFindingVelocityEstimate(CMMsl::PrecisionFindingVelocityEstimate *this, const CMMsl::PrecisionFindingVelocityEstimate *a2)
{
  *this = &unk_286C22CD8;
  *(this + 11) = 0;
  v2 = *(a2 + 44);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 44) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 0x10) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 7);
    v3 |= 0x10u;
    *(this + 44) = v3;
    *(this + 7) = v4;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    LODWORD(v4) = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 44) = v3;
    *(this + 8) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 4);
  v3 |= 2u;
  *(this + 44) = v3;
  *(this + 4) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 9) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 44) = v3;
  *(this + 10) = v4;
  v2 = *(a2 + 44);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      return *&v4;
    }

    goto LABEL_18;
  }

LABEL_17:
  LODWORD(v4) = *(a2 + 5);
  v3 |= 4u;
  *(this + 44) = v3;
  *(this + 5) = v4;
  if ((*(a2 + 44) & 8) == 0)
  {
    return *&v4;
  }

LABEL_18:
  LODWORD(v4) = *(a2 + 6);
  *(this + 44) = v3 | 8;
  *(this + 6) = v4;
  return *&v4;
}

uint64_t CMMsl::PrecisionFindingVelocityEstimate::operator=(uint64_t a1, const CMMsl::PrecisionFindingVelocityEstimate *a2)
{
  if (a1 != a2)
  {
    CMMsl::PrecisionFindingVelocityEstimate::PrecisionFindingVelocityEstimate(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    LODWORD(v4) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PrecisionFindingVelocityEstimate *a2, CMMsl::PrecisionFindingVelocityEstimate *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  result = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = result;
  return result;
}

float CMMsl::PrecisionFindingVelocityEstimate::PrecisionFindingVelocityEstimate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22CD8;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

{
  *a1 = &unk_286C22CD8;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t CMMsl::PrecisionFindingVelocityEstimate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11[0] = &unk_286C22CD8;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 40);
    v15 = *(a1 + 44);
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v11[1] = v6;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v7 = *(a1 + 16);
    v8 = *(a2 + 16);
    v9 = *(a2 + 32);
    *(a1 + 44) = v3;
    *(a1 + 32) = v9;
    *(a1 + 40) = v5;
    *(a1 + 16) = v8;
    v12 = v7;
    PB::Base::~Base(v11);
  }

  return a1;
}

uint64_t CMMsl::PrecisionFindingVelocityEstimate::formatText(CMMsl::PrecisionFindingVelocityEstimate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "dot", *(this + 4));
    v5 = *(this + 44);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "noiseVelocityX", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "noiseVelocityY", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "speed", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "speedUncertainty", *(this + 8));
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(a2, "velocityX", *(this + 9));
    if ((*(this + 44) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  v5 = *(this + 44);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "velocityY", *(this + 10));
LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PrecisionFindingVelocityEstimate::readFrom(CMMsl::PrecisionFindingVelocityEstimate *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_54:
            *(a2 + 24) = 1;
            goto LABEL_58;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_56:
          v2 = *(a2 + 1) + 4;
LABEL_57:
          *(a2 + 1) = v2;
          goto LABEL_58;
        }

        if (v22 == 8)
        {
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_56;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_56;
        }

        if (v22 == 6)
        {
          *(this + 44) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_56;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 44) |= 0x20u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 8) = *(*a2 + v2);
        goto LABEL_56;
      }

      if (v22 == 4)
      {
        *(this + 44) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_56;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 44) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
        goto LABEL_57;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 7) = *(*a2 + v2);
        goto LABEL_56;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_58:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PrecisionFindingVelocityEstimate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 20));
    if ((*(v3 + 44) & 8) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 44);
  if ((v4 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_17:
  v5 = *(v3 + 24);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PrecisionFindingVelocityEstimate::hash_value(CMMsl::PrecisionFindingVelocityEstimate *this)
{
  if ((*(this + 44) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    v3 = 0;
    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_28:
    v5 = 0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_29:
    v7 = 0;
    if ((*(this + 44) & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_30:
    v9 = 0;
    if ((*(this + 44) & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v11 = 0;
    if ((*(this + 44) & 4) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  v2 = *(this + 7);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 44) & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_6:
  v4 = *(this + 8);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_9:
  v6 = *(this + 4);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 44) & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_12:
  v8 = *(this + 9);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 44) & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  v10 = *(this + 10);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((*(this + 44) & 4) != 0)
  {
LABEL_18:
    v12 = *(this + 5);
    v13 = LODWORD(v12);
    if (v12 == 0.0)
    {
      v13 = 0;
    }

    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_21;
    }

LABEL_33:
    v15 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
  }

LABEL_32:
  v13 = 0;
  if ((*(this + 44) & 8) == 0)
  {
    goto LABEL_33;
  }

LABEL_21:
  v14 = *(this + 6);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15;
}

void CMMsl::PrecisionFindingVerticalState::~PrecisionFindingVerticalState(CMMsl::PrecisionFindingVerticalState *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PrecisionFindingVerticalState::PrecisionFindingVerticalState(uint64_t this, const CMMsl::PrecisionFindingVerticalState *a2)
{
  *this = &unk_286C22D10;
  *(this + 60) = 0;
  v2 = *(a2 + 30);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 60) = 16;
    *(this + 40) = v4;
    v2 = *(a2 + 30);
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
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 60) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 30);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 60) = v3;
    *(this + 48) = v6;
    v2 = *(a2 + 30);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 8u;
  *(this + 60) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 30);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 60) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 30);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 3);
  v3 |= 4u;
  *(this + 60) = v3;
  *(this + 24) = v9;
  v2 = *(a2 + 30);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 58);
  v3 |= 0x100u;
  *(this + 60) = v3;
  *(this + 58) = v10;
  v2 = *(a2 + 30);
  if ((v2 & 0x40) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 57);
    *(this + 60) = v3 | 0x80;
    *(this + 57) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 56);
  v3 |= 0x40u;
  *(this + 60) = v3;
  *(this + 56) = v11;
  if ((*(a2 + 30) & 0x80) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::PrecisionFindingVerticalState::operator=(uint64_t a1, const CMMsl::PrecisionFindingVerticalState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PrecisionFindingVerticalState::PrecisionFindingVerticalState(&v8, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v15;
    v15 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    LOBYTE(v3) = *(a1 + 58);
    *(a1 + 58) = v14;
    v14 = v3;
    LOBYTE(v3) = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    LOBYTE(v3) = *(a1 + 57);
    *(a1 + 57) = v13;
    v13 = v3;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PrecisionFindingVerticalState *a2, CMMsl::PrecisionFindingVerticalState *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  LOBYTE(v3) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v3;
  LOBYTE(v3) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v3;
  LOBYTE(v3) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v3;
  return result;
}

double CMMsl::PrecisionFindingVerticalState::PrecisionFindingVerticalState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22D10;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  return result;
}

uint64_t CMMsl::PrecisionFindingVerticalState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PrecisionFindingVerticalState::PrecisionFindingVerticalState(&v8, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v15;
    v15 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    LOBYTE(v3) = *(a1 + 58);
    *(a1 + 58) = v14;
    v14 = v3;
    LOBYTE(v3) = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    LOBYTE(v3) = *(a1 + 57);
    *(a1 + 57) = v13;
    v13 = v3;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::PrecisionFindingVerticalState::formatText(CMMsl::PrecisionFindingVerticalState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 30);
  if (v5)
  {
    PB::TextFormatter::format(a2, "fractionAboveThreshold", *(this + 1));
    v5 = *(this + 30);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "horizontalDistance", *(this + 2));
  v5 = *(this + 30);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "isAboveBelow");
  v5 = *(this + 30);
  if ((v5 & 0x80) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "isAboveBelowMessageShowing");
  v5 = *(this + 30);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "isConverged");
  v5 = *(this + 30);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "likelihoodAboveThreshold", *(this + 3));
  v5 = *(this + 30);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "relativeAltitude", *(this + 4));
  v5 = *(this + 30);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  if ((*(this + 30) & 0x20) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "verticalDistance", *(this + 6));
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PrecisionFindingVerticalState::readFrom(CMMsl::PrecisionFindingVerticalState *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 4)
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 30) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_53:
            *(a2 + 24) = 1;
            goto LABEL_64;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_63;
        }

        if (v22 == 4)
        {
          *(this + 30) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_63;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 30) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_63;
        }

        if (v22 == 2)
        {
          *(this + 30) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_53;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_63;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 30) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_53;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_63;
      }

      if (v22 == 6)
      {
        *(this + 30) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_53;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_63:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_64;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 30) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v26 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v25 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v26 = v25 != 0;
          }

          *(this + 58) = v26;
          goto LABEL_64;
        case 8:
          *(this + 30) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v28 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v27 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v28 = v27 != 0;
          }

          *(this + 56) = v28;
          goto LABEL_64;
        case 9:
          *(this + 30) |= 0x80u;
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

          *(this + 57) = v24;
          goto LABEL_64;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v29 = 0;
      return v29 & 1;
    }

    v2 = *(a2 + 1);
LABEL_64:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v29 = v4 ^ 1;
  return v29 & 1;
}

uint64_t CMMsl::PrecisionFindingVerticalState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40));
    v4 = *(v3 + 60);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 60);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 60);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 60);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::write(a2);
    if ((*(v3 + 60) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 60);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_19:

  return PB::Writer::write(a2);
}

uint64_t CMMsl::PrecisionFindingVerticalState::hash_value(CMMsl::PrecisionFindingVerticalState *this)
{
  v1 = *(this + 30);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_24:
    v3 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    v4 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    v5 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_27:
    v6 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    v7 = 0.0;
    if ((*(this + 30) & 0x100) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  v2 = *(this + 5);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_3:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_6:
  v4 = *(this + 6);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v5 = *(this + 4);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  v7 = *(this + 3);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((*(this + 30) & 0x100) != 0)
  {
LABEL_18:
    v8 = *(this + 58);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_19;
    }

LABEL_30:
    v9 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_20;
    }

LABEL_31:
    v10 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_29:
  v8 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  v9 = *(this + 56);
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_31;
  }

LABEL_20:
  v10 = *(this + 57);
  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ v10;
}

void CMMsl::PredictedRelativeDeviceMotion::~PredictedRelativeDeviceMotion(CMMsl::PredictedRelativeDeviceMotion *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PredictedRelativeDeviceMotion::PredictedRelativeDeviceMotion(CMMsl::PredictedRelativeDeviceMotion *this, const CMMsl::PredictedRelativeDeviceMotion *a2)
{
  *this = &unk_286C22D48;
  *(this + 20) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    result = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 1) = result;
    v2 = *(a2 + 40);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 3);
    v3 |= 4u;
    *(this + 40) = v3;
    *(this + 3) = result;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    LODWORD(result) = *(a2 + 9);
    v3 |= 0x10u;
    *(this + 40) = v3;
    *(this + 9) = LODWORD(result);
    v2 = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 10);
  v3 |= 0x20u;
  *(this + 40) = v3;
  *(this + 10) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  LODWORD(result) = *(a2 + 11);
  v3 |= 0x40u;
  *(this + 40) = v3;
  *(this + 11) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  LODWORD(result) = *(a2 + 8);
  v3 |= 8u;
  *(this + 40) = v3;
  *(this + 8) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  LODWORD(result) = *(a2 + 13);
  v3 |= 0x100u;
  *(this + 40) = v3;
  *(this + 13) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 0x200) == 0)
  {
LABEL_12:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  LODWORD(result) = *(a2 + 14);
  v3 |= 0x200u;
  *(this + 40) = v3;
  *(this + 14) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 0x400) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  LODWORD(result) = *(a2 + 15);
  v3 |= 0x400u;
  *(this + 40) = v3;
  *(this + 15) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 0x80) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

LABEL_27:
  LODWORD(result) = *(a2 + 12);
  v3 |= 0x80u;
  *(this + 40) = v3;
  *(this + 12) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_29;
  }

LABEL_28:
  LODWORD(result) = *(a2 + 16);
  v3 |= 0x800u;
  *(this + 40) = v3;
  *(this + 16) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_30;
  }

LABEL_29:
  LODWORD(result) = *(a2 + 17);
  v3 |= 0x1000u;
  *(this + 40) = v3;
  *(this + 17) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 0x2000) == 0)
  {
LABEL_17:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_31;
  }

LABEL_30:
  LODWORD(result) = *(a2 + 18);
  v3 |= 0x2000u;
  *(this + 40) = v3;
  *(this + 18) = LODWORD(result);
  v2 = *(a2 + 40);
  if ((v2 & 0x4000) == 0)
  {
LABEL_18:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_32:
    result = *(a2 + 2);
    *(this + 40) = v3 | 2;
    *(this + 2) = result;
    return result;
  }

LABEL_31:
  v5 = *(a2 + 76);
  v3 |= 0x4000u;
  *(this + 40) = v3;
  *(this + 76) = v5;
  if ((*(a2 + 40) & 2) != 0)
  {
    goto LABEL_32;
  }

  return result;
}

CMMsl *CMMsl::PredictedRelativeDeviceMotion::operator=(CMMsl *a1, const CMMsl::PredictedRelativeDeviceMotion *a2)
{
  if (a1 != a2)
  {
    CMMsl::PredictedRelativeDeviceMotion::PredictedRelativeDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PredictedRelativeDeviceMotion *a2, CMMsl::PredictedRelativeDeviceMotion *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  LODWORD(v5) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  LODWORD(v5) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v5;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  LODWORD(v5) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v5;
  LODWORD(v5) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v5;
  LODWORD(v5) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v5;
  LODWORD(v5) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  LODWORD(v5) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  LODWORD(v5) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v5;
  LODWORD(v5) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v5;
  LOBYTE(v3) = *(this + 76);
  *(this + 76) = *(a2 + 76);
  *(a2 + 76) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::PredictedRelativeDeviceMotion::PredictedRelativeDeviceMotion(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22D48;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

CMMsl *CMMsl::PredictedRelativeDeviceMotion::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::PredictedRelativeDeviceMotion::PredictedRelativeDeviceMotion(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::PredictedRelativeDeviceMotion::formatText(CMMsl::PredictedRelativeDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if (v5)
  {
    PB::TextFormatter::format(a2, "lastStateTimestamp", *(this + 1));
    v5 = *(this + 40);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "qStartW", *(this + 8));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "qStartX", *(this + 9));
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "qStartY", *(this + 10));
  v5 = *(this + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "qStartZ", *(this + 11));
  v5 = *(this + 40);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "qStopW", *(this + 12));
  v5 = *(this + 40);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "qStopX", *(this + 13));
  v5 = *(this + 40);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "qStopY", *(this + 14));
  v5 = *(this + 40);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "qStopZ", *(this + 15));
  v5 = *(this + 40);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "rBoresightX", *(this + 16));
  v5 = *(this + 40);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "rBoresightY", *(this + 17));
  v5 = *(this + 40);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "rBoresightZ", *(this + 18));
  v5 = *(this + 40);
  if ((v5 & 2) == 0)
  {
LABEL_14:
    if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "srcTimestamp", *(this + 2));
  v5 = *(this + 40);
  if ((v5 & 4) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "targetTimestamp", *(this + 3));
  if ((*(this + 40) & 0x4000) != 0)
  {
LABEL_16:
    PB::TextFormatter::format(a2, "useForwardPrediction");
  }

LABEL_17:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PredictedRelativeDeviceMotion::readFrom(CMMsl::PredictedRelativeDeviceMotion *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_75:
    v24 = v4 ^ 1;
  }

  else
  {
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_75;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 40) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_51;
        case 2u:
          *(this + 40) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_51;
        case 3u:
          *(this + 40) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_69;
        case 4u:
          *(this + 40) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 10) = *(*a2 + v2);
          goto LABEL_69;
        case 5u:
          *(this + 40) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_69;
        case 6u:
          *(this + 40) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_69;
        case 7u:
          *(this + 40) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_69;
        case 8u:
          *(this + 40) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 14) = *(*a2 + v2);
          goto LABEL_69;
        case 9u:
          *(this + 40) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 15) = *(*a2 + v2);
          goto LABEL_69;
        case 0xAu:
          *(this + 40) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_69;
        case 0xBu:
          *(this + 40) |= 0x800u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 16) = *(*a2 + v2);
          goto LABEL_69;
        case 0xCu:
          *(this + 40) |= 0x1000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 17) = *(*a2 + v2);
          goto LABEL_69;
        case 0xDu:
          *(this + 40) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_65;
          }

          *(this + 18) = *(*a2 + v2);
LABEL_69:
          v2 = *(a2 + 1) + 4;
          goto LABEL_70;
        case 0xEu:
          *(this + 40) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v23 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v22 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v23 = v22 != 0;
          }

          *(this + 76) = v23;
          break;
        case 0xFu:
          *(this + 40) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_65:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 2) = *(*a2 + v2);
LABEL_51:
            v2 = *(a2 + 1) + 8;
LABEL_70:
            *(a2 + 1) = v2;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_71:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_75;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    do
    {
      if (!v19)
      {
        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_75;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
    }

    while (!v14);
LABEL_17:
    if (PB::Reader::skip(a2))
    {
      v2 = *(a2 + 1);
      goto LABEL_71;
    }

    v24 = 0;
  }

  return v24 & 1;
}

uint64_t CMMsl::PredictedRelativeDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 80);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 80);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 80);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 80);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 80);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 60));
  v4 = *(v3 + 80);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 0x2000) == 0)
  {
LABEL_14:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    this = PB::Writer::write(a2);
    if ((*(v3 + 80) & 2) == 0)
    {
      return this;
    }

    goto LABEL_31;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 80);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_31:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PredictedRelativeDeviceMotion::hash_value(CMMsl::PredictedRelativeDeviceMotion *this)
{
  v1 = *(this + 40);
  if ((v1 & 1) == 0)
  {
    v2 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_46:
    v3 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_47:
    v5 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_48:
    v7 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_12;
    }

LABEL_49:
    v9 = 0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_50:
    v11 = 0;
    if ((*(this + 40) & 0x100) != 0)
    {
      goto LABEL_18;
    }

LABEL_51:
    v13 = 0;
    if ((*(this + 40) & 0x200) != 0)
    {
      goto LABEL_21;
    }

LABEL_52:
    v15 = 0;
    if ((*(this + 40) & 0x400) != 0)
    {
      goto LABEL_24;
    }

LABEL_53:
    v17 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    v19 = 0;
    if ((*(this + 40) & 0x800) != 0)
    {
      goto LABEL_30;
    }

LABEL_55:
    v21 = 0;
    if ((*(this + 40) & 0x1000) != 0)
    {
      goto LABEL_33;
    }

LABEL_56:
    v23 = 0;
    if ((*(this + 40) & 0x2000) != 0)
    {
      goto LABEL_36;
    }

LABEL_57:
    v25 = 0;
    if ((*(this + 40) & 0x4000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_58;
  }

  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_46;
  }

LABEL_3:
  v3 = *(this + 3);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_47;
  }

LABEL_6:
  v4 = *(this + 9);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_48;
  }

LABEL_9:
  v6 = *(this + 10);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_49;
  }

LABEL_12:
  v8 = *(this + 11);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_50;
  }

LABEL_15:
  v10 = *(this + 8);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  if ((*(this + 40) & 0x100) == 0)
  {
    goto LABEL_51;
  }

LABEL_18:
  v12 = *(this + 13);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  if ((*(this + 40) & 0x200) == 0)
  {
    goto LABEL_52;
  }

LABEL_21:
  v14 = *(this + 14);
  v15 = LODWORD(v14);
  if (v14 == 0.0)
  {
    v15 = 0;
  }

  if ((*(this + 40) & 0x400) == 0)
  {
    goto LABEL_53;
  }

LABEL_24:
  v16 = *(this + 15);
  v17 = LODWORD(v16);
  if (v16 == 0.0)
  {
    v17 = 0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  v18 = *(this + 12);
  v19 = LODWORD(v18);
  if (v18 == 0.0)
  {
    v19 = 0;
  }

  if ((*(this + 40) & 0x800) == 0)
  {
    goto LABEL_55;
  }

LABEL_30:
  v20 = *(this + 16);
  v21 = LODWORD(v20);
  if (v20 == 0.0)
  {
    v21 = 0;
  }

  if ((*(this + 40) & 0x1000) == 0)
  {
    goto LABEL_56;
  }

LABEL_33:
  v22 = *(this + 17);
  v23 = LODWORD(v22);
  if (v22 == 0.0)
  {
    v23 = 0;
  }

  if ((*(this + 40) & 0x2000) == 0)
  {
    goto LABEL_57;
  }

LABEL_36:
  v24 = *(this + 18);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  if ((*(this + 40) & 0x4000) != 0)
  {
LABEL_39:
    v26 = *(this + 76);
    if ((v1 & 2) != 0)
    {
      goto LABEL_40;
    }

LABEL_59:
    v27 = 0.0;
    return *&v3 ^ *&v2 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v25 ^ v26 ^ *&v27;
  }

LABEL_58:
  v26 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_59;
  }

LABEL_40:
  v27 = *(this + 2);
  if (v27 == 0.0)
  {
    v27 = 0.0;
  }

  return *&v3 ^ *&v2 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13 ^ v15 ^ v17 ^ v19 ^ v21 ^ v23 ^ v25 ^ v26 ^ *&v27;
}

void CMMsl::Pressure::~Pressure(CMMsl::Pressure *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::Pressure::Pressure(CMMsl::Pressure *this, const CMMsl::Pressure *a2)
{
  *this = &unk_286C22D80;
  *(this + 6) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 24) = 1;
    *(this + 1) = v4;
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
    LODWORD(v4) = *(a2 + 4);
    v3 |= 2u;
    *(this + 24) = v3;
    *(this + 4) = v4;
    v2 = *(a2 + 24);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    LODWORD(v4) = *(a2 + 5);
    *(this + 24) = v3 | 4;
    *(this + 5) = v4;
  }

  return *&v4;
}

uint64_t CMMsl::Pressure::operator=(uint64_t a1, const CMMsl::Pressure *a2)
{
  if (a1 != a2)
  {
    CMMsl::Pressure::Pressure(&v8, a2);
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

float CMMsl::swap(CMMsl *this, CMMsl::Pressure *a2, CMMsl::Pressure *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

float CMMsl::Pressure::Pressure(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22D80;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

{
  *a1 = &unk_286C22D80;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 20);
  *(a1 + 20) = result;
  return result;
}

uint64_t CMMsl::Pressure::operator=(uint64_t a1, uint64_t a2)
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
    v8[0] = &unk_286C22D80;
    v9 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8[1] = v4;
    v8[2] = v5;
    PB::Base::~Base(v8);
  }

  return a1;
}

uint64_t CMMsl::Pressure::formatText(CMMsl::Pressure *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "pressure", *(this + 4));
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

  PB::TextFormatter::format(a2, "temperature", *(this + 5));
  if (*(this + 24))
  {
LABEL_4:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Pressure::readFrom(CMMsl::Pressure *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_39;
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_39;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 24) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 4) = *(*a2 + v2);
LABEL_33:
        v2 = *(a2 + 1) + 4;
LABEL_34:
        *(a2 + 1) = v2;
        goto LABEL_35;
      }

      if (v22 == 1)
      {
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_31;
        }

        *(this + 1) = *(*a2 + v2);
        v2 = *(a2 + 1) + 8;
        goto LABEL_34;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
LABEL_35:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_39;
      }
    }

    *(this + 24) |= 4u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
    {
LABEL_31:
      *(a2 + 24) = 1;
      goto LABEL_35;
    }

    *(this + 5) = *(*a2 + v2);
    goto LABEL_33;
  }

LABEL_39:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::Pressure::writeTo(uint64_t this, PB::Writer *a2)
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
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 24) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8));
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

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::Pressure::hash_value(CMMsl::Pressure *this)
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

LABEL_13:
      v5 = 0;
      return v3 ^ *&v1 ^ v5;
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
    goto LABEL_13;
  }

LABEL_6:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  return v3 ^ *&v1 ^ v5;
}

void CMMsl::PressureCalibration::~PressureCalibration(CMMsl::PressureCalibration *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::PressureCalibration::PressureCalibration(CMMsl::PressureCalibration *this, const CMMsl::PressureCalibration *a2)
{
  *this = &unk_286C22DB8;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 7);
    v3 = 32;
    *(this + 32) = 32;
    *(this + 7) = result;
    v2 = *(a2 + 32);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 0x10) != 0)
  {
LABEL_5:
    result = *(a2 + 6);
    v3 |= 0x10u;
    *(this + 32) = v3;
    *(this + 6) = result;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 5);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 5) = result;
    v2 = *(a2 + 32);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 2);
  v3 |= 1u;
  *(this + 32) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 32);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 4);
    *(this + 32) = v3 | 4;
    *(this + 4) = result;
    return result;
  }

LABEL_13:
  result = *(a2 + 3);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 3) = result;
  if ((*(a2 + 32) & 4) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t CMMsl::PressureCalibration::operator=(uint64_t a1, const CMMsl::PressureCalibration *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureCalibration::PressureCalibration(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PressureCalibration *a2, CMMsl::PressureCalibration *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::PressureCalibration::PressureCalibration(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22DB8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C22DB8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PressureCalibration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8 = &unk_286C22DB8;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v11 = *(a1 + 32);
    v10 = *(a1 + 24);
    v4 = *(a1 + 8);
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
    *(a1 + 32) = v3;
    *(a1 + 24) = v6;
    *(a1 + 8) = v5;
    v9 = v4;
    PB::Base::~Base(&v8);
  }

  return a1;
}

uint64_t CMMsl::PressureCalibration::formatText(CMMsl::PressureCalibration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "inertialX", *(this + 2));
    v5 = *(this + 32);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "inertialY", *(this + 3));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "inertialZ", *(this + 4));
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "maxTemp", *(this + 5));
  v5 = *(this + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "medTocFactoryTemp", *(this + 6));
  if ((*(this + 32) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "medianToc", *(this + 7));
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureCalibration::readFrom(CMMsl::PressureCalibration *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
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
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 32) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_44:
            *(a2 + 24) = 1;
            goto LABEL_47;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_46;
        case 5:
          *(this + 32) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_46;
        case 6:
          *(this + 32) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_46;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 32) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_46;
        case 2:
          *(this + 32) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_46;
        case 3:
          *(this + 32) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 5) = *(*a2 + v2);
LABEL_46:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_47;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_47:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PressureCalibration::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 28));
    v4 = *(v3 + 32);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 32);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::write(a2, *(v3 + 12));
    if ((*(v3 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_13:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PressureCalibration::hash_value(CMMsl::PressureCalibration *this)
{
  if ((*(this + 32) & 0x20) == 0)
  {
    v1 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_3;
    }

LABEL_21:
    v3 = 0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_22:
    v5 = 0;
    if (*(this + 32))
    {
      goto LABEL_9;
    }

LABEL_23:
    v7 = 0;
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  v12 = *(this + 7);
  v1 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = *(this + 6);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_22;
  }

LABEL_6:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_9:
  v6 = *(this + 2);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 32) & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 3);
    v9 = LODWORD(v8);
    if (v8 == 0.0)
    {
      v9 = 0;
    }

    if ((*(this + 32) & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    v11 = 0;
    return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11;
  }

LABEL_24:
  v9 = 0;
  if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_15:
  v10 = *(this + 4);
  v11 = LODWORD(v10);
  if (v10 == 0.0)
  {
    v11 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v7 ^ v9 ^ v11;
}

void CMMsl::PressureCompensated::~PressureCompensated(CMMsl::PressureCompensated *this)
{
  v2 = *(this + 1);
  *this = &unk_286C22DF0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureCompensated::~PressureCompensated(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PressureCompensated *CMMsl::PressureCompensated::PressureCompensated(CMMsl::PressureCompensated *this, const CMMsl::Pressure **a2)
{
  *this = &unk_286C22DF0;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::PressureCompensated::operator=(uint64_t a1, const CMMsl::Pressure **a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureCompensated::PressureCompensated(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::PressureCompensated::~PressureCompensated(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PressureCompensated *a2, CMMsl::PressureCompensated *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PressureCompensated::PressureCompensated(void *a1, uint64_t a2)
{
  *a1 = &unk_286C22DF0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C22DF0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::PressureCompensated::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C22DF0;
    v6[1] = v4;
    CMMsl::PressureCompensated::~PressureCompensated(v6);
  }

  return a1;
}

uint64_t CMMsl::PressureCompensated::formatText(CMMsl::PressureCompensated *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureCompensated::readFrom(CMMsl::PressureCompensated *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::PressureCompensated::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Pressure *CMMsl::PressureCompensated::hash_value(CMMsl::PressureCompensated *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

void *CMMsl::PressureCompensated::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::PressureFiltered::~PressureFiltered(CMMsl::PressureFiltered *this)
{
  v2 = *(this + 1);
  *this = &unk_286C22E28;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureFiltered::~PressureFiltered(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PressureFiltered *CMMsl::PressureFiltered::PressureFiltered(CMMsl::PressureFiltered *this, const CMMsl::Pressure **a2)
{
  *this = &unk_286C22E28;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::PressureFiltered::operator=(uint64_t a1, const CMMsl::Pressure **a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureFiltered::PressureFiltered(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::PressureFiltered::~PressureFiltered(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PressureFiltered *a2, CMMsl::PressureFiltered *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PressureFiltered::PressureFiltered(void *a1, uint64_t a2)
{
  *a1 = &unk_286C22E28;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C22E28;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::PressureFiltered::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C22E28;
    v6[1] = v4;
    CMMsl::PressureFiltered::~PressureFiltered(v6);
  }

  return a1;
}

uint64_t CMMsl::PressureFiltered::formatText(CMMsl::PressureFiltered *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureFiltered::readFrom(CMMsl::PressureFiltered *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::PressureFiltered::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Pressure *CMMsl::PressureFiltered::hash_value(CMMsl::PressureFiltered *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

void *CMMsl::PressureFiltered::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::PressureFiltered1HzLowPass::~PressureFiltered1HzLowPass(CMMsl::PressureFiltered1HzLowPass *this)
{
  *this = &unk_286C22E60;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureFiltered1HzLowPass::~PressureFiltered1HzLowPass(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PressureFiltered1HzLowPass *CMMsl::PressureFiltered1HzLowPass::PressureFiltered1HzLowPass(CMMsl::PressureFiltered1HzLowPass *this, const CMMsl::PressureFiltered1HzLowPass *a2)
{
  *this = &unk_286C22E60;
  *(this + 2) = 0;
  *(this + 6) = 0;
  if (*(a2 + 24))
  {
    v2 = *(a2 + 1);
    *(this + 24) = 1;
    *(this + 1) = v2;
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::operator=(uint64_t a1, const CMMsl::PressureFiltered1HzLowPass *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureFiltered1HzLowPass::PressureFiltered1HzLowPass(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::PressureFiltered1HzLowPass::~PressureFiltered1HzLowPass(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PressureFiltered1HzLowPass *a2, CMMsl::PressureFiltered1HzLowPass *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  return result;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::PressureFiltered1HzLowPass(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22E60;
  *(a1 + 16) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  *(a2 + 16) = 0;
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureFiltered1HzLowPass::PressureFiltered1HzLowPass(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    CMMsl::PressureFiltered1HzLowPass::~PressureFiltered1HzLowPass(&v7);
  }

  return a1;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::formatText(CMMsl::PressureFiltered1HzLowPass *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "iostime", *(this + 1));
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureFiltered1HzLowPass::readFrom(CMMsl::PressureFiltered1HzLowPass *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
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
          goto LABEL_24;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_31;
      }

      if ((v10 >> 3) == 2)
      {
        operator new();
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 24) |= 1u;
        v22 = *(a2 + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v22);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_24:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v23 = 0;
          return v23 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_31;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_24;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_31:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 24))
  {
    this = PB::Writer::write(a2, *(this + 8));
  }

  v4 = *(v3 + 16);
  if (v4)
  {

    return PB::Writer::writeSubmessage(a2, v4);
  }

  return this;
}

uint64_t CMMsl::PressureFiltered1HzLowPass::hash_value(CMMsl::PressureFiltered1HzLowPass *this)
{
  if (*(this + 24))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }
  }

  else
  {
    v1 = 0.0;
  }

  v2 = *(this + 2);
  if (v2)
  {
    v3 = *(v2 + 8);
    if ((*(v2 + 20) & 1) == 0)
    {
      v3 = 0;
    }

    v4 = *(v2 + 16);
    v5 = v4 == 0.0 || (*(v2 + 20) & 2) == 0;
    v6 = LODWORD(v4);
    if (v5)
    {
      v6 = 0;
    }

    v2 = v6 ^ v3;
  }

  return v2 ^ *&v1;
}

void *CMMsl::PressureFiltered1HzLowPass::makeSuper(void *this)
{
  if (!this[2])
  {
    operator new();
  }

  return this;
}

void CMMsl::PressureFilteredNoTemperature::~PressureFilteredNoTemperature(CMMsl::PressureFilteredNoTemperature *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::PressureFilteredNoTemperature::PressureFilteredNoTemperature(CMMsl::PressureFilteredNoTemperature *this, const CMMsl::PressureFilteredNoTemperature *a2)
{
  *this = &unk_286C22E98;
  *(this + 5) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 1);
    *(this + 20) = 1;
    *(this + 1) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    *(this + 20) = v2;
    *(this + 4) = result;
  }

  return result;
}

uint64_t CMMsl::PressureFilteredNoTemperature::operator=(uint64_t a1, const CMMsl::PressureFilteredNoTemperature *a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureFilteredNoTemperature::PressureFilteredNoTemperature(v7, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::PressureFilteredNoTemperature *a2, CMMsl::PressureFilteredNoTemperature *a3)
{
  v3 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::PressureFilteredNoTemperature::PressureFilteredNoTemperature(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22E98;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C22E98;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PressureFilteredNoTemperature::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 20);
    *(a2 + 20) = 0;
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = *(a1 + 20);
    *(a1 + 20) = v3;
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[0] = &unk_286C22E98;
    v10[1] = v7;
    v8 = *(a1 + 16);
    *(a1 + 16) = v5;
    v11 = v8;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::PressureFilteredNoTemperature::formatText(CMMsl::PressureFilteredNoTemperature *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "pressure", *(this + 4));
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureFilteredNoTemperature::readFrom(CMMsl::PressureFilteredNoTemperature *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
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
          goto LABEL_28;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_51;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 2u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 4) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(this + 20) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(a2 + 1);
          }

          v32 = (v23 + v22);
          v33 = v2 - v22;
          v34 = v22 + 1;
          while (1)
          {
            if (!v33)
            {
              v26 = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v35 = v34;
            v36 = *v32;
            *(a2 + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v32;
            --v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              v26 = 0;
              goto LABEL_45;
            }
          }

          if (*(a2 + 24))
          {
            v26 = 0;
          }

LABEL_45:
          v2 = v35;
        }

        else
        {
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          while (1)
          {
            v2 = v28;
            *(a2 + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
            if (v14)
            {
              v26 = 0;
              break;
            }
          }
        }

LABEL_46:
        *(this + 1) = v26;
      }

      else
      {
LABEL_28:
        if (!PB::Reader::skip(a2))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t CMMsl::PressureFilteredNoTemperature::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

uint64_t CMMsl::PressureFilteredNoTemperature::hash_value(CMMsl::PressureFilteredNoTemperature *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    return v3 ^ v1;
  }

  v1 = *(this + 1);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  return v3 ^ v1;
}

void CMMsl::PressureGps::~PressureGps(CMMsl::PressureGps *this)
{
  v2 = *(this + 1);
  *this = &unk_286C22ED0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureGps::~PressureGps(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PressureGps *CMMsl::PressureGps::PressureGps(CMMsl::PressureGps *this, const CMMsl::Pressure **a2)
{
  *this = &unk_286C22ED0;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::PressureGps::operator=(uint64_t a1, const CMMsl::Pressure **a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureGps::PressureGps(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::PressureGps::~PressureGps(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PressureGps *a2, CMMsl::PressureGps *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PressureGps::PressureGps(void *a1, uint64_t a2)
{
  *a1 = &unk_286C22ED0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C22ED0;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::PressureGps::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C22ED0;
    v6[1] = v4;
    CMMsl::PressureGps::~PressureGps(v6);
  }

  return a1;
}

uint64_t CMMsl::PressureGps::formatText(CMMsl::PressureGps *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureGps::readFrom(CMMsl::PressureGps *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::PressureGps::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Pressure *CMMsl::PressureGps::hash_value(CMMsl::PressureGps *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

void *CMMsl::PressureGps::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::PressureOscarEmu::~PressureOscarEmu(CMMsl::PressureOscarEmu *this)
{
  v2 = *(this + 1);
  *this = &unk_286C22F08;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PressureOscarEmu::~PressureOscarEmu(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PressureOscarEmu *CMMsl::PressureOscarEmu::PressureOscarEmu(CMMsl::PressureOscarEmu *this, const CMMsl::Pressure **a2)
{
  *this = &unk_286C22F08;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::PressureOscarEmu::operator=(uint64_t a1, const CMMsl::Pressure **a2)
{
  if (a1 != a2)
  {
    CMMsl::PressureOscarEmu::PressureOscarEmu(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::PressureOscarEmu::~PressureOscarEmu(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PressureOscarEmu *a2, CMMsl::PressureOscarEmu *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::PressureOscarEmu::PressureOscarEmu(void *a1, uint64_t a2)
{
  *a1 = &unk_286C22F08;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

{
  *a1 = &unk_286C22F08;
  a1[1] = 0;
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = a1[1];
  a1[1] = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t CMMsl::PressureOscarEmu::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C22F08;
    v6[1] = v4;
    CMMsl::PressureOscarEmu::~PressureOscarEmu(v6);
  }

  return a1;
}

uint64_t CMMsl::PressureOscarEmu::formatText(CMMsl::PressureOscarEmu *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PressureOscarEmu::readFrom(CMMsl::PressureOscarEmu *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_21;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_26;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_21:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_21;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_26:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t CMMsl::PressureOscarEmu::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Pressure *CMMsl::PressureOscarEmu::hash_value(CMMsl::PressureOscarEmu *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

void *CMMsl::PressureOscarEmu::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::PropagatedAnchor::~PropagatedAnchor(CMMsl::PropagatedAnchor *this)
{
  *this = &unk_286C22F40;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::PropagatedAnchor::~PropagatedAnchor(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PropagatedAnchor *CMMsl::PropagatedAnchor::PropagatedAnchor(CMMsl::PropagatedAnchor *this, const CMMsl::PropagatedAnchor *a2)
{
  *(this + 1) = 0;
  *this = &unk_286C22F40;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  if (*(a2 + 5))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  if (*(a2 + 48))
  {
    v4 = *(a2 + 4);
    *(this + 48) |= 1u;
    *(this + 4) = v4;
  }

  return this;
}

uint64_t CMMsl::PropagatedAnchor::operator=(uint64_t a1, const CMMsl::PropagatedAnchor *a2)
{
  if (a1 != a2)
  {
    CMMsl::PropagatedAnchor::PropagatedAnchor(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v7;
    CMMsl::PropagatedAnchor::~PropagatedAnchor(v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PropagatedAnchor *a2, CMMsl::PropagatedAnchor *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

uint64_t CMMsl::PropagatedAnchor::PropagatedAnchor(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22F40;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t CMMsl::PropagatedAnchor::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PropagatedAnchor::PropagatedAnchor(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v12;
    v12 = v7;
    CMMsl::PropagatedAnchor::~PropagatedAnchor(v9);
  }

  return a1;
}

uint64_t CMMsl::PropagatedAnchor::formatText(CMMsl::PropagatedAnchor *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 48))
  {
    PB::TextFormatter::format(a2, "originalTimestamp", *(this + 4));
  }

  v5 = *(this + 5);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "pose");
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "velocity", v8);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PropagatedAnchor::readFrom(CMMsl::PropagatedAnchor *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_70;
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
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_70;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        if ((v10 & 7) != 2)
        {
          v41 = *(this + 2);
          v40 = *(this + 3);
          if (v41 >= v40)
          {
            v43 = *(this + 1);
            v44 = v41 - v43;
            v45 = (v41 - v43) >> 3;
            v46 = v45 + 1;
            if ((v45 + 1) >> 61)
            {
LABEL_74:
              sub_25AAE66B8();
            }

            v47 = v40 - v43;
            if (v47 >> 2 > v46)
            {
              v46 = v47 >> 2;
            }

            if (v47 >= 0x7FFFFFFFFFFFFFF8)
            {
              v48 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v48 = v46;
            }

            if (v48)
            {
              sub_25AD28710(v48);
            }

            v49 = (v41 - v43) >> 3;
            v50 = (8 * v45);
            v51 = (8 * v45 - 8 * v49);
            *v50 = 0;
            v42 = v50 + 1;
            memcpy(v51, v43, v44);
            v52 = *(this + 1);
            *(this + 1) = v51;
            *(this + 2) = v42;
            *(this + 3) = 0;
            if (v52)
            {
              operator delete(v52);
            }
          }

          else
          {
            *v41 = 0;
            v42 = v41 + 8;
          }

          *(this + 2) = v42;
          v53 = *(a2 + 1);
          if (v53 > 0xFFFFFFFFFFFFFFF7 || v53 + 8 > *(a2 + 2))
          {
LABEL_63:
            *(a2 + 24) = 1;
            goto LABEL_66;
          }

          *(v42 - 1) = *(*a2 + v53);
          goto LABEL_65;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_72;
        }

        v23 = *(a2 + 1);
        v24 = *(a2 + 2);
        while (v23 < v24 && (*(a2 + 24) & 1) == 0)
        {
          v26 = *(this + 2);
          v25 = *(this + 3);
          if (v26 >= v25)
          {
            v28 = *(this + 1);
            v29 = v26 - v28;
            v30 = (v26 - v28) >> 3;
            v31 = v30 + 1;
            if ((v30 + 1) >> 61)
            {
              goto LABEL_74;
            }

            v32 = v25 - v28;
            if (v32 >> 2 > v31)
            {
              v31 = v32 >> 2;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFF8)
            {
              v33 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v31;
            }

            if (v33)
            {
              sub_25AD28710(v33);
            }

            v34 = (v26 - v28) >> 3;
            v35 = (8 * v30);
            v36 = (8 * v30 - 8 * v34);
            *v35 = 0;
            v27 = v35 + 1;
            memcpy(v36, v28, v29);
            v37 = *(this + 1);
            *(this + 1) = v36;
            *(this + 2) = v27;
            *(this + 3) = 0;
            if (v37)
            {
              operator delete(v37);
            }
          }

          else
          {
            *v26 = 0;
            v27 = v26 + 8;
          }

          *(this + 2) = v27;
          v38 = *(a2 + 1);
          if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(a2 + 2))
          {
            *(a2 + 24) = 1;
            break;
          }

          *(v27 - 1) = *(*a2 + v38);
          v24 = *(a2 + 2);
          v23 = *(a2 + 1) + 8;
          *(a2 + 1) = v23;
        }

        PB::Reader::recallMark();
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
LABEL_72:
          v54 = 0;
          return v54 & 1;
        }
      }

LABEL_66:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_70;
      }
    }

    *(this + 48) |= 1u;
    v39 = *(a2 + 1);
    if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
    {
      goto LABEL_63;
    }

    *(this + 4) = *(*a2 + v39);
LABEL_65:
    *(a2 + 1) += 8;
    goto LABEL_66;
  }

LABEL_70:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t CMMsl::PropagatedAnchor::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  if (*(v3 + 48))
  {
    v8 = *(v3 + 32);

    return PB::Writer::write(a2, v8);
  }

  return this;
}

uint64_t CMMsl::PropagatedAnchor::hash_value(CMMsl::PropagatedAnchor *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = CMMsl::Pose::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = PBHashBytes();
  if (*(this + 48))
  {
    v5 = *(this + 4);
    if (v5 == 0.0)
    {
      v5 = 0.0;
    }
  }

  else
  {
    v5 = 0.0;
  }

  return v4 ^ v3 ^ *&v5;
}

void *CMMsl::PropagatedAnchor::makePose(void *this)
{
  if (!this[5])
  {
    operator new();
  }

  return this;
}

void CMMsl::Prox::~Prox(CMMsl::Prox *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::Prox::Prox(uint64_t this, const CMMsl::Prox *a2)
{
  *this = &unk_286C22F78;
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

const CMMsl::Prox *CMMsl::Prox::operator=(const CMMsl::Prox *a1, const CMMsl::Prox *a2)
{
  if (a1 != a2)
  {
    CMMsl::Prox::Prox(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::Prox *a2, CMMsl::Prox *a3)
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

double CMMsl::Prox::Prox(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22F78;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C22F78;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::Prox::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v8[0] = &unk_286C22F78;
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

uint64_t CMMsl::Prox::formatText(CMMsl::Prox *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "detectionMask");
    v5 = *(this + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

  return MEMORY[0x2821A4560](a2);
}