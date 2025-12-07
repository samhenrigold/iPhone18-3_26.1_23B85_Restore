uint64_t sub_245EEC060(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 32);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 24));
      if ((*(v3 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_9:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EEC108(uint64_t result)
{
  *result = &unk_2858D57B8;
  *(result + 56) = 0;
  return result;
}

void sub_245EEC130(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EEC168(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D57B8;
  *(a1 + 56) = 0;
  v2 = *(a2 + 56);
  if ((v2 & 8) != 0)
  {
    result = *(a2 + 32);
    v3 = 8;
    *(a1 + 56) = 8;
    *(a1 + 32) = result;
    v2 = *(a2 + 56);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 56) & 4) != 0)
  {
LABEL_5:
    result = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 56) = v3;
    *(a1 + 24) = result;
    v2 = *(a2 + 56);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    result = *(a2 + 40);
    v3 |= 0x10u;
    *(a1 + 56) = v3;
    *(a1 + 40) = result;
    v2 = *(a2 + 56);
    if ((v2 & 2) == 0)
    {
LABEL_8:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_13;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_8;
  }

  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 56) = v3;
  *(a1 + 16) = result;
  v2 = *(a2 + 56);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      return result;
    }

LABEL_14:
    result = *(a2 + 8);
    *(a1 + 56) = v3 | 1;
    *(a1 + 8) = result;
    return result;
  }

LABEL_13:
  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 56) = v3;
  *(a1 + 48) = result;
  if (*(a2 + 56))
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_245EEC23C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if (v5)
  {
    PB::TextFormatter::format(this, "complexHandMotionPercentage", *(a1 + 8));
    v5 = *(a1 + 56);
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

  else if ((*(a1 + 56) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "confidence", *(a1 + 16));
  v5 = *(a1 + 56);
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
  PB::TextFormatter::format(this, "endTime", *(a1 + 24));
  v5 = *(a1 + 56);
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
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  v5 = *(a1 + 56);
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
  PB::TextFormatter::format(this, "straightnessMetric", *(a1 + 40));
  if ((*(a1 + 56) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "walkPercentage", *(a1 + 48));
  }

LABEL_8:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EEC340(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_55;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 56) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_48:
              *(this + 24) = 1;
              goto LABEL_51;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_50;
          case 5:
            *(a1 + 56) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_48;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_50;
          case 6:
            *(a1 + 56) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_48;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_50;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 56) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_48;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_50;
          case 2:
            *(a1 + 56) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_48;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_50;
          case 3:
            *(a1 + 56) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_48;
            }

            *(a1 + 40) = *(*this + v2);
LABEL_50:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_51;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_51:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EEC648(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 56);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 56) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 56) & 1) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 56);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_13:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EEC728(uint64_t result)
{
  *result = &unk_2858D57F0;
  *(result + 20) = 0;
  return result;
}

void sub_245EEC750(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EEC788(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D57F0;
  *(result + 20) = 0;
  if (*(a2 + 20))
  {
    v3 = *(a2 + 8);
    *(result + 20) = 1;
    *(result + 8) = v3;
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
    v4 = *(a2 + 16);
    *(result + 20) = v2;
    *(result + 16) = v4;
  }

  return result;
}

uint64_t sub_245EEC7EC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "motionState");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EEC868(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_54;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v22 = *(this + 1);
        v2 = *(this + 2);
        v23 = *this;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
          v26 = 0;
          if (v2 <= v22)
          {
            v2 = *(this + 1);
          }

          v32 = v2 - v22;
          v33 = (v23 + v22);
          v34 = v22 + 1;
          while (1)
          {
            if (!v32)
            {
              LODWORD(v26) = 0;
              *(this + 24) = 1;
              goto LABEL_49;
            }

            v35 = v34;
            v36 = *v33;
            *(this + 1) = v35;
            v26 |= (v36 & 0x7F) << v30;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            --v32;
            ++v33;
            v34 = v35 + 1;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_48:
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
            *(this + 1) = v28;
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
              LODWORD(v26) = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 16) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
        {
          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v37 = 0;
          return v37 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_54:
  v37 = v4 ^ 1;
  return v37 & 1;
}

uint64_t sub_245EECB34(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

double sub_245EECBA0(uint64_t a1)
{
  *a1 = &unk_2858D5828;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_245EECBD0(PB::Base *this)
{
  *this = &unk_2858D5828;
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

void sub_245EECC64(PB::Base *a1)
{
  sub_245EECBD0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EECC9C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5828;
  *(a1 + 8) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0u;
  if (*(a2 + 32))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_245DF843C((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v4 = *(a2 + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 44);
    *(a1 + 48) |= 2u;
    *(a1 + 44) = v5;
    v4 = *(a2 + 48);
  }

  if (v4)
  {
    v6 = *(a2 + 40);
    *(a1 + 48) |= 1u;
    *(a1 + 40) = v6;
  }

  return a1;
}

uint64_t sub_245EECDB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "gyroBias", v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "super");
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    PB::TextFormatter::format(this, "temperatureGyro", *(a1 + 40));
    v9 = *(a1 + 48);
  }

  if ((v9 & 2) != 0)
  {
    PB::TextFormatter::format(this, "temperatureGyroBias", *(a1 + 44));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EECEA4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_79;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
        goto LABEL_79;
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
        goto LABEL_50;
      }

      if ((v10 & 7) != 2)
      {
        v42 = *(a1 + 16);
        v41 = *(a1 + 24);
        if (v42 >= v41)
        {
          v44 = *(a1 + 8);
          v45 = v42 - v44;
          v46 = (v42 - v44) >> 2;
          v47 = v46 + 1;
          if ((v46 + 1) >> 62)
          {
LABEL_82:
            sub_245DF85A4();
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
            sub_245DF85BC(a1 + 8, v49);
          }

          v50 = (v42 - v44) >> 2;
          v51 = (4 * v46);
          v52 = (4 * v46 - 4 * v50);
          *v51 = 0;
          v43 = v51 + 1;
          memcpy(v52, v44, v45);
          v53 = *(a1 + 8);
          *(a1 + 8) = v52;
          *(a1 + 16) = v43;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v43;
        v54 = *(this + 1);
        if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(this + 2))
        {
LABEL_72:
          *(this + 24) = 1;
          goto LABEL_75;
        }

        *(v43 - 1) = *(*this + v54);
        goto LABEL_74;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_81;
      }

      v23 = *(this + 1);
      v24 = *(this + 2);
      while (v23 < v24 && (*(this + 24) & 1) == 0)
      {
        v26 = *(a1 + 16);
        v25 = *(a1 + 24);
        if (v26 >= v25)
        {
          v28 = *(a1 + 8);
          v29 = v26 - v28;
          v30 = (v26 - v28) >> 2;
          v31 = v30 + 1;
          if ((v30 + 1) >> 62)
          {
            goto LABEL_82;
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
            sub_245DF85BC(a1 + 8, v33);
          }

          v34 = (v26 - v28) >> 2;
          v35 = (4 * v30);
          v36 = (4 * v30 - 4 * v34);
          *v35 = 0;
          v27 = v35 + 1;
          memcpy(v36, v28, v29);
          v37 = *(a1 + 8);
          *(a1 + 8) = v36;
          *(a1 + 16) = v27;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v27;
        v38 = *(this + 1);
        if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v27 - 1) = *(*this + v38);
        v24 = *(this + 2);
        v23 = *(this + 1) + 4;
        *(this + 1) = v23;
      }

      PB::Reader::recallMark();
LABEL_75:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_79;
      }
    }

    if (v22 == 3)
    {
      *(a1 + 48) |= 2u;
      v40 = *(this + 1);
      if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
      {
        goto LABEL_72;
      }

      *(a1 + 44) = *(*this + v40);
      goto LABEL_74;
    }

    if (v22 == 4)
    {
      *(a1 + 48) |= 1u;
      v39 = *(this + 1);
      if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
      {
        goto LABEL_72;
      }

      *(a1 + 40) = *(*this + v39);
LABEL_74:
      *(this + 1) += 4;
      goto LABEL_75;
    }

LABEL_50:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_81:
      v55 = 0;
      return v55 & 1;
    }

    goto LABEL_75;
  }

LABEL_79:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t sub_245EED364(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 48);
  if ((v8 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 44));
    v8 = *(v3 + 48);
  }

  if (v8)
  {
    v9 = *(v3 + 40);

    return PB::Writer::write(this, v9);
  }

  return result;
}

void *sub_245EED410(void *result)
{
  if (!result[4])
  {
    operator new();
  }

  return result;
}

uint64_t sub_245EED4A0(uint64_t result)
{
  *result = &unk_2858D5860;
  *(result + 64) = 0;
  return result;
}

void sub_245EED4C8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EED500(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5860;
  *(result + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 48);
    v3 = 32;
    *(result + 64) = 32;
    *(result + 48) = v4;
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
    v5 = *(a2 + 24);
    v3 |= 4u;
    *(result + 64) = v3;
    *(result + 24) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 8) != 0)
  {
    v6 = *(a2 + 32);
    v3 |= 8u;
    *(result + 64) = v3;
    *(result + 32) = v6;
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

  v7 = *(a2 + 56);
  v3 |= 0x40u;
  *(result + 64) = v3;
  *(result + 56) = v7;
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
  v8 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 64) = v3;
  *(result + 40) = v8;
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
  v9 = *(a2 + 8);
  v3 |= 1u;
  *(result + 64) = v3;
  *(result + 8) = v9;
  v2 = *(a2 + 64);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_18:
    v11 = *(a2 + 60);
    *(result + 64) = v3 | 0x80;
    *(result + 60) = v11;
    return result;
  }

LABEL_17:
  v10 = *(a2 + 16);
  v3 |= 2u;
  *(result + 64) = v3;
  *(result + 16) = v10;
  if ((*(a2 + 64) & 0x80) != 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_245EED60C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    PB::TextFormatter::format(this, "firstRingSensorTimeStampMicroSeconds");
    v5 = *(a1 + 64);
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

  else if ((*(a1 + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "lastRingSensorTimeStampMicroSeconds");
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "medianBufferNumSamples");
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "medianNorthAlignmentEstimateRad", *(a1 + 24));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "newNorthAlignmentEstimateRad", *(a1 + 32));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "numRingSensorSamples");
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "timeElapsedSinceLastUpdateMicroSeconds");
  if ((*(a1 + 64) & 0x20) != 0)
  {
LABEL_9:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 48));
  }

LABEL_10:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EED750(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_150;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
      if ((v10 >> 3) > 4)
      {
        if (v22 > 6)
        {
          if (v22 == 7)
          {
            *(a1 + 64) |= 2u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v70 = 0;
              v71 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v72 = v2 - v55;
              v73 = (v56 + v55);
              v74 = v55 + 1;
              while (1)
              {
                if (!v72)
                {
                  v59 = 0;
                  *(this + 24) = 1;
                  goto LABEL_133;
                }

                v75 = v74;
                v76 = *v73;
                *(this + 1) = v75;
                v59 |= (v76 & 0x7F) << v70;
                if ((v76 & 0x80) == 0)
                {
                  break;
                }

                v70 += 7;
                --v72;
                ++v73;
                v74 = v75 + 1;
                v14 = v71++ > 8;
                if (v14)
                {
                  v59 = 0;
                  goto LABEL_132;
                }
              }

              if (*(this + 24))
              {
                v59 = 0;
              }

LABEL_132:
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
                *(this + 1) = v61;
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

LABEL_133:
            *(a1 + 16) = v59;
            goto LABEL_146;
          }

          if (v22 == 8)
          {
            *(a1 + 64) |= 0x80u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v91 = 0;
              v92 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v93 = v2 - v39;
              v94 = (v40 + v39);
              v95 = v39 + 1;
              while (1)
              {
                if (!v93)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_145;
                }

                v96 = v95;
                v97 = *v94;
                *(this + 1) = v96;
                v43 |= (v97 & 0x7F) << v91;
                if ((v97 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                --v93;
                ++v94;
                v95 = v96 + 1;
                v14 = v92++ > 8;
                if (v14)
                {
                  LODWORD(v43) = 0;
                  goto LABEL_144;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_144:
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
                *(this + 1) = v45;
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

LABEL_145:
            *(a1 + 60) = v43;
            goto LABEL_146;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 64) |= 0x10u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v63 = 0;
              v64 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v65 = v2 - v47;
              v66 = (v48 + v47);
              v67 = v47 + 1;
              while (1)
              {
                if (!v65)
                {
                  v51 = 0;
                  *(this + 24) = 1;
                  goto LABEL_129;
                }

                v68 = v67;
                v69 = *v66;
                *(this + 1) = v68;
                v51 |= (v69 & 0x7F) << v63;
                if ((v69 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                --v65;
                ++v66;
                v67 = v68 + 1;
                v14 = v64++ > 8;
                if (v14)
                {
                  v51 = 0;
                  goto LABEL_128;
                }
              }

              if (*(this + 24))
              {
                v51 = 0;
              }

LABEL_128:
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
                *(this + 1) = v53;
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

LABEL_129:
            *(a1 + 40) = v51;
            goto LABEL_146;
          }

          if (v22 == 6)
          {
            *(a1 + 64) |= 1u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v77 = 0;
              v78 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v79 = v2 - v23;
              v80 = (v24 + v23);
              v81 = v23 + 1;
              while (1)
              {
                if (!v79)
                {
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_137;
                }

                v82 = v81;
                v83 = *v80;
                *(this + 1) = v82;
                v27 |= (v83 & 0x7F) << v77;
                if ((v83 & 0x80) == 0)
                {
                  break;
                }

                v77 += 7;
                --v79;
                ++v80;
                v81 = v82 + 1;
                v14 = v78++ > 8;
                if (v14)
                {
                  v27 = 0;
                  goto LABEL_136;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_136:
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
                *(this + 1) = v29;
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

LABEL_137:
            *(a1 + 8) = v27;
            goto LABEL_146;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_69:
            *(this + 24) = 1;
            goto LABEL_146;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_120;
        }

        if (v22 == 4)
        {
          *(a1 + 64) |= 0x40u;
          v31 = *(this + 1);
          v2 = *(this + 2);
          v32 = *this;
          if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
          {
            v84 = 0;
            v85 = 0;
            v35 = 0;
            if (v2 <= v31)
            {
              v2 = *(this + 1);
            }

            v86 = v2 - v31;
            v87 = (v32 + v31);
            v88 = v31 + 1;
            while (1)
            {
              if (!v86)
              {
                LODWORD(v35) = 0;
                *(this + 24) = 1;
                goto LABEL_141;
              }

              v89 = v88;
              v90 = *v87;
              *(this + 1) = v89;
              v35 |= (v90 & 0x7F) << v84;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v84 += 7;
              --v86;
              ++v87;
              v88 = v89 + 1;
              v14 = v85++ > 8;
              if (v14)
              {
                LODWORD(v35) = 0;
                goto LABEL_140;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_140:
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
              *(this + 1) = v37;
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

LABEL_141:
          *(a1 + 56) = v35;
          goto LABEL_146;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_69;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_120;
        }

        if (v22 == 2)
        {
          *(a1 + 64) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_69;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_120:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_146;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v98 = 0;
        return v98 & 1;
      }

      v2 = *(this + 1);
LABEL_146:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_150:
  v98 = v4 ^ 1;
  return v98 & 1;
}

uint64_t sub_245EEDEE4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 48));
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

  else if ((*(result + 64) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
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
  result = PB::Writer::write(this, *(v3 + 32));
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 64) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_17:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EEDFFC(uint64_t result)
{
  *result = &unk_2858D5898;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  *(result + 64) = 0;
  return result;
}

void sub_245EEE028(PB::Base *this)
{
  *this = &unk_2858D5898;
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

void sub_245EEE0BC(PB::Base *a1)
{
  sub_245EEE028(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EEE0F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2858D5898;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  if (*(a2 + 48))
  {
    operator new();
  }

  if ((*(a2 + 64) & 4) != 0)
  {
    v4 = *(a2 + 56);
    *(a1 + 64) |= 4u;
    *(a1 + 56) = v4;
  }

  if (a1 != a2)
  {
    sub_245DF86C8((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    v6 = *(a2 + 32);
    *(a1 + 64) |= 1u;
    *(a1 + 32) = v6;
    v5 = *(a2 + 64);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 40);
    *(a1 + 64) |= 2u;
    *(a1 + 40) = v7;
  }

  return a1;
}

uint64_t sub_245EEE22C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    PB::TextFormatter::format(this, "lastAuxTimeStampMicroSeconds");
    v5 = *(a1 + 64);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "lastRingSensorTimeStampMicroSeconds");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "qSP", v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "super");
  }

  if ((*(a1 + 64) & 4) != 0)
  {
    PB::TextFormatter::format(this, "timeStampMicroSeconds");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EEE338(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_130;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
        goto LABEL_130;
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
          *(a1 + 64) |= 1u;
          v58 = *(this + 1);
          v57 = *(this + 2);
          v59 = *this;
          if (v58 > 0xFFFFFFFFFFFFFFF5 || v58 + 10 > v57)
          {
            v66 = 0;
            v67 = 0;
            v62 = 0;
            v17 = v57 >= v58;
            v68 = v57 - v58;
            if (!v17)
            {
              v68 = 0;
            }

            v69 = (v59 + v58);
            v70 = v58 + 1;
            while (1)
            {
              if (!v68)
              {
                v62 = 0;
                *(this + 24) = 1;
                goto LABEL_112;
              }

              v71 = *v69;
              *(this + 1) = v70;
              v62 |= (v71 & 0x7F) << v66;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              --v68;
              ++v69;
              ++v70;
              v14 = v67++ > 8;
              if (v14)
              {
LABEL_80:
                v62 = 0;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
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
              *(this + 1) = v64;
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
                goto LABEL_80;
              }
            }
          }

LABEL_112:
          *(a1 + 32) = v62;
          goto LABEL_126;
        }

        if (v22 == 5)
        {
          *(a1 + 64) |= 2u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v75 = 0;
            v76 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v77 = v23 - v24;
            if (!v17)
            {
              v77 = 0;
            }

            v78 = (v25 + v24);
            v79 = v24 + 1;
            while (1)
            {
              if (!v77)
              {
                v28 = 0;
                *(this + 24) = 1;
                goto LABEL_115;
              }

              v80 = *v78;
              *(this + 1) = v79;
              v28 |= (v80 & 0x7F) << v75;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              --v77;
              ++v78;
              ++v79;
              v14 = v76++ > 8;
              if (v14)
              {
LABEL_90:
                v28 = 0;
                goto LABEL_115;
              }
            }

            if (*(this + 24))
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
              *(this + 1) = v30;
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
                goto LABEL_90;
              }
            }
          }

LABEL_115:
          *(a1 + 40) = v28;
          goto LABEL_126;
        }

        goto LABEL_71;
      }

      if ((v10 & 7) == 2)
      {
        if (PB::Reader::placeMark())
        {
          goto LABEL_132;
        }

        v41 = *(this + 1);
        v42 = *(this + 2);
        while (v41 < v42 && (*(this + 24) & 1) == 0)
        {
          v44 = *(a1 + 16);
          v43 = *(a1 + 24);
          if (v44 >= v43)
          {
            v46 = *(a1 + 8);
            v47 = v44 - v46;
            v48 = (v44 - v46) >> 3;
            v49 = v48 + 1;
            if ((v48 + 1) >> 61)
            {
              goto LABEL_133;
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
              sub_245DF8830(a1 + 8, v51);
            }

            v52 = (v44 - v46) >> 3;
            v53 = (8 * v48);
            v54 = (8 * v48 - 8 * v52);
            *v53 = 0;
            v45 = v53 + 1;
            memcpy(v54, v46, v47);
            v55 = *(a1 + 8);
            *(a1 + 8) = v54;
            *(a1 + 16) = v45;
            *(a1 + 24) = 0;
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

          *(a1 + 16) = v45;
          v56 = *(this + 1);
          if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(this + 2))
          {
            *(this + 24) = 1;
            break;
          }

          *(v45 - 1) = *(*this + v56);
          v42 = *(this + 2);
          v41 = *(this + 1) + 8;
          *(this + 1) = v41;
        }

        PB::Reader::recallMark();
      }

      else
      {
        v73 = *(a1 + 16);
        v72 = *(a1 + 24);
        if (v73 >= v72)
        {
          v87 = *(a1 + 8);
          v88 = v73 - v87;
          v89 = (v73 - v87) >> 3;
          v90 = v89 + 1;
          if ((v89 + 1) >> 61)
          {
LABEL_133:
            sub_245DF85A4();
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
            sub_245DF8830(a1 + 8, v92);
          }

          v93 = (v73 - v87) >> 3;
          v94 = (8 * v89);
          v95 = (8 * v89 - 8 * v93);
          *v94 = 0;
          v74 = v94 + 1;
          memcpy(v95, v87, v88);
          v96 = *(a1 + 8);
          *(a1 + 8) = v95;
          *(a1 + 16) = v74;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v74;
        v97 = *(this + 1);
        if (v97 <= 0xFFFFFFFFFFFFFFF7 && v97 + 8 <= *(this + 2))
        {
          *(v74 - 1) = *(*this + v97);
          *(this + 1) += 8;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

LABEL_126:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_130;
      }
    }

    if (v22 == 1)
    {
      operator new();
    }

    if (v22 == 2)
    {
      *(a1 + 64) |= 4u;
      v33 = *(this + 1);
      v32 = *(this + 2);
      v34 = *this;
      if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
      {
        v81 = 0;
        v82 = 0;
        v37 = 0;
        v17 = v32 >= v33;
        v83 = v32 - v33;
        if (!v17)
        {
          v83 = 0;
        }

        v84 = (v34 + v33);
        v85 = v33 + 1;
        while (1)
        {
          if (!v83)
          {
            v37 = 0;
            *(this + 24) = 1;
            goto LABEL_118;
          }

          v86 = *v84;
          *(this + 1) = v85;
          v37 |= (v86 & 0x7F) << v81;
          if ((v86 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          --v83;
          ++v84;
          ++v85;
          v14 = v82++ > 8;
          if (v14)
          {
LABEL_98:
            v37 = 0;
            goto LABEL_118;
          }
        }

        if (*(this + 24))
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
          *(this + 1) = v39;
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
            goto LABEL_98;
          }
        }
      }

LABEL_118:
      *(a1 + 56) = v37;
      goto LABEL_126;
    }

LABEL_71:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_132:
      v98 = 0;
      return v98 & 1;
    }

    goto LABEL_126;
  }

LABEL_130:
  v98 = v4 ^ 1;
  return v98 & 1;
}

uint64_t sub_245EEEA7C(uint64_t result)
{
  *result = &unk_2858D58D0;
  *(result + 76) = 0;
  return result;
}

uint64_t sub_245EEEAA0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if ((*(v3 + 64) & 4) != 0)
  {
    result = PB::Writer::writeVarInt(this);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 64);
  if (v8)
  {
    result = PB::Writer::writeVarInt(this);
    v8 = *(v3 + 64);
  }

  if ((v8 & 2) != 0)
  {

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void sub_245EEEB68(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EEEBA0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D58D0;
  *(result + 76) = 0;
  v2 = *(a2 + 76);
  if ((v2 & 0x10) != 0)
  {
    v4 = *(a2 + 40);
    v3 = 16;
    *(result + 76) = 16;
    *(result + 40) = v4;
    v2 = *(a2 + 76);
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
    v5 = *(a2 + 48);
    v3 |= 0x20u;
    *(result + 76) = v3;
    *(result + 48) = v5;
    v2 = *(a2 + 76);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    v6 = *(a2 + 56);
    v3 |= 0x40u;
    *(result + 76) = v3;
    *(result + 56) = v6;
    v2 = *(a2 + 76);
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

  v7 = *(a2 + 64);
  v3 |= 0x80u;
  *(result + 76) = v3;
  *(result + 64) = v7;
  v2 = *(a2 + 76);
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
  v8 = *(a2 + 8);
  v3 |= 1u;
  *(result + 76) = v3;
  *(result + 8) = v8;
  v2 = *(a2 + 76);
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
  v9 = *(a2 + 16);
  v3 |= 2u;
  *(result + 76) = v3;
  *(result + 16) = v9;
  v2 = *(a2 + 76);
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
  v10 = *(a2 + 32);
  v3 |= 8u;
  *(result + 76) = v3;
  *(result + 32) = v10;
  v2 = *(a2 + 76);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      return result;
    }

LABEL_20:
    v12 = *(a2 + 72);
    *(result + 76) = v3 | 0x100;
    *(result + 72) = v12;
    return result;
  }

LABEL_19:
  v11 = *(a2 + 24);
  v3 |= 4u;
  *(result + 76) = v3;
  *(result + 24) = v11;
  if ((*(a2 + 76) & 0x100) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245EEECC4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 76);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitudeAngle", *(a1 + 8));
    v5 = *(a1 + 76);
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

  PB::TextFormatter::format(this, "azimuthAngle", *(a1 + 16));
  v5 = *(a1 + 76);
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
  PB::TextFormatter::format(this, "estimated");
  v5 = *(a1 + 76);
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
  PB::TextFormatter::format(this, "estimationUpdateIndex");
  v5 = *(a1 + 76);
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
  PB::TextFormatter::format(this, "rollAngle", *(a1 + 32));
  v5 = *(a1 + 76);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  v5 = *(a1 + 76);
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
  PB::TextFormatter::format(this, "x", *(a1 + 48));
  v5 = *(a1 + 76);
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
  PB::TextFormatter::format(this, "y", *(a1 + 56));
  if ((*(a1 + 76) & 0x80) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "z", *(a1 + 64));
  }

LABEL_11:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EEEE28(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_87;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
            *(a1 + 76) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_56:
              *(this + 24) = 1;
              goto LABEL_83;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_77;
          }

          if (v22 == 4)
          {
            *(a1 + 76) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_77;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 76) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_77;
          }

          if (v22 == 2)
          {
            *(a1 + 76) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_77;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 76) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_77;
        }

        if (v22 == 6)
        {
          *(a1 + 76) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_77;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 76) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 32) = *(*this + v2);
LABEL_77:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_83;
          case 8:
            *(a1 + 76) |= 4u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v33 = 0;
              v34 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v35 = v2 - v25;
              v36 = (v26 + v25);
              v37 = v25 + 1;
              while (1)
              {
                if (!v35)
                {
                  v29 = 0;
                  *(this + 24) = 1;
                  goto LABEL_82;
                }

                v38 = v37;
                v39 = *v36;
                *(this + 1) = v38;
                v29 |= (v39 & 0x7F) << v33;
                if ((v39 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                --v35;
                ++v36;
                v37 = v38 + 1;
                v14 = v34++ > 8;
                if (v14)
                {
                  v29 = 0;
                  goto LABEL_81;
                }
              }

              if (*(this + 24))
              {
                v29 = 0;
              }

LABEL_81:
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
                *(this + 1) = v31;
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

LABEL_82:
            *(a1 + 24) = v29;
            goto LABEL_83;
          case 9:
            *(a1 + 76) |= 0x100u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v24 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v23 = *(*this + v2++);
              *(this + 1) = v2;
              v24 = v23 != 0;
            }

            *(a1 + 72) = v24;
            goto LABEL_83;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
LABEL_83:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_87:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_245EEF2D8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 76);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::write(this, *(result + 40));
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

  result = PB::Writer::write(this, *(v3 + 48));
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
  result = PB::Writer::write(this, *(v3 + 56));
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
  result = PB::Writer::write(this, *(v3 + 64));
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
  result = PB::Writer::write(this, *(v3 + 8));
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
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 76);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 76) & 0x100) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 76);
  if ((v4 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x100) == 0)
  {
    return result;
  }

LABEL_19:

  return PB::Writer::write(this);
}

uint64_t sub_245EEF40C(uint64_t result)
{
  *result = &unk_2858D5908;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_245EEF438(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EEF470(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5908;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 = 2;
    *(a1 + 32) = 2;
    *(a1 + 16) = result;
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
    *(a1 + 32) = v3;
    *(a1 + 28) = v5;
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
    result = *(a2 + 8);
    *(a1 + 32) = v3 | 1;
    *(a1 + 8) = result;
    return result;
  }

  v6 = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 32) = v3;
  *(a1 + 24) = v6;
  if (*(a2 + 32))
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EEF510(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    PB::TextFormatter::format(this, "avgRelOmegaRps", *(a1 + 8));
    v5 = *(a1 + 32);
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

  else if ((*(a1 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "ringSensorTrustModelMode");
  v5 = *(a1 + 32);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  if ((*(a1 + 32) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "trustPencilRingSensorBool");
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EEF5D4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_65;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
          *(a1 + 32) |= 4u;
          v25 = *(this + 1);
          v2 = *(this + 2);
          v26 = *this;
          if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v29 = 0;
            if (v2 <= v25)
            {
              v2 = *(this + 1);
            }

            v35 = v2 - v25;
            v36 = (v26 + v25);
            v37 = v25 + 1;
            while (1)
            {
              if (!v35)
              {
                LODWORD(v29) = 0;
                *(this + 24) = 1;
                goto LABEL_60;
              }

              v38 = v37;
              v39 = *v36;
              *(this + 1) = v38;
              v29 |= (v39 & 0x7F) << v33;
              if ((v39 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              --v35;
              ++v36;
              v37 = v38 + 1;
              v14 = v34++ > 8;
              if (v14)
              {
                LODWORD(v29) = 0;
                goto LABEL_59;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v29) = 0;
            }

LABEL_59:
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
              *(this + 1) = v31;
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

LABEL_60:
          *(a1 + 24) = v29;
          goto LABEL_61;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_36:
            *(this + 24) = 1;
            goto LABEL_61;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_36;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_55:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_61;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v24 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v23 = *(*this + v2++);
            *(this + 1) = v2;
            v24 = v23 != 0;
          }

          *(a1 + 28) = v24;
          goto LABEL_61;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
LABEL_61:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_65:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_245EEF934(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 32);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::writeVarInt(this);
      if ((*(v3 + 32) & 1) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this);
  v4 = *(v3 + 32);
  if ((v4 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EEF9DC(uint64_t result)
{
  *result = &unk_2858D5940;
  *(result + 24) = 0;
  return result;
}

void sub_245EEFA04(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EEFA3C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5940;
  *(a1 + 24) = 0;
  if (*(a2 + 24))
  {
    result = *(a2 + 8);
    *(a1 + 24) = 1;
    *(a1 + 8) = result;
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
    result = *(a2 + 16);
    *(a1 + 24) = v2;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_245EEFAA0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "tipForce", *(a1 + 16));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EEFB1C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_38;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_29;
        }

        *(a1 + 8) = *(*this + v2);
LABEL_33:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_34;
      }

      if (!PB::Reader::skip(this))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
LABEL_34:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(a1 + 24) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_29:
      *(this + 24) = 1;
      goto LABEL_34;
    }

    *(a1 + 16) = *(*this + v2);
    goto LABEL_33;
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245EEFD1C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 16);

    return PB::Writer::write(this, v5);
  }

  return result;
}

uint64_t sub_245EEFD88(uint64_t result)
{
  *result = &unk_2858D5978;
  *(result + 88) = 0;
  return result;
}

void sub_245EEFDB0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EEFDE8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5978;
  *(a1 + 88) = 0;
  v2 = *(a2 + 88);
  if ((v2 & 0x20) != 0)
  {
    result = *(a2 + 48);
    v3 = 32;
    *(a1 + 88) = 32;
    *(a1 + 48) = result;
    v2 = *(a2 + 88);
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
    result = *(a2 + 56);
    v3 |= 0x40u;
    *(a1 + 88) = v3;
    *(a1 + 56) = result;
    v2 = *(a2 + 88);
  }

LABEL_6:
  if ((v2 & 0x80) != 0)
  {
    result = *(a2 + 64);
    v3 |= 0x80u;
    *(a1 + 88) = v3;
    *(a1 + 64) = result;
    v2 = *(a2 + 88);
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

  result = *(a2 + 72);
  v3 |= 0x100u;
  *(a1 + 88) = v3;
  *(a1 + 72) = result;
  v2 = *(a2 + 88);
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
  result = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 88) = v3;
  *(a1 + 8) = result;
  v2 = *(a2 + 88);
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
  result = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 88) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 88);
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
  v5 = *(a2 + 84);
  v3 |= 0x400u;
  *(a1 + 88) = v3;
  *(a1 + 84) = v5;
  v2 = *(a2 + 88);
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
  v6 = *(a2 + 80);
  v3 |= 0x200u;
  *(a1 + 88) = v3;
  *(a1 + 80) = v6;
  v2 = *(a2 + 88);
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
  result = *(a2 + 16);
  v3 |= 2u;
  *(a1 + 88) = v3;
  *(a1 + 16) = result;
  v2 = *(a2 + 88);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 40);
    *(a1 + 88) = v3 | 0x10;
    *(a1 + 40) = result;
    return result;
  }

LABEL_23:
  result = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 88) = v3;
  *(a1 + 32) = result;
  if ((*(a2 + 88) & 0x10) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_245EEFF48(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 88);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitudeAngle", *(a1 + 8));
    v5 = *(a1 + 88);
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

  PB::TextFormatter::format(this, "altitudeAngleConfidence", *(a1 + 16));
  v5 = *(a1 + 88);
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
  PB::TextFormatter::format(this, "azimuthAngle", *(a1 + 24));
  v5 = *(a1 + 88);
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
  PB::TextFormatter::format(this, "azimuthAngleConfidence", *(a1 + 32));
  v5 = *(a1 + 88);
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
  PB::TextFormatter::format(this, "pathFlags");
  v5 = *(a1 + 88);
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
  PB::TextFormatter::format(this, "pathStage");
  v5 = *(a1 + 88);
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
  PB::TextFormatter::format(this, "positionConfidence", *(a1 + 40));
  v5 = *(a1 + 88);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 48));
  v5 = *(a1 + 88);
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
  PB::TextFormatter::format(this, "x", *(a1 + 56));
  v5 = *(a1 + 88);
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
  PB::TextFormatter::format(this, "y", *(a1 + 64));
  if ((*(a1 + 88) & 0x100) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "z", *(a1 + 72));
  }

LABEL_13:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF00EC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_111;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 88) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_76:
              *(this + 24) = 1;
              goto LABEL_107;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_96;
          }

          if (v22 == 2)
          {
            *(a1 + 88) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_96;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 88) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_76;
              }

              *(a1 + 64) = *(*this + v2);
              goto LABEL_96;
            case 4:
              *(a1 + 88) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_76;
              }

              *(a1 + 72) = *(*this + v2);
              goto LABEL_96;
            case 5:
              *(a1 + 88) |= 1u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_76;
              }

              *(a1 + 8) = *(*this + v2);
              goto LABEL_96;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 88) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_96;
          case 0xA:
            *(a1 + 88) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_96;
          case 0xB:
            *(a1 + 88) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_96;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 88) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_76;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_96:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_107;
          case 7:
            *(a1 + 88) |= 0x400u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v39 = 0;
              v40 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v41 = v2 - v31;
              v42 = (v32 + v31);
              v43 = v31 + 1;
              while (1)
              {
                if (!v41)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_102;
                }

                v44 = v43;
                v45 = *v42;
                *(this + 1) = v44;
                v35 |= (v45 & 0x7F) << v39;
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
                  LODWORD(v35) = 0;
                  goto LABEL_101;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_101:
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
                *(this + 1) = v37;
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

LABEL_102:
            *(a1 + 84) = v35;
            goto LABEL_107;
          case 8:
            *(a1 + 88) |= 0x200u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v46 = 0;
              v47 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v48 = v2 - v23;
              v49 = (v24 + v23);
              v50 = v23 + 1;
              while (1)
              {
                if (!v48)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_106;
                }

                v51 = v50;
                v52 = *v49;
                *(this + 1) = v51;
                v27 |= (v52 & 0x7F) << v46;
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
                  LODWORD(v27) = 0;
                  goto LABEL_105;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_105:
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
                *(this + 1) = v29;
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

LABEL_106:
            *(a1 + 80) = v27;
            goto LABEL_107;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_107:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_111:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245EF06DC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 88);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 48));
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

  result = PB::Writer::write(this, *(v3 + 56));
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
  result = PB::Writer::write(this, *(v3 + 64));
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
  result = PB::Writer::write(this, *(v3 + 72));
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
  result = PB::Writer::write(this, *(v3 + 8));
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
  result = PB::Writer::write(this, *(v3 + 24));
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 88);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 88) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 88);
  if ((v4 & 8) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x10) == 0)
  {
    return result;
  }

LABEL_23:
  v5 = *(v3 + 40);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EF0848(uint64_t result)
{
  *result = &unk_2858D59B0;
  *(result + 28) = 0;
  return result;
}

void sub_245EF0870(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EF08A8(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D59B0;
  *(result + 28) = 0;
  v2 = *(a2 + 28);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 28) = 1;
    *(result + 8) = v4;
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
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 28) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 28);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    *(result + 28) = v3 | 4;
    *(result + 24) = v6;
  }

  return result;
}

uint64_t sub_245EF0928(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "activityType");
    v5 = *(a1 + 28);
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

  else if ((*(a1 + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "sampleTime", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "wrMets", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF09CC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_59;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
        goto LABEL_59;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 28) |= 4u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v2 = *(this + 1);
          }

          v33 = v2 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_54;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
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
              goto LABEL_53;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_53:
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
            *(this + 1) = v29;
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

LABEL_54:
        *(a1 + 24) = v27;
        goto LABEL_55;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 28) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_30;
        }

        *(a1 + 8) = *(*this + v2);
LABEL_49:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_55;
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_55:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_59;
      }
    }

    *(a1 + 28) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_30:
      *(this + 24) = 1;
      goto LABEL_55;
    }

    *(a1 + 16) = *(*this + v2);
    goto LABEL_49;
  }

LABEL_59:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245EF0CD8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 28) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 16));
    if ((*(v3 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EF0D64(uint64_t result)
{
  *result = &unk_2858D59E8;
  *(result + 44) = 0;
  return result;
}

void sub_245EF0D8C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EF0DC4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D59E8;
  *(result + 44) = 0;
  v2 = *(a2 + 44);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 4;
    *(result + 44) = 4;
    *(result + 24) = v4;
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
    v5 = *(a2 + 8);
    v3 |= 1u;
    *(result + 44) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 44);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 44) = v3;
    *(result + 16) = v6;
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

  v7 = *(a2 + 32);
  v3 |= 8u;
  *(result + 44) = v3;
  *(result + 32) = v7;
  v2 = *(a2 + 44);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_14:
    v9 = *(a2 + 40);
    *(result + 44) = v3 | 0x20;
    *(result + 40) = v9;
    return result;
  }

LABEL_13:
  v8 = *(a2 + 36);
  v3 |= 0x10u;
  *(result + 44) = v3;
  *(result + 36) = v8;
  if ((*(a2 + 44) & 0x20) != 0)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_245EF0E98(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "activityType");
    v5 = *(a1 + 44);
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

  else if ((*(a1 + 44) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "algorithmVersion");
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "endDate", *(a1 + 8));
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "mets", *(a1 + 16));
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "sampleStopReason");
  if ((*(a1 + 44) & 4) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "startDate", *(a1 + 24));
  }

LABEL_8:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF0F9C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_106;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 44) |= 8u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v47 = 0;
              v48 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v49 = v2 - v31;
              v50 = (v32 + v31);
              v51 = v31 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_93;
                }

                v52 = v51;
                v53 = *v50;
                *(this + 1) = v52;
                v35 |= (v53 & 0x7F) << v47;
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
                  LODWORD(v35) = 0;
                  goto LABEL_92;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_92:
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
                *(this + 1) = v37;
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

LABEL_93:
            *(a1 + 32) = v35;
            goto LABEL_102;
          case 5:
            *(a1 + 44) |= 0x10u;
            v39 = *(this + 1);
            v2 = *(this + 2);
            v40 = *this;
            if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
            {
              v61 = 0;
              v62 = 0;
              v43 = 0;
              if (v2 <= v39)
              {
                v2 = *(this + 1);
              }

              v63 = v2 - v39;
              v64 = (v40 + v39);
              v65 = v39 + 1;
              while (1)
              {
                if (!v63)
                {
                  LODWORD(v43) = 0;
                  *(this + 24) = 1;
                  goto LABEL_101;
                }

                v66 = v65;
                v67 = *v64;
                *(this + 1) = v66;
                v43 |= (v67 & 0x7F) << v61;
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
                  LODWORD(v43) = 0;
                  goto LABEL_100;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_100:
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
                *(this + 1) = v45;
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

LABEL_101:
            *(a1 + 36) = v43;
            goto LABEL_102;
          case 6:
            *(a1 + 44) |= 0x20u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v54 = 0;
              v55 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v56 = v2 - v23;
              v57 = (v24 + v23);
              v58 = v23 + 1;
              while (1)
              {
                if (!v56)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_97;
                }

                v59 = v58;
                v60 = *v57;
                *(this + 1) = v59;
                v27 |= (v60 & 0x7F) << v54;
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
                  LODWORD(v27) = 0;
                  goto LABEL_96;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_96:
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
                *(this + 1) = v29;
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

LABEL_97:
            *(a1 + 40) = v27;
            goto LABEL_102;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 44) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_53:
              *(this + 24) = 1;
              goto LABEL_102;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_86;
          case 2:
            *(a1 + 44) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_86;
          case 3:
            *(a1 + 44) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_86:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_102;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_102:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_106:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_245EF1508(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
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

  else if ((*(result + 44) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
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
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_13:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EF15E8(uint64_t result)
{
  *result = &unk_2858D5A20;
  *(result + 84) = 0;
  return result;
}

void sub_245EF1610(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EF1648(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5A20;
  *(a1 + 84) = 0;
  v2 = *(a2 + 84);
  if ((v2 & 0x200) != 0)
  {
    v4 = *(a2 + 76);
    v3 = 512;
    *(a1 + 84) = 512;
    *(a1 + 76) = v4;
    v2 = *(a2 + 84);
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
    result = *(a2 + 64);
    v3 |= 0x80u;
    *(a1 + 84) = v3;
    *(a1 + 64) = result;
    v2 = *(a2 + 84);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    result = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 84) = v3;
    *(a1 + 16) = result;
    v2 = *(a2 + 84);
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

  result = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 84) = v3;
  *(a1 + 24) = result;
  v2 = *(a2 + 84);
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
  result = *(a2 + 40);
  v3 |= 0x10u;
  *(a1 + 84) = v3;
  *(a1 + 40) = result;
  v2 = *(a2 + 84);
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
  result = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 84) = v3;
  *(a1 + 32) = result;
  v2 = *(a2 + 84);
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
  result = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 84) = v3;
  *(a1 + 8) = result;
  v2 = *(a2 + 84);
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
  *(a1 + 84) = v3;
  *(a1 + 80) = v6;
  v2 = *(a2 + 84);
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
  result = *(a2 + 48);
  v3 |= 0x20u;
  *(a1 + 84) = v3;
  *(a1 + 48) = result;
  v2 = *(a2 + 84);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_24:
    result = *(a2 + 56);
    *(a1 + 84) = v3 | 0x40;
    *(a1 + 56) = result;
    return result;
  }

LABEL_23:
  LODWORD(result) = *(a2 + 72);
  v3 |= 0x100u;
  *(a1 + 84) = v3;
  *(a1 + 72) = LODWORD(result);
  if ((*(a2 + 84) & 0x40) != 0)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t sub_245EF17A8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 84);
  if (v5)
  {
    PB::TextFormatter::format(this, "ambient", *(a1 + 8));
    v5 = *(a1 + 84);
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

  else if ((*(a1 + 84) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "baselineAccuracy", *(a1 + 72));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "flags", *(a1 + 16));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "header");
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "intensity", *(a1 + 24));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "intensityBaselineDelta", *(a1 + 32));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "intensityCalDelta", *(a1 + 40));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "pocketFlag");
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "pocketProbability", *(a1 + 48));
  v5 = *(a1 + 84);
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
  PB::TextFormatter::format(this, "temperature", *(a1 + 56));
  if ((*(a1 + 84) & 0x80) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "ts", *(a1 + 64));
  }

LABEL_13:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF194C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_96;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 84) |= 0x200u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v33 = 0;
              v34 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v35 = v2 - v25;
              v36 = (v26 + v25);
              v37 = v25 + 1;
              while (1)
              {
                if (!v35)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_91;
                }

                v38 = v37;
                v39 = *v36;
                *(this + 1) = v38;
                v29 |= (v39 & 0x7F) << v33;
                if ((v39 & 0x80) == 0)
                {
                  break;
                }

                v33 += 7;
                --v35;
                ++v36;
                v37 = v38 + 1;
                v14 = v34++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_90;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_90:
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
                *(this + 1) = v31;
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

LABEL_91:
            *(a1 + 76) = v29;
            goto LABEL_92;
          }

          if (v22 == 2)
          {
            *(a1 + 84) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_71:
              *(this + 24) = 1;
              goto LABEL_92;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_85;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 84) |= 2u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_71;
              }

              *(a1 + 16) = *(*this + v2);
              goto LABEL_85;
            case 4:
              *(a1 + 84) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_71;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_85;
            case 5:
              *(a1 + 84) |= 0x10u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_71;
              }

              *(a1 + 40) = *(*this + v2);
LABEL_85:
              v2 = *(this + 1) + 8;
LABEL_86:
              *(this + 1) = v2;
              goto LABEL_92;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 84) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_85;
          case 0xA:
            *(a1 + 84) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 72) = *(*this + v2);
            v2 = *(this + 1) + 4;
            goto LABEL_86;
          case 0xB:
            *(a1 + 84) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_85;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 84) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_85;
          case 7:
            *(a1 + 84) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_71;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_85;
          case 8:
            *(a1 + 84) |= 0x400u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v24 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v23 = *(*this + v2++);
              *(this + 1) = v2;
              v24 = v23 != 0;
            }

            *(a1 + 80) = v24;
            goto LABEL_92;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
LABEL_92:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_96:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_245EF1E84(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 84);
  if ((v4 & 0x200) != 0)
  {
    result = PB::Writer::writeVarInt(this);
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

  result = PB::Writer::write(this, *(v3 + 64));
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
  result = PB::Writer::write(this, *(v3 + 16));
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
  result = PB::Writer::write(this, *(v3 + 24));
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
  result = PB::Writer::write(this, *(v3 + 40));
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
  result = PB::Writer::write(this, *(v3 + 32));
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
  result = PB::Writer::write(this, *(v3 + 8));
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
  result = PB::Writer::write(this);
  v4 = *(v3 + 84);
  if ((v4 & 0x20) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 72));
    if ((*(v3 + 84) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 84);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_23:
  v5 = *(v3 + 56);

  return PB::Writer::write(this, v5);
}

double sub_245EF1FF0(uint64_t a1)
{
  *a1 = &unk_2858D5A58;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_245EF2024(PB::Base *this)
{
  *this = &unk_2858D5A58;
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

void sub_245EF2098(PB::Base *a1)
{
  sub_245EF2024(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EF20D0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5A58;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 64) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (*(a2 + 64))
  {
    v5 = *(a2 + 56);
    *(a1 + 64) = 1;
    *(a1 + 56) = v5;
  }

  if (a1 != a2)
  {
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_245DF86C8((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  }

  return a1;
}

uint64_t sub_245EF2174(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "attitude", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "position", v10);
  }

  if (*(a1 + 64))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF223C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
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
        while (v18)
        {
          v21 = *v19;
          *(this + 1) = v20;
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
        *(this + 24) = 1;
        goto LABEL_107;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
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
        goto LABEL_107;
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
            goto LABEL_109;
          }

          v25 = *(this + 1);
          v26 = *(this + 2);
          while (v25 < v26 && (*(this + 24) & 1) == 0)
          {
            v28 = *(a1 + 16);
            v27 = *(a1 + 24);
            if (v28 >= v27)
            {
              v30 = *(a1 + 8);
              v31 = v28 - v30;
              v32 = (v28 - v30) >> 3;
              v33 = v32 + 1;
              if ((v32 + 1) >> 61)
              {
                goto LABEL_110;
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
                sub_245DF8830(a1 + 8, v35);
              }

              v36 = (v28 - v30) >> 3;
              v37 = (8 * v32);
              v38 = (8 * v32 - 8 * v36);
              *v37 = 0;
              v29 = v37 + 1;
              memcpy(v38, v30, v31);
              v39 = *(a1 + 8);
              *(a1 + 8) = v38;
              *(a1 + 16) = v29;
              *(a1 + 24) = 0;
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

            *(a1 + 16) = v29;
            v40 = *(this + 1);
            if (v40 > 0xFFFFFFFFFFFFFFF7 || v40 + 8 > *(this + 2))
            {
              goto LABEL_74;
            }

            *(v29 - 1) = *(*this + v40);
            v26 = *(this + 2);
            v25 = *(this + 1) + 8;
            *(this + 1) = v25;
          }

LABEL_75:
          PB::Reader::recallMark();
          goto LABEL_103;
        }

        v58 = *(a1 + 16);
        v57 = *(a1 + 24);
        if (v58 >= v57)
        {
          v62 = *(a1 + 8);
          v63 = v58 - v62;
          v64 = (v58 - v62) >> 3;
          v65 = v64 + 1;
          if ((v64 + 1) >> 61)
          {
            goto LABEL_110;
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
            sub_245DF8830(a1 + 8, v67);
          }

          v74 = (v58 - v62) >> 3;
          v75 = (8 * v64);
          v76 = (8 * v64 - 8 * v74);
          *v75 = 0;
          v59 = v75 + 1;
          memcpy(v76, v62, v63);
          v77 = *(a1 + 8);
          *(a1 + 8) = v76;
          *(a1 + 16) = v59;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v59;
LABEL_98:
        v82 = *(this + 1);
        if (v82 > 0xFFFFFFFFFFFFFFF7 || v82 + 8 > *(this + 2))
        {
LABEL_100:
          *(this + 24) = 1;
          goto LABEL_103;
        }

        *(v59 - 1) = *(*this + v82);
        goto LABEL_102;
      }

      if (v23 == 1)
      {
        *(a1 + 64) |= 1u;
        v24 = *(this + 1);
        if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
        {
          goto LABEL_100;
        }

        *(a1 + 56) = *(*this + v24);
LABEL_102:
        *(this + 1) += 8;
        goto LABEL_103;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_109:
        v83 = 0;
        return v83 & 1;
      }

LABEL_103:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_107;
      }
    }

    if (v22 == 2)
    {
      if (PB::Reader::placeMark())
      {
        goto LABEL_109;
      }

      v41 = *(this + 1);
      v42 = *(this + 2);
      while (v41 < v42 && (*(this + 24) & 1) == 0)
      {
        v44 = *(a1 + 40);
        v43 = *(a1 + 48);
        if (v44 >= v43)
        {
          v46 = *(a1 + 32);
          v47 = v44 - v46;
          v48 = (v44 - v46) >> 3;
          v49 = v48 + 1;
          if ((v48 + 1) >> 61)
          {
            goto LABEL_110;
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
            sub_245DF8830(a1 + 32, v51);
          }

          v52 = (v44 - v46) >> 3;
          v53 = (8 * v48);
          v54 = (8 * v48 - 8 * v52);
          *v53 = 0;
          v45 = v53 + 1;
          memcpy(v54, v46, v47);
          v55 = *(a1 + 32);
          *(a1 + 32) = v54;
          *(a1 + 40) = v45;
          *(a1 + 48) = 0;
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

        *(a1 + 40) = v45;
        v56 = *(this + 1);
        if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(this + 2))
        {
LABEL_74:
          *(this + 24) = 1;
          goto LABEL_75;
        }

        *(v45 - 1) = *(*this + v56);
        v42 = *(this + 2);
        v41 = *(this + 1) + 8;
        *(this + 1) = v41;
      }

      goto LABEL_75;
    }

    v61 = *(a1 + 40);
    v60 = *(a1 + 48);
    if (v61 >= v60)
    {
      v68 = *(a1 + 32);
      v69 = v61 - v68;
      v70 = (v61 - v68) >> 3;
      v71 = v70 + 1;
      if ((v70 + 1) >> 61)
      {
LABEL_110:
        sub_245DF85A4();
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
        sub_245DF8830(a1 + 32, v73);
      }

      v78 = (v61 - v68) >> 3;
      v79 = (8 * v70);
      v80 = (8 * v70 - 8 * v78);
      *v79 = 0;
      v59 = v79 + 1;
      memcpy(v80, v68, v69);
      v81 = *(a1 + 32);
      *(a1 + 32) = v80;
      *(a1 + 40) = v59;
      *(a1 + 48) = 0;
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

    *(a1 + 40) = v59;
    goto LABEL_98;
  }

LABEL_107:
  v83 = v4 ^ 1;
  return v83 & 1;
}

uint64_t sub_245EF27B8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 64))
  {
    result = PB::Writer::write(this, *(result + 56));
  }

  v4 = v3[1];
  v5 = v3[2];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v8 = v3[4];
  v7 = v3[5];
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::write(this, v9);
  }

  return result;
}

double sub_245EF283C(uint64_t a1)
{
  *a1 = &unk_2858D5A90;
  *(a1 + 44) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_245EF286C(PB::Base *this)
{
  *this = &unk_2858D5A90;
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

void sub_245EF2900(PB::Base *a1)
{
  sub_245EF286C(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EF2938(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5A90;
  *(a1 + 8) = 0u;
  *(a1 + 44) = 0;
  *(a1 + 24) = 0u;
  if (*(a2 + 32))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_245DF86C8((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  if (*(a2 + 44))
  {
    v4 = *(a2 + 40);
    *(a1 + 44) |= 1u;
    *(a1 + 40) = v4;
  }

  return a1;
}

uint64_t sub_245EF2A34(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "pose");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "velocity", v8);
  }

  if (*(a1 + 44))
  {
    PB::TextFormatter::format(this, "wasCorrected");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF2B08(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_74;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
        *(a1 + 44) |= 1u;
        v39 = *(this + 1);
        if (v39 >= *(this + 2))
        {
          v42 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v40 = v39 + 1;
          v41 = *(*this + v39);
          *(this + 1) = v40;
          v42 = v41 != 0;
        }

        *(a1 + 40) = v42;
      }

      else if (v22 == 2)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_76;
          }

          v23 = *(this + 1);
          v24 = *(this + 2);
          while (v23 < v24 && (*(this + 24) & 1) == 0)
          {
            v26 = *(a1 + 16);
            v25 = *(a1 + 24);
            if (v26 >= v25)
            {
              v28 = *(a1 + 8);
              v29 = v26 - v28;
              v30 = (v26 - v28) >> 3;
              v31 = v30 + 1;
              if ((v30 + 1) >> 61)
              {
                goto LABEL_77;
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
                sub_245DF8830(a1 + 8, v33);
              }

              v34 = (v26 - v28) >> 3;
              v35 = (8 * v30);
              v36 = (8 * v30 - 8 * v34);
              *v35 = 0;
              v27 = v35 + 1;
              memcpy(v36, v28, v29);
              v37 = *(a1 + 8);
              *(a1 + 8) = v36;
              *(a1 + 16) = v27;
              *(a1 + 24) = 0;
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

            *(a1 + 16) = v27;
            v38 = *(this + 1);
            if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(this + 2))
            {
              *(this + 24) = 1;
              break;
            }

            *(v27 - 1) = *(*this + v38);
            v24 = *(this + 2);
            v23 = *(this + 1) + 8;
            *(this + 1) = v23;
          }

          PB::Reader::recallMark();
        }

        else
        {
          v44 = *(a1 + 16);
          v43 = *(a1 + 24);
          if (v44 >= v43)
          {
            v46 = *(a1 + 8);
            v47 = v44 - v46;
            v48 = (v44 - v46) >> 3;
            v49 = v48 + 1;
            if ((v48 + 1) >> 61)
            {
LABEL_77:
              sub_245DF85A4();
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
              sub_245DF8830(a1 + 8, v51);
            }

            v52 = (v44 - v46) >> 3;
            v53 = (8 * v48);
            v54 = (8 * v48 - 8 * v52);
            *v53 = 0;
            v45 = v53 + 1;
            memcpy(v54, v46, v47);
            v55 = *(a1 + 8);
            *(a1 + 8) = v54;
            *(a1 + 16) = v45;
            *(a1 + 24) = 0;
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

          *(a1 + 16) = v45;
          v56 = *(this + 1);
          if (v56 <= 0xFFFFFFFFFFFFFFF7 && v56 + 8 <= *(this + 2))
          {
            *(v45 - 1) = *(*this + v56);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
LABEL_76:
          v57 = 0;
          return v57 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_74:
  v57 = v4 ^ 1;
  return v57 & 1;
}

uint64_t sub_245EF2FB8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  if (*(v3 + 44))
  {

    return PB::Writer::write(this);
  }

  return result;
}

double sub_245EF304C(uint64_t a1)
{
  *a1 = &unk_2858D5AC8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_245EF3080(PB::Base *this)
{
  *this = &unk_2858D5AC8;
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

void sub_245EF30F4(PB::Base *a1)
{
  sub_245EF3080(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EF312C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5AC8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  if (a1 != a2)
  {
    sub_245DF86C8(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
    sub_245DF86C8((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  }

  if (*(a2 + 60))
  {
    v5 = *(a2 + 56);
    *(a1 + 60) |= 1u;
    *(a1 + 56) = v5;
  }

  return a1;
}

uint64_t sub_245EF31D4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 60))
  {
    PB::TextFormatter::format(this, "jointName");
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "rotation", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "translation", v10);
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF329C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
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
        while (v18)
        {
          v21 = *v19;
          *(this + 1) = v20;
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
        *(this + 24) = 1;
        goto LABEL_122;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(this + 1) = v12;
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
        goto LABEL_122;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 60) |= 1u;
        v57 = *(this + 1);
        v56 = *(this + 2);
        v58 = *this;
        if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v56)
        {
          v68 = 0;
          v69 = 0;
          v61 = 0;
          v17 = v56 >= v57;
          v70 = v56 - v57;
          if (!v17)
          {
            v70 = 0;
          }

          v71 = (v58 + v57);
          v72 = v57 + 1;
          while (1)
          {
            if (!v70)
            {
              LODWORD(v61) = 0;
              *(this + 24) = 1;
              goto LABEL_107;
            }

            v73 = *v71;
            *(this + 1) = v72;
            v61 |= (v73 & 0x7F) << v68;
            if ((v73 & 0x80) == 0)
            {
              break;
            }

            v68 += 7;
            --v70;
            ++v71;
            ++v72;
            v14 = v69++ > 8;
            if (v14)
            {
LABEL_83:
              LODWORD(v61) = 0;
              goto LABEL_107;
            }
          }

          if (*(this + 24))
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
            *(this + 1) = v63;
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
              goto LABEL_83;
            }
          }
        }

LABEL_107:
        *(a1 + 56) = v61;
        goto LABEL_118;
      }

      if (v23 == 2)
      {
        break;
      }

      if (v23 == 1)
      {
        if (v22 != 2)
        {
          v75 = *(a1 + 16);
          v74 = *(a1 + 24);
          if (v75 >= v74)
          {
            v82 = *(a1 + 8);
            v83 = v75 - v82;
            v84 = (v75 - v82) >> 3;
            v85 = v84 + 1;
            if ((v84 + 1) >> 61)
            {
LABEL_125:
              sub_245DF85A4();
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
              sub_245DF8830(a1 + 8, v87);
            }

            v92 = (v75 - v82) >> 3;
            v93 = (8 * v84);
            v94 = (8 * v84 - 8 * v92);
            *v93 = 0;
            v67 = v93 + 1;
            memcpy(v94, v82, v83);
            v95 = *(a1 + 8);
            *(a1 + 8) = v94;
            *(a1 + 16) = v67;
            *(a1 + 24) = 0;
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

          *(a1 + 16) = v67;
          goto LABEL_114;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_124;
        }

        v24 = *(this + 1);
        v25 = *(this + 2);
        while (v24 < v25 && (*(this + 24) & 1) == 0)
        {
          v27 = *(a1 + 16);
          v26 = *(a1 + 24);
          if (v27 >= v26)
          {
            v29 = *(a1 + 8);
            v30 = v27 - v29;
            v31 = (v27 - v29) >> 3;
            v32 = v31 + 1;
            if ((v31 + 1) >> 61)
            {
              goto LABEL_125;
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
              sub_245DF8830(a1 + 8, v34);
            }

            v35 = (v27 - v29) >> 3;
            v36 = (8 * v31);
            v37 = (8 * v31 - 8 * v35);
            *v36 = 0;
            v28 = v36 + 1;
            memcpy(v37, v29, v30);
            v38 = *(a1 + 8);
            *(a1 + 8) = v37;
            *(a1 + 16) = v28;
            *(a1 + 24) = 0;
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

          *(a1 + 16) = v28;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(this + 2))
          {
            goto LABEL_86;
          }

          *(v28 - 1) = *(*this + v39);
          v25 = *(this + 2);
          v24 = *(this + 1) + 8;
          *(this + 1) = v24;
        }

LABEL_87:
        PB::Reader::recallMark();
        goto LABEL_118;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_124:
        v97 = 0;
        return v97 & 1;
      }

LABEL_118:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_122;
      }
    }

    if (v22 != 2)
    {
      v66 = *(a1 + 40);
      v65 = *(a1 + 48);
      if (v66 >= v65)
      {
        v76 = *(a1 + 32);
        v77 = v66 - v76;
        v78 = (v66 - v76) >> 3;
        v79 = v78 + 1;
        if ((v78 + 1) >> 61)
        {
          goto LABEL_125;
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
          sub_245DF8830(a1 + 32, v81);
        }

        v88 = (v66 - v76) >> 3;
        v89 = (8 * v78);
        v90 = (8 * v78 - 8 * v88);
        *v89 = 0;
        v67 = v89 + 1;
        memcpy(v90, v76, v77);
        v91 = *(a1 + 32);
        *(a1 + 32) = v90;
        *(a1 + 40) = v67;
        *(a1 + 48) = 0;
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

      *(a1 + 40) = v67;
LABEL_114:
      v96 = *(this + 1);
      if (v96 <= 0xFFFFFFFFFFFFFFF7 && v96 + 8 <= *(this + 2))
      {
        *(v67 - 1) = *(*this + v96);
        *(this + 1) += 8;
      }

      else
      {
        *(this + 24) = 1;
      }

      goto LABEL_118;
    }

    if (PB::Reader::placeMark())
    {
      goto LABEL_124;
    }

    v40 = *(this + 1);
    v41 = *(this + 2);
    while (v40 < v41 && (*(this + 24) & 1) == 0)
    {
      v43 = *(a1 + 40);
      v42 = *(a1 + 48);
      if (v43 >= v42)
      {
        v45 = *(a1 + 32);
        v46 = v43 - v45;
        v47 = (v43 - v45) >> 3;
        v48 = v47 + 1;
        if ((v47 + 1) >> 61)
        {
          goto LABEL_125;
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
          sub_245DF8830(a1 + 32, v50);
        }

        v51 = (v43 - v45) >> 3;
        v52 = (8 * v47);
        v53 = (8 * v47 - 8 * v51);
        *v52 = 0;
        v44 = v52 + 1;
        memcpy(v53, v45, v46);
        v54 = *(a1 + 32);
        *(a1 + 32) = v53;
        *(a1 + 40) = v44;
        *(a1 + 48) = 0;
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

      *(a1 + 40) = v44;
      v55 = *(this + 1);
      if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(this + 2))
      {
LABEL_86:
        *(this + 24) = 1;
        goto LABEL_87;
      }

      *(v44 - 1) = *(*this + v55);
      v41 = *(this + 2);
      v40 = *(this + 1) + 8;
      *(this + 1) = v40;
    }

    goto LABEL_87;
  }

LABEL_122:
  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t sub_245EF38D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 32);
  v8 = *(v3 + 40);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  if (*(v3 + 60))
  {

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_245EF3970(void *result)
{
  *result = &unk_2858D5B00;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_245EF3994(void **a1)
{
  *a1 = &unk_2858D5B00;
  v2 = a1 + 1;
  sub_245DF837C(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_245EF39F0(void **a1)
{
  *a1 = &unk_2858D5B00;
  v3 = a1 + 1;
  sub_245DF837C(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x24C194490]();
}

const void **sub_245EF3A60(const void **a1, uint64_t a2)
{
  a1[1] = 0;
  *a1 = &unk_2858D5B00;
  a1[2] = 0;
  a1[3] = 0;
  v2 = *(a2 + 8);
  if (v2 != *(a2 + 16))
  {
    sub_245EF3AD8(a1 + 1, *v2);
  }

  return a1;
}

uint64_t sub_245EF3C30(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "joint");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF3CC8(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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

      if ((v10 >> 3) == 1)
      {
        sub_245EF3E9C((a1 + 8));
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245EF4014(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_245EF4060(uint64_t result)
{
  *result = &unk_2858D5B38;
  *(result + 16) = 0;
  return result;
}

void sub_245EF4088(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EF40C0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5B38;
  *(result + 16) = 0;
  if (*(a2 + 16))
  {
    v2 = *(a2 + 8);
    *(result + 16) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_245EF40FC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 16))
  {
    PB::TextFormatter::format(this, "userActivity");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF415C(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_51;
          }

          v22 = *v20;
          *(this + 1) = v21;
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
          *(this + 1) = v12;
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
        *(a1 + 16) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v33 = v3 - v23;
          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_46;
            }

            v36 = v35;
            v37 = *v34;
            *(this + 1) = v36;
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
              v27 = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }

LABEL_45:
          v3 = v36;
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
            v3 = v29;
            *(this + 1) = v29;
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

LABEL_46:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v38 = 0;
          return v38 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_51:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_245EF43D0(uint64_t result, PB::Writer *this)
{
  if (*(result + 16))
  {
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245EF43F0(uint64_t result)
{
  *result = &unk_2858D5B70;
  *(result + 24) = 0;
  return result;
}

void sub_245EF4418(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EF4450(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5B70;
  *(a1 + 24) = 0;
  if ((*(a2 + 24) & 2) != 0)
  {
    result = *(a2 + 16);
    *(a1 + 24) = 2;
    *(a1 + 16) = result;
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
    result = *(a2 + 8);
    *(a1 + 24) = v2;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_245EF44B4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 8));
    v5 = *(a1 + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF4530(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    while (1)
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_38;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 24) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_29;
        }

        *(a1 + 16) = *(*this + v2);
LABEL_33:
        v2 = *(this + 1) + 8;
        *(this + 1) = v2;
        goto LABEL_34;
      }

      if (!PB::Reader::skip(this))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
LABEL_34:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_38;
      }
    }

    *(a1 + 24) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
    {
LABEL_29:
      *(this + 24) = 1;
      goto LABEL_34;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_33;
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245EF4730(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 24);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(this, v5);
  }

  return result;
}

uint64_t sub_245EF479C(uint64_t result)
{
  *result = &unk_2858D5BA8;
  *(result + 40) = 0;
  return result;
}

void sub_245EF47C4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EF47FC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5BA8;
  *(result + 40) = 0;
  v2 = *(a2 + 40);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 40) = 2;
    *(result + 16) = v4;
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
    v5 = *(a2 + 8);
    v3 |= 1u;
    *(result + 40) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 4u;
    *(result + 40) = v3;
    *(result + 24) = v6;
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

  v7 = *(a2 + 32);
  v3 |= 0x10u;
  *(result + 40) = v3;
  *(result + 32) = v7;
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
  v8 = *(a2 + 28);
  v3 |= 8u;
  *(result + 40) = v3;
  *(result + 28) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_16:
    v10 = *(a2 + 37);
    *(result + 40) = v3 | 0x40;
    *(result + 37) = v10;
    return result;
  }

LABEL_15:
  v9 = *(a2 + 36);
  v3 |= 0x20u;
  *(result + 40) = v3;
  *(result + 36) = v9;
  if ((*(a2 + 40) & 0x40) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_245EF48EC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "inlierCount");
    v5 = *(a1 + 40);
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

  else if ((*(a1 + 40) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "isOutlierCurrentSample");
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "isValidMeasurement");
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "range", *(a1 + 8));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "rangeFrequency", *(a1 + 28));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "rangeShift", *(a1 + 32));
  if ((*(a1 + 40) & 2) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EF4A10(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
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
            *(this + 24) = 1;
            goto LABEL_81;
          }

          v21 = *v19;
          *(this + 1) = v20;
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
          *(this + 1) = v12;
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
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            *(a1 + 40) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_56:
              *(this + 24) = 1;
              goto LABEL_77;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_70:
            v2 = *(this + 1) + 8;
LABEL_71:
            *(this + 1) = v2;
            goto LABEL_77;
          case 2:
            *(a1 + 40) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_70;
          case 3:
            *(a1 + 40) |= 4u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v35 = 0;
              v36 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v37 = v2 - v23;
              v38 = (v24 + v23);
              v39 = v23 + 1;
              while (1)
              {
                if (!v37)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_76;
                }

                v40 = v39;
                v41 = *v38;
                *(this + 1) = v40;
                v27 |= (v41 & 0x7F) << v35;
                if ((v41 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                --v37;
                ++v38;
                v39 = v40 + 1;
                v14 = v36++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_75;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_75:
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
                *(this + 1) = v29;
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

LABEL_76:
            *(a1 + 24) = v27;
            goto LABEL_77;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 0x20u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v34 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v33 = *(*this + v2++);
            *(this + 1) = v2;
            v34 = v33 != 0;
          }

          *(a1 + 36) = v34;
          goto LABEL_77;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 0x40u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v32 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v31 = *(*this + v2++);
            *(this + 1) = v2;
            v32 = v31 != 0;
          }

          *(a1 + 37) = v32;
          goto LABEL_77;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_51;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_51:
          v2 = *(this + 1) + 4;
          goto LABEL_71;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v42 = 0;
        return v42 & 1;
      }

      v2 = *(this + 1);
LABEL_77:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_81:
  v42 = v4 ^ 1;
  return v42 & 1;
}