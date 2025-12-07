uint64_t sub_19B53AB84(uint64_t result)
{
  *result = &unk_1F0E2FE38;
  *(result + 20) = 0;
  return result;
}

void sub_19B53ABAC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53ABE4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    PB::TextFormatter::format(this, "azimuthDeg", *(a1 + 8));
    v5 = *(a1 + 20);
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

  else if ((*(a1 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "elevationDeg", *(a1 + 12));
  if ((*(a1 + 20) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "l1Cn0", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53AC88(uint64_t a1, PB::Reader *this)
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
            goto LABEL_42;
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
        goto LABEL_42;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 20) |= 4u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
        {
LABEL_33:
          *(this + 24) = 1;
          goto LABEL_38;
        }

        *(a1 + 16) = *(*this + v2);
        goto LABEL_37;
      }

      if (v22 == 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
        {
          goto LABEL_33;
        }

        *(a1 + 12) = *(*this + v2);
LABEL_37:
        v2 = *(this + 1) + 4;
        *(this + 1) = v2;
        goto LABEL_38;
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_38:
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_42;
      }
    }

    *(a1 + 20) |= 1u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
      goto LABEL_33;
    }

    *(a1 + 8) = *(*this + v2);
    goto LABEL_37;
  }

LABEL_42:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B53AEC8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 2) == 0)
  {
    if ((*(result + 20) & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 20) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 12));
  v4 = *(v3 + 20);
  if (v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B53AF54(uint64_t result)
{
  *result = &unk_1F0E2F540;
  *(result + 20) = 0;
  return result;
}

void sub_19B53AF7C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53AFB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "sessionType");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53B030(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B53B2FC(uint64_t result, PB::Writer *this)
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

void *sub_19B53B368(void *result)
{
  *result = &unk_1F0E2EBA0;
  result[1] = 0;
  return result;
}

void sub_19B53B38C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53B3C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53B424(uint64_t a1, PB::Reader *this)
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
        *(a1 + 12) |= 1u;
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
              LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
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

uint64_t sub_19B53B698(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_19B53B6B8(void *result)
{
  *result = &unk_1F0E2C910;
  result[2] = 0;
  return result;
}

void sub_19B53B6E0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53B718(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp");
    v5 = *(a1 + 20);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53B794(uint64_t a1, PB::Reader *this)
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
            goto LABEL_73;
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

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v31 = *(this + 1);
        v2 = *(this + 2);
        v32 = *this;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v46 = 0;
          v47 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v48 = v3 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_68;
            }

            v51 = v50;
            v52 = *v49;
            *(this + 1) = v51;
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
              goto LABEL_67;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_67:
          v3 = v51;
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
            v3 = v37;
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

LABEL_68:
        *(a1 + 16) = v35;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 1u;
        v23 = *(this + 1);
        v2 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v39 = 0;
          v40 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(this + 1);
          }

          else
          {
            v3 = *(this + 2);
          }

          v41 = v3 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_64;
            }

            v44 = v43;
            v45 = *v42;
            *(this + 1) = v44;
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
              v27 = 0;
              goto LABEL_63;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }

LABEL_63:
          v3 = v44;
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

LABEL_64:
        *(a1 + 8) = v27;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v53 = 0;
          return v53 & 1;
        }

        v3 = *(this + 1);
        v2 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B53BB14(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if (v4)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 20);
  }

  if ((v4 & 2) != 0)
  {

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B53BB80(uint64_t result)
{
  *result = &unk_1F0E2F038;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B53BBA4(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2F038;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B53BC24(PB::Base *a1)
{
  sub_19B53BBA4(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53BC5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "motionState");
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53BCF4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_50;
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
        operator new();
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v23 = *(this + 1);
        v22 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v31 = 0;
          v32 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v33 = v22 - v23;
          if (!v17)
          {
            v33 = 0;
          }

          v34 = (v24 + v23);
          v35 = v23 + 1;
          while (1)
          {
            if (!v33)
            {
              v27 = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v36 = *v34;
            *(this + 1) = v35;
            v27 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            --v33;
            ++v34;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
LABEL_41:
              v27 = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            v27 = 0;
          }
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
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v27;
      }

      else if ((PB::Reader::skip(this) & 1) == 0)
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B53C030(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 24))
  {
    result = PB::Writer::writeVarInt(this);
  }

  v4 = *(v3 + 8);
  if (v4)
  {

    return PB::Writer::writeSubmessage(this, v4);
  }

  return result;
}

void sub_19B53C09C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53C0D4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53C134(uint64_t a1, PB::Reader *this)
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
        *(a1 + 12) |= 1u;
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
              LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
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

uint64_t sub_19B53C3A8(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B53C3C8(uint64_t result)
{
  *result = &unk_1F0E2CF30;
  *(result + 44) = 0;
  return result;
}

void sub_19B53C3F0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53C428(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "magnitudeRangeInertialVertical", *(a1 + 16));
    v5 = *(a1 + 44);
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

  else if ((*(a1 + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "maxAngleBetweenThighAndShinDeg", *(a1 + 20));
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "minAngleBetweenThighAndShinDeg", *(a1 + 24));
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "motionPlanarity", *(a1 + 28));
  v5 = *(a1 + 44);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "timeToReachMaxThighAndShinAngleThreshold", *(a1 + 32));
  v5 = *(a1 + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    if ((*(a1 + 44) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PB::TextFormatter::format(this, "timeToReachMinThighAndShinAngleThreshold", *(a1 + 36));
  v5 = *(a1 + 44);
  if (v5)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(this, "vm", *(a1 + 40));
LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53C56C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_66;
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
            *(a1 + 44) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_56:
              *(this + 24) = 1;
              goto LABEL_62;
            }

            *(a1 + 36) = *(*this + v2);
LABEL_60:
            v2 = *(this + 1) + 4;
LABEL_61:
            *(this + 1) = v2;
            goto LABEL_62;
          }

          if (v22 == 8)
          {
            *(a1 + 44) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_60;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 44) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_60;
          }

          if (v22 == 6)
          {
            *(a1 + 44) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_60;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 44) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_60;
        }

        if (v22 == 4)
        {
          *(a1 + 44) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_60;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 44) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_61;
        }

        if (v22 == 2)
        {
          *(a1 + 44) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_60;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_62:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_66:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B53C90C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 44);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 44) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 44);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 44);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 44);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = PB::Writer::write(this, *(v3 + 36));
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 44);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_17:
  v5 = *(v3 + 32);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B53CA24(uint64_t result)
{
  *result = &unk_1F0E2B8E0;
  *(result + 28) = 0;
  return result;
}

void sub_19B53CA4C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53CA84(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "maxPosterior", *(a1 + 16));
    v5 = *(a1 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "meanPosterior", *(a1 + 20));
  v5 = *(a1 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "minPosterior", *(a1 + 24));
  if (*(a1 + 28))
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53CB48(uint64_t a1, PB::Reader *this)
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
            goto LABEL_48;
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
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_44;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
LABEL_43:
          *(this + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_44:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B53CDD8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 28) & 4) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 20);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B53CE80(uint64_t result)
{
  *result = &unk_1F0E2B8A8;
  *(result + 28) = 0;
  return result;
}

void sub_19B53CEA8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53CEE0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "maxPosterior", *(a1 + 16));
    v5 = *(a1 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "meanPosterior", *(a1 + 20));
  v5 = *(a1 + 28);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "minPosterior", *(a1 + 24));
  if (*(a1 + 28))
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53CFA4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_48;
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
          *(a1 + 28) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_44;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 4;
LABEL_43:
          *(this + 1) = v2;
          goto LABEL_44;
        }

        if (v22 == 4)
        {
          *(a1 + 28) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_43;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_44:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_48:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B53D234(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 28);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 16));
      if ((*(v3 + 28) & 4) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 28) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 28);
  if ((v4 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 20);

  return PB::Writer::write(this, v5);
}

void *sub_19B53D2DC(void *result)
{
  *result = &unk_1F0E2C8D8;
  result[2] = 0;
  return result;
}

void sub_19B53D304(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53D33C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 20);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "transitionType");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53D3B8(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B53D684(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B53D6F0(uint64_t result)
{
  *result = &unk_1F0E308F0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_19B53D71C(void **a1)
{
  *a1 = &unk_1F0E308F0;
  v2 = a1 + 2;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B53D778(void **a1)
{
  *a1 = &unk_1F0E308F0;
  v3 = a1 + 2;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B53D7E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 48))
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "joint");
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53D8C0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 48) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_31;
        }

        *(a1 + 40) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_19B53DB2C((a1 + 16));
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 48) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_31:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 8) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_19B53DC9C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *(result + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 8);

    return PB::Writer::write(this, v8);
  }

  return result;
}

uint64_t sub_19B53DD34(uint64_t result)
{
  *result = &unk_1F0E2F508;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 36) = 0;
  *(result + 44) = 0;
  return result;
}

void sub_19B53DD60(PB::Base *this)
{
  *this = &unk_1F0E2F508;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B53DDC4(PB::Base *a1)
{
  sub_19B53DD60(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53DDFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_1F0E2F508;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 36) = 0;
  *(a1 + 44) = 0;
  if ((*(a2 + 44) & 2) != 0)
  {
    v5 = *(a2 + 36);
    *(a1 + 44) = 2;
    *(a1 + 36) = v5;
  }

  if (a1 != a2)
  {
    sub_19B4C4E40(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v6 = *(a2 + 44);
  if (v6)
  {
    v7 = *(a2 + 32);
    *(a1 + 44) |= 1u;
    *(a1 + 32) = v7;
    v6 = *(a2 + 44);
  }

  if ((v6 & 4) != 0)
  {
    v8 = *(a2 + 40);
    *(a1 + 44) |= 4u;
    *(a1 + 40) = v8;
  }

  return a1;
}

uint64_t sub_19B53DEC0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if (v5)
  {
    PB::TextFormatter::format(this, "confidence", *(a1 + 32));
    v5 = *(a1 + 44);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "joint");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "position", v8);
  }

  if ((*(a1 + 44) & 4) != 0)
  {
    PB::TextFormatter::format(this, "visible");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53DF94(uint64_t a1, PB::Reader *this)
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
            goto LABEL_98;
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
        goto LABEL_98;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v22 == 1)
      {
        *(a1 + 44) |= 2u;
        v44 = *(this + 1);
        v43 = *(this + 2);
        v45 = *this;
        if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43)
        {
          v53 = 0;
          v54 = 0;
          v48 = 0;
          v17 = v43 >= v44;
          v55 = v43 - v44;
          if (!v17)
          {
            v55 = 0;
          }

          v56 = (v45 + v44);
          v57 = v44 + 1;
          while (1)
          {
            if (!v55)
            {
              LODWORD(v48) = 0;
              *(this + 24) = 1;
              goto LABEL_84;
            }

            v58 = *v56;
            *(this + 1) = v57;
            v48 |= (v58 & 0x7F) << v53;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v53 += 7;
            --v55;
            ++v56;
            ++v57;
            v14 = v54++ > 8;
            if (v14)
            {
LABEL_68:
              LODWORD(v48) = 0;
              goto LABEL_84;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v48) = 0;
          }
        }

        else
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = (v45 + v44);
          v50 = v44 + 1;
          while (1)
          {
            *(this + 1) = v50;
            v51 = *v49++;
            v48 |= (v51 & 0x7F) << v46;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            ++v50;
            v14 = v47++ > 8;
            if (v14)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_84:
        *(a1 + 36) = v48;
        goto LABEL_94;
      }

      if (v22 != 2)
      {
        goto LABEL_49;
      }

      if ((v10 & 7) != 2)
      {
        v60 = *(a1 + 16);
        v59 = *(a1 + 24);
        if (v60 >= v59)
        {
          v62 = *(a1 + 8);
          v63 = v60 - v62;
          v64 = (v60 - v62) >> 2;
          v65 = v64 + 1;
          if ((v64 + 1) >> 62)
          {
LABEL_101:
            sub_19B5BE690();
          }

          v66 = v59 - v62;
          if (v66 >> 1 > v65)
          {
            v65 = v66 >> 1;
          }

          if (v66 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v67 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v67 = v65;
          }

          if (v67)
          {
            sub_19B4C4FA8(a1 + 8, v67);
          }

          v68 = (v60 - v62) >> 2;
          v69 = (4 * v64);
          v70 = (4 * v64 - 4 * v68);
          *v69 = 0;
          v61 = v69 + 1;
          memcpy(v70, v62, v63);
          v71 = *(a1 + 8);
          *(a1 + 8) = v70;
          *(a1 + 16) = v61;
          *(a1 + 24) = 0;
          if (v71)
          {
            operator delete(v71);
          }
        }

        else
        {
          *v60 = 0;
          v61 = v60 + 4;
        }

        *(a1 + 16) = v61;
        v72 = *(this + 1);
        if (v72 > 0xFFFFFFFFFFFFFFFBLL || v72 + 4 > *(this + 2))
        {
LABEL_91:
          *(this + 24) = 1;
          goto LABEL_94;
        }

        *(v61 - 1) = *(*this + v72);
        goto LABEL_93;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_100;
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
            goto LABEL_101;
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
            sub_19B4C4FA8(a1 + 8, v33);
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
LABEL_94:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_98;
      }
    }

    if (v22 == 3)
    {
      *(a1 + 44) |= 1u;
      v52 = *(this + 1);
      if (v52 > 0xFFFFFFFFFFFFFFFBLL || v52 + 4 > *(this + 2))
      {
        goto LABEL_91;
      }

      *(a1 + 32) = *(*this + v52);
LABEL_93:
      *(this + 1) += 4;
      goto LABEL_94;
    }

    if (v22 == 4)
    {
      *(a1 + 44) |= 4u;
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
      goto LABEL_94;
    }

LABEL_49:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_100:
      v73 = 0;
      return v73 & 1;
    }

    goto LABEL_94;
  }

LABEL_98:
  v73 = v4 ^ 1;
  return v73 & 1;
}

uint64_t sub_19B53E4AC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if ((*(result + 44) & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this);
  }

  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 44);
  if (v7)
  {
    result = PB::Writer::write(this, *(v3 + 32));
    v7 = *(v3 + 44);
  }

  if ((v7 & 4) != 0)
  {

    return PB::Writer::write(this);
  }

  return result;
}

void *sub_19B53E55C(void *result)
{
  *result = &unk_1F0E308B8;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

void sub_19B53E580(void **a1)
{
  *a1 = &unk_1F0E308B8;
  v2 = a1 + 1;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B53E5DC(void **a1)
{
  *a1 = &unk_1F0E308B8;
  v3 = a1 + 1;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B53E64C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "joint");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53E6E4(uint64_t a1, PB::Reader *this)
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
        sub_19B53E8B8((a1 + 8));
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

uint64_t sub_19B53EA30(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  for (i = *(result + 16); v2 != i; result = PB::Writer::writeSubmessage(this, v5))
  {
    v5 = *v2++;
  }

  return result;
}

uint64_t sub_19B53EA7C(uint64_t result)
{
  *result = &unk_1F0E2F000;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_19B53EAA8(void **a1)
{
  *a1 = &unk_1F0E2F000;
  v2 = a1 + 2;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B53EB04(void **a1)
{
  *a1 = &unk_1F0E2F000;
  v3 = a1 + 2;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B53EB74(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 48))
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "joint");
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53EC4C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 48) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_31;
        }

        *(a1 + 40) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_19B53EEB8((a1 + 16));
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 48) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_31:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 8) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_19B53F028(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *(result + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 8);

    return PB::Writer::write(this, v8);
  }

  return result;
}

double sub_19B53F0C0(uint64_t a1)
{
  *a1 = &unk_1F0E2D828;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_19B53F0EC(PB::Base *this)
{
  *this = &unk_1F0E2D828;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B53F150(PB::Base *a1)
{
  sub_19B53F0EC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53F188(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0E2D828;
  *(a1 + 8) = 0u;
  v3 = (a1 + 8);
  *(a1 + 24) = 0u;
  if (*(a2 + 36))
  {
    v4 = *(a2 + 32);
    *(a1 + 36) = 1;
    *(a1 + 32) = v4;
  }

  if (a1 != a2)
  {
    sub_19B4C4E40(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  return a1;
}

uint64_t sub_19B53F210(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 36))
  {
    PB::TextFormatter::format(this, "joint");
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "position", v7);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53F2A4(uint64_t a1, PB::Reader *this)
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

      if ((v10 >> 3) == 2)
      {
        if ((v10 & 7) == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_89;
          }

          v31 = *(this + 1);
          v32 = *(this + 2);
          while (v31 < v32 && (*(this + 24) & 1) == 0)
          {
            v34 = *(a1 + 16);
            v33 = *(a1 + 24);
            if (v34 >= v33)
            {
              v36 = *(a1 + 8);
              v37 = v34 - v36;
              v38 = (v34 - v36) >> 2;
              v39 = v38 + 1;
              if ((v38 + 1) >> 62)
              {
                goto LABEL_90;
              }

              v40 = v33 - v36;
              if (v40 >> 1 > v39)
              {
                v39 = v40 >> 1;
              }

              if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v41 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v41 = v39;
              }

              if (v41)
              {
                sub_19B4C4FA8(a1 + 8, v41);
              }

              v42 = (v34 - v36) >> 2;
              v43 = (4 * v38);
              v44 = (4 * v38 - 4 * v42);
              *v43 = 0;
              v35 = v43 + 1;
              memcpy(v44, v36, v37);
              v45 = *(a1 + 8);
              *(a1 + 8) = v44;
              *(a1 + 16) = v35;
              *(a1 + 24) = 0;
              if (v45)
              {
                operator delete(v45);
              }
            }

            else
            {
              *v34 = 0;
              v35 = v34 + 4;
            }

            *(a1 + 16) = v35;
            v46 = *(this + 1);
            if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
            {
              *(this + 24) = 1;
              break;
            }

            *(v35 - 1) = *(*this + v46);
            v32 = *(this + 2);
            v31 = *(this + 1) + 4;
            *(this + 1) = v31;
          }

          PB::Reader::recallMark();
        }

        else
        {
          v54 = *(a1 + 16);
          v53 = *(a1 + 24);
          if (v54 >= v53)
          {
            v56 = *(a1 + 8);
            v57 = v54 - v56;
            v58 = (v54 - v56) >> 2;
            v59 = v58 + 1;
            if ((v58 + 1) >> 62)
            {
LABEL_90:
              sub_19B5BE690();
            }

            v60 = v53 - v56;
            if (v60 >> 1 > v59)
            {
              v59 = v60 >> 1;
            }

            if (v60 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v61 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v61 = v59;
            }

            if (v61)
            {
              sub_19B4C4FA8(a1 + 8, v61);
            }

            v62 = (v54 - v56) >> 2;
            v63 = (4 * v58);
            v64 = (4 * v58 - 4 * v62);
            *v63 = 0;
            v55 = v63 + 1;
            memcpy(v64, v56, v57);
            v65 = *(a1 + 8);
            *(a1 + 8) = v64;
            *(a1 + 16) = v55;
            *(a1 + 24) = 0;
            if (v65)
            {
              operator delete(v65);
            }
          }

          else
          {
            *v54 = 0;
            v55 = v54 + 4;
          }

          *(a1 + 16) = v55;
          v66 = *(this + 1);
          if (v66 <= 0xFFFFFFFFFFFFFFFBLL && v66 + 4 <= *(this + 2))
          {
            *(v55 - 1) = *(*this + v66);
            *(this + 1) += 4;
          }

          else
          {
            *(this + 24) = 1;
          }
        }
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 36) |= 1u;
        v23 = *(this + 1);
        v22 = *(this + 2);
        v24 = *this;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
        {
          v47 = 0;
          v48 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v49 = v22 - v23;
          if (!v17)
          {
            v49 = 0;
          }

          v50 = (v24 + v23);
          v51 = v23 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_74;
            }

            v52 = *v50;
            *(this + 1) = v51;
            v27 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_60:
              LODWORD(v27) = 0;
              goto LABEL_74;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
          }
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
              goto LABEL_60;
            }
          }
        }

LABEL_74:
        *(a1 + 32) = v27;
      }

      else if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_89:
        v67 = 0;
        return v67 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_87:
  v67 = v4 ^ 1;
  return v67 & 1;
}

uint64_t sub_19B53F728(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 36))
  {
    result = PB::Writer::writeVarInt(this);
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    result = PB::Writer::write(this, v6);
  }

  return result;
}

uint64_t sub_19B53F78C(uint64_t result)
{
  *result = &unk_1F0E2DE10;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 48) = 0;
  return result;
}

void sub_19B53F7B8(void **a1)
{
  *a1 = &unk_1F0E2DE10;
  v2 = a1 + 2;
  sub_19B4C4D80(&v2);
  PB::Base::~Base(a1);
}

uint64_t sub_19B53F814(void **a1)
{
  *a1 = &unk_1F0E2DE10;
  v3 = a1 + 2;
  sub_19B4C4D80(&v3);
  PB::Base::~Base(a1);
  return MEMORY[0x19EAE76F0]();
}

uint64_t sub_19B53F884(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 48))
  {
    PB::TextFormatter::format(this, "globalMachtime", *(a1 + 8));
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, this, "joint");
  }

  if ((*(a1 + 48) & 2) != 0)
  {
    PB::TextFormatter::format(this, "localMachtime", *(a1 + 40));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53F95C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_40;
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
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        break;
      }

      if (v22 == 2)
      {
        *(a1 + 48) |= 2u;
        v23 = *(this + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
        {
          goto LABEL_31;
        }

        *(a1 + 40) = *(*this + v23);
LABEL_35:
        *(this + 1) += 8;
        goto LABEL_36;
      }

      if (v22 == 1)
      {
        sub_19B53E8B8((a1 + 16));
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v26 = 0;
        return v26 & 1;
      }

LABEL_36:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    *(a1 + 48) |= 1u;
    v24 = *(this + 1);
    if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
    {
LABEL_31:
      *(this + 24) = 1;
      goto LABEL_36;
    }

    *(a1 + 8) = *(*this + v24);
    goto LABEL_35;
  }

LABEL_40:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_19B53FBC8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *(result + 24);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6);
  }

  v7 = *(v3 + 48);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v7 = *(v3 + 48);
  }

  if (v7)
  {
    v8 = *(v3 + 8);

    return PB::Writer::write(this, v8);
  }

  return result;
}

double sub_19B53FC60(uint64_t a1)
{
  *a1 = &unk_1F0E2FE00;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_19B53FC94(PB::Base *this)
{
  *this = &unk_1F0E2FE00;
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

void sub_19B53FD08(PB::Base *a1)
{
  sub_19B53FC94(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B53FD40(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F0E2FE00;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  if (*(a2 + 60))
  {
    v5 = *(a2 + 56);
    *(a1 + 60) = 1;
    *(a1 + 56) = v5;
  }

  if (a1 != a2)
  {
    sub_19B4C4E40(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    sub_19B4C4E40((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  }

  return a1;
}

uint64_t sub_19B53FDE4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 60))
  {
    PB::TextFormatter::format(this, "joint");
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "position", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "quaternion", v10);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B53FEAC(uint64_t a1, PB::Reader *this)
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
        break;
      }

      if (v23 == 2)
      {
        if (v22 != 2)
        {
          v66 = *(a1 + 16);
          v65 = *(a1 + 24);
          if (v66 >= v65)
          {
            v76 = *(a1 + 8);
            v77 = v66 - v76;
            v78 = (v66 - v76) >> 2;
            v79 = v78 + 1;
            if ((v78 + 1) >> 62)
            {
              goto LABEL_125;
            }

            v80 = v65 - v76;
            if (v80 >> 1 > v79)
            {
              v79 = v80 >> 1;
            }

            if (v80 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v81 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v81 = v79;
            }

            if (v81)
            {
              sub_19B4C4FA8(a1 + 8, v81);
            }

            v88 = (v66 - v76) >> 2;
            v89 = (4 * v78);
            v90 = (4 * v78 - 4 * v88);
            *v89 = 0;
            v67 = v89 + 1;
            memcpy(v90, v76, v77);
            v91 = *(a1 + 8);
            *(a1 + 8) = v90;
            *(a1 + 16) = v67;
            *(a1 + 24) = 0;
            if (v91)
            {
              operator delete(v91);
            }
          }

          else
          {
            *v66 = 0;
            v67 = v66 + 4;
          }

          *(a1 + 16) = v67;
LABEL_114:
          v96 = *(this + 1);
          if (v96 <= 0xFFFFFFFFFFFFFFFBLL && v96 + 4 <= *(this + 2))
          {
            *(v67 - 1) = *(*this + v96);
            *(this + 1) += 4;
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

        v33 = *(this + 1);
        v34 = *(this + 2);
        while (v33 < v34 && (*(this + 24) & 1) == 0)
        {
          v36 = *(a1 + 16);
          v35 = *(a1 + 24);
          if (v36 >= v35)
          {
            v38 = *(a1 + 8);
            v39 = v36 - v38;
            v40 = (v36 - v38) >> 2;
            v41 = v40 + 1;
            if ((v40 + 1) >> 62)
            {
              goto LABEL_125;
            }

            v42 = v35 - v38;
            if (v42 >> 1 > v41)
            {
              v41 = v42 >> 1;
            }

            if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v43 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v43 = v41;
            }

            if (v43)
            {
              sub_19B4C4FA8(a1 + 8, v43);
            }

            v44 = (v36 - v38) >> 2;
            v45 = (4 * v40);
            v46 = (4 * v40 - 4 * v44);
            *v45 = 0;
            v37 = v45 + 1;
            memcpy(v46, v38, v39);
            v47 = *(a1 + 8);
            *(a1 + 8) = v46;
            *(a1 + 16) = v37;
            *(a1 + 24) = 0;
            if (v47)
            {
              operator delete(v47);
            }
          }

          else
          {
            *v36 = 0;
            v37 = v36 + 4;
          }

          *(a1 + 16) = v37;
          v48 = *(this + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
          {
            goto LABEL_86;
          }

          *(v37 - 1) = *(*this + v48);
          v34 = *(this + 2);
          v33 = *(this + 1) + 4;
          *(this + 1) = v33;
        }

LABEL_87:
        PB::Reader::recallMark();
        goto LABEL_118;
      }

      if (v23 == 1)
      {
        *(a1 + 60) |= 1u;
        v25 = *(this + 1);
        v24 = *(this + 2);
        v26 = *this;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v68 = 0;
          v69 = 0;
          v29 = 0;
          v17 = v24 >= v25;
          v70 = v24 - v25;
          if (!v17)
          {
            v70 = 0;
          }

          v71 = (v26 + v25);
          v72 = v25 + 1;
          while (1)
          {
            if (!v70)
            {
              LODWORD(v29) = 0;
              *(this + 24) = 1;
              goto LABEL_107;
            }

            v73 = *v71;
            *(this + 1) = v72;
            v29 |= (v73 & 0x7F) << v68;
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
              LODWORD(v29) = 0;
              goto LABEL_107;
            }
          }

          if (*(this + 24))
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
              goto LABEL_83;
            }
          }
        }

LABEL_107:
        *(a1 + 56) = v29;
      }

      else if ((PB::Reader::skip(this) & 1) == 0)
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
      v75 = *(a1 + 40);
      v74 = *(a1 + 48);
      if (v75 >= v74)
      {
        v82 = *(a1 + 32);
        v83 = v75 - v82;
        v84 = (v75 - v82) >> 2;
        v85 = v84 + 1;
        if ((v84 + 1) >> 62)
        {
LABEL_125:
          sub_19B5BE690();
        }

        v86 = v74 - v82;
        if (v86 >> 1 > v85)
        {
          v85 = v86 >> 1;
        }

        if (v86 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v87 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v85;
        }

        if (v87)
        {
          sub_19B4C4FA8(a1 + 32, v87);
        }

        v92 = (v75 - v82) >> 2;
        v93 = (4 * v84);
        v94 = (4 * v84 - 4 * v92);
        *v93 = 0;
        v67 = v93 + 1;
        memcpy(v94, v82, v83);
        v95 = *(a1 + 32);
        *(a1 + 32) = v94;
        *(a1 + 40) = v67;
        *(a1 + 48) = 0;
        if (v95)
        {
          operator delete(v95);
        }
      }

      else
      {
        *v75 = 0;
        v67 = v75 + 4;
      }

      *(a1 + 40) = v67;
      goto LABEL_114;
    }

    if (PB::Reader::placeMark())
    {
      goto LABEL_124;
    }

    v49 = *(this + 1);
    v50 = *(this + 2);
    while (v49 < v50 && (*(this + 24) & 1) == 0)
    {
      v52 = *(a1 + 40);
      v51 = *(a1 + 48);
      if (v52 >= v51)
      {
        v54 = *(a1 + 32);
        v55 = v52 - v54;
        v56 = (v52 - v54) >> 2;
        v57 = v56 + 1;
        if ((v56 + 1) >> 62)
        {
          goto LABEL_125;
        }

        v58 = v51 - v54;
        if (v58 >> 1 > v57)
        {
          v57 = v58 >> 1;
        }

        if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v59 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v59 = v57;
        }

        if (v59)
        {
          sub_19B4C4FA8(a1 + 32, v59);
        }

        v60 = (v52 - v54) >> 2;
        v61 = (4 * v56);
        v62 = (4 * v56 - 4 * v60);
        *v61 = 0;
        v53 = v61 + 1;
        memcpy(v62, v54, v55);
        v63 = *(a1 + 32);
        *(a1 + 32) = v62;
        *(a1 + 40) = v53;
        *(a1 + 48) = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        *v52 = 0;
        v53 = v52 + 4;
      }

      *(a1 + 40) = v53;
      v64 = *(this + 1);
      if (v64 > 0xFFFFFFFFFFFFFFFBLL || v64 + 4 > *(this + 2))
      {
LABEL_86:
        *(this + 24) = 1;
        goto LABEL_87;
      }

      *(v53 - 1) = *(*this + v64);
      v50 = *(this + 2);
      v49 = *(this + 1) + 4;
      *(this + 1) = v49;
    }

    goto LABEL_87;
  }

LABEL_122:
  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t sub_19B5404E0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 60))
  {
    result = PB::Writer::writeVarInt(this);
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

uint64_t sub_19B540564(uint64_t result)
{
  *result = &unk_1F0E2E708;
  *(result + 20) = 0;
  return result;
}

void sub_19B54058C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5405C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "rms", *(a1 + 16));
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B540640(uint64_t a1, PB::Reader *this)
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
        *(a1 + 20) |= 1u;
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
              v26 = 0;
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
              v26 = 0;
              goto LABEL_48;
            }
          }

          if (*(this + 24))
          {
            v26 = 0;
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
              v26 = 0;
              break;
            }
          }
        }

LABEL_49:
        *(a1 + 8) = v26;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v2);
          v2 = *(this + 1) + 4;
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

uint64_t sub_19B54090C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 20);
  }

  if (v4)
  {

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

void *sub_19B540978(void *result)
{
  *result = &unk_1F0E30308;
  result[2] = 0;
  return result;
}

void sub_19B5409A0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5409D8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "event");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B540A54(uint64_t a1, PB::Reader *this)
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

      else if ((v10 >> 3) == 1)
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

uint64_t sub_19B540D20(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 20);
  }

  if (v4)
  {
    v5 = *(v3 + 8);

    return PB::Writer::write(this, v5);
  }

  return result;
}

uint64_t sub_19B540D8C(uint64_t result)
{
  *result = &unk_1F0E2F4D0;
  *(result + 60) = 0;
  return result;
}

void sub_19B540DB4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B540DEC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 60);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "isBlockoutPeriodLow");
    v5 = *(a1 + 60);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "isBlockoutPeriodVeryLow");
  v5 = *(a1 + 60);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "isSampleRecent");
  v5 = *(a1 + 60);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "percentLow", *(a1 + 8));
  v5 = *(a1 + 60);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "percentOK", *(a1 + 16));
  v5 = *(a1 + 60);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "percentVeryLow", *(a1 + 24));
  v5 = *(a1 + 60);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  v5 = *(a1 + 60);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "totalValidDuration", *(a1 + 40));
  v5 = *(a1 + 60);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "userHasOnboarded");
  v5 = *(a1 + 60);
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_25:
  PB::TextFormatter::format(this, "value");
  if ((*(a1 + 60) & 0x400) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "writtenToHealthKit");
  }

LABEL_13:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B540F90(uint64_t a1, PB::Reader *this)
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
            goto LABEL_99;
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
            *(a1 + 60) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_67:
              *(this + 24) = 1;
              goto LABEL_95;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_89;
          }

          if (v22 == 2)
          {
            *(a1 + 60) |= 0x20u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v41 = 0;
              v42 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v43 = v2 - v25;
              v44 = (v26 + v25);
              v45 = v25 + 1;
              while (1)
              {
                if (!v43)
                {
                  LODWORD(v29) = 0;
                  *(this + 24) = 1;
                  goto LABEL_94;
                }

                v46 = v45;
                v47 = *v44;
                *(this + 1) = v46;
                v29 |= (v47 & 0x7F) << v41;
                if ((v47 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                --v43;
                ++v44;
                v45 = v46 + 1;
                v14 = v42++ > 8;
                if (v14)
                {
                  LODWORD(v29) = 0;
                  goto LABEL_93;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v29) = 0;
              }

LABEL_93:
              v2 = v46;
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

LABEL_94:
            *(a1 + 48) = v29;
            goto LABEL_95;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              *(a1 + 60) |= 0x200u;
              v2 = *(this + 1);
              if (v2 >= *(this + 2))
              {
                v38 = 0;
                *(this + 24) = 1;
              }

              else
              {
                v37 = *(*this + v2++);
                *(this + 1) = v2;
                v38 = v37 != 0;
              }

              *(a1 + 55) = v38;
              goto LABEL_95;
            case 4:
              *(a1 + 60) |= 0x400u;
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

              *(a1 + 56) = v34;
              goto LABEL_95;
            case 5:
              *(a1 + 60) |= 0x40u;
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

              *(a1 + 52) = v24;
              goto LABEL_95;
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            *(a1 + 60) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_89;
          case 0xA:
            *(a1 + 60) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_89;
          case 0xB:
            *(a1 + 60) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_89;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 60) |= 0x80u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v40 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v39 = *(*this + v2++);
              *(this + 1) = v2;
              v40 = v39 != 0;
            }

            *(a1 + 53) = v40;
            goto LABEL_95;
          case 7:
            *(a1 + 60) |= 0x100u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v36 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v35 = *(*this + v2++);
              *(this + 1) = v2;
              v36 = v35 != 0;
            }

            *(a1 + 54) = v36;
            goto LABEL_95;
          case 8:
            *(a1 + 60) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_67;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_89:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_95;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v48 = 0;
        return v48 & 1;
      }

      v2 = *(this + 1);
LABEL_95:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_99:
  v48 = v4 ^ 1;
  return v48 & 1;
}

uint64_t sub_19B5414F0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 60);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 60);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this);
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    result = PB::Writer::write(this, *(v3 + 24));
    if ((*(v3 + 60) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_23;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 60);
  if ((v4 & 4) != 0)
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

uint64_t sub_19B54165C(uint64_t result)
{
  *result = &unk_1F0E2C0F8;
  *(result + 40) = 0;
  return result;
}

void sub_19B541684(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5416BC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "intermediateBoutsAsymmetryPercentageCv", *(a1 + 8));
    v5 = *(a1 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "intermediateBoutsAsymmetryPercentageMedian", *(a1 + 16));
  v5 = *(a1 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "intermediateBoutsDoubleSupportPercentageMedian", *(a1 + 24));
  if ((*(a1 + 40) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "intermediateBoutsDoubleSupportPercentageStd", *(a1 + 32));
  }

LABEL_6:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B541780(uint64_t a1, PB::Reader *this)
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
            goto LABEL_47;
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
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_40:
            *(this + 24) = 1;
            goto LABEL_43;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 4)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_42;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 40) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_40;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_43:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_47:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B541A08(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 40);
    if ((v4 & 1) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 24));
      if ((*(v3 + 40) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 40) & 1) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 40);
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
  v5 = *(v3 + 32);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B541AB0(uint64_t result)
{
  *result = &unk_1F0E2B9C0;
  *(result + 176) = 0;
  return result;
}

void sub_19B541AD8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B541B10(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 176);
  if (v5)
  {
    PB::TextFormatter::format(this, "allBoutsBoutDurationSecCv", *(a1 + 8));
    v5 = *(a1 + 176);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "allBoutsBoutDurationSecMedian", *(a1 + 16));
  v5 = *(a1 + 176);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "allBoutsCycleTimeCv", *(a1 + 24));
  v5 = *(a1 + 176);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "intermediateBoutsCycleTimeCv", *(a1 + 32));
  v5 = *(a1 + 176);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "intermediateBoutsCycleTimeMedian", *(a1 + 40));
  v5 = *(a1 + 176);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "intermediateBoutsDoubleSupportPercentageMedian", *(a1 + 48));
  v5 = *(a1 + 176);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "intermediateBoutsStepLengthCv", *(a1 + 56));
  v5 = *(a1 + 176);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "intermediateBoutsStepLengthMedian", *(a1 + 64));
  v5 = *(a1 + 176);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "intermediateBoutsStepLengthMedianHeightnorm", *(a1 + 72));
  v5 = *(a1 + 176);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "intermediateBoutsWalkingSpeedCv", *(a1 + 80));
  v5 = *(a1 + 176);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "intermediateBoutsWalkingSpeedMedian", *(a1 + 88));
  v5 = *(a1 + 176);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "intermediateBoutsWalkingSpeedMedianSqrtheightnorm", *(a1 + 96));
  v5 = *(a1 + 176);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "longBoutsWalkingSpeedCountRatioLog", *(a1 + 104));
  v5 = *(a1 + 176);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "shortBoutsCycleTimeCv", *(a1 + 112));
  v5 = *(a1 + 176);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "shortBoutsCycleTimeMedian", *(a1 + 120));
  v5 = *(a1 + 176);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "shortBoutsDoubleSupportPercentageMedian", *(a1 + 128));
  v5 = *(a1 + 176);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "shortBoutsStepLengthCv", *(a1 + 136));
  v5 = *(a1 + 176);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "shortBoutsStepLengthMedianHeightnorm", *(a1 + 144));
  v5 = *(a1 + 176);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "shortBoutsWalkingSpeedCv", *(a1 + 152));
  v5 = *(a1 + 176);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_45:
  PB::TextFormatter::format(this, "shortBoutsWalkingSpeedMedian", *(a1 + 160));
  if ((*(a1 + 176) & 0x100000) != 0)
  {
LABEL_22:
    PB::TextFormatter::format(this, "shortBoutsWalkingSpeedMedianSqrtheightnorm", *(a1 + 168));
  }

LABEL_23:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B541DF4(uint64_t a1, PB::Reader *this)
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
        break;
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
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_94;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 176) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_89;
        case 2u:
          *(a1 + 176) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_89;
        case 3u:
          *(a1 + 176) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_89;
        case 4u:
          *(a1 + 176) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_89;
        case 5u:
          *(a1 + 176) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_89;
        case 6u:
          *(a1 + 176) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_89;
        case 7u:
          *(a1 + 176) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_89;
        case 8u:
          *(a1 + 176) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_89;
        case 9u:
          *(a1 + 176) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_89;
        case 0xAu:
          *(a1 + 176) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_89;
        case 0xBu:
          *(a1 + 176) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_89;
        case 0xCu:
          *(a1 + 176) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_89;
        case 0xDu:
          *(a1 + 176) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_89;
        case 0xEu:
          *(a1 + 176) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_89;
        case 0xFu:
          *(a1 + 176) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_89;
        case 0x10u:
          *(a1 + 176) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_89;
        case 0x11u:
          *(a1 + 176) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_89;
        case 0x12u:
          *(a1 + 176) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_89;
        case 0x13u:
          *(a1 + 176) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_89;
        case 0x14u:
          *(a1 + 176) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_89;
        case 0x15u:
          *(a1 + 176) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_87:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 104) = *(*this + v2);
LABEL_89:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_90;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_90:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_94;
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
  }

LABEL_94:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B542438(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 176);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 176);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 176);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 176);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 176);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 176);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 176);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 176);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 176);
  if ((v4 & 0x40) == 0)
  {
LABEL_10:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 176);
  if ((v4 & 0x20) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 176);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 176);
  if ((v4 & 0x100) == 0)
  {
LABEL_13:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 176);
  if ((v4 & 0x80000) == 0)
  {
LABEL_14:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 176);
  if ((v4 & 0x100000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 176);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 176);
  if ((v4 & 0x4000) == 0)
  {
LABEL_17:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 176);
  if ((v4 & 0x8000) == 0)
  {
LABEL_18:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 176);
  if ((v4 & 0x40000) == 0)
  {
LABEL_19:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 176);
  if ((v4 & 0x2000) == 0)
  {
LABEL_20:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

LABEL_42:
    result = PB::Writer::write(this, *(v3 + 136));
    if ((*(v3 + 176) & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_43;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 176);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_42;
  }

LABEL_21:
  if ((v4 & 0x1000) == 0)
  {
    return result;
  }

LABEL_43:
  v5 = *(v3 + 104);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5426BC(uint64_t result)
{
  *result = &unk_1F0E2BD08;
  *(result + 88) = 0;
  return result;
}

void sub_19B5426E4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54271C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 88);
  if (v5)
  {
    PB::TextFormatter::format(this, "asymmetryPercentageMedian", *(a1 + 8));
    v5 = *(a1 + 88);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "asymmetryPercentageStd", *(a1 + 16));
  v5 = *(a1 + 88);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "doubleSupportPercentageMedian", *(a1 + 24));
  v5 = *(a1 + 88);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "height", *(a1 + 32));
  v5 = *(a1 + 88);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "intermediateBoutsStepLengthQ95Heightnorm", *(a1 + 40));
  v5 = *(a1 + 88);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "intermediateBoutsWalkingSpeedQ95Sqrtheightnorm", *(a1 + 48));
  v5 = *(a1 + 88);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "modelOutputBalancePrior", *(a1 + 56));
  v5 = *(a1 + 88);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "stepLengthMedian", *(a1 + 64));
  v5 = *(a1 + 88);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(this, "stepLengthXWalkingSpeedMedian", *(a1 + 72));
  if ((*(a1 + 88) & 0x200) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "walkingSpeedMedian", *(a1 + 80));
  }

LABEL_12:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5428A0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_73;
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
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 88) |= 0x100u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_64:
              *(this + 24) = 1;
              goto LABEL_69;
            }

            *(a1 + 72) = *(*this + v2);
            goto LABEL_68;
          }

          if (v22 == 7)
          {
            *(a1 + 88) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_68;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 88) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 56) = *(*this + v2);
              goto LABEL_68;
            case 9:
              *(a1 + 88) |= 0x10u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 40) = *(*this + v2);
              goto LABEL_68;
            case 0xA:
              *(a1 + 88) |= 0x20u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_64;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_68;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 88) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_68;
        }

        if (v22 == 2)
        {
          *(a1 + 88) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_64;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_68;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 88) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_68;
          case 4:
            *(a1 + 88) |= 0x80u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 64) = *(*this + v2);
            goto LABEL_68;
          case 5:
            *(a1 + 88) |= 0x200u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_64;
            }

            *(a1 + 80) = *(*this + v2);
LABEL_68:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_69;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_69:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B542CB8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 88);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 88);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 88);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 88);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 88);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 88);
  if ((v4 & 0x100) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 88);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 88);
  if ((v4 & 0x40) == 0)
  {
LABEL_9:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = PB::Writer::write(this, *(v3 + 40));
    if ((*(v3 + 88) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 88);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_21:
  v5 = *(v3 + 48);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B542E08(uint64_t result)
{
  *result = &unk_1F0E393E0;
  *(result + 248) = 0;
  return result;
}

void sub_19B542E30(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B542E68(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 248);
  if (v5)
  {
    PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApCv", *(a1 + 8));
    v5 = *(a1 + 248);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApMean", *(a1 + 16));
  v5 = *(a1 + 248);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApMedian", *(a1 + 24));
  v5 = *(a1 + 248);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApQ5", *(a1 + 32));
  v5 = *(a1 + 248);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityApQ95", *(a1 + 40));
  v5 = *(a1 + 248);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlCv", *(a1 + 48));
  v5 = *(a1 + 248);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlMean", *(a1 + 56));
  v5 = *(a1 + 248);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlMedian", *(a1 + 64));
  v5 = *(a1 + 248);
  if ((v5 & 0x100) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlQ5", *(a1 + 72));
  v5 = *(a1 + 248);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityMlQ95", *(a1 + 80));
  v5 = *(a1 + 248);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtCv", *(a1 + 88));
  v5 = *(a1 + 248);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtMean", *(a1 + 96));
  v5 = *(a1 + 248);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtMedian", *(a1 + 104));
  v5 = *(a1 + 248);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtQ5", *(a1 + 112));
  v5 = *(a1 + 248);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "allBoutsStepIndexOfHarmonicityVtQ95", *(a1 + 120));
  v5 = *(a1 + 248);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApCv", *(a1 + 128));
  v5 = *(a1 + 248);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApMean", *(a1 + 136));
  v5 = *(a1 + 248);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApMedian", *(a1 + 144));
  v5 = *(a1 + 248);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApQ5", *(a1 + 152));
  v5 = *(a1 + 248);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityApQ95", *(a1 + 160));
  v5 = *(a1 + 248);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlCv", *(a1 + 168));
  v5 = *(a1 + 248);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlMean", *(a1 + 176));
  v5 = *(a1 + 248);
  if ((v5 & 0x400000) == 0)
  {
LABEL_24:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlMedian", *(a1 + 184));
  v5 = *(a1 + 248);
  if ((v5 & 0x800000) == 0)
  {
LABEL_25:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlQ5", *(a1 + 192));
  v5 = *(a1 + 248);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityMlQ95", *(a1 + 200));
  v5 = *(a1 + 248);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtCv", *(a1 + 208));
  v5 = *(a1 + 248);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtMean", *(a1 + 216));
  v5 = *(a1 + 248);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtMedian", *(a1 + 224));
  v5 = *(a1 + 248);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_63:
  PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtQ5", *(a1 + 232));
  if ((*(a1 + 248) & 0x20000000) != 0)
  {
LABEL_31:
    PB::TextFormatter::format(this, "allBoutsSwingIndexOfHarmonicityVtQ95", *(a1 + 240));
  }

LABEL_32:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54326C(uint64_t a1, PB::Reader *this)
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
        break;
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
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        goto LABEL_121;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 248) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_116;
        case 2u:
          *(a1 + 248) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_116;
        case 3u:
          *(a1 + 248) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_116;
        case 4u:
          *(a1 + 248) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_116;
        case 5u:
          *(a1 + 248) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_116;
        case 6u:
          *(a1 + 248) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_116;
        case 7u:
          *(a1 + 248) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_116;
        case 8u:
          *(a1 + 248) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_116;
        case 9u:
          *(a1 + 248) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_116;
        case 0xAu:
          *(a1 + 248) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_116;
        case 0xBu:
          *(a1 + 248) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_116;
        case 0xCu:
          *(a1 + 248) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_116;
        case 0xDu:
          *(a1 + 248) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_116;
        case 0xEu:
          *(a1 + 248) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 112) = *(*this + v2);
          goto LABEL_116;
        case 0xFu:
          *(a1 + 248) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_116;
        case 0x10u:
          *(a1 + 248) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_116;
        case 0x11u:
          *(a1 + 248) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_116;
        case 0x12u:
          *(a1 + 248) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_116;
        case 0x13u:
          *(a1 + 248) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_116;
        case 0x14u:
          *(a1 + 248) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_116;
        case 0x15u:
          *(a1 + 248) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_116;
        case 0x16u:
          *(a1 + 248) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 176) = *(*this + v2);
          goto LABEL_116;
        case 0x17u:
          *(a1 + 248) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 184) = *(*this + v2);
          goto LABEL_116;
        case 0x18u:
          *(a1 + 248) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 192) = *(*this + v2);
          goto LABEL_116;
        case 0x19u:
          *(a1 + 248) |= 0x1000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 200) = *(*this + v2);
          goto LABEL_116;
        case 0x1Au:
          *(a1 + 248) |= 0x4000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 216) = *(*this + v2);
          goto LABEL_116;
        case 0x1Bu:
          *(a1 + 248) |= 0x8000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 224) = *(*this + v2);
          goto LABEL_116;
        case 0x1Cu:
          *(a1 + 248) |= 0x10000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 232) = *(*this + v2);
          goto LABEL_116;
        case 0x1Du:
          *(a1 + 248) |= 0x20000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_114;
          }

          *(a1 + 240) = *(*this + v2);
          goto LABEL_116;
        case 0x1Eu:
          *(a1 + 248) |= 0x2000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_114:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 208) = *(*this + v2);
LABEL_116:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_117;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_117:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_121;
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
  }

LABEL_121:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_19B543AA0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 248);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 248);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 248);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 248);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 248);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 248);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 248);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 248);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 248);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 248);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 248);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 248);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 248);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 248);
  if ((v4 & 0x2000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 112));
  v4 = *(v3 + 248);
  if ((v4 & 0x4000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 248);
  if ((v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 248);
  if ((v4 & 0x10000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 248);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 248);
  if ((v4 & 0x40000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 152));
  v4 = *(v3 + 248);
  if ((v4 & 0x80000) == 0)
  {
LABEL_21:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 248);
  if ((v4 & 0x100000) == 0)
  {
LABEL_22:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 248);
  if ((v4 & 0x200000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 248);
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 248);
  if ((v4 & 0x800000) == 0)
  {
LABEL_25:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::write(this, *(v3 + 192));
  v4 = *(v3 + 248);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::write(this, *(v3 + 200));
  v4 = *(v3 + 248);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 216));
  v4 = *(v3 + 248);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_28:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 224));
  v4 = *(v3 + 248);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    result = PB::Writer::write(this, *(v3 + 240));
    if ((*(v3 + 248) & 0x2000000) == 0)
    {
      return result;
    }

    goto LABEL_61;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 232));
  v4 = *(v3 + 248);
  if ((v4 & 0x20000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_30:
  if ((v4 & 0x2000000) == 0)
  {
    return result;
  }

LABEL_61:
  v5 = *(v3 + 208);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B543E20(uint64_t result)
{
  *result = &unk_1F0E2D7F0;
  *(result + 52) = 0;
  return result;
}

void sub_19B543E48(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B543E80(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 52);
  if (v5)
  {
    PB::TextFormatter::format(this, "likelihoodNotOK", *(a1 + 8));
    v5 = *(a1 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 52) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "likelihoodOK", *(a1 + 16));
  v5 = *(a1 + 52);
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
  PB::TextFormatter::format(this, "numDaysWithDataLast30Days");
  v5 = *(a1 + 52);
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
  PB::TextFormatter::format(this, "numDaysWithDataLast7Days");
  v5 = *(a1 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "numValidBouts28Days");
  v5 = *(a1 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(this, "rawSteadiness", *(a1 + 24));
    if ((*(a1 + 52) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PB::TextFormatter::format(this, "numValidBouts7Days");
  v5 = *(a1 + 52);
  if ((v5 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PB::TextFormatter::format(this, "rejectionStatus");
LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}