uint64_t CMMsl::InEarAdditionalState::hash_value(uint64_t **this)
{
  v2 = sub_25AB065E0(this[1], this[2]);
  if (*(this + 36))
  {
    v3 = *(this + 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 ^ v2;
}

double CMMsl::InEarBaseline::InEarBaseline(CMMsl::InEarBaseline *this)
{
  *this = &unk_286C20C08;
  *(this + 13) = 0;
  *(this + 15) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_286C20C08;
  *(this + 13) = 0;
  *(this + 15) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

void CMMsl::InEarBaseline::~InEarBaseline(CMMsl::InEarBaseline *this)
{
  *this = &unk_286C20C08;
  v4 = (this + 24);
  sub_25AD28930(&v4);
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::InEarBaseline::~InEarBaseline(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::InEarBaseline *CMMsl::InEarBaseline::InEarBaseline(CMMsl::InEarBaseline *this, const CMMsl::InEarBaseline *a2)
{
  *this = &unk_286C20C08;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 13) = 0;
  *(this + 15) = 0;
  *(this + 5) = 0;
  if (*(a2 + 60))
  {
    v3 = *(a2 + 12);
    *(this + 60) = 1;
    *(this + 12) = v3;
    v2 = 3;
    if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 60) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 13);
    *(this + 60) = v2;
    *(this + 13) = v4;
  }

LABEL_6:
  v5 = *(a2 + 3);
  if (v5 != *(a2 + 4))
  {
    sub_25AB04FBC(this + 24, *v5);
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v6 = *(a2 + 60);
  if ((v6 & 4) != 0)
  {
    v7 = *(a2 + 56);
    *(this + 60) |= 4u;
    *(this + 56) = v7;
    v6 = *(a2 + 60);
  }

  if ((v6 & 8) != 0)
  {
    v8 = *(a2 + 57);
    *(this + 60) |= 8u;
    *(this + 57) = v8;
  }

  return this;
}

uint64_t CMMsl::InEarBaseline::operator=(uint64_t a1, const CMMsl::InEarBaseline *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarBaseline::InEarBaseline(&v9, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v16;
    v16 = v3;
    v4 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    LOBYTE(v6) = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v6;
    LOBYTE(v6) = *(a1 + 57);
    *(a1 + 57) = v15;
    v15 = v6;
    CMMsl::InEarBaseline::~InEarBaseline(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::InEarBaseline *a2, CMMsl::InEarBaseline *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  result = *(a2 + 6);
  v5 = *(this + 6);
  *(this + 6) = result;
  *(a2 + 6) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  v10 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v10;
  LOBYTE(v10) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v10;
  LOBYTE(v10) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v10;
  return result;
}

uint64_t CMMsl::InEarBaseline::InEarBaseline(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20C08;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 52) = 0;
  *(a1 + 24) = 0u;
  v5 = (a1 + 24);
  *(a1 + 40) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  *(a1 + 48) = *(a2 + 48);
  sub_25AD289F0((a1 + 24));
  *v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(a2 + 8);
  *(a2 + 8) = 0;
  v9 = *v4;
  *v4 = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  return a1;
}

uint64_t CMMsl::InEarBaseline::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarBaseline::InEarBaseline(&v9, a2);
    v3 = *(a1 + 60);
    *(a1 + 60) = v16;
    v16 = v3;
    v4 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    LOBYTE(v6) = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v6;
    LOBYTE(v6) = *(a1 + 57);
    *(a1 + 57) = v15;
    v15 = v6;
    CMMsl::InEarBaseline::~InEarBaseline(&v9);
  }

  return a1;
}

uint64_t CMMsl::InEarBaseline::formatText(CMMsl::InEarBaseline *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 60);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "conchaMinAccepted");
    v5 = *(this + 60);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "location");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "newOpenLid");
  }

  v7 = *(this + 2);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "oldOpenLid");
  }

  v8 = *(this + 3);
  v9 = *(this + 4);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "optical");
  }

  v11 = *(this + 60);
  if ((v11 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "state");
    v11 = *(this + 60);
  }

  if ((v11 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "tragusMinAccepted");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::InEarBaseline::readFrom(CMMsl::InEarBaseline *this, PB::Reader *a2)
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
          *(this + 60) |= 1u;
          v28 = *(a2 + 1);
          v27 = *(a2 + 2);
          v29 = *a2;
          if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
          {
            v49 = 0;
            v50 = 0;
            v32 = 0;
            v51 = (v29 + v28);
            v18 = v27 >= v28;
            v52 = v27 - v28;
            if (!v18)
            {
              v52 = 0;
            }

            v53 = v28 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v32) = 0;
                *(a2 + 24) = 1;
                goto LABEL_74;
              }

              v54 = *v51;
              *(a2 + 1) = v53;
              v32 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v51;
              --v52;
              ++v53;
              v14 = v50++ > 8;
              if (v14)
              {
LABEL_57:
                LODWORD(v32) = 0;
                goto LABEL_74;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v32) = 0;
            }
          }

          else
          {
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v33 = (v29 + v28);
            v34 = v28 + 1;
            while (1)
            {
              *(a2 + 1) = v34;
              v35 = *v33++;
              v32 |= (v35 & 0x7F) << v30;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              ++v34;
              v14 = v31++ > 8;
              if (v14)
              {
                goto LABEL_57;
              }
            }
          }

LABEL_74:
          *(this + 12) = v32;
          goto LABEL_78;
        case 2:
          *(this + 60) |= 2u;
          v41 = *(a2 + 1);
          v40 = *(a2 + 2);
          v42 = *a2;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
          {
            v55 = 0;
            v56 = 0;
            v45 = 0;
            v57 = (v42 + v41);
            v18 = v40 >= v41;
            v58 = v40 - v41;
            if (!v18)
            {
              v58 = 0;
            }

            v59 = v41 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v45) = 0;
                *(a2 + 24) = 1;
                goto LABEL_77;
              }

              v60 = *v57;
              *(a2 + 1) = v59;
              v45 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              ++v57;
              --v58;
              ++v59;
              v14 = v56++ > 8;
              if (v14)
              {
LABEL_67:
                LODWORD(v45) = 0;
                goto LABEL_77;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v45) = 0;
            }
          }

          else
          {
            v43 = 0;
            v44 = 0;
            v45 = 0;
            v46 = (v42 + v41);
            v47 = v41 + 1;
            while (1)
            {
              *(a2 + 1) = v47;
              v48 = *v46++;
              v45 |= (v48 & 0x7F) << v43;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v43 += 7;
              ++v47;
              v14 = v44++ > 8;
              if (v14)
              {
                goto LABEL_67;
              }
            }
          }

LABEL_77:
          *(this + 13) = v45;
          goto LABEL_78;
        case 3:
          sub_25AB06098(this + 24);
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 60) |= 4u;
        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2))
        {
          v39 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v37 = v36 + 1;
          v38 = *(*a2 + v36);
          *(a2 + 1) = v37;
          v39 = v38 != 0;
        }

        *(this + 56) = v39;
        goto LABEL_78;
      }

      if (v22 == 7)
      {
        *(this + 60) |= 8u;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2))
        {
          v26 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*a2 + v23);
          *(a2 + 1) = v24;
          v26 = v25 != 0;
        }

        *(this + 57) = v26;
        goto LABEL_78;
      }
    }

    else
    {
      if (v22 == 4)
      {
        operator new();
      }

      if (v22 == 5)
      {
        operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v62 = 0;
      return v62 & 1;
    }

LABEL_78:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v62 = v4 ^ 1;
  return v62 & 1;
}

uint64_t CMMsl::InEarBaseline::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 60);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 60);
  }

  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(v3 + 8);
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 60);
  if ((v10 & 4) != 0)
  {
    this = PB::Writer::write(a2);
    v10 = *(v3 + 60);
  }

  if ((v10 & 8) != 0)
  {

    return PB::Writer::write(a2);
  }

  return this;
}

BOOL CMMsl::InEarBaseline::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 60);
  v5 = *(a2 + 60);
  if (v4)
  {
    if ((*(a2 + 60) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if (*(a2 + 60))
  {
    return 0;
  }

  if ((*(a1 + 60) & 2) != 0)
  {
    if ((*(a2 + 60) & 2) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((*(a2 + 60) & 2) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a2 + 24);
  if (v7 - v6 == *(a2 + 32) - v8)
  {
    while (v6 != v7)
    {
      result = CMMsl::ClefMeasurement::operator==(*v6, *v8);
      if (!result)
      {
        return result;
      }

      ++v6;
      ++v8;
    }

    v10 = *(a1 + 16);
    v11 = *(a2 + 16);
    if (v10)
    {
      if (!v11 || !CMMsl::ClefMeasurement::operator==(v10, v11))
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    v12 = *(a1 + 8);
    v13 = *(a2 + 8);
    if (v12)
    {
      if (!v13 || !CMMsl::ClefMeasurement::operator==(v12, v13))
      {
        return 0;
      }
    }

    else if (v13)
    {
      return 0;
    }

    if ((v4 & 4) != 0)
    {
      if ((v5 & 4) == 0 || *(a1 + 56) != *(a2 + 56))
      {
        return 0;
      }
    }

    else if ((v5 & 4) != 0)
    {
      return 0;
    }

    result = (v5 & 8) == 0;
    if ((v4 & 8) == 0)
    {
      return result;
    }

    if ((v5 & 8) != 0 && *(a1 + 57) == *(a2 + 57))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CMMsl::InEarBaseline::hash_value(CMMsl::InEarBaseline *this)
{
  v2 = *(this + 60);
  if (v2)
  {
    v3 = *(this + 12);
    if ((*(this + 60) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 60) & 2) != 0)
    {
LABEL_3:
      v4 = *(this + 13);
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = sub_25AB065E0(*(this + 3), *(this + 4));
  v6 = *(this + 2);
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 8);
    v9 = *(v6 + 12);
    v10 = v8 == 0.0 || (v7 & 1) == 0;
    v11 = LODWORD(v8);
    if (v10)
    {
      v11 = 0;
    }

    v12 = v7 & 2;
    v13 = v9 == 0.0 || v12 == 0;
    v14 = LODWORD(v9);
    if (v13)
    {
      v14 = 0;
    }

    v6 = v14 ^ v11;
  }

  v15 = *(this + 1);
  if (v15)
  {
    v16 = *(v15 + 16);
    v17 = *(v15 + 8);
    v18 = *(v15 + 12);
    v19 = v17 == 0.0 || (v16 & 1) == 0;
    v20 = LODWORD(v17);
    if (v19)
    {
      v20 = 0;
    }

    v21 = v16 & 2;
    v22 = v18 == 0.0 || v21 == 0;
    v23 = LODWORD(v18);
    if (v22)
    {
      v23 = 0;
    }

    v15 = v23 ^ v20;
  }

  if ((v2 & 4) != 0)
  {
    v24 = *(this + 56);
    if ((v2 & 8) != 0)
    {
      goto LABEL_32;
    }

LABEL_34:
    v25 = 0;
    return v4 ^ v3 ^ v6 ^ v15 ^ v24 ^ v25 ^ v5;
  }

  v24 = 0;
  if ((v2 & 8) == 0)
  {
    goto LABEL_34;
  }

LABEL_32:
  v25 = *(this + 57);
  return v4 ^ v3 ^ v6 ^ v15 ^ v24 ^ v25 ^ v5;
}

void *CMMsl::InEarBaseline::makeOldOpenLid(void *this)
{
  if (!this[2])
  {
    operator new();
  }

  return this;
}

void *CMMsl::InEarBaseline::makeNewOpenLid(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::InEarBaselining::InEarBaselining(uint64_t this)
{
  *(this + 56) = 0;
  *this = &unk_286C20C40;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 56) = 0;
  *this = &unk_286C20C40;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void CMMsl::InEarBaselining::~InEarBaselining(CMMsl::InEarBaselining *this)
{
  *this = &unk_286C20C40;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::InEarBaselining::~InEarBaselining(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::InEarBaselining *CMMsl::InEarBaselining::InEarBaselining(CMMsl::InEarBaselining *this, const CMMsl::InEarBaselining *a2)
{
  *this = &unk_286C20C40;
  *(this + 1) = 0;
  *(this + 14) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (*(a2 + 56))
  {
    v3 = *(a2 + 4);
    *(this + 56) = 1;
    *(this + 4) = v3;
    v2 = 9;
    if ((*(a2 + 56) & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 8;
  if ((*(a2 + 56) & 8) != 0)
  {
LABEL_5:
    v4 = *(a2 + 12);
    *(this + 56) = v2;
    *(this + 12) = v4;
  }

LABEL_6:
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  v5 = *(a2 + 56);
  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 10);
    *(this + 56) |= 2u;
    *(this + 10) = v7;
    v5 = *(a2 + 56);
    if ((v5 & 0x10) == 0)
    {
LABEL_14:
      if ((v5 & 4) == 0)
      {
        return this;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a2 + 56) & 0x10) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(a2 + 13);
  *(this + 56) |= 0x10u;
  *(this + 13) = v8;
  if ((*(a2 + 56) & 4) == 0)
  {
    return this;
  }

LABEL_15:
  v6 = *(a2 + 11);
  *(this + 56) |= 4u;
  *(this + 11) = v6;
  return this;
}

uint64_t CMMsl::InEarBaselining::operator=(uint64_t a1, const CMMsl::InEarBaselining *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarBaselining::InEarBaselining(&v11, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v3;
    v4 = *(a1 + 52);
    *(a1 + 52) = v17;
    v17 = v4;
    *&v3 = v15;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *(a1 + 32) = v14;
    *(a1 + 40) = v3;
    v7 = *(a1 + 56);
    *(a1 + 56) = v18;
    v18 = v7;
    v8 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v8;
    v9 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v9;
    v14 = v5;
    v15 = v6;
    CMMsl::InEarBaselining::~InEarBaselining(&v11);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::InEarBaselining *a2, CMMsl::InEarBaselining *a3)
{
  v3 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  LODWORD(v4) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  result = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = result;
  return result;
}

uint64_t CMMsl::InEarBaselining::InEarBaselining(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20C40;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 16);
  *(a2 + 16) = 0;
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t CMMsl::InEarBaselining::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarBaselining::InEarBaselining(&v11, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v3;
    v4 = *(a1 + 52);
    *(a1 + 52) = v17;
    v17 = v4;
    *&v3 = v15;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *(a1 + 32) = v14;
    *(a1 + 40) = v3;
    v7 = *(a1 + 56);
    *(a1 + 56) = v18;
    v18 = v7;
    v8 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v8;
    v9 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v9;
    v14 = v5;
    v15 = v6;
    CMMsl::InEarBaselining::~InEarBaselining(&v11);
  }

  return a1;
}

uint64_t CMMsl::InEarBaselining::formatText(CMMsl::InEarBaselining *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "baseline");
  }

  v6 = *(this + 56);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "conchaOpenResponse", *(this + 10));
    v6 = *(this + 56);
  }

  if ((v6 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "filter", *(this + 11));
  }

  v7 = *(this + 2);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "lastBaseline");
  }

  if ((*(this + 56) & 8) != 0)
  {
    PB::TextFormatter::format(a2, "location");
  }

  v8 = *(this + 3);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "minimum");
  }

  v9 = *(this + 56);
  if ((v9 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "rho", *(this + 13));
    v9 = *(this + 56);
  }

  if (v9)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::InEarBaselining::readFrom(CMMsl::InEarBaselining *this, PB::Reader *a2)
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
          *(this + 56) |= 0x10u;
          v36 = *(a2 + 1);
          if (v36 > 0xFFFFFFFFFFFFFFFBLL || v36 + 4 > *(a2 + 2))
          {
LABEL_52:
            *(a2 + 24) = 1;
            goto LABEL_68;
          }

          *(this + 13) = *(*a2 + v36);
LABEL_62:
          v35 = *(a2 + 1) + 4;
LABEL_63:
          *(a2 + 1) = v35;
          goto LABEL_68;
        }

        if (v22 == 8)
        {
          *(this + 56) |= 4u;
          v33 = *(a2 + 1);
          if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 11) = *(*a2 + v33);
          goto LABEL_62;
        }
      }

      else
      {
        if (v22 == 5)
        {
          operator new();
        }

        if (v22 == 6)
        {
          *(this + 56) |= 2u;
          v32 = *(a2 + 1);
          if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(a2 + 2))
          {
            goto LABEL_52;
          }

          *(this + 10) = *(*a2 + v32);
          goto LABEL_62;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        operator new();
      }

      if (v22 == 4)
      {
        operator new();
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 56) |= 1u;
        v34 = *(a2 + 1);
        if (v34 > 0xFFFFFFFFFFFFFFF7 || v34 + 8 > *(a2 + 2))
        {
          goto LABEL_52;
        }

        *(this + 4) = *(*a2 + v34);
        v35 = *(a2 + 1) + 8;
        goto LABEL_63;
      }

      if (v22 == 2)
      {
        *(this + 56) |= 8u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v37 = 0;
          v38 = 0;
          v28 = 0;
          v39 = (v25 + v24);
          v18 = v23 >= v24;
          v40 = v23 - v24;
          if (!v18)
          {
            v40 = 0;
          }

          v41 = v24 + 1;
          while (1)
          {
            if (!v40)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_67;
            }

            v42 = *v39;
            *(a2 + 1) = v41;
            v28 |= (v42 & 0x7F) << v37;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            ++v39;
            --v40;
            ++v41;
            v14 = v38++ > 8;
            if (v14)
            {
LABEL_60:
              LODWORD(v28) = 0;
              goto LABEL_67;
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
              goto LABEL_60;
            }
          }
        }

LABEL_67:
        *(this + 12) = v28;
        goto LABEL_68;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v44 = 0;
      return v44 & 1;
    }

LABEL_68:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v44 = v4 ^ 1;
  return v44 & 1;
}

uint64_t CMMsl::InEarBaselining::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 56);
  }

  if ((v4 & 8) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 56);
  if ((v8 & 2) == 0)
  {
    if ((*(v3 + 56) & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    this = PB::Writer::write(a2, *(v3 + 52));
    if ((*(v3 + 56) & 4) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

  this = PB::Writer::write(a2, *(v3 + 40));
  v8 = *(v3 + 56);
  if ((v8 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  if ((v8 & 4) == 0)
  {
    return this;
  }

LABEL_17:
  v9 = *(v3 + 44);

  return PB::Writer::write(a2, v9);
}

BOOL CMMsl::InEarBaselining::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
  if (v4)
  {
    if ((*(a2 + 56) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 56))
  {
    return 0;
  }

  if ((*(a1 + 56) & 8) != 0)
  {
    if ((*(a2 + 56) & 8) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 56) & 8) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v6)
  {
    if (!v7 || !CMMsl::ClefMeasurement::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  if (v8)
  {
    if (!v9 || !CMMsl::ClefMeasurement::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  if (v10)
  {
    if (!v11 || !CMMsl::ClefMeasurement::operator==(v10, v11))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((v4 & 2) != 0)
  {
    if ((v5 & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v5 & 2) != 0)
  {
    return 0;
  }

  if ((v4 & 0x10) != 0)
  {
    if ((v5 & 0x10) == 0 || *(a1 + 52) != *(a2 + 52))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  result = (v5 & 4) == 0;
  if ((v4 & 4) == 0)
  {
    return result;
  }

  return (v5 & 4) != 0 && *(a1 + 44) == *(a2 + 44);
}

uint64_t CMMsl::InEarBaselining::hash_value(CMMsl::InEarBaselining *this)
{
  if (*(this + 56))
  {
    v1 = *(this + 4);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 56) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 56) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 12);
      goto LABEL_8;
    }
  }

  v2 = 0;
LABEL_8:
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 8);
    v6 = *(v3 + 12);
    v7 = v5 == 0.0 || (v4 & 1) == 0;
    v8 = LODWORD(v5);
    if (v7)
    {
      v8 = 0;
    }

    v9 = v4 & 2;
    v10 = v6 == 0.0 || v9 == 0;
    v11 = LODWORD(v6);
    if (v10)
    {
      v11 = 0;
    }

    v3 = v11 ^ v8;
  }

  v12 = *(this + 1);
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = *(v12 + 8);
    v15 = *(v12 + 12);
    v16 = v14 == 0.0 || (v13 & 1) == 0;
    v17 = LODWORD(v14);
    if (v16)
    {
      v17 = 0;
    }

    v18 = v13 & 2;
    v19 = v15 == 0.0 || v18 == 0;
    v20 = LODWORD(v15);
    if (v19)
    {
      v20 = 0;
    }

    v12 = v20 ^ v17;
  }

  v21 = *(this + 2);
  if (v21)
  {
    v22 = *(v21 + 16);
    v23 = *(v21 + 8);
    v24 = *(v21 + 12);
    v25 = v23 == 0.0 || (v22 & 1) == 0;
    v26 = LODWORD(v23);
    if (v25)
    {
      v26 = 0;
    }

    v27 = v22 & 2;
    v28 = v24 == 0.0 || v27 == 0;
    v29 = LODWORD(v24);
    if (v28)
    {
      v29 = 0;
    }

    v21 = v29 ^ v26;
  }

  if ((*(this + 56) & 2) != 0)
  {
    v35 = *(this + 10);
    v30 = LODWORD(v35);
    if (v35 == 0.0)
    {
      v30 = 0;
    }

    if ((*(this + 56) & 0x10) != 0)
    {
LABEL_46:
      v31 = *(this + 13);
      v32 = LODWORD(v31);
      if (v31 == 0.0)
      {
        v32 = 0;
      }

      if ((*(this + 56) & 4) != 0)
      {
        goto LABEL_49;
      }

LABEL_56:
      v34 = 0;
      return v2 ^ *&v1 ^ v3 ^ v12 ^ v21 ^ v30 ^ v32 ^ v34;
    }
  }

  else
  {
    v30 = 0;
    if ((*(this + 56) & 0x10) != 0)
    {
      goto LABEL_46;
    }
  }

  v32 = 0;
  if ((*(this + 56) & 4) == 0)
  {
    goto LABEL_56;
  }

LABEL_49:
  v33 = *(this + 11);
  v34 = LODWORD(v33);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  return v2 ^ *&v1 ^ v3 ^ v12 ^ v21 ^ v30 ^ v32 ^ v34;
}

void *CMMsl::InEarBaselining::makeMinimum(void *this)
{
  if (!this[3])
  {
    operator new();
  }

  return this;
}

void *CMMsl::InEarBaselining::makeBaseline(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void *CMMsl::InEarBaselining::makeLastBaseline(void *this)
{
  if (!this[2])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::InEarConstraints::InEarConstraints(uint64_t this)
{
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286C20C78;
  return this;
}

{
  *(this + 48) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286C20C78;
  return this;
}

void CMMsl::InEarConstraints::~InEarConstraints(CMMsl::InEarConstraints *this)
{
  *this = &unk_286C20C78;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::InEarConstraints::~InEarConstraints(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::InEarConstraints *CMMsl::InEarConstraints::InEarConstraints(CMMsl::InEarConstraints *this, const CMMsl::InEarConstraints *a2)
{
  *this = &unk_286C20C78;
  *(this + 1) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0;
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = *(a2 + 3);
    *(this + 24) = 1;
    *(this + 3) = v4;
    v3 = 3;
    if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 2;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 8);
    *(this + 24) = v3;
    *(this + 8) = v5;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  v6 = *(a2 + 24);
  if ((v6 & 0x80) != 0)
  {
    v8 = *(a2 + 41);
    *(this + 24) |= 0x80u;
    *(this + 41) = v8;
    v6 = *(a2 + 24);
    if ((v6 & 0x20) == 0)
    {
LABEL_12:
      if ((v6 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_12;
  }

  v9 = *(a2 + 39);
  *(this + 24) |= 0x20u;
  *(this + 39) = v9;
  v6 = *(a2 + 24);
  if ((v6 & 4) == 0)
  {
LABEL_13:
    if ((v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 36);
  *(this + 24) |= 4u;
  *(this + 36) = v10;
  v6 = *(a2 + 24);
  if ((v6 & 8) == 0)
  {
LABEL_14:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 37);
  *(this + 24) |= 8u;
  *(this + 37) = v11;
  v6 = *(a2 + 24);
  if ((v6 & 0x40) == 0)
  {
LABEL_15:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a2 + 40);
  *(this + 24) |= 0x40u;
  *(this + 40) = v12;
  v6 = *(a2 + 24);
  if ((v6 & 0x200) == 0)
  {
LABEL_16:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a2 + 43);
  *(this + 24) |= 0x200u;
  *(this + 43) = v13;
  v6 = *(a2 + 24);
  if ((v6 & 0x100) == 0)
  {
LABEL_17:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = *(a2 + 42);
  *(this + 24) |= 0x100u;
  *(this + 42) = v14;
  v6 = *(a2 + 24);
  if ((v6 & 0x10) == 0)
  {
LABEL_18:
    if ((v6 & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_28:
  v15 = *(a2 + 38);
  *(this + 24) |= 0x10u;
  *(this + 38) = v15;
  if ((*(a2 + 24) & 0x400) == 0)
  {
    return this;
  }

LABEL_19:
  v7 = *(a2 + 44);
  *(this + 24) |= 0x400u;
  *(this + 44) = v7;
  return this;
}

CMMsl *CMMsl::InEarConstraints::operator=(CMMsl *a1, const CMMsl::InEarConstraints *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarConstraints::InEarConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::InEarConstraints::~InEarConstraints(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::InEarConstraints *a2, CMMsl::InEarConstraints *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  LOBYTE(v7) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v7;
  LOBYTE(v7) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v7;
  LOBYTE(v7) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v7;
  LOBYTE(v7) = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = v7;
  LOBYTE(v7) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  LOBYTE(v7) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v7;
  LOBYTE(v7) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v7;
  LOBYTE(v7) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v7;
  LOBYTE(v7) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v7;
  return result;
}

uint64_t CMMsl::InEarConstraints::InEarConstraints(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_286C20C78;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(a1 + 41) = *(a2 + 41);
  *(a1 + 39) = *(a2 + 39);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 37) = *(a2 + 37);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 43) = *(a2 + 43);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 38) = *(a2 + 38);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

CMMsl *CMMsl::InEarConstraints::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarConstraints::InEarConstraints(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::InEarConstraints::~InEarConstraints(v5);
  }

  return a1;
}

uint64_t CMMsl::InEarConstraints::formatText(CMMsl::InEarConstraints *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "above");
    v5 = *(this + 24);
  }

  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "below");
  }

  v6 = *(this + 1);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "current");
  }

  v7 = *(this + 24);
  if ((v7 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "location");
    v7 = *(this + 24);
    if ((v7 & 0x10) == 0)
    {
LABEL_9:
      if ((v7 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_9;
  }

  PB::TextFormatter::format(a2, "moving");
  v7 = *(this + 24);
  if ((v7 & 0x20) == 0)
  {
LABEL_10:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "partialin");
  if ((*(this + 24) & 0x40) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(a2, "stable");
  }

LABEL_12:
  v8 = *(this + 2);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "threshold");
  }

  v9 = *(this + 24);
  if (v9)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 3));
    v9 = *(this + 24);
    if ((v9 & 0x80) == 0)
    {
LABEL_16:
      if ((v9 & 0x100) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v9 & 0x80) == 0)
  {
    goto LABEL_16;
  }

  PB::TextFormatter::format(a2, "upright");
  v9 = *(this + 24);
  if ((v9 & 0x100) == 0)
  {
LABEL_17:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "upsidedown");
  v9 = *(this + 24);
  if ((v9 & 0x200) == 0)
  {
LABEL_18:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "vertical");
  if ((*(this + 24) & 0x400) != 0)
  {
LABEL_19:
    PB::TextFormatter::format(a2, "walking");
  }

LABEL_20:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::InEarConstraints::readFrom(CMMsl::InEarConstraints *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_85:
    v74 = v4 ^ 1;
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

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_85;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 24) |= 1u;
          v22 = *(a2 + 1);
          if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(a2 + 2))
          {
            *(this + 3) = *(*a2 + v22);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_18;
        case 2u:
          *(this + 24) |= 2u;
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
                goto LABEL_83;
              }

              v46 += 7;
              ++v50;
              v14 = v47++ > 8;
            }

            while (!v14);
LABEL_68:
            LODWORD(v48) = 0;
            goto LABEL_83;
          }

          v68 = 0;
          v69 = 0;
          v48 = 0;
          v70 = (v45 + v44);
          v18 = v43 >= v44;
          v71 = v43 - v44;
          if (!v18)
          {
            v71 = 0;
          }

          v72 = v44 + 1;
          break;
        case 3u:
          operator new();
        case 4u:
          operator new();
        case 5u:
          *(this + 24) |= 0x80u;
          v27 = *(a2 + 1);
          if (v27 >= *(a2 + 2))
          {
            v30 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v28 = v27 + 1;
            v29 = *(*a2 + v27);
            *(a2 + 1) = v28;
            v30 = v29 != 0;
          }

          *(this + 41) = v30;
          goto LABEL_18;
        case 6u:
          *(this + 24) |= 0x20u;
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

          *(this + 39) = v55;
          goto LABEL_18;
        case 7u:
          *(this + 24) |= 4u;
          v56 = *(a2 + 1);
          if (v56 >= *(a2 + 2))
          {
            v59 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v57 = v56 + 1;
            v58 = *(*a2 + v56);
            *(a2 + 1) = v57;
            v59 = v58 != 0;
          }

          *(this + 36) = v59;
          goto LABEL_18;
        case 8u:
          *(this + 24) |= 8u;
          v39 = *(a2 + 1);
          if (v39 >= *(a2 + 2))
          {
            v42 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v40 = v39 + 1;
            v41 = *(*a2 + v39);
            *(a2 + 1) = v40;
            v42 = v41 != 0;
          }

          *(this + 37) = v42;
          goto LABEL_18;
        case 9u:
          *(this + 24) |= 0x40u;
          v64 = *(a2 + 1);
          if (v64 >= *(a2 + 2))
          {
            v67 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v65 = v64 + 1;
            v66 = *(*a2 + v64);
            *(a2 + 1) = v65;
            v67 = v66 != 0;
          }

          *(this + 40) = v67;
          goto LABEL_18;
        case 0xAu:
          *(this + 24) |= 0x200u;
          v35 = *(a2 + 1);
          if (v35 >= *(a2 + 2))
          {
            v38 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v36 = v35 + 1;
            v37 = *(*a2 + v35);
            *(a2 + 1) = v36;
            v38 = v37 != 0;
          }

          *(this + 43) = v38;
          goto LABEL_18;
        case 0xBu:
          *(this + 24) |= 0x100u;
          v60 = *(a2 + 1);
          if (v60 >= *(a2 + 2))
          {
            v63 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v61 = v60 + 1;
            v62 = *(*a2 + v60);
            *(a2 + 1) = v61;
            v63 = v62 != 0;
          }

          *(this + 42) = v63;
          goto LABEL_18;
        case 0xCu:
          *(this + 24) |= 0x10u;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2))
          {
            v26 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*a2 + v23);
            *(a2 + 1) = v24;
            v26 = v25 != 0;
          }

          *(this + 38) = v26;
          goto LABEL_18;
        case 0xDu:
          *(this + 24) |= 0x400u;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2))
          {
            v34 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v32 = v31 + 1;
            v33 = *(*a2 + v31);
            *(a2 + 1) = v32;
            v34 = v33 != 0;
          }

          *(this + 44) = v34;
          goto LABEL_18;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v71)
        {
          LODWORD(v48) = 0;
          *(a2 + 24) = 1;
          goto LABEL_83;
        }

        v73 = *v70;
        *(a2 + 1) = v72;
        v48 |= (v73 & 0x7F) << v68;
        if ((v73 & 0x80) == 0)
        {
          break;
        }

        v68 += 7;
        ++v70;
        --v71;
        ++v72;
        v14 = v69++ > 8;
        if (v14)
        {
          goto LABEL_68;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v48) = 0;
      }

LABEL_83:
      *(this + 8) = v48;
LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_85;
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
        goto LABEL_85;
      }

      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_21;
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
      goto LABEL_18;
    }

    v74 = 0;
  }

  return v74 & 1;
}

uint64_t CMMsl::InEarConstraints::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 48);
  }

  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 0x80) != 0)
  {
    this = PB::Writer::write(a2);
    v7 = *(v3 + 48);
    if ((v7 & 0x20) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v7 & 0x20) == 0)
  {
    goto LABEL_11;
  }

  this = PB::Writer::write(a2);
  v7 = *(v3 + 48);
  if ((v7 & 4) == 0)
  {
LABEL_12:
    if ((v7 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2);
  v7 = *(v3 + 48);
  if ((v7 & 8) == 0)
  {
LABEL_13:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2);
  v7 = *(v3 + 48);
  if ((v7 & 0x40) == 0)
  {
LABEL_14:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2);
  v7 = *(v3 + 48);
  if ((v7 & 0x200) == 0)
  {
LABEL_15:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2);
  v7 = *(v3 + 48);
  if ((v7 & 0x100) == 0)
  {
LABEL_16:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    this = PB::Writer::write(a2);
    if ((*(v3 + 48) & 0x400) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_25:
  this = PB::Writer::write(a2);
  v7 = *(v3 + 48);
  if ((v7 & 0x10) != 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  if ((v7 & 0x400) == 0)
  {
    return this;
  }

LABEL_27:

  return PB::Writer::write(a2);
}

BOOL CMMsl::InEarConstraints::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4)
  {
    if ((v5 & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((v4 & 2) != 0)
  {
    if ((v5 & 2) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((v5 & 2) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v6)
  {
    if (!v7 || !CMMsl::ClefMeasurement::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8)
  {
    if (!v9 || !CMMsl::ClefMeasurement::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((v4 & 0x80) != 0)
  {
    if ((v5 & 0x80) == 0 || *(a1 + 41) != *(a2 + 41))
    {
      return 0;
    }
  }

  else if ((v5 & 0x80) != 0)
  {
    return 0;
  }

  if ((v4 & 0x20) != 0)
  {
    if ((v5 & 0x20) == 0 || *(a1 + 39) != *(a2 + 39))
    {
      return 0;
    }
  }

  else if ((v5 & 0x20) != 0)
  {
    return 0;
  }

  if ((v4 & 4) != 0)
  {
    if ((v5 & 4) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((v5 & 4) != 0)
  {
    return 0;
  }

  if ((v4 & 8) != 0)
  {
    if ((v5 & 8) == 0 || *(a1 + 37) != *(a2 + 37))
    {
      return 0;
    }
  }

  else if ((v5 & 8) != 0)
  {
    return 0;
  }

  if ((v4 & 0x40) != 0)
  {
    if ((v5 & 0x40) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v5 & 0x40) != 0)
  {
    return 0;
  }

  if ((v4 & 0x200) != 0)
  {
    if ((v5 & 0x200) == 0 || *(a1 + 43) != *(a2 + 43))
    {
      return 0;
    }
  }

  else if ((v5 & 0x200) != 0)
  {
    return 0;
  }

  if ((v4 & 0x100) != 0)
  {
    if ((v5 & 0x100) == 0 || *(a1 + 42) != *(a2 + 42))
    {
      return 0;
    }
  }

  else if ((v5 & 0x100) != 0)
  {
    return 0;
  }

  if ((v4 & 0x10) != 0)
  {
    if ((v5 & 0x10) == 0 || *(a1 + 38) != *(a2 + 38))
    {
      return 0;
    }
  }

  else if ((v5 & 0x10) != 0)
  {
    return 0;
  }

  result = (v5 & 0x400) == 0;
  if ((v4 & 0x400) == 0)
  {
    return result;
  }

  return (v5 & 0x400) != 0 && *(a1 + 44) == *(a2 + 44);
}

uint64_t CMMsl::InEarConstraints::hash_value(CMMsl::InEarConstraints *this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = *(this + 3);
    if (v2 == 0.0)
    {
      v2 = 0.0;
    }

    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0.0;
    if ((v1 & 2) != 0)
    {
LABEL_3:
      v3 = *(this + 8);
      goto LABEL_8;
    }
  }

  v3 = 0;
LABEL_8:
  v4 = *(this + 1);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 8);
    v7 = *(v4 + 12);
    v8 = v6 == 0.0 || (v5 & 1) == 0;
    v9 = LODWORD(v6);
    if (v8)
    {
      v9 = 0;
    }

    v10 = v5 & 2;
    v11 = v7 == 0.0 || v10 == 0;
    v12 = LODWORD(v7);
    if (v11)
    {
      v12 = 0;
    }

    v4 = v12 ^ v9;
  }

  v13 = *(this + 2);
  if (v13)
  {
    v14 = *(v13 + 16);
    v15 = *(v13 + 8);
    v16 = *(v13 + 12);
    v17 = v15 == 0.0 || (v14 & 1) == 0;
    v18 = LODWORD(v15);
    if (v17)
    {
      v18 = 0;
    }

    v19 = v14 & 2;
    v20 = v16 == 0.0 || v19 == 0;
    v21 = LODWORD(v16);
    if (v20)
    {
      v21 = 0;
    }

    v13 = v21 ^ v18;
  }

  if ((v1 & 0x80) != 0)
  {
    v22 = *(this + 41);
    if ((v1 & 0x20) != 0)
    {
LABEL_34:
      v23 = *(this + 39);
      if ((v1 & 4) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v22 = 0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_34;
    }
  }

  v23 = 0;
  if ((v1 & 4) != 0)
  {
LABEL_35:
    v24 = *(this + 36);
    if ((v1 & 8) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

LABEL_44:
  v24 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_36:
    v25 = *(this + 37);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_46;
  }

LABEL_45:
  v25 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_37:
    v26 = *(this + 40);
    if ((*(this + 24) & 0x200) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_47;
  }

LABEL_46:
  v26 = 0;
  if ((*(this + 24) & 0x200) != 0)
  {
LABEL_38:
    v27 = *(this + 43);
    if ((*(this + 24) & 0x100) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_48;
  }

LABEL_47:
  v27 = 0;
  if ((*(this + 24) & 0x100) != 0)
  {
LABEL_39:
    v28 = *(this + 42);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_40;
    }

LABEL_49:
    v29 = 0;
    if ((*(this + 24) & 0x400) != 0)
    {
      goto LABEL_41;
    }

LABEL_50:
    v30 = 0;
    return v3 ^ *&v2 ^ v4 ^ v13 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
  }

LABEL_48:
  v28 = 0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_49;
  }

LABEL_40:
  v29 = *(this + 38);
  if ((*(this + 24) & 0x400) == 0)
  {
    goto LABEL_50;
  }

LABEL_41:
  v30 = *(this + 44);
  return v3 ^ *&v2 ^ v4 ^ v13 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30;
}

void *CMMsl::InEarConstraints::makeCurrent(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void *CMMsl::InEarConstraints::makeThreshold(void *this)
{
  if (!this[2])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::InEarOpenLid::InEarOpenLid(uint64_t this)
{
  *(this + 44) = 0;
  *this = &unk_286C20CB0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 44) = 0;
  *this = &unk_286C20CB0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

void CMMsl::InEarOpenLid::~InEarOpenLid(CMMsl::InEarOpenLid *this)
{
  *this = &unk_286C20CB0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::InEarOpenLid::~InEarOpenLid(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::InEarOpenLid *CMMsl::InEarOpenLid::InEarOpenLid(CMMsl::InEarOpenLid *this, const CMMsl::InEarOpenLid *a2)
{
  *this = &unk_286C20CB0;
  *(this + 1) = 0;
  *(this + 11) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (*(a2 + 44))
  {
    v3 = *(a2 + 4);
    *(this + 44) = 1;
    *(this + 4) = v3;
    v2 = 3;
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 44) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 10);
    *(this + 44) = v2;
    *(this + 10) = v4;
  }

LABEL_6:
  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::InEarOpenLid::operator=(uint64_t a1, const CMMsl::InEarOpenLid *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarOpenLid::InEarOpenLid(&v9, a2);
    v3 = v13;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *(a1 + 32) = v12;
    *(a1 + 40) = v3;
    v12 = v4;
    v13 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    CMMsl::InEarOpenLid::~InEarOpenLid(&v9);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::InEarOpenLid *a2, CMMsl::InEarOpenLid *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v5 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  v6 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v8;
  return result;
}

uint64_t CMMsl::InEarOpenLid::InEarOpenLid(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20CB0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 16);
  *(a2 + 16) = 0;
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t CMMsl::InEarOpenLid::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarOpenLid::InEarOpenLid(&v9, a2);
    v3 = v13;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    *(a1 + 32) = v12;
    *(a1 + 40) = v3;
    v12 = v4;
    v13 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v6;
    v7 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v7;
    CMMsl::InEarOpenLid::~InEarOpenLid(&v9);
  }

  return a1;
}

uint64_t CMMsl::InEarOpenLid::formatText(CMMsl::InEarOpenLid *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "current");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "last");
  }

  if ((*(this + 44) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "location");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "minimum");
  }

  if (*(this + 44))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 4));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::InEarOpenLid::readFrom(CMMsl::InEarOpenLid *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 44) |= 1u;
        v32 = *(a2 + 1);
        if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(a2 + 2))
        {
          *(this + 4) = *(*a2 + v32);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_52;
      }

      if (v22 == 2)
      {
        *(this + 44) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v33 = 0;
          v34 = 0;
          v28 = 0;
          v35 = (v25 + v24);
          v18 = v23 >= v24;
          v36 = v23 - v24;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v24 + 1;
          while (1)
          {
            if (!v36)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_51;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v28 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_46:
              LODWORD(v28) = 0;
              goto LABEL_51;
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
              goto LABEL_46;
            }
          }
        }

LABEL_51:
        *(this + 10) = v28;
        goto LABEL_52;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          operator new();
        case 4:
          operator new();
        case 5:
          operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v40 = 0;
      return v40 & 1;
    }

LABEL_52:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t CMMsl::InEarOpenLid::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 32));
    v4 = *(v3 + 44);
  }

  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 16);
  if (v7)
  {

    return PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

BOOL CMMsl::InEarOpenLid::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5 || !CMMsl::ClefMeasurement::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  if (v6)
  {
    if (!v7 || !CMMsl::ClefMeasurement::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a2 + 16);
  result = v8 == 0;
  if (!*(a1 + 16))
  {
    return result;
  }

  return v8 && CMMsl::ClefMeasurement::operator==(*(a1 + 16), v8);
}

uint64_t CMMsl::InEarOpenLid::hash_value(CMMsl::InEarOpenLid *this)
{
  if (*(this + 44))
  {
    v1 = *(this + 4);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 44) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 10);
      goto LABEL_8;
    }
  }

  v2 = 0;
LABEL_8:
  v3 = *(this + 3);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 8);
    v6 = *(v3 + 12);
    v7 = v5 == 0.0 || (v4 & 1) == 0;
    v8 = LODWORD(v5);
    if (v7)
    {
      v8 = 0;
    }

    v9 = v4 & 2;
    v10 = v6 == 0.0 || v9 == 0;
    v11 = LODWORD(v6);
    if (v10)
    {
      v11 = 0;
    }

    v3 = v11 ^ v8;
  }

  v12 = *(this + 1);
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = *(v12 + 8);
    v15 = *(v12 + 12);
    v16 = v14 == 0.0 || (v13 & 1) == 0;
    v17 = LODWORD(v14);
    if (v16)
    {
      v17 = 0;
    }

    v18 = v13 & 2;
    v19 = v15 == 0.0 || v18 == 0;
    v20 = LODWORD(v15);
    if (v19)
    {
      v20 = 0;
    }

    v12 = v20 ^ v17;
  }

  v21 = *(this + 2);
  if (v21)
  {
    v22 = *(v21 + 16);
    v23 = *(v21 + 8);
    v24 = *(v21 + 12);
    v25 = v23 == 0.0 || (v22 & 1) == 0;
    v26 = LODWORD(v23);
    if (v25)
    {
      v26 = 0;
    }

    v27 = v22 & 2;
    v28 = v24 == 0.0 || v27 == 0;
    v29 = LODWORD(v24);
    if (v28)
    {
      v29 = 0;
    }

    v21 = v29 ^ v26;
  }

  return v2 ^ *&v1 ^ v3 ^ v12 ^ v21;
}

void *CMMsl::InEarOpenLid::makeMinimum(void *this)
{
  if (!this[3])
  {
    operator new();
  }

  return this;
}

void *CMMsl::InEarOpenLid::makeCurrent(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void *CMMsl::InEarOpenLid::makeLast(void *this)
{
  if (!this[2])
  {
    operator new();
  }

  return this;
}

double CMMsl::InEarOptical::InEarOptical(CMMsl::InEarOptical *this)
{
  *this = &unk_286C20CE8;
  *(this + 23) = 0;
  *(this + 27) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = &unk_286C20CE8;
  *(this + 23) = 0;
  *(this + 27) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

void CMMsl::InEarOptical::~InEarOptical(CMMsl::InEarOptical *this)
{
  *this = &unk_286C20CE8;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    *(this + 2) = v5;
    operator delete(v5);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::InEarOptical::~InEarOptical(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::InEarOptical *CMMsl::InEarOptical::InEarOptical(CMMsl::InEarOptical *this, const CMMsl::InEarOptical *a2)
{
  *this = &unk_286C20CE8;
  *(this + 8) = 0u;
  *(this + 23) = 0;
  *(this + 27) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (*(a2 + 108))
  {
    v5 = *(a2 + 9);
    *(this + 108) = 1;
    *(this + 9) = v5;
    v4 = 9;
    if ((*(a2 + 108) & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 8;
  if ((*(a2 + 108) & 8) != 0)
  {
LABEL_5:
    v6 = *(a2 + 22);
    *(this + 108) = v4;
    *(this + 22) = v6;
  }

LABEL_6:
  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  v7 = *(a2 + 108);
  if ((v7 & 0x40) != 0)
  {
    v13 = *(a2 + 25);
    *(this + 108) |= 0x40u;
    *(this + 25) = v13;
    v7 = *(a2 + 108);
    if ((v7 & 0x20) == 0)
    {
LABEL_14:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else if ((*(a2 + 108) & 0x20) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(a2 + 24);
  *(this + 108) |= 0x20u;
  *(this + 24) = v14;
  v7 = *(a2 + 108);
  if ((v7 & 0x80) == 0)
  {
LABEL_15:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_26:
  v15 = *(a2 + 104);
  *(this + 108) |= 0x80u;
  *(this + 104) = v15;
  if ((*(a2 + 108) & 0x10) != 0)
  {
LABEL_16:
    v8 = *(a2 + 23);
    *(this + 108) |= 0x10u;
    *(this + 23) = v8;
  }

LABEL_17:
  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
  }

  v9 = *(a2 + 108);
  if ((v9 & 2) != 0)
  {
    v10 = *(a2 + 20);
    *(this + 108) |= 2u;
    *(this + 20) = v10;
    v9 = *(a2 + 108);
  }

  if ((v9 & 4) != 0)
  {
    v11 = *(a2 + 21);
    *(this + 108) |= 4u;
    *(this + 21) = v11;
  }

  return this;
}

CMMsl *CMMsl::InEarOptical::operator=(CMMsl *a1, const CMMsl::InEarOptical *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarOptical::InEarOptical(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::InEarOptical::~InEarOptical(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::InEarOptical *a2, CMMsl::InEarOptical *a3)
{
  v3 = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v3;
  v4 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  LOBYTE(v8) = *(this + 104);
  *(this + 104) = *(a2 + 104);
  *(a2 + 104) = v8;
  LODWORD(v8) = *(this + 22);
  v9 = *(this + 23);
  v10 = *(a2 + 23);
  *(this + 22) = *(a2 + 22);
  *(this + 23) = v10;
  v11 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v11;
  LODWORD(v11) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v11;
  LODWORD(v11) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  *(a2 + 22) = v8;
  *(a2 + 23) = v9;
  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
  v13 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v13;
  v14 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v14;
  LODWORD(v11) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v11;
  result = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = result;
  return result;
}

uint64_t CMMsl::InEarOptical::InEarOptical(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20CE8;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 92) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 108) = *(a2 + 108);
  *(a2 + 108) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v6 = *(a1 + 56);
  *(a1 + 56) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 64);
  *(a2 + 64) = 0;
  v8 = *(a1 + 64);
  *(a1 + 64) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 92) = *(a2 + 92);
  sub_25AD28758(a1 + 32, (a2 + 32));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  return a1;
}

CMMsl *CMMsl::InEarOptical::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarOptical::InEarOptical(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::InEarOptical::~InEarOptical(v5);
  }

  return a1;
}

uint64_t CMMsl::InEarOptical::formatText(CMMsl::InEarOptical *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "acceleration", v7);
  }

  if ((*(this + 108) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "correlation", *(this + 20));
  }

  v8 = *(this + 7);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "current");
  }

  if ((*(this + 108) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "deltatip", *(this + 21));
  }

  v9 = *(this + 8);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "instability");
  }

  v10 = *(this + 108);
  if ((v10 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "location");
    v10 = *(this + 108);
    if ((v10 & 0x10) == 0)
    {
LABEL_13:
      if ((v10 & 0x20) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((*(this + 108) & 0x10) == 0)
  {
    goto LABEL_13;
  }

  PB::TextFormatter::format(a2, "state");
  v10 = *(this + 108);
  if ((v10 & 0x20) == 0)
  {
LABEL_14:
    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "tilt", *(this + 24));
  v10 = *(this + 108);
  if ((v10 & 1) == 0)
  {
LABEL_15:
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_16;
    }

LABEL_26:
    PB::TextFormatter::format(a2, "tip", *(this + 25));
    if ((*(this + 108) & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "timestamp", *(this + 9));
  v10 = *(this + 108);
  if ((v10 & 0x40) != 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  if ((v10 & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "upright");
LABEL_17:
  v11 = *(this + 4);
  v12 = *(this + 5);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(a2, "variance", v13);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::InEarOptical::readFrom(CMMsl::InEarOptical *this, PB::Reader *a2)
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
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) > 6)
    {
      if (v23 > 9)
      {
        if (v23 != 10)
        {
          if (v23 == 11)
          {
            *(this + 108) |= 2u;
            v83 = *(a2 + 1);
            if (v83 > 0xFFFFFFFFFFFFFFFBLL || v83 + 4 > *(a2 + 2))
            {
              goto LABEL_164;
            }

            *(this + 20) = *(*a2 + v83);
          }

          else
          {
            if (v23 != 12)
            {
              goto LABEL_17;
            }

            *(this + 108) |= 4u;
            v34 = *(a2 + 1);
            if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(a2 + 2))
            {
LABEL_164:
              *(a2 + 24) = 1;
              goto LABEL_168;
            }

            *(this + 21) = *(*a2 + v34);
          }

LABEL_166:
          v36 = *(a2 + 1) + 4;
LABEL_167:
          *(a2 + 1) = v36;
          goto LABEL_168;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_174;
          }

          v38 = *(a2 + 1);
          v39 = *(a2 + 2);
          while (v38 < v39 && (*(a2 + 24) & 1) == 0)
          {
            v41 = *(this + 5);
            v40 = *(this + 6);
            if (v41 >= v40)
            {
              v43 = *(this + 4);
              v44 = v41 - v43;
              v45 = (v41 - v43) >> 2;
              v46 = v45 + 1;
              if ((v45 + 1) >> 62)
              {
                goto LABEL_176;
              }

              v47 = v40 - v43;
              if (v47 >> 1 > v46)
              {
                v46 = v47 >> 1;
              }

              if (v47 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v48 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v46;
              }

              if (v48)
              {
                sub_25AD288E8(v48);
              }

              v49 = (v41 - v43) >> 2;
              v50 = (4 * v45);
              v51 = (4 * v45 - 4 * v49);
              *v50 = 0;
              v42 = v50 + 1;
              memcpy(v51, v43, v44);
              v52 = *(this + 4);
              *(this + 4) = v51;
              *(this + 5) = v42;
              *(this + 6) = 0;
              if (v52)
              {
                operator delete(v52);
              }
            }

            else
            {
              *v41 = 0;
              v42 = v41 + 4;
            }

            *(this + 5) = v42;
            v53 = *(a2 + 1);
            if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(a2 + 2))
            {
LABEL_131:
              *(a2 + 24) = 1;
              break;
            }

            *(v42 - 1) = *(*a2 + v53);
            v39 = *(a2 + 2);
            v38 = *(a2 + 1) + 4;
            *(a2 + 1) = v38;
          }

LABEL_56:
          PB::Reader::recallMark();
          goto LABEL_168;
        }

        v97 = *(this + 5);
        v96 = *(this + 6);
        if (v97 >= v96)
        {
          v101 = *(this + 4);
          v102 = v97 - v101;
          v103 = (v97 - v101) >> 2;
          v104 = v103 + 1;
          if ((v103 + 1) >> 62)
          {
            goto LABEL_176;
          }

          v105 = v96 - v101;
          if (v105 >> 1 > v104)
          {
            v104 = v105 >> 1;
          }

          if (v105 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v106 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v106 = v104;
          }

          if (v106)
          {
            sub_25AD288E8(v106);
          }

          v113 = (v97 - v101) >> 2;
          v114 = (4 * v103);
          v115 = (4 * v103 - 4 * v113);
          *v114 = 0;
          v98 = v114 + 1;
          memcpy(v115, v101, v102);
          v116 = *(this + 4);
          *(this + 4) = v115;
          *(this + 5) = v98;
          *(this + 6) = 0;
          if (v116)
          {
            operator delete(v116);
          }
        }

        else
        {
          *v97 = 0;
          v98 = v97 + 4;
        }

        *(this + 5) = v98;
LABEL_162:
        v121 = *(a2 + 1);
        if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(a2 + 2))
        {
          goto LABEL_164;
        }

        *(v98 - 1) = *(*a2 + v121);
        goto LABEL_166;
      }

      switch(v23)
      {
        case 7:
          *(this + 108) |= 0x20u;
          v37 = *(a2 + 1);
          if (v37 > 0xFFFFFFFFFFFFFFFBLL || v37 + 4 > *(a2 + 2))
          {
            goto LABEL_164;
          }

          *(this + 24) = *(*a2 + v37);
          goto LABEL_166;
        case 8:
          *(this + 108) |= 0x80u;
          v63 = *(a2 + 1);
          if (v63 >= *(a2 + 2))
          {
            v66 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v64 = v63 + 1;
            v65 = *(*a2 + v63);
            *(a2 + 1) = v64;
            v66 = v65 != 0;
          }

          *(this + 104) = v66;
          break;
        case 9:
          *(this + 108) |= 0x10u;
          v25 = *(a2 + 1);
          v24 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
          {
            v84 = 0;
            v85 = 0;
            v29 = 0;
            v86 = (v26 + v25);
            v18 = v24 >= v25;
            v87 = v24 - v25;
            if (!v18)
            {
              v87 = 0;
            }

            v88 = v25 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_152;
              }

              v89 = *v86;
              *(a2 + 1) = v88;
              v29 |= (v89 & 0x7F) << v84;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v84 += 7;
              ++v86;
              --v87;
              ++v88;
              v14 = v85++ > 8;
              if (v14)
              {
LABEL_116:
                LODWORD(v29) = 0;
                goto LABEL_152;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }
          }

          else
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = (v26 + v25);
            v31 = v25 + 1;
            while (1)
            {
              *(a2 + 1) = v31;
              v32 = *v30++;
              v29 |= (v32 & 0x7F) << v27;
              if ((v32 & 0x80) == 0)
              {
                break;
              }

              v27 += 7;
              ++v31;
              v14 = v28++ > 8;
              if (v14)
              {
                goto LABEL_116;
              }
            }
          }

LABEL_152:
          *(this + 23) = v29;
          break;
        default:
          goto LABEL_17;
      }
    }

    else
    {
      if (v23 > 3)
      {
        if (v23 == 4)
        {
          operator new();
        }

        if (v23 != 5)
        {
          if (v23 != 6)
          {
            goto LABEL_17;
          }

          *(this + 108) |= 0x40u;
          v33 = *(a2 + 1);
          if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(a2 + 2))
          {
            goto LABEL_164;
          }

          *(this + 25) = *(*a2 + v33);
          goto LABEL_166;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_174:
            v122 = 0;
            return v122 & 1;
          }

          v67 = *(a2 + 1);
          v68 = *(a2 + 2);
          while (v67 < v68 && (*(a2 + 24) & 1) == 0)
          {
            v70 = *(this + 2);
            v69 = *(this + 3);
            if (v70 >= v69)
            {
              v72 = *(this + 1);
              v73 = v70 - v72;
              v74 = (v70 - v72) >> 2;
              v75 = v74 + 1;
              if ((v74 + 1) >> 62)
              {
                goto LABEL_176;
              }

              v76 = v69 - v72;
              if (v76 >> 1 > v75)
              {
                v75 = v76 >> 1;
              }

              if (v76 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v77 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v77 = v75;
              }

              if (v77)
              {
                sub_25AD288E8(v77);
              }

              v78 = (v70 - v72) >> 2;
              v79 = (4 * v74);
              v80 = (4 * v74 - 4 * v78);
              *v79 = 0;
              v71 = v79 + 1;
              memcpy(v80, v72, v73);
              v81 = *(this + 1);
              *(this + 1) = v80;
              *(this + 2) = v71;
              *(this + 3) = 0;
              if (v81)
              {
                operator delete(v81);
              }
            }

            else
            {
              *v70 = 0;
              v71 = v70 + 4;
            }

            *(this + 2) = v71;
            v82 = *(a2 + 1);
            if (v82 > 0xFFFFFFFFFFFFFFFBLL || v82 + 4 > *(a2 + 2))
            {
              goto LABEL_131;
            }

            *(v71 - 1) = *(*a2 + v82);
            v68 = *(a2 + 2);
            v67 = *(a2 + 1) + 4;
            *(a2 + 1) = v67;
          }

          goto LABEL_56;
        }

        v100 = *(this + 2);
        v99 = *(this + 3);
        if (v100 >= v99)
        {
          v107 = *(this + 1);
          v108 = v100 - v107;
          v109 = (v100 - v107) >> 2;
          v110 = v109 + 1;
          if ((v109 + 1) >> 62)
          {
LABEL_176:
            sub_25AAE66B8();
          }

          v111 = v99 - v107;
          if (v111 >> 1 > v110)
          {
            v110 = v111 >> 1;
          }

          if (v111 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v112 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v112 = v110;
          }

          if (v112)
          {
            sub_25AD288E8(v112);
          }

          v117 = (v100 - v107) >> 2;
          v118 = (4 * v109);
          v119 = (4 * v109 - 4 * v117);
          *v118 = 0;
          v98 = v118 + 1;
          memcpy(v119, v107, v108);
          v120 = *(this + 1);
          *(this + 1) = v119;
          *(this + 2) = v98;
          *(this + 3) = 0;
          if (v120)
          {
            operator delete(v120);
          }
        }

        else
        {
          *v100 = 0;
          v98 = v100 + 4;
        }

        *(this + 2) = v98;
        goto LABEL_162;
      }

      if (v23 == 1)
      {
        *(this + 108) |= 1u;
        v35 = *(a2 + 1);
        if (v35 > 0xFFFFFFFFFFFFFFF7 || v35 + 8 > *(a2 + 2))
        {
          goto LABEL_164;
        }

        *(this + 9) = *(*a2 + v35);
        v36 = *(a2 + 1) + 8;
        goto LABEL_167;
      }

      if (v23 != 2)
      {
        if (v23 == 3)
        {
          operator new();
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_174;
        }

        goto LABEL_168;
      }

      *(this + 108) |= 8u;
      v55 = *(a2 + 1);
      v54 = *(a2 + 2);
      v56 = *a2;
      if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v54)
      {
        v90 = 0;
        v91 = 0;
        v59 = 0;
        v92 = (v56 + v55);
        v18 = v54 >= v55;
        v93 = v54 - v55;
        if (!v18)
        {
          v93 = 0;
        }

        v94 = v55 + 1;
        while (1)
        {
          if (!v93)
          {
            LODWORD(v59) = 0;
            *(a2 + 24) = 1;
            goto LABEL_155;
          }

          v95 = *v92;
          *(a2 + 1) = v94;
          v59 |= (v95 & 0x7F) << v90;
          if ((v95 & 0x80) == 0)
          {
            break;
          }

          v90 += 7;
          ++v92;
          --v93;
          ++v94;
          v14 = v91++ > 8;
          if (v14)
          {
LABEL_124:
            LODWORD(v59) = 0;
            goto LABEL_155;
          }
        }

        if (*(a2 + 24))
        {
          LODWORD(v59) = 0;
        }
      }

      else
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        v60 = (v56 + v55);
        v61 = v55 + 1;
        while (1)
        {
          *(a2 + 1) = v61;
          v62 = *v60++;
          v59 |= (v62 & 0x7F) << v57;
          if ((v62 & 0x80) == 0)
          {
            break;
          }

          v57 += 7;
          ++v61;
          v14 = v58++ > 8;
          if (v14)
          {
            goto LABEL_124;
          }
        }
      }

LABEL_155:
      *(this + 22) = v59;
    }

LABEL_168:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v122 = v4 ^ 1;
  return v122 & 1;
}

uint64_t CMMsl::InEarOptical::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 108);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 72));
    v4 = *(v3 + 108);
  }

  if ((v4 & 8) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 56);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 64);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 8);
  v8 = *(v3 + 16);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = *(v3 + 108);
  if ((v10 & 0x40) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 100));
    v10 = *(v3 + 108);
    if ((v10 & 0x20) == 0)
    {
LABEL_14:
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_15;
      }

LABEL_26:
      this = PB::Writer::write(a2);
      if ((*(v3 + 108) & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(v3 + 108) & 0x20) == 0)
  {
    goto LABEL_14;
  }

  this = PB::Writer::write(a2, *(v3 + 96));
  v10 = *(v3 + 108);
  if (v10 < 0)
  {
    goto LABEL_26;
  }

LABEL_15:
  if ((v10 & 0x10) != 0)
  {
LABEL_16:
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_17:
  v11 = *(v3 + 32);
  v12 = *(v3 + 40);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::write(a2, v13);
  }

  v14 = *(v3 + 108);
  if ((v14 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 80));
    v14 = *(v3 + 108);
  }

  if ((v14 & 4) != 0)
  {
    v15 = *(v3 + 84);

    return PB::Writer::write(a2, v15);
  }

  return this;
}

BOOL CMMsl::InEarOptical::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 108);
  v5 = *(a2 + 108);
  if (v4)
  {
    if ((v5 & 1) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((v4 & 8) != 0)
  {
    if ((v5 & 8) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((v5 & 8) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a2 + 56);
  if (v6)
  {
    if (!v7 || !CMMsl::ClefMeasurement::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 64);
  v9 = *(a2 + 64);
  if (v8)
  {
    if (!v9 || !CMMsl::ClefMeasurement::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = *(a1 + 8);
  v10 = *(a1 + 16);
  v12 = *(a2 + 8);
  if (v10 - v11 == *(a2 + 16) - v12)
  {
    while (v11 != v10)
    {
      if (*v11 != *v12)
      {
        return 0;
      }

      ++v11;
      ++v12;
    }

    if ((v4 & 0x40) != 0)
    {
      if ((v5 & 0x40) == 0 || *(a1 + 100) != *(a2 + 100))
      {
        return 0;
      }
    }

    else if ((v5 & 0x40) != 0)
    {
      return 0;
    }

    if ((v4 & 0x20) != 0)
    {
      if ((v5 & 0x20) == 0 || *(a1 + 96) != *(a2 + 96))
      {
        return 0;
      }
    }

    else if ((v5 & 0x20) != 0)
    {
      return 0;
    }

    if ((v5 & v4 & 0x80) != 0)
    {
      if (*(a1 + 104) != *(a2 + 104))
      {
        return 0;
      }
    }

    else if (((v5 | v4) & 0x80) != 0)
    {
      return 0;
    }

    if ((v4 & 0x10) != 0)
    {
      if ((v5 & 0x10) == 0 || *(a1 + 92) != *(a2 + 92))
      {
        return 0;
      }
    }

    else if ((v5 & 0x10) != 0)
    {
      return 0;
    }

    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(a2 + 32);
    if (v13 - v14 == *(a2 + 40) - v15)
    {
      while (v14 != v13)
      {
        if (*v14 != *v15)
        {
          return 0;
        }

        ++v14;
        ++v15;
      }

      if ((v4 & 2) != 0)
      {
        if ((v5 & 2) == 0 || *(a1 + 80) != *(a2 + 80))
        {
          return 0;
        }
      }

      else if ((v5 & 2) != 0)
      {
        return 0;
      }

      result = (v5 & 4) == 0;
      if ((v4 & 4) == 0)
      {
        return result;
      }

      if ((v5 & 4) != 0 && *(a1 + 84) == *(a2 + 84))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t CMMsl::InEarOptical::hash_value(CMMsl::InEarOptical *this)
{
  if (*(this + 108))
  {
    if (*(this + 9) == 0.0)
    {
      v2 = 0;
    }

    else
    {
      v2 = *(this + 9);
    }

    if ((*(this + 108) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 108) & 8) != 0)
    {
LABEL_3:
      v3 = *(this + 22);
      goto LABEL_9;
    }
  }

  v3 = 0;
LABEL_9:
  v4 = *(this + 7);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 8);
    v7 = *(v4 + 12);
    v8 = v6 == 0.0 || (v5 & 1) == 0;
    v9 = LODWORD(v6);
    if (v8)
    {
      v9 = 0;
    }

    v10 = v5 & 2;
    v11 = v7 == 0.0 || v10 == 0;
    v12 = LODWORD(v7);
    if (v11)
    {
      v12 = 0;
    }

    v13 = v12 ^ v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(this + 8);
  if (v14)
  {
    v15 = *(v14 + 16);
    v16 = *(v14 + 8);
    v17 = *(v14 + 12);
    v18 = v16 == 0.0 || (v15 & 1) == 0;
    v19 = LODWORD(v16);
    if (v18)
    {
      v19 = 0;
    }

    v20 = v15 & 2;
    v21 = v17 == 0.0 || v20 == 0;
    v22 = LODWORD(v17);
    if (v21)
    {
      v22 = 0;
    }

    v23 = v22 ^ v19;
  }

  else
  {
    v23 = 0;
  }

  v24 = PBHashBytes();
  if ((*(this + 108) & 0x40) == 0)
  {
    v25 = 0;
    if ((*(this + 108) & 0x20) != 0)
    {
      goto LABEL_37;
    }

LABEL_47:
    v27 = 0;
    if ((*(this + 108) & 0x80) != 0)
    {
      goto LABEL_41;
    }

LABEL_48:
    v28 = 0;
    if ((*(this + 108) & 0x10) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  v30 = *(this + 25);
  if (v30 == 0.0)
  {
    v25 = 0;
  }

  else
  {
    v25 = LODWORD(v30);
  }

  if ((*(this + 108) & 0x20) == 0)
  {
    goto LABEL_47;
  }

LABEL_37:
  v26 = *(this + 24);
  if (v26 == 0.0)
  {
    v27 = 0;
  }

  else
  {
    v27 = LODWORD(v26);
  }

  if ((*(this + 108) & 0x80) == 0)
  {
    goto LABEL_48;
  }

LABEL_41:
  v28 = *(this + 104);
  if ((*(this + 108) & 0x10) != 0)
  {
LABEL_42:
    v29 = *(this + 23);
    goto LABEL_50;
  }

LABEL_49:
  v29 = 0;
LABEL_50:
  v31 = PBHashBytes();
  if ((*(this + 108) & 2) != 0)
  {
    v35 = *(this + 20);
    v32 = LODWORD(v35);
    if (v35 == 0.0)
    {
      v32 = 0;
    }

    if ((*(this + 108) & 4) != 0)
    {
      goto LABEL_52;
    }

LABEL_58:
    v34 = 0;
    return v3 ^ v2 ^ v13 ^ v23 ^ v25 ^ v27 ^ v28 ^ v29 ^ v24 ^ v31 ^ v32 ^ v34;
  }

  v32 = 0;
  if ((*(this + 108) & 4) == 0)
  {
    goto LABEL_58;
  }

LABEL_52:
  v33 = *(this + 21);
  v34 = LODWORD(v33);
  if (v33 == 0.0)
  {
    v34 = 0;
  }

  return v3 ^ v2 ^ v13 ^ v23 ^ v25 ^ v27 ^ v28 ^ v29 ^ v24 ^ v31 ^ v32 ^ v34;
}

void *CMMsl::InEarOptical::makeCurrent(void *this)
{
  if (!this[7])
  {
    operator new();
  }

  return this;
}

void *CMMsl::InEarOptical::makeInstability(void *this)
{
  if (!this[8])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::InEarSession::InEarSession(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286C20D20;
  return this;
}

{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_286C20D20;
  return this;
}

void CMMsl::InEarSession::~InEarSession(CMMsl::InEarSession *this)
{
  *this = &unk_286C20D20;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::InEarSession::~InEarSession(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::InEarSession *CMMsl::InEarSession::InEarSession(CMMsl::InEarSession *this, const CMMsl::InEarSession *a2)
{
  *this = &unk_286C20D20;
  *(this + 1) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 2) = 0;
  if (*(a2 + 32))
  {
    v3 = *(a2 + 6);
    *(this + 32) = 1;
    *(this + 6) = v3;
    v2 = 3;
    if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 32) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 7);
    *(this + 32) = v2;
    *(this + 7) = v4;
  }

LABEL_6:
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::InEarSession::operator=(uint64_t a1, const CMMsl::InEarSession *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarSession::InEarSession(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    CMMsl::InEarSession::~InEarSession(v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::InEarSession *a2, CMMsl::InEarSession *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  result = *(a2 + 3);
  v5 = *(this + 3);
  *(this + 3) = result;
  *(a2 + 3) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v7;
  return result;
}

uint64_t CMMsl::InEarSession::InEarSession(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_286C20D20;
  *(a1 + 28) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  v8 = *v4;
  *v4 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  return a1;
}

uint64_t CMMsl::InEarSession::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarSession::InEarSession(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v5;
    CMMsl::InEarSession::~InEarSession(v7);
  }

  return a1;
}

uint64_t CMMsl::InEarSession::formatText(CMMsl::InEarSession *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 32))
  {
    PB::TextFormatter::format(a2, "location");
  }

  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "maximum");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "minimum");
  }

  if ((*(this + 32) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "state");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::InEarSession::readFrom(CMMsl::InEarSession *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        operator new();
      }

      if (v22 == 4)
      {
        operator new();
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v47 = 0;
          v48 = 0;
          v37 = 0;
          v49 = (v34 + v33);
          v18 = v32 >= v33;
          v50 = v32 - v33;
          if (!v18)
          {
            v50 = 0;
          }

          v51 = v33 + 1;
          while (1)
          {
            if (!v50)
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
              goto LABEL_64;
            }

            v52 = *v49;
            *(a2 + 1) = v51;
            v37 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            ++v49;
            --v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_56:
              LODWORD(v37) = 0;
              goto LABEL_64;
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
              goto LABEL_56;
            }
          }
        }

LABEL_64:
        *(this + 6) = v37;
        goto LABEL_65;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v41 = 0;
          v42 = 0;
          v28 = 0;
          v43 = (v25 + v24);
          v18 = v23 >= v24;
          v44 = v23 - v24;
          if (!v18)
          {
            v44 = 0;
          }

          v45 = v24 + 1;
          while (1)
          {
            if (!v44)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_61;
            }

            v46 = *v43;
            *(a2 + 1) = v45;
            v28 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v43;
            --v44;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
LABEL_48:
              LODWORD(v28) = 0;
              goto LABEL_61;
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
              goto LABEL_48;
            }
          }
        }

LABEL_61:
        *(this + 7) = v28;
        goto LABEL_65;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v54 = 0;
      return v54 & 1;
    }

LABEL_65:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t CMMsl::InEarSession::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 32);
  }

  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 8);
  if (v6)
  {

    return PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

BOOL CMMsl::InEarSession::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !CMMsl::ClefMeasurement::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a2 + 8);
  result = v6 == 0;
  if (!*(a1 + 8))
  {
    return result;
  }

  return v6 && CMMsl::ClefMeasurement::operator==(*(a1 + 8), v6);
}

uint64_t CMMsl::InEarSession::hash_value(CMMsl::InEarSession *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 6);
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = 0;
    if ((*(this + 32) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 7);
      goto LABEL_6;
    }
  }

  v2 = 0;
LABEL_6:
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 8);
    v6 = *(v3 + 12);
    v7 = v5 == 0.0 || (v4 & 1) == 0;
    v8 = LODWORD(v5);
    if (v7)
    {
      v8 = 0;
    }

    v9 = v4 & 2;
    v10 = v6 == 0.0 || v9 == 0;
    v11 = LODWORD(v6);
    if (v10)
    {
      v11 = 0;
    }

    v3 = v11 ^ v8;
  }

  v12 = *(this + 1);
  if (v12)
  {
    v13 = *(v12 + 16);
    v14 = *(v12 + 8);
    v15 = *(v12 + 12);
    v16 = v14 == 0.0 || (v13 & 1) == 0;
    v17 = LODWORD(v14);
    if (v16)
    {
      v17 = 0;
    }

    v18 = v13 & 2;
    v19 = v15 == 0.0 || v18 == 0;
    v20 = LODWORD(v15);
    if (v19)
    {
      v20 = 0;
    }

    v12 = v20 ^ v17;
  }

  return v2 ^ v1 ^ v3 ^ v12;
}

void *CMMsl::InEarSession::makeMinimum(void *this)
{
  if (!this[2])
  {
    operator new();
  }

  return this;
}

void *CMMsl::InEarSession::makeMaximum(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

double CMMsl::InEarTransition::InEarTransition(CMMsl::InEarTransition *this)
{
  *this = &unk_286C20D58;
  result = 0.0;
  *(this + 2) = 0;
  *(this + 28) = 0;
  return result;
}

{
  *this = &unk_286C20D58;
  result = 0.0;
  *(this + 2) = 0;
  *(this + 28) = 0;
  return result;
}

void CMMsl::InEarTransition::~InEarTransition(CMMsl::InEarTransition *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::InEarTransition::InEarTransition(uint64_t this, const CMMsl::InEarTransition *a2)
{
  *this = &unk_286C20D58;
  *(this + 16) = 0;
  *(this + 28) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 32) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 6);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 4u;
    *(this + 32) = v3;
    *(this + 20) = v6;
    v2 = *(a2 + 32);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        return this;
      }

LABEL_12:
      v8 = *(a2 + 7);
      *(this + 32) = v3 | 0x10;
      *(this + 28) = v8;
      return this;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 2u;
  *(this + 32) = v3;
  *(this + 16) = v7;
  if ((*(a2 + 32) & 0x10) != 0)
  {
    goto LABEL_12;
  }

  return this;
}

uint64_t CMMsl::InEarTransition::operator=(uint64_t a1, const CMMsl::InEarTransition *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarTransition::InEarTransition(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v10;
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

double CMMsl::swap(CMMsl *this, CMMsl::InEarTransition *a2, CMMsl::InEarTransition *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  result = *(a2 + 2);
  v7 = *(this + 2);
  *(this + 2) = result;
  *(a2 + 2) = v7;
  v8 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v8;
  return result;
}

double CMMsl::InEarTransition::InEarTransition(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20D58;
  *(a1 + 16) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

{
  *a1 = &unk_286C20D58;
  *(a1 + 16) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t CMMsl::InEarTransition::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C20D58;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 8);
    v11 = *(a1 + 32);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9[1] = v5;
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    *(a1 + 32) = v3;
    *(a1 + 16) = v7;
    v10 = v6;
    PB::Base::~Base(v9);
  }

  return a1;
}

uint64_t CMMsl::InEarTransition::formatText(CMMsl::InEarTransition *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "eventTag");
    v5 = *(this + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "from");
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "location");
  v5 = *(this + 32);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "to");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::InEarTransition::readFrom(CMMsl::InEarTransition *this, PB::Reader *a2)
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
          goto LABEL_22;
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

LABEL_22:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 2)
    {
      if (v22 == 1)
      {
        *(this + 32) |= 1u;
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

        goto LABEL_19;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 8u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v76 = 0;
          v77 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v78 = (v32 + v31);
          v79 = v2 - v31;
          v80 = v31 + 1;
          while (1)
          {
            if (!v79)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_112;
            }

            v81 = v80;
            v82 = *v78;
            *(a2 + 1) = v81;
            v35 |= (v82 & 0x7F) << v76;
            if ((v82 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            ++v78;
            --v79;
            v80 = v81 + 1;
            v14 = v77++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_111;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_111:
          v2 = v81;
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

LABEL_112:
        *(this + 6) = v35;
        goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 32) |= 4u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v55 = 0;
            v56 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v57 = (v40 + v39);
            v58 = v2 - v39;
            v59 = v39 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_100;
              }

              v60 = v59;
              v61 = *v57;
              *(a2 + 1) = v60;
              v43 |= (v61 & 0x7F) << v55;
              if ((v61 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              ++v57;
              --v58;
              v59 = v60 + 1;
              v14 = v56++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_99;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_99:
            v2 = v60;
          }

          else
          {
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v44 = (v40 + v39);
            v45 = v39 + 1;
            while (1)
            {
              v2 = v45;
              *(a2 + 1) = v45;
              v46 = *v44++;
              v43 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                break;
              }
            }
          }

LABEL_100:
          *(this + 5) = v43;
          goto LABEL_19;
        case 4:
          *(this + 32) |= 2u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v62 = 0;
            v63 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(a2 + 1);
            }

            v64 = (v48 + v47);
            v65 = v2 - v47;
            v66 = v47 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v51) = 0;
                *(a2 + 24) = 1;
                goto LABEL_104;
              }

              v67 = v66;
              v68 = *v64;
              *(a2 + 1) = v67;
              v51 |= (v68 & 0x7F) << v62;
              if ((v68 & 0x80) == 0)
              {
                break;
              }

              v62 += 7;
              ++v64;
              --v65;
              v66 = v67 + 1;
              v14 = v63++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                goto LABEL_103;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v51) = 0;
            }

LABEL_103:
            v2 = v67;
          }

          else
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            while (1)
            {
              v2 = v53;
              *(a2 + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v51) = 0;
                break;
              }
            }
          }

LABEL_104:
          *(this + 4) = v51;
          goto LABEL_19;
        case 5:
          *(this + 32) |= 0x10u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v69 = 0;
            v70 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v71 = (v24 + v23);
            v72 = v2 - v23;
            v73 = v23 + 1;
            while (1)
            {
              if (!v72)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_108;
              }

              v74 = v73;
              v75 = *v71;
              *(a2 + 1) = v74;
              v27 |= (v75 & 0x7F) << v69;
              if ((v75 & 0x80) == 0)
              {
                break;
              }

              v69 += 7;
              ++v71;
              --v72;
              v73 = v74 + 1;
              v14 = v70++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_107;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_107:
            v2 = v74;
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

LABEL_108:
          *(this + 7) = v27;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v83 = 0;
      return v83 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t CMMsl::InEarTransition::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 32) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if ((v4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::InEarTransition::operator==(uint64_t a1, uint64_t a2)
{
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

  if ((*(a1 + 32) & 8) != 0)
  {
    if ((*(a2 + 32) & 8) == 0 || *(a1 + 24) != *(a2 + 24))
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
    if ((*(a2 + 32) & 4) == 0 || *(a1 + 20) != *(a2 + 20))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 32) & 2) != 0)
  {
    if ((*(a2 + 32) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 32) & 0x10) == 0;
  if ((*(a1 + 32) & 0x10) != 0)
  {
    return (*(a2 + 32) & 0x10) != 0 && *(a1 + 28) == *(a2 + 28);
  }

  return v2;
}

uint64_t CMMsl::InEarTransition::hash_value(CMMsl::InEarTransition *this)
{
  if (*(this + 32))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 32) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 6);
      if ((*(this + 32) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 32) & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if ((*(this + 32) & 4) != 0)
  {
LABEL_4:
    v3 = *(this + 5);
    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    v4 = 0;
    if ((*(this + 32) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    v5 = 0;
    return v2 ^ *&v1 ^ v3 ^ v4 ^ v5;
  }

LABEL_11:
  v3 = 0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = *(this + 4);
  if ((*(this + 32) & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v5 = *(this + 7);
  return v2 ^ *&v1 ^ v3 ^ v4 ^ v5;
}

double CMMsl::InEarTransitionEntry::InEarTransitionEntry(CMMsl::InEarTransitionEntry *this)
{
  *this = &unk_286C20D90;
  *(this + 31) = 0;
  *(this + 33) = 0;
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
  *this = &unk_286C20D90;
  *(this + 31) = 0;
  *(this + 33) = 0;
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

void CMMsl::InEarTransitionEntry::~InEarTransitionEntry(CMMsl::InEarTransitionEntry *this)
{
  *this = &unk_286C20D90;
  v2 = (this + 96);
  if (*(this + 12))
  {
    sub_25AD28984(this + 12);
    operator delete(*v2);
  }

  v7 = (this + 72);
  sub_25AD28930(&v7);
  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::InEarTransitionEntry::~InEarTransitionEntry(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::InEarTransitionEntry *CMMsl::InEarTransitionEntry::InEarTransitionEntry(CMMsl::InEarTransitionEntry *this, const CMMsl::InEarTransitionEntry *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *this = &unk_286C20D90;
  *(this + 72) = 0u;
  *(this + 31) = 0;
  *(this + 33) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  if (*(a2 + 132))
  {
    v6 = *(a2 + 30);
    *(this + 132) = 1;
    *(this + 30) = v6;
    v5 = 3;
    if ((*(a2 + 132) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 2;
  if ((*(a2 + 132) & 2) != 0)
  {
LABEL_5:
    v7 = *(a2 + 31);
    *(this + 132) = v5;
    *(this + 31) = v7;
  }

LABEL_6:
  v8 = *(a2 + 9);
  if (v8 != *(a2 + 10))
  {
    sub_25AB04FBC(this + 72, *v8);
  }

  if (this != a2)
  {
    sub_25AD287AC(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    sub_25AD287AC(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  v9 = *(a2 + 132);
  if ((v9 & 8) != 0)
  {
    v10 = *(a2 + 129);
    *(this + 132) |= 8u;
    *(this + 129) = v10;
    v9 = *(a2 + 132);
  }

  if ((v9 & 4) != 0)
  {
    v11 = *(a2 + 128);
    *(this + 132) |= 4u;
    *(this + 128) = v11;
  }

  if (*(a2 + 12) != *(a2 + 13))
  {
    operator new();
  }

  return this;
}

CMMsl *CMMsl::InEarTransitionEntry::operator=(CMMsl *a1, const CMMsl::InEarTransitionEntry *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarTransitionEntry::InEarTransitionEntry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::InEarTransitionEntry::~InEarTransitionEntry(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::InEarTransitionEntry *a2, CMMsl::InEarTransitionEntry *a3)
{
  v3 = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v3;
  result = *(a2 + 15);
  v5 = *(this + 15);
  *(this + 15) = result;
  *(a2 + 15) = v5;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v12;
  v13 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v13;
  v14 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v14;
  v15 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v15;
  v16 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v16;
  LOBYTE(v16) = *(this + 129);
  *(this + 129) = *(a2 + 129);
  *(a2 + 129) = v16;
  LOBYTE(v16) = *(this + 128);
  *(this + 128) = *(a2 + 128);
  *(a2 + 128) = v16;
  v17 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v17;
  v18 = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v18;
  v19 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v19;
  return result;
}

uint64_t CMMsl::InEarTransitionEntry::InEarTransitionEntry(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20D90;
  *(a1 + 124) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 72) = 0u;
  v5 = (a1 + 72);
  *(a1 + 104) = 0u;
  *(a1 + 132) = *(a2 + 132);
  *(a2 + 132) = 0;
  *(a1 + 120) = *(a2 + 120);
  sub_25AD289F0((a1 + 72));
  *v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  sub_25AD28758(a1 + 32, (a2 + 32));
  v6 = sub_25AD28758(v4, (a2 + 8));
  v7 = *(a2 + 64);
  *(a2 + 64) = 0;
  v8 = *(a1 + 64);
  *(a1 + 64) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8, v6);
  }

  v9 = *(a2 + 56);
  *(a2 + 56) = 0;
  v10 = *(a1 + 56);
  *(a1 + 56) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10, v6);
  }

  v12 = (a1 + 96);
  v11 = *(a1 + 96);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 128) = *(a2 + 128);
  if (v11)
  {
    sub_25AD28984((a1 + 96));
    operator delete(*v12);
    *v12 = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  return a1;
}

CMMsl *CMMsl::InEarTransitionEntry::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::InEarTransitionEntry::InEarTransitionEntry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    CMMsl::InEarTransitionEntry::~InEarTransitionEntry(v5);
  }

  return a1;
}

uint64_t CMMsl::InEarTransitionEntry::formatText(CMMsl::InEarTransitionEntry *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "baseline");
  }

  if (*(this + 132))
  {
    PB::TextFormatter::format(a2, "location");
  }

  v6 = *(this + 8);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "minimum");
  }

  v7 = *(this + 9);
  v8 = *(this + 10);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "optical");
  }

  v10 = *(this + 132);
  if ((v10 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "ringBufferUpdated");
    v10 = *(this + 132);
    if ((v10 & 8) == 0)
    {
LABEL_11:
      if ((v10 & 2) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 132) & 8) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(a2, "runningMinAccepted");
  if ((*(this + 132) & 2) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "state");
  }

LABEL_13:
  v11 = *(this + 12);
  v12 = *(this + 13);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 32))(v13, a2, "temp");
  }

  v14 = *(this + 1);
  v15 = *(this + 2);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(a2, "tilt", v16);
  }

  v17 = *(this + 4);
  v18 = *(this + 5);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(a2, "tip", v19);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::InEarTransitionEntry::readFrom(CMMsl::InEarTransitionEntry *this, PB::Reader *a2)
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
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) > 5)
    {
      if (v23 <= 7)
      {
        if (v23 == 6)
        {
          operator new();
        }

        if (v23 == 7)
        {
          operator new();
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_161;
        }

        goto LABEL_137;
      }

      switch(v23)
      {
        case 8:
          *(this + 132) |= 8u;
          v58 = *(a2 + 1);
          if (v58 >= *(a2 + 2))
          {
            v61 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v59 = v58 + 1;
            v60 = *(*a2 + v58);
            *(a2 + 1) = v59;
            v61 = v60 != 0;
          }

          *(this + 129) = v61;
          break;
        case 9:
          *(this + 132) |= 4u;
          v78 = *(a2 + 1);
          if (v78 >= *(a2 + 2))
          {
            v81 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v79 = v78 + 1;
            v80 = *(*a2 + v78);
            *(a2 + 1) = v79;
            v81 = v80 != 0;
          }

          *(this + 128) = v81;
          break;
        case 0xA:
          operator new();
        default:
          goto LABEL_17;
      }
    }

    else if (v23 <= 2)
    {
      if (v23 == 1)
      {
        *(this + 132) |= 1u;
        v50 = *(a2 + 1);
        v49 = *(a2 + 2);
        v51 = *a2;
        if (v50 > 0xFFFFFFFFFFFFFFF5 || v50 + 10 > v49)
        {
          v88 = 0;
          v89 = 0;
          v54 = 0;
          v90 = (v51 + v50);
          v18 = v49 >= v50;
          v91 = v49 - v50;
          if (!v18)
          {
            v91 = 0;
          }

          v92 = v50 + 1;
          while (1)
          {
            if (!v91)
            {
              LODWORD(v54) = 0;
              *(a2 + 24) = 1;
              goto LABEL_147;
            }

            v93 = *v90;
            *(a2 + 1) = v92;
            v54 |= (v93 & 0x7F) << v88;
            if ((v93 & 0x80) == 0)
            {
              break;
            }

            v88 += 7;
            ++v90;
            --v91;
            ++v92;
            v14 = v89++ > 8;
            if (v14)
            {
LABEL_110:
              LODWORD(v54) = 0;
              goto LABEL_147;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v54) = 0;
          }
        }

        else
        {
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = (v51 + v50);
          v56 = v50 + 1;
          while (1)
          {
            *(a2 + 1) = v56;
            v57 = *v55++;
            v54 |= (v57 & 0x7F) << v52;
            if ((v57 & 0x80) == 0)
            {
              break;
            }

            v52 += 7;
            ++v56;
            v14 = v53++ > 8;
            if (v14)
            {
              goto LABEL_110;
            }
          }
        }

LABEL_147:
        *(this + 30) = v54;
      }

      else
      {
        if (v23 != 2)
        {
          goto LABEL_17;
        }

        *(this + 132) |= 2u;
        v41 = *(a2 + 1);
        v40 = *(a2 + 2);
        v42 = *a2;
        if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v40)
        {
          v82 = 0;
          v83 = 0;
          v45 = 0;
          v84 = (v42 + v41);
          v18 = v40 >= v41;
          v85 = v40 - v41;
          if (!v18)
          {
            v85 = 0;
          }

          v86 = v41 + 1;
          while (1)
          {
            if (!v85)
            {
              LODWORD(v45) = 0;
              *(a2 + 24) = 1;
              goto LABEL_144;
            }

            v87 = *v84;
            *(a2 + 1) = v86;
            v45 |= (v87 & 0x7F) << v82;
            if ((v87 & 0x80) == 0)
            {
              break;
            }

            v82 += 7;
            ++v84;
            --v85;
            ++v86;
            v14 = v83++ > 8;
            if (v14)
            {
LABEL_102:
              LODWORD(v45) = 0;
              goto LABEL_144;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v45) = 0;
          }
        }

        else
        {
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v46 = (v42 + v41);
          v47 = v41 + 1;
          while (1)
          {
            *(a2 + 1) = v47;
            v48 = *v46++;
            v45 |= (v48 & 0x7F) << v43;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            ++v47;
            v14 = v44++ > 8;
            if (v14)
            {
              goto LABEL_102;
            }
          }
        }

LABEL_144:
        *(this + 31) = v45;
      }
    }

    else
    {
      switch(v23)
      {
        case 3:
          sub_25AB06098(this + 72);
        case 4:
          if (v22 != 2)
          {
            v98 = *(this + 5);
            v97 = *(this + 6);
            if (v98 >= v97)
            {
              v105 = *(this + 4);
              v106 = v98 - v105;
              v107 = (v98 - v105) >> 2;
              v108 = v107 + 1;
              if ((v107 + 1) >> 62)
              {
LABEL_163:
                sub_25AAE66B8();
              }

              v109 = v97 - v105;
              if (v109 >> 1 > v108)
              {
                v108 = v109 >> 1;
              }

              if (v109 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v110 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v110 = v108;
              }

              if (v110)
              {
                sub_25AD288E8(v110);
              }

              v115 = (v98 - v105) >> 2;
              v116 = (4 * v107);
              v117 = (4 * v107 - 4 * v115);
              *v116 = 0;
              v96 = v116 + 1;
              memcpy(v117, v105, v106);
              v118 = *(this + 4);
              *(this + 4) = v117;
              *(this + 5) = v96;
              *(this + 6) = 0;
              if (v118)
              {
                operator delete(v118);
              }
            }

            else
            {
              *v98 = 0;
              v96 = v98 + 4;
            }

            *(this + 5) = v96;
            goto LABEL_154;
          }

          if (PB::Reader::placeMark())
          {
LABEL_161:
            v120 = 0;
            return v120 & 1;
          }

          v62 = *(a2 + 1);
          v63 = *(a2 + 2);
          while (v62 < v63 && (*(a2 + 24) & 1) == 0)
          {
            v65 = *(this + 5);
            v64 = *(this + 6);
            if (v65 >= v64)
            {
              v67 = *(this + 4);
              v68 = v65 - v67;
              v69 = (v65 - v67) >> 2;
              v70 = v69 + 1;
              if ((v69 + 1) >> 62)
              {
                goto LABEL_163;
              }

              v71 = v64 - v67;
              if (v71 >> 1 > v70)
              {
                v70 = v71 >> 1;
              }

              if (v71 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v72 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v72 = v70;
              }

              if (v72)
              {
                sub_25AD288E8(v72);
              }

              v73 = (v65 - v67) >> 2;
              v74 = (4 * v69);
              v75 = (4 * v69 - 4 * v73);
              *v74 = 0;
              v66 = v74 + 1;
              memcpy(v75, v67, v68);
              v76 = *(this + 4);
              *(this + 4) = v75;
              *(this + 5) = v66;
              *(this + 6) = 0;
              if (v76)
              {
                operator delete(v76);
              }
            }

            else
            {
              *v65 = 0;
              v66 = v65 + 4;
            }

            *(this + 5) = v66;
            v77 = *(a2 + 1);
            if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(a2 + 2))
            {
LABEL_119:
              *(a2 + 24) = 1;
              goto LABEL_136;
            }

            *(v66 - 1) = *(*a2 + v77);
            v63 = *(a2 + 2);
            v62 = *(a2 + 1) + 4;
            *(a2 + 1) = v62;
          }

          break;
        case 5:
          if (v22 != 2)
          {
            v95 = *(this + 2);
            v94 = *(this + 3);
            if (v95 >= v94)
            {
              v99 = *(this + 1);
              v100 = v95 - v99;
              v101 = (v95 - v99) >> 2;
              v102 = v101 + 1;
              if ((v101 + 1) >> 62)
              {
                goto LABEL_163;
              }

              v103 = v94 - v99;
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
                sub_25AD288E8(v104);
              }

              v111 = (v95 - v99) >> 2;
              v112 = (4 * v101);
              v113 = (4 * v101 - 4 * v111);
              *v112 = 0;
              v96 = v112 + 1;
              memcpy(v113, v99, v100);
              v114 = *(this + 1);
              *(this + 1) = v113;
              *(this + 2) = v96;
              *(this + 3) = 0;
              if (v114)
              {
                operator delete(v114);
              }
            }

            else
            {
              *v95 = 0;
              v96 = v95 + 4;
            }

            *(this + 2) = v96;
LABEL_154:
            v119 = *(a2 + 1);
            if (v119 <= 0xFFFFFFFFFFFFFFFBLL && v119 + 4 <= *(a2 + 2))
            {
              *(v96 - 1) = *(*a2 + v119);
              *(a2 + 1) += 4;
            }

            else
            {
              *(a2 + 24) = 1;
            }

            goto LABEL_137;
          }

          if (PB::Reader::placeMark())
          {
            goto LABEL_161;
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
                goto LABEL_163;
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
                sub_25AD288E8(v34);
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
              goto LABEL_119;
            }

            *(v28 - 1) = *(*a2 + v39);
            v25 = *(a2 + 2);
            v24 = *(a2 + 1) + 4;
            *(a2 + 1) = v24;
          }

          break;
        default:
          goto LABEL_17;
      }

LABEL_136:
      PB::Reader::recallMark();
    }

LABEL_137:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v120 = v4 ^ 1;
  return v120 & 1;
}

uint64_t CMMsl::InEarTransitionEntry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 132);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 132);
  }

  if ((v4 & 2) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 72);
  v6 = *(v3 + 80);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::write(a2, v10);
  }

  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::write(a2, v13);
  }

  v14 = *(v3 + 64);
  if (v14)
  {
    this = PB::Writer::writeSubmessage(a2, v14);
  }

  v15 = *(v3 + 56);
  if (v15)
  {
    this = PB::Writer::writeSubmessage(a2, v15);
  }

  v16 = *(v3 + 132);
  if ((v16 & 8) != 0)
  {
    this = PB::Writer::write(a2);
    v16 = *(v3 + 132);
  }

  if ((v16 & 4) != 0)
  {
    this = PB::Writer::write(a2);
  }

  v18 = *(v3 + 96);
  v17 = *(v3 + 104);
  while (v18 != v17)
  {
    v19 = *v18++;
    this = PB::Writer::writeSubmessage(a2, v19);
  }

  return this;
}

BOOL CMMsl::InEarTransitionEntry::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 132);
  v5 = *(a2 + 132);
  if (v4)
  {
    if ((*(a2 + 132) & 1) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if (*(a2 + 132))
  {
    return 0;
  }

  if ((*(a1 + 132) & 2) != 0)
  {
    if ((*(a2 + 132) & 2) == 0 || *(a1 + 124) != *(a2 + 124))
    {
      return 0;
    }
  }

  else if ((*(a2 + 132) & 2) != 0)
  {
    return 0;
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a2 + 72);
  if (v7 - v6 != *(a2 + 80) - v8)
  {
    return 0;
  }

  while (v6 != v7)
  {
    if (!CMMsl::ClefMeasurement::operator==(*v6, *v8))
    {
      return 0;
    }

    ++v6;
    ++v8;
  }

  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(a2 + 32);
  if (v9 - v10 != *(a2 + 40) - v11)
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

  v13 = *(a1 + 8);
  v12 = *(a1 + 16);
  v14 = *(a2 + 8);
  if (v12 - v13 != *(a2 + 16) - v14)
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

  v15 = *(a1 + 64);
  v16 = *(a2 + 64);
  if (v15)
  {
    if (!v16 || !CMMsl::ClefMeasurement::operator==(v15, v16))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v17 = *(a1 + 56);
  v18 = *(a2 + 56);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_33;
    }

    return 0;
  }

  if (!v18 || !CMMsl::ClefMeasurement::operator==(v17, v18))
  {
    return 0;
  }

LABEL_33:
  if ((v4 & 8) != 0)
  {
    if ((v5 & 8) == 0 || *(a1 + 129) != *(a2 + 129))
    {
      return 0;
    }
  }

  else if ((v5 & 8) != 0)
  {
    return 0;
  }

  if ((v4 & 4) != 0)
  {
    if ((v5 & 4) == 0 || *(a1 + 128) != *(a2 + 128))
    {
      return 0;
    }
  }

  else if ((v5 & 4) != 0)
  {
    return 0;
  }

  v19 = *(a1 + 96);
  v20 = *(a1 + 104);
  v21 = *(a2 + 96);
  v22 = *(a2 + 104);

  return sub_25ABB31B0(v19, v20, v21, v22);
}

BOOL sub_25ABB31B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
    result = CMMsl::ClefTemperature::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::InEarTransitionEntry::hash_value(CMMsl::InEarTransitionEntry *this)
{
  if (*(this + 132))
  {
    v2 = *(this + 30);
    if ((*(this + 132) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = 0;
    if ((*(this + 132) & 2) != 0)
    {
LABEL_3:
      v3 = *(this + 31);
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_6:
  v4 = sub_25AB065E0(*(this + 9), *(this + 10));
  v5 = PBHashBytes();
  v6 = PBHashBytes();
  v7 = *(this + 8);
  if (v7)
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 8);
    v10 = *(v7 + 12);
    v11 = v9 == 0.0 || (v8 & 1) == 0;
    v12 = LODWORD(v9);
    if (v11)
    {
      v12 = 0;
    }

    v13 = v8 & 2;
    v14 = v10 == 0.0 || v13 == 0;
    v15 = LODWORD(v10);
    if (v14)
    {
      v15 = 0;
    }

    v7 = v15 ^ v12;
  }

  v16 = *(this + 7);
  if (v16)
  {
    v17 = *(v16 + 16);
    v18 = *(v16 + 8);
    v19 = *(v16 + 12);
    v20 = v18 == 0.0 || (v17 & 1) == 0;
    v21 = LODWORD(v18);
    if (v20)
    {
      v21 = 0;
    }

    v22 = v17 & 2;
    v23 = v19 == 0.0 || v22 == 0;
    v24 = LODWORD(v19);
    if (v23)
    {
      v24 = 0;
    }

    v16 = v24 ^ v21;
  }

  if ((*(this + 132) & 8) != 0)
  {
    v25 = *(this + 129);
    if ((*(this + 132) & 4) != 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v25 = 0;
    if ((*(this + 132) & 4) != 0)
    {
LABEL_32:
      v26 = *(this + 128);
      goto LABEL_35;
    }
  }

  v26 = 0;
LABEL_35:
  v27 = *(this + 12);
  v28 = *(this + 13);
  if (v27 == v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = 0;
    do
    {
      v30 = *v27++;
      v31 = *(v30 + 16);
      v33 = *(v30 + 8);
      v32 = *(v30 + 12);
      if ((v31 & 1) == 0)
      {
        v33 = 0;
      }

      if ((v31 & 2) == 0)
      {
        v32 = 0;
      }

      v29 ^= v33 ^ v32;
    }

    while (v27 != v28);
  }

  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v16 ^ v25 ^ v26 ^ v29;
}

void *CMMsl::InEarTransitionEntry::makeMinimum(void *this)
{
  if (!this[8])
  {
    operator new();
  }

  return this;
}

void *CMMsl::InEarTransitionEntry::makeBaseline(void *this)
{
  if (!this[7])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::InertialOdometry::InertialOdometry(uint64_t this)
{
  *this = &unk_286C20DC8;
  *(this + 68) = 0;
  return this;
}

{
  *this = &unk_286C20DC8;
  *(this + 68) = 0;
  return this;
}

void CMMsl::InertialOdometry::~InertialOdometry(CMMsl::InertialOdometry *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::InertialOdometry::InertialOdometry(uint64_t this, const CMMsl::InertialOdometry *a2)
{
  *this = &unk_286C20DC8;
  *(this + 68) = 0;
  v2 = *(a2 + 17);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 68) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 17);
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
    v5 = *(a2 + 4);
    v3 |= 2u;
    *(this + 68) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 17);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 5);
    v3 |= 4u;
    *(this + 68) = v3;
    *(this + 20) = v6;
    v2 = *(a2 + 17);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 6);
  v3 |= 8u;
  *(this + 68) = v3;
  *(this + 24) = v7;
  v2 = *(a2 + 17);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v8 = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 68) = v3;
  *(this + 28) = v8;
  v2 = *(a2 + 17);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(a2 + 8);
  v3 |= 0x20u;
  *(this + 68) = v3;
  *(this + 32) = v9;
  v2 = *(a2 + 17);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 9);
  v3 |= 0x40u;
  *(this + 68) = v3;
  *(this + 36) = v10;
  v2 = *(a2 + 17);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 11);
  v3 |= 0x100u;
  *(this + 68) = v3;
  *(this + 44) = v11;
  v2 = *(a2 + 17);
  if ((v2 & 0x200) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 12);
  v3 |= 0x200u;
  *(this + 68) = v3;
  *(this + 48) = v12;
  v2 = *(a2 + 17);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 13);
  v3 |= 0x400u;
  *(this + 68) = v3;
  *(this + 52) = v13;
  v2 = *(a2 + 17);
  if ((v2 & 0x80) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 10);
  v3 |= 0x80u;
  *(this + 68) = v3;
  *(this + 40) = v14;
  v2 = *(a2 + 17);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 14);
  v3 |= 0x800u;
  *(this + 68) = v3;
  *(this + 56) = v15;
  v2 = *(a2 + 17);
  if ((v2 & 0x1000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 15);
  v3 |= 0x1000u;
  *(this + 68) = v3;
  *(this + 60) = v16;
  v2 = *(a2 + 17);
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 64);
  v3 |= 0x2000u;
  *(this + 68) = v3;
  *(this + 64) = v17;
  v2 = *(a2 + 17);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

LABEL_34:
  v18 = *(a2 + 65);
  v3 |= 0x4000u;
  *(this + 68) = v3;
  *(this + 65) = v18;
  v2 = *(a2 + 17);
  if ((v2 & 0x8000) == 0)
  {
LABEL_20:
    if ((v2 & 0x10000) == 0)
    {
      return this;
    }

LABEL_36:
    v20 = *(a2 + 67);
    *(this + 68) = v3 | 0x10000;
    *(this + 67) = v20;
    return this;
  }

LABEL_35:
  v19 = *(a2 + 66);
  v3 |= 0x8000u;
  *(this + 68) = v3;
  *(this + 66) = v19;
  if ((*(a2 + 17) & 0x10000) != 0)
  {
    goto LABEL_36;
  }

  return this;
}

CMMsl *CMMsl::InertialOdometry::operator=(CMMsl *a1, const CMMsl::InertialOdometry *a2)
{
  if (a1 != a2)
  {
    CMMsl::InertialOdometry::InertialOdometry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::InertialOdometry *a2, CMMsl::InertialOdometry *a3)
{
  v3 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v4;
  LODWORD(v4) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v4;
  LODWORD(v4) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v4;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  v6 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v6;
  v7 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v7;
  LOBYTE(v7) = *(this + 64);
  *(this + 64) = *(a2 + 64);
  *(a2 + 64) = v7;
  LOBYTE(v7) = *(this + 65);
  *(this + 65) = *(a2 + 65);
  *(a2 + 65) = v7;
  LOBYTE(v7) = *(this + 66);
  *(this + 66) = *(a2 + 66);
  *(a2 + 66) = v7;
  LOBYTE(v7) = *(this + 67);
  *(this + 67) = *(a2 + 67);
  *(a2 + 67) = v7;
  return result;
}

float CMMsl::InertialOdometry::InertialOdometry(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C20DC8;
  *(a1 + 68) = *(a2 + 68);
  *(a2 + 68) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 67) = *(a2 + 67);
  return result;
}

CMMsl *CMMsl::InertialOdometry::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::InertialOdometry::InertialOdometry(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::InertialOdometry::formatText(CMMsl::InertialOdometry *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 17);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "deltaPositionX", *(this + 4));
    v5 = *(this + 17);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "deltaPositionY", *(this + 5));
  v5 = *(this + 17);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "deltaPositionZ", *(this + 6));
  v5 = *(this + 17);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "deltaVelocityX", *(this + 7));
  v5 = *(this + 17);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(a2, "deltaVelocityY", *(this + 8));
  v5 = *(this + 17);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(a2, "deltaVelocityZ", *(this + 9));
  v5 = *(this + 17);
  if ((v5 & 0x2000) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(a2, "isBIO");
  v5 = *(this + 17);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(a2, "isDOTBiasChangePossible");
  v5 = *(this + 17);
  if ((v5 & 0x8000) == 0)
  {
LABEL_10:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(a2, "isMounted");
  v5 = *(this + 17);
  if ((v5 & 0x10000) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(a2, "isZUPT");
  v5 = *(this + 17);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(a2, "quaternionW", *(this + 10));
  v5 = *(this + 17);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(a2, "quaternionX", *(this + 11));
  v5 = *(this + 17);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "quaternionY", *(this + 12));
  v5 = *(this + 17);
  if ((v5 & 0x400) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "quaternionZ", *(this + 13));
  v5 = *(this + 17);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "referenceFrame");
  v5 = *(this + 17);
  if ((v5 & 0x1000) == 0)
  {
LABEL_17:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "staticFlag");
  if (*(this + 17))
  {
LABEL_18:
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
  }

LABEL_19:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::InertialOdometry::readFrom(CMMsl::InertialOdometry *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_117:
    v60 = v4 ^ 1;
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
        goto LABEL_117;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 17) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_102;
        case 2u:
          *(this + 17) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_101;
        case 3u:
          *(this + 17) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_101;
        case 4u:
          *(this + 17) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_101;
        case 5u:
          *(this + 17) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_101;
        case 6u:
          *(this + 17) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_101;
        case 7u:
          *(this + 17) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 9) = *(*a2 + v2);
          goto LABEL_101;
        case 8u:
          *(this + 17) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 11) = *(*a2 + v2);
          goto LABEL_101;
        case 9u:
          *(this + 17) |= 0x200u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 12) = *(*a2 + v2);
          goto LABEL_101;
        case 0xAu:
          *(this + 17) |= 0x400u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_75;
          }

          *(this + 13) = *(*a2 + v2);
          goto LABEL_101;
        case 0xBu:
          *(this + 17) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
LABEL_75:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 10) = *(*a2 + v2);
LABEL_101:
            v2 = *(a2 + 1) + 4;
LABEL_102:
            *(a2 + 1) = v2;
          }

          break;
        case 0xCu:
          *(this + 17) |= 0x800u;
          v26 = *(a2 + 1);
          v2 = *(a2 + 2);
          v27 = *a2;
          if (v26 > 0xFFFFFFFFFFFFFFF5 || v26 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v30 = 0;
            if (v2 <= v26)
            {
              v2 = *(a2 + 1);
            }

            v48 = (v27 + v26);
            v49 = v2 - v26;
            v50 = v26 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v30) = 0;
                *(a2 + 24) = 1;
                goto LABEL_108;
              }

              v51 = v50;
              v52 = *v48;
              *(a2 + 1) = v51;
              v30 |= (v52 & 0x7F) << v46;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              ++v48;
              --v49;
              v50 = v51 + 1;
              v14 = v47++ > 8;
              if (v14)
              {
                LODWORD(v30) = 0;
LABEL_107:
                v2 = v51;
                goto LABEL_108;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v30) = 0;
            }

            goto LABEL_107;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = (v27 + v26);
          v32 = v26 + 1;
          do
          {
            v2 = v32;
            *(a2 + 1) = v32;
            v33 = *v31++;
            v30 |= (v33 & 0x7F) << v28;
            if ((v33 & 0x80) == 0)
            {
              goto LABEL_108;
            }

            v28 += 7;
            ++v32;
            v14 = v29++ > 8;
          }

          while (!v14);
          LODWORD(v30) = 0;
LABEL_108:
          *(this + 14) = v30;
          break;
        case 0xDu:
          *(this + 17) |= 0x1000u;
          v34 = *(a2 + 1);
          v2 = *(a2 + 2);
          v35 = *a2;
          if (v34 > 0xFFFFFFFFFFFFFFF5 || v34 + 10 > v2)
          {
            v53 = 0;
            v54 = 0;
            v38 = 0;
            if (v2 <= v34)
            {
              v2 = *(a2 + 1);
            }

            v55 = (v35 + v34);
            v56 = v2 - v34;
            v57 = v34 + 1;
            while (1)
            {
              if (!v56)
              {
                LODWORD(v38) = 0;
                *(a2 + 24) = 1;
                goto LABEL_112;
              }

              v58 = v57;
              v59 = *v55;
              *(a2 + 1) = v58;
              v38 |= (v59 & 0x7F) << v53;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v55;
              --v56;
              v57 = v58 + 1;
              v14 = v54++ > 8;
              if (v14)
              {
                LODWORD(v38) = 0;
LABEL_111:
                v2 = v58;
                goto LABEL_112;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v38) = 0;
            }

            goto LABEL_111;
          }

          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = (v35 + v34);
          v40 = v34 + 1;
          do
          {
            v2 = v40;
            *(a2 + 1) = v40;
            v41 = *v39++;
            v38 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              goto LABEL_112;
            }

            v36 += 7;
            ++v40;
            v14 = v37++ > 8;
          }

          while (!v14);
          LODWORD(v38) = 0;
LABEL_112:
          *(this + 15) = v38;
          break;
        case 0xEu:
          *(this + 17) |= 0x2000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v45 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v44 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v45 = v44 != 0;
          }

          *(this + 64) = v45;
          break;
        case 0xFu:
          *(this + 17) |= 0x4000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v25 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v24 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v25 = v24 != 0;
          }

          *(this + 65) = v25;
          break;
        case 0x10u:
          *(this + 17) |= 0x8000u;
          v2 = *(a2 + 1);
          if (v2 >= *(a2 + 2))
          {
            v43 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v42 = *(*a2 + v2++);
            *(a2 + 1) = v2;
            v43 = v42 != 0;
          }

          *(this + 66) = v43;
          break;
        case 0x11u:
          *(this + 17) |= 0x10000u;
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

          *(this + 67) = v23;
          break;
        default:
          goto LABEL_17;
      }

LABEL_113:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_117;
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
        goto LABEL_117;
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
      goto LABEL_113;
    }

    v60 = 0;
  }

  return v60 & 1;
}

uint64_t CMMsl::InertialOdometry::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 68);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 68);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = PB::Writer::write(a2, *(v3 + 28));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    this = PB::Writer::write(a2);
    if ((*(v3 + 68) & 0x10000) == 0)
    {
      return this;
    }

    goto LABEL_35;
  }

LABEL_33:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 68);
  if ((v4 & 0x8000) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v4 & 0x10000) == 0)
  {
    return this;
  }

LABEL_35:

  return PB::Writer::write(a2);
}