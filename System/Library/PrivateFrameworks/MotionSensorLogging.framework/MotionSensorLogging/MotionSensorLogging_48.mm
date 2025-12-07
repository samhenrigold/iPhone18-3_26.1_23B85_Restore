uint64_t CMMsl::PencilDeviceMotion::readFrom(CMMsl::PencilDeviceMotion *this, PB::Reader *a2)
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
        goto LABEL_75;
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

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v22 == 1)
      {
        operator new();
      }

      if (v22 != 2)
      {
        goto LABEL_17;
      }

      if ((v10 & 7) != 2)
      {
        v42 = *(this + 2);
        v41 = *(this + 3);
        if (v42 >= v41)
        {
          v44 = *(this + 1);
          v45 = v42 - v44;
          v46 = (v42 - v44) >> 2;
          v47 = v46 + 1;
          if ((v46 + 1) >> 62)
          {
LABEL_79:
            sub_25AAE66B8();
          }

          v48 = v41 - v44;
          if (v48 >> 1 > v47)
          {
            v47 = v48 >> 1;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v49 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            sub_25AD288E8(v49);
          }

          v50 = (v42 - v44) >> 2;
          v51 = (4 * v46);
          v52 = (4 * v46 - 4 * v50);
          *v51 = 0;
          v43 = v51 + 1;
          memcpy(v52, v44, v45);
          v53 = *(this + 1);
          *(this + 1) = v52;
          *(this + 2) = v43;
          *(this + 3) = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *v42 = 0;
          v43 = v42 + 4;
        }

        *(this + 2) = v43;
        v54 = *(a2 + 1);
        if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(a2 + 2))
        {
LABEL_68:
          *(a2 + 24) = 1;
          goto LABEL_71;
        }

        *(v43 - 1) = *(*a2 + v54);
        goto LABEL_70;
      }

      if (PB::Reader::placeMark())
      {
LABEL_77:
        v55 = 0;
        return v55 & 1;
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
          v30 = (v26 - v28) >> 2;
          v31 = v30 + 1;
          if ((v30 + 1) >> 62)
          {
            goto LABEL_79;
          }

          v32 = v25 - v28;
          if (v32 >> 1 > v31)
          {
            v31 = v32 >> 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v33 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_25AD288E8(v33);
          }

          v34 = (v26 - v28) >> 2;
          v35 = (4 * v30);
          v36 = (4 * v30 - 4 * v34);
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
          v27 = v26 + 4;
        }

        *(this + 2) = v27;
        v38 = *(a2 + 1);
        if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(a2 + 2))
        {
          *(a2 + 24) = 1;
          break;
        }

        *(v27 - 1) = *(*a2 + v38);
        v24 = *(a2 + 2);
        v23 = *(a2 + 1) + 4;
        *(a2 + 1) = v23;
      }

      PB::Reader::recallMark();
LABEL_71:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_75;
      }
    }

    if (v22 == 3)
    {
      *(this + 48) |= 2u;
      v40 = *(a2 + 1);
      if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(a2 + 2))
      {
        goto LABEL_68;
      }

      *(this + 11) = *(*a2 + v40);
      goto LABEL_70;
    }

    if (v22 == 4)
    {
      *(this + 48) |= 1u;
      v39 = *(a2 + 1);
      if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(a2 + 2))
      {
        goto LABEL_68;
      }

      *(this + 10) = *(*a2 + v39);
LABEL_70:
      *(a2 + 1) += 4;
      goto LABEL_71;
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_71;
  }

LABEL_75:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t CMMsl::PencilDeviceMotion::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
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

  v8 = *(v3 + 48);
  if ((v8 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 44));
    v8 = *(v3 + 48);
  }

  if (v8)
  {
    v9 = *(v3 + 40);

    return PB::Writer::write(a2, v9);
  }

  return this;
}

uint64_t CMMsl::PencilDeviceMotion::hash_value(CMMsl::PencilDeviceMotion *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = CMMsl::AuxiliaryDeviceMotion::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = PBHashBytes();
  if ((*(this + 48) & 2) != 0)
  {
    v8 = *(this + 11);
    v5 = LODWORD(v8);
    if (v8 == 0.0)
    {
      v5 = 0;
    }

    if (*(this + 48))
    {
      goto LABEL_6;
    }

LABEL_12:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v7;
  }

  v5 = 0;
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = *(this + 10);
  v7 = LODWORD(v6);
  if (v6 == 0.0)
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v7;
}

void *CMMsl::PencilDeviceMotion::makeSuper(void *this)
{
  if (!this[4])
  {
    operator new();
  }

  return this;
}

void CMMsl::PencilFusionDMYawAlignmentUpdate::~PencilFusionDMYawAlignmentUpdate(CMMsl::PencilFusionDMYawAlignmentUpdate *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PencilFusionDMYawAlignmentUpdate::PencilFusionDMYawAlignmentUpdate(uint64_t this, const CMMsl::PencilFusionDMYawAlignmentUpdate *a2)
{
  *this = &unk_286C228E8;
  *(this + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 6);
    v3 = 32;
    *(this + 64) = 32;
    *(this + 48) = v4;
    v2 = *(a2 + 64);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 64) & 4) != 0)
  {
LABEL_5:
    v5 = *(a2 + 3);
    v3 |= 4u;
    *(this + 64) = v3;
    *(this + 24) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 4);
    v3 |= 8u;
    *(this + 64) = v3;
    *(this + 32) = v6;
    v2 = *(a2 + 64);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 14);
  v3 |= 0x40u;
  *(this + 64) = v3;
  *(this + 56) = v7;
  v2 = *(a2 + 64);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 64) = v3;
  *(this + 40) = v8;
  v2 = *(a2 + 64);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = *(a2 + 1);
  v3 |= 1u;
  *(this + 64) = v3;
  *(this + 8) = v9;
  v2 = *(a2 + 64);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      return this;
    }

LABEL_18:
    v11 = *(a2 + 15);
    *(this + 64) = v3 | 0x80;
    *(this + 60) = v11;
    return this;
  }

LABEL_17:
  v10 = *(a2 + 2);
  v3 |= 2u;
  *(this + 64) = v3;
  *(this + 16) = v10;
  if ((*(a2 + 64) & 0x80) != 0)
  {
    goto LABEL_18;
  }

  return this;
}

uint64_t CMMsl::PencilFusionDMYawAlignmentUpdate::operator=(uint64_t a1, const CMMsl::PencilFusionDMYawAlignmentUpdate *a2)
{
  if (a1 != a2)
  {
    CMMsl::PencilFusionDMYawAlignmentUpdate::PencilFusionDMYawAlignmentUpdate(v10, a2);
    v3 = v11;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v11 = v5;
    v12 = v4;
    *&v5 = v15;
    v6 = *(a1 + 48);
    *&v4 = *(a1 + 56);
    *(a1 + 48) = v14;
    *(a1 + 56) = v5;
    v7 = *(a1 + 64);
    *(a1 + 64) = v16;
    v16 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    v14 = v6;
    v15 = v4;
    PB::Base::~Base(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PencilFusionDMYawAlignmentUpdate *a2, CMMsl::PencilFusionDMYawAlignmentUpdate *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v7 = *(this + 14);
  *(this + 14) = *(a2 + 14);
  *(a2 + 14) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v9;
  v10 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v10;
  LODWORD(v10) = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v10;
  return result;
}

double CMMsl::PencilFusionDMYawAlignmentUpdate::PencilFusionDMYawAlignmentUpdate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C228E8;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 60) = *(a2 + 60);
  return result;
}

{
  *a1 = &unk_286C228E8;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 60) = *(a2 + 60);
  return result;
}

uint64_t CMMsl::PencilFusionDMYawAlignmentUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_286C228E8;
    v3 = *(a2 + 64);
    *(a2 + 64) = 0;
    v4 = *(a2 + 40);
    v17 = *(a1 + 64);
    v5 = *(a1 + 24);
    v6 = *(a2 + 48);
    v7 = *(a2 + 56);
    *(a1 + 24) = *(a2 + 24);
    v14 = *(a1 + 40);
    v8 = *(a1 + 8);
    v9 = *(a2 + 8);
    *(a1 + 40) = v4;
    *(a1 + 8) = v9;
    v12 = v8;
    v13 = v5;
    *&v8 = *(a1 + 48);
    *&v9 = *(a1 + 56);
    *(a1 + 64) = v3;
    *(a1 + 48) = v6;
    *(a1 + 56) = v7;
    v15 = v8;
    v16 = v9;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::PencilFusionDMYawAlignmentUpdate::formatText(CMMsl::PencilFusionDMYawAlignmentUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 64);
  if (v5)
  {
    PB::TextFormatter::format(a2, "firstRingSensorTimeStampMicroSeconds");
    v5 = *(this + 64);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "lastRingSensorTimeStampMicroSeconds");
  v5 = *(this + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "medianBufferNumSamples");
  v5 = *(this + 64);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "medianNorthAlignmentEstimateRad", *(this + 3));
  v5 = *(this + 64);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "newNorthAlignmentEstimateRad", *(this + 4));
  v5 = *(this + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "numRingSensorSamples");
  v5 = *(this + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "timeElapsedSinceLastUpdateMicroSeconds");
  if ((*(this + 64) & 0x20) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(a2, "timestamp", *(this + 6));
  }

LABEL_10:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PencilFusionDMYawAlignmentUpdate::readFrom(CMMsl::PencilFusionDMYawAlignmentUpdate *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 64) |= 2u;
          v55 = *(a2 + 1);
          v2 = *(a2 + 2);
          v56 = *a2;
          if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v59 = 0;
            if (v2 <= v55)
            {
              v2 = *(a2 + 1);
            }

            v72 = (v56 + v55);
            v73 = v2 - v55;
            v74 = v55 + 1;
            while (1)
            {
              if (!v73)
              {
                v59 = 0;
                *(a2 + 24) = 1;
                goto LABEL_132;
              }

              v75 = v74;
              v76 = *v72;
              *(a2 + 1) = v75;
              v59 |= (v76 & 0x7F) << v70;
              if ((v76 & 0x80) == 0)
              {
                break;
              }

              v70 += 7;
              ++v72;
              --v73;
              v74 = v75 + 1;
              v14 = v71++ > 8;
              if (v14)
              {
                v59 = 0;
                goto LABEL_131;
              }
            }

            if (*(a2 + 24))
            {
              v59 = 0;
            }

LABEL_131:
            v2 = v75;
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
              v2 = v61;
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
                v59 = 0;
                break;
              }
            }
          }

LABEL_132:
          *(this + 2) = v59;
          goto LABEL_19;
        }

        if (v22 == 8)
        {
          *(this + 64) |= 0x80u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v91 = 0;
            v92 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v93 = (v40 + v39);
            v94 = v2 - v39;
            v95 = v39 + 1;
            while (1)
            {
              if (!v94)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_144;
              }

              v96 = v95;
              v97 = *v93;
              *(a2 + 1) = v96;
              v43 |= (v97 & 0x7F) << v91;
              if ((v97 & 0x80) == 0)
              {
                break;
              }

              v91 += 7;
              ++v93;
              --v94;
              v95 = v96 + 1;
              v14 = v92++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_143;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_143:
            v2 = v96;
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

LABEL_144:
          *(this + 15) = v43;
          goto LABEL_19;
        }
      }

      else
      {
        if (v22 == 5)
        {
          *(this + 64) |= 0x10u;
          v47 = *(a2 + 1);
          v2 = *(a2 + 2);
          v48 = *a2;
          if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v51 = 0;
            if (v2 <= v47)
            {
              v2 = *(a2 + 1);
            }

            v65 = (v48 + v47);
            v66 = v2 - v47;
            v67 = v47 + 1;
            while (1)
            {
              if (!v66)
              {
                v51 = 0;
                *(a2 + 24) = 1;
                goto LABEL_128;
              }

              v68 = v67;
              v69 = *v65;
              *(a2 + 1) = v68;
              v51 |= (v69 & 0x7F) << v63;
              if ((v69 & 0x80) == 0)
              {
                break;
              }

              v63 += 7;
              ++v65;
              --v66;
              v67 = v68 + 1;
              v14 = v64++ > 8;
              if (v14)
              {
                v51 = 0;
                goto LABEL_127;
              }
            }

            if (*(a2 + 24))
            {
              v51 = 0;
            }

LABEL_127:
            v2 = v68;
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
                v51 = 0;
                break;
              }
            }
          }

LABEL_128:
          *(this + 5) = v51;
          goto LABEL_19;
        }

        if (v22 == 6)
        {
          *(this + 64) |= 1u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v79 = (v24 + v23);
            v80 = v2 - v23;
            v81 = v23 + 1;
            while (1)
            {
              if (!v80)
              {
                v27 = 0;
                *(a2 + 24) = 1;
                goto LABEL_136;
              }

              v82 = v81;
              v83 = *v79;
              *(a2 + 1) = v82;
              v27 |= (v83 & 0x7F) << v77;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              ++v79;
              --v80;
              v81 = v82 + 1;
              v14 = v78++ > 8;
              if (v14)
              {
                v27 = 0;
                goto LABEL_135;
              }
            }

            if (*(a2 + 24))
            {
              v27 = 0;
            }

LABEL_135:
            v2 = v82;
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
                v27 = 0;
                break;
              }
            }
          }

LABEL_136:
          *(this + 1) = v27;
          goto LABEL_19;
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 64) |= 8u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_70:
          *(a2 + 24) = 1;
          goto LABEL_19;
        }

        *(this + 4) = *(*a2 + v2);
        goto LABEL_119;
      }

      if (v22 == 4)
      {
        *(this + 64) |= 0x40u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v84 = 0;
          v85 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v2 = *(a2 + 1);
          }

          v86 = (v32 + v31);
          v87 = v2 - v31;
          v88 = v31 + 1;
          while (1)
          {
            if (!v87)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_140;
            }

            v89 = v88;
            v90 = *v86;
            *(a2 + 1) = v89;
            v35 |= (v90 & 0x7F) << v84;
            if ((v90 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            ++v86;
            --v87;
            v88 = v89 + 1;
            v14 = v85++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_139;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_139:
          v2 = v89;
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

LABEL_140:
        *(this + 14) = v35;
        goto LABEL_19;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 64) |= 0x20u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_70;
        }

        *(this + 6) = *(*a2 + v2);
        goto LABEL_119;
      }

      if (v22 == 2)
      {
        *(this + 64) |= 4u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_70;
        }

        *(this + 3) = *(*a2 + v2);
LABEL_119:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_19;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v98 = 0;
      return v98 & 1;
    }

    v2 = *(a2 + 1);
LABEL_19:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v98 = v4 ^ 1;
  return v98 & 1;
}

uint64_t CMMsl::PencilFusionDMYawAlignmentUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 48));
    v4 = *(v3 + 64);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(this + 64) & 4) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 64) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 64);
  if ((v4 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::PencilFusionDMYawAlignmentUpdate::hash_value(CMMsl::PencilFusionDMYawAlignmentUpdate *this)
{
  if ((*(this + 64) & 0x20) == 0)
  {
    v1 = 0.0;
    if ((*(this + 64) & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_17:
    v2 = 0.0;
    if ((*(this + 64) & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_18:
    v3 = 0.0;
    if ((*(this + 64) & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

  v1 = *(this + 6);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 64) & 4) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v2 = *(this + 3);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 64) & 8) == 0)
  {
    goto LABEL_18;
  }

LABEL_6:
  v3 = *(this + 4);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 64) & 0x40) != 0)
  {
LABEL_9:
    v4 = *(this + 14);
    if ((*(this + 64) & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
  if ((*(this + 64) & 0x10) != 0)
  {
LABEL_10:
    v5 = *(this + 5);
    if (*(this + 64))
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if (*(this + 64))
  {
LABEL_11:
    v6 = *(this + 1);
    if ((*(this + 64) & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_22:
    v7 = 0;
    if ((*(this + 64) & 0x80) != 0)
    {
      goto LABEL_13;
    }

LABEL_23:
    v8 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_21:
  v6 = 0;
  if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_22;
  }

LABEL_12:
  v7 = *(this + 2);
  if ((*(this + 64) & 0x80) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v8 = *(this + 15);
  return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

void CMMsl::PencilFusionReplayResult::~PencilFusionReplayResult(CMMsl::PencilFusionReplayResult *this)
{
  *this = &unk_286C22920;
  v2 = *(this + 6);
  *(this + 6) = 0;
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
  CMMsl::PencilFusionReplayResult::~PencilFusionReplayResult(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PencilFusionReplayResult *CMMsl::PencilFusionReplayResult::PencilFusionReplayResult(CMMsl::PencilFusionReplayResult *this, const CMMsl::PencilFusionReplayResult *a2)
{
  *(this + 1) = 0;
  *this = &unk_286C22920;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 16) = 0;
  if (*(a2 + 6))
  {
    operator new();
  }

  if ((*(a2 + 64) & 4) != 0)
  {
    v4 = *(a2 + 7);
    *(this + 64) |= 4u;
    *(this + 7) = v4;
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    v6 = *(a2 + 4);
    *(this + 64) |= 1u;
    *(this + 4) = v6;
    v5 = *(a2 + 64);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 5);
    *(this + 64) |= 2u;
    *(this + 5) = v7;
  }

  return this;
}

uint64_t CMMsl::PencilFusionReplayResult::operator=(uint64_t a1, const CMMsl::PencilFusionReplayResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::PencilFusionReplayResult::PencilFusionReplayResult(v11, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v3;
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = v16;
    *(a1 + 48) = v15;
    *(a1 + 56) = v6;
    v15 = v4;
    v16 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v8;
    v9 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v9;
    CMMsl::PencilFusionReplayResult::~PencilFusionReplayResult(v11);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PencilFusionReplayResult *a2, CMMsl::PencilFusionReplayResult *a3)
{
  v3 = *(this + 64);
  *(this + 64) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 48);
  v5 = *(this + 56);
  v6 = *(a2 + 7);
  *(this + 48) = *(a2 + 6);
  *(this + 56) = v6;
  *(a2 + 6) = v4;
  *(a2 + 7) = v5;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 24);
  v10 = *(this + 32);
  v11 = *(a2 + 4);
  *(this + 24) = *(a2 + 3);
  *(this + 32) = v11;
  *(a2 + 3) = v9;
  *(a2 + 4) = v10;
  v12 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v12;
  return this;
}

uint64_t CMMsl::PencilFusionReplayResult::PencilFusionReplayResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22920;
  *(a1 + 8) = 0;
  v4 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(a1 + 56) = *(a2 + 56);
  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t CMMsl::PencilFusionReplayResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PencilFusionReplayResult::PencilFusionReplayResult(v11, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v17;
    v17 = v3;
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = v16;
    *(a1 + 48) = v15;
    *(a1 + 56) = v6;
    v15 = v4;
    v16 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v8;
    v9 = *(a1 + 32);
    *(a1 + 32) = v14;
    v14 = v9;
    CMMsl::PencilFusionReplayResult::~PencilFusionReplayResult(v11);
  }

  return a1;
}

uint64_t CMMsl::PencilFusionReplayResult::formatText(CMMsl::PencilFusionReplayResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 64);
  if (v5)
  {
    PB::TextFormatter::format(a2, "lastAuxTimeStampMicroSeconds");
    v5 = *(this + 64);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "lastRingSensorTimeStampMicroSeconds");
  }

  v6 = *(this + 1);
  v7 = *(this + 2);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(a2, "qSP", v8);
  }

  v9 = *(this + 6);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "super");
  }

  if ((*(this + 64) & 4) != 0)
  {
    PB::TextFormatter::format(a2, "timeStampMicroSeconds");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PencilFusionReplayResult::readFrom(CMMsl::PencilFusionReplayResult *this, PB::Reader *a2)
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
            goto LABEL_21;
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
        goto LABEL_125;
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
        goto LABEL_125;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v22 != 3)
      {
        if (v22 == 4)
        {
          *(this + 64) |= 1u;
          v58 = *(a2 + 1);
          v57 = *(a2 + 2);
          v59 = *a2;
          if (v58 > 0xFFFFFFFFFFFFFFF5 || v58 + 10 > v57)
          {
            v66 = 0;
            v67 = 0;
            v62 = 0;
            v68 = (v59 + v58);
            v18 = v57 >= v58;
            v69 = v57 - v58;
            if (!v18)
            {
              v69 = 0;
            }

            v70 = v58 + 1;
            while (1)
            {
              if (!v69)
              {
                v62 = 0;
                *(a2 + 24) = 1;
                goto LABEL_110;
              }

              v71 = *v68;
              *(a2 + 1) = v70;
              v62 |= (v71 & 0x7F) << v66;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              ++v68;
              --v69;
              ++v70;
              v14 = v67++ > 8;
              if (v14)
              {
LABEL_78:
                v62 = 0;
                goto LABEL_110;
              }
            }

            if (*(a2 + 24))
            {
              v62 = 0;
            }
          }

          else
          {
            v60 = 0;
            v61 = 0;
            v62 = 0;
            v63 = (v59 + v58);
            v64 = v58 + 1;
            while (1)
            {
              *(a2 + 1) = v64;
              v65 = *v63++;
              v62 |= (v65 & 0x7F) << v60;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              ++v64;
              v14 = v61++ > 8;
              if (v14)
              {
                goto LABEL_78;
              }
            }
          }

LABEL_110:
          *(this + 4) = v62;
          goto LABEL_18;
        }

        if (v22 == 5)
        {
          *(this + 64) |= 2u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v75 = 0;
            v76 = 0;
            v28 = 0;
            v77 = (v25 + v24);
            v18 = v23 >= v24;
            v78 = v23 - v24;
            if (!v18)
            {
              v78 = 0;
            }

            v79 = v24 + 1;
            while (1)
            {
              if (!v78)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_113;
              }

              v80 = *v77;
              *(a2 + 1) = v79;
              v28 |= (v80 & 0x7F) << v75;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              ++v77;
              --v78;
              ++v79;
              v14 = v76++ > 8;
              if (v14)
              {
LABEL_88:
                v28 = 0;
                goto LABEL_113;
              }
            }

            if (*(a2 + 24))
            {
              v28 = 0;
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
                goto LABEL_88;
              }
            }
          }

LABEL_113:
          *(this + 5) = v28;
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      if ((v10 & 7) == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_127:
          v98 = 0;
          return v98 & 1;
        }

        v41 = *(a2 + 1);
        v42 = *(a2 + 2);
        while (v41 < v42 && (*(a2 + 24) & 1) == 0)
        {
          v44 = *(this + 2);
          v43 = *(this + 3);
          if (v44 >= v43)
          {
            v46 = *(this + 1);
            v47 = v44 - v46;
            v48 = (v44 - v46) >> 3;
            v49 = v48 + 1;
            if ((v48 + 1) >> 61)
            {
              goto LABEL_129;
            }

            v50 = v43 - v46;
            if (v50 >> 2 > v49)
            {
              v49 = v50 >> 2;
            }

            if (v50 >= 0x7FFFFFFFFFFFFFF8)
            {
              v51 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v49;
            }

            if (v51)
            {
              sub_25AD28710(v51);
            }

            v52 = (v44 - v46) >> 3;
            v53 = (8 * v48);
            v54 = (8 * v48 - 8 * v52);
            *v53 = 0;
            v45 = v53 + 1;
            memcpy(v54, v46, v47);
            v55 = *(this + 1);
            *(this + 1) = v54;
            *(this + 2) = v45;
            *(this + 3) = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          else
          {
            *v44 = 0;
            v45 = v44 + 8;
          }

          *(this + 2) = v45;
          v56 = *(a2 + 1);
          if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
          {
            *(a2 + 24) = 1;
            break;
          }

          *(v45 - 1) = *(*a2 + v56);
          v42 = *(a2 + 2);
          v41 = *(a2 + 1) + 8;
          *(a2 + 1) = v41;
        }

        PB::Reader::recallMark();
      }

      else
      {
        v73 = *(this + 2);
        v72 = *(this + 3);
        if (v73 >= v72)
        {
          v87 = *(this + 1);
          v88 = v73 - v87;
          v89 = (v73 - v87) >> 3;
          v90 = v89 + 1;
          if ((v89 + 1) >> 61)
          {
LABEL_129:
            sub_25AAE66B8();
          }

          v91 = v72 - v87;
          if (v91 >> 2 > v90)
          {
            v90 = v91 >> 2;
          }

          if (v91 >= 0x7FFFFFFFFFFFFFF8)
          {
            v92 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v92 = v90;
          }

          if (v92)
          {
            sub_25AD28710(v92);
          }

          v93 = (v73 - v87) >> 3;
          v94 = (8 * v89);
          v95 = (8 * v89 - 8 * v93);
          *v94 = 0;
          v74 = v94 + 1;
          memcpy(v95, v87, v88);
          v96 = *(this + 1);
          *(this + 1) = v95;
          *(this + 2) = v74;
          *(this + 3) = 0;
          if (v96)
          {
            operator delete(v96);
          }
        }

        else
        {
          *v73 = 0;
          v74 = v73 + 8;
        }

        *(this + 2) = v74;
        v97 = *(a2 + 1);
        if (v97 <= 0xFFFFFFFFFFFFFFF7 && v97 + 8 <= *(a2 + 2))
        {
          *(v74 - 1) = *(*a2 + v97);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_125;
      }
    }

    if (v22 == 1)
    {
      operator new();
    }

    if (v22 == 2)
    {
      *(this + 64) |= 4u;
      v33 = *(a2 + 1);
      v32 = *(a2 + 2);
      v34 = *a2;
      if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
      {
        v81 = 0;
        v82 = 0;
        v37 = 0;
        v83 = (v34 + v33);
        v18 = v32 >= v33;
        v84 = v32 - v33;
        if (!v18)
        {
          v84 = 0;
        }

        v85 = v33 + 1;
        while (1)
        {
          if (!v84)
          {
            v37 = 0;
            *(a2 + 24) = 1;
            goto LABEL_116;
          }

          v86 = *v83;
          *(a2 + 1) = v85;
          v37 |= (v86 & 0x7F) << v81;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          ++v83;
          --v84;
          ++v85;
          v14 = v82++ > 8;
          if (v14)
          {
LABEL_96:
            v37 = 0;
            goto LABEL_116;
          }
        }

        if (*(a2 + 24))
        {
          v37 = 0;
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
            goto LABEL_96;
          }
        }
      }

LABEL_116:
      *(this + 7) = v37;
      goto LABEL_18;
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_18;
  }

LABEL_125:
  v98 = v4 ^ 1;
  return v98 & 1;
}

uint64_t CMMsl::PencilFusionReplayResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if ((*(v3 + 64) & 4) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::write(a2, v7);
  }

  v8 = *(v3 + 64);
  if (v8)
  {
    this = PB::Writer::writeVarInt(a2);
    v8 = *(v3 + 64);
  }

  if ((v8 & 2) != 0)
  {

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::PencilFusionReplayResult::hash_value(CMMsl::PencilFusionReplayResult *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = CMMsl::PencilFusionResult::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  if ((*(this + 64) & 4) != 0)
  {
    v4 = *(this + 7);
  }

  else
  {
    v4 = 0;
  }

  v5 = PBHashBytes();
  if (*(this + 64))
  {
    v6 = *(this + 4);
    if ((*(this + 64) & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v7 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v5;
  }

  v6 = 0;
  if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v7 = *(this + 5);
  return v4 ^ v3 ^ v6 ^ v7 ^ v5;
}

void *CMMsl::PencilFusionReplayResult::makeSuper(void *this)
{
  if (!this[6])
  {
    operator new();
  }

  return this;
}

void CMMsl::PencilFusionResult::~PencilFusionResult(CMMsl::PencilFusionResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PencilFusionResult::PencilFusionResult(uint64_t this, const CMMsl::PencilFusionResult *a2)
{
  *this = &unk_286C22958;
  *(this + 76) = 0;
  v2 = *(a2 + 38);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 5);
    v3 = 16;
    *(this + 76) = 16;
    *(this + 40) = v4;
    v2 = *(a2 + 38);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x20) != 0)
  {
LABEL_5:
    v5 = *(a2 + 6);
    v3 |= 0x20u;
    *(this + 76) = v3;
    *(this + 48) = v5;
    v2 = *(a2 + 38);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 7);
    v3 |= 0x40u;
    *(this + 76) = v3;
    *(this + 56) = v6;
    v2 = *(a2 + 38);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 0x80u;
  *(this + 76) = v3;
  *(this + 64) = v7;
  v2 = *(a2 + 38);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 1);
  v3 |= 1u;
  *(this + 76) = v3;
  *(this + 8) = v8;
  v2 = *(a2 + 38);
  if ((v2 & 2) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 2);
  v3 |= 2u;
  *(this + 76) = v3;
  *(this + 16) = v9;
  v2 = *(a2 + 38);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 4);
  v3 |= 8u;
  *(this + 76) = v3;
  *(this + 32) = v10;
  v2 = *(a2 + 38);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      return this;
    }

LABEL_20:
    v12 = *(a2 + 72);
    *(this + 76) = v3 | 0x100;
    *(this + 72) = v12;
    return this;
  }

LABEL_19:
  v11 = *(a2 + 3);
  v3 |= 4u;
  *(this + 76) = v3;
  *(this + 24) = v11;
  if ((*(a2 + 38) & 0x100) != 0)
  {
    goto LABEL_20;
  }

  return this;
}

uint64_t CMMsl::PencilFusionResult::operator=(uint64_t a1, const CMMsl::PencilFusionResult *a2)
{
  if (a1 != a2)
  {
    CMMsl::PencilFusionResult::PencilFusionResult(&v11, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v16;
    v16 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v4;
    v5 = v15;
    v7 = *(a1 + 32);
    v6 = *(a1 + 48);
    *(a1 + 32) = v14;
    *(a1 + 48) = v5;
    v8 = *(a1 + 76);
    *(a1 + 76) = v18;
    v18 = v8;
    v14 = v7;
    v15 = v6;
    v9 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v9;
    LOBYTE(v9) = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v9;
    PB::Base::~Base(&v11);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PencilFusionResult *a2, CMMsl::PencilFusionResult *a3)
{
  v3 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v3;
  v4 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v9;
  result = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = result;
  v11 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  LOBYTE(v11) = *(this + 72);
  *(this + 72) = *(a2 + 72);
  *(a2 + 72) = v11;
  return result;
}

double CMMsl::PencilFusionResult::PencilFusionResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22958;
  *(a1 + 76) = *(a2 + 76);
  *(a2 + 76) = 0;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 72) = *(a2 + 72);
  return result;
}

uint64_t CMMsl::PencilFusionResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PencilFusionResult::PencilFusionResult(&v11, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v16;
    v16 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v4;
    v5 = v15;
    v7 = *(a1 + 32);
    v6 = *(a1 + 48);
    *(a1 + 32) = v14;
    *(a1 + 48) = v5;
    v8 = *(a1 + 76);
    *(a1 + 76) = v18;
    v18 = v8;
    v14 = v7;
    v15 = v6;
    v9 = *(a1 + 24);
    *(a1 + 24) = v13;
    v13 = v9;
    LOBYTE(v9) = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v9;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::PencilFusionResult::formatText(CMMsl::PencilFusionResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 38);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitudeAngle", *(this + 1));
    v5 = *(this + 38);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
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

  PB::TextFormatter::format(a2, "azimuthAngle", *(this + 2));
  v5 = *(this + 38);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(a2, "estimated");
  v5 = *(this + 38);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(a2, "estimationUpdateIndex");
  v5 = *(this + 38);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "rollAngle", *(this + 4));
  v5 = *(this + 38);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "timestamp", *(this + 5));
  v5 = *(this + 38);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "x", *(this + 6));
  v5 = *(this + 38);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "y", *(this + 7));
  if ((*(this + 38) & 0x80) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(a2, "z", *(this + 8));
  }

LABEL_11:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PencilFusionResult::readFrom(CMMsl::PencilFusionResult *this, PB::Reader *a2)
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
          *(this + 38) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_54:
            *(a2 + 24) = 1;
            goto LABEL_79;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_73;
        }

        if (v22 == 4)
        {
          *(this + 38) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_73;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(this + 38) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_73;
        }

        if (v22 == 2)
        {
          *(this + 38) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_73;
        }
      }
    }

    else if (v22 <= 6)
    {
      if (v22 == 5)
      {
        *(this + 38) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_73;
      }

      if (v22 == 6)
      {
        *(this + 38) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_54;
        }

        *(this + 2) = *(*a2 + v2);
        goto LABEL_73;
      }
    }

    else
    {
      switch(v22)
      {
        case 7:
          *(this + 38) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_54;
          }

          *(this + 4) = *(*a2 + v2);
LABEL_73:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_79;
        case 8:
          *(this + 38) |= 4u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(a2 + 1);
            }

            v35 = (v26 + v25);
            v36 = v2 - v25;
            v37 = v25 + 1;
            while (1)
            {
              if (!v36)
              {
                v29 = 0;
                *(a2 + 24) = 1;
                goto LABEL_78;
              }

              v38 = v37;
              v39 = *v35;
              *(a2 + 1) = v38;
              v29 |= (v39 & 0x7F) << v33;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v35;
              --v36;
              v37 = v38 + 1;
              v14 = v34++ > 8;
              if (v14)
              {
                v29 = 0;
                goto LABEL_77;
              }
            }

            if (*(a2 + 24))
            {
              v29 = 0;
            }

LABEL_77:
            v2 = v38;
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

LABEL_78:
          *(this + 3) = v29;
          goto LABEL_79;
        case 9:
          *(this + 38) |= 0x100u;
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

          *(this + 72) = v24;
          goto LABEL_79;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v40 = 0;
      return v40 & 1;
    }

    v2 = *(a2 + 1);
LABEL_79:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t CMMsl::PencilFusionResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 76);
  if ((v4 & 0x10) != 0)
  {
    this = PB::Writer::write(a2, *(this + 40));
    v4 = *(v3 + 76);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 76);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 76);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 76);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 76);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 76) & 0x100) == 0)
    {
      return this;
    }

    goto LABEL_19;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 76);
  if ((v4 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x100) == 0)
  {
    return this;
  }

LABEL_19:

  return PB::Writer::write(a2);
}

uint64_t CMMsl::PencilFusionResult::hash_value(CMMsl::PencilFusionResult *this)
{
  v1 = *(this + 38);
  if ((v1 & 0x10) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    v3 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_27:
    v4 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_28:
    v5 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_29:
    v6 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v7 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_18;
    }

LABEL_31:
    v8 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_21;
    }

LABEL_32:
    v9 = 0;
    if ((*(this + 38) & 0x100) != 0)
    {
      goto LABEL_22;
    }

LABEL_33:
    v10 = 0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ v9 ^ v10;
  }

  v2 = *(this + 5);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v3 = *(this + 6);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v4 = *(this + 7);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  v5 = *(this + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_12:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v7 = *(this + 2);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  v8 = *(this + 4);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  v9 = *(this + 3);
  if ((*(this + 38) & 0x100) == 0)
  {
    goto LABEL_33;
  }

LABEL_22:
  v10 = *(this + 72);
  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ v9 ^ v10;
}

void CMMsl::PencilFusionRingSensorTrustModelUpdate::~PencilFusionRingSensorTrustModelUpdate(CMMsl::PencilFusionRingSensorTrustModelUpdate *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PencilFusionRingSensorTrustModelUpdate::PencilFusionRingSensorTrustModelUpdate(CMMsl::PencilFusionRingSensorTrustModelUpdate *this, const CMMsl::PencilFusionRingSensorTrustModelUpdate *a2)
{
  *this = &unk_286C22990;
  *(this + 6) = 0;
  *(this + 8) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 = 2;
    *(this + 32) = 2;
    *(this + 2) = result;
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
    v5 = *(a2 + 28);
    v3 |= 8u;
    *(this + 32) = v3;
    *(this + 28) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 1);
    *(this + 32) = v3 | 1;
    *(this + 1) = result;
    return result;
  }

  v6 = *(a2 + 6);
  v3 |= 4u;
  *(this + 32) = v3;
  *(this + 6) = v6;
  if (*(a2 + 32))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t CMMsl::PencilFusionRingSensorTrustModelUpdate::operator=(uint64_t a1, const CMMsl::PencilFusionRingSensorTrustModelUpdate *a2)
{
  if (a1 != a2)
  {
    CMMsl::PencilFusionRingSensorTrustModelUpdate::PencilFusionRingSensorTrustModelUpdate(v7, a2);
    v3 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v3;
    LOBYTE(v3) = *(a1 + 28);
    *(a1 + 28) = v10;
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

double CMMsl::swap(CMMsl *this, CMMsl::PencilFusionRingSensorTrustModelUpdate *a2, CMMsl::PencilFusionRingSensorTrustModelUpdate *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v4;
  LOBYTE(v3) = *(this + 28);
  *(this + 28) = *(a2 + 28);
  *(a2 + 28) = v3;
  v5 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v5;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double CMMsl::PencilFusionRingSensorTrustModelUpdate::PencilFusionRingSensorTrustModelUpdate(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22990;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_286C22990;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t CMMsl::PencilFusionRingSensorTrustModelUpdate::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v11 = &unk_286C22990;
    v3 = *(a2 + 32);
    *(a2 + 32) = 0;
    v4 = *(a2 + 28);
    v5 = *(a2 + 24);
    v15 = *(a1 + 32);
    v6 = *(a1 + 28);
    *(a1 + 28) = v4;
    v14 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v7;
    v8 = *(a1 + 8);
    v9 = *(a2 + 8);
    *(a1 + 32) = v3;
    *(a1 + 8) = v9;
    v12 = v8;
    PB::Base::~Base(&v11);
  }

  return a1;
}

uint64_t CMMsl::PencilFusionRingSensorTrustModelUpdate::formatText(CMMsl::PencilFusionRingSensorTrustModelUpdate *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 32);
  if (v5)
  {
    PB::TextFormatter::format(a2, "avgRelOmegaRps", *(this + 1));
    v5 = *(this + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(this + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "ringSensorTrustModelMode");
  v5 = *(this + 32);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(a2, "timestamp", *(this + 2));
  if ((*(this + 32) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(a2, "trustPencilRingSensorBool");
  }

LABEL_6:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PencilFusionRingSensorTrustModelUpdate::readFrom(CMMsl::PencilFusionRingSensorTrustModelUpdate *this, PB::Reader *a2)
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
        *(this + 32) |= 4u;
        v25 = *(a2 + 1);
        v2 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
        {
          v33 = 0;
          v34 = 0;
          v29 = 0;
          if (v2 <= v25)
          {
            v2 = *(a2 + 1);
          }

          v35 = (v26 + v25);
          v36 = v2 - v25;
          v37 = v25 + 1;
          while (1)
          {
            if (!v36)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_56;
            }

            v38 = v37;
            v39 = *v35;
            *(a2 + 1) = v38;
            v29 |= (v39 & 0x7F) << v33;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            v37 = v38 + 1;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v29) = 0;
              goto LABEL_55;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v29) = 0;
          }

LABEL_55:
          v2 = v38;
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
              LODWORD(v29) = 0;
              break;
            }
          }
        }

LABEL_56:
        *(this + 6) = v29;
        goto LABEL_57;
      }

      if (v22 == 4)
      {
        *(this + 32) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
LABEL_32:
          *(a2 + 24) = 1;
          goto LABEL_57;
        }

        *(this + 1) = *(*a2 + v2);
        goto LABEL_51;
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 32) |= 2u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_32;
        }

        *(this + 2) = *(*a2 + v2);
LABEL_51:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_57;
      }

      if (v22 == 2)
      {
        *(this + 32) |= 8u;
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

        *(this + 28) = v24;
        goto LABEL_57;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v40 = 0;
      return v40 & 1;
    }

    v2 = *(a2 + 1);
LABEL_57:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t CMMsl::PencilFusionRingSensorTrustModelUpdate::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(this + 16));
    v4 = *(v3 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = PB::Writer::writeVarInt(a2);
      if ((*(v3 + 32) & 1) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((*(this + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return this;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PencilFusionRingSensorTrustModelUpdate::hash_value(CMMsl::PencilFusionRingSensorTrustModelUpdate *this)
{
  if ((*(this + 32) & 2) != 0)
  {
    v1 = *(this + 2);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 32) & 8) != 0)
    {
LABEL_3:
      v2 = *(this + 28);
      if ((*(this + 32) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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
    v3 = *(this + 6);
    if (*(this + 32))
    {
      goto LABEL_5;
    }

LABEL_13:
    v4 = 0.0;
    return v2 ^ *&v1 ^ v3 ^ *&v4;
  }

LABEL_12:
  v3 = 0;
  if ((*(this + 32) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_5:
  v4 = *(this + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return v2 ^ *&v1 ^ v3 ^ *&v4;
}

void CMMsl::PencilTipForce::~PencilTipForce(CMMsl::PencilTipForce *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PencilTipForce::PencilTipForce(CMMsl::PencilTipForce *this, const CMMsl::PencilTipForce *a2)
{
  *this = &unk_286C229C8;
  *(this + 6) = 0;
  if (*(a2 + 24))
  {
    result = *(a2 + 1);
    *(this + 24) = 1;
    *(this + 1) = result;
    v2 = 3;
    if ((*(a2 + 24) & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    result = *(a2 + 2);
    *(this + 24) = v2;
    *(this + 2) = result;
  }

  return result;
}

uint64_t CMMsl::PencilTipForce::operator=(uint64_t a1, const CMMsl::PencilTipForce *a2)
{
  if (a1 != a2)
  {
    CMMsl::PencilTipForce::PencilTipForce(&v6, a2);
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

double CMMsl::swap(CMMsl *this, CMMsl::PencilTipForce *a2, CMMsl::PencilTipForce *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

double CMMsl::PencilTipForce::PencilTipForce(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C229C8;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

{
  *a1 = &unk_286C229C8;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t CMMsl::PencilTipForce::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C229C8;
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

uint64_t CMMsl::PencilTipForce::formatText(CMMsl::PencilTipForce *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 24);
  if (v5)
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 1));
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(a2, "tipForce", *(this + 2));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PencilTipForce::readFrom(CMMsl::PencilTipForce *this, PB::Reader *a2)
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
        *(this + 24) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 1) = *(*a2 + v2);
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

    *(this + 24) |= 2u;
    v2 = *(a2 + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
    {
LABEL_28:
      *(a2 + 24) = 1;
      goto LABEL_31;
    }

    *(this + 2) = *(*a2 + v2);
    goto LABEL_30;
  }

LABEL_35:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t CMMsl::PencilTipForce::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::write(a2, *(this + 8));
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(a2, v5);
  }

  return this;
}

uint64_t CMMsl::PencilTipForce::hash_value(CMMsl::PencilTipForce *this)
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
      goto LABEL_3;
    }

LABEL_9:
    v2 = 0.0;
    return *&v2 ^ *&v1;
  }

  v1 = 0.0;
  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v2 = *(this + 2);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return *&v2 ^ *&v1;
}

void CMMsl::PencilTouch::~PencilTouch(CMMsl::PencilTouch *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PencilTouch::PencilTouch(CMMsl::PencilTouch *this, const CMMsl::PencilTouch *a2)
{
  *this = &unk_286C22A00;
  *(this + 22) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 6);
    v3 = 32;
    *(this + 44) = 32;
    *(this + 6) = result;
    v2 = *(a2 + 44);
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40) != 0)
  {
LABEL_5:
    result = *(a2 + 7);
    v3 |= 0x40u;
    *(this + 44) = v3;
    *(this + 7) = result;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 0x80) != 0)
  {
    result = *(a2 + 8);
    v3 |= 0x80u;
    *(this + 44) = v3;
    *(this + 8) = result;
    v2 = *(a2 + 44);
    if ((v2 & 0x100) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else if ((v2 & 0x100) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 9);
  v3 |= 0x100u;
  *(this + 44) = v3;
  *(this + 9) = result;
  v2 = *(a2 + 44);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 44) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 44);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 44) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 44);
  if ((v2 & 0x400) == 0)
  {
LABEL_11:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = *(a2 + 21);
  v3 |= 0x400u;
  *(this + 44) = v3;
  *(this + 21) = v5;
  v2 = *(a2 + 44);
  if ((v2 & 0x200) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = *(a2 + 20);
  v3 |= 0x200u;
  *(this + 44) = v3;
  *(this + 20) = v6;
  v2 = *(a2 + 44);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 2);
  v3 |= 2u;
  *(this + 44) = v3;
  *(this + 2) = result;
  v2 = *(a2 + 44);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 5);
    *(this + 44) = v3 | 0x10;
    *(this + 5) = result;
    return result;
  }

LABEL_23:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 4) = result;
  if ((*(a2 + 44) & 0x10) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::PencilTouch::operator=(CMMsl *a1, const CMMsl::PencilTouch *a2)
{
  if (a1 != a2)
  {
    CMMsl::PencilTouch::PencilTouch(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PencilTouch *a2, CMMsl::PencilTouch *a3)
{
  v3 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v7;
  v8 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v10;
  v11 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v11;
  v12 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v12;
  v13 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v13;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  return result;
}

double CMMsl::PencilTouch::PencilTouch(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22A00;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

CMMsl *CMMsl::PencilTouch::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::PencilTouch::PencilTouch(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::PencilTouch::formatText(CMMsl::PencilTouch *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "altitudeAngle", *(this + 1));
    v5 = *(this + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "altitudeAngleConfidence", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "azimuthAngle", *(this + 3));
  v5 = *(this + 44);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "azimuthAngleConfidence", *(this + 4));
  v5 = *(this + 44);
  if ((v5 & 0x200) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "pathFlags");
  v5 = *(this + 44);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "pathStage");
  v5 = *(this + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "positionConfidence", *(this + 5));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "timestamp", *(this + 6));
  v5 = *(this + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "x", *(this + 7));
  v5 = *(this + 44);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "y", *(this + 8));
  if ((*(this + 44) & 0x100) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "z", *(this + 9));
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PencilTouch::readFrom(CMMsl::PencilTouch *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 44) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_74:
            *(a2 + 24) = 1;
            goto LABEL_103;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_92;
        }

        if (v22 == 2)
        {
          *(this + 44) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_92;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 44) |= 0x80u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 8) = *(*a2 + v2);
            goto LABEL_92;
          case 4:
            *(this + 44) |= 0x100u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 9) = *(*a2 + v2);
            goto LABEL_92;
          case 5:
            *(this + 44) |= 1u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_74;
            }

            *(this + 1) = *(*a2 + v2);
            goto LABEL_92;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 2) = *(*a2 + v2);
          goto LABEL_92;
        case 0xA:
          *(this + 44) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_92;
        case 0xB:
          *(this + 44) |= 0x10u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 5) = *(*a2 + v2);
          goto LABEL_92;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_74;
          }

          *(this + 3) = *(*a2 + v2);
LABEL_92:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_103;
        case 7:
          *(this + 44) |= 0x400u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v39 = 0;
            v40 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v41 = (v32 + v31);
            v42 = v2 - v31;
            v43 = v31 + 1;
            while (1)
            {
              if (!v42)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_98;
              }

              v44 = v43;
              v45 = *v41;
              *(a2 + 1) = v44;
              v35 |= (v45 & 0x7F) << v39;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              ++v41;
              --v42;
              v43 = v44 + 1;
              v14 = v40++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_97;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_97:
            v2 = v44;
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

LABEL_98:
          *(this + 21) = v35;
          goto LABEL_103;
        case 8:
          *(this + 44) |= 0x200u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v48 = (v24 + v23);
            v49 = v2 - v23;
            v50 = v23 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_102;
              }

              v51 = v50;
              v52 = *v48;
              *(a2 + 1) = v51;
              v27 |= (v52 & 0x7F) << v46;
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
                LODWORD(v27) = 0;
                goto LABEL_101;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_101:
            v2 = v51;
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

LABEL_102:
          *(this + 20) = v27;
          goto LABEL_103;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v53 = 0;
      return v53 & 1;
    }

    v2 = *(a2 + 1);
LABEL_103:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t CMMsl::PencilTouch::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 88);
  if ((v4 & 0x20) != 0)
  {
    this = PB::Writer::write(a2, *(this + 48));
    v4 = *(v3 + 88);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 56));
  v4 = *(v3 + 88);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 88);
  if ((v4 & 0x100) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 72));
  v4 = *(v3 + 88);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 88);
  if ((v4 & 0x400) == 0)
  {
LABEL_8:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 88);
  if ((v4 & 0x200) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 88);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 32));
    if ((*(v3 + 88) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 88);
  if ((v4 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x10) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 40);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PencilTouch::hash_value(CMMsl::PencilTouch *this)
{
  v1 = *(this + 44);
  if ((v1 & 0x20) == 0)
  {
    v2 = 0.0;
    if ((v1 & 0x40) != 0)
    {
      goto LABEL_3;
    }

LABEL_32:
    v3 = 0.0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_6;
    }

LABEL_33:
    v4 = 0.0;
    if ((*(this + 44) & 0x100) != 0)
    {
      goto LABEL_9;
    }

LABEL_34:
    v5 = 0.0;
    if (v1)
    {
      goto LABEL_12;
    }

LABEL_35:
    v6 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_15;
    }

LABEL_36:
    v7 = 0.0;
    if ((*(this + 44) & 0x400) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

  v2 = *(this + 6);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((v1 & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_3:
  v3 = *(this + 7);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 0x80) == 0)
  {
    goto LABEL_33;
  }

LABEL_6:
  v4 = *(this + 8);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((*(this + 44) & 0x100) == 0)
  {
    goto LABEL_34;
  }

LABEL_9:
  v5 = *(this + 9);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_12:
  v6 = *(this + 1);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_36;
  }

LABEL_15:
  v7 = *(this + 3);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((*(this + 44) & 0x400) != 0)
  {
LABEL_18:
    v8 = *(this + 21);
    if ((*(this + 44) & 0x200) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

LABEL_37:
  v8 = 0;
  if ((*(this + 44) & 0x200) != 0)
  {
LABEL_19:
    v9 = *(this + 20);
    if ((v1 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_39:
    v10 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_38:
  v9 = 0;
  if ((v1 & 2) == 0)
  {
    goto LABEL_39;
  }

LABEL_20:
  v10 = *(this + 2);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((v1 & 8) != 0)
  {
LABEL_23:
    v11 = *(this + 4);
    if (v11 == 0.0)
    {
      v11 = 0.0;
    }

    if ((v1 & 0x10) != 0)
    {
      goto LABEL_26;
    }

LABEL_41:
    v12 = 0.0;
    return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ *&v10 ^ *&v11 ^ *&v12;
  }

LABEL_40:
  v11 = 0.0;
  if ((v1 & 0x10) == 0)
  {
    goto LABEL_41;
  }

LABEL_26:
  v12 = *(this + 5);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  return *&v3 ^ *&v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ v8 ^ v9 ^ *&v10 ^ *&v11 ^ *&v12;
}

void CMMsl::PhysicalEffortInput::~PhysicalEffortInput(CMMsl::PhysicalEffortInput *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PhysicalEffortInput::PhysicalEffortInput(uint64_t this, const CMMsl::PhysicalEffortInput *a2)
{
  *this = &unk_286C22A38;
  *(this + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 1);
    v3 = 1;
    *(this + 28) = 1;
    *(this + 8) = v4;
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
    v5 = *(a2 + 2);
    v3 |= 2u;
    *(this + 28) = v3;
    *(this + 16) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 6);
    *(this + 28) = v3 | 4;
    *(this + 24) = v6;
  }

  return this;
}

uint64_t CMMsl::PhysicalEffortInput::operator=(uint64_t a1, const CMMsl::PhysicalEffortInput *a2)
{
  if (a1 != a2)
  {
    CMMsl::PhysicalEffortInput::PhysicalEffortInput(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    *&v3 = *(a1 + 24);
    *(a1 + 24) = v7;
    v7 = v3;
    PB::Base::~Base(&v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PhysicalEffortInput *a2, CMMsl::PhysicalEffortInput *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  v6 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v6;
  return result;
}

double CMMsl::PhysicalEffortInput::PhysicalEffortInput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22A38;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

{
  *a1 = &unk_286C22A38;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 24) = *(a2 + 24);
  return result;
}

uint64_t CMMsl::PhysicalEffortInput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_286C22A38;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    *(a2 + 28) = 0;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v8 = v5;
    *&v3 = *(a1 + 24);
    *(a1 + 24) = v4;
    v9 = v3;
    PB::Base::~Base(&v7);
  }

  return a1;
}

uint64_t CMMsl::PhysicalEffortInput::formatText(CMMsl::PhysicalEffortInput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(a2, "activityType");
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

  PB::TextFormatter::format(a2, "sampleTime", *(this + 1));
  if ((*(this + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(a2, "wrMets", *(this + 2));
  }

LABEL_5:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PhysicalEffortInput::readFrom(CMMsl::PhysicalEffortInput *this, PB::Reader *a2)
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
        goto LABEL_51;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v2 = *(a2 + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
        {
          goto LABEL_28;
        }

        *(this + 1) = *(*a2 + v2);
LABEL_45:
        v2 = *(a2 + 1) + 8;
        *(a2 + 1) = v2;
        goto LABEL_51;
      }

LABEL_17:
      if (!PB::Reader::skip(a2))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(a2 + 1);
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
LABEL_28:
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

uint64_t CMMsl::PhysicalEffortInput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 28);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 16));
    if ((*(v3 + 28) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = PB::Writer::write(a2, *(this + 8));
  v4 = *(v3 + 28);
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

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::PhysicalEffortInput::hash_value(CMMsl::PhysicalEffortInput *this)
{
  if (*(this + 28))
  {
    v1 = *(this + 1);
    if (v1 == 0.0)
    {
      v1 = 0.0;
    }

    if ((*(this + 28) & 2) != 0)
    {
LABEL_3:
      v2 = *(this + 2);
      if (v2 == 0.0)
      {
        v2 = 0.0;
      }

      if ((*(this + 28) & 4) != 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      v3 = 0;
      return *&v2 ^ *&v1 ^ v3;
    }
  }

  else
  {
    v1 = 0.0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v2 = 0.0;
  if ((*(this + 28) & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v3 = *(this + 6);
  return *&v2 ^ *&v1 ^ v3;
}

void CMMsl::PhysicalEffortSample::~PhysicalEffortSample(CMMsl::PhysicalEffortSample *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

uint64_t CMMsl::PhysicalEffortSample::PhysicalEffortSample(uint64_t this, const CMMsl::PhysicalEffortSample *a2)
{
  *this = &unk_286C22A70;
  *(this + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 3);
    v3 = 4;
    *(this + 44) = 4;
    *(this + 24) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 44))
  {
LABEL_5:
    v5 = *(a2 + 1);
    v3 |= 1u;
    *(this + 44) = v3;
    *(this + 8) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 2);
    v3 |= 2u;
    *(this + 44) = v3;
    *(this + 16) = v6;
    v2 = *(a2 + 44);
    if ((v2 & 8) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 8u;
  *(this + 44) = v3;
  *(this + 32) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return this;
    }

LABEL_14:
    v9 = *(a2 + 10);
    *(this + 44) = v3 | 0x20;
    *(this + 40) = v9;
    return this;
  }

LABEL_13:
  v8 = *(a2 + 9);
  v3 |= 0x10u;
  *(this + 44) = v3;
  *(this + 36) = v8;
  if ((*(a2 + 44) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return this;
}

uint64_t CMMsl::PhysicalEffortSample::operator=(uint64_t a1, const CMMsl::PhysicalEffortSample *a2)
{
  if (a1 != a2)
  {
    CMMsl::PhysicalEffortSample::PhysicalEffortSample(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 32);
    *(a1 + 32) = v10;
    v10 = v5;
    PB::Base::~Base(&v7);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PhysicalEffortSample *a2, CMMsl::PhysicalEffortSample *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
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
  v8 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v9;
  return result;
}

double CMMsl::PhysicalEffortSample::PhysicalEffortSample(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22A70;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return result;
}

{
  *a1 = &unk_286C22A70;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  *(a1 + 16) = result;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  return result;
}

uint64_t CMMsl::PhysicalEffortSample::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_286C22A70;
    v3 = *(a2 + 24);
    v4 = *(a2 + 8);
    v5 = *(a2 + 32);
    *(a2 + 44) = 0;
    v11 = *(a1 + 24);
    v6 = *(a1 + 8);
    *(a1 + 24) = v3;
    *(a1 + 8) = v4;
    v10 = v6;
    v7 = *(a1 + 32);
    *(a1 + 32) = v5;
    v12 = v7;
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t CMMsl::PhysicalEffortSample::formatText(CMMsl::PhysicalEffortSample *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(a2, "activityType");
    v5 = *(this + 44);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "algorithmVersion");
  v5 = *(this + 44);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(a2, "endDate", *(this + 1));
  v5 = *(this + 44);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(a2, "mets", *(this + 2));
  v5 = *(this + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PB::TextFormatter::format(a2, "sampleStopReason");
  if ((*(this + 44) & 4) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(a2, "startDate", *(this + 3));
  }

LABEL_8:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PhysicalEffortSample::readFrom(CMMsl::PhysicalEffortSample *this, PB::Reader *a2)
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
          *(this + 44) |= 8u;
          v31 = *(a2 + 1);
          v2 = *(a2 + 2);
          v32 = *a2;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v47 = 0;
            v48 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(a2 + 1);
            }

            v49 = (v32 + v31);
            v50 = v2 - v31;
            v51 = v31 + 1;
            while (1)
            {
              if (!v50)
              {
                LODWORD(v35) = 0;
                *(a2 + 24) = 1;
                goto LABEL_89;
              }

              v52 = v51;
              v53 = *v49;
              *(a2 + 1) = v52;
              v35 |= (v53 & 0x7F) << v47;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v47 += 7;
              ++v49;
              --v50;
              v51 = v52 + 1;
              v14 = v48++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_88;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_88:
            v2 = v52;
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

LABEL_89:
          *(this + 8) = v35;
          goto LABEL_98;
        case 5:
          *(this + 44) |= 0x10u;
          v39 = *(a2 + 1);
          v2 = *(a2 + 2);
          v40 = *a2;
          if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
          {
            v61 = 0;
            v62 = 0;
            v43 = 0;
            if (v2 <= v39)
            {
              v2 = *(a2 + 1);
            }

            v63 = (v40 + v39);
            v64 = v2 - v39;
            v65 = v39 + 1;
            while (1)
            {
              if (!v64)
              {
                LODWORD(v43) = 0;
                *(a2 + 24) = 1;
                goto LABEL_97;
              }

              v66 = v65;
              v67 = *v63;
              *(a2 + 1) = v66;
              v43 |= (v67 & 0x7F) << v61;
              if ((v67 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              ++v63;
              --v64;
              v65 = v66 + 1;
              v14 = v62++ > 8;
              if (v14)
              {
                LODWORD(v43) = 0;
                goto LABEL_96;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v43) = 0;
            }

LABEL_96:
            v2 = v66;
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

LABEL_97:
          *(this + 9) = v43;
          goto LABEL_98;
        case 6:
          *(this + 44) |= 0x20u;
          v23 = *(a2 + 1);
          v2 = *(a2 + 2);
          v24 = *a2;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v54 = 0;
            v55 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(a2 + 1);
            }

            v56 = (v24 + v23);
            v57 = v2 - v23;
            v58 = v23 + 1;
            while (1)
            {
              if (!v57)
              {
                LODWORD(v27) = 0;
                *(a2 + 24) = 1;
                goto LABEL_93;
              }

              v59 = v58;
              v60 = *v56;
              *(a2 + 1) = v59;
              v27 |= (v60 & 0x7F) << v54;
              if ((v60 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              ++v56;
              --v57;
              v58 = v59 + 1;
              v14 = v55++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_92;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_92:
            v2 = v59;
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

LABEL_93:
          *(this + 10) = v27;
          goto LABEL_98;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          *(this + 44) |= 4u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_49:
            *(a2 + 24) = 1;
            goto LABEL_98;
          }

          *(this + 3) = *(*a2 + v2);
          goto LABEL_82;
        case 2:
          *(this + 44) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_49;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_82;
        case 3:
          *(this + 44) |= 2u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_49;
          }

          *(this + 2) = *(*a2 + v2);
LABEL_82:
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
          goto LABEL_98;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v68 = 0;
      return v68 & 1;
    }

    v2 = *(a2 + 1);
LABEL_98:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t CMMsl::PhysicalEffortSample::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 44);
  if ((v4 & 4) != 0)
  {
    this = PB::Writer::write(a2, *(this + 24));
    v4 = *(v3 + 44);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:

  return PB::Writer::writeVarInt(a2);
}

uint64_t CMMsl::PhysicalEffortSample::hash_value(CMMsl::PhysicalEffortSample *this)
{
  if ((*(this + 44) & 4) == 0)
  {
    v1 = 0.0;
    if (*(this + 44))
    {
      goto LABEL_3;
    }

LABEL_15:
    v2 = 0.0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_16:
    v3 = 0.0;
    if ((*(this + 44) & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  v1 = *(this + 3);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = *(this + 1);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  if ((*(this + 44) & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  v3 = *(this + 2);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((*(this + 44) & 8) != 0)
  {
LABEL_9:
    v4 = *(this + 8);
    if ((*(this + 44) & 0x10) != 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    v5 = 0;
    if ((*(this + 44) & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v6 = 0;
    return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5 ^ v6;
  }

LABEL_17:
  v4 = 0;
  if ((*(this + 44) & 0x10) == 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  v5 = *(this + 9);
  if ((*(this + 44) & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v6 = *(this + 10);
  return *&v2 ^ *&v1 ^ *&v3 ^ v4 ^ v5 ^ v6;
}

void CMMsl::PocketDetectionPacket::~PocketDetectionPacket(CMMsl::PocketDetectionPacket *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x25F8548F0);
}

double CMMsl::PocketDetectionPacket::PocketDetectionPacket(CMMsl::PocketDetectionPacket *this, const CMMsl::PocketDetectionPacket *a2)
{
  *this = &unk_286C22AA8;
  *(this + 21) = 0;
  v2 = *(a2 + 42);
  if ((v2 & 0x200) != 0)
  {
    v4 = *(a2 + 19);
    v3 = 512;
    *(this + 42) = 512;
    *(this + 19) = v4;
    v2 = *(a2 + 42);
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x80) != 0)
  {
LABEL_5:
    result = *(a2 + 8);
    v3 |= 0x80u;
    *(this + 42) = v3;
    *(this + 8) = result;
    v2 = *(a2 + 42);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 2);
    v3 |= 2u;
    *(this + 42) = v3;
    *(this + 2) = result;
    v2 = *(a2 + 42);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
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

  result = *(a2 + 3);
  v3 |= 4u;
  *(this + 42) = v3;
  *(this + 3) = result;
  v2 = *(a2 + 42);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = *(a2 + 5);
  v3 |= 0x10u;
  *(this + 42) = v3;
  *(this + 5) = result;
  v2 = *(a2 + 42);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = *(a2 + 4);
  v3 |= 8u;
  *(this + 42) = v3;
  *(this + 4) = result;
  v2 = *(a2 + 42);
  if ((v2 & 1) == 0)
  {
LABEL_11:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = *(a2 + 1);
  v3 |= 1u;
  *(this + 42) = v3;
  *(this + 1) = result;
  v2 = *(a2 + 42);
  if ((v2 & 0x400) == 0)
  {
LABEL_12:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = *(a2 + 80);
  v3 |= 0x400u;
  *(this + 42) = v3;
  *(this + 80) = v6;
  v2 = *(a2 + 42);
  if ((v2 & 0x20) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = *(a2 + 6);
  v3 |= 0x20u;
  *(this + 42) = v3;
  *(this + 6) = result;
  v2 = *(a2 + 42);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 7);
    *(this + 42) = v3 | 0x40;
    *(this + 7) = result;
    return result;
  }

LABEL_23:
  LODWORD(result) = *(a2 + 18);
  v3 |= 0x100u;
  *(this + 42) = v3;
  *(this + 18) = LODWORD(result);
  if ((*(a2 + 42) & 0x40) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

CMMsl *CMMsl::PocketDetectionPacket::operator=(CMMsl *a1, const CMMsl::PocketDetectionPacket *a2)
{
  if (a1 != a2)
  {
    CMMsl::PocketDetectionPacket::PocketDetectionPacket(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::PocketDetectionPacket *a2, CMMsl::PocketDetectionPacket *a3)
{
  v3 = *(this + 21);
  *(this + 21) = *(a2 + 21);
  *(a2 + 21) = v3;
  v4 = *(this + 19);
  *(this + 19) = *(a2 + 19);
  *(a2 + 19) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v10;
  LOBYTE(v4) = *(this + 80);
  *(this + 80) = *(a2 + 80);
  *(a2 + 80) = v4;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  LODWORD(v11) = *(this + 18);
  *(this + 18) = *(a2 + 18);
  *(a2 + 18) = v11;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
  return result;
}

double CMMsl::PocketDetectionPacket::PocketDetectionPacket(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22AA8;
  *(a1 + 84) = *(a2 + 84);
  *(a2 + 84) = 0;
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 72) = *(a2 + 72);
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

CMMsl *CMMsl::PocketDetectionPacket::operator=(CMMsl *a1, CMMsl *a2)
{
  if (a1 != a2)
  {
    CMMsl::PocketDetectionPacket::PocketDetectionPacket(v5, a2);
    CMMsl::swap(a1, v5, v3);
    PB::Base::~Base(v5);
  }

  return a1;
}

uint64_t CMMsl::PocketDetectionPacket::formatText(CMMsl::PocketDetectionPacket *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 42);
  if (v5)
  {
    PB::TextFormatter::format(a2, "ambient", *(this + 1));
    v5 = *(this + 42);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((*(this + 42) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(a2, "baselineAccuracy", *(this + 18));
  v5 = *(this + 42);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(a2, "flags", *(this + 2));
  v5 = *(this + 42);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(a2, "header");
  v5 = *(this + 42);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(a2, "intensity", *(this + 3));
  v5 = *(this + 42);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(a2, "intensityBaselineDelta", *(this + 4));
  v5 = *(this + 42);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "intensityCalDelta", *(this + 5));
  v5 = *(this + 42);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(a2, "pocketFlag");
  v5 = *(this + 42);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(a2, "pocketProbability", *(this + 6));
  v5 = *(this + 42);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(a2, "temperature", *(this + 7));
  if ((*(this + 42) & 0x80) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(a2, "ts", *(this + 8));
  }

LABEL_13:

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PocketDetectionPacket::readFrom(CMMsl::PocketDetectionPacket *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(this + 42) |= 0x200u;
          v25 = *(a2 + 1);
          v2 = *(a2 + 2);
          v26 = *a2;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(a2 + 1);
            }

            v35 = (v26 + v25);
            v36 = v2 - v25;
            v37 = v25 + 1;
            while (1)
            {
              if (!v36)
              {
                LODWORD(v29) = 0;
                *(a2 + 24) = 1;
                goto LABEL_87;
              }

              v38 = v37;
              v39 = *v35;
              *(a2 + 1) = v38;
              v29 |= (v39 & 0x7F) << v33;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              ++v35;
              --v36;
              v37 = v38 + 1;
              v14 = v34++ > 8;
              if (v14)
              {
                LODWORD(v29) = 0;
                goto LABEL_86;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_86:
            v2 = v38;
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
                LODWORD(v29) = 0;
                break;
              }
            }
          }

LABEL_87:
          *(this + 19) = v29;
          goto LABEL_88;
        }

        if (v22 == 2)
        {
          *(this + 42) |= 0x80u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
LABEL_69:
            *(a2 + 24) = 1;
            goto LABEL_88;
          }

          *(this + 8) = *(*a2 + v2);
          goto LABEL_81;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(this + 42) |= 2u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_69;
            }

            *(this + 2) = *(*a2 + v2);
            goto LABEL_81;
          case 4:
            *(this + 42) |= 4u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_69;
            }

            *(this + 3) = *(*a2 + v2);
            goto LABEL_81;
          case 5:
            *(this + 42) |= 0x10u;
            v2 = *(a2 + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
            {
              goto LABEL_69;
            }

            *(this + 5) = *(*a2 + v2);
LABEL_81:
            v2 = *(a2 + 1) + 8;
LABEL_82:
            *(a2 + 1) = v2;
            goto LABEL_88;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 42) |= 0x20u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_69;
          }

          *(this + 6) = *(*a2 + v2);
          goto LABEL_81;
        case 0xA:
          *(this + 42) |= 0x100u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(a2 + 2))
          {
            goto LABEL_69;
          }

          *(this + 18) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          goto LABEL_82;
        case 0xB:
          *(this + 42) |= 0x40u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_69;
          }

          *(this + 7) = *(*a2 + v2);
          goto LABEL_81;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 42) |= 8u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_69;
          }

          *(this + 4) = *(*a2 + v2);
          goto LABEL_81;
        case 7:
          *(this + 42) |= 1u;
          v2 = *(a2 + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(a2 + 2))
          {
            goto LABEL_69;
          }

          *(this + 1) = *(*a2 + v2);
          goto LABEL_81;
        case 8:
          *(this + 42) |= 0x400u;
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

          *(this + 80) = v24;
          goto LABEL_88;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v40 = 0;
      return v40 & 1;
    }

    v2 = *(a2 + 1);
LABEL_88:
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t CMMsl::PocketDetectionPacket::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 84);
  if ((v4 & 0x200) != 0)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 84);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  this = PB::Writer::write(a2, *(v3 + 64));
  v4 = *(v3 + 84);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  this = PB::Writer::write(a2, *(v3 + 16));
  v4 = *(v3 + 84);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = PB::Writer::write(a2, *(v3 + 24));
  v4 = *(v3 + 84);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = PB::Writer::write(a2, *(v3 + 40));
  v4 = *(v3 + 84);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  this = PB::Writer::write(a2, *(v3 + 32));
  v4 = *(v3 + 84);
  if ((v4 & 1) == 0)
  {
LABEL_8:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 84);
  if ((v4 & 0x400) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  this = PB::Writer::write(a2);
  v4 = *(v3 + 84);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    this = PB::Writer::write(a2, *(v3 + 72));
    if ((*(v3 + 84) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  this = PB::Writer::write(a2, *(v3 + 48));
  v4 = *(v3 + 84);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    return this;
  }

LABEL_23:
  v5 = *(v3 + 56);

  return PB::Writer::write(a2, v5);
}

uint64_t CMMsl::PocketDetectionPacket::hash_value(CMMsl::PocketDetectionPacket *this)
{
  v1 = *(this + 42);
  if ((v1 & 0x200) == 0)
  {
    v2 = 0;
    if ((v1 & 0x80) != 0)
    {
      goto LABEL_3;
    }

LABEL_32:
    v3 = 0.0;
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_33:
    v4 = 0.0;
    if ((v1 & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_34:
    v5 = 0.0;
    if ((v1 & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_35:
    v6 = 0.0;
    if ((v1 & 8) != 0)
    {
      goto LABEL_15;
    }

LABEL_36:
    v7 = 0.0;
    if (v1)
    {
      goto LABEL_18;
    }

LABEL_37:
    v8 = 0.0;
    if ((*(this + 42) & 0x400) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  v2 = *(this + 19);
  if ((v1 & 0x80) == 0)
  {
    goto LABEL_32;
  }

LABEL_3:
  v3 = *(this + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  if ((v1 & 2) == 0)
  {
    goto LABEL_33;
  }

LABEL_6:
  v4 = *(this + 2);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  if ((v1 & 4) == 0)
  {
    goto LABEL_34;
  }

LABEL_9:
  v5 = *(this + 3);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  if ((v1 & 0x10) == 0)
  {
    goto LABEL_35;
  }

LABEL_12:
  v6 = *(this + 5);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  if ((v1 & 8) == 0)
  {
    goto LABEL_36;
  }

LABEL_15:
  v7 = *(this + 4);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  if ((v1 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_18:
  v8 = *(this + 1);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  if ((*(this + 42) & 0x400) != 0)
  {
LABEL_21:
    v9 = *(this + 80);
    if ((v1 & 0x20) != 0)
    {
      goto LABEL_22;
    }

LABEL_39:
    v10 = 0.0;
    if ((*(this + 42) & 0x100) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_40;
  }

LABEL_38:
  v9 = 0;
  if ((v1 & 0x20) == 0)
  {
    goto LABEL_39;
  }

LABEL_22:
  v10 = *(this + 6);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((*(this + 42) & 0x100) != 0)
  {
LABEL_25:
    v11 = *(this + 18);
    v12 = LODWORD(v11);
    if (v11 == 0.0)
    {
      v12 = 0;
    }

    if ((v1 & 0x40) != 0)
    {
      goto LABEL_28;
    }

LABEL_41:
    v13 = 0.0;
    return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ v9 ^ *&v10 ^ v12 ^ *&v13;
  }

LABEL_40:
  v12 = 0;
  if ((v1 & 0x40) == 0)
  {
    goto LABEL_41;
  }

LABEL_28:
  v13 = *(this + 7);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  return *&v3 ^ v2 ^ *&v4 ^ *&v5 ^ *&v6 ^ *&v7 ^ *&v8 ^ v9 ^ *&v10 ^ v12 ^ *&v13;
}

void CMMsl::Pose::~Pose(CMMsl::Pose *this)
{
  *this = &unk_286C22AE0;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
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
  CMMsl::Pose::~Pose(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::Pose *CMMsl::Pose::Pose(CMMsl::Pose *this, const CMMsl::Pose *a2)
{
  *this = &unk_286C22AE0;
  *(this + 8) = 0u;
  v4 = (this + 8);
  *(this + 16) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 64))
  {
    v5 = *(a2 + 7);
    *(this + 64) = 1;
    *(this + 7) = v5;
  }

  if (this != a2)
  {
    sub_25AD285D4(v4, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    sub_25AD285D4(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 3);
  }

  return this;
}

uint64_t CMMsl::Pose::operator=(uint64_t a1, const CMMsl::Pose *a2)
{
  if (a1 != a2)
  {
    CMMsl::Pose::Pose(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::Pose::~Pose(v10);
  }

  return a1;
}

double CMMsl::swap(CMMsl *this, CMMsl::Pose *a2, CMMsl::Pose *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 16);
  *(a2 + 16) = v3;
  result = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = result;
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
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  return result;
}

uint64_t CMMsl::Pose::Pose(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22AE0;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a1 + 56) = *(a2 + 56);
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  return a1;
}

uint64_t CMMsl::Pose::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::Pose::Pose(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v4;
    v5 = v12;
    v6 = *(a1 + 8);
    *(a1 + 8) = v11;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v11 = v6;
    v12 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    CMMsl::Pose::~Pose(v10);
  }

  return a1;
}

uint64_t CMMsl::Pose::formatText(CMMsl::Pose *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "attitude", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "position", v10);
  }

  if (*(this + 64))
  {
    PB::TextFormatter::format(a2, "timestamp", *(this + 7));
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::Pose::readFrom(CMMsl::Pose *this, PB::Reader *a2)
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
        goto LABEL_103;
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
        goto LABEL_103;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_105;
          }

          v25 = *(a2 + 1);
          v26 = *(a2 + 2);
          while (v25 < v26 && (*(a2 + 24) & 1) == 0)
          {
            v28 = *(this + 2);
            v27 = *(this + 3);
            if (v28 >= v27)
            {
              v30 = *(this + 1);
              v31 = v28 - v30;
              v32 = (v28 - v30) >> 3;
              v33 = v32 + 1;
              if ((v32 + 1) >> 61)
              {
                goto LABEL_107;
              }

              v34 = v27 - v30;
              if (v34 >> 2 > v33)
              {
                v33 = v34 >> 2;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF8)
              {
                v35 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v33;
              }

              if (v35)
              {
                sub_25AD28710(v35);
              }

              v36 = (v28 - v30) >> 3;
              v37 = (8 * v32);
              v38 = (8 * v32 - 8 * v36);
              *v37 = 0;
              v29 = v37 + 1;
              memcpy(v38, v30, v31);
              v39 = *(this + 1);
              *(this + 1) = v38;
              *(this + 2) = v29;
              *(this + 3) = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v28 = 0;
              v29 = v28 + 8;
            }

            *(this + 2) = v29;
            v40 = *(a2 + 1);
            if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(a2 + 2))
            {
              goto LABEL_70;
            }

            *(v29 - 1) = *(*a2 + v40);
            v26 = *(a2 + 2);
            v25 = *(a2 + 1) + 8;
            *(a2 + 1) = v25;
          }

LABEL_71:
          PB::Reader::recallMark();
          goto LABEL_99;
        }

        v58 = *(this + 2);
        v57 = *(this + 3);
        if (v58 >= v57)
        {
          v62 = *(this + 1);
          v63 = v58 - v62;
          v64 = (v58 - v62) >> 3;
          v65 = v64 + 1;
          if ((v64 + 1) >> 61)
          {
            goto LABEL_107;
          }

          v66 = v57 - v62;
          if (v66 >> 2 > v65)
          {
            v65 = v66 >> 2;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFF8)
          {
            v67 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            sub_25AD28710(v67);
          }

          v74 = (v58 - v62) >> 3;
          v75 = (8 * v64);
          v76 = (8 * v64 - 8 * v74);
          *v75 = 0;
          v59 = v75 + 1;
          memcpy(v76, v62, v63);
          v77 = *(this + 1);
          *(this + 1) = v76;
          *(this + 2) = v59;
          *(this + 3) = 0;
          if (v77)
          {
            operator delete(v77);
          }
        }

        else
        {
          *v58 = 0;
          v59 = v58 + 8;
        }

        *(this + 2) = v59;
LABEL_94:
        v82 = *(a2 + 1);
        if (v82 > 0xFFFFFFFFFFFFFFF7 || v82 + 8 > *(a2 + 2))
        {
          goto LABEL_96;
        }

        *(v59 - 1) = *(*a2 + v82);
        goto LABEL_98;
      }

      if (v23 != 1)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_105;
        }

        goto LABEL_99;
      }

      *(this + 64) |= 1u;
      v24 = *(a2 + 1);
      if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
      {
LABEL_96:
        *(a2 + 24) = 1;
        goto LABEL_99;
      }

      *(this + 7) = *(*a2 + v24);
LABEL_98:
      *(a2 + 1) += 8;
LABEL_99:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_103;
      }
    }

    if (v22 == 2)
    {
      if (PB::Reader::placeMark())
      {
LABEL_105:
        v83 = 0;
        return v83 & 1;
      }

      v41 = *(a2 + 1);
      v42 = *(a2 + 2);
      while (v41 < v42 && (*(a2 + 24) & 1) == 0)
      {
        v44 = *(this + 5);
        v43 = *(this + 6);
        if (v44 >= v43)
        {
          v46 = *(this + 4);
          v47 = v44 - v46;
          v48 = (v44 - v46) >> 3;
          v49 = v48 + 1;
          if ((v48 + 1) >> 61)
          {
            goto LABEL_107;
          }

          v50 = v43 - v46;
          if (v50 >> 2 > v49)
          {
            v49 = v50 >> 2;
          }

          if (v50 >= 0x7FFFFFFFFFFFFFF8)
          {
            v51 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v49;
          }

          if (v51)
          {
            sub_25AD28710(v51);
          }

          v52 = (v44 - v46) >> 3;
          v53 = (8 * v48);
          v54 = (8 * v48 - 8 * v52);
          *v53 = 0;
          v45 = v53 + 1;
          memcpy(v54, v46, v47);
          v55 = *(this + 4);
          *(this + 4) = v54;
          *(this + 5) = v45;
          *(this + 6) = 0;
          if (v55)
          {
            operator delete(v55);
          }
        }

        else
        {
          *v44 = 0;
          v45 = v44 + 8;
        }

        *(this + 5) = v45;
        v56 = *(a2 + 1);
        if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(a2 + 2))
        {
LABEL_70:
          *(a2 + 24) = 1;
          goto LABEL_71;
        }

        *(v45 - 1) = *(*a2 + v56);
        v42 = *(a2 + 2);
        v41 = *(a2 + 1) + 8;
        *(a2 + 1) = v41;
      }

      goto LABEL_71;
    }

    v61 = *(this + 5);
    v60 = *(this + 6);
    if (v61 >= v60)
    {
      v68 = *(this + 4);
      v69 = v61 - v68;
      v70 = (v61 - v68) >> 3;
      v71 = v70 + 1;
      if ((v70 + 1) >> 61)
      {
LABEL_107:
        sub_25AAE66B8();
      }

      v72 = v60 - v68;
      if (v72 >> 2 > v71)
      {
        v71 = v72 >> 2;
      }

      if (v72 >= 0x7FFFFFFFFFFFFFF8)
      {
        v73 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v73 = v71;
      }

      if (v73)
      {
        sub_25AD28710(v73);
      }

      v78 = (v61 - v68) >> 3;
      v79 = (8 * v70);
      v80 = (8 * v70 - 8 * v78);
      *v79 = 0;
      v59 = v79 + 1;
      memcpy(v80, v68, v69);
      v81 = *(this + 4);
      *(this + 4) = v80;
      *(this + 5) = v59;
      *(this + 6) = 0;
      if (v81)
      {
        operator delete(v81);
      }
    }

    else
    {
      *v61 = 0;
      v59 = v61 + 8;
    }

    *(this + 5) = v59;
    goto LABEL_94;
  }

LABEL_103:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t CMMsl::Pose::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 64))
  {
    this = PB::Writer::write(a2, *(this + 56));
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v8 = v3[4];
  v7 = v3[5];
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::write(a2, v9);
  }

  return this;
}

uint64_t CMMsl::Pose::hash_value(CMMsl::Pose *this)
{
  if (*(this + 64))
  {
    if (*(this + 7) == 0.0)
    {
      v1 = 0;
    }

    else
    {
      v1 = *(this + 7);
    }
  }

  else
  {
    v1 = 0;
  }

  v2 = PBHashBytes() ^ v1;
  return v2 ^ PBHashBytes();
}

void CMMsl::PoseState::~PoseState(CMMsl::PoseState *this)
{
  *this = &unk_286C22B18;
  v2 = *(this + 4);
  *(this + 4) = 0;
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
  CMMsl::PoseState::~PoseState(this);

  JUMPOUT(0x25F8548F0);
}

CMMsl::PoseState *CMMsl::PoseState::PoseState(CMMsl::PoseState *this, const CMMsl::PoseState *a2)
{
  *this = &unk_286C22B18;
  *(this + 8) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 0u;
  if (*(a2 + 4))
  {
    operator new();
  }

  if (this != a2)
  {
    sub_25AD285D4(this + 1, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
  }

  if (*(a2 + 44))
  {
    v4 = *(a2 + 40);
    *(this + 44) |= 1u;
    *(this + 40) = v4;
  }

  return this;
}

uint64_t CMMsl::PoseState::operator=(uint64_t a1, const CMMsl::PoseState *a2)
{
  if (a1 != a2)
  {
    CMMsl::PoseState::PoseState(&v7, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v11;
    v11 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    CMMsl::PoseState::~PoseState(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PoseState *a2, CMMsl::PoseState *a3)
{
  v3 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  LOBYTE(v7) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return this;
}

uint64_t CMMsl::PoseState::PoseState(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22B18;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_25AD28758(v4, (a2 + 8));
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t CMMsl::PoseState::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PoseState::PoseState(&v7, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v11;
    v11 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    CMMsl::PoseState::~PoseState(&v7);
  }

  return a1;
}

uint64_t CMMsl::PoseState::formatText(CMMsl::PoseState *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 4);
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

  if (*(this + 44))
  {
    PB::TextFormatter::format(a2, "wasCorrected");
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PoseState::readFrom(CMMsl::PoseState *this, PB::Reader *a2)
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
        *(this + 44) |= 1u;
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

        *(this + 40) = v42;
      }

      else if (v22 == 2)
      {
        if ((v10 & 7) == 2)
        {
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
          v44 = *(this + 2);
          v43 = *(this + 3);
          if (v44 >= v43)
          {
            v46 = *(this + 1);
            v47 = v44 - v46;
            v48 = (v44 - v46) >> 3;
            v49 = v48 + 1;
            if ((v48 + 1) >> 61)
            {
LABEL_74:
              sub_25AAE66B8();
            }

            v50 = v43 - v46;
            if (v50 >> 2 > v49)
            {
              v49 = v50 >> 2;
            }

            if (v50 >= 0x7FFFFFFFFFFFFFF8)
            {
              v51 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v51 = v49;
            }

            if (v51)
            {
              sub_25AD28710(v51);
            }

            v52 = (v44 - v46) >> 3;
            v53 = (8 * v48);
            v54 = (8 * v48 - 8 * v52);
            *v53 = 0;
            v45 = v53 + 1;
            memcpy(v54, v46, v47);
            v55 = *(this + 1);
            *(this + 1) = v54;
            *(this + 2) = v45;
            *(this + 3) = 0;
            if (v55)
            {
              operator delete(v55);
            }
          }

          else
          {
            *v44 = 0;
            v45 = v44 + 8;
          }

          *(this + 2) = v45;
          v56 = *(a2 + 1);
          if (v56 <= 0xFFFFFFFFFFFFFFF7 && v56 + 8 <= *(a2 + 2))
          {
            *(v45 - 1) = *(*a2 + v56);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }
        }
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
          v57 = 0;
          return v57 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_70;
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
  }

LABEL_70:
  v57 = v4 ^ 1;
  return v57 & 1;
}

uint64_t CMMsl::PoseState::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
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

  if (*(v3 + 44))
  {

    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t CMMsl::PoseState::hash_value(CMMsl::PoseState *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = CMMsl::Pose::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = PBHashBytes();
  if (*(this + 44))
  {
    v5 = *(this + 40);
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

void *CMMsl::PoseState::makePose(void *this)
{
  if (!this[4])
  {
    operator new();
  }

  return this;
}

void CMMsl::PostureJoint::~PostureJoint(CMMsl::PostureJoint *this)
{
  *this = &unk_286C22B50;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
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
  CMMsl::PostureJoint::~PostureJoint(this);

  JUMPOUT(0x25F8548F0);
}

void **CMMsl::PostureJoint::PostureJoint(void **this, void **a2)
{
  *this = &unk_286C22B50;
  *(this + 1) = 0u;
  v4 = this + 1;
  *(this + 3) = 0u;
  *(this + 5) = 0u;
  this[7] = 0;
  if (this != a2)
  {
    sub_25AD285D4(v4, a2[1], a2[2], (a2[2] - a2[1]) >> 3);
    sub_25AD285D4(this + 4, a2[4], a2[5], (a2[5] - a2[4]) >> 3);
  }

  if (*(a2 + 60))
  {
    v5 = *(a2 + 14);
    *(this + 60) |= 1u;
    *(this + 14) = v5;
  }

  return this;
}

uint64_t CMMsl::PostureJoint::operator=(uint64_t a1, void **a2)
{
  if (a1 != a2)
  {
    CMMsl::PostureJoint::PostureJoint(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    *&v5 = *(a1 + 56);
    *(a1 + 56) = v11;
    v11 = v5;
    CMMsl::PostureJoint::~PostureJoint(&v7);
  }

  return a1;
}

uint64_t CMMsl::swap(uint64_t this, CMMsl::PostureJoint *a2, CMMsl::PostureJoint *a3)
{
  v3 = *(this + 60);
  *(this + 60) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v9;
  LODWORD(v9) = *(this + 56);
  *(this + 56) = *(a2 + 14);
  *(a2 + 14) = v9;
  return this;
}

uint64_t CMMsl::PostureJoint::PostureJoint(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_286C22B50;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  sub_25AD28758(a1 + 8, (a2 + 8));
  sub_25AD28758(a1 + 32, (a2 + 32));
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t CMMsl::PostureJoint::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    CMMsl::PostureJoint::PostureJoint(&v7, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v5;
    *&v5 = *(a1 + 56);
    *(a1 + 56) = v11;
    v11 = v5;
    CMMsl::PostureJoint::~PostureJoint(&v7);
  }

  return a1;
}

uint64_t CMMsl::PostureJoint::formatText(CMMsl::PostureJoint *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 60))
  {
    PB::TextFormatter::format(a2, "jointName");
  }

  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(a2, "rotation", v7);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(a2, "translation", v10);
  }

  return MEMORY[0x2821A4560](a2);
}

uint64_t CMMsl::PostureJoint::readFrom(CMMsl::PostureJoint *this, PB::Reader *a2)
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
          goto LABEL_21;
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

LABEL_21:
    v22 = v10 & 7;
    if (v22 == 4)
    {
      v4 = 0;
      break;
    }

    v23 = v10 >> 3;
    if ((v10 >> 3) == 3)
    {
      *(this + 60) |= 1u;
      v57 = *(a2 + 1);
      v56 = *(a2 + 2);
      v58 = *a2;
      if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v56)
      {
        v68 = 0;
        v69 = 0;
        v61 = 0;
        v70 = (v58 + v57);
        v18 = v56 >= v57;
        v71 = v56 - v57;
        if (!v18)
        {
          v71 = 0;
        }

        v72 = v57 + 1;
        while (1)
        {
          if (!v71)
          {
            LODWORD(v61) = 0;
            *(a2 + 24) = 1;
            goto LABEL_105;
          }

          v73 = *v70;
          *(a2 + 1) = v72;
          v61 |= (v73 & 0x7F) << v68;
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
LABEL_81:
            LODWORD(v61) = 0;
            goto LABEL_105;
          }
        }

        if (*(a2 + 24))
        {
          LODWORD(v61) = 0;
        }
      }

      else
      {
        v59 = 0;
        v60 = 0;
        v61 = 0;
        v62 = (v58 + v57);
        v63 = v57 + 1;
        while (1)
        {
          *(a2 + 1) = v63;
          v64 = *v62++;
          v61 |= (v64 & 0x7F) << v59;
          if ((v64 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          ++v63;
          v14 = v60++ > 8;
          if (v14)
          {
            goto LABEL_81;
          }
        }
      }

LABEL_105:
      *(this + 14) = v61;
      goto LABEL_18;
    }

    if (v23 == 2)
    {
      if (v22 != 2)
      {
        v66 = *(this + 5);
        v65 = *(this + 6);
        if (v66 >= v65)
        {
          v76 = *(this + 4);
          v77 = v66 - v76;
          v78 = (v66 - v76) >> 3;
          v79 = v78 + 1;
          if ((v78 + 1) >> 61)
          {
            goto LABEL_121;
          }

          v80 = v65 - v76;
          if (v80 >> 2 > v79)
          {
            v79 = v80 >> 2;
          }

          if (v80 >= 0x7FFFFFFFFFFFFFF8)
          {
            v81 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v81 = v79;
          }

          if (v81)
          {
            sub_25AD28710(v81);
          }

          v88 = (v66 - v76) >> 3;
          v89 = (8 * v78);
          v90 = (8 * v78 - 8 * v88);
          *v89 = 0;
          v67 = v89 + 1;
          memcpy(v90, v76, v77);
          v91 = *(this + 4);
          *(this + 4) = v90;
          *(this + 5) = v67;
          *(this + 6) = 0;
          if (v91)
          {
            operator delete(v91);
          }
        }

        else
        {
          *v66 = 0;
          v67 = v66 + 8;
        }

        *(this + 5) = v67;
LABEL_112:
        v96 = *(a2 + 1);
        if (v96 <= 0xFFFFFFFFFFFFFFF7 && v96 + 8 <= *(a2 + 2))
        {
          *(v67 - 1) = *(*a2 + v96);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_18;
      }

      if (PB::Reader::placeMark())
      {
LABEL_119:
        v97 = 0;
        return v97 & 1;
      }

      v40 = *(a2 + 1);
      v41 = *(a2 + 2);
      while (v40 < v41 && (*(a2 + 24) & 1) == 0)
      {
        v43 = *(this + 5);
        v42 = *(this + 6);
        if (v43 >= v42)
        {
          v45 = *(this + 4);
          v46 = v43 - v45;
          v47 = (v43 - v45) >> 3;
          v48 = v47 + 1;
          if ((v47 + 1) >> 61)
          {
            goto LABEL_121;
          }

          v49 = v42 - v45;
          if (v49 >> 2 > v48)
          {
            v48 = v49 >> 2;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFF8)
          {
            v50 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v50 = v48;
          }

          if (v50)
          {
            sub_25AD28710(v50);
          }

          v51 = (v43 - v45) >> 3;
          v52 = (8 * v47);
          v53 = (8 * v47 - 8 * v51);
          *v52 = 0;
          v44 = v52 + 1;
          memcpy(v53, v45, v46);
          v54 = *(this + 4);
          *(this + 4) = v53;
          *(this + 5) = v44;
          *(this + 6) = 0;
          if (v54)
          {
            operator delete(v54);
          }
        }

        else
        {
          *v43 = 0;
          v44 = v43 + 8;
        }

        *(this + 5) = v44;
        v55 = *(a2 + 1);
        if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(a2 + 2))
        {
LABEL_84:
          *(a2 + 24) = 1;
          break;
        }

        *(v44 - 1) = *(*a2 + v55);
        v41 = *(a2 + 2);
        v40 = *(a2 + 1) + 8;
        *(a2 + 1) = v40;
      }
    }

    else
    {
      if (v23 != 1)
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_119;
        }

        goto LABEL_18;
      }

      if (v22 != 2)
      {
        v75 = *(this + 2);
        v74 = *(this + 3);
        if (v75 >= v74)
        {
          v82 = *(this + 1);
          v83 = v75 - v82;
          v84 = (v75 - v82) >> 3;
          v85 = v84 + 1;
          if ((v84 + 1) >> 61)
          {
LABEL_121:
            sub_25AAE66B8();
          }

          v86 = v74 - v82;
          if (v86 >> 2 > v85)
          {
            v85 = v86 >> 2;
          }

          if (v86 >= 0x7FFFFFFFFFFFFFF8)
          {
            v87 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v87 = v85;
          }

          if (v87)
          {
            sub_25AD28710(v87);
          }

          v92 = (v75 - v82) >> 3;
          v93 = (8 * v84);
          v94 = (8 * v84 - 8 * v92);
          *v93 = 0;
          v67 = v93 + 1;
          memcpy(v94, v82, v83);
          v95 = *(this + 1);
          *(this + 1) = v94;
          *(this + 2) = v67;
          *(this + 3) = 0;
          if (v95)
          {
            operator delete(v95);
          }
        }

        else
        {
          *v75 = 0;
          v67 = v75 + 8;
        }

        *(this + 2) = v67;
        goto LABEL_112;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_119;
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
          v31 = (v27 - v29) >> 3;
          v32 = v31 + 1;
          if ((v31 + 1) >> 61)
          {
            goto LABEL_121;
          }

          v33 = v26 - v29;
          if (v33 >> 2 > v32)
          {
            v32 = v33 >> 2;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            v34 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v34 = v32;
          }

          if (v34)
          {
            sub_25AD28710(v34);
          }

          v35 = (v27 - v29) >> 3;
          v36 = (8 * v31);
          v37 = (8 * v31 - 8 * v35);
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
          v28 = v27 + 8;
        }

        *(this + 2) = v28;
        v39 = *(a2 + 1);
        if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(a2 + 2))
        {
          goto LABEL_84;
        }

        *(v28 - 1) = *(*a2 + v39);
        v25 = *(a2 + 2);
        v24 = *(a2 + 1) + 8;
        *(a2 + 1) = v24;
      }
    }

    PB::Reader::recallMark();
LABEL_18:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t CMMsl::PostureJoint::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::write(a2, v9);
  }

  if (*(v3 + 60))
  {

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t CMMsl::PostureJoint::hash_value(CMMsl::PostureJoint *this)
{
  v2 = PBHashBytes();
  v3 = PBHashBytes();
  if (*(this + 60))
  {
    v4 = *(this + 14);
  }

  else
  {
    v4 = 0;
  }

  return v3 ^ v2 ^ v4;
}