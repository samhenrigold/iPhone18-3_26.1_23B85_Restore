uint64_t CMMsl::WorkoutPriorInformation::operator=(uint64_t a1, const CMMsl::WorkoutPriorInformation *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutPriorInformation::WorkoutPriorInformation(v7, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::WorkoutPriorInformation *a2, CMMsl::WorkoutPriorInformation *a3)
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
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  return result;
}

double CMMsl::WorkoutPriorInformation::WorkoutPriorInformation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C248D8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

{
  *a1 = &unk_286C248D8;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = *(a2 + 16);
  return result;
}

uint64_t CMMsl::WorkoutPriorInformation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9[0] = &unk_286C248D8;
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

uint64_t CMMsl::WorkoutPriorInformation::formatText(CMMsl::WorkoutPriorInformation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "genericWorkoutLabel");
    v5 = *(this + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "poolLength", *(this + 1));
  v5 = *(this + 32);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  PB::TextFormatter::format(a2, "swimLocation");
  v5 = *(this + 32);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "workoutLocationType");
  if ((*(this + 32) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "workoutType");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutPriorInformation::readFrom(CMMsl::WorkoutPriorInformation *this, PB::Reader *a2)
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
        *(this + 32) |= 0x10u;
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
        *(this + 7) = v51;
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
        case 5:
          *(this + 32) |= 2u;
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
          *(this + 4) = v27;
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

uint64_t CMMsl::WorkoutPriorInformation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
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
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::write(a2, *(v3 + 8));
    if ((*(v3 + 32) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 32);
  if (v4)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:

  return PB::Writer::writeVarInt(a2);
}

BOOL CMMsl::WorkoutPriorInformation::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 32) & 0x10) != 0)
  {
    if ((*(a2 + 32) & 0x10) == 0 || *(a1 + 28) != *(a2 + 28))
    {
      return 0;
    }
  }

  else if ((*(a2 + 32) & 0x10) != 0)
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

uint64_t CMMsl::WorkoutPriorInformation::hash_value(CMMsl::WorkoutPriorInformation *this)
{
  if ((*(this + 32) & 0x10) != 0)
  {
    v1 = *(this + 7);
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
    v1 = 0;
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
    if (*(this + 32))
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v3 = 0;
  if (*(this + 32))
  {
LABEL_5:
    v4 = *(this + 1);
    if (v4 == 0.0)
    {
      v4 = 0.0;
    }

    if ((*(this + 32) & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v5 = 0;
    return v2 ^ v1 ^ v3 ^ *&v4 ^ v5;
  }

LABEL_12:
  v4 = 0.0;
  if ((*(this + 32) & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v5 = *(this + 4);
  return v2 ^ v1 ^ v3 ^ *&v4 ^ v5;
}

void CMMsl::WorkoutRecorderALSData::~WorkoutRecorderALSData(CMMsl::WorkoutRecorderALSData *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24910;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderALSData::~WorkoutRecorderALSData(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderALSData *CMMsl::WorkoutRecorderALSData::WorkoutRecorderALSData(CMMsl::WorkoutRecorderALSData *this, const CMMsl::WorkoutRecorderALSData *a2)
{
  *this = &unk_286C24910;
  *(this + 1) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const CMMsl::WorkoutRecorderALSData *CMMsl::WorkoutRecorderALSData::operator=(const CMMsl::WorkoutRecorderALSData *a1, const CMMsl::WorkoutRecorderALSData *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderALSData::WorkoutRecorderALSData(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderALSData::~WorkoutRecorderALSData(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderALSData *a2, CMMsl::WorkoutRecorderALSData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderALSData::WorkoutRecorderALSData(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24910;
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
  *a1 = &unk_286C24910;
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

uint64_t CMMsl::WorkoutRecorderALSData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24910;
    v6[1] = v4;
    CMMsl::WorkoutRecorderALSData::~WorkoutRecorderALSData(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderALSData::formatText(CMMsl::WorkoutRecorderALSData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderALSData::readFrom(CMMsl::WorkoutRecorderALSData *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderALSData::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderALSData::hash_value(CMMsl::WorkoutRecorderALSData *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (v2 == 0.0 || (*(v1 + 12) & 1) == 0)
  {
    return 0;
  }

  else
  {
    return LODWORD(v2);
  }
}

void *CMMsl::WorkoutRecorderALSData::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAccel::~WorkoutRecorderAccel(CMMsl::WorkoutRecorderAccel *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24948;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAccel::~WorkoutRecorderAccel(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderAccel *CMMsl::WorkoutRecorderAccel::WorkoutRecorderAccel(CMMsl::WorkoutRecorderAccel *this, const CMMsl::Accel **a2)
{
  *this = &unk_286C24948;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderAccel::operator=(uint64_t a1, const CMMsl::Accel **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAccel::WorkoutRecorderAccel(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAccel::~WorkoutRecorderAccel(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAccel *a2, CMMsl::WorkoutRecorderAccel *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAccel::WorkoutRecorderAccel(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24948;
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
  *a1 = &unk_286C24948;
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

uint64_t CMMsl::WorkoutRecorderAccel::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24948;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAccel::~WorkoutRecorderAccel(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAccel::formatText(CMMsl::WorkoutRecorderAccel *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderAccel::readFrom(CMMsl::WorkoutRecorderAccel *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAccel::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Accel *CMMsl::WorkoutRecorderAccel::hash_value(CMMsl::WorkoutRecorderAccel *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderAccel::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAccel800::~WorkoutRecorderAccel800(CMMsl::WorkoutRecorderAccel800 *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24980;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAccel800::~WorkoutRecorderAccel800(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderAccel800 *CMMsl::WorkoutRecorderAccel800::WorkoutRecorderAccel800(CMMsl::WorkoutRecorderAccel800 *this, const CMMsl::Accel **a2)
{
  *this = &unk_286C24980;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderAccel800::operator=(uint64_t a1, const CMMsl::Accel **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAccel800::WorkoutRecorderAccel800(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAccel800::~WorkoutRecorderAccel800(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAccel800 *a2, CMMsl::WorkoutRecorderAccel800 *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAccel800::WorkoutRecorderAccel800(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24980;
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
  *a1 = &unk_286C24980;
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

uint64_t CMMsl::WorkoutRecorderAccel800::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24980;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAccel800::~WorkoutRecorderAccel800(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAccel800::formatText(CMMsl::WorkoutRecorderAccel800 *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderAccel800::readFrom(CMMsl::WorkoutRecorderAccel800 *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAccel800::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Accel *CMMsl::WorkoutRecorderAccel800::hash_value(CMMsl::WorkoutRecorderAccel800 *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Accel::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderAccel800::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::~WorkoutRecorderAccessoryDeviceMotionConfig(CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *this)
{
  v2 = *(this + 1);
  *this = &unk_286C249B8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::~WorkoutRecorderAccessoryDeviceMotionConfig(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::WorkoutRecorderAccessoryDeviceMotionConfig(CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *this, const CMMsl::AccessoryDeviceMotionConfig **a2)
{
  *this = &unk_286C249B8;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::operator=(uint64_t a1, const CMMsl::AccessoryDeviceMotionConfig **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::WorkoutRecorderAccessoryDeviceMotionConfig(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::~WorkoutRecorderAccessoryDeviceMotionConfig(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *a2, CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::WorkoutRecorderAccessoryDeviceMotionConfig(void *a1, uint64_t a2)
{
  *a1 = &unk_286C249B8;
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
  *a1 = &unk_286C249B8;
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

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C249B8;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::~WorkoutRecorderAccessoryDeviceMotionConfig(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::formatText(CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::readFrom(CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::AccessoryDeviceMotionConfig *CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::hash_value(CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryDeviceMotionConfig::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderAccessoryDeviceMotionConfig::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::~WorkoutRecorderAudioAccessoryDeviceMotion(CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *this)
{
  v2 = *(this + 1);
  *this = &unk_286C249F0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::~WorkoutRecorderAudioAccessoryDeviceMotion(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::WorkoutRecorderAudioAccessoryDeviceMotion(CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *this, const CMMsl::AudioAccessoryDeviceMotion **a2)
{
  *this = &unk_286C249F0;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::operator=(uint64_t a1, const CMMsl::AudioAccessoryDeviceMotion **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::WorkoutRecorderAudioAccessoryDeviceMotion(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::~WorkoutRecorderAudioAccessoryDeviceMotion(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *a2, CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::WorkoutRecorderAudioAccessoryDeviceMotion(void *a1, uint64_t a2)
{
  *a1 = &unk_286C249F0;
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
  *a1 = &unk_286C249F0;
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

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C249F0;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::~WorkoutRecorderAudioAccessoryDeviceMotion(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::formatText(CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::readFrom(CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::AudioAccessoryDeviceMotion *CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::hash_value(CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AudioAccessoryDeviceMotion::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderAudioAccessoryDeviceMotion::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderAveragedALSData::~WorkoutRecorderAveragedALSData(CMMsl::WorkoutRecorderAveragedALSData *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24A28;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderAveragedALSData::~WorkoutRecorderAveragedALSData(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderAveragedALSData *CMMsl::WorkoutRecorderAveragedALSData::WorkoutRecorderAveragedALSData(CMMsl::WorkoutRecorderAveragedALSData *this, const CMMsl::AveragedALSData **a2)
{
  *this = &unk_286C24A28;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderAveragedALSData::operator=(uint64_t a1, const CMMsl::AveragedALSData **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderAveragedALSData::WorkoutRecorderAveragedALSData(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderAveragedALSData::~WorkoutRecorderAveragedALSData(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderAveragedALSData *a2, CMMsl::WorkoutRecorderAveragedALSData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderAveragedALSData::WorkoutRecorderAveragedALSData(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24A28;
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
  *a1 = &unk_286C24A28;
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

uint64_t CMMsl::WorkoutRecorderAveragedALSData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24A28;
    v6[1] = v4;
    CMMsl::WorkoutRecorderAveragedALSData::~WorkoutRecorderAveragedALSData(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderAveragedALSData::formatText(CMMsl::WorkoutRecorderAveragedALSData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderAveragedALSData::readFrom(CMMsl::WorkoutRecorderAveragedALSData *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderAveragedALSData::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderAveragedALSData::hash_value(CMMsl::WorkoutRecorderAveragedALSData *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 20);
  v3 = *(v1 + 8) == 0.0 || (v2 & 1) == 0;
  v4 = *(v1 + 8);
  if (v3)
  {
    v4 = 0;
  }

  v5 = v2 & 2;
  v6 = *(v1 + 16);
  v7 = v6 == 0.0 || v5 == 0;
  v8 = LODWORD(v6);
  if (v7)
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

void *CMMsl::WorkoutRecorderAveragedALSData::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderBodyMetrics::~WorkoutRecorderBodyMetrics(CMMsl::WorkoutRecorderBodyMetrics *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24A60;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderBodyMetrics::~WorkoutRecorderBodyMetrics(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderBodyMetrics *CMMsl::WorkoutRecorderBodyMetrics::WorkoutRecorderBodyMetrics(CMMsl::WorkoutRecorderBodyMetrics *this, const CMMsl::BodyMetrics **a2)
{
  *this = &unk_286C24A60;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderBodyMetrics::operator=(uint64_t a1, const CMMsl::BodyMetrics **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderBodyMetrics::WorkoutRecorderBodyMetrics(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderBodyMetrics::~WorkoutRecorderBodyMetrics(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderBodyMetrics *a2, CMMsl::WorkoutRecorderBodyMetrics *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderBodyMetrics::WorkoutRecorderBodyMetrics(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24A60;
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
  *a1 = &unk_286C24A60;
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

uint64_t CMMsl::WorkoutRecorderBodyMetrics::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24A60;
    v6[1] = v4;
    CMMsl::WorkoutRecorderBodyMetrics::~WorkoutRecorderBodyMetrics(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderBodyMetrics::formatText(CMMsl::WorkoutRecorderBodyMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderBodyMetrics::readFrom(CMMsl::WorkoutRecorderBodyMetrics *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderBodyMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::BodyMetrics *CMMsl::WorkoutRecorderBodyMetrics::hash_value(CMMsl::WorkoutRecorderBodyMetrics *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BodyMetrics::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderBodyMetrics::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderCompassCalibration::~WorkoutRecorderCompassCalibration(CMMsl::WorkoutRecorderCompassCalibration *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24A98;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderCompassCalibration::~WorkoutRecorderCompassCalibration(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderCompassCalibration *CMMsl::WorkoutRecorderCompassCalibration::WorkoutRecorderCompassCalibration(CMMsl::WorkoutRecorderCompassCalibration *this, const CMMsl::CompassCalibration **a2)
{
  *this = &unk_286C24A98;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderCompassCalibration::operator=(uint64_t a1, const CMMsl::CompassCalibration **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderCompassCalibration::WorkoutRecorderCompassCalibration(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderCompassCalibration::~WorkoutRecorderCompassCalibration(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderCompassCalibration *a2, CMMsl::WorkoutRecorderCompassCalibration *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderCompassCalibration::WorkoutRecorderCompassCalibration(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24A98;
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
  *a1 = &unk_286C24A98;
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

uint64_t CMMsl::WorkoutRecorderCompassCalibration::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24A98;
    v6[1] = v4;
    CMMsl::WorkoutRecorderCompassCalibration::~WorkoutRecorderCompassCalibration(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderCompassCalibration::formatText(CMMsl::WorkoutRecorderCompassCalibration *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderCompassCalibration::readFrom(CMMsl::WorkoutRecorderCompassCalibration *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderCompassCalibration::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::CompassCalibration *CMMsl::WorkoutRecorderCompassCalibration::hash_value(CMMsl::WorkoutRecorderCompassCalibration *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::CompassCalibration::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderCompassCalibration::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderElevation::~WorkoutRecorderElevation(CMMsl::WorkoutRecorderElevation *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24AD0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderElevation::~WorkoutRecorderElevation(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderElevation *CMMsl::WorkoutRecorderElevation::WorkoutRecorderElevation(CMMsl::WorkoutRecorderElevation *this, const CMMsl::ElevationChange **a2)
{
  *this = &unk_286C24AD0;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderElevation::operator=(uint64_t a1, const CMMsl::ElevationChange **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderElevation::WorkoutRecorderElevation(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderElevation::~WorkoutRecorderElevation(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderElevation *a2, CMMsl::WorkoutRecorderElevation *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderElevation::WorkoutRecorderElevation(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24AD0;
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
  *a1 = &unk_286C24AD0;
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

uint64_t CMMsl::WorkoutRecorderElevation::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24AD0;
    v6[1] = v4;
    CMMsl::WorkoutRecorderElevation::~WorkoutRecorderElevation(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderElevation::formatText(CMMsl::WorkoutRecorderElevation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderElevation::readFrom(CMMsl::WorkoutRecorderElevation *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderElevation::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::ElevationChange *CMMsl::WorkoutRecorderElevation::hash_value(CMMsl::WorkoutRecorderElevation *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::ElevationChange::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderElevation::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderFaceCovered::~WorkoutRecorderFaceCovered(CMMsl::WorkoutRecorderFaceCovered *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24B08;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderFaceCovered::~WorkoutRecorderFaceCovered(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderFaceCovered *CMMsl::WorkoutRecorderFaceCovered::WorkoutRecorderFaceCovered(CMMsl::WorkoutRecorderFaceCovered *this, const CMMsl::FaceCovered **a2)
{
  *this = &unk_286C24B08;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderFaceCovered::operator=(uint64_t a1, const CMMsl::FaceCovered **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderFaceCovered::WorkoutRecorderFaceCovered(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderFaceCovered::~WorkoutRecorderFaceCovered(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderFaceCovered *a2, CMMsl::WorkoutRecorderFaceCovered *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderFaceCovered::WorkoutRecorderFaceCovered(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24B08;
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
  *a1 = &unk_286C24B08;
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

uint64_t CMMsl::WorkoutRecorderFaceCovered::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24B08;
    v6[1] = v4;
    CMMsl::WorkoutRecorderFaceCovered::~WorkoutRecorderFaceCovered(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderFaceCovered::formatText(CMMsl::WorkoutRecorderFaceCovered *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderFaceCovered::readFrom(CMMsl::WorkoutRecorderFaceCovered *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderFaceCovered::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderFaceCovered::hash_value(CMMsl::WorkoutRecorderFaceCovered *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 20);
  v3 = *(v1 + 8) == 0.0 || (v2 & 1) == 0;
  v4 = *(v1 + 8);
  if (v3)
  {
    v4 = 0;
  }

  return v4 ^ (*(v1 + 16) & (v2 << 30 >> 31));
}

void *CMMsl::WorkoutRecorderFaceCovered::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderFitnessMachineData::~WorkoutRecorderFitnessMachineData(CMMsl::WorkoutRecorderFitnessMachineData *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24B40;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderFitnessMachineData::~WorkoutRecorderFitnessMachineData(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderFitnessMachineData *CMMsl::WorkoutRecorderFitnessMachineData::WorkoutRecorderFitnessMachineData(CMMsl::WorkoutRecorderFitnessMachineData *this, const CMMsl::FitnessMachineData **a2)
{
  *this = &unk_286C24B40;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::operator=(uint64_t a1, const CMMsl::FitnessMachineData **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderFitnessMachineData::WorkoutRecorderFitnessMachineData(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderFitnessMachineData::~WorkoutRecorderFitnessMachineData(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderFitnessMachineData *a2, CMMsl::WorkoutRecorderFitnessMachineData *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderFitnessMachineData::WorkoutRecorderFitnessMachineData(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24B40;
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
  *a1 = &unk_286C24B40;
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

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24B40;
    v6[1] = v4;
    CMMsl::WorkoutRecorderFitnessMachineData::~WorkoutRecorderFitnessMachineData(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::formatText(CMMsl::WorkoutRecorderFitnessMachineData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::readFrom(CMMsl::WorkoutRecorderFitnessMachineData *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderFitnessMachineData::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::FitnessMachineData *CMMsl::WorkoutRecorderFitnessMachineData::hash_value(CMMsl::WorkoutRecorderFitnessMachineData *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::FitnessMachineData::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderFitnessMachineData::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderHealthKitInfo::~WorkoutRecorderHealthKitInfo(CMMsl::WorkoutRecorderHealthKitInfo *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::WorkoutRecorderHealthKitInfo::WorkoutRecorderHealthKitInfo(CMMsl::WorkoutRecorderHealthKitInfo *this, const CMMsl::WorkoutRecorderHealthKitInfo *a2)
{
  *this = &unk_286C24B78;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 4;
    *(this + 28) = 4;
    *(this + 6) = v4;
    v2 = *(a2 + 28);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 28))
  {
LABEL_5:
    result = *(a2 + 1);
    v3 |= 1u;
    *(this + 28) = v3;
    *(this + 1) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    *(this + 28) = v3 | 2;
    *(this + 2) = result;
  }

  return result;
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::operator=(uint64_t a1, const CMMsl::WorkoutRecorderHealthKitInfo *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHealthKitInfo::WorkoutRecorderHealthKitInfo(&v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::WorkoutRecorderHealthKitInfo *a2, CMMsl::WorkoutRecorderHealthKitInfo *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::WorkoutRecorderHealthKitInfo::WorkoutRecorderHealthKitInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C24B78;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C24B78;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C24B78;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a2 + 28) = 0;
    v9 = *(a1 + 24);
    v5 = *(a1 + 8);
    *(a1 + 24) = v4;
    *(a1 + 8) = v3;
    v8 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::formatText(CMMsl::WorkoutRecorderHealthKitInfo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "restingHeartRate", *(this + 1));
    v5 = *(this + 28);
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

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "walkingHeartRateAverage", *(this + 2));
  if ((*(this + 28) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "workoutActivityType");
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::readFrom(CMMsl::WorkoutRecorderHealthKitInfo *this, PB::Reader *a2)
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
        goto LABEL_55;
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
        goto LABEL_55;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_35;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_45:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_51;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 4u;
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

          v33 = (v24 + v23);
          v34 = v2 - v23;
          v35 = v23 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_50;
            }

            v36 = v35;
            v37 = *v33;
            *(a2 + 1) = v36;
            v27 |= (v37 & 0x7F) << v31;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v33;
            --v34;
            v35 = v36 + 1;
            v14 = v32++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_49;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_49:
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

LABEL_50:
        *(this + 6) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v38 = 0;
          return v38 & 1;
        }

        v2 = *(a2 + 1);
      }

LABEL_51:
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_55;
      }
    }

    *(this + 28) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_35:
      *(a2 + 24) = 1;
      goto LABEL_51;
    }

    *(this + 2) = *(*a2 + v2);
    goto LABEL_45;
  }

LABEL_55:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 4) == 0)
  {
    if ((*(this + 28) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 8));
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 28);
  if (v4)
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

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::WorkoutRecorderHealthKitInfo::hash_value(CMMsl::WorkoutRecorderHealthKitInfo *this)
{
  if ((*(this + 28) & 4) != 0)
  {
    v1 = *(this + 6);
    if (*(this + 28))
    {
LABEL_3:
      v2 = *(this + 1);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if ((*(this + 28) & 2) != 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      v3 = 0.0;
      return *&v2 ^ v1 ^ *&v3;
    }
  }

  else
  {
    v1 = 0;
    if (*(this + 28))
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return *&v2 ^ v1 ^ *&v3;
}

void CMMsl::WorkoutRecorderHeartRate::~WorkoutRecorderHeartRate(CMMsl::WorkoutRecorderHeartRate *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24BB0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderHeartRate::~WorkoutRecorderHeartRate(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderHeartRate *CMMsl::WorkoutRecorderHeartRate::WorkoutRecorderHeartRate(CMMsl::WorkoutRecorderHeartRate *this, const CMMsl::OnsetHeartRateData **a2)
{
  *this = &unk_286C24BB0;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderHeartRate::operator=(uint64_t a1, const CMMsl::OnsetHeartRateData **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHeartRate::WorkoutRecorderHeartRate(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderHeartRate::~WorkoutRecorderHeartRate(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderHeartRate *a2, CMMsl::WorkoutRecorderHeartRate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderHeartRate::WorkoutRecorderHeartRate(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24BB0;
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
  *a1 = &unk_286C24BB0;
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

uint64_t CMMsl::WorkoutRecorderHeartRate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24BB0;
    v6[1] = v4;
    CMMsl::WorkoutRecorderHeartRate::~WorkoutRecorderHeartRate(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHeartRate::formatText(CMMsl::WorkoutRecorderHeartRate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderHeartRate::readFrom(CMMsl::WorkoutRecorderHeartRate *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderHeartRate::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::OnsetHeartRateData *CMMsl::WorkoutRecorderHeartRate::hash_value(CMMsl::WorkoutRecorderHeartRate *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OnsetHeartRateData::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderHeartRate::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderHeartRateAccessory::~WorkoutRecorderHeartRateAccessory(CMMsl::WorkoutRecorderHeartRateAccessory *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24BE8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderHeartRateAccessory::~WorkoutRecorderHeartRateAccessory(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderHeartRateAccessory *CMMsl::WorkoutRecorderHeartRateAccessory::WorkoutRecorderHeartRateAccessory(CMMsl::WorkoutRecorderHeartRateAccessory *this, const CMMsl::AccessoryHeartRate **a2)
{
  *this = &unk_286C24BE8;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::operator=(uint64_t a1, const CMMsl::AccessoryHeartRate **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHeartRateAccessory::WorkoutRecorderHeartRateAccessory(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderHeartRateAccessory::~WorkoutRecorderHeartRateAccessory(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderHeartRateAccessory *a2, CMMsl::WorkoutRecorderHeartRateAccessory *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderHeartRateAccessory::WorkoutRecorderHeartRateAccessory(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24BE8;
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
  *a1 = &unk_286C24BE8;
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

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24BE8;
    v6[1] = v4;
    CMMsl::WorkoutRecorderHeartRateAccessory::~WorkoutRecorderHeartRateAccessory(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::formatText(CMMsl::WorkoutRecorderHeartRateAccessory *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::readFrom(CMMsl::WorkoutRecorderHeartRateAccessory *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderHeartRateAccessory::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::AccessoryHeartRate *CMMsl::WorkoutRecorderHeartRateAccessory::hash_value(CMMsl::WorkoutRecorderHeartRateAccessory *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::AccessoryHeartRate::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderHeartRateAccessory::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderHeartRateSourceDevice::~WorkoutRecorderHeartRateSourceDevice(CMMsl::WorkoutRecorderHeartRateSourceDevice *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24C20;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderHeartRateSourceDevice::~WorkoutRecorderHeartRateSourceDevice(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderHeartRateSourceDevice *CMMsl::WorkoutRecorderHeartRateSourceDevice::WorkoutRecorderHeartRateSourceDevice(CMMsl::WorkoutRecorderHeartRateSourceDevice *this, const CMMsl::HeartRateSourceDevice **a2)
{
  *this = &unk_286C24C20;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::operator=(uint64_t a1, const CMMsl::HeartRateSourceDevice **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHeartRateSourceDevice::WorkoutRecorderHeartRateSourceDevice(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderHeartRateSourceDevice::~WorkoutRecorderHeartRateSourceDevice(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderHeartRateSourceDevice *a2, CMMsl::WorkoutRecorderHeartRateSourceDevice *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderHeartRateSourceDevice::WorkoutRecorderHeartRateSourceDevice(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24C20;
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
  *a1 = &unk_286C24C20;
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

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24C20;
    v6[1] = v4;
    CMMsl::WorkoutRecorderHeartRateSourceDevice::~WorkoutRecorderHeartRateSourceDevice(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::formatText(CMMsl::WorkoutRecorderHeartRateSourceDevice *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::readFrom(CMMsl::WorkoutRecorderHeartRateSourceDevice *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderHeartRateSourceDevice::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::HeartRateSourceDevice *CMMsl::WorkoutRecorderHeartRateSourceDevice::hash_value(CMMsl::WorkoutRecorderHeartRateSourceDevice *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::HeartRateSourceDevice::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderHeartRateSourceDevice::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::~WorkoutRecorderHighFrequencyHeartRateWatch(CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24C58;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::~WorkoutRecorderHighFrequencyHeartRateWatch(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::WorkoutRecorderHighFrequencyHeartRateWatch(CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *this, const CMMsl::OnsetHeartRateData **a2)
{
  *this = &unk_286C24C58;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::operator=(uint64_t a1, const CMMsl::OnsetHeartRateData **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::WorkoutRecorderHighFrequencyHeartRateWatch(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::~WorkoutRecorderHighFrequencyHeartRateWatch(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *a2, CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::WorkoutRecorderHighFrequencyHeartRateWatch(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24C58;
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
  *a1 = &unk_286C24C58;
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

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24C58;
    v6[1] = v4;
    CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::~WorkoutRecorderHighFrequencyHeartRateWatch(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::formatText(CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::readFrom(CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::OnsetHeartRateData *CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::hash_value(CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OnsetHeartRateData::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderHighFrequencyHeartRateWatch::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderMagnetometer::~WorkoutRecorderMagnetometer(CMMsl::WorkoutRecorderMagnetometer *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24C90;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderMagnetometer::~WorkoutRecorderMagnetometer(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderMagnetometer *CMMsl::WorkoutRecorderMagnetometer::WorkoutRecorderMagnetometer(CMMsl::WorkoutRecorderMagnetometer *this, const CMMsl::Magnetometer **a2)
{
  *this = &unk_286C24C90;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderMagnetometer::operator=(uint64_t a1, const CMMsl::Magnetometer **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderMagnetometer::WorkoutRecorderMagnetometer(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderMagnetometer::~WorkoutRecorderMagnetometer(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderMagnetometer *a2, CMMsl::WorkoutRecorderMagnetometer *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderMagnetometer::WorkoutRecorderMagnetometer(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24C90;
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
  *a1 = &unk_286C24C90;
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

uint64_t CMMsl::WorkoutRecorderMagnetometer::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24C90;
    v6[1] = v4;
    CMMsl::WorkoutRecorderMagnetometer::~WorkoutRecorderMagnetometer(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderMagnetometer::formatText(CMMsl::WorkoutRecorderMagnetometer *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderMagnetometer::readFrom(CMMsl::WorkoutRecorderMagnetometer *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderMagnetometer::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Magnetometer *CMMsl::WorkoutRecorderMagnetometer::hash_value(CMMsl::WorkoutRecorderMagnetometer *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Magnetometer::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderMagnetometer::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderOdometer::~WorkoutRecorderOdometer(CMMsl::WorkoutRecorderOdometer *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24CC8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderOdometer::~WorkoutRecorderOdometer(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderOdometer *CMMsl::WorkoutRecorderOdometer::WorkoutRecorderOdometer(CMMsl::WorkoutRecorderOdometer *this, const CMMsl::Odometer ***a2)
{
  *this = &unk_286C24CC8;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderOdometer::operator=(uint64_t a1, const CMMsl::Odometer ***a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderOdometer::WorkoutRecorderOdometer(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderOdometer::~WorkoutRecorderOdometer(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderOdometer *a2, CMMsl::WorkoutRecorderOdometer *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderOdometer::WorkoutRecorderOdometer(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24CC8;
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
  *a1 = &unk_286C24CC8;
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

uint64_t CMMsl::WorkoutRecorderOdometer::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24CC8;
    v6[1] = v4;
    CMMsl::WorkoutRecorderOdometer::~WorkoutRecorderOdometer(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderOdometer::formatText(CMMsl::WorkoutRecorderOdometer *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderOdometer::readFrom(CMMsl::WorkoutRecorderOdometer *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderOdometer::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::OdometerWithAltitude *CMMsl::WorkoutRecorderOdometer::hash_value(CMMsl::WorkoutRecorderOdometer *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::OdometerWithAltitude::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderOdometer::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderPressure::~WorkoutRecorderPressure(CMMsl::WorkoutRecorderPressure *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24D00;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderPressure::~WorkoutRecorderPressure(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderPressure *CMMsl::WorkoutRecorderPressure::WorkoutRecorderPressure(CMMsl::WorkoutRecorderPressure *this, const CMMsl::Pressure **a2)
{
  *this = &unk_286C24D00;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderPressure::operator=(uint64_t a1, const CMMsl::Pressure **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderPressure::WorkoutRecorderPressure(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderPressure::~WorkoutRecorderPressure(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderPressure *a2, CMMsl::WorkoutRecorderPressure *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderPressure::WorkoutRecorderPressure(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24D00;
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
  *a1 = &unk_286C24D00;
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

uint64_t CMMsl::WorkoutRecorderPressure::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24D00;
    v6[1] = v4;
    CMMsl::WorkoutRecorderPressure::~WorkoutRecorderPressure(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderPressure::formatText(CMMsl::WorkoutRecorderPressure *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderPressure::readFrom(CMMsl::WorkoutRecorderPressure *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderPressure::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::Pressure *CMMsl::WorkoutRecorderPressure::hash_value(CMMsl::WorkoutRecorderPressure *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::Pressure::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderPressure::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderRotationRate::~WorkoutRecorderRotationRate(CMMsl::WorkoutRecorderRotationRate *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24D38;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderRotationRate::~WorkoutRecorderRotationRate(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderRotationRate *CMMsl::WorkoutRecorderRotationRate::WorkoutRecorderRotationRate(CMMsl::WorkoutRecorderRotationRate *this, const CMMsl::RotationRate **a2)
{
  *this = &unk_286C24D38;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderRotationRate::operator=(uint64_t a1, const CMMsl::RotationRate **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderRotationRate::WorkoutRecorderRotationRate(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderRotationRate::~WorkoutRecorderRotationRate(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderRotationRate *a2, CMMsl::WorkoutRecorderRotationRate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderRotationRate::WorkoutRecorderRotationRate(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24D38;
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
  *a1 = &unk_286C24D38;
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

uint64_t CMMsl::WorkoutRecorderRotationRate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24D38;
    v6[1] = v4;
    CMMsl::WorkoutRecorderRotationRate::~WorkoutRecorderRotationRate(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderRotationRate::formatText(CMMsl::WorkoutRecorderRotationRate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderRotationRate::readFrom(CMMsl::WorkoutRecorderRotationRate *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderRotationRate::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::RotationRate *CMMsl::WorkoutRecorderRotationRate::hash_value(CMMsl::WorkoutRecorderRotationRate *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::RotationRate::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderRotationRate::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWatchOnWristStatus::~WorkoutRecorderWatchOnWristStatus(CMMsl::WorkoutRecorderWatchOnWristStatus *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24D70;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWatchOnWristStatus::~WorkoutRecorderWatchOnWristStatus(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderWatchOnWristStatus *CMMsl::WorkoutRecorderWatchOnWristStatus::WorkoutRecorderWatchOnWristStatus(CMMsl::WorkoutRecorderWatchOnWristStatus *this, const CMMsl::WatchOnWristState **a2)
{
  *this = &unk_286C24D70;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::operator=(uint64_t a1, const CMMsl::WatchOnWristState **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWatchOnWristStatus::WorkoutRecorderWatchOnWristStatus(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWatchOnWristStatus::~WorkoutRecorderWatchOnWristStatus(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWatchOnWristStatus *a2, CMMsl::WorkoutRecorderWatchOnWristStatus *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWatchOnWristStatus::WorkoutRecorderWatchOnWristStatus(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24D70;
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
  *a1 = &unk_286C24D70;
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

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24D70;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWatchOnWristStatus::~WorkoutRecorderWatchOnWristStatus(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::formatText(CMMsl::WorkoutRecorderWatchOnWristStatus *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::readFrom(CMMsl::WorkoutRecorderWatchOnWristStatus *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWatchOnWristStatus::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::WatchOnWristState *CMMsl::WorkoutRecorderWatchOnWristStatus::hash_value(CMMsl::WorkoutRecorderWatchOnWristStatus *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::WatchOnWristState::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderWatchOnWristStatus::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWatchOrientationSettings::~WorkoutRecorderWatchOrientationSettings(CMMsl::WorkoutRecorderWatchOrientationSettings *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24DA8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWatchOrientationSettings::~WorkoutRecorderWatchOrientationSettings(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderWatchOrientationSettings *CMMsl::WorkoutRecorderWatchOrientationSettings::WorkoutRecorderWatchOrientationSettings(CMMsl::WorkoutRecorderWatchOrientationSettings *this, const CMMsl::WatchOrientationSettings **a2)
{
  *this = &unk_286C24DA8;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::operator=(uint64_t a1, const CMMsl::WatchOrientationSettings **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWatchOrientationSettings::WorkoutRecorderWatchOrientationSettings(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWatchOrientationSettings::~WorkoutRecorderWatchOrientationSettings(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWatchOrientationSettings *a2, CMMsl::WorkoutRecorderWatchOrientationSettings *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWatchOrientationSettings::WorkoutRecorderWatchOrientationSettings(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24DA8;
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
  *a1 = &unk_286C24DA8;
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

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24DA8;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWatchOrientationSettings::~WorkoutRecorderWatchOrientationSettings(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::formatText(CMMsl::WorkoutRecorderWatchOrientationSettings *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::readFrom(CMMsl::WorkoutRecorderWatchOrientationSettings *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderWatchOrientationSettings::hash_value(CMMsl::WorkoutRecorderWatchOrientationSettings *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = vbic_s8(v1[1], vceqz_s32(vand_s8(vdup_n_s32(v1[2].u8[0]), 0x200000001)));
  return (v2.i32[0] ^ v2.i32[1]);
}

void *CMMsl::WorkoutRecorderWatchOrientationSettings::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWifiScanResults::~WorkoutRecorderWifiScanResults(CMMsl::WorkoutRecorderWifiScanResults *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24DE0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWifiScanResults::~WorkoutRecorderWifiScanResults(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderWifiScanResults *CMMsl::WorkoutRecorderWifiScanResults::WorkoutRecorderWifiScanResults(CMMsl::WorkoutRecorderWifiScanResults *this, const CMMsl::WifiScanResults **a2)
{
  *this = &unk_286C24DE0;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderWifiScanResults::operator=(uint64_t a1, const CMMsl::WifiScanResults **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWifiScanResults::WorkoutRecorderWifiScanResults(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWifiScanResults::~WorkoutRecorderWifiScanResults(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWifiScanResults *a2, CMMsl::WorkoutRecorderWifiScanResults *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWifiScanResults::WorkoutRecorderWifiScanResults(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24DE0;
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
  *a1 = &unk_286C24DE0;
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

uint64_t CMMsl::WorkoutRecorderWifiScanResults::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24DE0;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWifiScanResults::~WorkoutRecorderWifiScanResults(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWifiScanResults::formatText(CMMsl::WorkoutRecorderWifiScanResults *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderWifiScanResults::readFrom(CMMsl::WorkoutRecorderWifiScanResults *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWifiScanResults::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

void *CMMsl::WorkoutRecorderWifiScanResults::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWorkoutEvent::~WorkoutRecorderWorkoutEvent(CMMsl::WorkoutRecorderWorkoutEvent *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24E18;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWorkoutEvent::~WorkoutRecorderWorkoutEvent(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderWorkoutEvent *CMMsl::WorkoutRecorderWorkoutEvent::WorkoutRecorderWorkoutEvent(CMMsl::WorkoutRecorderWorkoutEvent *this, const CMMsl::WorkoutEvent **a2)
{
  *this = &unk_286C24E18;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::operator=(uint64_t a1, const CMMsl::WorkoutEvent **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWorkoutEvent::WorkoutRecorderWorkoutEvent(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWorkoutEvent::~WorkoutRecorderWorkoutEvent(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWorkoutEvent *a2, CMMsl::WorkoutRecorderWorkoutEvent *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWorkoutEvent::WorkoutRecorderWorkoutEvent(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24E18;
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
  *a1 = &unk_286C24E18;
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

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24E18;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWorkoutEvent::~WorkoutRecorderWorkoutEvent(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::formatText(CMMsl::WorkoutRecorderWorkoutEvent *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::readFrom(CMMsl::WorkoutRecorderWorkoutEvent *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWorkoutEvent::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::WorkoutEvent *CMMsl::WorkoutRecorderWorkoutEvent::hash_value(CMMsl::WorkoutRecorderWorkoutEvent *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::WorkoutEvent::hash_value(result);
  }

  return result;
}

void *CMMsl::WorkoutRecorderWorkoutEvent::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutRecorderWorkoutSessionPriors::~WorkoutRecorderWorkoutSessionPriors(CMMsl::WorkoutRecorderWorkoutSessionPriors *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24E50;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::WorkoutRecorderWorkoutSessionPriors::~WorkoutRecorderWorkoutSessionPriors(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutRecorderWorkoutSessionPriors *CMMsl::WorkoutRecorderWorkoutSessionPriors::WorkoutRecorderWorkoutSessionPriors(CMMsl::WorkoutRecorderWorkoutSessionPriors *this, const CMMsl::WorkoutSessionPriors **a2)
{
  *this = &unk_286C24E50;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::operator=(uint64_t a1, const CMMsl::WorkoutSessionPriors **a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutRecorderWorkoutSessionPriors::WorkoutRecorderWorkoutSessionPriors(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::WorkoutRecorderWorkoutSessionPriors::~WorkoutRecorderWorkoutSessionPriors(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::WorkoutRecorderWorkoutSessionPriors *a2, CMMsl::WorkoutRecorderWorkoutSessionPriors *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::WorkoutRecorderWorkoutSessionPriors::WorkoutRecorderWorkoutSessionPriors(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24E50;
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
  *a1 = &unk_286C24E50;
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

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24E50;
    v6[1] = v4;
    CMMsl::WorkoutRecorderWorkoutSessionPriors::~WorkoutRecorderWorkoutSessionPriors(v6);
  }

  return a1;
}

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::formatText(CMMsl::WorkoutRecorderWorkoutSessionPriors *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::readFrom(CMMsl::WorkoutRecorderWorkoutSessionPriors *this, PB::Reader *a2)
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

uint64_t CMMsl::WorkoutRecorderWorkoutSessionPriors::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

void *CMMsl::WorkoutRecorderWorkoutSessionPriors::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::WorkoutSessionPriors::~WorkoutSessionPriors(CMMsl::WorkoutSessionPriors *this)
{
  *this = &unk_286C24E88;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C24E88;
  v2 = (this + 8);
  sub_25AD28930(&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_286C24E88;
  v2 = (this + 8);
  sub_25AD28930(&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::WorkoutSessionPriors *CMMsl::WorkoutSessionPriors::WorkoutSessionPriors(CMMsl::WorkoutSessionPriors *this, const CMMsl::WorkoutSessionPriors *a2)
{
  *(this + 1) = 0;
  *this = &unk_286C24E88;
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (*(a2 + 1) != *(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::WorkoutSessionPriors::operator=(uint64_t a1, const CMMsl::WorkoutSessionPriors *a2)
{
  if (a1 != a2)
  {
    CMMsl::WorkoutSessionPriors::WorkoutSessionPriors(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_286C24E88;
    v9 = &v7;
    sub_25AD28930(&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *CMMsl::swap(void *this, CMMsl::WorkoutSessionPriors *a2, CMMsl::WorkoutSessionPriors *a3)
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

void **CMMsl::WorkoutSessionPriors::WorkoutSessionPriors(void **a1, uint64_t a2)
{
  *a1 = &unk_286C24E88;
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
  *a1 = &unk_286C24E88;
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

uint64_t CMMsl::WorkoutSessionPriors::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C24E88;
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
    v9 = &unk_286C24E88;
    sub_25AD28930(&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::WorkoutSessionPriors::formatText(CMMsl::WorkoutSessionPriors *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "workoutPriors");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::WorkoutSessionPriors::readFrom(CMMsl::WorkoutSessionPriors *this, PB::Reader *a2)
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

      if ((v9 >> 3) == 2)
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

uint64_t CMMsl::WorkoutSessionPriors::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

BOOL sub_25AD27D50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
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
    result = CMMsl::WorkoutPriorInformation::operator==(*(v6 - 8), v7);
    v9 = !result || v6 == a2;
    v6 += 8;
  }

  while (!v9);
  return result;
}

uint64_t CMMsl::WorkoutSessionPriors::hash_value(CMMsl::WorkoutSessionPriors *this)
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
    v3 ^= CMMsl::WorkoutPriorInformation::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

void CMMsl::ZeroVelocityCorrection::~ZeroVelocityCorrection(CMMsl::ZeroVelocityCorrection *this)
{
  v2 = *(this + 1);
  *this = &unk_286C24EC0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ZeroVelocityCorrection::~ZeroVelocityCorrection(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::ZeroVelocityCorrection *CMMsl::ZeroVelocityCorrection::ZeroVelocityCorrection(CMMsl::ZeroVelocityCorrection *this, const CMMsl::DeviceMotionCorrection **a2)
{
  *this = &unk_286C24EC0;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::ZeroVelocityCorrection::operator=(uint64_t a1, const CMMsl::DeviceMotionCorrection **a2)
{
  if (a1 != a2)
  {
    CMMsl::ZeroVelocityCorrection::ZeroVelocityCorrection(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::ZeroVelocityCorrection::~ZeroVelocityCorrection(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ZeroVelocityCorrection *a2, CMMsl::ZeroVelocityCorrection *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::ZeroVelocityCorrection::ZeroVelocityCorrection(void *a1, uint64_t a2)
{
  *a1 = &unk_286C24EC0;
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
  *a1 = &unk_286C24EC0;
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

uint64_t CMMsl::ZeroVelocityCorrection::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C24EC0;
    v6[1] = v4;
    CMMsl::ZeroVelocityCorrection::~ZeroVelocityCorrection(v6);
  }

  return a1;
}

uint64_t CMMsl::ZeroVelocityCorrection::formatText(CMMsl::ZeroVelocityCorrection *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ZeroVelocityCorrection::readFrom(CMMsl::ZeroVelocityCorrection *this, PB::Reader *a2)
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

uint64_t CMMsl::ZeroVelocityCorrection::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::DeviceMotionCorrection *CMMsl::ZeroVelocityCorrection::hash_value(CMMsl::ZeroVelocityCorrection *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::DeviceMotionCorrection::hash_value(result);
  }

  return result;
}

void *CMMsl::ZeroVelocityCorrection::makeCorrection(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void *sub_25AD28530(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_25AAE65DC();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void **sub_25AD285D4(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 61))
      {
        sub_25AD28710(v10);
      }
    }

    sub_25AAE66B8();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_25AD28710(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_25AAE6684();
}

__n128 sub_25AD28758(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void **sub_25AD287AC(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (!(v10 >> 62))
      {
        sub_25AD288E8(v10);
      }
    }

    sub_25AAE66B8();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_25AD288E8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_25AAE6684();
}

void sub_25AD28930(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_25AD28984(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_25AD28984(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_25AD289F0(void **a1)
{
  if (*a1)
  {
    sub_25AD28984(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_25AD28A30(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x25F8548F0);
}

void ***sub_25AD28A84(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*v2);

    JUMPOUT(0x25F8548F0);
  }

  return result;
}

unint64_t sub_25AD28AE4(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *(a1 + 8);
  v3 = v1 < 0;
  if (v1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (!v3)
  {
    v2 = *(a1 + 23);
  }

  if (v2 > 0x20)
  {
    if (v2 > 0x40)
    {
      v34 = 0x9DDFEA08EB382D69;
      v44 = *(v4 + v2 - 48);
      v43 = *(v4 + v2 - 40);
      v45 = *(v4 + v2 - 24);
      v46 = *(v4 + v2 - 56);
      v47 = *(v4 + v2 - 16);
      v48 = *(v4 + v2 - 8);
      v49 = v46 + v47;
      v50 = 0x9DDFEA08EB382D69 * (v45 ^ ((0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v45 ^ (v44 + v2))));
      v51 = 0x9DDFEA08EB382D69 * (v50 ^ (v50 >> 47));
      v52 = *(v4 + v2 - 64) + v2;
      v53 = v44 + v46 + v52;
      v54 = __ROR8__(v53, 44) + v52;
      v55 = __ROR8__(v52 + v43 + v51, 21);
      v56 = v53 + v43;
      v57 = v54 + v55;
      v58 = v49 + *(v4 + v2 - 32) - 0x4B6D499041670D8DLL;
      v59 = v45 + v47 + v58;
      v60 = v59 + v48;
      v61 = __ROR8__(v59, 44) + v58 + __ROR8__(v58 + v43 + v48, 21);
      v63 = *v4;
      v62 = v4 + 4;
      v64 = v63 - 0x4B6D499041670D8DLL * v43;
      v65 = -((v2 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v66 = *(v62 - 3);
        v67 = v64 + v56 + v49 + v66;
        v68 = v62[2];
        v69 = v62[3];
        v70 = v62[1];
        v49 = v70 + v56 - 0x4B6D499041670D8DLL * __ROR8__(v49 + v57 + v68, 42);
        v71 = v51 + v60;
        v72 = *(v62 - 2);
        v73 = *(v62 - 1);
        v74 = *(v62 - 4) - 0x4B6D499041670D8DLL * v57;
        v75 = v74 + v60 + v73;
        v76 = v74 + v66 + v72;
        v56 = v76 + v73;
        v77 = __ROR8__(v76, 44) + v74;
        v78 = (0xB492B66FBE98F273 * __ROR8__(v67, 37)) ^ v61;
        v64 = 0xB492B66FBE98F273 * __ROR8__(v71, 33);
        v57 = v77 + __ROR8__(v75 + v78, 21);
        v79 = v64 + v61 + *v62;
        v60 = v70 + v68 + v79 + v69;
        v61 = __ROR8__(v70 + v68 + v79, 44) + v79 + __ROR8__(v49 + v72 + v79 + v69, 21);
        v62 += 8;
        v51 = v78;
        v65 += 64;
      }

      while (v65);
      v80 = 0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)));
      v81 = v64 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) ^ ((0x9DDFEA08EB382D69 * (v61 ^ ((0x9DDFEA08EB382D69 * (v61 ^ v57)) >> 47) ^ (0x9DDFEA08EB382D69 * (v61 ^ v57)))) >> 47));
      v82 = 0x9DDFEA08EB382D69 * (v81 ^ (v78 - 0x4B6D499041670D8DLL * (v49 ^ (v49 >> 47)) - 0x622015F714C7D297 * (v80 ^ (v80 >> 47))));
      v35 = 0x9DDFEA08EB382D69 * (v81 ^ (v82 >> 47) ^ v82);
    }

    else
    {
      v9 = v4 + v2;
      v10 = *(v4 + v2 - 16);
      v11 = *(v4 + v2 - 8);
      v12 = v4[1];
      v13 = *v4 - 0x3C5A37A36834CED9 * (v10 + v2);
      v16 = v4 + 2;
      v14 = v4[2];
      v15 = v16[1];
      v17 = __ROR8__(v13 + v15, 52);
      v18 = __ROR8__(v13, 37);
      v19 = v13 + v12;
      v20 = __ROR8__(v19, 7);
      v21 = v19 + v14;
      v22 = v20 + v18;
      v23 = *(v9 - 4) + v14;
      v24 = v11 + v15;
      v25 = __ROR8__(v24 + v23, 52);
      v26 = v22 + v17;
      v27 = __ROR8__(v23, 37);
      v28 = *(v9 - 3) + v23;
      v29 = __ROR8__(v28, 7);
      v30 = v26 + __ROR8__(v21, 31);
      v31 = v28 + v10;
      v32 = v31 + v24;
      v33 = v21 + v15 + v27 + v29 + v25 + __ROR8__(v31, 31);
      v34 = 0x9AE16A3B2F90404FLL;
      v35 = v30 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) ^ ((0xC3A5C85C97CB3127 * (v32 + v30) - 0x651E95C4D06FBFB1 * v33) >> 47));
    }

    return (v35 ^ (v35 >> 47)) * v34;
  }

  else
  {
    if (v2 > 0x10)
    {
      v36 = v4[1];
      v37 = 0xB492B66FBE98F273 * *v4;
      v38 = 0x9AE16A3B2F90404FLL * *(v4 + v2 - 8);
      v39 = __ROR8__(v38, 30) + __ROR8__(v37 - v36, 43);
      v40 = v37 + v2 + __ROR8__(v36 ^ 0xC949D7C7509E6557, 20) - v38;
      v41 = 0x9DDFEA08EB382D69 * ((v39 - 0x3C5A37A36834CED9 * *(v4 + v2 - 16)) ^ v40);
      v42 = v40 ^ (v41 >> 47) ^ v41;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    if (v2 >= 9)
    {
      v5 = *v4;
      v6 = *(v4 + v2 - 8);
      v7 = __ROR8__(v6 + v2, v2);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) ^ ((0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * (v7 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v7 ^ v5)))) >> 47))) ^ v6;
    }

    if (v2 >= 4)
    {
      v83 = *v4;
      v84 = *(v4 + v2 - 4);
      v85 = 0x9DDFEA08EB382D69 * ((v2 + (8 * v83)) ^ v84);
      v42 = v84 ^ (v85 >> 47) ^ v85;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v42) ^ ((0x9DDFEA08EB382D69 * v42) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v2)
    {
      v86 = (0xC949D7C7509E6557 * (v2 | (4 * *(v4 + v2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v4 | (*(v4 + (v2 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v86 ^ (v86 >> 47));
    }
  }

  return result;
}

void sub_25AD28F34(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_25AAE6684();
}

uint64_t sub_25AD28F7C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL CMMsl::Reader::nextItem(CMMsl::Reader *this, CMMsl::Item *a2)
{
  do
  {
    ItemInternal = CMMsl::Reader::nextItemInternal(this, a2);
  }

  while (ItemInternal == 1);
  return ItemInternal == 0;
}

void CMMsl::ReaderIterator::ReaderIterator(CMMsl::ReaderIterator *this, CMMsl::Reader *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = a2;
  CMMsl::ReaderIterator::operator++(this);
}

void sub_25AD29164(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_25AD299D4(v3);
  }

  _Unwind_Resume(exception_object);
}

CMMsl::Reader *CMMsl::Reader::Reader(CMMsl::Reader *this)
{
  *this = 0;
  *(this + 2) = -1;
  *(this + 10) = 0u;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 40) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0u;
  *(this + 24) = 0;
  inflateInit_((this + 48), "1.2.12", 112);
  return this;
}

void sub_25AD291F0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 168) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void CMMsl::Reader::~Reader(CMMsl::Reader *this)
{
  inflateEnd((this + 48));
  v2 = *(this + 20);
  if (v2)
  {
    *(this + 21) = v2;
    operator delete(v2);
  }
}

uint64_t CMMsl::Reader::open(CMMsl::Reader *this, const char *a2)
{
  CMMsl::Reader::close(this);
  v4 = open(a2, 0x1000000);
  *(this + 2) = v4;
  if (v4 < 0)
  {
    return 0;
  }

  v5 = lseek(v4, 0, 2);
  if ((v5 & 0x8000000000000000) != 0 || (v6 = v5, v7 = mmap(0, v5, 1, 1, *(this + 2), 0), v7 == -1))
  {
    CMMsl::Reader::close(this);
    return 0;
  }

  *(this + 2) = v6;
  *(this + 3) = 0;
  *(this + 4) = v7;
  *(this + 40) = 0;

  return CMMsl::Reader::openInternal(this);
}

uint64_t CMMsl::Reader::close(CMMsl::Reader *this)
{
  *(this + 21) = *(this + 20);
  *(this + 23) = 0;
  *(this + 24) = 0;
  if (!*this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      munmap(v2, *(this + 2));
    }
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 40) = 0;
  *(this + 4) = 0;
  result = *(this + 2);
  if ((result & 0x80000000) == 0)
  {
    result = close(result);
  }

  *(this + 2) = -1;
  *this = 0;
  return result;
}

uint64_t CMMsl::Reader::openInternal(CMMsl::Reader *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 0;
  }

  if (*(this + 2) > 7uLL && *v1 == 0xE020C5BE006C536DLL)
  {
    *(this + 3) += 8;
    return 1;
  }

  else
  {
    CMMsl::Reader::close(this);
    return 0;
  }
}

uint64_t CMMsl::Reader::open(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 16) = (*(*a2 + 32))(a2);
  *(a1 + 24) = 0;
  *(a1 + 32) = (*(*a2 + 24))(a2);
  *(a1 + 40) = 0;

  return CMMsl::Reader::openInternal(a1);
}

void *CMMsl::Reader::closeSens(void *this)
{
  this[21] = this[20];
  this[23] = 0;
  this[24] = 0;
  return this;
}

uint64_t CMMsl::Reader::nextItemInternal(CMMsl::Reader *this, CMMsl::Item *a2)
{
  v3 = *(this + 20);
  if (v3 == *(this + 21))
  {

    return CMMsl::Reader::nextSens(this);
  }

  else
  {
    v4 = (this + 184);
    v5 = *(this + 23);
    if (v5 >= 4 && (v7 = *(this + 24), v10 = *v7, v8 = (v7 + 1), v9 = v10, v11 = v5 - 4, *(this + 23) = v11, *(this + 24) = v8, v11 >= v10))
    {
      PB::Reader::Reader(v14, v8);
      (*(*a2 + 16))(a2, v14);
      v13 = *(this + 24) + v9;
      *(this + 23) -= v9;
      *(this + 24) = v13;
      return v14[24];
    }

    else
    {
      *(this + 21) = v3;
      result = 1;
      *v4 = 0;
      *(this + 24) = 0;
    }
  }

  return result;
}

uint64_t CMMsl::Reader::nextSens(CMMsl::Reader *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    return 2;
  }

  v3 = *(this + 2);
  v4 = *(this + 3);
  if (v4 >= v3)
  {
    goto LABEL_18;
  }

  v5 = v4 + 16;
  if (v3 <= v4 + 16)
  {
    goto LABEL_18;
  }

  if (*(this + 40) == 1)
  {
    *(this + 40) = 0;
    if (v4 + 8 < v3)
    {
      result = 1;
      while (*(v1 + v4) != 0x5979AAB3D5E07959)
      {
        v7 = v4 + 16;
        v4 += 8;
        *(this + 3) = v4;
        if (v7 >= v3)
        {
          return result;
        }
      }
    }

    return 1;
  }

  v8 = v1 + v4;
  if (*(v1 + v4) != 0x5979AAB3D5E07959)
  {
    *(this + 3) = v4 + 8;
    goto LABEL_20;
  }

  v11 = v8 + 8;
  v9 = *(v8 + 8);
  v10 = *(v11 + 4);
  *(this + 3) = v5;
  if (v9 == 1936614771)
  {
    if (v10 > 0xB)
    {
      v12 = v10;
      if (v5 + v10 < v3)
      {
        goto LABEL_17;
      }

      if (v4 + 44 < v3)
      {
        v12 = v3 - (v4 + 16);
LABEL_17:
        CMMsl::Reader::decompressSens(this, (v1 + v5 + 12), v12 - 12);
      }

LABEL_18:
      CMMsl::Reader::close(this);
      return 2;
    }

LABEL_20:
    result = 1;
    *(this + 40) = 1;
    return result;
  }

  *(this + 3) = (v4 + v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  return 1;
}

uint64_t CMMsl::Reader::scanForSync(uint64_t this)
{
  *(this + 40) = 0;
  v1 = *(this + 16);
  v2 = *(this + 24);
  if (v2 + 8 < v1)
  {
    v3 = *(this + 32);
    do
    {
      if (*(v3 + v2) == 0x5979AAB3D5E07959)
      {
        break;
      }

      v4 = v2 + 16;
      v2 += 8;
      *(this + 24) = v2;
    }

    while (v4 < v1);
  }

  return this;
}

void sub_25AD2987C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25AD2989C(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_25AAE66B8();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void sub_25AD299D4(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void sub_25AD29A60(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286C27EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD29ADC(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = *a2;
  v4 = (a1 + 16);
  if (*(a2 + 39) < 0)
  {
    sub_25AD28530((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *v4 = v5;
  }

  if (*(a2 + 63) < 0)
  {
    sub_25AD28530((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    sub_25AD28530((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  v8 = *(a2 + 88);
  *(a1 + 104) = 0u;
  *(a1 + 88) = v8;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xBFF0000000000000;
  v9 = sub_25AAE5D30(v4);
  *(a1 + 136) = v9;
  if ((v9 & 1) == 0)
  {
    if (qword_27FA115B0 != -1)
    {
      dispatch_once(&qword_27FA115B0, &unk_286C27F38);
    }

    v10 = qword_27FA115A8;
    if (os_log_type_enabled(qword_27FA115A8, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 39) < 0)
      {
        v4 = *v4;
      }

      v12 = 136446210;
      v13 = v4;
      _os_log_error_impl(&dword_25AAE5000, v10, OS_LOG_TYPE_ERROR, "Unable to create directory at path: %{public}s", &v12, 0xCu);
    }
  }

  return a1;
}

void sub_25AD29C7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25AD29CDC(uint64_t a1)
{
  sub_25AD29D50(a1);
  sub_25AD2B230((a1 + 128), 0);
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

CMMsl::Writer *sub_25AD29D50(uint64_t a1)
{
  v2 = (a1 + 128);
  result = *(a1 + 128);
  if (result)
  {
    CMMsl::Writer::sync(result);

    return sub_25AD2B230(v2, 0);
  }

  return result;
}

uint64_t sub_25AD29DA0(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x25F8548C0](a1 + 112);
  return a1;
}

void sub_25AD29EC0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 136))
  {
    v5 = *(a1 + 128);
    if (!v5 || (v6 = *(a1 + 144), v6 < 0.0) || (v6 <= a3 ? (v7 = v5[15] + v5[6] <= *a1) : (v7 = 0), !v7 || (LODWORD(a4) = *(a1 + 8), a3 - v6 > *&a4)))
    {
      sub_25AD29D50(a1);
      operator new();
    }

    v8 = v5[1];
    *block = MEMORY[0x277D85DD0];
    *&block[8] = 0x40000000;
    *&block[16] = sub_25AAE88EC;
    v12 = &unk_279922E38;
    v13 = v5;
    v14 = a2;
    dispatch_sync(v8, block);
  }

  else
  {
    if (qword_27FA115B0 != -1)
    {
      dispatch_once(&qword_27FA115B0, &unk_286C27F38);
    }

    v9 = qword_27FA115A8;
    if (os_log_type_enabled(qword_27FA115A8, OS_LOG_TYPE_FAULT))
    {
      *block = 136315650;
      *&block[4] = "assert";
      *&block[12] = 2080;
      *&block[14] = "fValid";
      *&block[22] = 2080;
      v12 = "On call to writeItem client should check if the logger was opened";
      _os_log_fault_impl(&dword_25AAE5000, v9, OS_LOG_TYPE_FAULT, "Event: %s\n Condition: %s\n Message: %s", block, 0x20u);
      if (qword_27FA115B0 != -1)
      {
        dispatch_once(&qword_27FA115B0, &unk_286C27F38);
      }
    }

    v10 = qword_27FA115A8;
    if (os_log_type_enabled(qword_27FA115A8, OS_LOG_TYPE_INFO))
    {
      *block = 136315650;
      *&block[4] = "assert";
      *&block[12] = 2080;
      *&block[14] = "fValid";
      *&block[22] = 2080;
      v12 = "On call to writeItem client should check if the logger was opened";
      _os_log_impl(&dword_25AAE5000, v10, OS_LOG_TYPE_INFO, "Event: %s\n Condition: %s\n Message: %s", block, 0x20u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MotionSensorLoggingFramework/Framework/MotionSensorLogging/MSLWriterManager.cpp", 69, "writeItem");
    __break(1u);
  }
}

void sub_25AD2AE60(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::locale a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, std::locale a32)
{
  if (a2)
  {
    if (a31 < 0)
    {
      operator delete(__p);
    }

    MEMORY[0x25F854790](&a32);
    __cxa_begin_catch(a1);
    std::ios_base::__set_badbit_and_consider_rethrow((v32 + *(*v32 - 24)));
    __cxa_end_catch();
    JUMPOUT(0x25AD2A5F8);
  }

  _Unwind_Resume(a1);
}

void sub_25AD2B1F0(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_25AD299D4(locale);
  }

  std::locale::~locale(this);
}

CMMsl::Writer *sub_25AD2B230(CMMsl::Writer **a1, CMMsl::Writer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    CMMsl::Writer::~Writer(result);

    JUMPOUT(0x25F8548F0);
  }

  return result;
}

void *sub_25AD2B27C(void *__dst, const void ***a2, char a3)
{
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25AAE65DC();
  }

  v7 = __dst;
  if (v5 >= 0x17)
  {
    operator new();
  }

  __dst[1] = 0;
  __dst[2] = 0;
  *__dst = 0;
  *(__dst + 23) = v5;
  if (v4)
  {
    if ((v3 & 0x80u) != 0)
    {
      a2 = *a2;
    }

    __dst = memmove(__dst, a2, v4);
  }

  v8 = v7 + v4;
  *v8 = a3;
  v8[1] = 0;
  return __dst;
}

os_log_t sub_25AD2B35C()
{
  result = os_log_create("com.apple.MotionSensorLogging", "MSL");
  qword_27FA115A8 = result;
  return result;
}

void sub_25AD2B38C(unint64_t a1, __int128 *a2, uint64_t **a3, uint64_t a4, char a5)
{
  v128[2] = *MEMORY[0x277D85DE8];
  while (2)
  {
    v9 = (a2 - 24);
    v10 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v10;
          v11 = a2 - v10;
          v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3uLL:
                sub_25AD2C680(a1, (a1 + 24), v9, a3);
                return;
              case 4uLL:
                sub_25AD2C990(a1, (a1 + 24), (a1 + 48), v9, a3);
                return;
              case 5uLL:
                sub_25AD2CB94(a1, (a1 + 24), (a1 + 48), (a1 + 72), v9, a3);
                return;
            }
          }

          else
          {
            if (v12 < 2)
            {
              return;
            }

            if (v12 == 2)
            {
              sub_25AD2D18C(v126, **a3, v9);
              sub_25AD2D18C(__p, **a3, a1);
              v53 = sub_25AAE7F0C(v126, __p);
              v54 = v53;
              if (v125 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v127) < 0)
              {
                operator delete(v126[0]);
              }

              if (v54 < 0)
              {
                v55 = *a1;
                v127 = *(a1 + 16);
                *v126 = v55;
                v56 = *v9;
                *(a1 + 16) = *(a2 - 1);
                *a1 = v56;
                v57 = *v126;
                *(a2 - 1) = v127;
                *v9 = v57;
              }

              return;
            }
          }

          if (v11 <= 575)
          {
            if (a5)
            {
              if (a1 != a2)
              {
                v58 = (a1 + 24);
                if ((a1 + 24) != a2)
                {
                  v59 = 0;
                  v60 = a1;
                  do
                  {
                    v61 = v58;
                    sub_25AD2D18C(v126, **a3, v58);
                    sub_25AD2D18C(__p, **a3, v60);
                    v62 = sub_25AAE7F0C(v126, __p);
                    if (v125 < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (SHIBYTE(v127) < 0)
                    {
                      operator delete(v126[0]);
                    }

                    if (v62 < 0)
                    {
                      v63 = *v61;
                      v123 = *(v61 + 2);
                      v122 = v63;
                      *(v61 + 1) = 0;
                      *(v61 + 2) = 0;
                      *v61 = 0;
                      v64 = v59;
                      do
                      {
                        v65 = a1 + v64;
                        if (*(a1 + v64 + 47) < 0)
                        {
                          operator delete(*(v65 + 24));
                        }

                        *(v65 + 24) = *v65;
                        *(v65 + 40) = *(v65 + 16);
                        *(v65 + 23) = 0;
                        *v65 = 0;
                        if (!v64)
                        {
                          v67 = a1;
                          goto LABEL_143;
                        }

                        sub_25AD2D18C(v126, **a3, &v122);
                        sub_25AD2D18C(__p, **a3, (a1 + v64 - 24));
                        v66 = sub_25AAE7F0C(v126, __p);
                        if (v125 < 0)
                        {
                          operator delete(__p[0]);
                        }

                        if (SHIBYTE(v127) < 0)
                        {
                          operator delete(v126[0]);
                        }

                        v64 -= 24;
                      }

                      while (v66 < 0);
                      v67 = a1 + v64 + 24;
                      if (*(a1 + v64 + 47) < 0)
                      {
                        operator delete(*v67);
                      }

LABEL_143:
                      v68 = v122;
                      *(v67 + 16) = v123;
                      *v67 = v68;
                    }

                    v58 = v61 + 24;
                    v59 += 24;
                    v60 = v61;
                  }

                  while (v61 + 24 != a2);
                }
              }
            }

            else if (a1 != a2)
            {
              v108 = (a1 + 24);
              if ((a1 + 24) != a2)
              {
                v109 = a1 - 24;
                do
                {
                  v110 = v108;
                  sub_25AD2D18C(v126, **a3, v108);
                  sub_25AD2D18C(__p, **a3, a1);
                  v111 = sub_25AAE7F0C(v126, __p);
                  if (v125 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(v127) < 0)
                  {
                    operator delete(v126[0]);
                  }

                  if (v111 < 0)
                  {
                    v112 = *v110;
                    v123 = *(v110 + 16);
                    v122 = v112;
                    *(v110 + 8) = 0;
                    *(v110 + 16) = 0;
                    *v110 = 0;
                    v113 = v109;
                    do
                    {
                      if (*(v113 + 71) < 0)
                      {
                        operator delete(*(v113 + 48));
                      }

                      *(v113 + 48) = *(v113 + 24);
                      *(v113 + 64) = *(v113 + 40);
                      *(v113 + 47) = 0;
                      *(v113 + 24) = 0;
                      sub_25AD2D18C(v126, **a3, &v122);
                      sub_25AD2D18C(__p, **a3, v113);
                      v114 = sub_25AAE7F0C(v126, __p);
                      if (v125 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (SHIBYTE(v127) < 0)
                      {
                        operator delete(v126[0]);
                      }

                      v113 -= 24;
                    }

                    while (v114 < 0);
                    if (*(v113 + 71) < 0)
                    {
                      operator delete(*(v113 + 48));
                    }

                    v115 = v122;
                    *(v113 + 64) = v123;
                    *(v113 + 48) = v115;
                  }

                  v108 = (v110 + 24);
                  v109 += 24;
                  a1 = v110;
                }

                while ((v110 + 24) != a2);
              }
            }

            return;
          }

          if (!a4)
          {
            if (a1 != a2)
            {
              v69 = (v12 - 2) >> 1;
              v119 = v69;
              do
              {
                v70 = v69;
                if (v119 >= v69)
                {
                  v117 = v69;
                  v71 = (2 * v69) | 1;
                  v72 = a1 + 24 * v71;
                  v73 = 2 * v69 + 2;
                  if (v73 < v12)
                  {
                    sub_25AD2D18C(v126, **a3, (a1 + 24 * v71));
                    sub_25AD2D18C(__p, **a3, (v72 + 24));
                    v74 = sub_25AAE7F0C(v126, __p);
                    if (v125 < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (SHIBYTE(v127) < 0)
                    {
                      operator delete(v126[0]);
                    }

                    if (v74 < 0)
                    {
                      v72 += 24;
                      v71 = v73;
                    }
                  }

                  sub_25AD2D18C(v126, **a3, v72);
                  v70 = v117;
                  v75 = a1 + 24 * v117;
                  sub_25AD2D18C(__p, **a3, v75);
                  v76 = sub_25AAE7F0C(v126, __p);
                  if (v125 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(v127) < 0)
                  {
                    operator delete(v126[0]);
                  }

                  if ((v76 & 0x80000000) == 0)
                  {
                    v77 = *v75;
                    v123 = *(v75 + 16);
                    v122 = v77;
                    *(v75 + 8) = 0;
                    *(v75 + 16) = 0;
                    *v75 = 0;
                    while (1)
                    {
                      v78 = v72;
                      if (*(v75 + 23) < 0)
                      {
                        operator delete(*v75);
                      }

                      v79 = *v72;
                      *(v75 + 16) = *(v72 + 16);
                      *v75 = v79;
                      *(v72 + 23) = 0;
                      *v72 = 0;
                      if (v119 < v71)
                      {
                        break;
                      }

                      v80 = (2 * v71) | 1;
                      v72 = a1 + 24 * v80;
                      v71 = 2 * v71 + 2;
                      if (v71 >= v12)
                      {
                        v71 = v80;
                      }

                      else
                      {
                        sub_25AD2D18C(v126, **a3, (a1 + 24 * v80));
                        sub_25AD2D18C(__p, **a3, (v72 + 24));
                        v81 = sub_25AAE7F0C(v126, __p);
                        if (v125 < 0)
                        {
                          operator delete(__p[0]);
                        }

                        if (SHIBYTE(v127) < 0)
                        {
                          operator delete(v126[0]);
                        }

                        if (v81 >= 0)
                        {
                          v71 = v80;
                        }

                        else
                        {
                          v72 += 24;
                        }
                      }

                      sub_25AD2D18C(v126, **a3, v72);
                      sub_25AD2D18C(__p, **a3, &v122);
                      v82 = sub_25AAE7F0C(v126, __p);
                      if (v125 < 0)
                      {
                        operator delete(__p[0]);
                      }

                      if (SHIBYTE(v127) < 0)
                      {
                        operator delete(v126[0]);
                      }

                      v83 = v82;
                      v75 = v78;
                      if (v83 < 0)
                      {
                        if (*(v78 + 23) < 0)
                        {
                          operator delete(*v78);
                        }

                        break;
                      }
                    }

                    v84 = v122;
                    *(v78 + 16) = v123;
                    *v78 = v84;
                    v70 = v117;
                  }
                }

                v69 = v70 - 1;
              }

              while (v70);
              v85 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
              do
              {
                v86 = 0;
                v116 = a2;
                v118 = *a1;
                v128[0] = *(a1 + 8);
                *(v128 + 7) = *(a1 + 15);
                v120 = *(a1 + 23);
                *(a1 + 8) = 0;
                *(a1 + 16) = 0;
                *a1 = 0;
                v87 = a1;
                do
                {
                  v88 = v87;
                  v89 = v87 + 24 * v86;
                  v87 = v89 + 24;
                  v90 = 2 * v86;
                  v86 = (2 * v86) | 1;
                  v91 = v90 + 2;
                  if (v90 + 2 < v85)
                  {
                    sub_25AD2D18C(v126, **a3, (v89 + 24));
                    v92 = (v89 + 48);
                    sub_25AD2D18C(__p, **a3, v92);
                    v93 = sub_25AAE7F0C(v126, __p);
                    if (v125 < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (SHIBYTE(v127) < 0)
                    {
                      operator delete(v126[0]);
                    }

                    if (v93 < 0)
                    {
                      v87 = v92;
                      v86 = v91;
                    }

                    if (*(v88 + 23) < 0)
                    {
                      operator delete(*v88);
                    }
                  }

                  v94 = *v87;
                  *(v88 + 16) = *(v87 + 16);
                  *v88 = v94;
                  *(v87 + 23) = 0;
                  *v87 = 0;
                }

                while (v86 <= ((v85 - 2) >> 1));
                a2 = (a2 - 24);
                if (v87 == (v116 - 24))
                {
                  *v87 = v118;
                  v106 = *(v128 + 7);
                  *(v87 + 8) = v128[0];
                  *(v87 + 15) = v106;
                  *(v87 + 23) = v120;
                }

                else
                {
                  v95 = *(v116 - 24);
                  *(v87 + 16) = *(v116 - 1);
                  *v87 = v95;
                  *(v116 - 3) = v118;
                  v96 = v128[0];
                  *(v116 - 9) = *(v128 + 7);
                  *(v116 - 2) = v96;
                  *(v116 - 1) = v120;
                  v97 = v87 - a1 + 24;
                  if (v97 >= 25)
                  {
                    v98 = (-2 - 0x5555555555555555 * (v97 >> 3)) >> 1;
                    v99 = a1 + 24 * v98;
                    sub_25AD2D18C(v126, **a3, v99);
                    sub_25AD2D18C(__p, **a3, v87);
                    v100 = sub_25AAE7F0C(v126, __p);
                    if (v125 < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (SHIBYTE(v127) < 0)
                    {
                      operator delete(v126[0]);
                    }

                    if (v100 < 0)
                    {
                      v101 = *v87;
                      v123 = *(v87 + 16);
                      v122 = v101;
                      *(v87 + 8) = 0;
                      *(v87 + 16) = 0;
                      *v87 = 0;
                      while (1)
                      {
                        v102 = v99;
                        if (*(v87 + 23) < 0)
                        {
                          operator delete(*v87);
                        }

                        v103 = *v99;
                        *(v87 + 16) = *(v99 + 16);
                        *v87 = v103;
                        *(v99 + 23) = 0;
                        *v99 = 0;
                        if (!v98)
                        {
                          break;
                        }

                        v98 = (v98 - 1) >> 1;
                        v99 = a1 + 24 * v98;
                        sub_25AD2D18C(v126, **a3, v99);
                        sub_25AD2D18C(__p, **a3, &v122);
                        v104 = sub_25AAE7F0C(v126, __p);
                        if (v125 < 0)
                        {
                          operator delete(__p[0]);
                        }

                        if (SHIBYTE(v127) < 0)
                        {
                          operator delete(v126[0]);
                        }

                        v87 = v102;
                        if ((v104 & 0x80000000) == 0)
                        {
                          if (*(v102 + 23) < 0)
                          {
                            operator delete(*v102);
                          }

                          break;
                        }
                      }

                      v105 = v122;
                      *(v102 + 16) = v123;
                      *v102 = v105;
                    }
                  }
                }
              }

              while (v85-- > 2);
            }

            return;
          }

          v13 = v12 >> 1;
          v14 = (a1 + 24 * (v12 >> 1));
          if (v11 < 0xC01)
          {
            sub_25AD2C680((a1 + 24 * (v12 >> 1)), a1, v9, a3);
          }

          else
          {
            sub_25AD2C680(a1, (a1 + 24 * (v12 >> 1)), v9, a3);
            v15 = (a1 + 24 * v13 - 24);
            sub_25AD2C680((a1 + 24), v15, a2 - 3, a3);
            v16 = a1 + 24 * v13;
            sub_25AD2C680((a1 + 48), (v16 + 24), (a2 - 72), a3);
            sub_25AD2C680(v15, v14, (v16 + 24), a3);
            v17 = *a1;
            v127 = *(a1 + 16);
            *v126 = v17;
            v18 = *v14;
            *(a1 + 16) = v14[1].n128_u64[0];
            *a1 = v18;
            v19 = *v126;
            v14[1].n128_u64[0] = v127;
            *v14 = v19;
          }

          --a4;
          if (a5)
          {
            break;
          }

          sub_25AD2D18C(v126, **a3, (a1 - 24));
          sub_25AD2D18C(__p, **a3, a1);
          v20 = sub_25AAE7F0C(v126, __p);
          if (v125 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v127) < 0)
          {
            operator delete(v126[0]);
          }

          if (v20 < 0)
          {
            break;
          }

          v38 = *a1;
          v123 = *(a1 + 16);
          v122 = v38;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          *a1 = 0;
          sub_25AD2D18C(v126, **a3, &v122);
          sub_25AD2D18C(__p, **a3, v9);
          v39 = sub_25AAE7F0C(v126, __p);
          if (v125 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v127) < 0)
          {
            operator delete(v126[0]);
          }

          if (v39 < 0)
          {
            v10 = a1;
            do
            {
              sub_25AD2D18C(v126, **a3, &v122);
              v10 += 24;
              sub_25AD2D18C(__p, **a3, v10);
              v42 = sub_25AAE7F0C(v126, __p);
              if (v125 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v127) < 0)
              {
                operator delete(v126[0]);
              }
            }

            while ((v42 & 0x80000000) == 0);
          }

          else
          {
            v40 = a1 + 24;
            do
            {
              v10 = v40;
              if (v40 >= a2)
              {
                break;
              }

              sub_25AD2D18C(v126, **a3, &v122);
              sub_25AD2D18C(__p, **a3, v10);
              v41 = sub_25AAE7F0C(v126, __p);
              if (v125 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v127) < 0)
              {
                operator delete(v126[0]);
              }

              v40 = v10 + 24;
            }

            while ((v41 & 0x80000000) == 0);
          }

          v43 = a2;
          if (v10 < a2)
          {
            v43 = a2;
            do
            {
              sub_25AD2D18C(v126, **a3, &v122);
              v43 = (v43 - 24);
              sub_25AD2D18C(__p, **a3, v43);
              v44 = sub_25AAE7F0C(v126, __p);
              if (v125 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v127) < 0)
              {
                operator delete(v126[0]);
              }
            }

            while (v44 < 0);
          }

          while (v10 < v43)
          {
            v45 = *v10;
            v127 = *(v10 + 16);
            *v126 = v45;
            v46 = *v43;
            *(v10 + 16) = *(v43 + 2);
            *v10 = v46;
            v47 = *v126;
            *(v43 + 2) = v127;
            *v43 = v47;
            do
            {
              sub_25AD2D18C(v126, **a3, &v122);
              v10 += 24;
              sub_25AD2D18C(__p, **a3, v10);
              v48 = sub_25AAE7F0C(v126, __p);
              if (v125 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v127) < 0)
              {
                operator delete(v126[0]);
              }
            }

            while ((v48 & 0x80000000) == 0);
            do
            {
              sub_25AD2D18C(v126, **a3, &v122);
              v43 = (v43 - 24);
              sub_25AD2D18C(__p, **a3, v43);
              v49 = sub_25AAE7F0C(v126, __p);
              if (v125 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v127) < 0)
              {
                operator delete(v126[0]);
              }
            }

            while (v49 < 0);
          }

          v50 = (v10 - 24);
          if (v10 - 24 == a1)
          {
            if (*(v10 - 1) < 0)
            {
              operator delete(*v50);
            }
          }

          else
          {
            if (*(a1 + 23) < 0)
            {
              operator delete(*a1);
            }

            v51 = *v50;
            *(a1 + 16) = *(v10 - 8);
            *a1 = v51;
            *(v10 - 1) = 0;
            *(v10 - 24) = 0;
          }

          a5 = 0;
          v52 = v122;
          *(v10 - 8) = v123;
          *v50 = v52;
        }

        v21 = 0;
        v22 = *a1;
        v123 = *(a1 + 16);
        v122 = v22;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = 0;
        do
        {
          sub_25AD2D18C(v126, **a3, (a1 + v21 + 24));
          sub_25AD2D18C(__p, **a3, &v122);
          v23 = sub_25AAE7F0C(v126, __p);
          if (v125 < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v127) < 0)
          {
            operator delete(v126[0]);
          }

          v21 += 24;
        }

        while (v23 < 0);
        v24 = a1 + v21;
        v25 = a2;
        if (v21 == 24)
        {
          v25 = a2;
          do
          {
            if (v24 >= v25)
            {
              break;
            }

            v25 -= 24;
            sub_25AD2D18C(v126, **a3, v25);
            sub_25AD2D18C(__p, **a3, &v122);
            v27 = sub_25AAE7F0C(v126, __p);
            if (v125 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v127) < 0)
            {
              operator delete(v126[0]);
            }
          }

          while ((v27 & 0x80000000) == 0);
        }

        else
        {
          do
          {
            v25 -= 24;
            sub_25AD2D18C(v126, **a3, v25);
            sub_25AD2D18C(__p, **a3, &v122);
            v26 = sub_25AAE7F0C(v126, __p);
            if (v125 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v127) < 0)
            {
              operator delete(v126[0]);
            }
          }

          while ((v26 & 0x80000000) == 0);
        }

        v10 = a1 + v21;
        if (v24 < v25)
        {
          v28 = v25;
          do
          {
            v29 = *v10;
            v127 = *(v10 + 16);
            *v126 = v29;
            v30 = *v28;
            *(v10 + 16) = *(v28 + 2);
            *v10 = v30;
            v31 = *v126;
            *(v28 + 2) = v127;
            *v28 = v31;
            do
            {
              v10 += 24;
              sub_25AD2D18C(v126, **a3, v10);
              sub_25AD2D18C(__p, **a3, &v122);
              v32 = sub_25AAE7F0C(v126, __p);
              if (v125 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v127) < 0)
              {
                operator delete(v126[0]);
              }
            }

            while (v32 < 0);
            do
            {
              v28 -= 24;
              sub_25AD2D18C(v126, **a3, v28);
              sub_25AD2D18C(__p, **a3, &v122);
              v33 = sub_25AAE7F0C(v126, __p);
              if (v125 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v127) < 0)
              {
                operator delete(v126[0]);
              }
            }

            while ((v33 & 0x80000000) == 0);
          }

          while (v10 < v28);
        }

        v34 = (v10 - 24);
        if (v10 - 24 == a1)
        {
          if (*(v10 - 1) < 0)
          {
            operator delete(*v34);
          }
        }

        else
        {
          if (*(a1 + 23) < 0)
          {
            operator delete(*a1);
          }

          v35 = *v34;
          *(a1 + 16) = *(v10 - 8);
          *a1 = v35;
          *(v10 - 1) = 0;
          *(v10 - 24) = 0;
        }

        v36 = v122;
        *(v10 - 8) = v123;
        *v34 = v36;
        if (v24 >= v25)
        {
          break;
        }

LABEL_64:
        sub_25AD2B38C(a1, (v10 - 24), a3, a4, a5 & 1);
        a5 = 0;
      }

      v37 = sub_25AD2CE30(a1, (v10 - 24), a3);
      if (sub_25AD2CE30(v10, a2, a3))
      {
        break;
      }

      if (!v37)
      {
        goto LABEL_64;
      }
    }

    a2 = (v10 - 24);
    if (!v37)
    {
      continue;
    }

    break;
  }
}

void sub_25AD2C578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_25AD2C680(__n128 *a1, __n128 *a2, __n128 *a3, uint64_t **a4)
{
  sub_25AD2D18C(v27, **a4, a2);
  sub_25AD2D18C(__p, **a4, a1);
  v8 = sub_25AAE7F0C(v27, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v28 & 0x80000000) == 0)
  {
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_25AD2D18C(v27, **a4, a3);
    sub_25AD2D18C(__p, **a4, a2);
    v11 = sub_25AAE7F0C(v27, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ((v11 & 0x80000000) == 0)
    {
LABEL_15:
      v12 = a1[1].n128_u64[0];
      v13 = *a1;
      v14 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v14;
      *a2 = v13;
      a2[1].n128_u64[0] = v12;
      sub_25AD2D18C(v27, **a4, a3);
      sub_25AD2D18C(__p, **a4, a2);
      v15 = sub_25AAE7F0C(v27, __p);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (v28 < 0)
      {
        operator delete(v27[0]);
        if ((v15 & 0x80000000) == 0)
        {
          return result;
        }
      }

      else if ((v15 & 0x80000000) == 0)
      {
        return result;
      }

      v20 = a2[1].n128_u64[0];
      result = *a2;
      v22 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v22;
      goto LABEL_30;
    }

    v20 = a1[1].n128_u64[0];
    result = *a1;
    v21 = a3[1].n128_u64[0];
    *a1 = *a3;
    a1[1].n128_u64[0] = v21;
LABEL_30:
    *a3 = result;
    a3[1].n128_u64[0] = v20;
    return result;
  }

  operator delete(v27[0]);
  if (v8 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_25AD2D18C(v27, **a4, a3);
  sub_25AD2D18C(__p, **a4, a2);
  v9 = sub_25AAE7F0C(v27, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
    if ((v9 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    return result;
  }

  v16 = a2[1].n128_u64[0];
  v17 = *a2;
  v18 = a3[1].n128_u64[0];
  *a2 = *a3;
  a2[1].n128_u64[0] = v18;
  *a3 = v17;
  a3[1].n128_u64[0] = v16;
  sub_25AD2D18C(v27, **a4, a2);
  sub_25AD2D18C(__p, **a4, a1);
  v19 = sub_25AAE7F0C(v27, __p);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(v27[0]);
    if ((v19 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    return result;
  }

  v23 = a1[1].n128_u64[0];
  result = *a1;
  v24 = a2[1].n128_u64[0];
  *a1 = *a2;
  a1[1].n128_u64[0] = v24;
  *a2 = result;
  a2[1].n128_u64[0] = v23;
  return result;
}

void sub_25AD2C964(_Unwind_Exception *exception_object)
{
  if (*(v1 - 81) < 0)
  {
    operator delete(*(v1 - 104));
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_25AD2C990(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t **a5)
{
  sub_25AD2C680(a1, a2, a3, a5);
  sub_25AD2D18C(v24, **a5, a4);
  sub_25AD2D18C(__p, **a5, a3);
  v10 = sub_25AAE7F0C(v24, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
    if ((v10 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    return result;
  }

  v12 = a3[1].n128_u64[0];
  v13 = *a3;
  v14 = a4[1].n128_u64[0];
  *a3 = *a4;
  a3[1].n128_u64[0] = v14;
  *a4 = v13;
  a4[1].n128_u64[0] = v12;
  sub_25AD2D18C(v24, **a5, a3);
  sub_25AD2D18C(__p, **a5, a2);
  v15 = sub_25AAE7F0C(v24, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    return result;
  }

  v16 = a2[1].n128_u64[0];
  v17 = *a2;
  v18 = a3[1].n128_u64[0];
  *a2 = *a3;
  a2[1].n128_u64[0] = v18;
  *a3 = v17;
  a3[1].n128_u64[0] = v16;
  sub_25AD2D18C(v24, **a5, a2);
  sub_25AD2D18C(__p, **a5, a1);
  v19 = sub_25AAE7F0C(v24, __p);
  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v19 < 0)
  {
    v20 = a1[1].n128_u64[0];
    result = *a1;
    v21 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v21;
    *a2 = result;
    a2[1].n128_u64[0] = v20;
  }

  return result;
}

void sub_25AD2CB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_25AD2CB94(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t **a6)
{
  sub_25AD2C990(a1, a2, a3, a4, a6);
  sub_25AD2D18C(v30, **a6, a5);
  sub_25AD2D18C(__p, **a6, a4);
  v12 = sub_25AAE7F0C(v30, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
    if ((v12 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v12 & 0x80000000) == 0)
  {
    return result;
  }

  v14 = a4[1].n128_u64[0];
  v15 = *a4;
  v16 = a5[1].n128_u64[0];
  *a4 = *a5;
  a4[1].n128_u64[0] = v16;
  *a5 = v15;
  a5[1].n128_u64[0] = v14;
  sub_25AD2D18C(v30, **a6, a4);
  sub_25AD2D18C(__p, **a6, a3);
  v17 = sub_25AAE7F0C(v30, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    return result;
  }

  v18 = a3[1].n128_u64[0];
  v19 = *a3;
  v20 = a4[1].n128_u64[0];
  *a3 = *a4;
  a3[1].n128_u64[0] = v20;
  *a4 = v19;
  a4[1].n128_u64[0] = v18;
  sub_25AD2D18C(v30, **a6, a3);
  sub_25AD2D18C(__p, **a6, a2);
  v21 = sub_25AAE7F0C(v30, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
    if ((v21 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if ((v21 & 0x80000000) == 0)
  {
    return result;
  }

  v22 = a2[1].n128_u64[0];
  v23 = *a2;
  v24 = a3[1].n128_u64[0];
  *a2 = *a3;
  a2[1].n128_u64[0] = v24;
  *a3 = v23;
  a3[1].n128_u64[0] = v22;
  sub_25AD2D18C(v30, **a6, a2);
  sub_25AD2D18C(__p, **a6, a1);
  v25 = sub_25AAE7F0C(v30, __p);
  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (v25 < 0)
  {
    v26 = a1[1].n128_u64[0];
    result = *a1;
    v27 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v27;
    *a2 = result;
    a2[1].n128_u64[0] = v26;
  }

  return result;
}

void sub_25AD2CE08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_25AD2CE30(__int128 *a1, __int128 *a2, uint64_t **a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = (a2 - 24);
        sub_25AD2D18C(v26, **a3, a2 - 24);
        sub_25AD2D18C(__p, **a3, a1);
        v8 = sub_25AAE7F0C(v26, __p);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        if (v8 < 0)
        {
          v9 = *(a1 + 2);
          v10 = *a1;
          v11 = *(v7 + 2);
          *a1 = *v7;
          *(a1 + 2) = v11;
          *v7 = v10;
          *(v7 + 2) = v9;
        }

        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      sub_25AD2C680(a1, (a1 + 24), (a2 - 24), a3);
      return 1;
    case 4:
      sub_25AD2C990(a1, (a1 + 24), a1 + 3, (a2 - 24), a3);
      return 1;
    case 5:
      sub_25AD2CB94(a1, (a1 + 24), a1 + 3, (a1 + 72), (a2 - 24), a3);
      return 1;
  }

LABEL_15:
  v12 = (a1 + 3);
  sub_25AD2C680(a1, (a1 + 24), a1 + 3, a3);
  v13 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    sub_25AD2D18C(v26, **a3, v13);
    sub_25AD2D18C(__p, **a3, v12);
    v16 = sub_25AAE7F0C(v26, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    if (v27 < 0)
    {
      operator delete(v26[0]);
    }

    if (v16 < 0)
    {
      v22 = *v13;
      v23 = *(v13 + 2);
      *(v13 + 1) = 0;
      *(v13 + 2) = 0;
      *v13 = 0;
      v17 = v14;
      do
      {
        v18 = a1 + v17;
        if (*(a1 + v17 + 95) < 0)
        {
          operator delete(*(v18 + 72));
        }

        *(v18 + 72) = *(v18 + 48);
        *(v18 + 88) = *(v18 + 64);
        *(v18 + 71) = 0;
        *(v18 + 48) = 0;
        if (v17 == -48)
        {
          v20 = a1;
          goto LABEL_34;
        }

        sub_25AD2D18C(v26, **a3, &v22);
        sub_25AD2D18C(__p, **a3, a1 + v17 + 24);
        v19 = sub_25AAE7F0C(v26, __p);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        if (v27 < 0)
        {
          operator delete(v26[0]);
        }

        v17 -= 24;
      }

      while (v19 < 0);
      v20 = a1 + v17 + 72;
      if (*(a1 + v17 + 95) < 0)
      {
        operator delete(*v20);
      }

LABEL_34:
      *v20 = v22;
      *(v20 + 16) = v23;
      if (++v15 == 8)
      {
        return (v13 + 24) == a2;
      }
    }

    v12 = v13;
    v14 += 24;
    v13 = (v13 + 24);
    if (v13 == a2)
    {
      return 1;
    }
  }
}

void sub_25AD2D140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25AD2D18C(void *a1, uint64_t a2, char *a3)
{
  v5 = a3[23];
  v6 = *a3;
  v7 = *(a3 + 1);
  v111 = 0;
  if (v5 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = v6;
  }

  if (v5 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = &v9[v8];
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v119 = 0uLL;
  v120 = 0;
  v121 = 0;
  v122 = 0;
  v112 = 0;
  v113 = 0;
  v11 = (*(a2 + 28) + 1);
  *&v114 = &v9[v8];
  *(&v114 + 1) = &v9[v8];
  v115 = 0;
  sub_25AD2E4C0(&v111, v11, &v114);
  v116 = v8;
  v117 = v8;
  v118 = 0;
  v119 = v114;
  v120 = v115;
  v122 = v8;
  v121 = 1;
  if ((*(a2 + 24) & 0x1F0) == 0)
  {
    if (sub_25AD2E618(a2, v8, &v9[v8], &v111, 4160, 1))
    {
      goto LABEL_182;
    }

    goto LABEL_187;
  }

  if (!*(a2 + 28))
  {
    memset(v123, 0, 48);
    v61 = *(a2 + 40);
    if (!v61)
    {
      goto LABEL_174;
    }

    *v127 = 0;
    memset(&v127[8], 0, 32);
    v128 = 0uLL;
    memset(v129, 0, 37);
    sub_25AD2F278(v123, v127);
    if (v129[0])
    {
      operator delete(v129[0]);
    }

    if (*&v127[32])
    {
      operator delete(*&v127[32]);
    }

    v62 = *&v123[8];
    v63 = *&v123[40] + *&v123[32] - 1;
    v64 = v63 / 0x2A;
    v65 = *(*&v123[8] + 8 * (v63 / 0x2A));
    v66 = 3 * (v63 % 0x2A);
    v67 = v65 + 32 * v66;
    *v67 = 0;
    *(v67 + 8) = v8;
    *(*(v62 + 8 * v64) + 32 * v66 + 16) = v8;
    *(*(v62 + 8 * v64) + 32 * v66 + 24) = v10;
    sub_25AD2EDC8((*(v62 + 8 * v64) + 32 * v66 + 56), *(a2 + 32));
    v107 = 0;
    v68 = 0;
    v106 = 0;
    v69 = *&v123[40];
    v70 = *&v123[8];
    v71 = *&v123[40] + *&v123[32] - 1;
    v72 = v71 / 0x2A;
    v73 = 3 * (v71 % 0x2A);
    *(*(*&v123[8] + 8 * v72) + 32 * v73 + 80) = v61;
    v74 = *(v70 + 8 * v72) + 32 * v73;
    *(v74 + 88) = 4160;
    *(v74 + 92) = 1;
    while (1)
    {
      if ((++v68 & 0xFFF) == 0 && (v68 >> 12) >= v9)
      {
        sub_25AD2EEC8();
      }

      v76 = *(*&v123[8] + 8 * ((v69 + *&v123[32] - 1) / 0x2AuLL)) + 96 * ((v69 + *&v123[32] - 1) % 0x2AuLL);
      v78 = (v76 + 80);
      v77 = *(v76 + 80);
      if (v77)
      {
        (*(*v77 + 16))(v77, v76);
      }

      v79 = *v76;
      if (*v76 <= -995)
      {
        if (v79 != -1000)
        {
          if (v79 == -999)
          {
            goto LABEL_171;
          }

          if (v79 != -995)
          {
            goto LABEL_194;
          }

          v80 = *&v123[32];
          v81 = *&v123[8];
          v82 = *&v123[16];
          if (!*&v123[32])
          {
            v83 = 42 * ((*&v123[16] - *&v123[8]) >> 3) - 1;
            if (*&v123[16] == *&v123[8])
            {
              v83 = 0;
            }

            if ((v83 - *&v123[40]) < 0x2A)
            {
              if (*&v123[16] - *&v123[8] < *&v123[24] - *v123)
              {
                if (*&v123[8] != *v123)
                {
                  operator new();
                }

                operator new();
              }

              if (*&v123[24] == *v123)
              {
                v94 = 1;
              }

              else
              {
                v94 = (*&v123[24] - *v123) >> 2;
              }

              *&v127[32] = v123;
              sub_25AD28F34(v94);
            }

            *&v123[32] = 42;
            *v127 = *(*&v123[16] - 8);
            *&v123[16] -= 8;
            sub_25AD2F758(v123, v127);
            v80 = *&v123[32];
            v81 = *&v123[8];
            v82 = *&v123[16];
          }

          v97 = (v81 + 8 * (v80 / 0x2A));
          v98 = *v97 + 96 * (v80 % 0x2A);
          if (v82 == v81)
          {
            v99 = 0;
          }

          else
          {
            v99 = v98;
          }

          if (v99 == *v97)
          {
            v99 = *(v97 - 1) + 4032;
          }

          v100 = *(v76 + 16);
          *(v99 - 96) = *v76;
          *(v99 - 80) = v100;
          *(v99 - 56) = 0;
          *(v99 - 48) = 0;
          *(v99 - 64) = 0;
          *(v99 - 64) = *(v76 + 32);
          *(v99 - 48) = *(v76 + 48);
          *(v76 + 32) = 0;
          *(v76 + 40) = 0;
          *(v76 + 48) = 0;
          *(v99 - 40) = 0;
          *(v99 - 32) = 0;
          *(v99 - 24) = 0;
          *(v99 - 40) = *(v76 + 56);
          *(v99 - 24) = *(v76 + 72);
          *(v76 + 56) = 0;
          *(v76 + 64) = 0;
          *(v76 + 72) = 0;
          v101 = *v78;
          *(v99 - 11) = *(v76 + 85);
          *(v99 - 16) = v101;
          *&v123[32] = vaddq_s64(*&v123[32], xmmword_25AD3BD30);
          goto LABEL_170;
        }

        if (*(v76 + 16) != v10)
        {
          goto LABEL_170;
        }

        v84 = &v10[-*(v76 + 8)];
        v85 = v106;
        if (v106 <= v84)
        {
          v85 = &v10[-*(v76 + 8)];
        }

        if (v107)
        {
          v84 = v85;
        }

        if (v84 == v9)
        {
          v86 = *&v123[8];
          v87 = *&v123[16];
          if (*&v123[16] == *&v123[8])
          {
            v87 = *&v123[8];
          }

          else
          {
            v88 = (*&v123[8] + 8 * (*&v123[32] / 0x2AuLL));
            v89 = (*v88 + 96 * (*&v123[32] % 0x2AuLL));
            v90 = *(*&v123[8] + 8 * ((*&v123[40] + *&v123[32]) / 0x2AuLL)) + 96 * ((*&v123[40] + *&v123[32]) % 0x2AuLL);
            if (v89 != v90)
            {
              do
              {
                sub_25AD2EF78(v89);
                v89 += 12;
                if ((v89 - *v88) == 4032)
                {
                  v91 = v88[1];
                  ++v88;
                  v89 = v91;
                }
              }

              while (v89 != v90);
              v86 = *&v123[8];
              v87 = *&v123[16];
            }
          }

          *&v123[40] = 0;
          v95 = (v87 - v86) >> 3;
          if (v95 >= 3)
          {
            do
            {
              operator delete(*v86);
              v86 = (*&v123[8] + 8);
              *&v123[8] = v86;
              v95 = (*&v123[16] - v86) >> 3;
            }

            while (v95 > 2);
          }

          if (v95 == 1)
          {
            v96 = 21;
LABEL_161:
            *&v123[32] = v96;
          }

          else if (v95 == 2)
          {
            v96 = 42;
            goto LABEL_161;
          }

          v107 = 1;
          v106 = v9;
          goto LABEL_171;
        }

        v106 = v84;
        sub_25AD2F5A4(v123);
        v107 = 1;
      }

      else
      {
        if (v79 > -993)
        {
          if (v79 == -992)
          {
            v92 = *(v76 + 16);
            *v127 = *v76;
            *&v127[16] = v92;
            v128 = 0uLL;
            *&v127[32] = 0;
            sub_25AD2F070(&v127[32], *(v76 + 32), *(v76 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v76 + 40) - *(v76 + 32)) >> 3));
            memset(v129, 0, 24);
            sub_25AD2F140(v129, *(v76 + 56), *(v76 + 64), (*(v76 + 64) - *(v76 + 56)) >> 4);
            v93 = *v78;
            *(&v129[3] + 5) = *(v76 + 85);
            v129[3] = v93;
            (*(**(v76 + 80) + 24))(*(v76 + 80), 1, v76);
            (*(*v129[3] + 24))(v129[3], 0, v127);
            sub_25AD2F278(v123, v127);
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
            }

            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
            }
          }

          else if (v79 != -991)
          {
LABEL_194:
            sub_25AD2EF20();
          }

          goto LABEL_171;
        }

        if (v79 != -994)
        {
          if (v79 != -993)
          {
            goto LABEL_194;
          }

LABEL_170:
          sub_25AD2F5A4(v123);
        }
      }

LABEL_171:
      v69 = *&v123[40];
      if (!*&v123[40])
      {
        if (v107)
        {
          v102 = v111;
          *v111 = v8;
          v102[1] = &v106[v8];
          *(v102 + 16) = 1;
          sub_25AD2F860(v123);
          goto LABEL_182;
        }

LABEL_174:
        sub_25AD2F860(v123);
LABEL_187:
        v103 = v111;
        goto LABEL_188;
      }
    }
  }

  v130 = 0;
  v131 = 0;
  v132 = 0;
  *v127 = 0;
  memset(&v127[8], 0, 32);
  v128 = 0u;
  memset(v129, 0, 37);
  v12 = *(a2 + 40);
  if (!v12)
  {
    v60 = 0;
    goto LABEL_177;
  }

  *&v125 = &v9[v8];
  *(&v125 + 1) = &v9[v8];
  v126 = 0;
  *v123 = 0;
  memset(&v123[8], 0, 48);
  memset(__p, 0, 37);
  sub_25AD2E9BC(&v130, v123);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v123[32])
  {
    operator delete(*&v123[32]);
  }

  v108 = a1;
  v13 = v131;
  *(v131 - 24) = 0;
  *(v13 - 11) = v8;
  *(v13 - 10) = v8;
  v109 = v8;
  *(v13 - 9) = v10;
  sub_25AD2EC30(v13 - 8, *(a2 + 28), &v125);
  sub_25AD2EDC8(v131 - 5, *(a2 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = v131;
  *(v131 - 2) = v12;
  *(v17 - 2) = 4160;
  *(v17 - 4) = 1;
  do
  {
    v18 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v9;
    if (!v18)
    {
      sub_25AD2EEC8();
    }

    v20 = (v17 - 4);
    v19 = *(v17 - 2);
    v21 = v17 - 24;
    if (v19)
    {
      (*(*v19 + 16))(v19, v17 - 24);
    }

    v22 = *v21;
    if (*v21 > -994)
    {
      switch(v22)
      {
        case -993:
          goto LABEL_43;
        case -992:
          v34 = *(v17 - 5);
          *v123 = *v21;
          *&v123[16] = v34;
          memset(&v123[32], 0, 24);
          sub_25AD2F070(&v123[32], *(v17 - 8), *(v17 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v17 - 7) - *(v17 - 8)) >> 3));
          memset(__p, 0, 24);
          sub_25AD2F140(__p, *(v17 - 5), *(v17 - 4), (*(v17 - 4) - *(v17 - 5)) >> 4);
          v35 = *v20;
          *(&__p[3] + 5) = *(v17 - 11);
          __p[3] = v35;
          (*(**v20 + 24))(*v20, 1, v17 - 24);
          (*(*__p[3] + 24))(__p[3], 0, v123);
          sub_25AD2E9BC(&v130, v123);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v123[32])
          {
            *&v123[40] = *&v123[32];
            operator delete(*&v123[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_193:
          sub_25AD2EF20();
      }
    }

    else
    {
      if ((v22 + 995) < 2)
      {
        goto LABEL_90;
      }

      if (v22 != -1000)
      {
        goto LABEL_193;
      }

      if (*(v17 - 10) != v10)
      {
LABEL_43:
        v33 = (v131 - 24);
        sub_25AD2EF78(v131 - 12);
        v131 = v33;
        goto LABEL_90;
      }

      v23 = &v10[-*(v17 - 11)];
      if ((v15 & (v14 >= v23)) == 0)
      {
        v24 = *(v17 - 5);
        *v127 = *v21;
        *&v127[16] = v24;
        if (v127 != v21)
        {
          v105 = v9;
          v26 = *(v17 - 8);
          v25 = *(v17 - 7);
          v27 = v25 - v26;
          v28 = *(&v128 + 1);
          v29 = *&v127[32];
          if (*(&v128 + 1) - *&v127[32] < v25 - v26)
          {
            if (*&v127[32])
            {
              *&v128 = *&v127[32];
              operator delete(*&v127[32]);
              v28 = 0;
              *&v127[32] = 0;
              v128 = 0uLL;
            }

            v30 = 0xAAAAAAAAAAAAAAABLL * (v27 >> 3);
            if (v30 <= 0xAAAAAAAAAAAAAAALL)
            {
              v31 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
              if (2 * v31 > v30)
              {
                v30 = 2 * v31;
              }

              if (v31 >= 0x555555555555555)
              {
                v32 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v32 = v30;
              }

              if (v32 <= 0xAAAAAAAAAAAAAAALL)
              {
                sub_25AD2EFD0(v32);
              }
            }

            sub_25AAE66B8();
          }

          v36 = v128;
          if (v128 - *&v127[32] >= v27)
          {
            while (v26 != v25)
            {
              *v29 = *v26;
              *(v29 + 16) = *(v26 + 16);
              v26 += 24;
              v29 += 24;
            }
          }

          else
          {
            v37 = (v26 + v128 - *&v127[32]);
            if (v128 != *&v127[32])
            {
              do
              {
                *v29 = *v26;
                *(v29 + 16) = *(v26 + 16);
                v26 += 24;
                v29 += 24;
              }

              while (v26 != v37);
            }

            if (v37 == v25)
            {
              v29 = v36;
            }

            else
            {
              v29 = v36;
              do
              {
                v38 = *v37;
                *(v36 + 16) = *(v37 + 2);
                *v36 = v38;
                v36 += 24;
                v37 = (v37 + 24);
                v29 += 24;
              }

              while (v37 != v25);
            }
          }

          *&v128 = v29;
          v40 = *(v17 - 5);
          v39 = *(v17 - 4);
          v41 = v39 - v40;
          v42 = v129[2];
          v43 = v129[0];
          if (v129[2] - v129[0] < (v39 - v40))
          {
            if (v129[0])
            {
              v129[1] = v129[0];
              operator delete(v129[0]);
              v42 = 0;
              memset(v129, 0, 24);
            }

            v44 = v41 >> 4;
            if (!((v41 >> 4) >> 60))
            {
              if (v42 >> 3 > v44)
              {
                v44 = v42 >> 3;
              }

              if (v42 >= 0x7FFFFFFFFFFFFFF0)
              {
                v45 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v45 = v44;
              }

              if (!(v45 >> 60))
              {
                sub_25AD2F028(v45);
              }
            }

            sub_25AAE66B8();
          }

          v46 = v129[1];
          if (v129[1] - v129[0] >= v41)
          {
            if (v40 == v39)
            {
              v9 = v105;
            }

            else
            {
              v9 = v105;
              do
              {
                *v43 = *v40;
                v43[1] = *(v40 + 1);
                v40 += 16;
                v43 += 2;
              }

              while (v40 != v39);
            }
          }

          else
          {
            v47 = &v40[v129[1] - v129[0]];
            if (v129[1] != v129[0])
            {
              do
              {
                *v43 = *v40;
                v43[1] = *(v40 + 1);
                v40 += 16;
                v43 += 2;
              }

              while (v40 != v47);
            }

            v9 = v105;
            if (v47 == v39)
            {
              v43 = v46;
            }

            else
            {
              v43 = v46;
              do
              {
                v48 = *v47;
                v47 += 16;
                *v46++ = v48;
                v43 += 2;
              }

              while (v47 != v39);
            }
          }

          v129[1] = v43;
        }

        v49 = *v20;
        *(&v129[3] + 5) = *(v17 - 11);
        v129[3] = v49;
        v14 = v23;
      }

      v50 = v131;
      if (v14 == v9)
      {
        v51 = v9;
        v52 = v130;
        while (v50 != v52)
        {
          v50 -= 12;
          sub_25AD2EF78(v50);
        }

        v131 = v52;
        v15 = 1;
        v9 = v51;
        v14 = v51;
      }

      else
      {
        v53 = (v131 - 24);
        sub_25AD2EF78(v131 - 12);
        v131 = v53;
        v15 = 1;
      }
    }

LABEL_90:
    v17 = v131;
  }

  while (v130 != v131);
  if (v15)
  {
    v54 = v111;
    *v111 = v109;
    v54[1] = &v14[v109];
    *(v54 + 16) = 1;
    a1 = v108;
    if (v128 != *&v127[32])
    {
      v55 = 0xAAAAAAAAAAAAAAABLL * ((v128 - *&v127[32]) >> 3);
      v56 = (*&v127[32] + 16);
      v57 = 1;
      do
      {
        v58 = &v54[3 * v57];
        *v58 = *(v56 - 1);
        v59 = *v56;
        v56 += 24;
        v58[16] = v59;
        v18 = v55 > v57++;
      }

      while (v18);
    }

    v60 = 1;
  }

  else
  {
    v60 = 0;
    a1 = v108;
  }

LABEL_177:
  if (v129[0])
  {
    v129[1] = v129[0];
    operator delete(v129[0]);
  }

  if (*&v127[32])
  {
    *&v128 = *&v127[32];
    operator delete(*&v127[32]);
  }

  *v127 = &v130;
  sub_25AD2F1F4(v127);
  if ((v60 & 1) == 0)
  {
    goto LABEL_187;
  }

LABEL_182:
  v103 = v111;
  v104 = v111 + 8;
  if (v112 == v111)
  {
    v104 = &v114 + 8;
  }

  v120 = *v104 != *(&v119 + 1);
  if (v112 != v111)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v112 - v111) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_25AAE66B8();
  }

LABEL_188:
  if (v103)
  {
    operator delete(v103);
  }

  if (a3[23] < 0)
  {
    sub_25AD28530(a1, *a3, *(a3 + 1));
  }

  else
  {
    *a1 = *a3;
    a1[2] = *(a3 + 2);
  }
}

void sub_25AD2E3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  operator delete(v36);
  if (*(v37 - 224))
  {
    operator delete(*(v37 - 224));
  }

  sub_25AD2F860(&a31);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *sub_25AD2E4C0(char **a1, unint64_t a2, __int128 *a3)
{
  v5 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - result) >> 3) < a2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= a2)
    {
      v8 = a2;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    sub_25AD2F0F0(a1, v9);
  }

  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - result) >> 3);
  }

  if (v12)
  {
    v13 = *a3;
    v14 = *(a3 + 16);
    v15 = result;
    do
    {
      *v15 = v13;
      v15[16] = v14;
      v15 += 24;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    a1[1] = &result[24 * a2];
  }

  else
  {
    v16 = &v10[24 * (a2 - v11)];
    v17 = 24 * a2 - 8 * ((v10 - result) >> 3);
    do
    {
      v18 = *a3;
      *(v10 + 2) = *(a3 + 2);
      *v10 = v18;
      v10 += 24;
      v17 -= 24;
    }

    while (v17);
    a1[1] = v16;
  }

  return result;
}

uint64_t sub_25AD2E618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  *&v40 = a3;
  *(&v40 + 1) = a3;
  v41 = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  sub_25AD2E9BC(&v42, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v43;
  *(v43 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  sub_25AD2EC30(v13 - 8, *(a1 + 28), &v40);
  sub_25AD2EDC8(v43 - 5, *(a1 + 32));
  v14 = v43;
  *(v43 - 2) = v6;
  *(v14 - 2) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      sub_25AD2EEC8();
    }

    v17 = v14 - 4;
    v16 = *(v14 - 2);
    v18 = v14 - 24;
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 24);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 5);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          sub_25AD2F070(&v36[32], *(v14 - 8), *(v14 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 7) - *(v14 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          sub_25AD2F140(__p, *(v14 - 5), *(v14 - 4), (*(v14 - 4) - *(v14 - 5)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 24);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          sub_25AD2E9BC(&v42, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          sub_25AD2EF20();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v43;
    ++v15;
    if (v42 == v43)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 10);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = (v43 - 24);
    sub_25AD2EF78(v43 - 12);
    v43 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 8);
  v28 = *(v14 - 7) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v42;
  sub_25AD2F1F4(v36);
  return v24;
}

void sub_25AD2E964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  sub_25AD2EBEC(&a11);
  a11 = v16 - 112;
  sub_25AD2F1F4(&a11);
  _Unwind_Resume(a1);
}

void sub_25AD2E9BC(void **a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      sub_25AAE66B8();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_25AAE6684();
    }

    v12 = *(a2 + 16);
    v13 = 96 * v8;
    *v13 = *a2;
    *(v13 + 16) = v12;
    *(v13 + 32) = *(a2 + 32);
    *(v13 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v13 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v13 + 85) = *(a2 + 85);
    *(v13 + 72) = v14;
    *(v13 + 80) = v15;
    v16 = *a1;
    v17 = a1[1];
    v18 = (v13 + *a1 - v17);
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = (v13 + *a1 - v17);
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 1) = v21;
        *(v20 + 5) = 0;
        *(v20 + 6) = 0;
        *(v20 + 2) = *(v19 + 2);
        *(v20 + 6) = *(v19 + 6);
        *(v19 + 4) = 0;
        *(v19 + 5) = 0;
        *(v19 + 6) = 0;
        *(v20 + 8) = 0;
        *(v20 + 9) = 0;
        *(v20 + 56) = *(v19 + 56);
        *(v20 + 9) = *(v19 + 9);
        *(v19 + 7) = 0;
        *(v19 + 8) = 0;
        *(v19 + 9) = 0;
        v22 = *(v19 + 10);
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 10) = v22;
        v19 += 96;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        sub_25AD2EF78(v16);
        v16 += 12;
      }

      while (v16 != v17);
      v16 = *a1;
    }

    v7 = (v13 + 96);
    *a1 = v18;
    a1[1] = v7;
    a1[2] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 1) = v5;
    *(v3 + 5) = 0;
    *(v3 + 6) = 0;
    *(v3 + 4) = 0;
    *(v3 + 2) = *(a2 + 32);
    *(v3 + 6) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 7) = 0;
    *(v3 + 8) = 0;
    *(v3 + 9) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 10) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void *sub_25AD2EBEC(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_25AD2EC30(uint64_t *a1, unint64_t a2, __int128 *a3)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 - *a1;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      a1[1] = v4 + 24 * a2;
    }
  }

  else
  {
    v8 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3) < v7)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 3);
        v10 = 2 * v9;
        if (2 * v9 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        sub_25AD2EFD0(v11);
      }

      sub_25AAE66B8();
    }

    v12 = v3 + 24 * v7;
    v13 = 24 * a2 - 8 * (v5 >> 3);
    do
    {
      v14 = *a3;
      *(v3 + 16) = *(a3 + 2);
      *v3 = v14;
      v3 += 24;
      v13 -= 24;
    }

    while (v13);
    a1[1] = v12;
  }
}

void sub_25AD2EDC8(const void **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = &v3[16 * a2];
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_25AD2F028(v10);
      }

      sub_25AAE66B8();
    }

    bzero(a1[1], 16 * v6);
    v11 = &v4[16 * v6];
  }

  a1[1] = v11;
}

void sub_25AD2EEC8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25AD2EF20()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25AD2EF78(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

void sub_25AD2EFD0(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_25AAE6684();
}

void sub_25AD2F028(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  sub_25AAE6684();
}

uint64_t *sub_25AD2F070(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_25AD2F0F0(result, a4);
  }

  return result;
}

void sub_25AD2F0D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25AD2F0F0(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_25AD2EFD0(a2);
  }

  sub_25AAE66B8();
}

uint64_t *sub_25AD2F140(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    sub_25AD2F1B4(result, a4);
  }

  return result;
}

void sub_25AD2F198(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_25AD2F1B4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_25AD2F028(a2);
  }

  sub_25AAE66B8();
}

void sub_25AD2F1F4(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        sub_25AD2EF78(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 sub_25AD2F278(void **a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = 42 * ((v5 - v4) >> 3) - 1;
  }

  v8 = a1[4];
  v9 = &v8[a1[5]];
  if (v7 == v9)
  {
    if (v8 < 0x2A)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v6 < v11)
      {
        if (v10 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == *a1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11 >> 2;
      }

      v17[4] = a1;
      sub_25AD28F34(v12);
    }

    a1[4] = v8 - 42;
    v17[0] = *v4;
    a1[1] = v4 + 1;
    sub_25AD2F654(a1, v17);
    v4 = a1[1];
    v9 = a1[4] + a1[5];
  }

  v13 = v4[v9 / 0x2A] + 96 * (v9 % 0x2A);
  v14 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 40) = 0;
  *(v13 + 48) = 0;
  *(v13 + 32) = 0;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0;
  result = *(a2 + 56);
  *(v13 + 56) = result;
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v16 = *(a2 + 80);
  *(v13 + 85) = *(a2 + 85);
  *(v13 + 80) = v16;
  a1[5] = a1[5] + 1;
  return result;
}

void sub_25AD2F574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(v10);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_25AD2F5A4(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  sub_25AD2EF78((*(a1[1] + 8 * (v2 / 0x2A)) + 96 * (v2 % 0x2A)));
  v3 = a1[2];
  v4 = v3 == a1[1];
  v5 = 42 * ((v3 - a1[1]) >> 3) - 1;
  v7 = a1[4];
  v6 = a1[5];
  a1[5] = v6 - 1;
  if (v4)
  {
    v5 = 0;
  }

  if ((v5 - (v6 + v7) - 83) <= 0xFFFFFFFFFFFFFFABLL)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

void sub_25AD2F654(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_25AD28F34(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_25AD2F758(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_25AD28F34(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t sub_25AD2F860(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * (v5 % 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * ((*(a1 + 40) + v5) % 0x2A);
    if (v7 != v8)
    {
      do
      {
        sub_25AD2EF78(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const std::locale *sub_25AD2F9E0(const std::locale *a1)
{
  v2 = MEMORY[0x25F854870]();
  a1[1].__locale_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  a1[2].__locale_ = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  return a1;
}

void sub_25AD2FE6C(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void sub_25AD2FED0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 17);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_25AD2FF28(uint64_t a1, unsigned __int8 *a2, char *a3)
{
  v6 = *(a1 + 56);
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = sub_25AD30648(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3 && *v7 == 124)
  {
    v9 = *(a1 + 56);
    v10 = v7 + 1;
    v11 = v7 + 1;
    do
    {
      v12 = v11;
      v11 = sub_25AD30648(a1, v11, a3);
    }

    while (v11 != v12);
    if (v12 == v10)
    {
      operator new();
    }

    sub_25AD30548(a1, v6, v9);
  }

  return v7;
}

unsigned __int8 *sub_25AD30098(_BYTE *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      sub_25AD30F38(a1);
    }

    if (a2 != a3)
    {
      do
      {
        v6 = v3;
        v7 = sub_25AD36184(a1, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        sub_25AD30FBC(a1);
      }
    }

    if (v3 != a3)
    {
      sub_25AD3612C();
    }
  }

  return v3;
}

unsigned __int8 *sub_25AD3014C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  result = sub_25AD366BC(a1, a2, a3);
  if (result == a2)
  {
LABEL_7:
    sub_25AD3612C();
  }

  if (result != a3 && *result == 124)
  {
    v8 = *(a1 + 56);
    if (sub_25AD366BC(a1, result + 1, a3) != result + 1)
    {
      sub_25AD30548(a1, v6, v8);
    }

    goto LABEL_7;
  }

  return result;
}

void sub_25AD301EC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 14);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25AD30274(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD302AC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_25AD302DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 != 0x800000025AD3BE13 && (((v3 & 0x800000025AD3BE13 & 0x8000000000000000) != 0) == __OFSUB__(v3, 0x800000025AD3BE13) || strcmp((v3 & 0x7FFFFFFFFFFFFFFFLL), (0x800000025AD3BE13 & 0x7FFFFFFFFFFFFFFFLL))))
  {
    return 0;
  }

  return a1;
}

void *sub_25AD30344(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD303B0(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD3043C(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_25AD30450(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD304BC(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

unsigned __int8 *sub_25AD30648(unsigned __int8 *result, char *a2, char *a3)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = *a2;
  if (v6 > 0x5B)
  {
    if (v6 != 92)
    {
      if (v6 == 94)
      {
        sub_25AD30F38(result);
      }

      goto LABEL_57;
    }

    if (a2 + 1 != a3)
    {
      v8 = a2[1];
      if (v8 == 66)
      {
        v9 = 1;
LABEL_51:
        sub_25AD31040(result, v9);
      }

      if (v8 == 98)
      {
        v9 = 0;
        goto LABEL_51;
      }
    }

    v10 = *(result + 7);
    v11 = *(result + 7);
    goto LABEL_34;
  }

  if (v6 == 36)
  {
    sub_25AD30FBC(result);
  }

  if (v6 == 40)
  {
    if (a2 + 1 != a3 && a2[1] == 63 && a2 + 2 != a3)
    {
      v7 = a2[2];
      if (v7 == 33)
      {
        sub_25AD2F9E0(v30);
        v31 = 0u;
        v33 = 0;
        v32 = 0u;
        LODWORD(v31) = *(result + 6);
        sub_25AD2FA40(v30, a2 + 3, a3);
        sub_25AD310D4(result, v30, 1, *(result + 7));
      }

      if (v7 == 61)
      {
        sub_25AD2F9E0(v30);
        v31 = 0u;
        v33 = 0;
        v32 = 0u;
        LODWORD(v31) = *(result + 6);
        sub_25AD2FA40(v30, a2 + 3, a3);
        sub_25AD310D4(result, v30, 0, *(result + 7));
      }
    }

    v10 = *(result + 7);
    v11 = *(result + 7);
    goto LABEL_20;
  }

LABEL_57:
  v10 = *(result + 7);
  v11 = *(result + 7);
  if (*a2 <= 0x3Eu)
  {
    if (*a2 <= 0x28u)
    {
      if (v6 != 36)
      {
        if (v6 == 40)
        {
LABEL_20:
          if (a2 + 1 == a3)
          {
            goto LABEL_90;
          }

          if (a2 + 2 != a3 && a2[1] == 63 && a2[2] == 58)
          {
            v12 = result + 36;
            ++*(result + 9);
            v13 = sub_25AD2FF28(result, a2 + 3, a3);
            if (v13 == a3)
            {
              goto LABEL_90;
            }

            v14 = v13;
            if (*v13 != 41)
            {
              goto LABEL_90;
            }
          }

          else
          {
            sub_25AD326C4(result);
            v15 = *(result + 7);
            v12 = result + 36;
            ++*(result + 9);
            v16 = sub_25AD2FF28(result, a2 + 1, a3);
            if (v16 == a3 || (v14 = v16, *v16 != 41))
            {
LABEL_90:
              sub_25AD311A4();
            }

            sub_25AD3274C(result, v15);
          }

          --*v12;
          v17 = (v14 + 1);
          goto LABEL_31;
        }

        goto LABEL_74;
      }
    }

    else if (v6 != 41)
    {
      if (v6 == 46)
      {
        operator new();
      }

      if (v6 - 42 < 2)
      {
LABEL_89:
        sub_25AD327CC();
      }

LABEL_74:
      sub_25AD32D70(result, v6);
    }

    return a2;
  }

  v26 = v6 - 92;
  if (v26 > 0x21)
  {
    goto LABEL_66;
  }

  if (((1 << (v6 - 92)) & 0x300000006) != 0)
  {
    return a2;
  }

  if (v6 == 92)
  {
LABEL_34:
    v19 = a2 + 1;
    if (a2 + 1 == a3)
    {
      sub_25AD3291C();
    }

    v20 = *v19;
    if (v20 == 48)
    {
      sub_25AD32D70(result, 0);
    }

    if ((v20 - 49) <= 8)
    {
      v21 = (v20 - 48);
      v22 = a2 + 2;
      if (a2 + 2 == a3)
      {
        goto LABEL_43;
      }

      do
      {
        v23 = *v22;
        if ((v23 - 48) > 9)
        {
          break;
        }

        if (v21 >= 0x19999999)
        {
          goto LABEL_91;
        }

        v21 = v23 + 10 * v21 - 48;
        ++v22;
      }

      while (v22 != a3);
      if (v21)
      {
LABEL_43:
        if (v21 <= v11)
        {
          sub_25AD32FAC(result, v21);
        }
      }

LABEL_91:
      sub_25AD32F54();
    }

    if (*v19 > 0x63u)
    {
      if (v20 == 119)
      {
        v24 = 0;
LABEL_78:
        sub_25AD33B34(result, v24);
      }

      if (v20 == 115)
      {
        v28 = 0;
        goto LABEL_84;
      }

      if (v20 != 100)
      {
        goto LABEL_79;
      }

      v25 = 0;
    }

    else
    {
      if (v20 != 68)
      {
        if (v20 != 83)
        {
          if (v20 == 87)
          {
            v24 = 1;
            goto LABEL_78;
          }

LABEL_79:
          v27 = sub_25AD32974(result, a2 + 1, a3, 0);
          if (v27 == v19)
          {
            v17 = a2;
          }

          else
          {
            v17 = v27;
          }

          goto LABEL_31;
        }

        v28 = 1;
LABEL_84:
        sub_25AD33B34(result, v28);
      }

      v25 = 1;
    }

    sub_25AD33B34(result, v25);
  }

  if (v26 == 31)
  {
    goto LABEL_89;
  }

LABEL_66:
  if (v6 != 91)
  {
    if (v6 == 63)
    {
      goto LABEL_89;
    }

    goto LABEL_74;
  }

  v17 = sub_25AD319EC(result, a2, a3);
LABEL_31:
  v18 = a2;
  if (v17 != a2)
  {
    v29 = (*(result + 7) + 1);

    return sub_25AD30C3C(result, v17, a3, v10, v11 + 1, v29);
  }

  return v18;
}

unsigned __int8 *sub_25AD30C3C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v22 = a2 + 1;
      if (v11)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22 == a3;
      }

      if (!v23 && *v22 == 63)
      {
        v14 = 0;
        v19 = 1;
        goto LABEL_33;
      }

      v14 = 0;
      v19 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = sub_25AD35CC4(a2 + 1, a3, &v31);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v18 = v16 + 1;
            if (!v11 && v18 != a3 && *v18 == 63)
            {
              v14 = v31;
              LODWORD(a5) = v7;
              LODWORD(a6) = v6;
              a1 = v10;
              v19 = v31;
LABEL_33:
              v24 = a4;
              v25 = 0;
              goto LABEL_46;
            }

            v14 = v31;
            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            v19 = v31;
            goto LABEL_45;
          }

          goto LABEL_56;
        }

        v26 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_56;
        }

        if (*v26 == 125)
        {
          v27 = v16 + 2;
          if (!v11 && v27 != a3 && *v27 == 63)
          {
            v14 = v31;
            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = v31;
          LODWORD(a5) = v7;
          LODWORD(a6) = v6;
          a1 = v10;
LABEL_36:
          v19 = -1;
LABEL_45:
          v24 = a4;
          v25 = 1;
          goto LABEL_46;
        }

        v30 = -1;
        v29 = sub_25AD35CC4(v16 + 1, a3, &v30);
        if (v29 != v26 && v29 != a3 && *v29 == 125)
        {
          v19 = v30;
          v14 = v31;
          if (v30 >= v31)
          {
            v25 = 1;
            if (!v11 && v29 + 1 != a3)
            {
              v25 = v29[1] != 63;
            }

            LODWORD(a5) = v7;
            LODWORD(a6) = v6;
            a1 = v10;
            v24 = a4;
LABEL_46:
            sub_25AD35B34(a1, v14, v19, v24, a5, a6, v25);
          }

          goto LABEL_56;
        }
      }

      sub_25AD35DB4();
    }

LABEL_56:
    sub_25AD35D5C();
  }

  if (v12 == 42)
  {
    v20 = a2 + 1;
    if (v11)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 == a3;
    }

    if (!v21 && *v20 == 63)
    {
      v14 = 0;
      goto LABEL_26;
    }

    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v14 = 1;
LABEL_26:
      v19 = -1;
      goto LABEL_33;
    }

    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

void sub_25AD311A4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_25AD311FC(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD31268(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD312F4(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void *sub_25AD3135C(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD313C8(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD31454(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_25AD314A8(std::locale *a1)
{
  a1->__locale_ = &unk_286C28148;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_25AD31534(std::locale *a1)
{
  a1->__locale_ = &unk_286C28148;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD315E0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_17;
  }

  v4 = *(a2 + 16);
  if (v4 == v3)
  {
    if ((*(a2 + 88) & 8) == 0)
    {
      v6 = *(v4 - 1);
      goto LABEL_13;
    }

LABEL_17:
    v10 = 0;
    goto LABEL_25;
  }

  if (v4 == v2)
  {
    v5 = *(a2 + 88);
    if ((v5 & 0x80) == 0)
    {
      if ((v5 & 4) == 0)
      {
        v6 = *v4;
LABEL_13:
        if (v6 == 95 || (v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
        {
          v10 = 1;
          goto LABEL_25;
        }

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  v7 = *(v4 - 1);
  v8 = *v4;
  v9 = v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0;
  v11 = v8 == 95 || (v8 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) != 0;
  v10 = v9 != v11;
LABEL_25:
  if (*(result + 40) == v10)
  {
    v12 = 0;
    v13 = -993;
  }

  else
  {
    v12 = *(result + 8);
    v13 = -994;
  }

  *a2 = v13;
  *(a2 + 80) = v12;
  return result;
}

std::locale *sub_25AD316F4(std::locale *a1)
{
  a1->__locale_ = &unk_286C28190;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_25AD299D4(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_25AD31790(std::locale *a1)
{
  a1->__locale_ = &unk_286C28190;
  locale = a1[8].__locale_;
  if (locale)
  {
    sub_25AD299D4(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x25F8548F0);
}

void sub_25AD3184C(uint64_t a1, uint64_t a2)
{
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0uLL;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  __p = 0;
  v19 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v20 = 0;
  *&v21 = v5;
  *(&v21 + 1) = v5;
  v22 = 0;
  sub_25AD2E4C0(&__p, v4, &v21);
  v23 = v6;
  v24 = v6;
  v25 = 0;
  v26 = v21;
  v27 = v22;
  v29 = v6;
  v28 = 1;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == sub_25AD2E618(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v19 - __p) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &v9[24 * v14];
    v16 = v12 + 24 * v11;
    *v16 = *v15;
    *(v16 + 16) = v15[16];
    v14 = v13;
    ++v11;
  }

  while (v10 > v13++);
LABEL_11:

  operator delete(v9);
}

void sub_25AD319D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_25AD319EC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 != a3)
    {
      sub_25AD33B34(a1, a2[1] == 94);
    }

    sub_25AD34C14();
  }

  return a2;
}

void sub_25AD32594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  *(v48 + 144) = v49;
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25AD326C4(uint64_t result)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_25AD3274C(uint64_t result, int a2)
{
  if ((*(result + 24) & 2) == 0)
  {
    operator new();
  }

  return result;
}

void sub_25AD327CC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_25AD32824(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD32890(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

void sub_25AD3291C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_25AD32974(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return v4;
  }

  v5 = *a2;
  if (v5 > 0x71)
  {
    if (*a2 <= 0x74u)
    {
      if (v5 == 114)
      {
        if (!a4)
        {
          v16 = 13;
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v17 = 13;
      }

      else
      {
        if (v5 != 116)
        {
          goto LABEL_72;
        }

        if (!a4)
        {
          v16 = 9;
          goto LABEL_77;
        }

        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v17 = 9;
      }
    }

    else
    {
      if (v5 == 117)
      {
        if (a2 + 1 == a3)
        {
          goto LABEL_97;
        }

        v8 = a2[1];
        if ((v8 & 0xF8) != 0x30 && (v8 & 0xFE) != 0x38 && (v8 | 0x20u) - 97 >= 6)
        {
          goto LABEL_97;
        }

        v4 = a2 + 2;
        if (a2 + 2 == a3)
        {
          goto LABEL_97;
        }

        v9 = *v4;
        v10 = -48;
        if ((v9 & 0xF8) != 0x30 && (v9 & 0xFE) != 0x38)
        {
          v9 |= 0x20u;
          if ((v9 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v10 = -87;
        }

        v6 = 16 * (v10 + v9);
LABEL_45:
        if (v4 + 1 == a3)
        {
          goto LABEL_97;
        }

        v11 = v4[1];
        v12 = -48;
        if ((v11 & 0xF8) != 0x30 && (v11 & 0xFE) != 0x38)
        {
          v11 |= 0x20u;
          if ((v11 - 97) >= 6)
          {
            goto LABEL_97;
          }

          v12 = -87;
        }

        if (v4 + 2 != a3)
        {
          v13 = v4[2];
          v14 = -48;
          if ((v13 & 0xF8) == 0x30 || (v13 & 0xFE) == 0x38)
          {
            goto LABEL_55;
          }

          v13 |= 0x20u;
          if ((v13 - 97) < 6)
          {
            v14 = -87;
LABEL_55:
            v15 = v13 + 16 * (v6 + v12 + v11) + v14;
            if (!a4)
            {
              sub_25AD32D70(a1, v15);
            }

            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            *a4 = v15;
            *(a4 + 1) = 0;
            v4 += 3;
            return v4;
          }
        }

LABEL_97:
        sub_25AD3291C();
      }

      if (v5 != 118)
      {
        if (v5 == 120)
        {
          v6 = 0;
          goto LABEL_45;
        }

LABEL_72:
        v16 = v5;
        if ((v16 & 0x80000000) == 0 && (*(*(*(a1 + 8) + 16) + 4 * v5) & 0x500) != 0)
        {
          goto LABEL_97;
        }

        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          *a4 = v5;
          return ++v4;
        }

LABEL_77:
        sub_25AD32D70(a1, v16);
      }

      if (!a4)
      {
        v16 = 11;
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v17 = 11;
    }

LABEL_90:
    *a4 = v17;
    return ++v4;
  }

  if (*a2 > 0x65u)
  {
    if (v5 == 102)
    {
      if (!a4)
      {
        v16 = 12;
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v17 = 12;
    }

    else
    {
      if (v5 != 110)
      {
        goto LABEL_72;
      }

      if (!a4)
      {
        v16 = 10;
        goto LABEL_77;
      }

      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      v17 = 10;
    }

    goto LABEL_90;
  }

  if (v5 == 48)
  {
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return ++v4;
    }

    v16 = 0;
    goto LABEL_77;
  }

  if (v5 != 99)
  {
    if (v5 == 95)
    {
      goto LABEL_97;
    }

    goto LABEL_72;
  }

  if (a2 + 1 == a3 || ((a2[1] & 0xDF) - 65) > 0x19u)
  {
    goto LABEL_97;
  }

  v7 = a2[1] & 0x1F;
  if (!a4)
  {
    sub_25AD32D70(a1, v7);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v7;
  *(a4 + 1) = 0;
  v4 += 2;
  return v4;
}

void sub_25AD32D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_25AD32EE8(_Unwind_Exception *a1)
{
  std::locale::~locale(v2 + 2);
  v2->__locale_ = &unk_286C28088;
  locale = v2[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x25F8548F0](v2, v1);
  _Unwind_Resume(a1);
}

void sub_25AD32F54()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25AD32FAC(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *sub_25AD330DC(std::locale *a1)
{
  a1->__locale_ = &unk_286C28220;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_25AD33168(std::locale *a1)
{
  a1->__locale_ = &unk_286C28220;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD33214(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    v5 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    v5 = *(v4 + 8);
  }

  *(a2 + 80) = v5;
  return result;
}

std::locale *sub_25AD332A8(std::locale *a1)
{
  a1->__locale_ = &unk_286C28268;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_25AD33334(std::locale *a1)
{
  a1->__locale_ = &unk_286C28268;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD333E0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

void *sub_25AD33428(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD33494(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD33520(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

std::locale *sub_25AD33568(std::locale *a1)
{
  a1->__locale_ = &unk_286C282F8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_25AD335F4(std::locale *a1)
{
  a1->__locale_ = &unk_286C282F8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD336A0(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8) - *v3;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      v7 = result;
      if (v4 < 1)
      {
LABEL_10:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(v7 + 8);
        goto LABEL_4;
      }

      v8 = 0;
      while (1)
      {
        v9 = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*v3 + v8));
        result = (*(**(v7 + 24) + 40))(*(v7 + 24), *(*(a2 + 16) + v8));
        if (v9 != result)
        {
          break;
        }

        if (v4 == ++v8)
        {
          v5 = *(a2 + 16);
          goto LABEL_10;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

std::locale *sub_25AD337BC(std::locale *a1)
{
  a1->__locale_ = &unk_286C28340;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_25AD33848(std::locale *a1)
{
  a1->__locale_ = &unk_286C28340;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD338F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) == 1)
  {
    v3 = *v2;
    v4 = *(v2 + 8) - *v2;
    v5 = *(a2 + 16);
    if (*(a2 + 24) - v5 >= v4)
    {
      if (v4 < 1)
      {
LABEL_9:
        *a2 = -994;
        *(a2 + 16) = v5 + v4;
        v6 = *(result + 8);
        goto LABEL_4;
      }

      v7 = v4;
      v8 = *(a2 + 16);
      while (1)
      {
        v10 = *v3++;
        v9 = v10;
        v11 = *v8++;
        if (v9 != v11)
        {
          break;
        }

        if (!--v7)
        {
          goto LABEL_9;
        }
      }
    }
  }

  v6 = 0;
  *a2 = -993;
LABEL_4:
  *(a2 + 80) = v6;
  return result;
}

void *sub_25AD33980(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD339EC(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

unsigned int *sub_25AD33A78(unsigned int *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_25AD32F54();
  }

  v5 = v3 + 24 * (v2 - 1);
  if (*(v5 + 16) == 1 && (v6 = result, result = *v5, v7 = *(v5 + 8) - *v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (result = memcmp(result, *(a2 + 16), v7), !result))
  {
    *a2 = -994;
    *(a2 + 16) = v8 + v7;
    v9 = *(v6 + 1);
  }

  else
  {
    v9 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v9;
  return result;
}

void sub_25AD33CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  sub_25AAE7FA4(&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  sub_25AD3468C(&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x25F8548F0](v10, v11);
  _Unwind_Resume(a1);
}

void sub_25AD33D58(uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    sub_25AD34B24(v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  sub_25AD34B24(a1 + 40, &v7);
}

void sub_25AD33DF8(std::locale *a1)
{
  sub_25AD347AC(a1);

  JUMPOUT(0x25F8548F0);
}

void sub_25AD33E30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v9 = 0;
    v10 = *(a1 + 168);
    goto LABEL_63;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_38;
  }

  LOBYTE(__src) = *v4;
  v6 = v4[1];
  HIBYTE(__src) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    HIBYTE(__src) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  *(&__s.__r_.__value_.__s + 23) = 2;
  LOWORD(__s.__r_.__value_.__l.__data_) = __src;
  __s.__r_.__value_.__s.__data_[2] = 0;
  std::__get_collation_name(&v74, &__s);
  __p = v74;
  size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
  v8 = SHIBYTE(v74.__r_.__value_.__r.__words[2]);
  if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v74.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    goto LABEL_14;
  }

  (*(**(a1 + 32) + 32))(&v74);
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v74;
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (HIBYTE(v74.__r_.__value_.__r.__words[2]) != 12 && HIBYTE(v74.__r_.__value_.__r.__words[2]) != 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      *(&__p.__r_.__value_.__s + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_168;
  }

  if (__p.__r_.__value_.__l.__size_ == 1 || __p.__r_.__value_.__l.__size_ == 12)
  {
LABEL_168:
    std::string::operator=(&__p, &__s);
    goto LABEL_9;
  }

  *__p.__r_.__value_.__l.__data_ = 0;
  __p.__r_.__value_.__l.__size_ = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

LABEL_14:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_16;
    }

LABEL_38:
    v10 = 0;
    v9 = 1;
    goto LABEL_39;
  }

  v22 = __p.__r_.__value_.__l.__size_;
  operator delete(__p.__r_.__value_.__l.__data_);
  if (!v22)
  {
    goto LABEL_38;
  }

LABEL_16:
  v11 = *(a1 + 112);
  v12 = *(a1 + 120) - v11;
  if (v12)
  {
    v13 = v12 >> 1;
    if ((v12 >> 1) <= 1)
    {
      v13 = 1;
    }

    v14 = (v11 + 1);
    while (__src != *(v14 - 1) || HIBYTE(__src) != *v14)
    {
      v14 += 2;
      if (!--v13)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_164;
  }

LABEL_25:
  if (*(a1 + 170) == 1 && *(a1 + 88) != *(a1 + 96))
  {
    sub_25AD34894(&__s, a1 + 16, &__src, &v74);
    v16 = *(a1 + 88);
    if (*(a1 + 96) == v16)
    {
LABEL_32:
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v17 = 0;
      v18 = 24;
      while (sub_25AAE7F0C((v16 + v18 - 24), &__s) > 0 || sub_25AAE7F0C(&__s, (*(a1 + 88) + v18)) >= 1)
      {
        ++v17;
        v16 = *(a1 + 88);
        v18 += 48;
        if (v17 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v16) >> 4))
        {
          goto LABEL_32;
        }
      }

      v20 = 5;
      v19 = 1;
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (v19)
    {
      v21 = 1;
      goto LABEL_144;
    }
  }

  if (*(a1 + 136) == *(a1 + 144))
  {
    v21 = 0;
    goto LABEL_146;
  }

  p_s = &__s;
  sub_25AD34A08(&__s, a1 + 16, &__src, &v74);
  v39 = *(a1 + 136);
  v40 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  v41 = *(a1 + 144) - v39;
  if (v41)
  {
    v42 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v43 = __s.__r_.__value_.__l.__size_;
    }

    if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_s = __s.__r_.__value_.__r.__words[0];
    }

    if (v42 <= 1)
    {
      v44 = 1;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAABLL * (v41 >> 3);
    }

    v45 = 1;
    v46 = 1;
    while (1)
    {
      v47 = *(v39 + 23);
      v48 = v47;
      if ((v47 & 0x80u) != 0)
      {
        v47 = *(v39 + 8);
      }

      if (v43 == v47)
      {
        v49 = v48 >= 0 ? v39 : *v39;
        if (!memcmp(p_s, v49, v43))
        {
          break;
        }
      }

      v46 = v45++ < v42;
      v39 += 24;
      if (!--v44)
      {
        goto LABEL_141;
      }
    }

    v21 = 1;
    v20 = 5;
    if (v40 < 0)
    {
LABEL_142:
      operator delete(__s.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v46 = 0;
LABEL_141:
    v20 = 0;
    v21 = 0;
    if (v40 < 0)
    {
      goto LABEL_142;
    }
  }

  if (!v46)
  {
LABEL_146:
    if (__src < 0)
    {
      v69 = *(a1 + 164);
    }

    else
    {
      v66 = *(a1 + 160);
      v67 = *(*(a1 + 24) + 16);
      v68 = *(v67 + 4 * __src);
      if (((v68 & v66) != 0 || __src == 95 && (v66 & 0x80) != 0) && (SHIBYTE(__src) & 0x8000000000000000) == 0 && ((*(v67 + 4 * SHIBYTE(__src)) & v66) != 0 || (v66 & 0x80) != 0 && SHIBYTE(__src) == 95))
      {
        goto LABEL_164;
      }

      v69 = *(a1 + 164);
      if ((v69 & v68) != 0 || __src == 95 && (v69 & 0x80) != 0)
      {
LABEL_163:
        v10 = v21;
LABEL_165:
        v9 = 2;
        goto LABEL_63;
      }
    }

    if ((SHIBYTE(__src) & 0x8000000000000000) == 0)
    {
      if ((*(*(*(a1 + 24) + 16) + 4 * SHIBYTE(__src)) & v69) == 0)
      {
        v10 = 1;
        if (SHIBYTE(__src) != 95 || (v69 & 0x80) == 0)
        {
          goto LABEL_165;
        }
      }

      goto LABEL_163;
    }

LABEL_164:
    v10 = 1;
    goto LABEL_165;
  }

LABEL_144:
  v9 = 2;
  v10 = v21;
  if (v20)
  {
    goto LABEL_63;
  }

LABEL_39:
  v23 = **(a2 + 16);
  v74.__r_.__value_.__s.__data_[0] = **(a2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v23) = (*(**(a1 + 24) + 40))(*(a1 + 24), v23);
    v74.__r_.__value_.__s.__data_[0] = v23;
  }

  v24 = *(a1 + 40);
  v25 = *(a1 + 48) - v24;
  if (v25)
  {
    if (v25 <= 1)
    {
      v25 = 1;
    }

    do
    {
      v26 = *v24++;
      if (v26 == v23)
      {
        goto LABEL_62;
      }
    }

    while (--v25);
  }

  v27 = *(a1 + 164);
  if (v27 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v23 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v23) & v27) == 0)
    {
      v29 = (v27 >> 7) & 1;
      v28 = v23 == 95 ? v29 : 0;
    }

    else
    {
      v28 = 1;
    }

    v30 = *(a1 + 72);
    v31 = memchr(*(a1 + 64), v23, v30 - *(a1 + 64));
    v32 = !v31 || v31 == v30;
    v33 = !v32;
    if ((v28 & 1) == 0 && !v33)
    {
LABEL_62:
      v10 = 1;
      goto LABEL_63;
    }
  }

  v36 = *(a1 + 88);
  v37 = *(a1 + 96);
  if (v36 == v37)
  {
    goto LABEL_100;
  }

  if (*(a1 + 170) == 1)
  {
    sub_25AD34894(&__s, a1 + 16, &v74, &v74.__r_.__value_.__s.__data_[1]);
    v36 = *(a1 + 88);
    v37 = *(a1 + 96);
  }

  else
  {
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v23;
  }

  if (v37 == v36)
  {
LABEL_96:
    v52 = 0;
  }

  else
  {
    v50 = 0;
    v51 = 24;
    while (sub_25AAE7F0C((v36 + v51 - 24), &__s) > 0 || sub_25AAE7F0C(&__s, (*(a1 + 88) + v51)) >= 1)
    {
      ++v50;
      v36 = *(a1 + 88);
      v51 += 48;
      if (v50 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 96) - v36) >> 4))
      {
        goto LABEL_96;
      }
    }

    v52 = 1;
    v10 = 1;
  }

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if ((v52 & 1) == 0)
  {
LABEL_100:
    if (*(a1 + 136) == *(a1 + 144))
    {
LABEL_135:
      v64 = *(a1 + 160);
      if ((v74.__r_.__value_.__s.__data_[0] & 0x8000000000000000) == 0 && (*(*(*(a1 + 24) + 16) + 4 * v74.__r_.__value_.__s.__data_[0]) & v64) != 0)
      {
        goto LABEL_62;
      }

      v65 = (v64 >> 7) & 1;
      if (v74.__r_.__value_.__s.__data_[0] != 95)
      {
        LOBYTE(v65) = 0;
      }

      v10 |= v65;
      goto LABEL_63;
    }

    v53 = &__s;
    sub_25AD34A08(&__s, a1 + 16, &v74, &v74.__r_.__value_.__s.__data_[1]);
    v54 = *(a1 + 136);
    v55 = *(a1 + 144) - v54;
    if (v55)
    {
      v70 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      v71 = v9;
      v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 3);
      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v57 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v57 = __s.__r_.__value_.__l.__size_;
      }

      if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v53 = __s.__r_.__value_.__r.__words[0];
      }

      if (v56 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 3);
      }

      v59 = 1;
      v60 = 1;
      while (1)
      {
        v61 = *(v54 + 23);
        v62 = v61;
        if ((v61 & 0x80u) != 0)
        {
          v61 = *(v54 + 8);
        }

        if (v57 == v61)
        {
          v63 = v62 >= 0 ? v54 : *v54;
          if (!memcmp(v53, v63, v57))
          {
            break;
          }
        }

        v60 = v59++ < v56;
        v54 += 24;
        if (!--v58)
        {
          goto LABEL_132;
        }
      }

      v10 = 1;
LABEL_132:
      v9 = v71;
      if ((v70 & 0x80) == 0)
      {
LABEL_134:
        if (v60)
        {
          goto LABEL_63;
        }

        goto LABEL_135;
      }
    }

    else
    {
      v60 = 0;
      if ((*(&__s.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_134;
      }
    }

    operator delete(__s.__r_.__value_.__l.__data_);
    goto LABEL_134;
  }

LABEL_63:
  if (*(a1 + 168) == (v10 & 1))
  {
    v34 = 0;
    v35 = -993;
  }

  else
  {
    *(a2 + 16) += v9;
    v34 = *(a1 + 8);
    v35 = -995;
  }

  *a2 = v35;
  *(a2 + 80) = v34;
}

void sub_25AD34650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_25AD3468C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        sub_25AD34710(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_25AD34710(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_25AD34768(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

std::locale *sub_25AD347AC(std::locale *a1)
{
  a1->__locale_ = &unk_286C283D0;
  v7 = a1 + 17;
  sub_25AAE7FA4(&v7);
  locale = a1[14].__locale_;
  if (locale)
  {
    a1[15].__locale_ = locale;
    operator delete(locale);
  }

  v7 = a1 + 11;
  sub_25AD3468C(&v7);
  v3 = a1[8].__locale_;
  if (v3)
  {
    a1[9].__locale_ = v3;
    operator delete(v3);
  }

  v4 = a1[5].__locale_;
  if (v4)
  {
    a1[6].__locale_ = v4;
    operator delete(v4);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_286C28088;
  v5 = a1[1].__locale_;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  return a1;
}

void sub_25AD34894(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_25AD34958(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25AD3493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_25AD34958(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_25AAE65DC();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

void sub_25AD34A08(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_25AD34958(__p, __src, a4, a4 - __src);
  v6 = v12;
  if ((v12 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v12 & 0x80u) != 0)
  {
    v6 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v7, v7 + v6);
  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 != 1)
  {
    if (v8 == 12)
    {
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      v10[11] = v10[3];
    }

    else if (v9 < 0)
    {
      **a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      *a1 = 0;
      *(a1 + 23) = 0;
    }
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25AD34B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25AD34B24(uint64_t a1, char *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_25AAE66B8();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_25AD34C14()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

_BYTE *sub_25AD34C6C(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    sub_25AD34C14();
  }

  sub_25AD35348(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    sub_25AD352F0();
  }

  return v6 + 2;
}

unsigned __int8 *sub_25AD34D3C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    sub_25AD3291C();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          goto LABEL_26;
        }

        *(a5 + 160) |= 0x500u;
        sub_25AD33D58(a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    goto LABEL_26;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 == 87)
  {
    *(a5 + 164) |= 0x500u;
    v15 = 95;
    if (*(a5 + 169) == 1)
    {
      v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v10 = a5 + 64;
      v11 = &v14;
    }

    else
    {
      if (*(a5 + 170) != 1)
      {
        sub_25AD34B24(a5 + 64, &v15);
        return a2 + 1;
      }

      v13 = 95;
      v10 = a5 + 64;
      v11 = &v13;
    }

    sub_25AD34B24(v10, v11);
    return a2 + 1;
  }

LABEL_26:

  return sub_25AD32974(a1, a2, a3, a4);
}

unsigned __int8 *sub_25AD34F30(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
    sub_25AD3291C();
  }

  v5 = *a2;
  v6 = v5;
  if (v5 > 101)
  {
    if (v5 <= 113)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v10 = 12;
          goto LABEL_73;
        }

        v6 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v10 = 10;
          goto LABEL_73;
        }

        v6 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 13;
            goto LABEL_73;
          }

          v6 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 9;
            goto LABEL_73;
          }

          v6 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v10 = 11;
            goto LABEL_73;
          }

          v6 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 91)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      return a2 + 1;
    }

    goto LABEL_57;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v10 = 7;
        goto LABEL_73;
      }

      v6 = 7;
LABEL_57:
      sub_25AD32D70(a1, v6);
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v10 = 8;
LABEL_73:
        *a4 = v10;
        return a2 + 1;
      }

      v6 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v6 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v7 = v5 - 48;
  v8 = a2 + 1;
  if (a2 + 1 != a3 && (*v8 & 0xF8) == 0x30)
  {
    v7 = *v8 + 8 * v7 - 48;
    v8 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v9 = *v8 + 8 * v7 - 48;
      if ((*v8 & 0xF8) == 0x30)
      {
        v8 = a2 + 3;
        v7 = v9;
      }
    }
  }

  if (!a4)
  {
    sub_25AD32D70(a1, v7);
  }

  if (*(a4 + 23) < 0)
  {
    a4[1] = 1;
    a4 = *a4;
  }

  else
  {
    *(a4 + 23) = 1;
  }

  *a4 = v7;
  *(a4 + 1) = 0;
  return v8;
}

void sub_25AD35214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  sub_25AD357E4(v6, v7);
}

void sub_25AD352F0()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25AD35348(uint64_t a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_25AD34958(&__s, __src, a4, a4 - __src);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    if (!__s.__r_.__value_.__l.__size_)
    {
      goto LABEL_9;
    }

    p_s = __s.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&__s.__r_.__value_.__s + 23))
    {
      return;
    }

    p_s = &__s;
  }

  std::__get_collation_name(&v11, p_s);
  *a1 = *&v11.__r_.__value_.__l.__data_;
  v7 = v11.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v11.__r_.__value_.__l + 2);
  v8 = HIBYTE(v7);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    goto LABEL_9;
  }

  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__s.__r_.__value_.__l.__size_ >= 3)
    {
      goto LABEL_9;
    }
  }

  else if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) >= 3)
  {
    return;
  }

  (*(**(a2 + 16) + 32))(&v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v9 = *(a1 + 23);
    if (v9 != 12 && v9 != 1)
    {
      *a1 = 0;
      *(a1 + 23) = 0;
      goto LABEL_9;
    }

    goto LABEL_23;
  }

  v10 = *(a1 + 8);
  if (v10 == 1 || v10 == 12)
  {
LABEL_23:
    std::string::operator=(a1, &__s);
    goto LABEL_9;
  }

  **a1 = 0;
  *(a1 + 8) = 0;
LABEL_9:
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_25AD354CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25AD35500()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25AD35558(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      sub_25AAE66B8();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      sub_25AAE6684();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0uLL;
    v13 = *(a2 + 24);
    a2[1] = 0uLL;
    *(v12 + 40) = *(a2 + 5);
    a2[2] = 0uLL;
    v7 = (48 * v8 + 48);
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = (48 * v8 - v15);
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
  }

  a1[1] = v7;
}

void sub_25AD356C8(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  sub_25AD34958(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_25AD35770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25AD3578C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25AD357E4(uint64_t a1, __int16 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      sub_25AAE66B8();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_25AAE6684();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void *sub_25AD358DC(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD35948(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD359D4(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_25AD35A04(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD35A70(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD35AFC(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned __int8 *sub_25AD35CC4(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            sub_25AD35D5C();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void sub_25AD35D5C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25AD35DB4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_25AD35E10(void *a1)
{
  sub_25AD35F64(a1);

  JUMPOUT(0x25F8548F0);
}

unsigned int *sub_25AD35E48(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return sub_25AD36018(result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

unsigned int *sub_25AD35EF8(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return sub_25AD36018(result, a3);
  }

  return result;
}

void sub_25AD35F2C(void *a1)
{
  sub_25AD35F64(a1);

  JUMPOUT(0x25F8548F0);
}

void *sub_25AD35F64(void *a1)
{
  *a1 = &unk_286C28508;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_286C28088;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

unsigned int *sub_25AD36018(unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t sub_25AD36080(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_25AD36098(void *a1)
{
  sub_25AD35F64(a1);

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD360DC(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_25AD36118(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_25AD3612C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x25F854720](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

unsigned __int8 *sub_25AD36184(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    v6 = *(a1 + 56);
    v7 = *(a1 + 28);
    v9 = a2 + 1;
    v8 = *a2;
    if (a2 + 1 != a3 || v8 != 36)
    {
      if ((v8 - 46) > 0x2E || ((1 << (v8 - 46)) & 0x600000000001) == 0)
      {
        sub_25AD32D70(a1, v8);
      }

      if (v9 == a3 || v8 != 92)
      {
        if (v8 == 46)
        {
          operator new();
        }
      }

      else
      {
        v18 = *v9;
        if ((v18 - 36) <= 0x3A && ((1 << (v18 - 36)) & 0x580000000000441) != 0)
        {
          sub_25AD32D70(a1, v18);
        }
      }
    }

    v10 = sub_25AD319EC(a1, a2, a3);
    v11 = v10;
    if (v10 == v3 && v10 != a3 && v10 + 1 != a3 && *v10 == 92)
    {
      v12 = v10[1];
      if (v12 == 40)
      {
        v13 = v10 + 2;
        sub_25AD326C4(a1);
        v14 = *(a1 + 28);
        do
        {
          v15 = v13;
          v16 = sub_25AD36184(a1, v13, a3);
          v13 = v16;
        }

        while (v16 != v15);
        if (v15 == a3 || v16 + 1 == a3 || *v16 != 92 || v16[1] != 41)
        {
          sub_25AD311A4();
        }

        v11 = v16 + 2;
        sub_25AD3274C(a1, v14);
      }

      else
      {
        v19 = sub_25AD3665C(a1, v12);
        v20 = 2;
        if (!v19)
        {
          v20 = 0;
        }

        v11 += v20;
      }
    }

    if (v11 != v3)
    {
      if (v11 != a3)
      {
        v21 = *(a1 + 28) + 1;
        v22 = *v11;
        if (v22 == 42)
        {
          sub_25AD35B34(a1, 0, -1, v6, v7 + 1, *(a1 + 28) + 1, 1);
        }

        if (v11 + 1 != a3 && v22 == 92 && v11[1] == 123)
        {
          v31 = 0;
          v23 = sub_25AD35CC4(v11 + 2, a3, &v31);
          if (v23 == v11 + 2)
          {
            goto LABEL_58;
          }

          if (v23 != a3)
          {
            v24 = v23 + 1;
            v25 = *v23;
            if (v25 == 44)
            {
              v30 = -1;
              v26 = sub_25AD35CC4(v23 + 1, a3, &v30);
              if (v26 != a3 && v26 + 1 != a3 && *v26 == 92 && v26[1] == 125)
              {
                v27 = v30;
                if (v30 == -1)
                {
                  v28 = a1;
                  v27 = -1;
LABEL_55:
                  sub_25AD35B34(v28, v31, v27, v6, v7 + 1, v21, 1);
                }

                if (v30 >= v31)
                {
                  v28 = a1;
                  goto LABEL_55;
                }

LABEL_58:
                sub_25AD35D5C();
              }
            }

            else if (v24 != a3 && v25 == 92 && *v24 == 125)
            {
              sub_25AD35B34(a1, v31, v31, v6, v7 + 1, v21, 1);
            }
          }

          sub_25AD35DB4();
        }
      }

      return v11;
    }
  }

  return v3;
}

void *sub_25AD36524(void *a1)
{
  *a1 = &unk_286C28088;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_25AD36590(void *a1)
{
  *a1 = &unk_286C28088;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x25F8548F0);
}

uint64_t sub_25AD3661C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    v3 = 0;
    *a2 = -993;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    v3 = *(result + 8);
  }

  *(a2 + 80) = v3;
  return result;
}

uint64_t sub_25AD3665C(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_25AD32FAC(a1, a2 - 48);
    }

    sub_25AD32F54();
  }

  return 0;
}

unsigned __int8 *sub_25AD366BC(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = sub_25AD3671C(a1, a2, a3);
  if (v6 == a2)
  {
    sub_25AD3612C();
  }

  do
  {
    v7 = v6;
    v6 = sub_25AD3671C(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

unsigned __int8 *sub_25AD3671C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 56);
  v7 = *(a1 + 28);
  if (a2 == a3)
  {
    goto LABEL_23;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 <= 0x3A)
  {
    if (((1 << (v8 - 36)) & 0x5800000080004D1) != 0)
    {
      goto LABEL_4;
    }

    if (v9 == 5)
    {
      if (!*(a1 + 36))
      {
        LOBYTE(v8) = 41;
        goto LABEL_15;
      }

LABEL_23:
      v12 = sub_25AD319EC(a1, a2, a3);
      goto LABEL_24;
    }
  }

  if ((v8 - 123) >= 2)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = a2 + 1;
  if (a2 + 1 == a3 || v8 != 92)
  {
LABEL_21:
    if (v8 == 46)
    {
      operator new();
    }

    goto LABEL_23;
  }

  v11 = *v10;
  LOBYTE(v8) = *v10;
  if ((v11 - 36) <= 0x3A && ((1 << (v11 - 36)) & 0x5800000080004F1) != 0 || (v11 - 123) < 3)
  {
LABEL_15:
    sub_25AD32D70(a1, v8);
  }

  if ((*(a1 + 24) & 0x1F0) == 0x40)
  {
    v12 = sub_25AD34F30(a1, a2 + 1, a3, 0);
  }

  else
  {
    v13 = sub_25AD3665C(a1, v8);
    v14 = 2;
    if (!v13)
    {
      v14 = 0;
    }

    v12 = &a2[v14];
  }

  if (v12 == a2)
  {
    v8 = *v12;
    goto LABEL_21;
  }

LABEL_24:
  if (v12 == a2 && v12 != a3)
  {
    v15 = *v12;
    switch(v15)
    {
      case '$':
        sub_25AD30FBC(a1);
      case '(':
        sub_25AD326C4(a1);
        v16 = *(a1 + 28);
        ++*(a1 + 36);
        v17 = sub_25AD3014C(a1, (v12 + 1), a3);
        if (v17 == a3 || (v18 = v17, *v17 != 41))
        {
          sub_25AD311A4();
        }

        sub_25AD3274C(a1, v16);
        --*(a1 + 36);
        v12 = v18 + 1;
        break;
      case '^':
        sub_25AD30F38(a1);
    }
  }

  if (v12 == a2)
  {
    return v12;
  }

  v19 = (*(a1 + 28) + 1);

  return sub_25AD30C3C(a1, v12, a3, v6, (v7 + 1), v19);
}

void CMMsl::Manager::Manager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 24) = 850045863;
  *(a1 + 16) = 0;
  *a1 = &unk_286C28658;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  operator new();
}

void sub_25AD36CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  sub_25AAE925C(va1);
  MEMORY[0x25F8548F0](v6, 0x1032C4044EE41C5);
  sub_25AAE925C(va);
  std::mutex::~mutex(v5);
  sub_25AAE9AB8(v3, 0);
  sub_25AD372D0(v4, 0);
  _Unwind_Resume(a1);
}

void CMMsl::Manager::~Manager(CMMsl::Manager *this)
{
  *this = &unk_286C28658;
  if (qword_27FA115C0 != -1)
  {
    dispatch_once(&qword_27FA115C0, &unk_286C28678);
  }

  v2 = qword_27FA115B8;
  if (os_log_type_enabled(qword_27FA115B8, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_25AAE5000, v2, OS_LOG_TYPE_DEFAULT, "[MSLManager] Ending.", v5, 2u);
  }

  std::mutex::lock((this + 24));
  v3 = *(this + 2);
  if (v3)
  {
    v4 = *(v3 + 128);
    if (v4)
    {
      CMMsl::Writer::sync(v4);
    }
  }

  std::mutex::unlock((this + 24));
  std::mutex::~mutex((this + 24));
  sub_25AAE9AB8(this + 2, 0);
  sub_25AD372D0(this + 1, 0);
}

{
  CMMsl::Manager::~Manager(this);

  JUMPOUT(0x25F8548F0);
}

void CMMsl::Manager::log(CMMsl::Manager *this, const CMMsl::Item *a2)
{
  if (qword_27FA115C0 != -1)
  {
    dispatch_once(&qword_27FA115C0, &unk_286C28678);
  }

  v4 = qword_27FA115B8;
  if (os_log_type_enabled(qword_27FA115B8, OS_LOG_TYPE_DEBUG))
  {
    *v13 = 0;
    _os_log_debug_impl(&dword_25AAE5000, v4, OS_LOG_TYPE_DEBUG, "[MSLManager] Logging Msl item.", v13, 2u);
  }

  if (*(this + 2))
  {
    if (sub_25AAE9B04(*(this + 1)))
    {
      std::mutex::lock((this + 24));
      v5 = *(this + 2);
      v6 = mach_continuous_time();
      v7 = sub_25AAE8048(v6);
      sub_25AD29EC0(v5, a2, v7, v8);
      std::mutex::unlock((this + 24));
    }

    else
    {
      if (qword_27FA115C0 != -1)
      {
        dispatch_once(&qword_27FA115C0, &unk_286C28678);
      }

      v10 = qword_27FA115B8;
      if (os_log_type_enabled(qword_27FA115B8, OS_LOG_TYPE_DEBUG))
      {
        *v11 = 0;
        _os_log_debug_impl(&dword_25AAE5000, v10, OS_LOG_TYPE_DEBUG, "[MSLManager] Logging is not enabled.", v11, 2u);
      }
    }
  }

  else
  {
    if (qword_27FA115C0 != -1)
    {
      dispatch_once(&qword_27FA115C0, &unk_286C28678);
    }

    v9 = qword_27FA115B8;
    if (os_log_type_enabled(qword_27FA115B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25AAE5000, v9, OS_LOG_TYPE_DEFAULT, "[MSLManager] Logging Msl item failed due to an invalid logger pointer.", buf, 2u);
    }
  }
}

void CMMsl::Manager::sync(CMMsl::Manager *this)
{
  std::mutex::lock((this + 24));
  v2 = *(*(this + 2) + 128);
  if (v2)
  {
    CMMsl::Writer::sync(v2);
  }

  std::mutex::unlock((this + 24));
}

void *CMMsl::createConfig@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, char *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  if (qword_27FA115C0 != -1)
  {
    dispatch_once(&qword_27FA115C0, &unk_286C28678);
  }

  v18 = qword_27FA115B8;
  if (os_log_type_enabled(qword_27FA115B8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136316930;
    v21 = a1;
    v22 = 2080;
    v23 = a2;
    v24 = 2080;
    v25 = a6;
    v26 = 1024;
    v27 = a7;
    v28 = 2048;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    v32 = 1024;
    v33 = a5;
    v34 = 2048;
    v35 = a8;
    _os_log_impl(&dword_25AAE5000, v18, OS_LOG_TYPE_DEFAULT, "[CMMsl] Creating config with, file prefix, %s, file path, %s, file extension, %s, protection class, %d, file size, %lld, file time interval, %u, files to keep, %u, flush timeout, %lld", &v20, 0x46u);
  }

  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 12) = a5;
  sub_25AAE6524((a9 + 16), a2);
  sub_25AAE6524((a9 + 40), a1);
  result = sub_25AAE6524((a9 + 64), a6);
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  return result;
}

void sub_25AD37250(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_25AD3728C()
{
  qword_27FA115B8 = os_log_create("com.apple.MotionSensorLogging", "MSL");

  return MEMORY[0x2821F96F8]();
}

id *sub_25AD372D0(id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_25AAE9880(result);

    JUMPOUT(0x25F8548F0);
  }

  return result;
}

uint64_t PB::TextFormatter::format()
{
  return MEMORY[0x2821A4518]();
}

{
  return MEMORY[0x2821A4520]();
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x2821A4528](this, a2);
}

{
  return MEMORY[0x2821A4540](this, a2);
}

{
  return MEMORY[0x2821A4548](this, a2);
}

{
  return MEMORY[0x2821A4550](this, a2);
}

{
  return MEMORY[0x2821A4558](this, a2);
}

uint64_t PB::Reader::read()
{
  return MEMORY[0x2821A4580]();
}

{
  return MEMORY[0x2821A4588]();
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x2821A45A8](this);
}

{
  return MEMORY[0x2821A45B0](this);
}

{
  return MEMORY[0x2821A45B8](this);
}

{
  return MEMORY[0x2821A45C0](this);
}

uint64_t PB::Writer::write()
{
  return MEMORY[0x2821A45D0]();
}

{
  return MEMORY[0x2821A45D8]();
}

uint64_t PB::Writer::writeSInt(PB::Writer *this)
{
  return MEMORY[0x2821A45F8](this);
}

{
  return MEMORY[0x2821A4600](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}