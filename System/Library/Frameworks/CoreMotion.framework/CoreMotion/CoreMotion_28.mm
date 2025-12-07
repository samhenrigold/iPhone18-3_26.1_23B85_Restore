uint64_t sub_19B54C5B0(uint64_t result)
{
  *result = &unk_1F0E394C0;
  *(result + 92) = 0;
  return result;
}

void sub_19B54C5D8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54C610(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "binormalX", *(a1 + 16));
    v5 = *(a1 + 92);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "binormalY", *(a1 + 20));
  v5 = *(a1 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "binormalZ", *(a1 + 24));
  v5 = *(a1 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "centerFrequency", *(a1 + 28));
  v5 = *(a1 + 92);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "curvature", *(a1 + 32));
  v5 = *(a1 + 92);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "curveX", *(a1 + 36));
  v5 = *(a1 + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "curveY", *(a1 + 40));
  v5 = *(a1 + 92);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "curveZ", *(a1 + 44));
  v5 = *(a1 + 92);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "idxFilter");
  v5 = *(a1 + 92);
  if ((v5 & 0x80000) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "normalX", *(a1 + 52));
  v5 = *(a1 + 92);
  if ((v5 & 0x800) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "normalY", *(a1 + 56));
  v5 = *(a1 + 92);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "normalZ", *(a1 + 60));
  v5 = *(a1 + 92);
  if ((v5 & 0x2000) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "parametricSpeed", *(a1 + 64));
  v5 = *(a1 + 92);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "tangentX", *(a1 + 68));
  v5 = *(a1 + 92);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "tangentY", *(a1 + 72));
  v5 = *(a1 + 92);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "tangentZ", *(a1 + 76));
  v5 = *(a1 + 92);
  if ((v5 & 1) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 92);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_43:
  PB::TextFormatter::format(this, "torsion", *(a1 + 80));
  if ((*(a1 + 92) & 0x40000) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(this, "uncertainty", *(a1 + 84));
  }

LABEL_22:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54C8D4(uint64_t a1, PB::Reader *this)
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
        goto LABEL_110;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 92) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 8) = *(*this + v2);
          v2 = *(this + 1) + 8;
          goto LABEL_100;
        case 2u:
          *(a1 + 92) |= 0x200u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v34 = v2 - v24;
            v35 = (v25 + v24);
            v36 = v24 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_108;
              }

              v37 = v36;
              v38 = *v35;
              *(this + 1) = v37;
              v28 |= (v38 & 0x7F) << v32;
              if ((v38 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              --v34;
              ++v35;
              v36 = v37 + 1;
              v14 = v33++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_107:
                v2 = v37;
                goto LABEL_108;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_107;
          }

          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          do
          {
            v2 = v30;
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_108;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_108:
          *(a1 + 48) = v28;
          goto LABEL_101;
        case 3u:
          *(a1 + 92) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_99;
        case 4u:
          *(a1 + 92) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v23 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v22 = *(*this + v2++);
            *(this + 1) = v2;
            v23 = v22 != 0;
          }

          *(a1 + 88) = v23;
          goto LABEL_101;
        case 5u:
          *(a1 + 92) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_99;
        case 6u:
          *(a1 + 92) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_99;
        case 7u:
          *(a1 + 92) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_99;
        case 8u:
          *(a1 + 92) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_99;
        case 9u:
          *(a1 + 92) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_99;
        case 0xAu:
          *(a1 + 92) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_99;
        case 0xBu:
          *(a1 + 92) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_99;
        case 0xCu:
          *(a1 + 92) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_99;
        case 0xDu:
          *(a1 + 92) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_99;
        case 0xEu:
          *(a1 + 92) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_99;
        case 0xFu:
          *(a1 + 92) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_99;
        case 0x10u:
          *(a1 + 92) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_99;
        case 0x11u:
          *(a1 + 92) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_99;
        case 0x12u:
          *(a1 + 92) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_99;
        case 0x13u:
          *(a1 + 92) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_87;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_99;
        case 0x14u:
          *(a1 + 92) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(this + 2))
          {
            *(a1 + 84) = *(*this + v2);
LABEL_99:
            v2 = *(this + 1) + 4;
LABEL_100:
            *(this + 1) = v2;
          }

          else
          {
LABEL_87:
            *(this + 24) = 1;
          }

          goto LABEL_101;
        default:
          if (!PB::Reader::skip(this))
          {
            v39 = 0;
            return v39 & 1;
          }

          v2 = *(this + 1);
LABEL_101:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_110;
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

LABEL_110:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_19B54CFC0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 92);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 92);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 92);
  if ((v4 & 0x4000) == 0)
  {
LABEL_9:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 92);
  if ((v4 & 0x8000) == 0)
  {
LABEL_10:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 92);
  if ((v4 & 0x10000) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 92);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 92);
  if ((v4 & 0x1000) == 0)
  {
LABEL_14:
    if ((v4 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_15:
    if ((v4 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_16:
    if ((v4 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 92);
  if ((v4 & 8) == 0)
  {
LABEL_17:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 92);
  if ((v4 & 0x2000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 0x20) == 0)
  {
LABEL_19:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 92) & 0x40000) == 0)
    {
      return result;
    }

    goto LABEL_41;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 92);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((v4 & 0x40000) == 0)
  {
    return result;
  }

LABEL_41:
  v5 = *(v3 + 84);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B54D228(uint64_t result)
{
  *result = &unk_1F0E2B1A0;
  *(result + 36) = -1;
  *(result + 44) = 0;
  return result;
}

void sub_19B54D258(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54D290(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "location");
    v5 = *(a1 + 44);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 44) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "peakHalfWidth", *(a1 + 28));
  v5 = *(a1 + 44);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "peakMagnitude", *(a1 + 32));
  v5 = *(a1 + 44);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "peakTime", *(a1 + 8));
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
  PB::TextFormatter::format(this, "tapAcceptStatus");
  v5 = *(a1 + 44);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "tapCounter");
  if ((*(a1 + 44) & 2) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54D3B4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_113;
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
            *(a1 + 44) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_59:
              *(this + 24) = 1;
              goto LABEL_109;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_92:
            v2 = *(this + 1) + 8;
LABEL_93:
            *(this + 1) = v2;
            goto LABEL_109;
          case 2:
            *(a1 + 44) |= 4u;
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
                  goto LABEL_108;
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
                  goto LABEL_107;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_107:
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

LABEL_108:
            *(a1 + 24) = v43;
            goto LABEL_109;
          case 3:
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
                  goto LABEL_104;
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
                  goto LABEL_103;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_103:
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

LABEL_104:
            *(a1 + 36) = v27;
            goto LABEL_109;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 44) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_92;
        }

        if (v22 == 7)
        {
          *(a1 + 44) |= 0x40u;
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
                goto LABEL_100;
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
                goto LABEL_99;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v35) = 0;
            }

LABEL_99:
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

LABEL_100:
          *(a1 + 40) = v35;
          goto LABEL_109;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 44) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(a1 + 44) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_59;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_56:
          v2 = *(this + 1) + 4;
          goto LABEL_93;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_109:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_113:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_19B54D970(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 44);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
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
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 44);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 44) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 44);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_15:

  return PB::Writer::writeVarInt(this);
}

double sub_19B54DA6C(uint64_t a1)
{
  *a1 = &unk_1F0E2B168;
  *(a1 + 28) = -2;
  result = NAN;
  *(a1 + 52) = xmmword_19B7B5290;
  return result;
}

void sub_19B54DAA4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54DADC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "axis");
    v5 = *(a1 + 64);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "clippedPeakType");
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "direction");
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "location");
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "peakHalfWidth", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "peakMagnitude", *(a1 + 44));
  v5 = *(a1 + 64);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "peakTime", *(a1 + 8));
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "peakValue", *(a1 + 48));
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "strideDirection");
  v5 = *(a1 + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "tapDetectStatus");
  v5 = *(a1 + 64);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  if ((*(a1 + 64) & 0x800) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "widthCalculationMethod");
  }

LABEL_14:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54DCA0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_202;
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
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 64) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
LABEL_101:
                *(this + 24) = 1;
                goto LABEL_198;
              }

              *(a1 + 44) = *(*this + v2);
              goto LABEL_161;
            case 0xB:
              *(a1 + 64) |= 0x40u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_101;
              }

              *(a1 + 40) = *(*this + v2);
LABEL_161:
              v2 = *(this + 1) + 4;
              goto LABEL_162;
            case 0xC:
              *(a1 + 64) |= 1u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_101;
              }

              *(a1 + 8) = *(*this + v2);
LABEL_60:
              v2 = *(this + 1) + 8;
LABEL_162:
              *(this + 1) = v2;
              goto LABEL_198;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 64) |= 0x800u;
              v39 = *(this + 1);
              v2 = *(this + 2);
              v40 = *this;
              if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
              {
                v93 = 0;
                v94 = 0;
                v43 = 0;
                if (v2 <= v39)
                {
                  v2 = *(this + 1);
                }

                v95 = v2 - v39;
                v96 = (v40 + v39);
                v97 = v39 + 1;
                while (1)
                {
                  if (!v95)
                  {
                    LODWORD(v43) = 0;
                    *(this + 24) = 1;
                    goto LABEL_181;
                  }

                  v98 = v97;
                  v99 = *v96;
                  *(this + 1) = v98;
                  v43 |= (v99 & 0x7F) << v93;
                  if ((v99 & 0x80) == 0)
                  {
                    break;
                  }

                  v93 += 7;
                  --v95;
                  ++v96;
                  v97 = v98 + 1;
                  v14 = v94++ > 8;
                  if (v14)
                  {
                    LODWORD(v43) = 0;
                    goto LABEL_180;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v43) = 0;
                }

LABEL_180:
                v2 = v98;
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

LABEL_181:
              *(a1 + 60) = v43;
              goto LABEL_198;
            case 8:
              *(a1 + 64) |= 8u;
              v63 = *(this + 1);
              v2 = *(this + 2);
              v64 = *this;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v2)
              {
                v114 = 0;
                v115 = 0;
                v67 = 0;
                if (v2 <= v63)
                {
                  v2 = *(this + 1);
                }

                v116 = v2 - v63;
                v117 = (v64 + v63);
                v118 = v63 + 1;
                while (1)
                {
                  if (!v116)
                  {
                    LODWORD(v67) = 0;
                    *(this + 24) = 1;
                    goto LABEL_193;
                  }

                  v119 = v118;
                  v120 = *v117;
                  *(this + 1) = v119;
                  v67 |= (v120 & 0x7F) << v114;
                  if ((v120 & 0x80) == 0)
                  {
                    break;
                  }

                  v114 += 7;
                  --v116;
                  ++v117;
                  v118 = v119 + 1;
                  v14 = v115++ > 8;
                  if (v14)
                  {
                    LODWORD(v67) = 0;
                    goto LABEL_192;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v67) = 0;
                }

LABEL_192:
                v2 = v119;
              }

              else
              {
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = (v64 + v63);
                v69 = v63 + 1;
                while (1)
                {
                  v2 = v69;
                  *(this + 1) = v69;
                  v70 = *v68++;
                  v67 |= (v70 & 0x7F) << v65;
                  if ((v70 & 0x80) == 0)
                  {
                    break;
                  }

                  v65 += 7;
                  ++v69;
                  v14 = v66++ > 8;
                  if (v14)
                  {
                    LODWORD(v67) = 0;
                    break;
                  }
                }
              }

LABEL_193:
              *(a1 + 28) = v67;
              goto LABEL_198;
            case 9:
              *(a1 + 64) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
              {
                goto LABEL_101;
              }

              *(a1 + 48) = *(*this + v2);
              goto LABEL_161;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 64) |= 4u;
            v47 = *(this + 1);
            v2 = *(this + 2);
            v48 = *this;
            if (v47 > 0xFFFFFFFFFFFFFFF5 || v47 + 10 > v2)
            {
              v100 = 0;
              v101 = 0;
              v51 = 0;
              if (v2 <= v47)
              {
                v2 = *(this + 1);
              }

              v102 = v2 - v47;
              v103 = (v48 + v47);
              v104 = v47 + 1;
              while (1)
              {
                if (!v102)
                {
                  LODWORD(v51) = 0;
                  *(this + 24) = 1;
                  goto LABEL_185;
                }

                v105 = v104;
                v106 = *v103;
                *(this + 1) = v105;
                v51 |= (v106 & 0x7F) << v100;
                if ((v106 & 0x80) == 0)
                {
                  break;
                }

                v100 += 7;
                --v102;
                ++v103;
                v104 = v105 + 1;
                v14 = v101++ > 8;
                if (v14)
                {
                  LODWORD(v51) = 0;
                  goto LABEL_184;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }

LABEL_184:
              v2 = v105;
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
                  LODWORD(v51) = 0;
                  break;
                }
              }
            }

LABEL_185:
            *(a1 + 24) = v51;
            goto LABEL_198;
          case 5:
            *(a1 + 64) |= 0x10u;
            v71 = *(this + 1);
            v2 = *(this + 2);
            v72 = *this;
            if (v71 > 0xFFFFFFFFFFFFFFF5 || v71 + 10 > v2)
            {
              v121 = 0;
              v122 = 0;
              v75 = 0;
              if (v2 <= v71)
              {
                v2 = *(this + 1);
              }

              v123 = v2 - v71;
              v124 = (v72 + v71);
              v125 = v71 + 1;
              while (1)
              {
                if (!v123)
                {
                  LODWORD(v75) = 0;
                  *(this + 24) = 1;
                  goto LABEL_197;
                }

                v126 = v125;
                v127 = *v124;
                *(this + 1) = v126;
                v75 |= (v127 & 0x7F) << v121;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v121 += 7;
                --v123;
                ++v124;
                v125 = v126 + 1;
                v14 = v122++ > 8;
                if (v14)
                {
                  LODWORD(v75) = 0;
                  goto LABEL_196;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v75) = 0;
              }

LABEL_196:
              v2 = v126;
            }

            else
            {
              v73 = 0;
              v74 = 0;
              v75 = 0;
              v76 = (v72 + v71);
              v77 = v71 + 1;
              while (1)
              {
                v2 = v77;
                *(this + 1) = v77;
                v78 = *v76++;
                v75 |= (v78 & 0x7F) << v73;
                if ((v78 & 0x80) == 0)
                {
                  break;
                }

                v73 += 7;
                ++v77;
                v14 = v74++ > 8;
                if (v14)
                {
                  LODWORD(v75) = 0;
                  break;
                }
              }
            }

LABEL_197:
            *(a1 + 32) = v75;
            goto LABEL_198;
          case 6:
            *(a1 + 64) |= 0x200u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v86 = 0;
              v87 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v88 = v2 - v31;
              v89 = (v32 + v31);
              v90 = v31 + 1;
              while (1)
              {
                if (!v88)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_177;
                }

                v91 = v90;
                v92 = *v89;
                *(this + 1) = v91;
                v35 |= (v92 & 0x7F) << v86;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v86 += 7;
                --v88;
                ++v89;
                v90 = v91 + 1;
                v14 = v87++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_176;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_176:
              v2 = v91;
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

LABEL_177:
            *(a1 + 52) = v35;
            goto LABEL_198;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 64) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_101;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_60;
          case 2:
            *(a1 + 64) |= 0x20u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v107 = 0;
              v108 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v109 = v2 - v55;
              v110 = (v56 + v55);
              v111 = v55 + 1;
              while (1)
              {
                if (!v109)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_189;
                }

                v112 = v111;
                v113 = *v110;
                *(this + 1) = v112;
                v59 |= (v113 & 0x7F) << v107;
                if ((v113 & 0x80) == 0)
                {
                  break;
                }

                v107 += 7;
                --v109;
                ++v110;
                v111 = v112 + 1;
                v14 = v108++ > 8;
                if (v14)
                {
                  LODWORD(v59) = 0;
                  goto LABEL_188;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_188:
              v2 = v112;
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
                  LODWORD(v59) = 0;
                  break;
                }
              }
            }

LABEL_189:
            *(a1 + 36) = v59;
            goto LABEL_198;
          case 3:
            *(a1 + 64) |= 0x400u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v79 = 0;
              v80 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v81 = v2 - v23;
              v82 = (v24 + v23);
              v83 = v23 + 1;
              while (1)
              {
                if (!v81)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_173;
                }

                v84 = v83;
                v85 = *v82;
                *(this + 1) = v84;
                v27 |= (v85 & 0x7F) << v79;
                if ((v85 & 0x80) == 0)
                {
                  break;
                }

                v79 += 7;
                --v81;
                ++v82;
                v83 = v84 + 1;
                v14 = v80++ > 8;
                if (v14)
                {
                  LODWORD(v27) = 0;
                  goto LABEL_172;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_172:
              v2 = v84;
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

LABEL_173:
            *(a1 + 56) = v27;
            goto LABEL_198;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v128 = 0;
        return v128 & 1;
      }

      v2 = *(this + 1);
LABEL_198:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_202:
  v128 = v4 ^ 1;
  return v128 & 1;
}

uint64_t sub_19B54E6D4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 16));
    v4 = *(v3 + 64);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v4 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_11:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 40));
    if ((*(v3 + 64) & 1) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_25:
  v5 = *(v3 + 8);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B54E85C(uint64_t result)
{
  *result = &unk_1F0E2C018;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 80) = 0;
  *(result + 104) = 0;
  return result;
}

void sub_19B54E888(PB::Base *this)
{
  *this = &unk_1F0E2C018;
  v2 = *(this + 10);
  *(this + 10) = 0;
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

void sub_19B54E91C(PB::Base *a1)
{
  sub_19B54E888(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54E954(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 104))
  {
    PB::TextFormatter::format(this, "auxiliaryIosTimeUncertainty", *(a1 + 32));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "filteredAcceleration", v7);
  }

  v8 = *(a1 + 104);
  if ((v8 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "quiescentMode");
    v8 = *(a1 + 104);
    if ((v8 & 0x80) == 0)
    {
LABEL_7:
      if ((v8 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_23;
    }
  }

  else if ((v8 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  PB::TextFormatter::format(this, "quiescentNoise", *(a1 + 92));
  v8 = *(a1 + 104);
  if ((v8 & 2) == 0)
  {
LABEL_8:
    if ((v8 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "sensorTimeBeforeAlignment", *(a1 + 40));
  v8 = *(a1 + 104);
  if ((v8 & 4) == 0)
  {
LABEL_9:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "sentCftime", *(a1 + 48));
  v8 = *(a1 + 104);
  if ((v8 & 0x100) == 0)
  {
LABEL_10:
    if ((v8 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "sequenceNumber");
  v8 = *(a1 + 104);
  if ((v8 & 8) == 0)
  {
LABEL_11:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "sourceIosTimeUncertainty", *(a1 + 56));
  v8 = *(a1 + 104);
  if ((v8 & 0x10) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(this, "sourceReceiveCftime", *(a1 + 64));
  if ((*(a1 + 104) & 0x20) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "sourceReceiveSensorTimestamp", *(a1 + 72));
  }

LABEL_14:
  v9 = *(a1 + 80);
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "super");
  }

  if ((*(a1 + 104) & 0x200) != 0)
  {
    PB::TextFormatter::format(this, "version", *(a1 + 100));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54EB44(uint64_t a1, PB::Reader *this)
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
            goto LABEL_147;
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
        goto LABEL_147;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 6)
      {
        if (v22 > 9)
        {
          switch(v22)
          {
            case 0xA:
              *(a1 + 104) |= 0x20u;
              v37 = *(this + 1);
              if (v37 > 0xFFFFFFFFFFFFFFF7 || v37 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 72) = *(*this + v37);
              goto LABEL_97;
            case 0xB:
              *(a1 + 104) |= 1u;
              v64 = *(this + 1);
              if (v64 > 0xFFFFFFFFFFFFFFF7 || v64 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 32) = *(*this + v64);
              goto LABEL_97;
            case 0xC:
              *(a1 + 104) |= 8u;
              v26 = *(this + 1);
              if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 56) = *(*this + v26);
              goto LABEL_97;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 104) |= 2u;
              v27 = *(this + 1);
              if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 40) = *(*this + v27);
              goto LABEL_97;
            case 8:
              *(a1 + 104) |= 4u;
              v54 = *(this + 1);
              if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 48) = *(*this + v54);
              goto LABEL_97;
            case 9:
              *(a1 + 104) |= 0x10u;
              v24 = *(this + 1);
              if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
              {
                goto LABEL_139;
              }

              *(a1 + 64) = *(*this + v24);
LABEL_97:
              v65 = *(this + 1) + 8;
              goto LABEL_142;
          }
        }

        goto LABEL_98;
      }

      if (v22 > 3)
      {
        break;
      }

      if (v22 == 1)
      {
        operator new();
      }

      if (v22 != 2)
      {
        if (v22 == 3)
        {
          *(a1 + 104) |= 0x80u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
          {
            goto LABEL_139;
          }

          *(a1 + 92) = *(*this + v23);
          goto LABEL_141;
        }

LABEL_98:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
LABEL_149:
          v92 = 0;
          return v92 & 1;
        }

        goto LABEL_143;
      }

      if ((v10 & 7) != 2)
      {
        v79 = *(a1 + 16);
        v78 = *(a1 + 24);
        if (v79 >= v78)
        {
          v81 = *(a1 + 8);
          v82 = v79 - v81;
          v83 = (v79 - v81) >> 2;
          v84 = v83 + 1;
          if ((v83 + 1) >> 62)
          {
LABEL_150:
            sub_19B5BE690();
          }

          v85 = v78 - v81;
          if (v85 >> 1 > v84)
          {
            v84 = v85 >> 1;
          }

          if (v85 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v86 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v86 = v84;
          }

          if (v86)
          {
            sub_19B4C4FA8(a1 + 8, v86);
          }

          v87 = (v79 - v81) >> 2;
          v88 = (4 * v83);
          v89 = (4 * v83 - 4 * v87);
          *v88 = 0;
          v80 = v88 + 1;
          memcpy(v89, v81, v82);
          v90 = *(a1 + 8);
          *(a1 + 8) = v89;
          *(a1 + 16) = v80;
          *(a1 + 24) = 0;
          if (v90)
          {
            operator delete(v90);
          }
        }

        else
        {
          *v79 = 0;
          v80 = v79 + 4;
        }

        *(a1 + 16) = v80;
        v91 = *(this + 1);
        if (v91 > 0xFFFFFFFFFFFFFFFBLL || v91 + 4 > *(this + 2))
        {
LABEL_139:
          *(this + 24) = 1;
          goto LABEL_143;
        }

        *(v80 - 1) = *(*this + v91);
LABEL_141:
        v65 = *(this + 1) + 4;
LABEL_142:
        *(this + 1) = v65;
        goto LABEL_143;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_149;
      }

      v38 = *(this + 1);
      v39 = *(this + 2);
      while (v38 < v39 && (*(this + 24) & 1) == 0)
      {
        v41 = *(a1 + 16);
        v40 = *(a1 + 24);
        if (v41 >= v40)
        {
          v43 = *(a1 + 8);
          v44 = v41 - v43;
          v45 = (v41 - v43) >> 2;
          v46 = v45 + 1;
          if ((v45 + 1) >> 62)
          {
            goto LABEL_150;
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
            sub_19B4C4FA8(a1 + 8, v48);
          }

          v49 = (v41 - v43) >> 2;
          v50 = (4 * v45);
          v51 = (4 * v45 - 4 * v49);
          *v50 = 0;
          v42 = v50 + 1;
          memcpy(v51, v43, v44);
          v52 = *(a1 + 8);
          *(a1 + 8) = v51;
          *(a1 + 16) = v42;
          *(a1 + 24) = 0;
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

        *(a1 + 16) = v42;
        v53 = *(this + 1);
        if (v53 > 0xFFFFFFFFFFFFFFFBLL || v53 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v42 - 1) = *(*this + v53);
        v39 = *(this + 2);
        v38 = *(this + 1) + 4;
        *(this + 1) = v38;
      }

      PB::Reader::recallMark();
LABEL_143:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_147;
      }
    }

    switch(v22)
    {
      case 4:
        *(a1 + 104) |= 0x40u;
        v29 = *(this + 1);
        v28 = *(this + 2);
        v30 = *this;
        if (v29 > 0xFFFFFFFFFFFFFFF5 || v29 + 10 > v28)
        {
          v66 = 0;
          v67 = 0;
          v33 = 0;
          v17 = v28 >= v29;
          v68 = v28 - v29;
          if (!v17)
          {
            v68 = 0;
          }

          v69 = (v30 + v29);
          v70 = v29 + 1;
          while (1)
          {
            if (!v68)
            {
              LODWORD(v33) = 0;
              *(this + 24) = 1;
              goto LABEL_130;
            }

            v71 = *v69;
            *(this + 1) = v70;
            v33 |= (v71 & 0x7F) << v66;
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
LABEL_107:
              LODWORD(v33) = 0;
              goto LABEL_130;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v33) = 0;
          }
        }

        else
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = (v30 + v29);
          v35 = v29 + 1;
          while (1)
          {
            *(this + 1) = v35;
            v36 = *v34++;
            v33 |= (v36 & 0x7F) << v31;
            if ((v36 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            ++v35;
            v14 = v32++ > 8;
            if (v14)
            {
              goto LABEL_107;
            }
          }
        }

LABEL_130:
        *(a1 + 88) = v33;
        goto LABEL_143;
      case 5:
        *(a1 + 104) |= 0x100u;
        v56 = *(this + 1);
        v55 = *(this + 2);
        v57 = *this;
        if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v55)
        {
          v72 = 0;
          v73 = 0;
          v60 = 0;
          v17 = v55 >= v56;
          v74 = v55 - v56;
          if (!v17)
          {
            v74 = 0;
          }

          v75 = (v57 + v56);
          v76 = v56 + 1;
          while (1)
          {
            if (!v74)
            {
              LODWORD(v60) = 0;
              *(this + 24) = 1;
              goto LABEL_133;
            }

            v77 = *v75;
            *(this + 1) = v76;
            v60 |= (v77 & 0x7F) << v72;
            if ((v77 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            --v74;
            ++v75;
            ++v76;
            v14 = v73++ > 8;
            if (v14)
            {
LABEL_115:
              LODWORD(v60) = 0;
              goto LABEL_133;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v60) = 0;
          }
        }

        else
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          while (1)
          {
            *(this + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
            if (v14)
            {
              goto LABEL_115;
            }
          }
        }

LABEL_133:
        *(a1 + 96) = v60;
        goto LABEL_143;
      case 6:
        *(a1 + 104) |= 0x200u;
        v25 = *(this + 1);
        if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
        {
          goto LABEL_139;
        }

        *(a1 + 100) = *(*this + v25);
        goto LABEL_141;
    }

    goto LABEL_98;
  }

LABEL_147:
  v92 = v4 ^ 1;
  return v92 & 1;
}

uint64_t sub_19B54F38C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
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

  v8 = *(v3 + 104);
  if ((v8 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 92));
    v8 = *(v3 + 104);
    if ((v8 & 0x40) == 0)
    {
LABEL_8:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 104);
  if ((v8 & 0x100) == 0)
  {
LABEL_9:
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::writeVarInt(this);
  v8 = *(v3 + 104);
  if ((v8 & 0x200) == 0)
  {
LABEL_10:
    if ((v8 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 100));
  v8 = *(v3 + 104);
  if ((v8 & 2) == 0)
  {
LABEL_11:
    if ((v8 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 40));
  v8 = *(v3 + 104);
  if ((v8 & 4) == 0)
  {
LABEL_12:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v8 = *(v3 + 104);
  if ((v8 & 0x10) == 0)
  {
LABEL_13:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 64));
  v8 = *(v3 + 104);
  if ((v8 & 0x20) == 0)
  {
LABEL_14:
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_25:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 104) & 8) == 0)
    {
      return result;
    }

    goto LABEL_26;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 72));
  v8 = *(v3 + 104);
  if (v8)
  {
    goto LABEL_25;
  }

LABEL_15:
  if ((v8 & 8) == 0)
  {
    return result;
  }

LABEL_26:
  v9 = *(v3 + 56);

  return PB::Writer::write(this, v9);
}

double sub_19B54F51C(uint64_t a1)
{
  *a1 = &unk_1F0E2C280;
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B54F550(PB::Base *this)
{
  *this = &unk_1F0E2C280;
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

void sub_19B54F5C4(PB::Base *a1)
{
  sub_19B54F550(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B54F5FC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 128);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "angularVelocityConstraintRps", *(a1 + 104));
    v5 = *(a1 + 128);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "consumedAuxTimestamp", *(a1 + 56));
  v5 = *(a1 + 128);
  if ((v5 & 0x80) == 0)
  {
LABEL_4:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "dthetaNormRad", *(a1 + 108));
  v5 = *(a1 + 128);
  if ((v5 & 0x800) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "inBTZ");
  v5 = *(a1 + 128);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "listenerPitch", *(a1 + 112));
  v5 = *(a1 + 128);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "listenerRoll", *(a1 + 116));
  v5 = *(a1 + 128);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "listenerYaw", *(a1 + 120));
  v5 = *(a1 + 128);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_29:
  PB::TextFormatter::format(this, "machAbsTimestamp", *(a1 + 64));
  if ((*(a1 + 128) & 4) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "presentationTimestamp", *(a1 + 72));
  }

LABEL_11:
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "quaternion", v8);
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(this, "quaternionWithoutPrediction", v11);
  }

  v12 = *(a1 + 128);
  if ((v12 & 8) != 0)
  {
    PB::TextFormatter::format(this, "receivedAuxTimestamp", *(a1 + 80));
    v12 = *(a1 + 128);
    if ((v12 & 0x10) == 0)
    {
LABEL_17:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((v12 & 0x10) == 0)
  {
    goto LABEL_17;
  }

  PB::TextFormatter::format(this, "srcTimestamp", *(a1 + 88));
  if ((*(a1 + 128) & 0x20) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 96));
  }

LABEL_19:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B54F828(uint64_t a1, PB::Reader *this)
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_141;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 128) |= 0x20u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 96) = *(*this + v23);
          goto LABEL_98;
        case 2u:
          *(a1 + 128) |= 0x400u;
          v61 = *(this + 1);
          if (v61 > 0xFFFFFFFFFFFFFFFBLL || v61 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 120) = *(*this + v61);
          goto LABEL_135;
        case 3u:
          *(a1 + 128) |= 0x100u;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 112) = *(*this + v58);
          goto LABEL_135;
        case 4u:
          *(a1 + 128) |= 0x200u;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 116) = *(*this + v59);
          goto LABEL_135;
        case 5u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_143;
            }

            v25 = *(this + 1);
            v26 = *(this + 2);
            while (v25 < v26 && (*(this + 24) & 1) == 0)
            {
              v28 = *(a1 + 40);
              v27 = *(a1 + 48);
              if (v28 >= v27)
              {
                v30 = *(a1 + 32);
                v31 = v28 - v30;
                v32 = (v28 - v30) >> 2;
                v33 = v32 + 1;
                if ((v32 + 1) >> 62)
                {
                  goto LABEL_144;
                }

                v34 = v27 - v30;
                if (v34 >> 1 > v33)
                {
                  v33 = v34 >> 1;
                }

                if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v35 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v35 = v33;
                }

                if (v35)
                {
                  sub_19B4C4FA8(a1 + 32, v35);
                }

                v36 = (v28 - v30) >> 2;
                v37 = (4 * v32);
                v38 = (4 * v32 - 4 * v36);
                *v37 = 0;
                v29 = v37 + 1;
                memcpy(v38, v30, v31);
                v39 = *(a1 + 32);
                *(a1 + 32) = v38;
                *(a1 + 40) = v29;
                *(a1 + 48) = 0;
                if (v39)
                {
                  operator delete(v39);
                }
              }

              else
              {
                *v28 = 0;
                v29 = v28 + 4;
              }

              *(a1 + 40) = v29;
              v40 = *(this + 1);
              if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
              {
                goto LABEL_107;
              }

              *(v29 - 1) = *(*this + v40);
              v26 = *(this + 2);
              v25 = *(this + 1) + 4;
              *(this + 1) = v25;
            }

            goto LABEL_108;
          }

          v72 = *(a1 + 40);
          v71 = *(a1 + 48);
          if (v72 >= v71)
          {
            v76 = *(a1 + 32);
            v77 = v72 - v76;
            v78 = (v72 - v76) >> 2;
            v79 = v78 + 1;
            if ((v78 + 1) >> 62)
            {
              goto LABEL_144;
            }

            v80 = v71 - v76;
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
              sub_19B4C4FA8(a1 + 32, v81);
            }

            v88 = (v72 - v76) >> 2;
            v89 = (4 * v78);
            v90 = (4 * v78 - 4 * v88);
            *v89 = 0;
            v73 = v89 + 1;
            memcpy(v90, v76, v77);
            v91 = *(a1 + 32);
            *(a1 + 32) = v90;
            *(a1 + 40) = v73;
            *(a1 + 48) = 0;
            if (v91)
            {
              operator delete(v91);
            }
          }

          else
          {
            *v72 = 0;
            v73 = v72 + 4;
          }

          *(a1 + 40) = v73;
          goto LABEL_131;
        case 6u:
          *(a1 + 128) |= 0x800u;
          v62 = *(this + 1);
          if (v62 >= *(this + 2))
          {
            v65 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v63 = v62 + 1;
            v64 = *(*this + v62);
            *(this + 1) = v63;
            v65 = v64 != 0;
          }

          *(a1 + 124) = v65;
          goto LABEL_137;
        case 7u:
          *(a1 + 128) |= 0x40u;
          v67 = *(this + 1);
          if (v67 > 0xFFFFFFFFFFFFFFFBLL || v67 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 104) = *(*this + v67);
          goto LABEL_135;
        case 8u:
          *(a1 + 128) |= 0x80u;
          v60 = *(this + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 108) = *(*this + v60);
          goto LABEL_135;
        case 9u:
          *(a1 + 128) |= 0x10u;
          v69 = *(this + 1);
          if (v69 > 0xFFFFFFFFFFFFFFF7 || v69 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 88) = *(*this + v69);
          goto LABEL_98;
        case 0xAu:
          *(a1 + 128) |= 1u;
          v57 = *(this + 1);
          if (v57 > 0xFFFFFFFFFFFFFFF7 || v57 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 56) = *(*this + v57);
          goto LABEL_98;
        case 0xBu:
          *(a1 + 128) |= 8u;
          v68 = *(this + 1);
          if (v68 > 0xFFFFFFFFFFFFFFF7 || v68 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 80) = *(*this + v68);
          goto LABEL_98;
        case 0xCu:
          *(a1 + 128) |= 2u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 64) = *(*this + v24);
          goto LABEL_98;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_143:
              v97 = 0;
              return v97 & 1;
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
                v48 = (v44 - v46) >> 2;
                v49 = v48 + 1;
                if ((v48 + 1) >> 62)
                {
                  goto LABEL_144;
                }

                v50 = v43 - v46;
                if (v50 >> 1 > v49)
                {
                  v49 = v50 >> 1;
                }

                if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v51 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v51 = v49;
                }

                if (v51)
                {
                  sub_19B4C4FA8(a1 + 8, v51);
                }

                v52 = (v44 - v46) >> 2;
                v53 = (4 * v48);
                v54 = (4 * v48 - 4 * v52);
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
                v45 = v44 + 4;
              }

              *(a1 + 16) = v45;
              v56 = *(this + 1);
              if (v56 > 0xFFFFFFFFFFFFFFFBLL || v56 + 4 > *(this + 2))
              {
LABEL_107:
                *(this + 24) = 1;
                break;
              }

              *(v45 - 1) = *(*this + v56);
              v42 = *(this + 2);
              v41 = *(this + 1) + 4;
              *(this + 1) = v41;
            }

LABEL_108:
            PB::Reader::recallMark();
          }

          else
          {
            v75 = *(a1 + 16);
            v74 = *(a1 + 24);
            if (v75 >= v74)
            {
              v82 = *(a1 + 8);
              v83 = v75 - v82;
              v84 = (v75 - v82) >> 2;
              v85 = v84 + 1;
              if ((v84 + 1) >> 62)
              {
LABEL_144:
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
                sub_19B4C4FA8(a1 + 8, v87);
              }

              v92 = (v75 - v82) >> 2;
              v93 = (4 * v84);
              v94 = (4 * v84 - 4 * v92);
              *v93 = 0;
              v73 = v93 + 1;
              memcpy(v94, v82, v83);
              v95 = *(a1 + 8);
              *(a1 + 8) = v94;
              *(a1 + 16) = v73;
              *(a1 + 24) = 0;
              if (v95)
              {
                operator delete(v95);
              }
            }

            else
            {
              *v75 = 0;
              v73 = v75 + 4;
            }

            *(a1 + 16) = v73;
LABEL_131:
            v96 = *(this + 1);
            if (v96 <= 0xFFFFFFFFFFFFFFFBLL && v96 + 4 <= *(this + 2))
            {
              *(v73 - 1) = *(*this + v96);
LABEL_135:
              v70 = *(this + 1) + 4;
LABEL_136:
              *(this + 1) = v70;
            }

            else
            {
LABEL_133:
              *(this + 24) = 1;
            }
          }

LABEL_137:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_141;
          }

          break;
        case 0xEu:
          *(a1 + 128) |= 4u;
          v66 = *(this + 1);
          if (v66 > 0xFFFFFFFFFFFFFFF7 || v66 + 8 > *(this + 2))
          {
            goto LABEL_133;
          }

          *(a1 + 72) = *(*this + v66);
LABEL_98:
          v70 = *(this + 1) + 8;
          goto LABEL_136;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_143;
          }

          goto LABEL_137;
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

LABEL_141:
  v97 = v4 ^ 1;
  return v97 & 1;
}

uint64_t sub_19B550034(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 96));
    v4 = *(v3 + 128);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 0x100) == 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      result = PB::Writer::write(this, *(v3 + 112));
      if ((*(v3 + 128) & 0x200) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*(result + 128) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 128);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v4 & 0x200) != 0)
  {
LABEL_5:
    result = PB::Writer::write(this, *(v3 + 116));
  }

LABEL_6:
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 128);
  if ((v8 & 0x800) != 0)
  {
    result = PB::Writer::write(this);
    v8 = *(v3 + 128);
    if ((v8 & 0x40) == 0)
    {
LABEL_11:
      if ((v8 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  result = PB::Writer::write(this, *(v3 + 104));
  v8 = *(v3 + 128);
  if ((v8 & 0x80) == 0)
  {
LABEL_12:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 108));
  v8 = *(v3 + 128);
  if ((v8 & 0x10) == 0)
  {
LABEL_13:
    if ((v8 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 88));
  v8 = *(v3 + 128);
  if ((v8 & 1) == 0)
  {
LABEL_14:
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 128) & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 56));
  v8 = *(v3 + 128);
  if ((v8 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v8 & 2) != 0)
  {
LABEL_16:
    result = PB::Writer::write(this, *(v3 + 64));
  }

LABEL_17:
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::write(this, v11);
  }

  if ((*(v3 + 128) & 4) != 0)
  {
    v12 = *(v3 + 72);

    return PB::Writer::write(this, v12);
  }

  return result;
}

void *sub_19B550208(void *result)
{
  *result = &unk_1F0E2B130;
  result[2] = 0;
  return result;
}

void sub_19B550230(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B550268(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "source");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5502E4(uint64_t a1, PB::Reader *this)
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
        *(a1 + 20) |= 1u;
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
              v35 = 0;
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
              v35 = 0;
              goto LABEL_67;
            }
          }

          if (*(this + 24))
          {
            v35 = 0;
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
              v35 = 0;
              break;
            }
          }
        }

LABEL_68:
        *(a1 + 8) = v35;
      }

      else if ((v10 >> 3) == 1)
      {
        *(a1 + 20) |= 2u;
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
              LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
              goto LABEL_63;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v27) = 0;
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
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_64:
        *(a1 + 16) = v27;
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

uint64_t sub_19B550664(uint64_t result, PB::Writer *this)
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

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B5506D0(uint64_t result)
{
  *result = &unk_1F0E2FDC8;
  *(result + 20) = 0;
  return result;
}

void sub_19B5506F8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B550730(uint64_t a1, PB::TextFormatter *this, char *a3)
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
    PB::TextFormatter::format(this, "touchDetected");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5507AC(uint64_t a1, PB::Reader *this)
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
        break;
      }

      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 2u;
        v2 = *(this + 1);
        if (v2 >= *(this + 2))
        {
          v23 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v22 = *(*this + v2++);
          *(this + 1) = v2;
          v23 = v22 != 0;
        }

        *(a1 + 16) = v23;
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
          v24 = 0;
          return v24 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_38:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_19B5509B8(uint64_t result, PB::Writer *this)
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

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B550A24(uint64_t result)
{
  *result = &unk_1F0E30298;
  *(result + 40) = 0;
  return result;
}

void sub_19B550A4C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B550A84(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "distanceToTrackMeters", *(a1 + 8));
    v5 = *(a1 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "estimatedLaneConfidence");
  v5 = *(a1 + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "estimatedLaneNumber");
  v5 = *(a1 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "laneCount");
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "laneNumber");
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "odometerHasBeenCorrected");
  if ((*(a1 + 40) & 0x20) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "trackProximity");
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B550BA8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_145;
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
            *(a1 + 40) |= 0x10u;
            v41 = *(this + 1);
            v2 = *(this + 2);
            v42 = *this;
            if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
            {
              v65 = 0;
              v66 = 0;
              v45 = 0;
              if (v2 <= v41)
              {
                v2 = *(this + 1);
              }

              v67 = v2 - v41;
              v68 = (v42 + v41);
              v69 = v41 + 1;
              while (1)
              {
                if (!v67)
                {
                  LODWORD(v45) = 0;
                  *(this + 24) = 1;
                  goto LABEL_124;
                }

                v70 = v69;
                v71 = *v68;
                *(this + 1) = v70;
                v45 |= (v71 & 0x7F) << v65;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v65 += 7;
                --v67;
                ++v68;
                v69 = v70 + 1;
                v14 = v66++ > 8;
                if (v14)
                {
                  LODWORD(v45) = 0;
                  goto LABEL_123;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v45) = 0;
              }

LABEL_123:
              v2 = v70;
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
                v2 = v47;
                *(this + 1) = v47;
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
                  LODWORD(v45) = 0;
                  break;
                }
              }
            }

LABEL_124:
            *(a1 + 28) = v45;
            goto LABEL_141;
          case 2:
            *(a1 + 40) |= 4u;
            v57 = *(this + 1);
            v2 = *(this + 2);
            v58 = *this;
            if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v2)
            {
              v93 = 0;
              v94 = 0;
              v61 = 0;
              if (v2 <= v57)
              {
                v2 = *(this + 1);
              }

              v95 = v2 - v57;
              v96 = (v58 + v57);
              v97 = v57 + 1;
              while (1)
              {
                if (!v95)
                {
                  LODWORD(v61) = 0;
                  *(this + 24) = 1;
                  goto LABEL_140;
                }

                v98 = v97;
                v99 = *v96;
                *(this + 1) = v98;
                v61 |= (v99 & 0x7F) << v93;
                if ((v99 & 0x80) == 0)
                {
                  break;
                }

                v93 += 7;
                --v95;
                ++v96;
                v97 = v98 + 1;
                v14 = v94++ > 8;
                if (v14)
                {
                  LODWORD(v61) = 0;
                  goto LABEL_139;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v61) = 0;
              }

LABEL_139:
              v2 = v98;
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
                v2 = v63;
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
                  LODWORD(v61) = 0;
                  break;
                }
              }
            }

LABEL_140:
            *(a1 + 20) = v61;
            goto LABEL_141;
          case 3:
            *(a1 + 40) |= 8u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v86 = 0;
              v87 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v88 = v2 - v31;
              v89 = (v32 + v31);
              v90 = v31 + 1;
              while (1)
              {
                if (!v88)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_136;
                }

                v91 = v90;
                v92 = *v89;
                *(this + 1) = v91;
                v35 |= (v92 & 0x7F) << v86;
                if ((v92 & 0x80) == 0)
                {
                  break;
                }

                v86 += 7;
                --v88;
                ++v89;
                v90 = v91 + 1;
                v14 = v87++ > 8;
                if (v14)
                {
                  LODWORD(v35) = 0;
                  goto LABEL_135;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_135:
              v2 = v91;
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

LABEL_136:
            *(a1 + 24) = v35;
            goto LABEL_141;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 1u;
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

          goto LABEL_141;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 0x40u;
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

          *(a1 + 36) = v40;
          goto LABEL_141;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 2u;
          v49 = *(this + 1);
          v2 = *(this + 2);
          v50 = *this;
          if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v53 = 0;
            if (v2 <= v49)
            {
              v2 = *(this + 1);
            }

            v74 = v2 - v49;
            v75 = (v50 + v49);
            v76 = v49 + 1;
            while (1)
            {
              if (!v74)
              {
                LODWORD(v53) = 0;
                *(this + 24) = 1;
                goto LABEL_128;
              }

              v77 = v76;
              v78 = *v75;
              *(this + 1) = v77;
              v53 |= (v78 & 0x7F) << v72;
              if ((v78 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              --v74;
              ++v75;
              v76 = v77 + 1;
              v14 = v73++ > 8;
              if (v14)
              {
                LODWORD(v53) = 0;
                goto LABEL_127;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v53) = 0;
            }

LABEL_127:
            v2 = v77;
          }

          else
          {
            v51 = 0;
            v52 = 0;
            v53 = 0;
            v54 = (v50 + v49);
            v55 = v49 + 1;
            while (1)
            {
              v2 = v55;
              *(this + 1) = v55;
              v56 = *v54++;
              v53 |= (v56 & 0x7F) << v51;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v51 += 7;
              ++v55;
              v14 = v52++ > 8;
              if (v14)
              {
                LODWORD(v53) = 0;
                break;
              }
            }
          }

LABEL_128:
          *(a1 + 16) = v53;
          goto LABEL_141;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 0x20u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v81 = v2 - v23;
            v82 = (v24 + v23);
            v83 = v23 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_132;
              }

              v84 = v83;
              v85 = *v82;
              *(this + 1) = v84;
              v27 |= (v85 & 0x7F) << v79;
              if ((v85 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              --v81;
              ++v82;
              v83 = v84 + 1;
              v14 = v80++ > 8;
              if (v14)
              {
                LODWORD(v27) = 0;
                goto LABEL_131;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_131:
            v2 = v84;
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

LABEL_132:
          *(a1 + 32) = v27;
          goto LABEL_141;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v100 = 0;
        return v100 & 1;
      }

      v2 = *(this + 1);
LABEL_141:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_145:
  v100 = v4 ^ 1;
  return v100 & 1;
}

uint64_t sub_19B551300(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 0x10) != 0)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 8));
    if ((*(v3 + 40) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 40);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x40) == 0)
  {
    return result;
  }

LABEL_15:

  return PB::Writer::write(this);
}

uint64_t sub_19B5513FC(uint64_t result)
{
  *result = &unk_1F0E2B2F0;
  *(result + 56) = 0;
  return result;
}

void sub_19B551424(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B55145C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if (v5)
  {
    PB::TextFormatter::format(this, "cycleIndex");
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

  PB::TextFormatter::format(this, "error");
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
  PB::TextFormatter::format(this, "machAbsoluteTimestamp", *(a1 + 24));
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
  PB::TextFormatter::format(this, "machContinuousTimestamp", *(a1 + 32));
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
  PB::TextFormatter::format(this, "range", *(a1 + 40));
  if ((*(a1 + 56) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "rssi", *(a1 + 48));
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B551560(uint64_t a1, PB::Reader *this)
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
            goto LABEL_89;
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
                  v35 = 0;
                  *(this + 24) = 1;
                  goto LABEL_80;
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
                  v35 = 0;
                  goto LABEL_79;
                }
              }

              if (*(this + 24))
              {
                v35 = 0;
              }

LABEL_79:
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
                  v35 = 0;
                  break;
                }
              }
            }

LABEL_80:
            *(a1 + 16) = v35;
            goto LABEL_85;
          case 5:
            *(a1 + 56) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_56:
              *(this + 24) = 1;
              goto LABEL_85;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_74;
          case 6:
            *(a1 + 56) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_74;
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
              goto LABEL_56;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_74;
          case 2:
            *(a1 + 56) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_74:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_85;
          case 3:
            *(a1 + 56) |= 1u;
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
                  v27 = 0;
                  *(this + 24) = 1;
                  goto LABEL_84;
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
                  v27 = 0;
                  goto LABEL_83;
                }
              }

              if (*(this + 24))
              {
                v27 = 0;
              }

LABEL_83:
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
                  v27 = 0;
                  break;
                }
              }
            }

LABEL_84:
            *(a1 + 8) = v27;
            goto LABEL_85;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v53 = 0;
        return v53 & 1;
      }

      v2 = *(this + 1);
LABEL_85:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_89:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B551A00(uint64_t result, PB::Writer *this)
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
      if ((v4 & 1) == 0)
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
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = PB::Writer::write(this, *(v3 + 40));
    if ((*(v3 + 56) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 56);
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
  v5 = *(v3 + 48);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B551AE0(uint64_t result)
{
  *result = &unk_1F0E2FA48;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B551B08(PB::Base *this)
{
  *this = &unk_1F0E2FA48;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B551B8C(PB::Base *a1)
{
  sub_19B551B08(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B551BC4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 24))
  {
    PB::TextFormatter::format(this, "aopTimestamp");
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B551C5C(uint64_t a1, PB::Reader *this)
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
        *(a1 + 8) = v27;
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
          v38 = 0;
          return v38 & 1;
        }
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

uint64_t sub_19B551F7C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  if (*(v3 + 24))
  {

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_19B551FE4(uint64_t result)
{
  *result = &unk_1F0E2FA10;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B552008(PB::Base *this)
{
  *this = &unk_1F0E2FA10;
  v4 = *(this + 1);
  v2 = (this + 8);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_19B4C51F4(v2, v3);
  }

  PB::Base::~Base(this);
}

void sub_19B55206C(PB::Base *a1)
{
  sub_19B552008(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5520A4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B55211C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_35;
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
        v22 = *(this + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v22);
          *(this + 1) += 8;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else if (!PB::Reader::skip(this))
      {
        v24 = 0;
        return v24 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_19B552348(uint64_t result, PB::Writer *this)
{
  v2 = result;
  if (*(result + 24))
  {
    result = PB::Writer::write(this, *(result + 16));
  }

  if (*(v2 + 8))
  {

    return PB::Writer::write();
  }

  return result;
}

double sub_19B5523B0(uint64_t a1)
{
  *a1 = &unk_1F0E2FD90;
  *(a1 + 336) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  return result;
}

void sub_19B552420(PB::Base *this)
{
  *this = &unk_1F0E2FD90;
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v3 = *(this + 31);
  if (v3)
  {
    *(this + 32) = v3;
    operator delete(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    *(this + 29) = v4;
    operator delete(v4);
  }

  v5 = *(this + 25);
  if (v5)
  {
    *(this + 26) = v5;
    operator delete(v5);
  }

  v6 = *(this + 22);
  if (v6)
  {
    *(this + 23) = v6;
    operator delete(v6);
  }

  v7 = *(this + 19);
  if (v7)
  {
    *(this + 20) = v7;
    operator delete(v7);
  }

  v8 = *(this + 16);
  if (v8)
  {
    *(this + 17) = v8;
    operator delete(v8);
  }

  v9 = *(this + 13);
  if (v9)
  {
    *(this + 14) = v9;
    operator delete(v9);
  }

  v10 = *(this + 10);
  if (v10)
  {
    *(this + 11) = v10;
    operator delete(v10);
  }

  v11 = *(this + 7);
  if (v11)
  {
    *(this + 8) = v11;
    operator delete(v11);
  }

  v12 = *(this + 4);
  if (v12)
  {
    *(this + 5) = v12;
    operator delete(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }

  PB::Base::~Base(this);
}

void sub_19B552534(PB::Base *a1)
{
  sub_19B552420(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B55256C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "accelBias", v7);
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "accelBiasCov", v10);
  }

  v11 = *(a1 + 340);
  if ((v11 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "cameraImageResolutionHeight", *(a1 + 328));
    v11 = *(a1 + 340);
  }

  if ((v11 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "cameraImageResolutionWidth", *(a1 + 332));
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  while (v12 != v13)
  {
    v14 = *v12++;
    PB::TextFormatter::format(this, "cameraIntrinsics", v14);
  }

  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  while (v15 != v16)
  {
    v17 = *v15++;
    PB::TextFormatter::format(this, "cameraPose", v17);
  }

  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  while (v18 != v19)
  {
    v20 = *v18++;
    PB::TextFormatter::format(this, "gyroBias", v20);
  }

  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  while (v21 != v22)
  {
    v23 = *v21++;
    PB::TextFormatter::format(this, "gyroBiasCov", v23);
  }

  v24 = *(a1 + 340);
  if (v24)
  {
    PB::TextFormatter::format(this, "machContinuousOriginTimestamp", *(a1 + 296));
    v24 = *(a1 + 340);
  }

  if ((v24 & 2) != 0)
  {
    PB::TextFormatter::format(this, "machContinuousTimestamp", *(a1 + 304));
  }

  v25 = *(a1 + 176);
  v26 = *(a1 + 184);
  while (v25 != v26)
  {
    v27 = *v25++;
    PB::TextFormatter::format(this, "orientation", v27);
  }

  v28 = *(a1 + 152);
  v29 = *(a1 + 160);
  while (v28 != v29)
  {
    v30 = *v28++;
    PB::TextFormatter::format(this, "orientationCov", v30);
  }

  if ((*(a1 + 340) & 4) != 0)
  {
    PB::TextFormatter::format(this, "originTimestamp", *(a1 + 312));
  }

  v31 = *(a1 + 224);
  v32 = *(a1 + 232);
  while (v31 != v32)
  {
    v33 = *v31++;
    PB::TextFormatter::format(this, "position", v33);
  }

  v34 = *(a1 + 200);
  v35 = *(a1 + 208);
  while (v34 != v35)
  {
    v36 = *v34++;
    PB::TextFormatter::format(this, "positionCov", v36);
  }

  v37 = *(a1 + 340);
  if ((v37 & 8) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 320));
    v37 = *(a1 + 340);
  }

  if ((v37 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "trackingState");
  }

  v38 = *(a1 + 272);
  v39 = *(a1 + 280);
  while (v38 != v39)
  {
    v40 = *v38++;
    PB::TextFormatter::format(this, "velocity", v40);
  }

  v41 = *(a1 + 248);
  v42 = *(a1 + 256);
  while (v41 != v42)
  {
    v43 = *v41++;
    PB::TextFormatter::format(this, "velocityCov", v43);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B552894(uint64_t a1, PB::Reader *this)
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
      v22 = v10 & 7;
      if (v4 & 1 | (v22 == 4))
      {
        goto LABEL_471;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 340) |= 0x40u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 <= 0xFFFFFFFFFFFFFFF5 && v24 + 10 <= v23)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            do
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                goto LABEL_424;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
            }

            while (!v14);
LABEL_312:
            LODWORD(v28) = 0;
            goto LABEL_424;
          }

          v244 = 0;
          v245 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v246 = v23 - v24;
          if (!v17)
          {
            v246 = 0;
          }

          v247 = (v25 + v24);
          v248 = v24 + 1;
          while (2)
          {
            if (v246)
            {
              v249 = *v247;
              *(this + 1) = v248;
              v28 |= (v249 & 0x7F) << v244;
              if (v249 < 0)
              {
                v244 += 7;
                --v246;
                ++v247;
                ++v248;
                v14 = v245++ > 8;
                if (v14)
                {
                  goto LABEL_312;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_424:
          *(a1 + 336) = v28;
          goto LABEL_467;
        case 2u:
          *(a1 + 340) |= 4u;
          v147 = *(this + 1);
          if (v147 > 0xFFFFFFFFFFFFFFF7 || v147 + 8 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 312) = *(*this + v147);
          goto LABEL_465;
        case 3u:
          *(a1 + 340) |= 1u;
          v113 = *(this + 1);
          if (v113 > 0xFFFFFFFFFFFFFFF7 || v113 + 8 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 296) = *(*this + v113);
          goto LABEL_465;
        case 4u:
          *(a1 + 340) |= 8u;
          v130 = *(this + 1);
          if (v130 > 0xFFFFFFFFFFFFFFF7 || v130 + 8 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 320) = *(*this + v130);
          goto LABEL_465;
        case 5u:
          *(a1 + 340) |= 2u;
          v80 = *(this + 1);
          if (v80 > 0xFFFFFFFFFFFFFFF7 || v80 + 8 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 304) = *(*this + v80);
          goto LABEL_465;
        case 6u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v149 = *(this + 1);
            v150 = *(this + 2);
            while (v149 < v150 && (*(this + 24) & 1) == 0)
            {
              v152 = *(a1 + 184);
              v151 = *(a1 + 192);
              if (v152 >= v151)
              {
                v154 = *(a1 + 176);
                v155 = v152 - v154;
                v156 = (v152 - v154) >> 3;
                v157 = v156 + 1;
                if ((v156 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v158 = v151 - v154;
                if (v158 >> 2 > v157)
                {
                  v157 = v158 >> 2;
                }

                if (v158 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v159 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v159 = v157;
                }

                if (v159)
                {
                  sub_19B4C50F0(a1 + 176, v159);
                }

                v160 = (v152 - v154) >> 3;
                v161 = (8 * v156);
                v162 = (8 * v156 - 8 * v160);
                *v161 = 0;
                v153 = v161 + 1;
                memcpy(v162, v154, v155);
                v163 = *(a1 + 176);
                *(a1 + 176) = v162;
                *(a1 + 184) = v153;
                *(a1 + 192) = 0;
                if (v163)
                {
                  operator delete(v163);
                }
              }

              else
              {
                *v152 = 0;
                v153 = v152 + 8;
              }

              *(a1 + 184) = v153;
              v164 = *(this + 1);
              if (v164 > 0xFFFFFFFFFFFFFFF7 || v164 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v153 - 1) = *(*this + v164);
              v150 = *(this + 2);
              v149 = *(this + 1) + 8;
              *(this + 1) = v149;
            }

            goto LABEL_290;
          }

          v253 = *(a1 + 184);
          v252 = *(a1 + 192);
          if (v253 >= v252)
          {
            v304 = *(a1 + 176);
            v305 = v253 - v304;
            v306 = (v253 - v304) >> 3;
            v307 = v306 + 1;
            if ((v306 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v308 = v252 - v304;
            if (v308 >> 2 > v307)
            {
              v307 = v308 >> 2;
            }

            if (v308 >= 0x7FFFFFFFFFFFFFF8)
            {
              v309 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v309 = v307;
            }

            if (v309)
            {
              sub_19B4C50F0(a1 + 176, v309);
            }

            v362 = (v253 - v304) >> 3;
            v363 = (8 * v306);
            v364 = (8 * v306 - 8 * v362);
            *v363 = 0;
            v233 = v363 + 1;
            memcpy(v364, v304, v305);
            v365 = *(a1 + 176);
            *(a1 + 176) = v364;
            *(a1 + 184) = v233;
            *(a1 + 192) = 0;
            if (v365)
            {
              operator delete(v365);
            }
          }

          else
          {
            *v253 = 0;
            v233 = v253 + 8;
          }

          *(a1 + 184) = v233;
          goto LABEL_461;
        case 7u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v181 = *(this + 1);
            v182 = *(this + 2);
            while (v181 < v182 && (*(this + 24) & 1) == 0)
            {
              v184 = *(a1 + 112);
              v183 = *(a1 + 120);
              if (v184 >= v183)
              {
                v186 = *(a1 + 104);
                v187 = v184 - v186;
                v188 = (v184 - v186) >> 3;
                v189 = v188 + 1;
                if ((v188 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v190 = v183 - v186;
                if (v190 >> 2 > v189)
                {
                  v189 = v190 >> 2;
                }

                if (v190 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v191 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v191 = v189;
                }

                if (v191)
                {
                  sub_19B4C50F0(a1 + 104, v191);
                }

                v192 = (v184 - v186) >> 3;
                v193 = (8 * v188);
                v194 = (8 * v188 - 8 * v192);
                *v193 = 0;
                v185 = v193 + 1;
                memcpy(v194, v186, v187);
                v195 = *(a1 + 104);
                *(a1 + 104) = v194;
                *(a1 + 112) = v185;
                *(a1 + 120) = 0;
                if (v195)
                {
                  operator delete(v195);
                }
              }

              else
              {
                *v184 = 0;
                v185 = v184 + 8;
              }

              *(a1 + 112) = v185;
              v196 = *(this + 1);
              if (v196 > 0xFFFFFFFFFFFFFFF7 || v196 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v185 - 1) = *(*this + v196);
              v182 = *(this + 2);
              v181 = *(this + 1) + 8;
              *(this + 1) = v181;
            }

            goto LABEL_290;
          }

          v257 = *(a1 + 112);
          v256 = *(a1 + 120);
          if (v257 >= v256)
          {
            v316 = *(a1 + 104);
            v317 = v257 - v316;
            v318 = (v257 - v316) >> 3;
            v319 = v318 + 1;
            if ((v318 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v320 = v256 - v316;
            if (v320 >> 2 > v319)
            {
              v319 = v320 >> 2;
            }

            if (v320 >= 0x7FFFFFFFFFFFFFF8)
            {
              v321 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v321 = v319;
            }

            if (v321)
            {
              sub_19B4C50F0(a1 + 104, v321);
            }

            v370 = (v257 - v316) >> 3;
            v371 = (8 * v318);
            v372 = (8 * v318 - 8 * v370);
            *v371 = 0;
            v233 = v371 + 1;
            memcpy(v372, v316, v317);
            v373 = *(a1 + 104);
            *(a1 + 104) = v372;
            *(a1 + 112) = v233;
            *(a1 + 120) = 0;
            if (v373)
            {
              operator delete(v373);
            }
          }

          else
          {
            *v257 = 0;
            v233 = v257 + 8;
          }

          *(a1 + 112) = v233;
          goto LABEL_461;
        case 8u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v131 = *(this + 1);
            v132 = *(this + 2);
            while (v131 < v132 && (*(this + 24) & 1) == 0)
            {
              v134 = *(a1 + 280);
              v133 = *(a1 + 288);
              if (v134 >= v133)
              {
                v136 = *(a1 + 272);
                v137 = v134 - v136;
                v138 = (v134 - v136) >> 3;
                v139 = v138 + 1;
                if ((v138 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v140 = v133 - v136;
                if (v140 >> 2 > v139)
                {
                  v139 = v140 >> 2;
                }

                if (v140 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v141 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v141 = v139;
                }

                if (v141)
                {
                  sub_19B4C50F0(a1 + 272, v141);
                }

                v142 = (v134 - v136) >> 3;
                v143 = (8 * v138);
                v144 = (8 * v138 - 8 * v142);
                *v143 = 0;
                v135 = v143 + 1;
                memcpy(v144, v136, v137);
                v145 = *(a1 + 272);
                *(a1 + 272) = v144;
                *(a1 + 280) = v135;
                *(a1 + 288) = 0;
                if (v145)
                {
                  operator delete(v145);
                }
              }

              else
              {
                *v134 = 0;
                v135 = v134 + 8;
              }

              *(a1 + 280) = v135;
              v146 = *(this + 1);
              if (v146 > 0xFFFFFFFFFFFFFFF7 || v146 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v135 - 1) = *(*this + v146);
              v132 = *(this + 2);
              v131 = *(this + 1) + 8;
              *(this + 1) = v131;
            }

            goto LABEL_290;
          }

          v251 = *(a1 + 280);
          v250 = *(a1 + 288);
          if (v251 >= v250)
          {
            v298 = *(a1 + 272);
            v299 = v251 - v298;
            v300 = (v251 - v298) >> 3;
            v301 = v300 + 1;
            if ((v300 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v302 = v250 - v298;
            if (v302 >> 2 > v301)
            {
              v301 = v302 >> 2;
            }

            if (v302 >= 0x7FFFFFFFFFFFFFF8)
            {
              v303 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v303 = v301;
            }

            if (v303)
            {
              sub_19B4C50F0(a1 + 272, v303);
            }

            v358 = (v251 - v298) >> 3;
            v359 = (8 * v300);
            v360 = (8 * v300 - 8 * v358);
            *v359 = 0;
            v233 = v359 + 1;
            memcpy(v360, v298, v299);
            v361 = *(a1 + 272);
            *(a1 + 272) = v360;
            *(a1 + 280) = v233;
            *(a1 + 288) = 0;
            if (v361)
            {
              operator delete(v361);
            }
          }

          else
          {
            *v251 = 0;
            v233 = v251 + 8;
          }

          *(a1 + 280) = v233;
          goto LABEL_461;
        case 9u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_473:
              v383 = 0;
              return v383 & 1;
            }

            v215 = *(this + 1);
            v216 = *(this + 2);
            while (v215 < v216 && (*(this + 24) & 1) == 0)
            {
              v218 = *(a1 + 16);
              v217 = *(a1 + 24);
              if (v218 >= v217)
              {
                v220 = *(a1 + 8);
                v221 = v218 - v220;
                v222 = (v218 - v220) >> 3;
                v223 = v222 + 1;
                if ((v222 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v224 = v217 - v220;
                if (v224 >> 2 > v223)
                {
                  v223 = v224 >> 2;
                }

                if (v224 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v225 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v225 = v223;
                }

                if (v225)
                {
                  sub_19B4C50F0(a1 + 8, v225);
                }

                v226 = (v218 - v220) >> 3;
                v227 = (8 * v222);
                v228 = (8 * v222 - 8 * v226);
                *v227 = 0;
                v219 = v227 + 1;
                memcpy(v228, v220, v221);
                v229 = *(a1 + 8);
                *(a1 + 8) = v228;
                *(a1 + 16) = v219;
                *(a1 + 24) = 0;
                if (v229)
                {
                  operator delete(v229);
                }
              }

              else
              {
                *v218 = 0;
                v219 = v218 + 8;
              }

              *(a1 + 16) = v219;
              v230 = *(this + 1);
              if (v230 > 0xFFFFFFFFFFFFFFF7 || v230 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v219 - 1) = *(*this + v230);
              v216 = *(this + 2);
              v215 = *(this + 1) + 8;
              *(this + 1) = v215;
            }

LABEL_290:
            PB::Reader::recallMark();
          }

          else
          {
            v261 = *(a1 + 16);
            v260 = *(a1 + 24);
            if (v261 >= v260)
            {
              v328 = *(a1 + 8);
              v329 = v261 - v328;
              v330 = (v261 - v328) >> 3;
              v331 = v330 + 1;
              if ((v330 + 1) >> 61)
              {
LABEL_474:
                sub_19B5BE690();
              }

              v332 = v260 - v328;
              if (v332 >> 2 > v331)
              {
                v331 = v332 >> 2;
              }

              if (v332 >= 0x7FFFFFFFFFFFFFF8)
              {
                v333 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v333 = v331;
              }

              if (v333)
              {
                sub_19B4C50F0(a1 + 8, v333);
              }

              v378 = (v261 - v328) >> 3;
              v379 = (8 * v330);
              v380 = (8 * v330 - 8 * v378);
              *v379 = 0;
              v233 = v379 + 1;
              memcpy(v380, v328, v329);
              v381 = *(a1 + 8);
              *(a1 + 8) = v380;
              *(a1 + 16) = v233;
              *(a1 + 24) = 0;
              if (v381)
              {
                operator delete(v381);
              }
            }

            else
            {
              *v261 = 0;
              v233 = v261 + 8;
            }

            *(a1 + 16) = v233;
LABEL_461:
            v382 = *(this + 1);
            if (v382 <= 0xFFFFFFFFFFFFFFF7 && v382 + 8 <= *(this + 2))
            {
              *(v233 - 1) = *(*this + v382);
LABEL_465:
              v198 = *(this + 1) + 8;
LABEL_466:
              *(this + 1) = v198;
            }

            else
            {
LABEL_463:
              *(this + 24) = 1;
            }
          }

LABEL_467:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_471;
          }

          break;
        case 0xAu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v97 = *(this + 1);
            v98 = *(this + 2);
            while (v97 < v98 && (*(this + 24) & 1) == 0)
            {
              v100 = *(a1 + 232);
              v99 = *(a1 + 240);
              if (v100 >= v99)
              {
                v102 = *(a1 + 224);
                v103 = v100 - v102;
                v104 = (v100 - v102) >> 3;
                v105 = v104 + 1;
                if ((v104 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v106 = v99 - v102;
                if (v106 >> 2 > v105)
                {
                  v105 = v106 >> 2;
                }

                if (v106 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v107 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v107 = v105;
                }

                if (v107)
                {
                  sub_19B4C50F0(a1 + 224, v107);
                }

                v108 = (v100 - v102) >> 3;
                v109 = (8 * v104);
                v110 = (8 * v104 - 8 * v108);
                *v109 = 0;
                v101 = v109 + 1;
                memcpy(v110, v102, v103);
                v111 = *(a1 + 224);
                *(a1 + 224) = v110;
                *(a1 + 232) = v101;
                *(a1 + 240) = 0;
                if (v111)
                {
                  operator delete(v111);
                }
              }

              else
              {
                *v100 = 0;
                v101 = v100 + 8;
              }

              *(a1 + 232) = v101;
              v112 = *(this + 1);
              if (v112 > 0xFFFFFFFFFFFFFFF7 || v112 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v101 - 1) = *(*this + v112);
              v98 = *(this + 2);
              v97 = *(this + 1) + 8;
              *(this + 1) = v97;
            }

            goto LABEL_290;
          }

          v241 = *(a1 + 232);
          v240 = *(a1 + 240);
          if (v241 >= v240)
          {
            v286 = *(a1 + 224);
            v287 = v241 - v286;
            v288 = (v241 - v286) >> 3;
            v289 = v288 + 1;
            if ((v288 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v290 = v240 - v286;
            if (v290 >> 2 > v289)
            {
              v289 = v290 >> 2;
            }

            if (v290 >= 0x7FFFFFFFFFFFFFF8)
            {
              v291 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v291 = v289;
            }

            if (v291)
            {
              sub_19B4C50F0(a1 + 224, v291);
            }

            v350 = (v241 - v286) >> 3;
            v351 = (8 * v288);
            v352 = (8 * v288 - 8 * v350);
            *v351 = 0;
            v233 = v351 + 1;
            memcpy(v352, v286, v287);
            v353 = *(a1 + 224);
            *(a1 + 224) = v352;
            *(a1 + 232) = v233;
            *(a1 + 240) = 0;
            if (v353)
            {
              operator delete(v353);
            }
          }

          else
          {
            *v241 = 0;
            v233 = v241 + 8;
          }

          *(a1 + 232) = v233;
          goto LABEL_461;
        case 0xBu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v199 = *(this + 1);
            v200 = *(this + 2);
            while (v199 < v200 && (*(this + 24) & 1) == 0)
            {
              v202 = *(a1 + 160);
              v201 = *(a1 + 168);
              if (v202 >= v201)
              {
                v204 = *(a1 + 152);
                v205 = v202 - v204;
                v206 = (v202 - v204) >> 3;
                v207 = v206 + 1;
                if ((v206 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v208 = v201 - v204;
                if (v208 >> 2 > v207)
                {
                  v207 = v208 >> 2;
                }

                if (v208 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v209 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v209 = v207;
                }

                if (v209)
                {
                  sub_19B4C50F0(a1 + 152, v209);
                }

                v210 = (v202 - v204) >> 3;
                v211 = (8 * v206);
                v212 = (8 * v206 - 8 * v210);
                *v211 = 0;
                v203 = v211 + 1;
                memcpy(v212, v204, v205);
                v213 = *(a1 + 152);
                *(a1 + 152) = v212;
                *(a1 + 160) = v203;
                *(a1 + 168) = 0;
                if (v213)
                {
                  operator delete(v213);
                }
              }

              else
              {
                *v202 = 0;
                v203 = v202 + 8;
              }

              *(a1 + 160) = v203;
              v214 = *(this + 1);
              if (v214 > 0xFFFFFFFFFFFFFFF7 || v214 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v203 - 1) = *(*this + v214);
              v200 = *(this + 2);
              v199 = *(this + 1) + 8;
              *(this + 1) = v199;
            }

            goto LABEL_290;
          }

          v259 = *(a1 + 160);
          v258 = *(a1 + 168);
          if (v259 >= v258)
          {
            v322 = *(a1 + 152);
            v323 = v259 - v322;
            v324 = (v259 - v322) >> 3;
            v325 = v324 + 1;
            if ((v324 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v326 = v258 - v322;
            if (v326 >> 2 > v325)
            {
              v325 = v326 >> 2;
            }

            if (v326 >= 0x7FFFFFFFFFFFFFF8)
            {
              v327 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v327 = v325;
            }

            if (v327)
            {
              sub_19B4C50F0(a1 + 152, v327);
            }

            v374 = (v259 - v322) >> 3;
            v375 = (8 * v324);
            v376 = (8 * v324 - 8 * v374);
            *v375 = 0;
            v233 = v375 + 1;
            memcpy(v376, v322, v323);
            v377 = *(a1 + 152);
            *(a1 + 152) = v376;
            *(a1 + 160) = v233;
            *(a1 + 168) = 0;
            if (v377)
            {
              operator delete(v377);
            }
          }

          else
          {
            *v259 = 0;
            v233 = v259 + 8;
          }

          *(a1 + 160) = v233;
          goto LABEL_461;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v64 = *(this + 1);
            v65 = *(this + 2);
            while (v64 < v65 && (*(this + 24) & 1) == 0)
            {
              v67 = *(a1 + 136);
              v66 = *(a1 + 144);
              if (v67 >= v66)
              {
                v69 = *(a1 + 128);
                v70 = v67 - v69;
                v71 = (v67 - v69) >> 3;
                v72 = v71 + 1;
                if ((v71 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v73 = v66 - v69;
                if (v73 >> 2 > v72)
                {
                  v72 = v73 >> 2;
                }

                if (v73 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v74 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v74 = v72;
                }

                if (v74)
                {
                  sub_19B4C50F0(a1 + 128, v74);
                }

                v75 = (v67 - v69) >> 3;
                v76 = (8 * v71);
                v77 = (8 * v71 - 8 * v75);
                *v76 = 0;
                v68 = v76 + 1;
                memcpy(v77, v69, v70);
                v78 = *(a1 + 128);
                *(a1 + 128) = v77;
                *(a1 + 136) = v68;
                *(a1 + 144) = 0;
                if (v78)
                {
                  operator delete(v78);
                }
              }

              else
              {
                *v67 = 0;
                v68 = v67 + 8;
              }

              *(a1 + 136) = v68;
              v79 = *(this + 1);
              if (v79 > 0xFFFFFFFFFFFFFFF7 || v79 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v68 - 1) = *(*this + v79);
              v65 = *(this + 2);
              v64 = *(this + 1) + 8;
              *(this + 1) = v64;
            }

            goto LABEL_290;
          }

          v237 = *(a1 + 136);
          v236 = *(a1 + 144);
          if (v237 >= v236)
          {
            v274 = *(a1 + 128);
            v275 = v237 - v274;
            v276 = (v237 - v274) >> 3;
            v277 = v276 + 1;
            if ((v276 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v278 = v236 - v274;
            if (v278 >> 2 > v277)
            {
              v277 = v278 >> 2;
            }

            if (v278 >= 0x7FFFFFFFFFFFFFF8)
            {
              v279 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v279 = v277;
            }

            if (v279)
            {
              sub_19B4C50F0(a1 + 128, v279);
            }

            v342 = (v237 - v274) >> 3;
            v343 = (8 * v276);
            v344 = (8 * v276 - 8 * v342);
            *v343 = 0;
            v233 = v343 + 1;
            memcpy(v344, v274, v275);
            v345 = *(a1 + 128);
            *(a1 + 128) = v344;
            *(a1 + 136) = v233;
            *(a1 + 144) = 0;
            if (v345)
            {
              operator delete(v345);
            }
          }

          else
          {
            *v237 = 0;
            v233 = v237 + 8;
          }

          *(a1 + 136) = v233;
          goto LABEL_461;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v81 = *(this + 1);
            v82 = *(this + 2);
            while (v81 < v82 && (*(this + 24) & 1) == 0)
            {
              v84 = *(a1 + 256);
              v83 = *(a1 + 264);
              if (v84 >= v83)
              {
                v86 = *(a1 + 248);
                v87 = v84 - v86;
                v88 = (v84 - v86) >> 3;
                v89 = v88 + 1;
                if ((v88 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v90 = v83 - v86;
                if (v90 >> 2 > v89)
                {
                  v89 = v90 >> 2;
                }

                if (v90 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v91 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v91 = v89;
                }

                if (v91)
                {
                  sub_19B4C50F0(a1 + 248, v91);
                }

                v92 = (v84 - v86) >> 3;
                v93 = (8 * v88);
                v94 = (8 * v88 - 8 * v92);
                *v93 = 0;
                v85 = v93 + 1;
                memcpy(v94, v86, v87);
                v95 = *(a1 + 248);
                *(a1 + 248) = v94;
                *(a1 + 256) = v85;
                *(a1 + 264) = 0;
                if (v95)
                {
                  operator delete(v95);
                }
              }

              else
              {
                *v84 = 0;
                v85 = v84 + 8;
              }

              *(a1 + 256) = v85;
              v96 = *(this + 1);
              if (v96 > 0xFFFFFFFFFFFFFFF7 || v96 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v85 - 1) = *(*this + v96);
              v82 = *(this + 2);
              v81 = *(this + 1) + 8;
              *(this + 1) = v81;
            }

            goto LABEL_290;
          }

          v239 = *(a1 + 256);
          v238 = *(a1 + 264);
          if (v239 >= v238)
          {
            v280 = *(a1 + 248);
            v281 = v239 - v280;
            v282 = (v239 - v280) >> 3;
            v283 = v282 + 1;
            if ((v282 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v284 = v238 - v280;
            if (v284 >> 2 > v283)
            {
              v283 = v284 >> 2;
            }

            if (v284 >= 0x7FFFFFFFFFFFFFF8)
            {
              v285 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v285 = v283;
            }

            if (v285)
            {
              sub_19B4C50F0(a1 + 248, v285);
            }

            v346 = (v239 - v280) >> 3;
            v347 = (8 * v282);
            v348 = (8 * v282 - 8 * v346);
            *v347 = 0;
            v233 = v347 + 1;
            memcpy(v348, v280, v281);
            v349 = *(a1 + 248);
            *(a1 + 248) = v348;
            *(a1 + 256) = v233;
            *(a1 + 264) = 0;
            if (v349)
            {
              operator delete(v349);
            }
          }

          else
          {
            *v239 = 0;
            v233 = v239 + 8;
          }

          *(a1 + 256) = v233;
          goto LABEL_461;
        case 0xEu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v165 = *(this + 1);
            v166 = *(this + 2);
            while (v165 < v166 && (*(this + 24) & 1) == 0)
            {
              v168 = *(a1 + 40);
              v167 = *(a1 + 48);
              if (v168 >= v167)
              {
                v170 = *(a1 + 32);
                v171 = v168 - v170;
                v172 = (v168 - v170) >> 3;
                v173 = v172 + 1;
                if ((v172 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v174 = v167 - v170;
                if (v174 >> 2 > v173)
                {
                  v173 = v174 >> 2;
                }

                if (v174 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v175 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v175 = v173;
                }

                if (v175)
                {
                  sub_19B4C50F0(a1 + 32, v175);
                }

                v176 = (v168 - v170) >> 3;
                v177 = (8 * v172);
                v178 = (8 * v172 - 8 * v176);
                *v177 = 0;
                v169 = v177 + 1;
                memcpy(v178, v170, v171);
                v179 = *(a1 + 32);
                *(a1 + 32) = v178;
                *(a1 + 40) = v169;
                *(a1 + 48) = 0;
                if (v179)
                {
                  operator delete(v179);
                }
              }

              else
              {
                *v168 = 0;
                v169 = v168 + 8;
              }

              *(a1 + 40) = v169;
              v180 = *(this + 1);
              if (v180 > 0xFFFFFFFFFFFFFFF7 || v180 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v169 - 1) = *(*this + v180);
              v166 = *(this + 2);
              v165 = *(this + 1) + 8;
              *(this + 1) = v165;
            }

            goto LABEL_290;
          }

          v255 = *(a1 + 40);
          v254 = *(a1 + 48);
          if (v255 >= v254)
          {
            v310 = *(a1 + 32);
            v311 = v255 - v310;
            v312 = (v255 - v310) >> 3;
            v313 = v312 + 1;
            if ((v312 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v314 = v254 - v310;
            if (v314 >> 2 > v313)
            {
              v313 = v314 >> 2;
            }

            if (v314 >= 0x7FFFFFFFFFFFFFF8)
            {
              v315 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v315 = v313;
            }

            if (v315)
            {
              sub_19B4C50F0(a1 + 32, v315);
            }

            v366 = (v255 - v310) >> 3;
            v367 = (8 * v312);
            v368 = (8 * v312 - 8 * v366);
            *v367 = 0;
            v233 = v367 + 1;
            memcpy(v368, v310, v311);
            v369 = *(a1 + 32);
            *(a1 + 32) = v368;
            *(a1 + 40) = v233;
            *(a1 + 48) = 0;
            if (v369)
            {
              operator delete(v369);
            }
          }

          else
          {
            *v255 = 0;
            v233 = v255 + 8;
          }

          *(a1 + 40) = v233;
          goto LABEL_461;
        case 0xFu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v48 = *(this + 1);
            v49 = *(this + 2);
            while (v48 < v49 && (*(this + 24) & 1) == 0)
            {
              v51 = *(a1 + 208);
              v50 = *(a1 + 216);
              if (v51 >= v50)
              {
                v53 = *(a1 + 200);
                v54 = v51 - v53;
                v55 = (v51 - v53) >> 3;
                v56 = v55 + 1;
                if ((v55 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v57 = v50 - v53;
                if (v57 >> 2 > v56)
                {
                  v56 = v57 >> 2;
                }

                if (v57 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v58 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v58 = v56;
                }

                if (v58)
                {
                  sub_19B4C50F0(a1 + 200, v58);
                }

                v59 = (v51 - v53) >> 3;
                v60 = (8 * v55);
                v61 = (8 * v55 - 8 * v59);
                *v60 = 0;
                v52 = v60 + 1;
                memcpy(v61, v53, v54);
                v62 = *(a1 + 200);
                *(a1 + 200) = v61;
                *(a1 + 208) = v52;
                *(a1 + 216) = 0;
                if (v62)
                {
                  operator delete(v62);
                }
              }

              else
              {
                *v51 = 0;
                v52 = v51 + 8;
              }

              *(a1 + 208) = v52;
              v63 = *(this + 1);
              if (v63 > 0xFFFFFFFFFFFFFFF7 || v63 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v52 - 1) = *(*this + v63);
              v49 = *(this + 2);
              v48 = *(this + 1) + 8;
              *(this + 1) = v48;
            }

            goto LABEL_290;
          }

          v235 = *(a1 + 208);
          v234 = *(a1 + 216);
          if (v235 >= v234)
          {
            v268 = *(a1 + 200);
            v269 = v235 - v268;
            v270 = (v235 - v268) >> 3;
            v271 = v270 + 1;
            if ((v270 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v272 = v234 - v268;
            if (v272 >> 2 > v271)
            {
              v271 = v272 >> 2;
            }

            if (v272 >= 0x7FFFFFFFFFFFFFF8)
            {
              v273 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v273 = v271;
            }

            if (v273)
            {
              sub_19B4C50F0(a1 + 200, v273);
            }

            v338 = (v235 - v268) >> 3;
            v339 = (8 * v270);
            v340 = (8 * v270 - 8 * v338);
            *v339 = 0;
            v233 = v339 + 1;
            memcpy(v340, v268, v269);
            v341 = *(a1 + 200);
            *(a1 + 200) = v340;
            *(a1 + 208) = v233;
            *(a1 + 216) = 0;
            if (v341)
            {
              operator delete(v341);
            }
          }

          else
          {
            *v235 = 0;
            v233 = v235 + 8;
          }

          *(a1 + 208) = v233;
          goto LABEL_461;
        case 0x10u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v114 = *(this + 1);
            v115 = *(this + 2);
            while (v114 < v115 && (*(this + 24) & 1) == 0)
            {
              v117 = *(a1 + 88);
              v116 = *(a1 + 96);
              if (v117 >= v116)
              {
                v119 = *(a1 + 80);
                v120 = v117 - v119;
                v121 = (v117 - v119) >> 3;
                v122 = v121 + 1;
                if ((v121 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v123 = v116 - v119;
                if (v123 >> 2 > v122)
                {
                  v122 = v123 >> 2;
                }

                if (v123 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v124 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v124 = v122;
                }

                if (v124)
                {
                  sub_19B4C50F0(a1 + 80, v124);
                }

                v125 = (v117 - v119) >> 3;
                v126 = (8 * v121);
                v127 = (8 * v121 - 8 * v125);
                *v126 = 0;
                v118 = v126 + 1;
                memcpy(v127, v119, v120);
                v128 = *(a1 + 80);
                *(a1 + 80) = v127;
                *(a1 + 88) = v118;
                *(a1 + 96) = 0;
                if (v128)
                {
                  operator delete(v128);
                }
              }

              else
              {
                *v117 = 0;
                v118 = v117 + 8;
              }

              *(a1 + 88) = v118;
              v129 = *(this + 1);
              if (v129 > 0xFFFFFFFFFFFFFFF7 || v129 + 8 > *(this + 2))
              {
                goto LABEL_289;
              }

              *(v118 - 1) = *(*this + v129);
              v115 = *(this + 2);
              v114 = *(this + 1) + 8;
              *(this + 1) = v114;
            }

            goto LABEL_290;
          }

          v243 = *(a1 + 88);
          v242 = *(a1 + 96);
          if (v243 >= v242)
          {
            v292 = *(a1 + 80);
            v293 = v243 - v292;
            v294 = (v243 - v292) >> 3;
            v295 = v294 + 1;
            if ((v294 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v296 = v242 - v292;
            if (v296 >> 2 > v295)
            {
              v295 = v296 >> 2;
            }

            if (v296 >= 0x7FFFFFFFFFFFFFF8)
            {
              v297 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v297 = v295;
            }

            if (v297)
            {
              sub_19B4C50F0(a1 + 80, v297);
            }

            v354 = (v243 - v292) >> 3;
            v355 = (8 * v294);
            v356 = (8 * v294 - 8 * v354);
            *v355 = 0;
            v233 = v355 + 1;
            memcpy(v356, v292, v293);
            v357 = *(a1 + 80);
            *(a1 + 80) = v356;
            *(a1 + 88) = v233;
            *(a1 + 96) = 0;
            if (v357)
            {
              operator delete(v357);
            }
          }

          else
          {
            *v243 = 0;
            v233 = v243 + 8;
          }

          *(a1 + 88) = v233;
          goto LABEL_461;
        case 0x11u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_473;
            }

            v32 = *(this + 1);
            v33 = *(this + 2);
            while (v32 < v33 && (*(this + 24) & 1) == 0)
            {
              v35 = *(a1 + 64);
              v34 = *(a1 + 72);
              if (v35 >= v34)
              {
                v37 = *(a1 + 56);
                v38 = v35 - v37;
                v39 = (v35 - v37) >> 3;
                v40 = v39 + 1;
                if ((v39 + 1) >> 61)
                {
                  goto LABEL_474;
                }

                v41 = v34 - v37;
                if (v41 >> 2 > v40)
                {
                  v40 = v41 >> 2;
                }

                if (v41 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v42 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v42 = v40;
                }

                if (v42)
                {
                  sub_19B4C50F0(a1 + 56, v42);
                }

                v43 = (v35 - v37) >> 3;
                v44 = (8 * v39);
                v45 = (8 * v39 - 8 * v43);
                *v44 = 0;
                v36 = v44 + 1;
                memcpy(v45, v37, v38);
                v46 = *(a1 + 56);
                *(a1 + 56) = v45;
                *(a1 + 64) = v36;
                *(a1 + 72) = 0;
                if (v46)
                {
                  operator delete(v46);
                }
              }

              else
              {
                *v35 = 0;
                v36 = v35 + 8;
              }

              *(a1 + 64) = v36;
              v47 = *(this + 1);
              if (v47 > 0xFFFFFFFFFFFFFFF7 || v47 + 8 > *(this + 2))
              {
LABEL_289:
                *(this + 24) = 1;
                goto LABEL_290;
              }

              *(v36 - 1) = *(*this + v47);
              v33 = *(this + 2);
              v32 = *(this + 1) + 8;
              *(this + 1) = v32;
            }

            goto LABEL_290;
          }

          v232 = *(a1 + 64);
          v231 = *(a1 + 72);
          if (v232 >= v231)
          {
            v262 = *(a1 + 56);
            v263 = v232 - v262;
            v264 = (v232 - v262) >> 3;
            v265 = v264 + 1;
            if ((v264 + 1) >> 61)
            {
              goto LABEL_474;
            }

            v266 = v231 - v262;
            if (v266 >> 2 > v265)
            {
              v265 = v266 >> 2;
            }

            if (v266 >= 0x7FFFFFFFFFFFFFF8)
            {
              v267 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v267 = v265;
            }

            if (v267)
            {
              sub_19B4C50F0(a1 + 56, v267);
            }

            v334 = (v232 - v262) >> 3;
            v335 = (8 * v264);
            v336 = (8 * v264 - 8 * v334);
            *v335 = 0;
            v233 = v335 + 1;
            memcpy(v336, v262, v263);
            v337 = *(a1 + 56);
            *(a1 + 56) = v336;
            *(a1 + 64) = v233;
            *(a1 + 72) = 0;
            if (v337)
            {
              operator delete(v337);
            }
          }

          else
          {
            *v232 = 0;
            v233 = v232 + 8;
          }

          *(a1 + 64) = v233;
          goto LABEL_461;
        case 0x12u:
          *(a1 + 340) |= 0x20u;
          v148 = *(this + 1);
          if (v148 > 0xFFFFFFFFFFFFFFFBLL || v148 + 4 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 332) = *(*this + v148);
          goto LABEL_248;
        case 0x13u:
          *(a1 + 340) |= 0x10u;
          v197 = *(this + 1);
          if (v197 > 0xFFFFFFFFFFFFFFFBLL || v197 + 4 > *(this + 2))
          {
            goto LABEL_463;
          }

          *(a1 + 328) = *(*this + v197);
LABEL_248:
          v198 = *(this + 1) + 4;
          goto LABEL_466;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_473;
          }

          goto LABEL_467;
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

LABEL_471:
  v383 = v4 ^ 1;
  return v383 & 1;
}

uint64_t sub_19B5540C4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 340);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 340);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*(result + 340) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 312));
  v4 = *(v3 + 340);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_50:
    result = PB::Writer::write(this, *(v3 + 320));
    if ((*(v3 + 340) & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 296));
  v4 = *(v3 + 340);
  if ((v4 & 8) != 0)
  {
    goto LABEL_50;
  }

LABEL_5:
  if ((v4 & 2) != 0)
  {
LABEL_6:
    result = PB::Writer::write(this, *(v3 + 304));
  }

LABEL_7:
  v5 = *(v3 + 176);
  v6 = *(v3 + 184);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 104);
  v9 = *(v3 + 112);
  while (v8 != v9)
  {
    v10 = *v8++;
    result = PB::Writer::write(this, v10);
  }

  v11 = *(v3 + 272);
  v12 = *(v3 + 280);
  while (v11 != v12)
  {
    v13 = *v11++;
    result = PB::Writer::write(this, v13);
  }

  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  while (v14 != v15)
  {
    v16 = *v14++;
    result = PB::Writer::write(this, v16);
  }

  v17 = *(v3 + 224);
  v18 = *(v3 + 232);
  while (v17 != v18)
  {
    v19 = *v17++;
    result = PB::Writer::write(this, v19);
  }

  v20 = *(v3 + 152);
  v21 = *(v3 + 160);
  while (v20 != v21)
  {
    v22 = *v20++;
    result = PB::Writer::write(this, v22);
  }

  v23 = *(v3 + 128);
  v24 = *(v3 + 136);
  while (v23 != v24)
  {
    v25 = *v23++;
    result = PB::Writer::write(this, v25);
  }

  v26 = *(v3 + 248);
  v27 = *(v3 + 256);
  while (v26 != v27)
  {
    v28 = *v26++;
    result = PB::Writer::write(this, v28);
  }

  v29 = *(v3 + 32);
  v30 = *(v3 + 40);
  while (v29 != v30)
  {
    v31 = *v29++;
    result = PB::Writer::write(this, v31);
  }

  v32 = *(v3 + 200);
  v33 = *(v3 + 208);
  while (v32 != v33)
  {
    v34 = *v32++;
    result = PB::Writer::write(this, v34);
  }

  v35 = *(v3 + 80);
  v36 = *(v3 + 88);
  while (v35 != v36)
  {
    v37 = *v35++;
    result = PB::Writer::write(this, v37);
  }

  v38 = *(v3 + 56);
  v39 = *(v3 + 64);
  while (v38 != v39)
  {
    v40 = *v38++;
    result = PB::Writer::write(this, v40);
  }

  v41 = *(v3 + 340);
  if ((v41 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 332));
    v41 = *(v3 + 340);
  }

  if ((v41 & 0x10) != 0)
  {
    v42 = *(v3 + 328);

    return PB::Writer::write(this, v42);
  }

  return result;
}

uint64_t sub_19B554348(uint64_t result)
{
  *result = &unk_1F0E2B520;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 112) = 0;
  return result;
}

void sub_19B554370(PB::Base *this)
{
  *this = &unk_1F0E2B520;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B5543D4(PB::Base *a1)
{
  sub_19B554370(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B55440C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 112);
  if (v5)
  {
    PB::TextFormatter::format(this, "currentTimestamp", *(a1 + 32));
    v5 = *(a1 + 112);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "latestInertialTimestamp", *(a1 + 40));
  v5 = *(a1 + 112);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "latestInertialTimestampMeta", *(a1 + 48));
  v5 = *(a1 + 112);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "positionX", *(a1 + 56));
  v5 = *(a1 + 112);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "positionY", *(a1 + 64));
  v5 = *(a1 + 112);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "positionZ", *(a1 + 72));
  v5 = *(a1 + 112);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "predictionComputeTimeMeta", *(a1 + 80));
  v5 = *(a1 + 112);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_25:
  PB::TextFormatter::format(this, "predictionTimeMeta", *(a1 + 88));
  if ((*(a1 + 112) & 0x100) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "propagationTimeMeta", *(a1 + 96));
  }

LABEL_11:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "rotationMatrixElement", v8);
  }

  if ((*(a1 + 112) & 0x200) != 0)
  {
    PB::TextFormatter::format(this, "targetTimestamp", *(a1 + 104));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5545C8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_111;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        if (v22 > 8)
        {
          switch(v22)
          {
            case 9:
              *(a1 + 112) |= 0x80u;
              v48 = *(this + 1);
              if (v48 > 0xFFFFFFFFFFFFFFF7 || v48 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 88) = *(*this + v48);
              goto LABEL_106;
            case 0xA:
              *(a1 + 112) |= 0x100u;
              v45 = *(this + 1);
              if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 96) = *(*this + v45);
              goto LABEL_106;
            case 0xB:
              *(a1 + 112) |= 0x40u;
              v25 = *(this + 1);
              if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 80) = *(*this + v25);
              goto LABEL_106;
          }
        }

        else
        {
          switch(v22)
          {
            case 6:
              *(a1 + 112) |= 0x10u;
              v47 = *(this + 1);
              if (v47 > 0xFFFFFFFFFFFFFFF7 || v47 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 64) = *(*this + v47);
              goto LABEL_106;
            case 7:
              *(a1 + 112) |= 0x20u;
              v44 = *(this + 1);
              if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 72) = *(*this + v44);
              goto LABEL_106;
            case 8:
              *(a1 + 112) |= 4u;
              v23 = *(this + 1);
              if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
              {
                goto LABEL_104;
              }

              *(a1 + 48) = *(*this + v23);
LABEL_106:
              *(this + 1) += 8;
              goto LABEL_107;
          }
        }

        goto LABEL_86;
      }

      if (v22 <= 2)
      {
        break;
      }

      if (v22 == 3)
      {
        *(a1 + 112) |= 2u;
        v46 = *(this + 1);
        if (v46 > 0xFFFFFFFFFFFFFFF7 || v46 + 8 > *(this + 2))
        {
          goto LABEL_104;
        }

        *(a1 + 40) = *(*this + v46);
        goto LABEL_106;
      }

      if (v22 != 4)
      {
        if (v22 == 5)
        {
          *(a1 + 112) |= 8u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
          {
            goto LABEL_104;
          }

          *(a1 + 56) = *(*this + v24);
          goto LABEL_106;
        }

        goto LABEL_86;
      }

      if ((v10 & 7) != 2)
      {
        v50 = *(a1 + 16);
        v49 = *(a1 + 24);
        if (v50 >= v49)
        {
          v52 = *(a1 + 8);
          v53 = v50 - v52;
          v54 = (v50 - v52) >> 3;
          v55 = v54 + 1;
          if ((v54 + 1) >> 61)
          {
LABEL_114:
            sub_19B5BE690();
          }

          v56 = v49 - v52;
          if (v56 >> 2 > v55)
          {
            v55 = v56 >> 2;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFF8)
          {
            v57 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v57 = v55;
          }

          if (v57)
          {
            sub_19B4C50F0(a1 + 8, v57);
          }

          v58 = (v50 - v52) >> 3;
          v59 = (8 * v54);
          v60 = (8 * v54 - 8 * v58);
          *v59 = 0;
          v51 = v59 + 1;
          memcpy(v60, v52, v53);
          v61 = *(a1 + 8);
          *(a1 + 8) = v60;
          *(a1 + 16) = v51;
          *(a1 + 24) = 0;
          if (v61)
          {
            operator delete(v61);
          }
        }

        else
        {
          *v50 = 0;
          v51 = v50 + 8;
        }

        *(a1 + 16) = v51;
        v62 = *(this + 1);
        if (v62 > 0xFFFFFFFFFFFFFFF7 || v62 + 8 > *(this + 2))
        {
LABEL_104:
          *(this + 24) = 1;
          goto LABEL_107;
        }

        *(v51 - 1) = *(*this + v62);
        goto LABEL_106;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_113;
      }

      v28 = *(this + 1);
      v29 = *(this + 2);
      while (v28 < v29 && (*(this + 24) & 1) == 0)
      {
        v31 = *(a1 + 16);
        v30 = *(a1 + 24);
        if (v31 >= v30)
        {
          v33 = *(a1 + 8);
          v34 = v31 - v33;
          v35 = (v31 - v33) >> 3;
          v36 = v35 + 1;
          if ((v35 + 1) >> 61)
          {
            goto LABEL_114;
          }

          v37 = v30 - v33;
          if (v37 >> 2 > v36)
          {
            v36 = v37 >> 2;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v38 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            sub_19B4C50F0(a1 + 8, v38);
          }

          v39 = (v31 - v33) >> 3;
          v40 = (8 * v35);
          v41 = (8 * v35 - 8 * v39);
          *v40 = 0;
          v32 = v40 + 1;
          memcpy(v41, v33, v34);
          v42 = *(a1 + 8);
          *(a1 + 8) = v41;
          *(a1 + 16) = v32;
          *(a1 + 24) = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v31 = 0;
          v32 = v31 + 8;
        }

        *(a1 + 16) = v32;
        v43 = *(this + 1);
        if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v32 - 1) = *(*this + v43);
        v29 = *(this + 2);
        v28 = *(this + 1) + 8;
        *(this + 1) = v28;
      }

      PB::Reader::recallMark();
LABEL_107:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_111;
      }
    }

    if (v22 == 1)
    {
      *(a1 + 112) |= 1u;
      v27 = *(this + 1);
      if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
      {
        goto LABEL_104;
      }

      *(a1 + 32) = *(*this + v27);
      goto LABEL_106;
    }

    if (v22 == 2)
    {
      *(a1 + 112) |= 0x200u;
      v26 = *(this + 1);
      if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
      {
        goto LABEL_104;
      }

      *(a1 + 104) = *(*this + v26);
      goto LABEL_106;
    }

LABEL_86:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_113:
      v63 = 0;
      return v63 & 1;
    }

    goto LABEL_107;
  }

LABEL_111:
  v63 = v4 ^ 1;
  return v63 & 1;
}