uint64_t CMMsl::MagnetometerCalibratorFilterParameters::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 136))
  {
    this = PB::Writer::write(a2, *(this + 128));
  }

  v4 = v3[4];
  v5 = v3[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = v3[1];
  v8 = v3[2];
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  v10 = v3[13];
  v11 = v3[14];
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::write(a2, v12);
  }

  v13 = v3[7];
  v14 = v3[8];
  while (v13 != v14)
  {
    v15 = *v13++;
    this = PB::Writer::write(a2, v15);
  }

  v17 = v3[10];
  v16 = v3[11];
  while (v17 != v16)
  {
    v18 = *v17++;
    this = PB::Writer::write(a2, v18);
  }

  return this;
}

uint64_t CMMsl::MagnetometerCalibratorFilterParameters::hash_value(CMMsl::MagnetometerCalibratorFilterParameters *this)
{
  if (*(this + 136))
  {
    if (*(this + 16) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 16);
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = PBHashBytes() ^ v1;
  v3 = PBHashBytes();
  v4 = v2 ^ v3 ^ PBHashBytes();
  v5 = PBHashBytes();
  return v4 ^ v5 ^ PBHashBytes();
}

void CMMsl::MagnetometerReset::~MagnetometerReset(CMMsl::MagnetometerReset *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MagnetometerReset::MagnetometerReset(uint64_t this, const CMMsl::MagnetometerReset *a2)
{
  *this = &unk_286C21B58;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 44) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 44) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 1);
    v3 |= 1u;
    *(this + 44) = v3;
    *(this + 8) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 4);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 42);
  v3 |= 0x40u;
  *(this + 44) = v3;
  *(this + 42) = v8;
  v2 = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_16:
    v10 = *(a2 + 41);
    *(this + 44) = v3 | 0x20;
    *(this + 41) = v10;
    return this;
  }

LABEL_15:
  v9 = *(a2 + 40);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 40) = v9;
  if ((*(a2 + 44) & 0x20) != 0)
  {
    goto LABEL_16;
  }

  return this;
}

uint64_t CMMsl::MagnetometerReset::operator=(uint64_t a1, const CMMsl::MagnetometerReset *a2)
{
  if (a1 != a2)
  {
    CMMsl::MagnetometerReset::MagnetometerReset(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v15;
    v15 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v6;
    LOBYTE(v6) = *(a1 + 42);
    *(a1 + 42) = v14;
    v14 = v6;
    LOBYTE(v6) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v6;
    LOBYTE(v6) = *(a1 + 41);
    *(a1 + 41) = v13;
    v13 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MagnetometerReset *a2, CMMsl::MagnetometerReset *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  v5 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v7;
  LOBYTE(v7) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v7;
  LOBYTE(v7) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  LOBYTE(v7) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v7;
  return result;
}

double CMMsl::MagnetometerReset::MagnetometerReset(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21B58;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return result;
}

{
  *a1 = &unk_286C21B58;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  result = *(a2 + 24);
  *(a1 + 24) = result;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 41) = *(a2 + 41);
  return result;
}

uint64_t CMMsl::MagnetometerReset::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v14 = &unk_286C21B58;
    v3 = *(a2 + 44);
    *(a2 + 44) = 0;
    v4 = *(a2 + 24);
    v5 = *(a2 + 32);
    v6 = *(a2 + 42);
    v7 = *(a2 + 40);
    v8 = *(a2 + 41);
    v21 = *(a1 + 44);
    v9 = *(a1 + 24);
    *(a1 + 24) = v4;
    v16 = v9;
    v10 = *(a1 + 8);
    v11 = *(a2 + 8);
    *(a1 + 44) = v3;
    *(a1 + 8) = v11;
    v15 = v10;
    v12 = *(a1 + 32);
    *(a1 + 32) = v5;
    v17 = v12;
    LOBYTE(v12) = *(a1 + 42);
    *(a1 + 42) = v6;
    v20 = v12;
    LOBYTE(v12) = *(a1 + 40);
    *(a1 + 40) = v7;
    v18 = v12;
    LOBYTE(v12) = *(a1 + 41);
    *(a1 + 41) = v8;
    v19 = v12;
    PB::Base::~Base(&v14);
  }

  return a1;
}

uint64_t CMMsl::MagnetometerReset::formatText(CMMsl::MagnetometerReset *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(a2, "exitingSaturation");
    v5 = *(this + 44);
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

  else if ((*(this + 44) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "extendedSaturation");
  v5 = *(this + 44);
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
  PB::TextFormatter::format(a2, "shiftInSaturation");
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "timeSinceLastRemag");
  v5 = *(this + 44);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "timeSinceLastRemagTrigger");
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  if ((*(this + 44) & 8) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "triggerCount");
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MagnetometerReset::readFrom(CMMsl::MagnetometerReset *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
          {
            *(this + 3) = *(*a2 + v2);
            v2 = *(a2 + 1) + 8;
            *(a2 + 1) = v2;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_19;
        case 2:
          *(this + 44) |= 2u;
          v45 = *(a2 + 1);
          v2 = *(a2 + 2);
          v46 = *a2;
          if (v45 > 0xFFFFFFFFFFFFFFF5 || v45 + 10 > v2)
          {
            v67 = 0;
            v68 = 0;
            v49 = 0;
            if (v2 <= v45)
            {
              v2 = *(a2 + 1);
            }

            v69 = (v46 + v45);
            v70 = v2 - v45;
            v71 = v45 + 1;
            while (1)
            {
              if (!v70)
              {
                v49 = 0;
                *(a2 + 24) = 1;
                goto LABEL_107;
              }

              v72 = v71;
              v73 = *v69;
              *(a2 + 1) = v72;
              v49 |= (v73 & 0x7F) << v67;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v67 += 7;
              ++v69;
              --v70;
              v71 = v72 + 1;
              v14 = v68++ > 8;
              if (v14)
              {
                v49 = 0;
                goto LABEL_106;
              }
            }

            if (*(a2 + 24))
            {
              v49 = 0;
            }

LABEL_106:
            v2 = v72;
          }

          else
          {
            v47 = 0;
            v48 = 0;
            v49 = 0;
            v50 = (v46 + v45);
            v51 = v45 + 1;
            while (1)
            {
              v2 = v51;
              *(a2 + 1) = v51;
              v52 = *v50++;
              v49 |= (v52 & 0x7F) << v47;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              ++v51;
              v14 = v48++ > 8;
              if (v14)
              {
                v49 = 0;
                break;
              }
            }
          }

LABEL_107:
          *(this + 2) = v49;
          goto LABEL_19;
        case 3:
          *(this + 44) |= 1u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v60 = 0;
            v61 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(a2 + 1);
            }

            v62 = (v26 + v25);
            v63 = v2 - v25;
            v64 = v25 + 1;
            while (1)
            {
              if (!v63)
              {
                v29 = 0;
                *(a2 + 24) = 1;
                goto LABEL_103;
              }

              v65 = v64;
              v66 = *v62;
              *(a2 + 1) = v65;
              v29 |= (v66 & 0x7F) << v60;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              ++v62;
              --v63;
              v64 = v65 + 1;
              v14 = v61++ > 8;
              if (v14)
              {
                v29 = 0;
                goto LABEL_102;
              }
            }

            if (*(a2 + 24))
            {
              v29 = 0;
            }

LABEL_102:
            v2 = v65;
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
              v2 = v31;
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
                v29 = 0;
                break;
              }
            }
          }

LABEL_103:
          *(this + 1) = v29;
          goto LABEL_19;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 44) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 >= *(a2 + 2))
        {
          v44 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v43 = *(*a2 + v2++);
          *(a2 + 1) = v2;
          v44 = v43 != 0;
        }

        *(this + 40) = v44;
        goto LABEL_19;
      }

      if (v22 == 7)
      {
        *(this + 44) |= 0x20u;
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

        *(this + 41) = v34;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 44) |= 8u;
        v35 = *(a2 + 1);
        v2 = *(a2 + 2);
        v36 = *a2;
        if (v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v2)
        {
          v53 = 0;
          v54 = 0;
          v39 = 0;
          if (v2 <= v35)
          {
            v2 = *(a2 + 1);
          }

          v55 = (v36 + v35);
          v56 = v2 - v35;
          v57 = v35 + 1;
          while (1)
          {
            if (!v56)
            {
              v39 = 0;
              *(a2 + 24) = 1;
              goto LABEL_99;
            }

            v58 = v57;
            v59 = *v55;
            *(a2 + 1) = v58;
            v39 |= (v59 & 0x7F) << v53;
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
              v39 = 0;
              goto LABEL_98;
            }
          }

          if (*(a2 + 24))
          {
            v39 = 0;
          }

LABEL_98:
          v2 = v58;
        }

        else
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = (v36 + v35);
          v41 = v35 + 1;
          while (1)
          {
            v2 = v41;
            *(a2 + 1) = v41;
            v42 = *v40++;
            v39 |= (v42 & 0x7F) << v37;
            if ((v42 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            ++v41;
            v14 = v38++ > 8;
            if (v14)
            {
              v39 = 0;
              break;
            }
          }
        }

LABEL_99:
        *(this + 4) = v39;
        goto LABEL_19;
      }

      if (v22 == 5)
      {
        *(this + 44) |= 0x40u;
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

        *(this + 42) = v24;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v74 = 0;
      return v74 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v74 = v4 ^ 1;
  return v74 & 1;
}

uint64_t CMMsl::MagnetometerReset::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2);
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_15:

  return PB::Writer::write(a2);
}

uint64_t CMMsl::MagnetometerReset::hash_value(CMMsl::MagnetometerReset *this)
{
  if ((*(this + 44) & 4) != 0)
  {
    v1 = *(this + 3);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 44) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 2);
      if (*(this + 44))
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0;
  if (*(this + 44))
  {
LABEL_4:
    v3 = *(this + 1);
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v3 = 0;
  if ((*(this + 44) & 8) != 0)
  {
LABEL_5:
    v4 = *(this + 4);
    if ((*(this + 44) & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v4 = 0;
  if ((*(this + 44) & 0x40) != 0)
  {
LABEL_6:
    v5 = *(this + 42);
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    v6 = 0;
    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    v7 = 0;
    return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_15:
  v5 = 0;
  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  v6 = *(this + 40);
  if ((*(this + 44) & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v7 = *(this + 41);
  return v2 ^ *&v1 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
}

void CMMsl::MapsRouteHintData::~MapsRouteHintData(CMMsl::MapsRouteHintData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MapsRouteHintData::MapsRouteHintData(uint64_t this, const CMMsl::MapsRouteHintData *a2)
{
  *this = &unk_286C21B90;
  *(this + 20) = 0;
  v2 = *(a2 + 10);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 15);
    v3 = 128;
    *(this + 20) = 128;
    *(this + 15) = v4;
    v2 = *(a2 + 10);
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
    v5 = *(a2 + 9);
    v3 |= 2u;
    *(this + 20) = v3;
    *(this + 9) = v5;
    v2 = *(a2 + 10);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 11);
    v3 |= 8u;
    *(this + 20) = v3;
    *(this + 11) = v6;
    v2 = *(a2 + 10);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 13);
  v3 |= 0x20u;
  *(this + 20) = v3;
  *(this + 13) = v7;
  v2 = *(a2 + 10);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 14);
  v3 |= 0x40u;
  *(this + 20) = v3;
  *(this + 14) = v8;
  v2 = *(a2 + 10);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 12);
  v3 |= 0x10u;
  *(this + 20) = v3;
  *(this + 12) = v9;
  v2 = *(a2 + 10);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 16);
  v3 |= 0x100u;
  *(this + 20) = v3;
  *(this + 16) = v10;
  v2 = *(a2 + 10);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 1) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 8);
    *(this + 20) = v3 | 1;
    *(this + 8) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 10);
  v3 |= 4u;
  *(this + 20) = v3;
  *(this + 10) = v11;
  if (*(a2 + 10))
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::MapsRouteHintData::operator=(uint64_t a1, const CMMsl::MapsRouteHintData *a2)
{
  if (a1 != a2)
  {
    CMMsl::MapsRouteHintData::MapsRouteHintData(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::MapsRouteHintData *a2, CMMsl::MapsRouteHintData *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  LOBYTE(v3) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  LOBYTE(v3) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  LOBYTE(v3) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  LOBYTE(v3) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v3;
  LOBYTE(v3) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v3;
  LOBYTE(v3) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  LOBYTE(v3) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  LOBYTE(v3) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  LOBYTE(v3) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  return this;
}

uint64_t CMMsl::MapsRouteHintData::MapsRouteHintData(uint64_t result, uint64_t a2)
{
  *result = &unk_286C21B90;
  *(result + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(result + 15) = *(a2 + 15);
  *(result + 9) = *(a2 + 9);
  *(result + 11) = *(a2 + 11);
  *(result + 13) = *(a2 + 13);
  *(result + 14) = *(a2 + 14);
  *(result + 12) = *(a2 + 12);
  *(result + 16) = *(a2 + 16);
  *(result + 10) = *(a2 + 10);
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t CMMsl::MapsRouteHintData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::MapsRouteHintData::MapsRouteHintData(v6, a2);
    v3 = *(a1 + 20);
    *(a1 + 20) = v9;
    v9 = v3;
    LOBYTE(v3) = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t CMMsl::MapsRouteHintData::formatText(CMMsl::MapsRouteHintData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 10);
  if (v5)
  {
    PB::TextFormatter::format(a2, "isAppleMapsRoutingActive");
    v5 = *(this + 10);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
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

  PB::TextFormatter::format(a2, "isBicycleRouting");
  v5 = *(this + 10);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "isBicycleRoutingActive");
  v5 = *(this + 10);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "isPedestrianRouting");
  v5 = *(this + 10);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "isPedestrianRoutingActive");
  v5 = *(this + 10);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "isStepTypeBicycle");
  v5 = *(this + 10);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "isStepTypePedestrian");
  v5 = *(this + 10);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "isVehicularRouting");
  if ((*(this + 10) & 0x100) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "isVehicularRoutingActive");
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MapsRouteHintData::readFrom(CMMsl::MapsRouteHintData *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
    {
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
    if ((v10 >> 3) <= 4)
    {
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(this + 10) |= 8u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v34 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v33 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v34 = v33 != 0;
          }

          *(this + 11) = v34;
          goto LABEL_19;
        }

        if (v22 == 4)
        {
          *(this + 10) |= 0x20u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v28 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v27 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v28 = v27 != 0;
          }

          *(this + 13) = v28;
          goto LABEL_19;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 10) |= 0x80u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v32 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v31 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v32 = v31 != 0;
          }

          *(this + 15) = v32;
          goto LABEL_19;
        }

        if (v22 == 2)
        {
          *(this + 10) |= 2u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v26 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v25 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v26 = v25 != 0;
          }

          *(this + 9) = v26;
          goto LABEL_19;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 10) |= 0x40u;
        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
        if (v3 >= v2)
        {
          v38 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v37 = *(*a2 + v3++);
          *(a2 + 1) = v3;
          v38 = v37 != 0;
        }

        *(this + 14) = v38;
        goto LABEL_19;
      }

      if (v22 == 6)
      {
        *(this + 10) |= 0x10u;
        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
        if (v3 >= v2)
        {
          v30 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v29 = *(*a2 + v3++);
          *(a2 + 1) = v3;
          v30 = v29 != 0;
        }

        *(this + 12) = v30;
        goto LABEL_19;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 10) |= 0x100u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v36 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v35 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v36 = v35 != 0;
          }

          *(this + 16) = v36;
          goto LABEL_19;
        case 8:
          *(this + 10) |= 4u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v40 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v39 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v40 = v39 != 0;
          }

          *(this + 10) = v40;
          goto LABEL_19;
        case 9:
          *(this + 10) |= 1u;
          v3 = *(a2 + 1);
          v2 = *(a2 + 2);
          if (v3 >= v2)
          {
            v24 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v23 = *(*a2 + v3++);
            *(a2 + 1) = v3;
            v24 = v23 != 0;
          }

          *(this + 8) = v24;
          goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v41 = 0;
      return v41 & 1;
    }

    v3 = *(a2 + 1);
    v2 = *(a2 + 2);
LABEL_19:
    v4 = *(a2 + 24);
  }

  v41 = v4 ^ 1;
  return v41 & 1;
}

uint64_t CMMsl::MapsRouteHintData::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 0x80) != 0)
  {
    this = PB::Writer::write(a2);
    v4 = *(v3 + 20);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
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

  this = PB::Writer::write(a2);
  v4 = *(v3 + 20);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 20);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 20);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 20);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 20);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::write(a2);
    if ((*(v3 + 20) & 1) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 20);
  if ((v4 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_19:

  return PB::Writer::write(a2);
}

uint64_t CMMsl::MapsRouteHintData::hash_value(CMMsl::MapsRouteHintData *this)
{
  v1 = *(this + 10);
  if ((v1 & 0x80) != 0)
  {
    v2 = *(this + 15);
    if ((v1 & 2) != 0)
    {
LABEL_3:
      v3 = *(this + 9);
      if ((v1 & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v2 = 0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((v1 & 8) != 0)
  {
LABEL_4:
    v4 = *(this + 11);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v4 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_5:
    v5 = *(this + 13);
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((v1 & 0x40) != 0)
  {
LABEL_6:
    v6 = *(this + 14);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_7:
    v7 = *(this + 12);
    if ((*(this + 10) & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((*(this + 10) & 0x100) != 0)
  {
LABEL_8:
    v8 = *(this + 16);
    if ((v1 & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v9 = 0;
    if (v1)
    {
      goto LABEL_10;
    }

LABEL_19:
    v10 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_17:
  v8 = 0;
  if ((v1 & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v9 = *(this + 10);
  if ((v1 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v10 = *(this + 8);
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

void CMMsl::MetsInfo::~MetsInfo(CMMsl::MetsInfo *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::MetsInfo::MetsInfo(CMMsl::MetsInfo *this, const CMMsl::MetsInfo *a2)
{
  *this = &unk_286C21BC8;
  *(this + 7) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    result = *(a2 + 2);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 2) = result;
    v2 = *(a2 + 28);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 28) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 4);
    v3 |= 4u;
    *(this + 28) = v3;
    *(this + 4) = result;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 5);
    v3 |= 8u;
    *(this + 28) = v3;
    *(this + 5) = result;
    v2 = *(a2 + 28);
    if ((v2 & 0x10) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        return result;
      }

LABEL_12:
      result = *(a2 + 3);
      *(this + 28) = v3 | 2;
      *(this + 3) = result;
      return result;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_8;
  }

  v5 = *(a2 + 6);
  v3 |= 0x10u;
  *(this + 28) = v3;
  *(this + 6) = v5;
  if ((*(a2 + 28) & 2) != 0)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t CMMsl::MetsInfo::operator=(uint64_t a1, const CMMsl::MetsInfo *a2)
{
  if (a1 != a2)
  {
    CMMsl::MetsInfo::MetsInfo(&v6, a2);
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

float CMMsl::swap(CMMsl *this, CMMsl::MetsInfo *a2, CMMsl::MetsInfo *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v7;
  result = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = result;
  return result;
}

float CMMsl::MetsInfo::MetsInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21BC8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

{
  *a1 = &unk_286C21BC8;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 12);
  *(a1 + 12) = result;
  return result;
}

uint64_t CMMsl::MetsInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C21BC8;
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

uint64_t CMMsl::MetsInfo::formatText(CMMsl::MetsInfo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    PB::TextFormatter::format(a2, "mets", *(this + 2));
    v5 = *(this + 28);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "metsDiff", *(this + 3));
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "metsHR", *(this + 4));
  v5 = *(this + 28);
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
  PB::TextFormatter::format(a2, "metsWR", *(this + 5));
  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(a2, "source");
  }

LABEL_7:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MetsInfo::readFrom(CMMsl::MetsInfo *this, PB::Reader *a2)
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
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
LABEL_44:
          *(a2 + 24) = 1;
          goto LABEL_60;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_54;
      }

      if (v22 == 2)
      {
        *(this + 28) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_44;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_54;
      }
    }

    else
    {
      switch(v22)
      {
        case 3:
          *(this + 28) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_54;
        case 4:
          *(this + 28) |= 0x10u;
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
                goto LABEL_59;
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
          *(this + 6) = v27;
          goto LABEL_60;
        case 5:
          *(this + 28) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_44;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_54:
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
          goto LABEL_60;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v38 = 0;
      return v38 & 1;
    }

    v2 = *(a2 + 1);
LABEL_60:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t CMMsl::MetsInfo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 28);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 28);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 28);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_11:
  v5 = *(v3 + 12);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::MetsInfo::hash_value(CMMsl::MetsInfo *this)
{
  if ((*(this + 28) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 28) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    v3 = 0;
    if ((*(this + 28) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_17:
    v5 = 0;
    if ((*(this + 28) & 0x10) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  v9 = *(this + 2);
  v1 = LODWORD(v9);
  if (v9 == 0.0)
  {
    v1 = 0;
  }

  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  v2 = *(this + 4);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 28) & 8) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  v4 = *(this + 5);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 28) & 0x10) != 0)
  {
LABEL_9:
    v6 = *(this + 6);
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v8 = 0;
    return v3 ^ v1 ^ v5 ^ v6 ^ v8;
  }

LABEL_18:
  v6 = 0;
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v7 = *(this + 3);
  v8 = LODWORD(v7);
  if (v7 == 0.0)
  {
    v8 = 0;
  }

  return v3 ^ v1 ^ v5 ^ v6 ^ v8;
}

void CMMsl::MobilityBoutMetrics::~MobilityBoutMetrics(CMMsl::MobilityBoutMetrics *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::MobilityBoutMetrics::MobilityBoutMetrics(CMMsl::MobilityBoutMetrics *this, const CMMsl::MobilityBoutMetrics *a2)
{
  *this = &unk_286C21C00;
  *(this + 23) = 0;
  v2 = *(a2 + 23);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 23) = 4;
    *(this + 3) = v4;
    v2 = *(a2 + 23);
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
    v4 = *(a2 + 1);
    v3 |= 1uLL;
    *(this + 23) = v3;
    *(this + 1) = v4;
    v2 = *(a2 + 23);
  }

LABEL_6:
  if ((v2 & 0x200000) != 0)
  {
    v5 = *(a2 + 26);
    v3 |= 0x200000uLL;
    *(this + 23) = v3;
    *(this + 26) = v5;
    v2 = *(a2 + 23);
    if ((v2 & 0x1000000000) == 0)
    {
LABEL_8:
      if ((v2 & 0x100000000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_52;
    }
  }

  else if ((v2 & 0x1000000000) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 41);
  v3 |= 0x1000000000uLL;
  *(this + 23) = v3;
  *(this + 41) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x100000000000) == 0)
  {
LABEL_9:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_53;
  }

LABEL_52:
  v6 = *(a2 + 181);
  v3 |= 0x100000000000uLL;
  *(this + 23) = v3;
  *(this + 181) = v6;
  v2 = *(a2 + 23);
  if ((v2 & 0x800) == 0)
  {
LABEL_10:
    if ((v2 & 0x10000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  LODWORD(v4) = *(a2 + 16);
  v3 |= 0x800uLL;
  *(this + 23) = v3;
  *(this + 16) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x10000000000) == 0)
  {
LABEL_11:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  v7 = *(a2 + 177);
  v3 |= 0x10000000000uLL;
  *(this + 23) = v3;
  *(this + 177) = v7;
  v2 = *(a2 + 23);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_12:
    if ((v2 & 0x80000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  LODWORD(v4) = *(a2 + 30);
  v3 |= 0x2000000uLL;
  *(this + 23) = v3;
  *(this + 30) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x80000000000) == 0)
  {
LABEL_13:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  v8 = *(a2 + 180);
  v3 |= 0x80000000000uLL;
  *(this + 23) = v3;
  *(this + 180) = v8;
  v2 = *(a2 + 23);
  if ((v2 & 0x4000) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  v9 = *(a2 + 19);
  v3 |= 0x4000uLL;
  *(this + 23) = v3;
  *(this + 19) = v9;
  v2 = *(a2 + 23);
  if ((v2 & 2) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  v4 = *(a2 + 2);
  v3 |= 2uLL;
  *(this + 23) = v3;
  *(this + 2) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 0x8000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_60;
  }

LABEL_59:
  LODWORD(v4) = *(a2 + 8);
  v3 |= 8uLL;
  *(this + 23) = v3;
  *(this + 8) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x8000000000) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_61;
  }

LABEL_60:
  v10 = *(a2 + 176);
  v3 |= 0x8000000000uLL;
  *(this + 23) = v3;
  *(this + 176) = v10;
  v2 = *(a2 + 23);
  if ((v2 & 0x2000) == 0)
  {
LABEL_18:
    if ((v2 & 0x200000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_62;
  }

LABEL_61:
  v11 = *(a2 + 18);
  v3 |= 0x2000uLL;
  *(this + 23) = v3;
  *(this + 18) = v11;
  v2 = *(a2 + 23);
  if ((v2 & 0x200000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x4000000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_63;
  }

LABEL_62:
  v12 = *(a2 + 38);
  v3 |= 0x200000000uLL;
  *(this + 23) = v3;
  *(this + 38) = v12;
  v2 = *(a2 + 23);
  if ((v2 & 0x4000000000) == 0)
  {
LABEL_20:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_64;
  }

LABEL_63:
  v13 = *(a2 + 43);
  v3 |= 0x4000000000uLL;
  *(this + 23) = v3;
  *(this + 43) = v13;
  v2 = *(a2 + 23);
  if ((v2 & 0x100000) == 0)
  {
LABEL_21:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_65;
  }

LABEL_64:
  v14 = *(a2 + 25);
  v3 |= 0x100000uLL;
  *(this + 23) = v3;
  *(this + 25) = v14;
  v2 = *(a2 + 23);
  if ((v2 & 0x20000) == 0)
  {
LABEL_22:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_66;
  }

LABEL_65:
  v15 = *(a2 + 22);
  v3 |= 0x20000uLL;
  *(this + 23) = v3;
  *(this + 22) = v15;
  v2 = *(a2 + 23);
  if ((v2 & 0x10000) == 0)
  {
LABEL_23:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

LABEL_66:
  v16 = *(a2 + 21);
  v3 |= 0x10000uLL;
  *(this + 23) = v3;
  *(this + 21) = v16;
  v2 = *(a2 + 23);
  if ((v2 & 0x40000) == 0)
  {
LABEL_24:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_68;
  }

LABEL_67:
  v17 = *(a2 + 23);
  v3 |= 0x40000uLL;
  *(this + 23) = v3;
  *(this + 23) = v17;
  v2 = *(a2 + 23);
  if ((v2 & 0x80000) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_69;
  }

LABEL_68:
  v18 = *(a2 + 24);
  v3 |= 0x80000uLL;
  *(this + 23) = v3;
  *(this + 24) = v18;
  v2 = *(a2 + 23);
  if ((v2 & 0x8000) == 0)
  {
LABEL_26:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_70;
  }

LABEL_69:
  v19 = *(a2 + 20);
  v3 |= 0x8000uLL;
  *(this + 23) = v3;
  *(this + 20) = v19;
  v2 = *(a2 + 23);
  if ((v2 & 0x400) == 0)
  {
LABEL_27:
    if ((v2 & 0x2000000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_71;
  }

LABEL_70:
  v20 = *(a2 + 15);
  v3 |= 0x400uLL;
  *(this + 23) = v3;
  *(this + 15) = v20;
  v2 = *(a2 + 23);
  if ((v2 & 0x2000000000) == 0)
  {
LABEL_28:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_72;
  }

LABEL_71:
  v21 = *(a2 + 42);
  v3 |= 0x2000000000uLL;
  *(this + 23) = v3;
  *(this + 42) = v21;
  v2 = *(a2 + 23);
  if ((v2 & 0x1000) == 0)
  {
LABEL_29:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_73;
  }

LABEL_72:
  v22 = *(a2 + 17);
  v3 |= 0x1000uLL;
  *(this + 23) = v3;
  *(this + 17) = v22;
  v2 = *(a2 + 23);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_30:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_74;
  }

LABEL_73:
  v23 = *(a2 + 34);
  v3 |= 0x20000000uLL;
  *(this + 23) = v3;
  *(this + 34) = v23;
  v2 = *(a2 + 23);
  if ((v2 & 0x10) == 0)
  {
LABEL_31:
    if ((v2 & 0x400000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_75;
  }

LABEL_74:
  v24 = *(a2 + 9);
  v3 |= 0x10uLL;
  *(this + 23) = v3;
  *(this + 9) = v24;
  v2 = *(a2 + 23);
  if ((v2 & 0x400000000) == 0)
  {
LABEL_32:
    if ((v2 & 0x20000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_75:
  LODWORD(v4) = *(a2 + 39);
  v3 |= 0x400000000uLL;
  *(this + 23) = v3;
  *(this + 39) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x20000000000) == 0)
  {
LABEL_33:
    if ((v2 & 0x800000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_77;
  }

LABEL_76:
  v25 = *(a2 + 178);
  v3 |= 0x20000000000uLL;
  *(this + 23) = v3;
  *(this + 178) = v25;
  v2 = *(a2 + 23);
  if ((v2 & 0x800000000) == 0)
  {
LABEL_34:
    if ((v2 & 0x40000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_78;
  }

LABEL_77:
  LODWORD(v4) = *(a2 + 40);
  v3 |= 0x800000000uLL;
  *(this + 23) = v3;
  *(this + 40) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x40000000000) == 0)
  {
LABEL_35:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_79;
  }

LABEL_78:
  v26 = *(a2 + 179);
  v3 |= 0x40000000000uLL;
  *(this + 23) = v3;
  *(this + 179) = v26;
  v2 = *(a2 + 23);
  if ((v2 & 0x20) == 0)
  {
LABEL_36:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_80;
  }

LABEL_79:
  v27 = *(a2 + 10);
  v3 |= 0x20uLL;
  *(this + 23) = v3;
  *(this + 10) = v27;
  v2 = *(a2 + 23);
  if ((v2 & 0x80) == 0)
  {
LABEL_37:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_81;
  }

LABEL_80:
  LODWORD(v4) = *(a2 + 12);
  v3 |= 0x80uLL;
  *(this + 23) = v3;
  *(this + 12) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_38:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_82;
  }

LABEL_81:
  LODWORD(v4) = *(a2 + 31);
  v3 |= 0x4000000uLL;
  *(this + 23) = v3;
  *(this + 31) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_39:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_83;
  }

LABEL_82:
  LODWORD(v4) = *(a2 + 32);
  v3 |= 0x8000000uLL;
  *(this + 23) = v3;
  *(this + 32) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_40:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_84;
  }

LABEL_83:
  LODWORD(v4) = *(a2 + 33);
  v3 |= 0x10000000uLL;
  *(this + 23) = v3;
  *(this + 33) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x40) == 0)
  {
LABEL_41:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_85;
  }

LABEL_84:
  LODWORD(v4) = *(a2 + 11);
  v3 |= 0x40uLL;
  *(this + 23) = v3;
  *(this + 11) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x100) == 0)
  {
LABEL_42:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_86;
  }

LABEL_85:
  LODWORD(v4) = *(a2 + 13);
  v3 |= 0x100uLL;
  *(this + 23) = v3;
  *(this + 13) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x200) == 0)
  {
LABEL_43:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_87;
  }

LABEL_86:
  LODWORD(v4) = *(a2 + 14);
  v3 |= 0x200uLL;
  *(this + 23) = v3;
  *(this + 14) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x400000) == 0)
  {
LABEL_44:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_88;
  }

LABEL_87:
  LODWORD(v4) = *(a2 + 27);
  v3 |= 0x400000uLL;
  *(this + 23) = v3;
  *(this + 27) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x800000) == 0)
  {
LABEL_45:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_89;
  }

LABEL_88:
  LODWORD(v4) = *(a2 + 28);
  v3 |= 0x800000uLL;
  *(this + 23) = v3;
  *(this + 28) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_46:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_90;
  }

LABEL_89:
  LODWORD(v4) = *(a2 + 29);
  v3 |= 0x1000000uLL;
  *(this + 23) = v3;
  *(this + 29) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_47:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_91;
  }

LABEL_90:
  LODWORD(v4) = *(a2 + 35);
  v3 |= 0x40000000uLL;
  *(this + 23) = v3;
  *(this + 35) = v4;
  v2 = *(a2 + 23);
  if ((v2 & 0x80000000) == 0)
  {
LABEL_48:
    if ((v2 & 0x100000000) == 0)
    {
      return *&v4;
    }

    goto LABEL_92;
  }

LABEL_91:
  LODWORD(v4) = *(a2 + 36);
  v3 |= 0x80000000uLL;
  *(this + 23) = v3;
  *(this + 36) = v4;
  if ((*(a2 + 23) & 0x100000000) == 0)
  {
    return *&v4;
  }

LABEL_92:
  LODWORD(v4) = *(a2 + 37);
  *(this + 23) = v3 | 0x100000000;
  *(this + 37) = v4;
  return *&v4;
}

CMMsl *CMMsl::MobilityBoutMetrics::operator=(CMMsl *a1, const CMMsl::MobilityBoutMetrics *a2)
{
  if (a1 != a2)
  {
    CMMsl::MobilityBoutMetrics::MobilityBoutMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::MobilityBoutMetrics *a2, CMMsl::MobilityBoutMetrics *a3)
{
  v3 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v5;
  LODWORD(v3) = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v3;
  LODWORD(v5) = *(this + 41);
  *(this + 41) = *(a2 + 41);
  *(a2 + 41) = v5;
  LOBYTE(v3) = *(this + 181);
  *(this + 181) = *(a2 + 181);
  *(a2 + 181) = v3;
  LODWORD(v5) = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  LOBYTE(v3) = *(this + 177);
  *(this + 177) = *(a2 + 177);
  *(a2 + 177) = v3;
  LODWORD(v5) = *(this + 30);
  *(this + 30) = *(a2 + 30);
  *(a2 + 30) = v5;
  LOBYTE(v3) = *(this + 180);
  *(this + 180) = *(a2 + 180);
  *(a2 + 180) = v3;
  LODWORD(v3) = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v3;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  LOBYTE(v3) = *(this + 176);
  *(this + 176) = *(a2 + 176);
  *(a2 + 176) = v3;
  LODWORD(v3) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v3;
  LODWORD(v3) = *(this + 38);
  *(this + 38) = *(a2 + 38);
  *(a2 + 38) = v3;
  LODWORD(v3) = *(this + 43);
  *(this + 43) = *(a2 + 43);
  *(a2 + 43) = v3;
  LODWORD(v3) = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v3;
  LODWORD(v3) = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  LODWORD(v3) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v3;
  LODWORD(v3) = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v3;
  LODWORD(v3) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v3;
  LODWORD(v3) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  LODWORD(v3) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  LODWORD(v3) = *(this + 42);
  *(this + 42) = *(a2 + 42);
  *(a2 + 42) = v3;
  LODWORD(v3) = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v3;
  LODWORD(v3) = *(this + 34);
  *(this + 34) = *(a2 + 34);
  *(a2 + 34) = v3;
  LODWORD(v3) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  LODWORD(v6) = *(this + 39);
  *(this + 39) = *(a2 + 39);
  *(a2 + 39) = v6;
  LOBYTE(v3) = *(this + 178);
  *(this + 178) = *(a2 + 178);
  *(a2 + 178) = v3;
  LODWORD(v6) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  LOBYTE(v3) = *(this + 179);
  *(this + 179) = *(a2 + 179);
  *(a2 + 179) = v3;
  LODWORD(v3) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  LODWORD(v6) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  LODWORD(v6) = *(this + 31);
  *(this + 31) = *(a2 + 31);
  *(a2 + 31) = v6;
  LODWORD(v6) = *(this + 32);
  *(this + 32) = *(a2 + 32);
  *(a2 + 32) = v6;
  LODWORD(v6) = *(this + 33);
  *(this + 33) = *(a2 + 33);
  *(a2 + 33) = v6;
  LODWORD(v6) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v6;
  LODWORD(v6) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v6;
  LODWORD(v6) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v6;
  LODWORD(v6) = *(this + 27);
  *(this + 27) = *(a2 + 27);
  *(a2 + 27) = v6;
  LODWORD(v6) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v6;
  LODWORD(v6) = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v6;
  LODWORD(v6) = *(this + 35);
  *(this + 35) = *(a2 + 35);
  *(a2 + 35) = v6;
  LODWORD(v6) = *(this + 36);
  *(this + 36) = *(a2 + 36);
  *(a2 + 36) = v6;
  result = *(this + 37);
  *(this + 37) = *(a2 + 37);
  *(a2 + 37) = result;
  return result;
}

float CMMsl::MobilityBoutMetrics::MobilityBoutMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21C00;
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 181) = *(a2 + 181);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 172) = *(a2 + 172);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 178) = *(a2 + 178);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 179) = *(a2 + 179);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  result = *(a2 + 148);
  *(a1 + 148) = result;
  return result;
}

CMMsl *CMMsl::MobilityBoutMetrics::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::MobilityBoutMetrics::MobilityBoutMetrics(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::MobilityBoutMetrics::formatText(CMMsl::MobilityBoutMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 23);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "asymmetryPercentage", *(this + 8));
    v5 = *(this + 23);
    if ((v5 & 0x8000000000) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((v5 & 0x8000000000) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "asymmetryPercentageIsValid");
  v5 = *(this + 23);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "asymmetryPercentageRejectionStatus");
  v5 = *(this + 23);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "boundaryType");
  v5 = *(this + 23);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "cycleTimeEntropy", *(this + 11));
  v5 = *(this + 23);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "cycleTimeMean", *(this + 12));
  v5 = *(this + 23);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "cycleTimePoincareSD1", *(this + 13));
  v5 = *(this + 23);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "cycleTimePoincareSD2", *(this + 14));
  v5 = *(this + 23);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(a2, "deviceSide");
  v5 = *(this + 23);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(a2, "doubleSupportPercentage", *(this + 16));
  v5 = *(this + 23);
  if ((v5 & 0x10000000000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(a2, "doubleSupportPercentageIsValid");
  v5 = *(this + 23);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(a2, "doubleSupportPercentageRejectionStatus");
  v5 = *(this + 23);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(a2, "endTime", *(this + 1));
  v5 = *(this + 23);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x20000000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(a2, "invalidGradePercentage", *(this + 2));
  v5 = *(this + 23);
  if ((v5 & 0x20000000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x40000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(a2, "isHeightSet");
  v5 = *(this + 23);
  if ((v5 & 0x40000000000) == 0)
  {
LABEL_17:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(a2, "isWeightSet");
  v5 = *(this + 23);
  if ((v5 & 0x2000) == 0)
  {
LABEL_18:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(a2, "numGaitMetrics");
  v5 = *(this + 23);
  if ((v5 & 0x4000) == 0)
  {
LABEL_19:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(a2, "rejectionStatus");
  v5 = *(this + 23);
  if ((v5 & 0x8000) == 0)
  {
LABEL_20:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsCadenceConcordant");
  v5 = *(this + 23);
  if ((v5 & 0x10000) == 0)
  {
LABEL_21:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsFeasibleWalkingSpeed");
  v5 = *(this + 23);
  if ((v5 & 0x20000) == 0)
  {
LABEL_22:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsNotRunning");
  v5 = *(this + 23);
  if ((v5 & 0x40000) == 0)
  {
LABEL_23:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsPendular");
  v5 = *(this + 23);
  if ((v5 & 0x80000) == 0)
  {
LABEL_24:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsSufficientVerticalTwist");
  v5 = *(this + 23);
  if ((v5 & 0x100000) == 0)
  {
LABEL_25:
    if ((v5 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(a2, "segmentsRejectedByIsSwingStanceCycle");
  v5 = *(this + 23);
  if ((v5 & 4) == 0)
  {
LABEL_26:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(a2, "startTime", *(this + 3));
  v5 = *(this + 23);
  if ((v5 & 0x200000) == 0)
  {
LABEL_27:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(a2, "stepCount");
  v5 = *(this + 23);
  if ((v5 & 0x400000) == 0)
  {
LABEL_28:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityAP", *(this + 27));
  v5 = *(this + 23);
  if ((v5 & 0x800000) == 0)
  {
LABEL_29:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_78;
  }

LABEL_77:
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityML", *(this + 28));
  v5 = *(this + 23);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_79;
  }

LABEL_78:
  PB::TextFormatter::format(a2, "stepIndexOfHarmonicityVT", *(this + 29));
  v5 = *(this + 23);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_80;
  }

LABEL_79:
  PB::TextFormatter::format(a2, "stepLength", *(this + 30));
  v5 = *(this + 23);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x80000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_81;
  }

LABEL_80:
  PB::TextFormatter::format(a2, "stepLengthEntropy", *(this + 31));
  v5 = *(this + 23);
  if ((v5 & 0x80000000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(a2, "stepLengthIsValid");
  v5 = *(this + 23);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_34:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_83;
  }

LABEL_82:
  PB::TextFormatter::format(a2, "stepLengthPoincareSD1", *(this + 32));
  v5 = *(this + 23);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_35:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_84;
  }

LABEL_83:
  PB::TextFormatter::format(a2, "stepLengthPoincareSD2", *(this + 33));
  v5 = *(this + 23);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_36:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_85;
  }

LABEL_84:
  PB::TextFormatter::format(a2, "stepLengthRejectionStatus");
  v5 = *(this + 23);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_37:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_86;
  }

LABEL_85:
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityAP", *(this + 35));
  v5 = *(this + 23);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_38:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_87;
  }

LABEL_86:
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityML", *(this + 36));
  v5 = *(this + 23);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_39:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_88;
  }

LABEL_87:
  PB::TextFormatter::format(a2, "swingIndexOfHarmonicityVT", *(this + 37));
  v5 = *(this + 23);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_40:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_89;
  }

LABEL_88:
  PB::TextFormatter::format(a2, "terminationReason");
  v5 = *(this + 23);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_41:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_90;
  }

LABEL_89:
  PB::TextFormatter::format(a2, "userHeight", *(this + 39));
  v5 = *(this + 23);
  if ((v5 & 0x800000000) == 0)
  {
LABEL_42:
    if ((v5 & 0x1000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_91;
  }

LABEL_90:
  PB::TextFormatter::format(a2, "userWeight", *(this + 40));
  v5 = *(this + 23);
  if ((v5 & 0x1000000000) == 0)
  {
LABEL_43:
    if ((v5 & 0x100000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_92;
  }

LABEL_91:
  PB::TextFormatter::format(a2, "walkingSpeed", *(this + 41));
  v5 = *(this + 23);
  if ((v5 & 0x100000000000) == 0)
  {
LABEL_44:
    if ((v5 & 0x2000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_93;
  }

LABEL_92:
  PB::TextFormatter::format(a2, "walkingSpeedIsValid");
  v5 = *(this + 23);
  if ((v5 & 0x2000000000) == 0)
  {
LABEL_45:
    if ((v5 & 0x4000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_93:
  PB::TextFormatter::format(a2, "walkingSpeedRejectionStatus");
  if ((*(this + 23) & 0x4000000000) != 0)
  {
LABEL_46:
    PB::TextFormatter::format(a2, "workoutType");
  }

LABEL_47:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MobilityBoutMetrics::readFrom(CMMsl::MobilityBoutMetrics *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_442:
    v325 = v4 ^ 1;
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
        goto LABEL_442;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 23) |= 4uLL;
          v22 = *(a2 + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 3) = *(*a2 + v22);
          goto LABEL_169;
        case 2u:
          *(this + 23) |= 1uLL;
          v106 = *(a2 + 1);
          if (v106 > 0xFFFFFFFFFFFFFFF7 || v106 + 8 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 1) = *(*a2 + v106);
          goto LABEL_169;
        case 3u:
          *(this + 23) |= 0x200000uLL;
          v87 = *(a2 + 1);
          v86 = *(a2 + 2);
          v88 = *a2;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(a2 + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_407;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_270:
            LODWORD(v91) = 0;
            goto LABEL_407;
          }

          v252 = 0;
          v253 = 0;
          v91 = 0;
          v254 = (v88 + v87);
          v18 = v86 >= v87;
          v255 = v86 - v87;
          if (!v18)
          {
            v255 = 0;
          }

          v256 = v87 + 1;
          while (2)
          {
            if (v255)
            {
              v257 = *v254;
              *(a2 + 1) = v256;
              v91 |= (v257 & 0x7F) << v252;
              if (v257 < 0)
              {
                v252 += 7;
                ++v254;
                --v255;
                ++v256;
                v14 = v253++ > 8;
                if (v14)
                {
                  goto LABEL_270;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_407:
          *(this + 26) = v91;
          goto LABEL_370;
        case 4u:
          *(this + 23) |= 0x1000000000uLL;
          v104 = *(a2 + 1);
          if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 41) = *(*a2 + v104);
          goto LABEL_368;
        case 5u:
          *(this + 23) |= 0x100000000000uLL;
          v50 = *(a2 + 1);
          if (v50 >= *(a2 + 2))
          {
            v53 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v51 = v50 + 1;
            v52 = *(*a2 + v50);
            *(a2 + 1) = v51;
            v53 = v52 != 0;
          }

          *(this + 181) = v53;
          goto LABEL_370;
        case 6u:
          *(this + 23) |= 0x800uLL;
          v135 = *(a2 + 1);
          if (v135 > 0xFFFFFFFFFFFFFFFBLL || v135 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 16) = *(*a2 + v135);
          goto LABEL_368;
        case 7u:
          *(this + 23) |= 0x10000000000uLL;
          v154 = *(a2 + 1);
          if (v154 >= *(a2 + 2))
          {
            v157 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v155 = v154 + 1;
            v156 = *(*a2 + v154);
            *(a2 + 1) = v155;
            v157 = v156 != 0;
          }

          *(this + 177) = v157;
          goto LABEL_370;
        case 8u:
          *(this + 23) |= 0x2000000uLL;
          v105 = *(a2 + 1);
          if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 30) = *(*a2 + v105);
          goto LABEL_368;
        case 9u:
          *(this + 23) |= 0x80000000000uLL;
          v169 = *(a2 + 1);
          if (v169 >= *(a2 + 2))
          {
            v172 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v170 = v169 + 1;
            v171 = *(*a2 + v169);
            *(a2 + 1) = v170;
            v172 = v171 != 0;
          }

          *(this + 180) = v172;
          goto LABEL_370;
        case 0xAu:
          *(this + 23) |= 0x4000uLL;
          v60 = *(a2 + 1);
          v59 = *(a2 + 2);
          v61 = *a2;
          if (v60 <= 0xFFFFFFFFFFFFFFF5 && v60 + 10 <= v59)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            do
            {
              *(a2 + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                goto LABEL_398;
              }

              v62 += 7;
              ++v66;
              v14 = v63++ > 8;
            }

            while (!v14);
LABEL_244:
            LODWORD(v64) = 0;
            goto LABEL_398;
          }

          v234 = 0;
          v235 = 0;
          v64 = 0;
          v236 = (v61 + v60);
          v18 = v59 >= v60;
          v237 = v59 - v60;
          if (!v18)
          {
            v237 = 0;
          }

          v238 = v60 + 1;
          while (2)
          {
            if (v237)
            {
              v239 = *v236;
              *(a2 + 1) = v238;
              v64 |= (v239 & 0x7F) << v234;
              if (v239 < 0)
              {
                v234 += 7;
                ++v236;
                --v237;
                ++v238;
                v14 = v235++ > 8;
                if (v14)
                {
                  goto LABEL_244;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              LODWORD(v64) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_398:
          *(this + 19) = v64;
          goto LABEL_370;
        case 0xBu:
          *(this + 23) |= 2uLL;
          v167 = *(a2 + 1);
          if (v167 > 0xFFFFFFFFFFFFFFF7 || v167 + 8 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 2) = *(*a2 + v167);
LABEL_169:
          v168 = *(a2 + 1) + 8;
          goto LABEL_369;
        case 0xCu:
          *(this + 23) |= 8uLL;
          v49 = *(a2 + 1);
          if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 8) = *(*a2 + v49);
          goto LABEL_368;
        case 0xDu:
          *(this + 23) |= 0x8000000000uLL;
          v55 = *(a2 + 1);
          if (v55 >= *(a2 + 2))
          {
            v58 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v56 = v55 + 1;
            v57 = *(*a2 + v55);
            *(a2 + 1) = v56;
            v58 = v57 != 0;
          }

          *(this + 176) = v58;
          goto LABEL_370;
        case 0xEu:
          *(this + 23) |= 0x2000uLL;
          v146 = *(a2 + 1);
          v145 = *(a2 + 2);
          v147 = *a2;
          if (v146 <= 0xFFFFFFFFFFFFFFF5 && v146 + 10 <= v145)
          {
            v148 = 0;
            v149 = 0;
            v150 = 0;
            v151 = (v147 + v146);
            v152 = v146 + 1;
            do
            {
              *(a2 + 1) = v152;
              v153 = *v151++;
              v150 |= (v153 & 0x7F) << v148;
              if ((v153 & 0x80) == 0)
              {
                goto LABEL_425;
              }

              v148 += 7;
              ++v152;
              v14 = v149++ > 8;
            }

            while (!v14);
LABEL_318:
            LODWORD(v150) = 0;
            goto LABEL_425;
          }

          v288 = 0;
          v289 = 0;
          v150 = 0;
          v290 = (v147 + v146);
          v18 = v145 >= v146;
          v291 = v145 - v146;
          if (!v18)
          {
            v291 = 0;
          }

          v292 = v146 + 1;
          while (2)
          {
            if (v291)
            {
              v293 = *v290;
              *(a2 + 1) = v292;
              v150 |= (v293 & 0x7F) << v288;
              if (v293 < 0)
              {
                v288 += 7;
                ++v290;
                --v291;
                ++v292;
                v14 = v289++ > 8;
                if (v14)
                {
                  goto LABEL_318;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v150) = 0;
              }
            }

            else
            {
              LODWORD(v150) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_425:
          *(this + 18) = v150;
          goto LABEL_370;
        case 0xFu:
          *(this + 23) |= 0x200000000uLL;
          v40 = *(a2 + 1);
          v39 = *(a2 + 2);
          v41 = *a2;
          if (v40 <= 0xFFFFFFFFFFFFFFF5 && v40 + 10 <= v39)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            do
            {
              *(a2 + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                goto LABEL_395;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
            }

            while (!v14);
LABEL_234:
            LODWORD(v44) = 0;
            goto LABEL_395;
          }

          v228 = 0;
          v229 = 0;
          v44 = 0;
          v230 = (v41 + v40);
          v18 = v39 >= v40;
          v231 = v39 - v40;
          if (!v18)
          {
            v231 = 0;
          }

          v232 = v40 + 1;
          while (2)
          {
            if (v231)
            {
              v233 = *v230;
              *(a2 + 1) = v232;
              v44 |= (v233 & 0x7F) << v228;
              if (v233 < 0)
              {
                v228 += 7;
                ++v230;
                --v231;
                ++v232;
                v14 = v229++ > 8;
                if (v14)
                {
                  goto LABEL_234;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v44) = 0;
              }
            }

            else
            {
              LODWORD(v44) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_395:
          *(this + 38) = v44;
          goto LABEL_370;
        case 0x10u:
          *(this + 23) |= 0x4000000000uLL;
          v96 = *(a2 + 1);
          v95 = *(a2 + 2);
          v97 = *a2;
          if (v96 <= 0xFFFFFFFFFFFFFFF5 && v96 + 10 <= v95)
          {
            v98 = 0;
            v99 = 0;
            v100 = 0;
            v101 = (v97 + v96);
            v102 = v96 + 1;
            do
            {
              *(a2 + 1) = v102;
              v103 = *v101++;
              v100 |= (v103 & 0x7F) << v98;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_410;
              }

              v98 += 7;
              ++v102;
              v14 = v99++ > 8;
            }

            while (!v14);
LABEL_278:
            LODWORD(v100) = 0;
            goto LABEL_410;
          }

          v258 = 0;
          v259 = 0;
          v100 = 0;
          v260 = (v97 + v96);
          v18 = v95 >= v96;
          v261 = v95 - v96;
          if (!v18)
          {
            v261 = 0;
          }

          v262 = v96 + 1;
          while (2)
          {
            if (v261)
            {
              v263 = *v260;
              *(a2 + 1) = v262;
              v100 |= (v263 & 0x7F) << v258;
              if (v263 < 0)
              {
                v258 += 7;
                ++v260;
                --v261;
                ++v262;
                v14 = v259++ > 8;
                if (v14)
                {
                  goto LABEL_278;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v100) = 0;
              }
            }

            else
            {
              LODWORD(v100) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_410:
          *(this + 43) = v100;
          goto LABEL_370;
        case 0x11u:
          *(this + 23) |= 0x100000uLL;
          v30 = *(a2 + 1);
          v29 = *(a2 + 2);
          v31 = *a2;
          if (v30 <= 0xFFFFFFFFFFFFFFF5 && v30 + 10 <= v29)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = (v31 + v30);
            v36 = v30 + 1;
            do
            {
              *(a2 + 1) = v36;
              v37 = *v35++;
              v34 |= (v37 & 0x7F) << v32;
              if ((v37 & 0x80) == 0)
              {
                goto LABEL_392;
              }

              v32 += 7;
              ++v36;
              v14 = v33++ > 8;
            }

            while (!v14);
LABEL_226:
            LODWORD(v34) = 0;
            goto LABEL_392;
          }

          v222 = 0;
          v223 = 0;
          v34 = 0;
          v224 = (v31 + v30);
          v18 = v29 >= v30;
          v225 = v29 - v30;
          if (!v18)
          {
            v225 = 0;
          }

          v226 = v30 + 1;
          while (2)
          {
            if (v225)
            {
              v227 = *v224;
              *(a2 + 1) = v226;
              v34 |= (v227 & 0x7F) << v222;
              if (v227 < 0)
              {
                v222 += 7;
                ++v224;
                --v225;
                ++v226;
                v14 = v223++ > 8;
                if (v14)
                {
                  goto LABEL_226;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v34) = 0;
              }
            }

            else
            {
              LODWORD(v34) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_392:
          *(this + 25) = v34;
          goto LABEL_370;
        case 0x12u:
          *(this + 23) |= 0x20000uLL;
          v117 = *(a2 + 1);
          v116 = *(a2 + 2);
          v118 = *a2;
          if (v117 <= 0xFFFFFFFFFFFFFFF5 && v117 + 10 <= v116)
          {
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = (v118 + v117);
            v123 = v117 + 1;
            do
            {
              *(a2 + 1) = v123;
              v124 = *v122++;
              v121 |= (v124 & 0x7F) << v119;
              if ((v124 & 0x80) == 0)
              {
                goto LABEL_416;
              }

              v119 += 7;
              ++v123;
              v14 = v120++ > 8;
            }

            while (!v14);
LABEL_294:
            LODWORD(v121) = 0;
            goto LABEL_416;
          }

          v270 = 0;
          v271 = 0;
          v121 = 0;
          v272 = (v118 + v117);
          v18 = v116 >= v117;
          v273 = v116 - v117;
          if (!v18)
          {
            v273 = 0;
          }

          v274 = v117 + 1;
          while (2)
          {
            if (v273)
            {
              v275 = *v272;
              *(a2 + 1) = v274;
              v121 |= (v275 & 0x7F) << v270;
              if (v275 < 0)
              {
                v270 += 7;
                ++v272;
                --v273;
                ++v274;
                v14 = v271++ > 8;
                if (v14)
                {
                  goto LABEL_294;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v121) = 0;
              }
            }

            else
            {
              LODWORD(v121) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_416:
          *(this + 22) = v121;
          goto LABEL_370;
        case 0x13u:
          *(this + 23) |= 0x10000uLL;
          v159 = *(a2 + 1);
          v158 = *(a2 + 2);
          v160 = *a2;
          if (v159 <= 0xFFFFFFFFFFFFFFF5 && v159 + 10 <= v158)
          {
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = (v160 + v159);
            v165 = v159 + 1;
            do
            {
              *(a2 + 1) = v165;
              v166 = *v164++;
              v163 |= (v166 & 0x7F) << v161;
              if ((v166 & 0x80) == 0)
              {
                goto LABEL_428;
              }

              v161 += 7;
              ++v165;
              v14 = v162++ > 8;
            }

            while (!v14);
LABEL_326:
            LODWORD(v163) = 0;
            goto LABEL_428;
          }

          v294 = 0;
          v295 = 0;
          v163 = 0;
          v296 = (v160 + v159);
          v18 = v158 >= v159;
          v297 = v158 - v159;
          if (!v18)
          {
            v297 = 0;
          }

          v298 = v159 + 1;
          while (2)
          {
            if (v297)
            {
              v299 = *v296;
              *(a2 + 1) = v298;
              v163 |= (v299 & 0x7F) << v294;
              if (v299 < 0)
              {
                v294 += 7;
                ++v296;
                --v297;
                ++v298;
                v14 = v295++ > 8;
                if (v14)
                {
                  goto LABEL_326;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v163) = 0;
              }
            }

            else
            {
              LODWORD(v163) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_428:
          *(this + 21) = v163;
          goto LABEL_370;
        case 0x14u:
          *(this + 23) |= 0x40000uLL;
          v189 = *(a2 + 1);
          v188 = *(a2 + 2);
          v190 = *a2;
          if (v189 <= 0xFFFFFFFFFFFFFFF5 && v189 + 10 <= v188)
          {
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = (v190 + v189);
            v195 = v189 + 1;
            do
            {
              *(a2 + 1) = v195;
              v196 = *v194++;
              v193 |= (v196 & 0x7F) << v191;
              if ((v196 & 0x80) == 0)
              {
                goto LABEL_434;
              }

              v191 += 7;
              ++v195;
              v14 = v192++ > 8;
            }

            while (!v14);
LABEL_348:
            LODWORD(v193) = 0;
            goto LABEL_434;
          }

          v306 = 0;
          v307 = 0;
          v193 = 0;
          v308 = (v190 + v189);
          v18 = v188 >= v189;
          v309 = v188 - v189;
          if (!v18)
          {
            v309 = 0;
          }

          v310 = v189 + 1;
          while (2)
          {
            if (v309)
            {
              v311 = *v308;
              *(a2 + 1) = v310;
              v193 |= (v311 & 0x7F) << v306;
              if (v311 < 0)
              {
                v306 += 7;
                ++v308;
                --v309;
                ++v310;
                v14 = v307++ > 8;
                if (v14)
                {
                  goto LABEL_348;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v193) = 0;
              }
            }

            else
            {
              LODWORD(v193) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_434:
          *(this + 23) = v193;
          goto LABEL_370;
        case 0x15u:
          *(this + 23) |= 0x80000uLL;
          v127 = *(a2 + 1);
          v126 = *(a2 + 2);
          v128 = *a2;
          if (v127 <= 0xFFFFFFFFFFFFFFF5 && v127 + 10 <= v126)
          {
            v129 = 0;
            v130 = 0;
            v131 = 0;
            v132 = (v128 + v127);
            v133 = v127 + 1;
            do
            {
              *(a2 + 1) = v133;
              v134 = *v132++;
              v131 |= (v134 & 0x7F) << v129;
              if ((v134 & 0x80) == 0)
              {
                goto LABEL_419;
              }

              v129 += 7;
              ++v133;
              v14 = v130++ > 8;
            }

            while (!v14);
LABEL_302:
            LODWORD(v131) = 0;
            goto LABEL_419;
          }

          v276 = 0;
          v277 = 0;
          v131 = 0;
          v278 = (v128 + v127);
          v18 = v126 >= v127;
          v279 = v126 - v127;
          if (!v18)
          {
            v279 = 0;
          }

          v280 = v127 + 1;
          while (2)
          {
            if (v279)
            {
              v281 = *v278;
              *(a2 + 1) = v280;
              v131 |= (v281 & 0x7F) << v276;
              if (v281 < 0)
              {
                v276 += 7;
                ++v278;
                --v279;
                ++v280;
                v14 = v277++ > 8;
                if (v14)
                {
                  goto LABEL_302;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v131) = 0;
              }
            }

            else
            {
              LODWORD(v131) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_419:
          *(this + 24) = v131;
          goto LABEL_370;
        case 0x16u:
          *(this + 23) |= 0x8000uLL;
          v137 = *(a2 + 1);
          v136 = *(a2 + 2);
          v138 = *a2;
          if (v137 <= 0xFFFFFFFFFFFFFFF5 && v137 + 10 <= v136)
          {
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = (v138 + v137);
            v143 = v137 + 1;
            do
            {
              *(a2 + 1) = v143;
              v144 = *v142++;
              v141 |= (v144 & 0x7F) << v139;
              if ((v144 & 0x80) == 0)
              {
                goto LABEL_422;
              }

              v139 += 7;
              ++v143;
              v14 = v140++ > 8;
            }

            while (!v14);
LABEL_310:
            LODWORD(v141) = 0;
            goto LABEL_422;
          }

          v282 = 0;
          v283 = 0;
          v141 = 0;
          v284 = (v138 + v137);
          v18 = v136 >= v137;
          v285 = v136 - v137;
          if (!v18)
          {
            v285 = 0;
          }

          v286 = v137 + 1;
          while (2)
          {
            if (v285)
            {
              v287 = *v284;
              *(a2 + 1) = v286;
              v141 |= (v287 & 0x7F) << v282;
              if (v287 < 0)
              {
                v282 += 7;
                ++v284;
                --v285;
                ++v286;
                v14 = v283++ > 8;
                if (v14)
                {
                  goto LABEL_310;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v141) = 0;
              }
            }

            else
            {
              LODWORD(v141) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_422:
          *(this + 20) = v141;
          goto LABEL_370;
        case 0x17u:
          *(this + 23) |= 0x400uLL;
          v179 = *(a2 + 1);
          v178 = *(a2 + 2);
          v180 = *a2;
          if (v179 <= 0xFFFFFFFFFFFFFFF5 && v179 + 10 <= v178)
          {
            v181 = 0;
            v182 = 0;
            v183 = 0;
            v184 = (v180 + v179);
            v185 = v179 + 1;
            do
            {
              *(a2 + 1) = v185;
              v186 = *v184++;
              v183 |= (v186 & 0x7F) << v181;
              if ((v186 & 0x80) == 0)
              {
                goto LABEL_431;
              }

              v181 += 7;
              ++v185;
              v14 = v182++ > 8;
            }

            while (!v14);
LABEL_340:
            LODWORD(v183) = 0;
            goto LABEL_431;
          }

          v300 = 0;
          v301 = 0;
          v183 = 0;
          v302 = (v180 + v179);
          v18 = v178 >= v179;
          v303 = v178 - v179;
          if (!v18)
          {
            v303 = 0;
          }

          v304 = v179 + 1;
          while (2)
          {
            if (v303)
            {
              v305 = *v302;
              *(a2 + 1) = v304;
              v183 |= (v305 & 0x7F) << v300;
              if (v305 < 0)
              {
                v300 += 7;
                ++v302;
                --v303;
                ++v304;
                v14 = v301++ > 8;
                if (v14)
                {
                  goto LABEL_340;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v183) = 0;
              }
            }

            else
            {
              LODWORD(v183) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_431:
          *(this + 15) = v183;
          goto LABEL_370;
        case 0x18u:
          *(this + 23) |= 0x2000000000uLL;
          v199 = *(a2 + 1);
          v198 = *(a2 + 2);
          v200 = *a2;
          if (v199 <= 0xFFFFFFFFFFFFFFF5 && v199 + 10 <= v198)
          {
            v201 = 0;
            v202 = 0;
            v203 = 0;
            v204 = (v200 + v199);
            v205 = v199 + 1;
            do
            {
              *(a2 + 1) = v205;
              v206 = *v204++;
              v203 |= (v206 & 0x7F) << v201;
              if ((v206 & 0x80) == 0)
              {
                goto LABEL_437;
              }

              v201 += 7;
              ++v205;
              v14 = v202++ > 8;
            }

            while (!v14);
LABEL_356:
            LODWORD(v203) = 0;
            goto LABEL_437;
          }

          v312 = 0;
          v313 = 0;
          v203 = 0;
          v314 = (v200 + v199);
          v18 = v198 >= v199;
          v315 = v198 - v199;
          if (!v18)
          {
            v315 = 0;
          }

          v316 = v199 + 1;
          while (2)
          {
            if (v315)
            {
              v317 = *v314;
              *(a2 + 1) = v316;
              v203 |= (v317 & 0x7F) << v312;
              if (v317 < 0)
              {
                v312 += 7;
                ++v314;
                --v315;
                ++v316;
                v14 = v313++ > 8;
                if (v14)
                {
                  goto LABEL_356;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v203) = 0;
              }
            }

            else
            {
              LODWORD(v203) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_437:
          *(this + 42) = v203;
          goto LABEL_370;
        case 0x19u:
          *(this + 23) |= 0x1000uLL;
          v78 = *(a2 + 1);
          v77 = *(a2 + 2);
          v79 = *a2;
          if (v78 <= 0xFFFFFFFFFFFFFFF5 && v78 + 10 <= v77)
          {
            v80 = 0;
            v81 = 0;
            v82 = 0;
            v83 = (v79 + v78);
            v84 = v78 + 1;
            do
            {
              *(a2 + 1) = v84;
              v85 = *v83++;
              v82 |= (v85 & 0x7F) << v80;
              if ((v85 & 0x80) == 0)
              {
                goto LABEL_404;
              }

              v80 += 7;
              ++v84;
              v14 = v81++ > 8;
            }

            while (!v14);
LABEL_262:
            LODWORD(v82) = 0;
            goto LABEL_404;
          }

          v246 = 0;
          v247 = 0;
          v82 = 0;
          v248 = (v79 + v78);
          v18 = v77 >= v78;
          v249 = v77 - v78;
          if (!v18)
          {
            v249 = 0;
          }

          v250 = v78 + 1;
          while (2)
          {
            if (v249)
            {
              v251 = *v248;
              *(a2 + 1) = v250;
              v82 |= (v251 & 0x7F) << v246;
              if (v251 < 0)
              {
                v246 += 7;
                ++v248;
                --v249;
                ++v250;
                v14 = v247++ > 8;
                if (v14)
                {
                  goto LABEL_262;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v82) = 0;
              }
            }

            else
            {
              LODWORD(v82) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_404:
          *(this + 17) = v82;
          goto LABEL_370;
        case 0x1Au:
          *(this + 23) |= 0x20000000uLL;
          v69 = *(a2 + 1);
          v68 = *(a2 + 2);
          v70 = *a2;
          if (v69 <= 0xFFFFFFFFFFFFFFF5 && v69 + 10 <= v68)
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v74 = (v70 + v69);
            v75 = v69 + 1;
            do
            {
              *(a2 + 1) = v75;
              v76 = *v74++;
              v73 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                goto LABEL_401;
              }

              v71 += 7;
              ++v75;
              v14 = v72++ > 8;
            }

            while (!v14);
LABEL_254:
            LODWORD(v73) = 0;
            goto LABEL_401;
          }

          v240 = 0;
          v241 = 0;
          v73 = 0;
          v242 = (v70 + v69);
          v18 = v68 >= v69;
          v243 = v68 - v69;
          if (!v18)
          {
            v243 = 0;
          }

          v244 = v69 + 1;
          while (2)
          {
            if (v243)
            {
              v245 = *v242;
              *(a2 + 1) = v244;
              v73 |= (v245 & 0x7F) << v240;
              if (v245 < 0)
              {
                v240 += 7;
                ++v242;
                --v243;
                ++v244;
                v14 = v241++ > 8;
                if (v14)
                {
                  goto LABEL_254;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v73) = 0;
              }
            }

            else
            {
              LODWORD(v73) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_401:
          *(this + 34) = v73;
          goto LABEL_370;
        case 0x1Bu:
          *(this + 23) |= 0x10uLL;
          v214 = *(a2 + 1);
          v213 = *(a2 + 2);
          v215 = *a2;
          if (v214 <= 0xFFFFFFFFFFFFFFF5 && v214 + 10 <= v213)
          {
            v216 = 0;
            v217 = 0;
            v218 = 0;
            v219 = (v215 + v214);
            v220 = v214 + 1;
            do
            {
              *(a2 + 1) = v220;
              v221 = *v219++;
              v218 |= (v221 & 0x7F) << v216;
              if ((v221 & 0x80) == 0)
              {
                goto LABEL_440;
              }

              v216 += 7;
              ++v220;
              v14 = v217++ > 8;
            }

            while (!v14);
LABEL_366:
            LODWORD(v218) = 0;
            goto LABEL_440;
          }

          v318 = 0;
          v319 = 0;
          v218 = 0;
          v320 = (v215 + v214);
          v18 = v213 >= v214;
          v321 = v213 - v214;
          if (!v18)
          {
            v321 = 0;
          }

          v322 = v214 + 1;
          while (2)
          {
            if (v321)
            {
              v323 = *v320;
              *(a2 + 1) = v322;
              v218 |= (v323 & 0x7F) << v318;
              if (v323 < 0)
              {
                v318 += 7;
                ++v320;
                --v321;
                ++v322;
                v14 = v319++ > 8;
                if (v14)
                {
                  goto LABEL_366;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v218) = 0;
              }
            }

            else
            {
              LODWORD(v218) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_440:
          *(this + 9) = v218;
          goto LABEL_370;
        case 0x1Cu:
          *(this + 23) |= 0x400000000uLL;
          v27 = *(a2 + 1);
          if (v27 > 0xFFFFFFFFFFFFFFFBLL || v27 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 39) = *(*a2 + v27);
          goto LABEL_368;
        case 0x1Du:
          *(this + 23) |= 0x20000000000uLL;
          v207 = *(a2 + 1);
          if (v207 >= *(a2 + 2))
          {
            v210 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v208 = v207 + 1;
            v209 = *(*a2 + v207);
            *(a2 + 1) = v208;
            v210 = v209 != 0;
          }

          *(this + 178) = v210;
          goto LABEL_370;
        case 0x1Eu:
          *(this + 23) |= 0x800000000uLL;
          v211 = *(a2 + 1);
          if (v211 > 0xFFFFFFFFFFFFFFFBLL || v211 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 40) = *(*a2 + v211);
          goto LABEL_368;
        case 0x1Fu:
          *(this + 23) |= 0x40000000000uLL;
          v173 = *(a2 + 1);
          if (v173 >= *(a2 + 2))
          {
            v176 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v174 = v173 + 1;
            v175 = *(*a2 + v173);
            *(a2 + 1) = v174;
            v176 = v175 != 0;
          }

          *(this + 179) = v176;
          goto LABEL_370;
        case 0x20u:
          *(this + 23) |= 0x20uLL;
          v108 = *(a2 + 1);
          v107 = *(a2 + 2);
          v109 = *a2;
          if (v108 <= 0xFFFFFFFFFFFFFFF5 && v108 + 10 <= v107)
          {
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = (v109 + v108);
            v114 = v108 + 1;
            do
            {
              *(a2 + 1) = v114;
              v115 = *v113++;
              v112 |= (v115 & 0x7F) << v110;
              if ((v115 & 0x80) == 0)
              {
                goto LABEL_413;
              }

              v110 += 7;
              ++v114;
              v14 = v111++ > 8;
            }

            while (!v14);
LABEL_286:
            LODWORD(v112) = 0;
            goto LABEL_413;
          }

          v264 = 0;
          v265 = 0;
          v112 = 0;
          v266 = (v109 + v108);
          v18 = v107 >= v108;
          v267 = v107 - v108;
          if (!v18)
          {
            v267 = 0;
          }

          v268 = v108 + 1;
          break;
        case 0x21u:
          *(this + 23) |= 0x80uLL;
          v177 = *(a2 + 1);
          if (v177 > 0xFFFFFFFFFFFFFFFBLL || v177 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 12) = *(*a2 + v177);
          goto LABEL_368;
        case 0x22u:
          *(this + 23) |= 0x4000000uLL;
          v48 = *(a2 + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 31) = *(*a2 + v48);
          goto LABEL_368;
        case 0x23u:
          *(this + 23) |= 0x8000000uLL;
          v28 = *(a2 + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 32) = *(*a2 + v28);
          goto LABEL_368;
        case 0x24u:
          *(this + 23) |= 0x10000000uLL;
          v25 = *(a2 + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 33) = *(*a2 + v25);
          goto LABEL_368;
        case 0x25u:
          *(this + 23) |= 0x40uLL;
          v26 = *(a2 + 1);
          if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 11) = *(*a2 + v26);
          goto LABEL_368;
        case 0x26u:
          *(this + 23) |= 0x100uLL;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 13) = *(*a2 + v24);
          goto LABEL_368;
        case 0x27u:
          *(this + 23) |= 0x200uLL;
          v212 = *(a2 + 1);
          if (v212 > 0xFFFFFFFFFFFFFFFBLL || v212 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 14) = *(*a2 + v212);
          goto LABEL_368;
        case 0x28u:
          *(this + 23) |= 0x400000uLL;
          v187 = *(a2 + 1);
          if (v187 > 0xFFFFFFFFFFFFFFFBLL || v187 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 27) = *(*a2 + v187);
          goto LABEL_368;
        case 0x29u:
          *(this + 23) |= 0x800000uLL;
          v54 = *(a2 + 1);
          if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 28) = *(*a2 + v54);
          goto LABEL_368;
        case 0x2Au:
          *(this + 23) |= 0x1000000uLL;
          v125 = *(a2 + 1);
          if (v125 > 0xFFFFFFFFFFFFFFFBLL || v125 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 29) = *(*a2 + v125);
          goto LABEL_368;
        case 0x2Bu:
          *(this + 23) |= 0x40000000uLL;
          v197 = *(a2 + 1);
          if (v197 > 0xFFFFFFFFFFFFFFFBLL || v197 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 35) = *(*a2 + v197);
          goto LABEL_368;
        case 0x2Cu:
          *(this + 23) |= 0x80000000uLL;
          v23 = *(a2 + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(a2 + 2))
          {
            goto LABEL_211;
          }

          *(this + 36) = *(*a2 + v23);
          goto LABEL_368;
        case 0x2Du:
          *(this + 23) |= 0x100000000uLL;
          v38 = *(a2 + 1);
          if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(a2 + 2))
          {
LABEL_211:
            *(a2 + 24) = 1;
          }

          else
          {
            *(this + 37) = *(*a2 + v38);
LABEL_368:
            v168 = *(a2 + 1) + 4;
LABEL_369:
            *(a2 + 1) = v168;
          }

          goto LABEL_370;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v267)
        {
          LODWORD(v112) = 0;
          *(a2 + 24) = 1;
          goto LABEL_413;
        }

        v269 = *v266;
        *(a2 + 1) = v268;
        v112 |= (v269 & 0x7F) << v264;
        if ((v269 & 0x80) == 0)
        {
          break;
        }

        v264 += 7;
        ++v266;
        --v267;
        ++v268;
        v14 = v265++ > 8;
        if (v14)
        {
          goto LABEL_286;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v112) = 0;
      }

LABEL_413:
      *(this + 10) = v112;
LABEL_370:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_442;
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
        goto LABEL_442;
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
      goto LABEL_370;
    }

    v325 = 0;
  }

  return v325 & 1;
}

uint64_t CMMsl::MobilityBoutMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 184);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 184);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 184);
  if ((v4 & 0x200000) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x1000000000) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  this = PB::Writer::write(a2, *(v3 + 164));
  v4 = *(v3 + 184);
  if ((v4 & 0x100000000000) == 0)
  {
LABEL_6:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x800) == 0)
  {
LABEL_7:
    if ((v4 & 0x10000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 184);
  if ((v4 & 0x10000000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_9:
    if ((v4 & 0x80000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  this = PB::Writer::write(a2, *(v3 + 120));
  v4 = *(v3 + 184);
  if ((v4 & 0x80000000000) == 0)
  {
LABEL_10:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x4000) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 184);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x8000000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 184);
  if ((v4 & 0x8000000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x200000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x4000000000) == 0)
  {
LABEL_17:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x100000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x10000) == 0)
  {
LABEL_20:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x40000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x80000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x8000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x400) == 0)
  {
LABEL_24:
    if ((v4 & 0x2000000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_70;
  }

LABEL_69:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x2000000000) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_71;
  }

LABEL_70:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x1000) == 0)
  {
LABEL_26:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_72;
  }

LABEL_71:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_73;
  }

LABEL_72:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x10) == 0)
  {
LABEL_28:
    if ((v4 & 0x400000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_74;
  }

LABEL_73:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x400000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20000000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_75;
  }

LABEL_74:
  this = PB::Writer::write(a2, *(v3 + 156));
  v4 = *(v3 + 184);
  if ((v4 & 0x20000000000) == 0)
  {
LABEL_30:
    if ((v4 & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_76;
  }

LABEL_75:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x800000000) == 0)
  {
LABEL_31:
    if ((v4 & 0x40000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_77;
  }

LABEL_76:
  this = PB::Writer::write(a2, *(v3 + 160));
  v4 = *(v3 + 184);
  if ((v4 & 0x40000000000) == 0)
  {
LABEL_32:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_78;
  }

LABEL_77:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x20) == 0)
  {
LABEL_33:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 184);
  if ((v4 & 0x80) == 0)
  {
LABEL_34:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_80;
  }

LABEL_79:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 184);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_81;
  }

LABEL_80:
  this = PB::Writer::write(a2, *(v3 + 124));
  v4 = *(v3 + 184);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_82;
  }

LABEL_81:
  this = PB::Writer::write(a2, *(v3 + 128));
  v4 = *(v3 + 184);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_83;
  }

LABEL_82:
  this = PB::Writer::write(a2, *(v3 + 132));
  v4 = *(v3 + 184);
  if ((v4 & 0x40) == 0)
  {
LABEL_38:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_84;
  }

LABEL_83:
  this = PB::Writer::write(a2, *(v3 + 44));
  v4 = *(v3 + 184);
  if ((v4 & 0x100) == 0)
  {
LABEL_39:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

LABEL_84:
  this = PB::Writer::write(a2, *(v3 + 52));
  v4 = *(v3 + 184);
  if ((v4 & 0x200) == 0)
  {
LABEL_40:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_86;
  }

LABEL_85:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 184);
  if ((v4 & 0x400000) == 0)
  {
LABEL_41:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_87;
  }

LABEL_86:
  this = PB::Writer::write(a2, *(v3 + 108));
  v4 = *(v3 + 184);
  if ((v4 & 0x800000) == 0)
  {
LABEL_42:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_88;
  }

LABEL_87:
  this = PB::Writer::write(a2, *(v3 + 112));
  v4 = *(v3 + 184);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_43:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_89;
  }

LABEL_88:
  this = PB::Writer::write(a2, *(v3 + 116));
  v4 = *(v3 + 184);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_44:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_90:
    this = PB::Writer::write(a2, *(v3 + 144));
    if ((*(v3 + 184) & 0x100000000) == 0)
    {
      return this;
    }

    goto LABEL_91;
  }

LABEL_89:
  this = PB::Writer::write(a2, *(v3 + 140));
  v4 = *(v3 + 184);
  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_90;
  }

LABEL_45:
  if ((v4 & 0x100000000) == 0)
  {
    return this;
  }

LABEL_91:
  v5 = *(v3 + 148);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::MobilityBoutMetrics::hash_value(CMMsl::MobilityBoutMetrics *this)
{
  v1 = *(this + 23);
  if ((v1 & 4) == 0)
  {
    v2 = 0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_93:
    v72 = 0.0;
    if ((v1 & 0x200000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_94;
  }

  if (*(this + 3) == 0.0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(this + 3);
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_3:
  v3 = *(this + 1);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  v72 = v3;
  if ((v1 & 0x200000) != 0)
  {
LABEL_6:
    v71 = *(this + 26);
    if ((v1 & 0x1000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_95:
    v70 = 0;
    if ((v1 & 0x100000000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_96;
  }

LABEL_94:
  v71 = 0;
  if ((v1 & 0x1000000000) == 0)
  {
    goto LABEL_95;
  }

LABEL_7:
  v4 = *(this + 41);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  v70 = v5;
  if ((v1 & 0x100000000000) != 0)
  {
LABEL_10:
    v69 = *(this + 181);
    if ((v1 & 0x800) != 0)
    {
      goto LABEL_11;
    }

LABEL_97:
    v68 = 0;
    if ((v1 & 0x10000000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_98;
  }

LABEL_96:
  v69 = 0;
  if ((v1 & 0x800) == 0)
  {
    goto LABEL_97;
  }

LABEL_11:
  v6 = *(this + 16);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  v68 = v7;
  if ((v1 & 0x10000000000) != 0)
  {
LABEL_14:
    v67 = *(this + 177);
    if ((v1 & 0x2000000) != 0)
    {
      goto LABEL_15;
    }

LABEL_99:
    v66 = 0;
    if ((v1 & 0x80000000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_100;
  }

LABEL_98:
  v67 = 0;
  if ((v1 & 0x2000000) == 0)
  {
    goto LABEL_99;
  }

LABEL_15:
  v8 = *(this + 30);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  v66 = v9;
  if ((v1 & 0x80000000000) != 0)
  {
LABEL_18:
    v65 = *(this + 180);
    if ((v1 & 0x4000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_101;
  }

LABEL_100:
  v65 = 0;
  if ((v1 & 0x4000) != 0)
  {
LABEL_19:
    v64 = *(this + 19);
    if ((v1 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_102:
    v63 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_23;
    }

LABEL_103:
    v62 = 0;
    if ((v1 & 0x8000000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_104;
  }

LABEL_101:
  v64 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_102;
  }

LABEL_20:
  v10 = *(this + 2);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  v63 = v10;
  if ((v1 & 8) == 0)
  {
    goto LABEL_103;
  }

LABEL_23:
  v11 = *(this + 8);
  v12 = LODWORD(v11);
  if (v11 == 0.0)
  {
    v12 = 0;
  }

  v62 = v12;
  if ((v1 & 0x8000000000) != 0)
  {
LABEL_26:
    v61 = *(this + 176);
    if ((v1 & 0x2000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_105;
  }

LABEL_104:
  v61 = 0;
  if ((v1 & 0x2000) != 0)
  {
LABEL_27:
    v60 = *(this + 18);
    if ((v1 & 0x200000000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_106;
  }

LABEL_105:
  v60 = 0;
  if ((v1 & 0x200000000) != 0)
  {
LABEL_28:
    v59 = *(this + 38);
    if ((v1 & 0x4000000000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_107;
  }

LABEL_106:
  v59 = 0;
  if ((v1 & 0x4000000000) != 0)
  {
LABEL_29:
    v58 = *(this + 43);
    if ((v1 & 0x100000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_108;
  }

LABEL_107:
  v58 = 0;
  if ((v1 & 0x100000) != 0)
  {
LABEL_30:
    v57 = *(this + 25);
    if ((v1 & 0x20000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_109;
  }

LABEL_108:
  v57 = 0;
  if ((v1 & 0x20000) != 0)
  {
LABEL_31:
    v56 = *(this + 22);
    if ((v1 & 0x10000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_110;
  }

LABEL_109:
  v56 = 0;
  if ((v1 & 0x10000) != 0)
  {
LABEL_32:
    v55 = *(this + 21);
    if ((v1 & 0x40000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_111;
  }

LABEL_110:
  v55 = 0;
  if ((v1 & 0x40000) != 0)
  {
LABEL_33:
    v13 = *(this + 23);
    if ((v1 & 0x80000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_112;
  }

LABEL_111:
  v13 = 0;
  if ((v1 & 0x80000) != 0)
  {
LABEL_34:
    v14 = *(this + 24);
    if ((v1 & 0x8000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_113;
  }

LABEL_112:
  v14 = 0;
  if ((v1 & 0x8000) != 0)
  {
LABEL_35:
    v15 = *(this + 20);
    if ((v1 & 0x400) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_114;
  }

LABEL_113:
  v15 = 0;
  if ((v1 & 0x400) != 0)
  {
LABEL_36:
    v16 = *(this + 15);
    if ((v1 & 0x2000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_115;
  }

LABEL_114:
  v16 = 0;
  if ((v1 & 0x2000000000) != 0)
  {
LABEL_37:
    v17 = *(this + 42);
    if ((v1 & 0x1000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_116;
  }

LABEL_115:
  v17 = 0;
  if ((v1 & 0x1000) != 0)
  {
LABEL_38:
    v18 = *(this + 17);
    if ((v1 & 0x20000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_117;
  }

LABEL_116:
  v18 = 0;
  if ((v1 & 0x20000000) != 0)
  {
LABEL_39:
    v19 = *(this + 34);
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_118;
  }

LABEL_117:
  v19 = 0;
  if ((v1 & 0x10) != 0)
  {
LABEL_40:
    v20 = *(this + 9);
    if ((v1 & 0x400000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_119:
    v22 = 0;
    if ((v1 & 0x20000000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_120;
  }

LABEL_118:
  v20 = 0;
  if ((v1 & 0x400000000) == 0)
  {
    goto LABEL_119;
  }

LABEL_41:
  v21 = *(this + 39);
  v22 = LODWORD(v21);
  if (v21 == 0.0)
  {
    v22 = 0;
  }

  if ((v1 & 0x20000000000) != 0)
  {
LABEL_44:
    v23 = *(this + 178);
    if ((v1 & 0x800000000) != 0)
    {
      goto LABEL_45;
    }

LABEL_121:
    v25 = 0;
    if ((v1 & 0x40000000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_122;
  }

LABEL_120:
  v23 = 0;
  if ((v1 & 0x800000000) == 0)
  {
    goto LABEL_121;
  }

LABEL_45:
  v24 = *(this + 40);
  v25 = LODWORD(v24);
  if (v24 == 0.0)
  {
    v25 = 0;
  }

  if ((v1 & 0x40000000000) != 0)
  {
LABEL_48:
    v26 = *(this + 179);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_123;
  }

LABEL_122:
  v26 = 0;
  if ((v1 & 0x20) != 0)
  {
LABEL_49:
    v27 = *(this + 10);
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_50;
    }

LABEL_124:
    v29 = 0;
    if ((v1 & 0x4000000) != 0)
    {
      goto LABEL_53;
    }

LABEL_125:
    v31 = 0;
    if ((v1 & 0x8000000) != 0)
    {
      goto LABEL_56;
    }

LABEL_126:
    v33 = 0;
    if ((v1 & 0x10000000) != 0)
    {
      goto LABEL_59;
    }

LABEL_127:
    v35 = 0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_62;
    }

LABEL_128:
    v37 = 0;
    if ((v1 & 0x100) != 0)
    {
      goto LABEL_65;
    }

LABEL_129:
    v39 = 0;
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_68;
    }

LABEL_130:
    v41 = 0;
    if ((v1 & 0x400000) != 0)
    {
      goto LABEL_71;
    }

LABEL_131:
    v43 = 0;
    if ((v1 & 0x800000) != 0)
    {
      goto LABEL_74;
    }

LABEL_132:
    v45 = 0;
    if ((v1 & 0x1000000) != 0)
    {
      goto LABEL_77;
    }

LABEL_133:
    v47 = 0;
    if ((v1 & 0x40000000) != 0)
    {
      goto LABEL_80;
    }

LABEL_134:
    v49 = 0;
    if ((v1 & 0x80000000) != 0)
    {
      goto LABEL_83;
    }

    goto LABEL_135;
  }

LABEL_123:
  v27 = 0;
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_124;
  }

LABEL_50:
  v28 = *(this + 12);
  v29 = LODWORD(v28);
  if (v28 == 0.0)
  {
    v29 = 0;
  }

  if ((v1 & 0x4000000) == 0)
  {
    goto LABEL_125;
  }

LABEL_53:
  v30 = *(this + 31);
  v31 = LODWORD(v30);
  if (v30 == 0.0)
  {
    v31 = 0;
  }

  if ((v1 & 0x8000000) == 0)
  {
    goto LABEL_126;
  }

LABEL_56:
  v32 = *(this + 32);
  v33 = LODWORD(v32);
  if (v32 == 0.0)
  {
    v33 = 0;
  }

  if ((v1 & 0x10000000) == 0)
  {
    goto LABEL_127;
  }

LABEL_59:
  v34 = *(this + 33);
  v35 = LODWORD(v34);
  if (v34 == 0.0)
  {
    v35 = 0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_128;
  }

LABEL_62:
  v36 = *(this + 11);
  v37 = LODWORD(v36);
  if (v36 == 0.0)
  {
    v37 = 0;
  }

  if ((v1 & 0x100) == 0)
  {
    goto LABEL_129;
  }

LABEL_65:
  v38 = *(this + 13);
  v39 = LODWORD(v38);
  if (v38 == 0.0)
  {
    v39 = 0;
  }

  if ((v1 & 0x200) == 0)
  {
    goto LABEL_130;
  }

LABEL_68:
  v40 = *(this + 14);
  v41 = LODWORD(v40);
  if (v40 == 0.0)
  {
    v41 = 0;
  }

  if ((v1 & 0x400000) == 0)
  {
    goto LABEL_131;
  }

LABEL_71:
  v42 = *(this + 27);
  v43 = LODWORD(v42);
  if (v42 == 0.0)
  {
    v43 = 0;
  }

  if ((v1 & 0x800000) == 0)
  {
    goto LABEL_132;
  }

LABEL_74:
  v44 = *(this + 28);
  v45 = LODWORD(v44);
  if (v44 == 0.0)
  {
    v45 = 0;
  }

  if ((v1 & 0x1000000) == 0)
  {
    goto LABEL_133;
  }

LABEL_77:
  v46 = *(this + 29);
  v47 = LODWORD(v46);
  if (v46 == 0.0)
  {
    v47 = 0;
  }

  if ((v1 & 0x40000000) == 0)
  {
    goto LABEL_134;
  }

LABEL_80:
  v48 = *(this + 35);
  v49 = LODWORD(v48);
  if (v48 == 0.0)
  {
    v49 = 0;
  }

  if ((v1 & 0x80000000) != 0)
  {
LABEL_83:
    v50 = *(this + 36);
    v51 = LODWORD(v50);
    if (v50 == 0.0)
    {
      v51 = 0;
    }

    if ((v1 & 0x100000000) != 0)
    {
      goto LABEL_86;
    }

LABEL_136:
    v53 = 0;
    return *&v72 ^ v2 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ *&v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v22 ^ v23 ^ v25 ^ v26 ^ v27 ^ v29 ^ v31 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53;
  }

LABEL_135:
  v51 = 0;
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_136;
  }

LABEL_86:
  v52 = *(this + 37);
  v53 = LODWORD(v52);
  if (v52 == 0.0)
  {
    v53 = 0;
  }

  return *&v72 ^ v2 ^ v71 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ *&v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v22 ^ v23 ^ v25 ^ v26 ^ v27 ^ v29 ^ v31 ^ v33 ^ v35 ^ v37 ^ v39 ^ v41 ^ v43 ^ v45 ^ v47 ^ v49 ^ v51 ^ v53;
}

void CMMsl::MobilityCalibrationMessage::~MobilityCalibrationMessage(CMMsl::MobilityCalibrationMessage *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::MobilityCalibrationMessage::MobilityCalibrationMessage(CMMsl::MobilityCalibrationMessage *this, const CMMsl::MobilityCalibrationMessage *a2)
{
  *this = &unk_286C21C38;
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

uint64_t CMMsl::MobilityCalibrationMessage::operator=(uint64_t a1, const CMMsl::MobilityCalibrationMessage *a2)
{
  if (a1 != a2)
  {
    CMMsl::MobilityCalibrationMessage::MobilityCalibrationMessage(&v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::MobilityCalibrationMessage *a2, CMMsl::MobilityCalibrationMessage *a3)
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

double CMMsl::MobilityCalibrationMessage::MobilityCalibrationMessage(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21C38;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C21C38;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::MobilityCalibrationMessage::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C21C38;
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

uint64_t CMMsl::MobilityCalibrationMessage::formatText(CMMsl::MobilityCalibrationMessage *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "endTime", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "startTime", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MobilityCalibrationMessage::readFrom(CMMsl::MobilityCalibrationMessage *this, PB::Reader *a2)
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

uint64_t CMMsl::MobilityCalibrationMessage::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t CMMsl::MobilityCalibrationMessage::hash_value(CMMsl::MobilityCalibrationMessage *this)
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

void CMMsl::MobilitySmoothedGaitMetrics::~MobilitySmoothedGaitMetrics(CMMsl::MobilitySmoothedGaitMetrics *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

float CMMsl::MobilitySmoothedGaitMetrics::MobilitySmoothedGaitMetrics(CMMsl::MobilitySmoothedGaitMetrics *this, const CMMsl::MobilitySmoothedGaitMetrics *a2)
{
  *this = &unk_286C21C70;
  *(this + 10) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 40) = 1;
    *(this + 1) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 0x40) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 9);
    v3 |= 0x40u;
    *(this + 40) = v3;
    *(this + 9) = v4;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    LODWORD(v4) = *(a2 + 8);
    v3 |= 0x20u;
    *(this + 40) = v3;
    *(this + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 6);
  v3 |= 8u;
  *(this + 40) = v3;
  *(this + 6) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  LODWORD(v4) = *(a2 + 5);
  v3 |= 4u;
  *(this + 40) = v3;
  *(this + 5) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 7);
  v3 |= 0x10u;
  *(this + 40) = v3;
  *(this + 7) = v4;
  if ((*(a2 + 40) & 2) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 4);
  *(this + 40) = v3 | 2;
  *(this + 4) = v4;
  return *&v4;
}

uint64_t CMMsl::MobilitySmoothedGaitMetrics::operator=(uint64_t a1, const CMMsl::MobilitySmoothedGaitMetrics *a2)
{
  if (a1 != a2)
  {
    CMMsl::MobilitySmoothedGaitMetrics::MobilitySmoothedGaitMetrics(&v8, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float CMMsl::swap(CMMsl *this, CMMsl::MobilitySmoothedGaitMetrics *a2, CMMsl::MobilitySmoothedGaitMetrics *a3)
{
  v3 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  LODWORD(v4) = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  LODWORD(v4) = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v4;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  return result;
}

float CMMsl::MobilitySmoothedGaitMetrics::MobilitySmoothedGaitMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21C70;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C21C70;
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 28) = *(a2 + 28);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::MobilitySmoothedGaitMetrics::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v10[0] = &unk_286C21C70;
    v3 = *(a2 + 40);
    *(a2 + 40) = 0;
    v4 = *(a2 + 8);
    v13 = *(a1 + 40);
    v5 = *(a1 + 8);
    *(a1 + 8) = v4;
    v10[1] = v5;
    v12 = *(a1 + 32);
    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    *(a1 + 40) = v3;
    *(a1 + 32) = v8;
    *(a1 + 16) = v7;
    v11 = v6;
    PB::Base::~Base(v10);
  }

  return a1;
}

uint64_t CMMsl::MobilitySmoothedGaitMetrics::formatText(CMMsl::MobilitySmoothedGaitMetrics *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "asymmetryProbability", *(this + 4));
    v5 = *(this + 40);
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

  else if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "cycleTime", *(this + 5));
  v5 = *(this + 40);
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
  PB::TextFormatter::format(a2, "distance", *(this + 6));
  v5 = *(this + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "doubleSupportPercentage", *(this + 7));
  v5 = *(this + 40);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "startTime", *(this + 1));
  v5 = *(this + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "stepLength", *(this + 8));
  if ((*(this + 40) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(a2, "walkingSpeed", *(this + 9));
  }

LABEL_9:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MobilitySmoothedGaitMetrics::readFrom(CMMsl::MobilitySmoothedGaitMetrics *this, PB::Reader *a2)
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
          *(this + 40) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_49:
            *(a2 + 24) = 1;
            goto LABEL_53;
          }

          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          goto LABEL_52;
        case 2:
          *(this + 40) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_49;
          }

          *(this + 9) = *(*a2 + v2);
LABEL_51:
          v2 = *(a2 + 1) + 4;
LABEL_52:
          *(a2 + 1) = v2;
          goto LABEL_53;
        case 3:
          *(this + 40) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_49;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_51;
      }
    }

    else if (v22 > 5)
    {
      if (v22 == 6)
      {
        *(this + 40) |= 0x10u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 7) = *(*a2 + v2);
        goto LABEL_51;
      }

      if (v22 == 7)
      {
        *(this + 40) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_51;
      }
    }

    else
    {
      if (v22 == 4)
      {
        *(this + 40) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_51;
      }

      if (v22 == 5)
      {
        *(this + 40) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
        {
          goto LABEL_49;
        }

        *(this + 5) = *(*a2 + v2);
        goto LABEL_51;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v23 = 0;
      return v23 & 1;
    }

    v2 = *(a2 + 1);
LABEL_53:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t CMMsl::MobilitySmoothedGaitMetrics::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 40);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 40);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 40) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 36));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    this = PB::Writer::write(a2, *(v3 + 28));
    if ((*(v3 + 40) & 2) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 20));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return this;
  }

LABEL_15:
  v5 = *(v3 + 16);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::MobilitySmoothedGaitMetrics::hash_value(CMMsl::MobilitySmoothedGaitMetrics *this)
{
  if ((*(this + 40) & 1) == 0)
  {
    v1 = 0.0;
    if ((*(this + 40) & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_24:
    v3 = 0;
    if ((*(this + 40) & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_25:
    v5 = 0;
    if ((*(this + 40) & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_26:
    v7 = 0;
    if ((*(this + 40) & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_27:
    v9 = 0;
    if ((*(this + 40) & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  v1 = *(this + 1);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 40) & 0x40) == 0)
  {
    goto LABEL_24;
  }

LABEL_3:
  v2 = *(this + 9);
  v3 = LODWORD(v2);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  if ((*(this + 40) & 0x20) == 0)
  {
    goto LABEL_25;
  }

LABEL_6:
  v4 = *(this + 8);
  v5 = LODWORD(v4);
  if (v4 == 0.0)
  {
    v5 = 0;
  }

  if ((*(this + 40) & 8) == 0)
  {
    goto LABEL_26;
  }

LABEL_9:
  v6 = *(this + 6);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  if ((*(this + 40) & 4) == 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  v8 = *(this + 5);
  v9 = LODWORD(v8);
  if (v8 == 0.0)
  {
    v9 = 0;
  }

  if ((*(this + 40) & 0x10) != 0)
  {
LABEL_15:
    v10 = *(this + 7);
    v11 = LODWORD(v10);
    if (v10 == 0.0)
    {
      v11 = 0;
    }

    if ((*(this + 40) & 2) != 0)
    {
      goto LABEL_18;
    }

LABEL_29:
    v13 = 0;
    return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13;
  }

LABEL_28:
  v11 = 0;
  if ((*(this + 40) & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  v12 = *(this + 4);
  v13 = LODWORD(v12);
  if (v12 == 0.0)
  {
    v13 = 0;
  }

  return v3 ^ *&v1 ^ v5 ^ v7 ^ v9 ^ v11 ^ v13;
}

void CMMsl::ModelBasedBioMotionClassification::~ModelBasedBioMotionClassification(CMMsl::ModelBasedBioMotionClassification *this)
{
  v2 = *(this + 1);
  *this = &unk_286C21CA8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  CMMsl::ModelBasedBioMotionClassification::~ModelBasedBioMotionClassification(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::ModelBasedBioMotionClassification *CMMsl::ModelBasedBioMotionClassification::ModelBasedBioMotionClassification(CMMsl::ModelBasedBioMotionClassification *this, const CMMsl::BioMotionClassification **a2)
{
  *this = &unk_286C21CA8;
  *(this + 1) = 0;
  if (a2[1])
  {
    operator new();
  }

  return this;
}

uint64_t CMMsl::ModelBasedBioMotionClassification::operator=(uint64_t a1, const CMMsl::BioMotionClassification **a2)
{
  if (a1 != a2)
  {
    CMMsl::ModelBasedBioMotionClassification::ModelBasedBioMotionClassification(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    CMMsl::ModelBasedBioMotionClassification::~ModelBasedBioMotionClassification(&v5);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::ModelBasedBioMotionClassification *a2, CMMsl::ModelBasedBioMotionClassification *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *CMMsl::ModelBasedBioMotionClassification::ModelBasedBioMotionClassification(void *a1, uint64_t a2)
{
  *a1 = &unk_286C21CA8;
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
  *a1 = &unk_286C21CA8;
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

uint64_t CMMsl::ModelBasedBioMotionClassification::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_286C21CA8;
    v6[1] = v4;
    CMMsl::ModelBasedBioMotionClassification::~ModelBasedBioMotionClassification(v6);
  }

  return a1;
}

uint64_t CMMsl::ModelBasedBioMotionClassification::formatText(CMMsl::ModelBasedBioMotionClassification *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "super");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::ModelBasedBioMotionClassification::readFrom(CMMsl::ModelBasedBioMotionClassification *this, PB::Reader *a2)
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

uint64_t CMMsl::ModelBasedBioMotionClassification::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

CMMsl::BioMotionClassification *CMMsl::ModelBasedBioMotionClassification::hash_value(CMMsl::ModelBasedBioMotionClassification *this)
{
  result = *(this + 1);
  if (result)
  {
    return CMMsl::BioMotionClassification::hash_value(result);
  }

  return result;
}

void *CMMsl::ModelBasedBioMotionClassification::makeSuper(void *this)
{
  if (!this[1])
  {
    operator new();
  }

  return this;
}

void CMMsl::MotionActivity::~MotionActivity(CMMsl::MotionActivity *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::MotionActivity::MotionActivity(uint64_t this, const CMMsl::MotionActivity *a2)
{
  *this = &unk_286C21CE0;
  *(this + 116) = 0;
  v2 = *(a2 + 29);
  if ((v2 & 0x10000) != 0)
  {
    v4 = *(a2 + 23);
    v3 = 0x10000;
    *(this + 116) = 0x10000;
    *(this + 92) = v4;
    v2 = *(a2 + 29);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x200) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 0x200u;
    *(this + 116) = v3;
    *(this + 64) = v5;
    v2 = *(a2 + 29);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    v6 = *(a2 + 12);
    v3 |= 0x20u;
    *(this + 116) = v3;
    *(this + 48) = v6;
    v2 = *(a2 + 29);
    if ((v2 & 0x400) == 0)
    {
LABEL_8:
      if ((v2 & 0x100000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_34;
    }
  }

  else if ((v2 & 0x400) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 17);
  v3 |= 0x400u;
  *(this + 116) = v3;
  *(this + 68) = v7;
  v2 = *(a2 + 29);
  if ((v2 & 0x100000) == 0)
  {
LABEL_9:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  v8 = *(a2 + 108);
  v3 |= 0x100000u;
  *(this + 116) = v3;
  *(this + 108) = v8;
  v2 = *(a2 + 29);
  if ((v2 & 0x8000) == 0)
  {
LABEL_10:
    if ((v2 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

LABEL_35:
  v9 = *(a2 + 22);
  v3 |= 0x8000u;
  *(this + 116) = v3;
  *(this + 88) = v9;
  v2 = *(a2 + 29);
  if ((v2 & 4) == 0)
  {
LABEL_11:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_37;
  }

LABEL_36:
  v10 = *(a2 + 3);
  v3 |= 4u;
  *(this + 116) = v3;
  *(this + 24) = v10;
  v2 = *(a2 + 29);
  if ((v2 & 0x200000) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_38;
  }

LABEL_37:
  v11 = *(a2 + 109);
  v3 |= 0x200000u;
  *(this + 116) = v3;
  *(this + 109) = v11;
  v2 = *(a2 + 29);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

LABEL_38:
  v12 = *(a2 + 15);
  v3 |= 0x100u;
  *(this + 116) = v3;
  *(this + 60) = v12;
  v2 = *(a2 + 29);
  if ((v2 & 1) == 0)
  {
LABEL_14:
    if ((v2 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_40;
  }

LABEL_39:
  v13 = *(a2 + 1);
  v3 |= 1u;
  *(this + 116) = v3;
  *(this + 8) = v13;
  v2 = *(a2 + 29);
  if ((v2 & 2) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_41;
  }

LABEL_40:
  v14 = *(a2 + 2);
  v3 |= 2u;
  *(this + 116) = v3;
  *(this + 16) = v14;
  v2 = *(a2 + 29);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = *(a2 + 19);
  v3 |= 0x1000u;
  *(this + 116) = v3;
  *(this + 76) = v15;
  v2 = *(a2 + 29);
  if ((v2 & 0x800) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_43;
  }

LABEL_42:
  v16 = *(a2 + 18);
  v3 |= 0x800u;
  *(this + 116) = v3;
  *(this + 72) = v16;
  v2 = *(a2 + 29);
  if ((v2 & 0x2000000) == 0)
  {
LABEL_18:
    if ((v2 & 0x1000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  v17 = *(a2 + 113);
  v3 |= 0x2000000u;
  *(this + 116) = v3;
  *(this + 113) = v17;
  v2 = *(a2 + 29);
  if ((v2 & 0x1000000) == 0)
  {
LABEL_19:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  v18 = *(a2 + 112);
  v3 |= 0x1000000u;
  *(this + 116) = v3;
  *(this + 112) = v18;
  v2 = *(a2 + 29);
  if ((v2 & 0x400000) == 0)
  {
LABEL_20:
    if ((v2 & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = *(a2 + 110);
  v3 |= 0x400000u;
  *(this + 116) = v3;
  *(this + 110) = v19;
  v2 = *(a2 + 29);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_21:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = *(a2 + 114);
  v3 |= 0x4000000u;
  *(this + 116) = v3;
  *(this + 114) = v20;
  v2 = *(a2 + 29);
  if ((v2 & 0x800000) == 0)
  {
LABEL_22:
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = *(a2 + 111);
  v3 |= 0x800000u;
  *(this + 116) = v3;
  *(this + 111) = v21;
  v2 = *(a2 + 29);
  if ((v2 & 0x40000) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = *(a2 + 25);
  v3 |= 0x40000u;
  *(this + 116) = v3;
  *(this + 100) = v22;
  v2 = *(a2 + 29);
  if ((v2 & 0x80) == 0)
  {
LABEL_24:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = *(a2 + 14);
  v3 |= 0x80u;
  *(this + 116) = v3;
  *(this + 56) = v23;
  v2 = *(a2 + 29);
  if ((v2 & 0x40) == 0)
  {
LABEL_25:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = *(a2 + 13);
  v3 |= 0x40u;
  *(this + 116) = v3;
  *(this + 52) = v24;
  v2 = *(a2 + 29);
  if ((v2 & 0x4000) == 0)
  {
LABEL_26:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  v25 = *(a2 + 21);
  v3 |= 0x4000u;
  *(this + 116) = v3;
  *(this + 84) = v25;
  v2 = *(a2 + 29);
  if ((v2 & 0x80000) == 0)
  {
LABEL_27:
    if ((v2 & 8) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  v26 = *(a2 + 26);
  v3 |= 0x80000u;
  *(this + 116) = v3;
  *(this + 104) = v26;
  v2 = *(a2 + 29);
  if ((v2 & 8) == 0)
  {
LABEL_28:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  v27 = *(a2 + 4);
  v3 |= 8u;
  *(this + 116) = v3;
  *(this + 32) = v27;
  v2 = *(a2 + 29);
  if ((v2 & 0x10) == 0)
  {
LABEL_29:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  v28 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 116) = v3;
  *(this + 40) = v28;
  v2 = *(a2 + 29);
  if ((v2 & 0x20000) == 0)
  {
LABEL_30:
    if ((v2 & 0x2000) == 0)
    {
      return this;
    }

LABEL_56:
    v30 = *(a2 + 20);
    *(this + 116) = v3 | 0x2000;
    *(this + 80) = v30;
    return this;
  }

LABEL_55:
  v29 = *(a2 + 24);
  v3 |= 0x20000u;
  *(this + 116) = v3;
  *(this + 96) = v29;
  if ((*(a2 + 29) & 0x2000) != 0)
  {
    goto LABEL_56;
  }

  return this;
}

CMMsl *CMMsl::MotionActivity::operator=(CMMsl *a1, const CMMsl::MotionActivity *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionActivity::MotionActivity(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::MotionActivity *a2, CMMsl::MotionActivity *a3)
{
  v3 = *(this + 29);
  *(this + 29) = *(a2 + 29);
  *(a2 + 29) = v3;
  v4 = *(this + 23);
  *(this + 23) = *(a2 + 23);
  *(a2 + 23) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v5;
  v6 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  v7 = *(this + 17);
  *(this + 17) = *(a2 + 17);
  *(a2 + 17) = v7;
  LOBYTE(v7) = *(this + 108);
  *(this + 108) = *(a2 + 108);
  *(a2 + 108) = v7;
  v8 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  LOBYTE(v7) = *(this + 109);
  *(this + 109) = *(a2 + 109);
  *(a2 + 109) = v7;
  v10 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  v11 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v12;
  v13 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v13;
  v14 = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v14;
  LOBYTE(v14) = *(this + 113);
  *(this + 113) = *(a2 + 113);
  *(a2 + 113) = v14;
  LOBYTE(v14) = *(this + 112);
  *(this + 112) = *(a2 + 112);
  *(a2 + 112) = v14;
  LOBYTE(v14) = *(this + 110);
  *(this + 110) = *(a2 + 110);
  *(a2 + 110) = v14;
  LOBYTE(v14) = *(this + 114);
  *(this + 114) = *(a2 + 114);
  *(a2 + 114) = v14;
  LOBYTE(v14) = *(this + 111);
  *(this + 111) = *(a2 + 111);
  *(a2 + 111) = v14;
  v15 = *(this + 25);
  *(this + 25) = *(a2 + 25);
  *(a2 + 25) = v15;
  LODWORD(v12) = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v12;
  LODWORD(v12) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v12;
  LODWORD(v12) = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v12;
  v16 = *(this + 26);
  *(this + 26) = *(a2 + 26);
  *(a2 + 26) = v16;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v18 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v18;
  LODWORD(v18) = *(this + 24);
  *(this + 24) = *(a2 + 24);
  *(a2 + 24) = v18;
  LODWORD(v18) = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v18;
  return result;
}

double CMMsl::MotionActivity::MotionActivity(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C21CE0;
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = 0;
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 109) = *(a2 + 109);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 114) = *(a2 + 114);
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 104) = *(a2 + 104);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  return result;
}

CMMsl *CMMsl::MotionActivity::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::MotionActivity::MotionActivity(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::MotionActivity::formatText(CMMsl::MotionActivity *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 29);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(a2, "confidence");
    v5 = *(this + 29);
    if ((v5 & 0x40) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v5 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "drivingArmLikelihoodSum", *(this + 13));
  v5 = *(this + 29);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(a2, "drivingStowedLikelihoodSum", *(this + 14));
  v5 = *(this + 29);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(a2, "estExitTime", *(this + 1));
  v5 = *(this + 29);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(a2, "exitState");
  v5 = *(this + 29);
  if ((v5 & 0x100000) == 0)
  {
LABEL_7:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(a2, "isStanding");
  v5 = *(this + 29);
  if ((v5 & 0x200000) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(a2, "isVehicleConnected");
  v5 = *(this + 29);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(a2, "mountedConfidence");
  v5 = *(this + 29);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(a2, "mountedState");
  v5 = *(this + 29);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(a2, "rawConfidence");
  v5 = *(this + 29);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(a2, "rawType");
  v5 = *(this + 29);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(a2, "source");
  v5 = *(this + 29);
  if ((v5 & 0x4000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(a2, "ssLikelihoodSum", *(this + 21));
  v5 = *(this + 29);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(a2, "startTime", *(this + 2));
  v5 = *(this + 29);
  if ((v5 & 0x8000) == 0)
  {
LABEL_16:
    if ((v5 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(a2, "tilt", *(this + 22));
  v5 = *(this + 29);
  if ((v5 & 4) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(a2, "timestamp", *(this + 3));
  v5 = *(this + 29);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(a2, "type");
  v5 = *(this + 29);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(a2, "typeYouth");
  v5 = *(this + 29);
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(a2, "vehicularBasebandHint");
  v5 = *(this + 29);
  if ((v5 & 0x800000) == 0)
  {
LABEL_21:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(a2, "vehicularBtHint");
  v5 = *(this + 29);
  if ((v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(a2, "vehicularConfidence");
  v5 = *(this + 29);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(a2, "vehicularGpsHint");
  v5 = *(this + 29);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(a2, "vehicularMotionHint");
  v5 = *(this + 29);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_25:
    if ((v5 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(a2, "vehicularWifiHint");
  v5 = *(this + 29);
  if ((v5 & 8) == 0)
  {
LABEL_26:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(a2, "workoutDetectionTime", *(this + 4));
  v5 = *(this + 29);
  if ((v5 & 0x80000) == 0)
  {
LABEL_27:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_57:
  PB::TextFormatter::format(a2, "workoutDetectionType");
  if ((*(this + 29) & 0x10) != 0)
  {
LABEL_28:
    PB::TextFormatter::format(a2, "workoutEscalationTime");
  }

LABEL_29:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::MotionActivity::readFrom(CMMsl::MotionActivity *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
  {
LABEL_308:
    v239 = v4 ^ 1;
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
        goto LABEL_308;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(this + 29) |= 0x10000u;
          v23 = *(a2 + 1);
          v22 = *(a2 + 2);
          v24 = *a2;
          if (v23 <= 0xFFFFFFFFFFFFFFF5 && v23 + 10 <= v22)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            do
            {
              *(a2 + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_291;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
            }

            while (!v14);
LABEL_209:
            LODWORD(v27) = 0;
            goto LABEL_291;
          }

          v203 = 0;
          v204 = 0;
          v27 = 0;
          v205 = (v24 + v23);
          v18 = v22 >= v23;
          v206 = v22 - v23;
          if (!v18)
          {
            v206 = 0;
          }

          v207 = v23 + 1;
          while (2)
          {
            if (v206)
            {
              v208 = *v205;
              *(a2 + 1) = v207;
              v27 |= (v208 & 0x7F) << v203;
              if (v208 < 0)
              {
                v203 += 7;
                ++v205;
                --v206;
                ++v207;
                v14 = v204++ > 8;
                if (v14)
                {
                  goto LABEL_209;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v27) = 0;
              }
            }

            else
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_291:
          *(this + 23) = v27;
          goto LABEL_18;
        case 2u:
          *(this + 29) |= 0x200u;
          v107 = *(a2 + 1);
          v106 = *(a2 + 2);
          v108 = *a2;
          if (v107 <= 0xFFFFFFFFFFFFFFF5 && v107 + 10 <= v106)
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            do
            {
              *(a2 + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                goto LABEL_294;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
            }

            while (!v14);
LABEL_217:
            LODWORD(v111) = 0;
            goto LABEL_294;
          }

          v209 = 0;
          v210 = 0;
          v111 = 0;
          v211 = (v108 + v107);
          v18 = v106 >= v107;
          v212 = v106 - v107;
          if (!v18)
          {
            v212 = 0;
          }

          v213 = v107 + 1;
          while (2)
          {
            if (v212)
            {
              v214 = *v211;
              *(a2 + 1) = v213;
              v111 |= (v214 & 0x7F) << v209;
              if (v214 < 0)
              {
                v209 += 7;
                ++v211;
                --v212;
                ++v213;
                v14 = v210++ > 8;
                if (v14)
                {
                  goto LABEL_217;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v111) = 0;
              }
            }

            else
            {
              LODWORD(v111) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_294:
          *(this + 16) = v111;
          goto LABEL_18;
        case 3u:
          *(this + 29) |= 0x20u;
          v81 = *(a2 + 1);
          v80 = *(a2 + 2);
          v82 = *a2;
          if (v81 <= 0xFFFFFFFFFFFFFFF5 && v81 + 10 <= v80)
          {
            v83 = 0;
            v84 = 0;
            v85 = 0;
            v86 = (v82 + v81);
            v87 = v81 + 1;
            do
            {
              *(a2 + 1) = v87;
              v88 = *v86++;
              v85 |= (v88 & 0x7F) << v83;
              if ((v88 & 0x80) == 0)
              {
                goto LABEL_285;
              }

              v83 += 7;
              ++v87;
              v14 = v84++ > 8;
            }

            while (!v14);
LABEL_191:
            LODWORD(v85) = 0;
            goto LABEL_285;
          }

          v191 = 0;
          v192 = 0;
          v85 = 0;
          v193 = (v82 + v81);
          v18 = v80 >= v81;
          v194 = v80 - v81;
          if (!v18)
          {
            v194 = 0;
          }

          v195 = v81 + 1;
          while (2)
          {
            if (v194)
            {
              v196 = *v193;
              *(a2 + 1) = v195;
              v85 |= (v196 & 0x7F) << v191;
              if (v196 < 0)
              {
                v191 += 7;
                ++v193;
                --v194;
                ++v195;
                v14 = v192++ > 8;
                if (v14)
                {
                  goto LABEL_191;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v85) = 0;
              }
            }

            else
            {
              LODWORD(v85) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_285:
          *(this + 12) = v85;
          goto LABEL_18;
        case 4u:
          *(this + 29) |= 0x400u;
          v94 = *(a2 + 1);
          v93 = *(a2 + 2);
          v95 = *a2;
          if (v94 <= 0xFFFFFFFFFFFFFFF5 && v94 + 10 <= v93)
          {
            v96 = 0;
            v97 = 0;
            v98 = 0;
            v99 = (v95 + v94);
            v100 = v94 + 1;
            do
            {
              *(a2 + 1) = v100;
              v101 = *v99++;
              v98 |= (v101 & 0x7F) << v96;
              if ((v101 & 0x80) == 0)
              {
                goto LABEL_288;
              }

              v96 += 7;
              ++v100;
              v14 = v97++ > 8;
            }

            while (!v14);
LABEL_199:
            LODWORD(v98) = 0;
            goto LABEL_288;
          }

          v197 = 0;
          v198 = 0;
          v98 = 0;
          v199 = (v95 + v94);
          v18 = v93 >= v94;
          v200 = v93 - v94;
          if (!v18)
          {
            v200 = 0;
          }

          v201 = v94 + 1;
          while (2)
          {
            if (v200)
            {
              v202 = *v199;
              *(a2 + 1) = v201;
              v98 |= (v202 & 0x7F) << v197;
              if (v202 < 0)
              {
                v197 += 7;
                ++v199;
                --v200;
                ++v201;
                v14 = v198++ > 8;
                if (v14)
                {
                  goto LABEL_199;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v98) = 0;
              }
            }

            else
            {
              LODWORD(v98) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_288:
          *(this + 17) = v98;
          goto LABEL_18;
        case 5u:
          *(this + 29) |= 0x100000u;
          v48 = *(a2 + 1);
          if (v48 >= *(a2 + 2))
          {
            v51 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v49 = v48 + 1;
            v50 = *(*a2 + v48);
            *(a2 + 1) = v49;
            v51 = v50 != 0;
          }

          *(this + 108) = v51;
          goto LABEL_18;
        case 6u:
          *(this + 29) |= 0x8000u;
          v120 = *(a2 + 1);
          if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 22) = *(*a2 + v120);
          goto LABEL_135;
        case 7u:
          *(this + 29) |= 4u;
          v126 = *(a2 + 1);
          if (v126 > 0xFFFFFFFFFFFFFFF7 || v126 + 8 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 3) = *(*a2 + v126);
          goto LABEL_257;
        case 8u:
          *(this + 29) |= 0x200000u;
          v102 = *(a2 + 1);
          if (v102 >= *(a2 + 2))
          {
            v105 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v103 = v102 + 1;
            v104 = *(*a2 + v102);
            *(a2 + 1) = v103;
            v105 = v104 != 0;
          }

          *(this + 109) = v105;
          goto LABEL_18;
        case 9u:
          *(this + 29) |= 0x100u;
          v138 = *(a2 + 1);
          v137 = *(a2 + 2);
          v139 = *a2;
          if (v138 <= 0xFFFFFFFFFFFFFFF5 && v138 + 10 <= v137)
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = (v139 + v138);
            v144 = v138 + 1;
            do
            {
              *(a2 + 1) = v144;
              v145 = *v143++;
              v142 |= (v145 & 0x7F) << v140;
              if ((v145 & 0x80) == 0)
              {
                goto LABEL_300;
              }

              v140 += 7;
              ++v144;
              v14 = v141++ > 8;
            }

            while (!v14);
LABEL_237:
            LODWORD(v142) = 0;
            goto LABEL_300;
          }

          v221 = 0;
          v222 = 0;
          v142 = 0;
          v223 = (v139 + v138);
          v18 = v137 >= v138;
          v224 = v137 - v138;
          if (!v18)
          {
            v224 = 0;
          }

          v225 = v138 + 1;
          while (2)
          {
            if (v224)
            {
              v226 = *v223;
              *(a2 + 1) = v225;
              v142 |= (v226 & 0x7F) << v221;
              if (v226 < 0)
              {
                v221 += 7;
                ++v223;
                --v224;
                ++v225;
                v14 = v222++ > 8;
                if (v14)
                {
                  goto LABEL_237;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v142) = 0;
              }
            }

            else
            {
              LODWORD(v142) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_300:
          *(this + 15) = v142;
          goto LABEL_18;
        case 0xAu:
          *(this + 29) |= 1u;
          v61 = *(a2 + 1);
          if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 1) = *(*a2 + v61);
          goto LABEL_257;
        case 0xBu:
          *(this + 29) |= 2u;
          v136 = *(a2 + 1);
          if (v136 > 0xFFFFFFFFFFFFFFF7 || v136 + 8 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 2) = *(*a2 + v136);
          goto LABEL_257;
        case 0xCu:
          *(this + 29) |= 0x1000u;
          v40 = *(a2 + 1);
          v39 = *(a2 + 2);
          v41 = *a2;
          if (v40 <= 0xFFFFFFFFFFFFFFF5 && v40 + 10 <= v39)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            do
            {
              *(a2 + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                goto LABEL_273;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
            }

            while (!v14);
LABEL_157:
            LODWORD(v44) = 0;
            goto LABEL_273;
          }

          v167 = 0;
          v168 = 0;
          v44 = 0;
          v169 = (v41 + v40);
          v18 = v39 >= v40;
          v170 = v39 - v40;
          if (!v18)
          {
            v170 = 0;
          }

          v171 = v40 + 1;
          while (2)
          {
            if (v170)
            {
              v172 = *v169;
              *(a2 + 1) = v171;
              v44 |= (v172 & 0x7F) << v167;
              if (v172 < 0)
              {
                v167 += 7;
                ++v169;
                --v170;
                ++v171;
                v14 = v168++ > 8;
                if (v14)
                {
                  goto LABEL_157;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v44) = 0;
              }
            }

            else
            {
              LODWORD(v44) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_273:
          *(this + 19) = v44;
          goto LABEL_18;
        case 0xDu:
          *(this + 29) |= 0x800u;
          v53 = *(a2 + 1);
          v52 = *(a2 + 2);
          v54 = *a2;
          if (v53 <= 0xFFFFFFFFFFFFFFF5 && v53 + 10 <= v52)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = (v54 + v53);
            v59 = v53 + 1;
            do
            {
              *(a2 + 1) = v59;
              v60 = *v58++;
              v57 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                goto LABEL_276;
              }

              v55 += 7;
              ++v59;
              v14 = v56++ > 8;
            }

            while (!v14);
LABEL_165:
            LODWORD(v57) = 0;
            goto LABEL_276;
          }

          v173 = 0;
          v174 = 0;
          v57 = 0;
          v175 = (v54 + v53);
          v18 = v52 >= v53;
          v176 = v52 - v53;
          if (!v18)
          {
            v176 = 0;
          }

          v177 = v53 + 1;
          while (2)
          {
            if (v176)
            {
              v178 = *v175;
              *(a2 + 1) = v177;
              v57 |= (v178 & 0x7F) << v173;
              if (v178 < 0)
              {
                v173 += 7;
                ++v175;
                --v176;
                ++v177;
                v14 = v174++ > 8;
                if (v14)
                {
                  goto LABEL_165;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v57) = 0;
              }
            }

            else
            {
              LODWORD(v57) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_276:
          *(this + 18) = v57;
          goto LABEL_18;
        case 0xEu:
          *(this + 29) |= 0x2000000u;
          v122 = *(a2 + 1);
          if (v122 >= *(a2 + 2))
          {
            v125 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v123 = v122 + 1;
            v124 = *(*a2 + v122);
            *(a2 + 1) = v123;
            v125 = v124 != 0;
          }

          *(this + 113) = v125;
          goto LABEL_18;
        case 0xFu:
          *(this + 29) |= 0x1000000u;
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

          *(this + 112) = v38;
          goto LABEL_18;
        case 0x10u:
          *(this + 29) |= 0x400000u;
          v89 = *(a2 + 1);
          if (v89 >= *(a2 + 2))
          {
            v92 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v90 = v89 + 1;
            v91 = *(*a2 + v89);
            *(a2 + 1) = v90;
            v92 = v91 != 0;
          }

          *(this + 110) = v92;
          goto LABEL_18;
        case 0x11u:
          *(this + 29) |= 0x4000000u;
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

          *(this + 114) = v34;
          goto LABEL_18;
        case 0x12u:
          *(this + 29) |= 0x800000u;
          v115 = *(a2 + 1);
          if (v115 >= *(a2 + 2))
          {
            v118 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v116 = v115 + 1;
            v117 = *(*a2 + v115);
            *(a2 + 1) = v116;
            v118 = v117 != 0;
          }

          *(this + 111) = v118;
          goto LABEL_18;
        case 0x13u:
          *(this + 29) |= 0x40000u;
          v128 = *(a2 + 1);
          v127 = *(a2 + 2);
          v129 = *a2;
          if (v128 <= 0xFFFFFFFFFFFFFFF5 && v128 + 10 <= v127)
          {
            v130 = 0;
            v131 = 0;
            v132 = 0;
            v133 = (v129 + v128);
            v134 = v128 + 1;
            do
            {
              *(a2 + 1) = v134;
              v135 = *v133++;
              v132 |= (v135 & 0x7F) << v130;
              if ((v135 & 0x80) == 0)
              {
                goto LABEL_297;
              }

              v130 += 7;
              ++v134;
              v14 = v131++ > 8;
            }

            while (!v14);
LABEL_229:
            LODWORD(v132) = 0;
            goto LABEL_297;
          }

          v215 = 0;
          v216 = 0;
          v132 = 0;
          v217 = (v129 + v128);
          v18 = v127 >= v128;
          v218 = v127 - v128;
          if (!v18)
          {
            v218 = 0;
          }

          v219 = v128 + 1;
          while (2)
          {
            if (v218)
            {
              v220 = *v217;
              *(a2 + 1) = v219;
              v132 |= (v220 & 0x7F) << v215;
              if (v220 < 0)
              {
                v215 += 7;
                ++v217;
                --v218;
                ++v219;
                v14 = v216++ > 8;
                if (v14)
                {
                  goto LABEL_229;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v132) = 0;
              }
            }

            else
            {
              LODWORD(v132) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_297:
          *(this + 25) = v132;
          goto LABEL_18;
        case 0x14u:
          *(this + 29) |= 0x80u;
          v155 = *(a2 + 1);
          if (v155 > 0xFFFFFFFFFFFFFFFBLL || v155 + 4 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 14) = *(*a2 + v155);
          goto LABEL_135;
        case 0x15u:
          *(this + 29) |= 0x40u;
          v119 = *(a2 + 1);
          if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 13) = *(*a2 + v119);
          goto LABEL_135;
        case 0x16u:
          *(this + 29) |= 0x4000u;
          v121 = *(a2 + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(a2 + 2))
          {
            goto LABEL_138;
          }

          *(this + 21) = *(*a2 + v121);
LABEL_135:
          v156 = *(a2 + 1) + 4;
          goto LABEL_258;
        case 0x17u:
          *(this + 29) |= 0x80000u;
          v147 = *(a2 + 1);
          v146 = *(a2 + 2);
          v148 = *a2;
          if (v147 <= 0xFFFFFFFFFFFFFFF5 && v147 + 10 <= v146)
          {
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = (v148 + v147);
            v153 = v147 + 1;
            do
            {
              *(a2 + 1) = v153;
              v154 = *v152++;
              v151 |= (v154 & 0x7F) << v149;
              if ((v154 & 0x80) == 0)
              {
                goto LABEL_303;
              }

              v149 += 7;
              ++v153;
              v14 = v150++ > 8;
            }

            while (!v14);
LABEL_247:
            LODWORD(v151) = 0;
            goto LABEL_303;
          }

          v227 = 0;
          v228 = 0;
          v151 = 0;
          v229 = (v148 + v147);
          v18 = v146 >= v147;
          v230 = v146 - v147;
          if (!v18)
          {
            v230 = 0;
          }

          v231 = v147 + 1;
          while (2)
          {
            if (v230)
            {
              v232 = *v229;
              *(a2 + 1) = v231;
              v151 |= (v232 & 0x7F) << v227;
              if (v232 < 0)
              {
                v227 += 7;
                ++v229;
                --v230;
                ++v231;
                v14 = v228++ > 8;
                if (v14)
                {
                  goto LABEL_247;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v151) = 0;
              }
            }

            else
            {
              LODWORD(v151) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_303:
          *(this + 26) = v151;
          goto LABEL_18;
        case 0x18u:
          *(this + 29) |= 8u;
          v157 = *(a2 + 1);
          if (v157 <= 0xFFFFFFFFFFFFFFF7 && v157 + 8 <= *(a2 + 2))
          {
            *(this + 4) = *(*a2 + v157);
LABEL_257:
            v156 = *(a2 + 1) + 8;
LABEL_258:
            *(a2 + 1) = v156;
          }

          else
          {
LABEL_138:
            *(a2 + 24) = 1;
          }

          goto LABEL_18;
        case 0x19u:
          *(this + 29) |= 0x10u;
          v72 = *(a2 + 1);
          v71 = *(a2 + 2);
          v73 = *a2;
          if (v72 <= 0xFFFFFFFFFFFFFFF5 && v72 + 10 <= v71)
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = (v73 + v72);
            v78 = v72 + 1;
            do
            {
              *(a2 + 1) = v78;
              v79 = *v77++;
              v76 |= (v79 & 0x7F) << v74;
              if ((v79 & 0x80) == 0)
              {
                goto LABEL_282;
              }

              v74 += 7;
              ++v78;
              v14 = v75++ > 8;
            }

            while (!v14);
LABEL_183:
            v76 = 0;
            goto LABEL_282;
          }

          v185 = 0;
          v186 = 0;
          v76 = 0;
          v187 = (v73 + v72);
          v18 = v71 >= v72;
          v188 = v71 - v72;
          if (!v18)
          {
            v188 = 0;
          }

          v189 = v72 + 1;
          while (2)
          {
            if (v188)
            {
              v190 = *v187;
              *(a2 + 1) = v189;
              v76 |= (v190 & 0x7F) << v185;
              if (v190 < 0)
              {
                v185 += 7;
                ++v187;
                --v188;
                ++v189;
                v14 = v186++ > 8;
                if (v14)
                {
                  goto LABEL_183;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                v76 = 0;
              }
            }

            else
            {
              v76 = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_282:
          *(this + 5) = v76;
          goto LABEL_18;
        case 0x1Au:
          *(this + 29) |= 0x20000u;
          v63 = *(a2 + 1);
          v62 = *(a2 + 2);
          v64 = *a2;
          if (v63 <= 0xFFFFFFFFFFFFFFF5 && v63 + 10 <= v62)
          {
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = (v64 + v63);
            v69 = v63 + 1;
            do
            {
              *(a2 + 1) = v69;
              v70 = *v68++;
              v67 |= (v70 & 0x7F) << v65;
              if ((v70 & 0x80) == 0)
              {
                goto LABEL_279;
              }

              v65 += 7;
              ++v69;
              v14 = v66++ > 8;
            }

            while (!v14);
LABEL_175:
            LODWORD(v67) = 0;
            goto LABEL_279;
          }

          v179 = 0;
          v180 = 0;
          v67 = 0;
          v181 = (v64 + v63);
          v18 = v62 >= v63;
          v182 = v62 - v63;
          if (!v18)
          {
            v182 = 0;
          }

          v183 = v63 + 1;
          while (2)
          {
            if (v182)
            {
              v184 = *v181;
              *(a2 + 1) = v183;
              v67 |= (v184 & 0x7F) << v179;
              if (v184 < 0)
              {
                v179 += 7;
                ++v181;
                --v182;
                ++v183;
                v14 = v180++ > 8;
                if (v14)
                {
                  goto LABEL_175;
                }

                continue;
              }

              if (*(a2 + 24))
              {
                LODWORD(v67) = 0;
              }
            }

            else
            {
              LODWORD(v67) = 0;
              *(a2 + 24) = 1;
            }

            break;
          }

LABEL_279:
          *(this + 24) = v67;
          goto LABEL_18;
        case 0x1Bu:
          *(this + 29) |= 0x2000u;
          v159 = *(a2 + 1);
          v158 = *(a2 + 2);
          v160 = *a2;
          if (v159 <= 0xFFFFFFFFFFFFFFF5 && v159 + 10 <= v158)
          {
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = (v160 + v159);
            v165 = v159 + 1;
            do
            {
              *(a2 + 1) = v165;
              v166 = *v164++;
              v163 |= (v166 & 0x7F) << v161;
              if ((v166 & 0x80) == 0)
              {
                goto LABEL_306;
              }

              v161 += 7;
              ++v165;
              v14 = v162++ > 8;
            }

            while (!v14);
LABEL_255:
            LODWORD(v163) = 0;
            goto LABEL_306;
          }

          v233 = 0;
          v234 = 0;
          v163 = 0;
          v235 = (v160 + v159);
          v18 = v158 >= v159;
          v236 = v158 - v159;
          if (!v18)
          {
            v236 = 0;
          }

          v237 = v159 + 1;
          break;
        default:
          goto LABEL_17;
      }

      while (1)
      {
        if (!v236)
        {
          LODWORD(v163) = 0;
          *(a2 + 24) = 1;
          goto LABEL_306;
        }

        v238 = *v235;
        *(a2 + 1) = v237;
        v163 |= (v238 & 0x7F) << v233;
        if ((v238 & 0x80) == 0)
        {
          break;
        }

        v233 += 7;
        ++v235;
        --v236;
        ++v237;
        v14 = v234++ > 8;
        if (v14)
        {
          goto LABEL_255;
        }
      }

      if (*(a2 + 24))
      {
        LODWORD(v163) = 0;
      }

LABEL_306:
      *(this + 20) = v163;
LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_308;
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
        goto LABEL_308;
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

    v239 = 0;
  }

  return v239 & 1;
}