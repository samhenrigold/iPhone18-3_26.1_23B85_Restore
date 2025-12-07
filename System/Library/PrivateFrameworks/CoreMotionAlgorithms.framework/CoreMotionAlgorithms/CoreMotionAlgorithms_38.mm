uint64_t sub_245EE311C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 108);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "pitchMean", *(a1 + 24));
    v5 = *(a1 + 108);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "pitchStd", *(a1 + 28));
  v5 = *(a1 + 108);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "rollMeanAbs", *(a1 + 32));
  v5 = *(a1 + 108);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "rollStd", *(a1 + 36));
  v5 = *(a1 + 108);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "rotRateInerFFTAmpXYHigh", *(a1 + 40));
  v5 = *(a1 + 108);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "rotRateInerFFTAmpXYPed", *(a1 + 44));
  v5 = *(a1 + 108);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "rotRateInerFFTAmpZHigh", *(a1 + 48));
  v5 = *(a1 + 108);
  if ((v5 & 0x200) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  PB::TextFormatter::format(this, "rotRateInerFFTAmpZPed", *(a1 + 52));
  v5 = *(a1 + 108);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  PB::TextFormatter::format(this, "rotRateInerXYMean", *(a1 + 56));
  v5 = *(a1 + 108);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  PB::TextFormatter::format(this, "rotRateInerXYStd", *(a1 + 60));
  v5 = *(a1 + 108);
  if ((v5 & 0x1000) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  PB::TextFormatter::format(this, "rotRateInerZMean", *(a1 + 64));
  v5 = *(a1 + 108);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "rotRateInerZStd", *(a1 + 68));
  v5 = *(a1 + 108);
  if ((v5 & 1) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 108);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  v5 = *(a1 + 108);
  if ((v5 & 0x4000) == 0)
  {
LABEL_16:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "userAccelInerFFTAmpXYHigh", *(a1 + 72));
  v5 = *(a1 + 108);
  if ((v5 & 0x8000) == 0)
  {
LABEL_17:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "userAccelInerFFTAmpXYPed", *(a1 + 76));
  v5 = *(a1 + 108);
  if ((v5 & 0x10000) == 0)
  {
LABEL_18:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "userAccelInerFFTAmpZHigh", *(a1 + 80));
  v5 = *(a1 + 108);
  if ((v5 & 0x20000) == 0)
  {
LABEL_19:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "userAccelInerFFTAmpZPed", *(a1 + 84));
  v5 = *(a1 + 108);
  if ((v5 & 0x40000) == 0)
  {
LABEL_20:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "userAccelInerXYMean", *(a1 + 88));
  v5 = *(a1 + 108);
  if ((v5 & 0x80000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "userAccelInerXYStd", *(a1 + 92));
  v5 = *(a1 + 108);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "userAccelInerZMean", *(a1 + 96));
  v5 = *(a1 + 108);
  if ((v5 & 0x200000) == 0)
  {
LABEL_23:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_49:
  PB::TextFormatter::format(this, "userAccelInerZStd", *(a1 + 100));
  if ((*(a1 + 108) & 0x400000) != 0)
  {
LABEL_24:
    PB::TextFormatter::format(this, "yawStd", *(a1 + 104));
  }

LABEL_25:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE3440(uint64_t a1, PB::Reader *this)
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
        goto LABEL_102;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 108) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_89;
        case 2u:
          *(a1 + 108) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_96;
        case 3u:
          *(a1 + 108) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_96;
        case 4u:
          *(a1 + 108) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 92) = *(*this + v2);
          goto LABEL_96;
        case 5u:
          *(a1 + 108) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 100) = *(*this + v2);
          goto LABEL_96;
        case 6u:
          *(a1 + 108) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_96;
        case 7u:
          *(a1 + 108) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_96;
        case 8u:
          *(a1 + 108) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_96;
        case 9u:
          *(a1 + 108) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 68) = *(*this + v2);
          goto LABEL_96;
        case 0xAu:
          *(a1 + 108) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_96;
        case 0xBu:
          *(a1 + 108) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_96;
        case 0xCu:
          *(a1 + 108) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_96;
        case 0xDu:
          *(a1 + 108) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_96;
        case 0xEu:
          *(a1 + 108) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_96;
        case 0xFu:
          *(a1 + 108) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_96;
        case 0x10u:
          *(a1 + 108) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_96;
        case 0x11u:
          *(a1 + 108) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_96;
        case 0x12u:
          *(a1 + 108) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_96;
        case 0x13u:
          *(a1 + 108) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 76) = *(*this + v2);
          goto LABEL_96;
        case 0x14u:
          *(a1 + 108) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_96;
        case 0x15u:
          *(a1 + 108) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 84) = *(*this + v2);
          goto LABEL_96;
        case 0x16u:
          *(a1 + 108) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_92;
          }

          *(a1 + 80) = *(*this + v2);
LABEL_96:
          v2 = *(this + 1) + 4;
          goto LABEL_97;
        case 0x17u:
          *(a1 + 108) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_92:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 16) = *(*this + v2);
LABEL_89:
            v2 = *(this + 1) + 8;
LABEL_97:
            *(this + 1) = v2;
          }

          goto LABEL_98;
        default:
          if (!PB::Reader::skip(this))
          {
            v22 = 0;
            return v22 & 1;
          }

          v2 = *(this + 1);
LABEL_98:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_102;
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

LABEL_102:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245EE3B58(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 108);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 108);
    if ((v4 & 0x40000) == 0)
    {
LABEL_3:
      if ((v4 & 0x100000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v4 & 0x40000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 108);
  if ((v4 & 0x100000) == 0)
  {
LABEL_4:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 108);
  if ((v4 & 0x80000) == 0)
  {
LABEL_5:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 92));
  v4 = *(v3 + 108);
  if ((v4 & 0x200000) == 0)
  {
LABEL_6:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 100));
  v4 = *(v3 + 108);
  if ((v4 & 0x400) == 0)
  {
LABEL_7:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 108);
  if ((v4 & 0x1000) == 0)
  {
LABEL_8:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 108);
  if ((v4 & 0x800) == 0)
  {
LABEL_9:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 108);
  if ((v4 & 0x2000) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 108);
  if ((v4 & 4) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 108);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 108);
  if ((v4 & 8) == 0)
  {
LABEL_13:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 108);
  if ((v4 & 0x20) == 0)
  {
LABEL_14:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 108);
  if ((v4 & 0x400000) == 0)
  {
LABEL_15:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 108);
  if ((v4 & 0x80) == 0)
  {
LABEL_16:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 108);
  if ((v4 & 0x40) == 0)
  {
LABEL_17:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 108);
  if ((v4 & 0x200) == 0)
  {
LABEL_18:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 108);
  if ((v4 & 0x100) == 0)
  {
LABEL_19:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 108);
  if ((v4 & 0x8000) == 0)
  {
LABEL_20:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 76));
  v4 = *(v3 + 108);
  if ((v4 & 0x4000) == 0)
  {
LABEL_21:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 108);
  if ((v4 & 0x20000) == 0)
  {
LABEL_22:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

LABEL_46:
    result = PB::Writer::write(this, *(v3 + 80));
    if ((*(v3 + 108) & 2) == 0)
    {
      return result;
    }

    goto LABEL_47;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 108);
  if ((v4 & 0x10000) != 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_47:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EE3E14(uint64_t result)
{
  *result = &unk_2858D53C8;
  *(result + 20) = 0;
  return result;
}

void sub_245EE3E3C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245EE3E74(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D53C8;
  *(a1 + 20) = 0;
  if ((*(a2 + 20) & 1) == 0)
  {
    v2 = 2;
    if ((*(a2 + 20) & 2) == 0)
    {
      return *&v3;
    }

    goto LABEL_5;
  }

  v3 = *(a2 + 8);
  *(a1 + 20) = 1;
  *(a1 + 8) = v3;
  v2 = 3;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    LODWORD(v3) = *(a2 + 16);
    *(a1 + 20) = v2;
    *(a1 + 16) = v3;
  }

  return *&v3;
}

uint64_t sub_245EE3ED8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "radius", *(a1 + 16));
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE3F54(uint64_t a1, PB::Reader *this)
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
        *(a1 + 20) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_29;
        }

        *(a1 + 8) = *(*this + v2);
        v2 = *(this + 1) + 8;
LABEL_33:
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

    *(a1 + 20) |= 2u;
    v2 = *(this + 1);
    if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
    {
LABEL_29:
      *(this + 24) = 1;
      goto LABEL_34;
    }

    *(a1 + 16) = *(*this + v2);
    v2 = *(this + 1) + 4;
    goto LABEL_33;
  }

LABEL_38:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_245EE415C(uint64_t result, PB::Writer *this)
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
    v5 = *(v3 + 16);

    return PB::Writer::write(this, v5);
  }

  return result;
}

uint64_t sub_245EE41C8(uint64_t result)
{
  *result = &unk_2858D5400;
  *(result + 68) = 0;
  return result;
}

void sub_245EE41F0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EE4228(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5400;
  *(result + 68) = 0;
  v2 = *(a2 + 68);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 68) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 68);
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 68) & 0x200) != 0)
  {
LABEL_5:
    v5 = *(a2 + 52);
    v3 |= 0x200u;
    *(result + 68) = v3;
    *(result + 52) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 0x400) != 0)
  {
    v6 = *(a2 + 56);
    v3 |= 0x400u;
    *(result + 68) = v3;
    *(result + 56) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 0x800) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((v2 & 0x800) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 60);
  v3 |= 0x800u;
  *(result + 68) = v3;
  *(result + 60) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(a2 + 40);
  v3 |= 0x40u;
  *(result + 68) = v3;
  *(result + 40) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = *(a2 + 44);
  v3 |= 0x80u;
  *(result + 68) = v3;
  *(result + 44) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 0x100) == 0)
  {
LABEL_11:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 48);
  v3 |= 0x100u;
  *(result + 68) = v3;
  *(result + 48) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 0x1000) == 0)
  {
LABEL_12:
    if ((v2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = *(a2 + 64);
  v3 |= 0x1000u;
  *(result + 68) = v3;
  *(result + 64) = v11;
  v2 = *(a2 + 68);
  if ((v2 & 2) == 0)
  {
LABEL_13:
    if ((v2 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = *(a2 + 16);
  v3 |= 2u;
  *(result + 68) = v3;
  *(result + 16) = v12;
  v2 = *(a2 + 68);
  if ((v2 & 8) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = *(a2 + 28);
  v3 |= 8u;
  *(result + 68) = v3;
  *(result + 28) = v13;
  v2 = *(a2 + 68);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = *(a2 + 32);
  v3 |= 0x10u;
  *(result + 68) = v3;
  *(result + 32) = v14;
  v2 = *(a2 + 68);
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 4) == 0)
    {
      return result;
    }

LABEL_28:
    v16 = *(a2 + 24);
    *(result + 68) = v3 | 4;
    *(result + 24) = v16;
    return result;
  }

LABEL_27:
  v15 = *(a2 + 36);
  v3 |= 0x20u;
  *(result + 68) = v3;
  *(result + 36) = v15;
  if ((*(a2 + 68) & 4) != 0)
  {
    goto LABEL_28;
  }

  return result;
}

uint64_t sub_245EE43C0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if ((v5 & 0x1000) != 0)
  {
    PB::TextFormatter::format(this, "didExceedRadius");
    v5 = *(a1 + 68);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "fenceID");
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "positionRefX", *(a1 + 28));
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "positionRefY", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "positionRefZ", *(a1 + 36));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "positionUncX", *(a1 + 40));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "positionUncY", *(a1 + 44));
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "positionUncZ", *(a1 + 48));
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "positionX", *(a1 + 52));
  v5 = *(a1 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "positionY", *(a1 + 56));
  v5 = *(a1 + 68);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "positionZ", *(a1 + 60));
  v5 = *(a1 + 68);
  if ((v5 & 1) == 0)
  {
LABEL_13:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 68) & 2) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_15:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE45A4(uint64_t a1, PB::Reader *this)
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
        goto LABEL_90;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 68) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_83;
        case 2u:
          *(a1 + 68) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 52) = *(*this + v2);
          goto LABEL_64;
        case 3u:
          *(a1 + 68) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_64;
        case 4u:
          *(a1 + 68) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 60) = *(*this + v2);
          goto LABEL_64;
        case 5u:
          *(a1 + 68) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_64;
        case 6u:
          *(a1 + 68) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_64;
        case 7u:
          *(a1 + 68) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_64;
        case 8u:
          *(a1 + 68) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v30 = *(*this + v2++);
            *(this + 1) = v2;
            v31 = v30 != 0;
          }

          *(a1 + 64) = v31;
          goto LABEL_69;
        case 9u:
          *(a1 + 68) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_83:
          v2 = *(this + 1) + 8;
          goto LABEL_65;
        case 0xAu:
          *(a1 + 68) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_64;
        case 0xBu:
          *(a1 + 68) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_68;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_64;
        case 0xCu:
          *(a1 + 68) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_68:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 36) = *(*this + v2);
LABEL_64:
            v2 = *(this + 1) + 4;
LABEL_65:
            *(this + 1) = v2;
          }

          goto LABEL_69;
        case 0xDu:
          *(a1 + 68) |= 4u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v32 = 0;
            v33 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v34 = v2 - v22;
            v35 = (v23 + v22);
            v36 = v22 + 1;
            while (1)
            {
              if (!v34)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_88;
              }

              v37 = v36;
              v38 = *v35;
              *(this + 1) = v37;
              v26 |= (v38 & 0x7F) << v32;
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
                LODWORD(v26) = 0;
LABEL_87:
                v2 = v37;
                goto LABEL_88;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_87;
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = (v23 + v22);
          v28 = v22 + 1;
          do
          {
            v2 = v28;
            *(this + 1) = v28;
            v29 = *v27++;
            v26 |= (v29 & 0x7F) << v24;
            if ((v29 & 0x80) == 0)
            {
              goto LABEL_88;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_88:
          *(a1 + 24) = v26;
          goto LABEL_69;
        default:
          if (!PB::Reader::skip(this))
          {
            v39 = 0;
            return v39 & 1;
          }

          v2 = *(this + 1);
LABEL_69:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_90;
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

LABEL_90:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_245EE4B3C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 68);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(result + 68) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 68);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 68);
  if ((v4 & 0x800) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 0x1000) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_11:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_12:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    result = PB::Writer::write(this, *(v3 + 36));
    if ((*(v3 + 68) & 4) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_27:

  return PB::Writer::writeVarInt(this);
}

void sub_245EE4CE4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EE4D1C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5438;
  *(a1 + 20) = 0;
  if ((*(a2 + 20) & 2) != 0)
  {
    v3 = *(a2 + 16);
    *(a1 + 20) = 2;
    *(a1 + 16) = v3;
    v2 = 3;
    if ((*(a2 + 20) & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 20))
  {
LABEL_5:
    result = *(a2 + 8);
    *(a1 + 20) = v2;
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t sub_245EE4D7C(uint64_t a1, PB::TextFormatter *this, char *a3)
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
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE4DF8(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EE50C4(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EE5130(uint64_t result)
{
  *result = &unk_2858D5470;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 56) = 0;
  return result;
}

void sub_245EE5158(PB::Base *this)
{
  *this = &unk_2858D5470;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EE51BC(PB::Base *a1)
{
  sub_245EE5158(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EE51F4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5470;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56))
  {
    v6 = *(a2 + 32);
    *(a1 + 56) = 1;
    *(a1 + 32) = v6;
    v5 = 9;
    if ((*(a2 + 56) & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 8;
  if ((*(a2 + 56) & 8) != 0)
  {
LABEL_5:
    v7 = *(a2 + 52);
    *(a1 + 56) = v5;
    *(a1 + 52) = v7;
  }

LABEL_6:
  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v8 = *(a2 + 56);
  if ((v8 & 2) != 0)
  {
    v9 = *(a2 + 40);
    *(a1 + 56) |= 2u;
    *(a1 + 40) = v9;
    v8 = *(a2 + 56);
  }

  if ((v8 & 4) != 0)
  {
    v10 = *(a2 + 48);
    *(a1 + 56) |= 4u;
    *(a1 + 48) = v10;
  }

  return a1;
}

uint64_t sub_245EE52D8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "isPedestrian");
    v5 = *(a1 + 56);
  }

  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "pedestrianClass");
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "pedestrianClassProbability", v8);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
    v9 = *(a1 + 56);
  }

  if ((v9 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 40));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE53C8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_103;
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
        goto LABEL_103;
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
          *(a1 + 56) |= 2u;
          v52 = *(this + 1);
          if (v52 <= 0xFFFFFFFFFFFFFFF7 && v52 + 8 <= *(this + 2))
          {
            *(a1 + 40) = *(*this + v52);
LABEL_63:
            v54 = *(this + 1) + 8;
LABEL_64:
            *(this + 1) = v54;
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        if (v22 == 5)
        {
          *(a1 + 56) |= 4u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v58 = 0;
            v59 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v60 = v23 - v24;
            if (!v17)
            {
              v60 = 0;
            }

            v61 = (v25 + v24);
            v62 = v24 + 1;
            while (1)
            {
              if (!v60)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_90;
              }

              v63 = *v61;
              *(this + 1) = v62;
              v28 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v58 += 7;
              --v60;
              ++v61;
              ++v62;
              v14 = v59++ > 8;
              if (v14)
              {
LABEL_76:
                LODWORD(v28) = 0;
                goto LABEL_90;
              }
            }

            if (*(this + 24))
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
                goto LABEL_76;
              }
            }
          }

LABEL_90:
          *(a1 + 48) = v28;
          goto LABEL_98;
        }

        goto LABEL_65;
      }

      if ((v10 & 7) != 2)
      {
        v56 = *(a1 + 16);
        v55 = *(a1 + 24);
        if (v56 >= v55)
        {
          v64 = *(a1 + 8);
          v65 = v56 - v64;
          v66 = (v56 - v64) >> 2;
          v67 = v66 + 1;
          if ((v66 + 1) >> 62)
          {
LABEL_106:
            sub_245DF85A4();
          }

          v68 = v55 - v64;
          if (v68 >> 1 > v67)
          {
            v67 = v68 >> 1;
          }

          if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v69 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v67;
          }

          if (v69)
          {
            sub_245DF85BC(a1 + 8, v69);
          }

          v70 = (v56 - v64) >> 2;
          v71 = (4 * v66);
          v72 = (4 * v66 - 4 * v70);
          *v71 = 0;
          v57 = v71 + 1;
          memcpy(v72, v64, v65);
          v73 = *(a1 + 8);
          *(a1 + 8) = v72;
          *(a1 + 16) = v57;
          *(a1 + 24) = 0;
          if (v73)
          {
            operator delete(v73);
          }
        }

        else
        {
          *v56 = 0;
          v57 = v56 + 4;
        }

        *(a1 + 16) = v57;
        v74 = *(this + 1);
        if (v74 <= 0xFFFFFFFFFFFFFFFBLL && v74 + 4 <= *(this + 2))
        {
          *(v57 - 1) = *(*this + v74);
          v54 = *(this + 1) + 4;
          goto LABEL_64;
        }

LABEL_97:
        *(this + 24) = 1;
        goto LABEL_98;
      }

      if (PB::Reader::placeMark())
      {
        goto LABEL_105;
      }

      v36 = *(this + 1);
      v37 = *(this + 2);
      while (v36 < v37 && (*(this + 24) & 1) == 0)
      {
        v39 = *(a1 + 16);
        v38 = *(a1 + 24);
        if (v39 >= v38)
        {
          v41 = *(a1 + 8);
          v42 = v39 - v41;
          v43 = (v39 - v41) >> 2;
          v44 = v43 + 1;
          if ((v43 + 1) >> 62)
          {
            goto LABEL_106;
          }

          v45 = v38 - v41;
          if (v45 >> 1 > v44)
          {
            v44 = v45 >> 1;
          }

          if (v45 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v46 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v46 = v44;
          }

          if (v46)
          {
            sub_245DF85BC(a1 + 8, v46);
          }

          v47 = (v39 - v41) >> 2;
          v48 = (4 * v43);
          v49 = (4 * v43 - 4 * v47);
          *v48 = 0;
          v40 = v48 + 1;
          memcpy(v49, v41, v42);
          v50 = *(a1 + 8);
          *(a1 + 8) = v49;
          *(a1 + 16) = v40;
          *(a1 + 24) = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          *v39 = 0;
          v40 = v39 + 4;
        }

        *(a1 + 16) = v40;
        v51 = *(this + 1);
        if (v51 > 0xFFFFFFFFFFFFFFFBLL || v51 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v40 - 1) = *(*this + v51);
        v37 = *(this + 2);
        v36 = *(this + 1) + 4;
        *(this + 1) = v36;
      }

      PB::Reader::recallMark();
LABEL_98:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_103;
      }
    }

    if (v22 == 1)
    {
      *(a1 + 56) |= 1u;
      v53 = *(this + 1);
      if (v53 <= 0xFFFFFFFFFFFFFFF7 && v53 + 8 <= *(this + 2))
      {
        *(a1 + 32) = *(*this + v53);
        goto LABEL_63;
      }

      goto LABEL_97;
    }

    if (v22 == 2)
    {
      *(a1 + 56) |= 8u;
      v32 = *(this + 1);
      if (v32 >= *(this + 2))
      {
        v35 = 0;
        *(this + 24) = 1;
      }

      else
      {
        v33 = v32 + 1;
        v34 = *(*this + v32);
        *(this + 1) = v33;
        v35 = v34 != 0;
      }

      *(a1 + 52) = v35;
      goto LABEL_98;
    }

LABEL_65:
    if ((PB::Reader::skip(this) & 1) == 0)
    {
LABEL_105:
      v75 = 0;
      return v75 & 1;
    }

    goto LABEL_98;
  }

LABEL_103:
  v75 = v4 ^ 1;
  return v75 & 1;
}

uint64_t sub_245EE5928(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 56);
  }

  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this);
  }

  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 56);
  if ((v8 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 40));
    v8 = *(v3 + 56);
  }

  if ((v8 & 4) != 0)
  {

    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245EE59F0(uint64_t result)
{
  *result = &unk_2858D54A8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 52) = 0;
  return result;
}

void sub_245EE5A18(PB::Base *this)
{
  *this = &unk_2858D54A8;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EE5A7C(PB::Base *a1)
{
  sub_245EE5A18(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EE5AB4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D54A8;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 52) = 0;
  if (*(a2 + 52))
  {
    v6 = *(a2 + 32);
    *(a1 + 52) = 1;
    *(a1 + 32) = v6;
    v5 = 5;
    if ((*(a2 + 52) & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = 4;
  if ((*(a2 + 52) & 4) != 0)
  {
LABEL_5:
    v7 = *(a2 + 48);
    *(a1 + 52) = v5;
    *(a1 + 48) = v7;
  }

LABEL_6:
  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  if ((*(a2 + 52) & 2) != 0)
  {
    v8 = *(a2 + 40);
    *(a1 + 52) |= 2u;
    *(a1 + 40) = v8;
  }

  return a1;
}

uint64_t sub_245EE5B7C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 52) & 4) != 0)
  {
    PB::TextFormatter::format(this, "placement");
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "placementProbability", v7);
  }

  v8 = *(a1 + 52);
  if (v8)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
    v8 = *(a1 + 52);
  }

  if ((v8 & 2) != 0)
  {
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 40));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE5C50(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 2)
      {
        break;
      }

      if (v22 != 3)
      {
        if (v22 == 4)
        {
          *(a1 + 52) |= 2u;
          v32 = *(this + 1);
          if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(this + 2))
          {
            *(a1 + 40) = *(*this + v32);
LABEL_42:
            v34 = *(this + 1) + 8;
LABEL_43:
            *(this + 1) = v34;
            goto LABEL_93;
          }

          goto LABEL_92;
        }

LABEL_37:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
          goto LABEL_100;
        }

        goto LABEL_93;
      }

      if ((v10 & 7) != 2)
      {
        v58 = *(a1 + 16);
        v57 = *(a1 + 24);
        if (v58 >= v57)
        {
          v60 = *(a1 + 8);
          v61 = v58 - v60;
          v62 = (v58 - v60) >> 2;
          v63 = v62 + 1;
          if ((v62 + 1) >> 62)
          {
LABEL_101:
            sub_245DF85A4();
          }

          v64 = v57 - v60;
          if (v64 >> 1 > v63)
          {
            v63 = v64 >> 1;
          }

          if (v64 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v65 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v65 = v63;
          }

          if (v65)
          {
            sub_245DF85BC(a1 + 8, v65);
          }

          v66 = (v58 - v60) >> 2;
          v67 = (4 * v62);
          v68 = (4 * v62 - 4 * v66);
          *v67 = 0;
          v59 = v67 + 1;
          memcpy(v68, v60, v61);
          v69 = *(a1 + 8);
          *(a1 + 8) = v68;
          *(a1 + 16) = v59;
          *(a1 + 24) = 0;
          if (v69)
          {
            operator delete(v69);
          }
        }

        else
        {
          *v58 = 0;
          v59 = v58 + 4;
        }

        *(a1 + 16) = v59;
        v70 = *(this + 1);
        if (v70 <= 0xFFFFFFFFFFFFFFFBLL && v70 + 4 <= *(this + 2))
        {
          *(v59 - 1) = *(*this + v70);
          v34 = *(this + 1) + 4;
          goto LABEL_43;
        }

LABEL_92:
        *(this + 24) = 1;
        goto LABEL_93;
      }

      if (PB::Reader::placeMark())
      {
LABEL_100:
        v71 = 0;
        return v71 & 1;
      }

      v35 = *(this + 1);
      v36 = *(this + 2);
      while (v35 < v36 && (*(this + 24) & 1) == 0)
      {
        v38 = *(a1 + 16);
        v37 = *(a1 + 24);
        if (v38 >= v37)
        {
          v40 = *(a1 + 8);
          v41 = v38 - v40;
          v42 = (v38 - v40) >> 2;
          v43 = v42 + 1;
          if ((v42 + 1) >> 62)
          {
            goto LABEL_101;
          }

          v44 = v37 - v40;
          if (v44 >> 1 > v43)
          {
            v43 = v44 >> 1;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v45 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            sub_245DF85BC(a1 + 8, v45);
          }

          v46 = (v38 - v40) >> 2;
          v47 = (4 * v42);
          v48 = (4 * v42 - 4 * v46);
          *v47 = 0;
          v39 = v47 + 1;
          memcpy(v48, v40, v41);
          v49 = *(a1 + 8);
          *(a1 + 8) = v48;
          *(a1 + 16) = v39;
          *(a1 + 24) = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        else
        {
          *v38 = 0;
          v39 = v38 + 4;
        }

        *(a1 + 16) = v39;
        v50 = *(this + 1);
        if (v50 > 0xFFFFFFFFFFFFFFFBLL || v50 + 4 > *(this + 2))
        {
          *(this + 24) = 1;
          break;
        }

        *(v39 - 1) = *(*this + v50);
        v36 = *(this + 2);
        v35 = *(this + 1) + 4;
        *(this + 1) = v35;
      }

      PB::Reader::recallMark();
LABEL_93:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_98;
      }
    }

    if (v22 == 1)
    {
      *(a1 + 52) |= 1u;
      v33 = *(this + 1);
      if (v33 <= 0xFFFFFFFFFFFFFFF7 && v33 + 8 <= *(this + 2))
      {
        *(a1 + 32) = *(*this + v33);
        goto LABEL_42;
      }

      goto LABEL_92;
    }

    if (v22 == 2)
    {
      *(a1 + 52) |= 4u;
      v24 = *(this + 1);
      v23 = *(this + 2);
      v25 = *this;
      if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
      {
        v51 = 0;
        v52 = 0;
        v28 = 0;
        v17 = v23 >= v24;
        v53 = v23 - v24;
        if (!v17)
        {
          v53 = 0;
        }

        v54 = (v25 + v24);
        v55 = v24 + 1;
        while (1)
        {
          if (!v53)
          {
            LODWORD(v28) = 0;
            *(this + 24) = 1;
            goto LABEL_85;
          }

          v56 = *v54;
          *(this + 1) = v55;
          v28 |= (v56 & 0x7F) << v51;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          --v53;
          ++v54;
          ++v55;
          v14 = v52++ > 8;
          if (v14)
          {
LABEL_71:
            LODWORD(v28) = 0;
            goto LABEL_85;
          }
        }

        if (*(this + 24))
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
            goto LABEL_71;
          }
        }
      }

LABEL_85:
      *(a1 + 48) = v28;
      goto LABEL_93;
    }

    goto LABEL_37;
  }

LABEL_98:
  v71 = v4 ^ 1;
  return v71 & 1;
}

uint64_t sub_245EE6164(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 52);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 52);
  }

  if ((v4 & 4) != 0)
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

  if ((*(v3 + 52) & 2) != 0)
  {
    v8 = *(v3 + 40);

    return PB::Writer::write(this, v8);
  }

  return result;
}

uint64_t sub_245EE6214(uint64_t result)
{
  *result = &unk_2858D54E0;
  *(result + 32) = 0;
  return result;
}

void sub_245EE623C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EE6274(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D54E0;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 32) = 1;
    *(a1 + 8) = result;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 32) = v3;
    *(a1 + 24) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 16);
    *(a1 + 32) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 32) = v3;
  *(a1 + 28) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EE6310(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "speed", *(a1 + 24));
    v5 = *(a1 + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "speedUnc", *(a1 + 28));
  v5 = *(a1 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE63D4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_49;
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
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 4;
LABEL_44:
          *(this + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_38:
          v2 = *(this + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EE6664(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 28));
      if ((*(v3 + 32) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EE670C(uint64_t result)
{
  *result = &unk_2858D5518;
  *(result + 32) = 0;
  return result;
}

void sub_245EE6734(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EE676C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5518;
  *(a1 + 32) = 0;
  v2 = *(a2 + 32);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 32) = 1;
    *(a1 + 8) = result;
    v2 = *(a2 + 32);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 32) & 4) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 24);
    v3 |= 4u;
    *(a1 + 32) = v3;
    *(a1 + 24) = LODWORD(result);
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_10:
    result = *(a2 + 16);
    *(a1 + 32) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 32) = v3;
  *(a1 + 28) = LODWORD(result);
  if ((*(a2 + 32) & 2) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EE6808(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "speed", *(a1 + 24));
    v5 = *(a1 + 32);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 32) & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "speedUnc", *(a1 + 28));
  v5 = *(a1 + 32);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 32) & 2) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE68CC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_49;
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
          *(a1 + 32) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_41:
            *(this + 24) = 1;
            goto LABEL_45;
          }

          *(a1 + 28) = *(*this + v2);
LABEL_43:
          v2 = *(this + 1) + 4;
LABEL_44:
          *(this + 1) = v2;
          goto LABEL_45;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_38:
          v2 = *(this + 1) + 8;
          goto LABEL_44;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_38;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_41;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_43;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_45:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EE6B5C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 32);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 32);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = PB::Writer::write(this, *(v3 + 28));
      if ((*(v3 + 32) & 2) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((*(result + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 32);
  if ((v4 & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_9:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EE6C04(uint64_t result)
{
  *result = &unk_2858D5550;
  *(result + 48) = 0;
  return result;
}

void sub_245EE6C2C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EE6C64(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5550;
  *(a1 + 48) = 0;
  v2 = *(a2 + 48);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 48) = 1;
    *(a1 + 8) = result;
    v2 = *(a2 + 48);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 48) & 0x20) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 36);
    v3 |= 0x20u;
    *(a1 + 48) = v3;
    *(a1 + 36) = LODWORD(result);
    v2 = *(a2 + 48);
  }

LABEL_6:
  if ((v2 & 0x40) != 0)
  {
    LODWORD(result) = *(a2 + 40);
    v3 |= 0x40u;
    *(a1 + 48) = v3;
    *(a1 + 40) = LODWORD(result);
    v2 = *(a2 + 48);
    if ((v2 & 0x80) == 0)
    {
LABEL_8:
      if ((v2 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_15;
    }
  }

  else if ((v2 & 0x80) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 44);
  v3 |= 0x80u;
  *(a1 + 48) = v3;
  *(a1 + 44) = LODWORD(result);
  v2 = *(a2 + 48);
  if ((v2 & 4) == 0)
  {
LABEL_9:
    if ((v2 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(result) = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 48) = v3;
  *(a1 + 24) = LODWORD(result);
  v2 = *(a2 + 48);
  if ((v2 & 8) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_16:
  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 48) = v3;
  *(a1 + 28) = LODWORD(result);
  v2 = *(a2 + 48);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_18:
    result = *(a2 + 16);
    *(a1 + 48) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

LABEL_17:
  LODWORD(result) = *(a2 + 32);
  v3 |= 0x10u;
  *(a1 + 48) = v3;
  *(a1 + 32) = LODWORD(result);
  if ((*(a2 + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_245EE6D70(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 48);
  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
    v5 = *(a1 + 48);
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

  else if ((*(a1 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestampPast", *(a1 + 16));
  v5 = *(a1 + 48);
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
  PB::TextFormatter::format(this, "velocityUncX", *(a1 + 24));
  v5 = *(a1 + 48);
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
  PB::TextFormatter::format(this, "velocityUncY", *(a1 + 28));
  v5 = *(a1 + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "velocityUncZ", *(a1 + 32));
  v5 = *(a1 + 48);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PB::TextFormatter::format(this, "velocityY", *(a1 + 40));
    if ((*(a1 + 48) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PB::TextFormatter::format(this, "velocityX", *(a1 + 36));
  v5 = *(a1 + 48);
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
  PB::TextFormatter::format(this, "velocityZ", *(a1 + 44));
LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE6EB4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_67;
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
            *(a1 + 48) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_57:
              *(this + 24) = 1;
              goto LABEL_63;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_61;
          }

          if (v22 == 8)
          {
            *(a1 + 48) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_57;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_48:
            v2 = *(this + 1) + 8;
LABEL_62:
            *(this + 1) = v2;
            goto LABEL_63;
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 48) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_57;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_61;
          }

          if (v22 == 6)
          {
            *(a1 + 48) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_57;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_61;
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 48) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_61;
        }

        if (v22 == 4)
        {
          *(a1 + 48) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 44) = *(*this + v2);
LABEL_61:
          v2 = *(this + 1) + 4;
          goto LABEL_62;
        }
      }

      else
      {
        if (v22 == 1)
        {
          *(a1 + 48) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_48;
        }

        if (v22 == 2)
        {
          *(a1 + 48) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_57;
          }

          *(a1 + 36) = *(*this + v2);
          goto LABEL_61;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_63:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_67:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_245EE7254(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 48);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 48);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(result + 48) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 48);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 48);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 48);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 48);
  if ((v4 & 8) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 48) & 2) == 0)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 48);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_17:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

void *sub_245EE736C(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2858D5588;
  return result;
}

void sub_245EE7390(PB::Base *this)
{
  *this = &unk_2858D5588;
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

void sub_245EE7444(PB::Base *a1)
{
  sub_245EE7390(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EE747C(void *a1, uint64_t a2)
{
  *a1 = &unk_2858D5588;
  a1[1] = 0;
  a1[2] = 0;
  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_245EE7594(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "signalEnvironment");
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE7648(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245EE78EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

uint64_t sub_245EE7950(uint64_t result)
{
  *result = &unk_2858D55C0;
  *(result + 48) = 0;
  *(result + 64) = 0;
  return result;
}

void sub_245EE7978(PB::Base *this)
{
  *this = &unk_2858D55C0;
  v2 = *(this + 6);
  *(this + 6) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EE79FC(PB::Base *a1)
{
  sub_245EE7978(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EE7A34(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D55C0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  v2 = *(a2 + 64);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 56);
    v3 = 32;
    *(a1 + 64) = 32;
    *(a1 + 56) = v4;
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
    v5 = *(a2 + 32);
    v3 |= 8u;
    *(a1 + 64) = v3;
    *(a1 + 32) = v5;
    v2 = *(a2 + 64);
  }

LABEL_6:
  if ((v2 & 0x10) != 0)
  {
    v7 = *(a2 + 40);
    v3 |= 0x10u;
    *(a1 + 64) = v3;
    *(a1 + 40) = v7;
    v2 = *(a2 + 64);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 64) = v3;
  *(a1 + 24) = v8;
  v2 = *(a2 + 64);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_16:
  v9 = *(a2 + 8);
  v3 |= 1u;
  *(a1 + 64) = v3;
  *(a1 + 8) = v9;
  if ((*(a2 + 64) & 2) != 0)
  {
LABEL_10:
    v6 = *(a2 + 16);
    *(a1 + 64) = v3 | 2;
    *(a1 + 16) = v6;
  }

LABEL_11:
  if (*(a2 + 48))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_245EE7B90(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if (v5)
  {
    PB::TextFormatter::format(this, "course", *(a1 + 8));
    v5 = *(a1 + 64);
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

  else if ((*(a1 + 64) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "courseAccuracy", *(a1 + 16));
  v5 = *(a1 + 64);
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
  PB::TextFormatter::format(this, "horizontalAccuracy", *(a1 + 24));
  v5 = *(a1 + 64);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  PB::TextFormatter::format(this, "latitude", *(a1 + 32));
  if ((*(a1 + 64) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "longitude", *(a1 + 40));
  }

LABEL_7:
  v6 = *(a1 + 48);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "signalEnvironment");
  }

  if ((*(a1 + 64) & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 56));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE7CC8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_58;
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
            *(a1 + 64) |= 0x20u;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
            {
LABEL_51:
              *(this + 24) = 1;
              goto LABEL_54;
            }

            *(a1 + 56) = *(*this + v25);
            goto LABEL_53;
          case 2:
            *(a1 + 64) |= 8u;
            v28 = *(this + 1);
            if (v28 > 0xFFFFFFFFFFFFFFF7 || v28 + 8 > *(this + 2))
            {
              goto LABEL_51;
            }

            *(a1 + 32) = *(*this + v28);
            goto LABEL_53;
          case 3:
            *(a1 + 64) |= 0x10u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
            {
              goto LABEL_51;
            }

            *(a1 + 40) = *(*this + v24);
            goto LABEL_53;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 64) |= 2u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 16) = *(*this + v27);
          goto LABEL_53;
        }

        if (v22 == 7)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 64) |= 4u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 24) = *(*this + v26);
          goto LABEL_53;
        }

        if (v22 == 5)
        {
          *(a1 + 64) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_51;
          }

          *(a1 + 8) = *(*this + v23);
LABEL_53:
          *(this + 1) += 8;
          goto LABEL_54;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v30 = 0;
        return v30 & 1;
      }

LABEL_54:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_58:
  v30 = v4 ^ 1;
  return v30 & 1;
}

uint64_t sub_245EE8094(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 64);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(result + 64) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 8));
  if ((*(v3 + 64) & 2) != 0)
  {
LABEL_7:
    result = PB::Writer::write(this, *(v3 + 16));
  }

LABEL_8:
  v5 = *(v3 + 48);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

void *sub_245EE818C(void *result)
{
  *result = &unk_2858D55F8;
  result[1] = 0;
  return result;
}

void sub_245EE81AC(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D55F8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EE822C(PB::Base *a1)
{
  sub_245EE81AC(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EE8264(void *a1, uint64_t a2)
{
  *a1 = &unk_2858D55F8;
  a1[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_245EE830C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE8388(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245EE85C4(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EE85E0(void *result)
{
  *result = &unk_2858D5630;
  result[1] = 0;
  return result;
}

void sub_245EE8600(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D5630;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EE8680(PB::Base *a1)
{
  sub_245EE8600(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EE86B8(void *a1, uint64_t a2)
{
  *a1 = &unk_2858D5630;
  a1[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_245EE8760(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE87DC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245EE8A18(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

void *sub_245EE8A34(void *result)
{
  *result = &unk_2858D5668;
  result[1] = 0;
  return result;
}

void sub_245EE8A54(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_2858D5668;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EE8AD4(PB::Base *a1)
{
  sub_245EE8A54(a1);

  JUMPOUT(0x24C194490);
}

void *sub_245EE8B0C(void *a1, uint64_t a2)
{
  *a1 = &unk_2858D5668;
  a1[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_245EE8BB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE8C30(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
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
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_245EE8E6C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_245EE8E88(uint64_t result)
{
  *result = &unk_2858D56A0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_245EE8EB0(PB::Base *this)
{
  *this = &unk_2858D56A0;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EE8F14(PB::Base *a1)
{
  sub_245EE8EB0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EE8F4C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D56A0;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40))
  {
    v4 = *(a2 + 32);
    *(a1 + 40) = 1;
    *(a1 + 32) = v4;
  }

  if (a1 != a2)
  {
    sub_245DF86C8(v3, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  }

  return a1;
}

uint64_t sub_245EE8FD4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 40))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "velocity", v7);
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE9068(uint64_t a1, PB::Reader *this)
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
            goto LABEL_72;
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
        if ((v10 & 7) != 2)
        {
          v40 = *(a1 + 16);
          v39 = *(a1 + 24);
          if (v40 >= v39)
          {
            v42 = *(a1 + 8);
            v43 = v40 - v42;
            v44 = (v40 - v42) >> 3;
            v45 = v44 + 1;
            if ((v44 + 1) >> 61)
            {
LABEL_75:
              sub_245DF85A4();
            }

            v46 = v39 - v42;
            if (v46 >> 2 > v45)
            {
              v45 = v46 >> 2;
            }

            if (v46 >= 0x7FFFFFFFFFFFFFF8)
            {
              v47 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v47 = v45;
            }

            if (v47)
            {
              sub_245DF8830(a1 + 8, v47);
            }

            v48 = (v40 - v42) >> 3;
            v49 = (8 * v44);
            v50 = (8 * v44 - 8 * v48);
            *v49 = 0;
            v41 = v49 + 1;
            memcpy(v50, v42, v43);
            v51 = *(a1 + 8);
            *(a1 + 8) = v50;
            *(a1 + 16) = v41;
            *(a1 + 24) = 0;
            if (v51)
            {
              operator delete(v51);
            }
          }

          else
          {
            *v40 = 0;
            v41 = v40 + 8;
          }

          *(a1 + 16) = v41;
          v52 = *(this + 1);
          if (v52 > 0xFFFFFFFFFFFFFFF7 || v52 + 8 > *(this + 2))
          {
LABEL_65:
            *(this + 24) = 1;
            goto LABEL_68;
          }

          *(v41 - 1) = *(*this + v52);
          goto LABEL_67;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_74;
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
              goto LABEL_75;
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
        if ((v10 >> 3) == 1)
        {
          *(a1 + 40) |= 1u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_65;
          }

          *(a1 + 32) = *(*this + v22);
LABEL_67:
          *(this + 1) += 8;
          goto LABEL_68;
        }

        if ((PB::Reader::skip(this) & 1) == 0)
        {
LABEL_74:
          v53 = 0;
          return v53 & 1;
        }
      }

LABEL_68:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_72:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_245EE9434(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 40))
  {
    result = PB::Writer::write(this, *(result + 32));
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

double sub_245EE9498(uint64_t a1)
{
  *a1 = &unk_2858D56D8;
  *(a1 + 124) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_245EE94D4(PB::Base *this)
{
  *this = &unk_2858D56D8;
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }

  PB::Base::~Base(this);
}

void sub_245EE9558(PB::Base *a1)
{
  sub_245EE94D4(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EE9590(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 56) = 0u;
  *a1 = &unk_2858D56D8;
  *(a1 + 124) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  v5 = *(a2 + 124);
  if (v5)
  {
    v7 = *(a2 + 80);
    v6 = 1;
    *(a1 + 124) = 1;
    *(a1 + 80) = v7;
    v5 = *(a2 + 124);
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  if ((v5 & 0x40) != 0)
  {
LABEL_5:
    v8 = *(a2 + 108);
    v6 |= 0x40u;
    *(a1 + 124) = v6;
    *(a1 + 108) = v8;
    v5 = *(a2 + 124);
  }

LABEL_6:
  if ((v5 & 0x20) != 0)
  {
    v13 = *(a2 + 104);
    v6 |= 0x20u;
    *(a1 + 124) = v6;
    *(a1 + 104) = v13;
    v5 = *(a2 + 124);
    if ((v5 & 0x200) == 0)
    {
LABEL_8:
      if ((v5 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v14 = *(a2 + 120);
  v6 |= 0x200u;
  *(a1 + 124) = v6;
  *(a1 + 120) = v14;
  v5 = *(a2 + 124);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = *(a2 + 88);
  v6 |= 2u;
  *(a1 + 124) = v6;
  *(a1 + 88) = v15;
  v5 = *(a2 + 124);
  if ((v5 & 0x80) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_24:
  v16 = *(a2 + 112);
  v6 |= 0x80u;
  *(a1 + 124) = v6;
  *(a1 + 112) = v16;
  if ((*(a2 + 124) & 0x10) != 0)
  {
LABEL_11:
    v9 = *(a2 + 100);
    *(a1 + 124) = v6 | 0x10;
    *(a1 + 100) = v9;
  }

LABEL_12:
  if (a1 != a2)
  {
    sub_245DF843C(v4, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  }

  v10 = *(a2 + 124);
  if ((v10 & 8) != 0)
  {
    v17 = *(a2 + 96);
    *(a1 + 124) |= 8u;
    *(a1 + 96) = v17;
    v10 = *(a2 + 124);
    if ((v10 & 0x100) == 0)
    {
LABEL_16:
      if ((v10 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((*(a2 + 124) & 0x100) == 0)
  {
    goto LABEL_16;
  }

  v18 = *(a2 + 116);
  *(a1 + 124) |= 0x100u;
  *(a1 + 116) = v18;
  if ((*(a2 + 124) & 4) != 0)
  {
LABEL_17:
    v11 = *(a2 + 92);
    *(a1 + 124) |= 4u;
    *(a1 + 92) = v11;
  }

LABEL_18:
  if (a1 != a2)
  {
    sub_245DF843C((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
    sub_245DF843C((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  }

  return a1;
}

uint64_t sub_245EE9774(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 124);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "distance", *(a1 + 88));
    v5 = *(a1 + 124);
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

  PB::TextFormatter::format(this, "focalLength", *(a1 + 92));
  v5 = *(a1 + 124);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_27:
  PB::TextFormatter::format(this, "height", *(a1 + 96));
  if ((*(a1 + 124) & 0x10) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "orientation");
  }

LABEL_6:
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    PB::TextFormatter::format(this, "origin", v8);
  }

  if ((*(a1 + 124) & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "pitch", *(a1 + 104));
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(this, "principlePoint", v11);
  }

  v12 = *(a1 + 124);
  if ((v12 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "roll", *(a1 + 108));
    v12 = *(a1 + 124);
  }

  if (v12)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 80));
  }

  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  while (v13 != v14)
  {
    v15 = *v13++;
    PB::TextFormatter::format(this, "transform", v15);
  }

  v16 = *(a1 + 124);
  if ((v16 & 0x80) != 0)
  {
    PB::TextFormatter::format(this, "type");
    v16 = *(a1 + 124);
    if ((v16 & 0x100) == 0)
    {
LABEL_20:
      if ((v16 & 0x200) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 124) & 0x100) == 0)
  {
    goto LABEL_20;
  }

  PB::TextFormatter::format(this, "width", *(a1 + 116));
  if ((*(a1 + 124) & 0x200) != 0)
  {
LABEL_21:
    PB::TextFormatter::format(this, "yaw", *(a1 + 120));
  }

LABEL_22:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE9980(uint64_t a1, PB::Reader *this)
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
        goto LABEL_198;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 124) |= 1u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 80) = *(*this + v23);
          v24 = *(this + 1) + 8;
          goto LABEL_193;
        case 2u:
          *(a1 + 124) |= 0x40u;
          v77 = *(this + 1);
          if (v77 > 0xFFFFFFFFFFFFFFFBLL || v77 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 108) = *(*this + v77);
          goto LABEL_192;
        case 3u:
          *(a1 + 124) |= 0x20u;
          v59 = *(this + 1);
          if (v59 > 0xFFFFFFFFFFFFFFFBLL || v59 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 104) = *(*this + v59);
          goto LABEL_192;
        case 4u:
          *(a1 + 124) |= 0x200u;
          v60 = *(this + 1);
          if (v60 > 0xFFFFFFFFFFFFFFFBLL || v60 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 120) = *(*this + v60);
          goto LABEL_192;
        case 5u:
          *(a1 + 124) |= 2u;
          v41 = *(this + 1);
          if (v41 > 0xFFFFFFFFFFFFFFFBLL || v41 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 88) = *(*this + v41);
          goto LABEL_192;
        case 6u:
          *(a1 + 124) |= 0x80u;
          v79 = *(this + 1);
          v78 = *(this + 2);
          v80 = *this;
          if (v79 <= 0xFFFFFFFFFFFFFFF5 && v79 + 10 <= v78)
          {
            v81 = 0;
            v82 = 0;
            v83 = 0;
            v84 = (v80 + v79);
            v85 = v79 + 1;
            do
            {
              *(this + 1) = v85;
              v86 = *v84++;
              v83 |= (v86 & 0x7F) << v81;
              if ((v86 & 0x80) == 0)
              {
                goto LABEL_175;
              }

              v81 += 7;
              ++v85;
              v14 = v82++ > 8;
            }

            while (!v14);
LABEL_136:
            LODWORD(v83) = 0;
            goto LABEL_175;
          }

          v105 = 0;
          v106 = 0;
          v83 = 0;
          v17 = v78 >= v79;
          v107 = v78 - v79;
          if (!v17)
          {
            v107 = 0;
          }

          v108 = (v80 + v79);
          v109 = v79 + 1;
          while (2)
          {
            if (v107)
            {
              v110 = *v108;
              *(this + 1) = v109;
              v83 |= (v110 & 0x7F) << v105;
              if (v110 < 0)
              {
                v105 += 7;
                --v107;
                ++v108;
                ++v109;
                v14 = v106++ > 8;
                if (v14)
                {
                  goto LABEL_136;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v83) = 0;
              }
            }

            else
            {
              LODWORD(v83) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_175:
          *(a1 + 112) = v83;
          goto LABEL_194;
        case 7u:
          *(a1 + 124) |= 0x10u;
          v88 = *(this + 1);
          v87 = *(this + 2);
          v89 = *this;
          if (v88 <= 0xFFFFFFFFFFFFFFF5 && v88 + 10 <= v87)
          {
            v90 = 0;
            v91 = 0;
            v92 = 0;
            v93 = (v89 + v88);
            v94 = v88 + 1;
            do
            {
              *(this + 1) = v94;
              v95 = *v93++;
              v92 |= (v95 & 0x7F) << v90;
              if ((v95 & 0x80) == 0)
              {
                goto LABEL_178;
              }

              v90 += 7;
              ++v94;
              v14 = v91++ > 8;
            }

            while (!v14);
LABEL_144:
            LODWORD(v92) = 0;
            goto LABEL_178;
          }

          v111 = 0;
          v112 = 0;
          v92 = 0;
          v17 = v87 >= v88;
          v113 = v87 - v88;
          if (!v17)
          {
            v113 = 0;
          }

          v114 = (v89 + v88);
          v115 = v88 + 1;
          while (2)
          {
            if (v113)
            {
              v116 = *v114;
              *(this + 1) = v115;
              v92 |= (v116 & 0x7F) << v111;
              if (v116 < 0)
              {
                v111 += 7;
                --v113;
                ++v114;
                ++v115;
                v14 = v112++ > 8;
                if (v14)
                {
                  goto LABEL_144;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v92) = 0;
              }
            }

            else
            {
              LODWORD(v92) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_178:
          *(a1 + 100) = v92;
          goto LABEL_194;
        case 8u:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
LABEL_200:
              v148 = 0;
              return v148 & 1;
            }

            v61 = *(this + 1);
            v62 = *(this + 2);
            while (v61 < v62 && (*(this + 24) & 1) == 0)
            {
              v64 = *(a1 + 16);
              v63 = *(a1 + 24);
              if (v64 >= v63)
              {
                v66 = *(a1 + 8);
                v67 = v64 - v66;
                v68 = (v64 - v66) >> 2;
                v69 = v68 + 1;
                if ((v68 + 1) >> 62)
                {
                  goto LABEL_201;
                }

                v70 = v63 - v66;
                if (v70 >> 1 > v69)
                {
                  v69 = v70 >> 1;
                }

                if (v70 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v71 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v71 = v69;
                }

                if (v71)
                {
                  sub_245DF85BC(a1 + 8, v71);
                }

                v72 = (v64 - v66) >> 2;
                v73 = (4 * v68);
                v74 = (4 * v68 - 4 * v72);
                *v73 = 0;
                v65 = v73 + 1;
                memcpy(v74, v66, v67);
                v75 = *(a1 + 8);
                *(a1 + 8) = v74;
                *(a1 + 16) = v65;
                *(a1 + 24) = 0;
                if (v75)
                {
                  operator delete(v75);
                }
              }

              else
              {
                *v64 = 0;
                v65 = v64 + 4;
              }

              *(a1 + 16) = v65;
              v76 = *(this + 1);
              if (v76 > 0xFFFFFFFFFFFFFFFBLL || v76 + 4 > *(this + 2))
              {
                goto LABEL_145;
              }

              *(v65 - 1) = *(*this + v76);
              v62 = *(this + 2);
              v61 = *(this + 1) + 4;
              *(this + 1) = v61;
            }

LABEL_146:
            PB::Reader::recallMark();
          }

          else
          {
            v104 = *(a1 + 16);
            v103 = *(a1 + 24);
            if (v104 >= v103)
            {
              v129 = *(a1 + 8);
              v130 = v104 - v129;
              v131 = (v104 - v129) >> 2;
              v132 = v131 + 1;
              if ((v131 + 1) >> 62)
              {
LABEL_201:
                sub_245DF85A4();
              }

              v133 = v103 - v129;
              if (v133 >> 1 > v132)
              {
                v132 = v133 >> 1;
              }

              if (v133 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v134 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v134 = v132;
              }

              if (v134)
              {
                sub_245DF85BC(a1 + 8, v134);
              }

              v143 = (v104 - v129) >> 2;
              v144 = (4 * v131);
              v145 = (4 * v131 - 4 * v143);
              *v144 = 0;
              v100 = v144 + 1;
              memcpy(v145, v129, v130);
              v146 = *(a1 + 8);
              *(a1 + 8) = v145;
              *(a1 + 16) = v100;
              *(a1 + 24) = 0;
              if (v146)
              {
                operator delete(v146);
              }
            }

            else
            {
              *v104 = 0;
              v100 = v104 + 4;
            }

            *(a1 + 16) = v100;
LABEL_188:
            v147 = *(this + 1);
            if (v147 <= 0xFFFFFFFFFFFFFFFBLL && v147 + 4 <= *(this + 2))
            {
              *(v100 - 1) = *(*this + v147);
LABEL_192:
              v24 = *(this + 1) + 4;
LABEL_193:
              *(this + 1) = v24;
            }

            else
            {
LABEL_190:
              *(this + 24) = 1;
            }
          }

LABEL_194:
          v2 = *(this + 1);
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_198;
          }

          break;
        case 9u:
          *(a1 + 124) |= 8u;
          v97 = *(this + 1);
          if (v97 > 0xFFFFFFFFFFFFFFFBLL || v97 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 96) = *(*this + v97);
          goto LABEL_192;
        case 0xAu:
          *(a1 + 124) |= 0x100u;
          v58 = *(this + 1);
          if (v58 > 0xFFFFFFFFFFFFFFFBLL || v58 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 116) = *(*this + v58);
          goto LABEL_192;
        case 0xBu:
          *(a1 + 124) |= 4u;
          v96 = *(this + 1);
          if (v96 > 0xFFFFFFFFFFFFFFFBLL || v96 + 4 > *(this + 2))
          {
            goto LABEL_190;
          }

          *(a1 + 92) = *(*this + v96);
          goto LABEL_192;
        case 0xCu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_200;
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
                  goto LABEL_201;
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
                  sub_245DF85BC(a1 + 32, v35);
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
                goto LABEL_145;
              }

              *(v29 - 1) = *(*this + v40);
              v26 = *(this + 2);
              v25 = *(this + 1) + 4;
              *(this + 1) = v25;
            }

            goto LABEL_146;
          }

          v99 = *(a1 + 40);
          v98 = *(a1 + 48);
          if (v99 >= v98)
          {
            v117 = *(a1 + 32);
            v118 = v99 - v117;
            v119 = (v99 - v117) >> 2;
            v120 = v119 + 1;
            if ((v119 + 1) >> 62)
            {
              goto LABEL_201;
            }

            v121 = v98 - v117;
            if (v121 >> 1 > v120)
            {
              v120 = v121 >> 1;
            }

            if (v121 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v122 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v122 = v120;
            }

            if (v122)
            {
              sub_245DF85BC(a1 + 32, v122);
            }

            v135 = (v99 - v117) >> 2;
            v136 = (4 * v119);
            v137 = (4 * v119 - 4 * v135);
            *v136 = 0;
            v100 = v136 + 1;
            memcpy(v137, v117, v118);
            v138 = *(a1 + 32);
            *(a1 + 32) = v137;
            *(a1 + 40) = v100;
            *(a1 + 48) = 0;
            if (v138)
            {
              operator delete(v138);
            }
          }

          else
          {
            *v99 = 0;
            v100 = v99 + 4;
          }

          *(a1 + 40) = v100;
          goto LABEL_188;
        case 0xDu:
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_200;
            }

            v42 = *(this + 1);
            v43 = *(this + 2);
            while (v42 < v43 && (*(this + 24) & 1) == 0)
            {
              v45 = *(a1 + 64);
              v44 = *(a1 + 72);
              if (v45 >= v44)
              {
                v47 = *(a1 + 56);
                v48 = v45 - v47;
                v49 = (v45 - v47) >> 2;
                v50 = v49 + 1;
                if ((v49 + 1) >> 62)
                {
                  goto LABEL_201;
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
                  sub_245DF85BC(a1 + 56, v52);
                }

                v53 = (v45 - v47) >> 2;
                v54 = (4 * v49);
                v55 = (4 * v49 - 4 * v53);
                *v54 = 0;
                v46 = v54 + 1;
                memcpy(v55, v47, v48);
                v56 = *(a1 + 56);
                *(a1 + 56) = v55;
                *(a1 + 64) = v46;
                *(a1 + 72) = 0;
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

              *(a1 + 64) = v46;
              v57 = *(this + 1);
              if (v57 > 0xFFFFFFFFFFFFFFFBLL || v57 + 4 > *(this + 2))
              {
LABEL_145:
                *(this + 24) = 1;
                goto LABEL_146;
              }

              *(v46 - 1) = *(*this + v57);
              v43 = *(this + 2);
              v42 = *(this + 1) + 4;
              *(this + 1) = v42;
            }

            goto LABEL_146;
          }

          v102 = *(a1 + 64);
          v101 = *(a1 + 72);
          if (v102 >= v101)
          {
            v123 = *(a1 + 56);
            v124 = v102 - v123;
            v125 = (v102 - v123) >> 2;
            v126 = v125 + 1;
            if ((v125 + 1) >> 62)
            {
              goto LABEL_201;
            }

            v127 = v101 - v123;
            if (v127 >> 1 > v126)
            {
              v126 = v127 >> 1;
            }

            if (v127 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v128 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v128 = v126;
            }

            if (v128)
            {
              sub_245DF85BC(a1 + 56, v128);
            }

            v139 = (v102 - v123) >> 2;
            v140 = (4 * v125);
            v141 = (4 * v125 - 4 * v139);
            *v140 = 0;
            v100 = v140 + 1;
            memcpy(v141, v123, v124);
            v142 = *(a1 + 56);
            *(a1 + 56) = v141;
            *(a1 + 64) = v100;
            *(a1 + 72) = 0;
            if (v142)
            {
              operator delete(v142);
            }
          }

          else
          {
            *v102 = 0;
            v100 = v102 + 4;
          }

          *(a1 + 64) = v100;
          goto LABEL_188;
        default:
          if ((PB::Reader::skip(this) & 1) == 0)
          {
            goto LABEL_200;
          }

          goto LABEL_194;
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

LABEL_198:
  v148 = v4 ^ 1;
  return v148 & 1;
}

uint64_t sub_245EEA45C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 124);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 80));
    v4 = *(v3 + 124);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 108));
  v4 = *(v3 + 124);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 124);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 124);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

LABEL_28:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 124) & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 124);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_7:
  if ((v4 & 0x10) != 0)
  {
LABEL_8:
    result = PB::Writer::writeVarInt(this);
  }

LABEL_9:
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::write(this, v7);
  }

  v8 = *(v3 + 124);
  if ((v8 & 8) == 0)
  {
    if ((*(v3 + 124) & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_31:
    result = PB::Writer::write(this, *(v3 + 116));
    if ((*(v3 + 124) & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  result = PB::Writer::write(this, *(v3 + 96));
  v8 = *(v3 + 124);
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_31;
  }

LABEL_14:
  if ((v8 & 4) != 0)
  {
LABEL_15:
    result = PB::Writer::write(this, *(v3 + 92));
  }

LABEL_16:
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  while (v9 != v10)
  {
    v11 = *v9++;
    result = PB::Writer::write(this, v11);
  }

  v13 = *(v3 + 56);
  v12 = *(v3 + 64);
  while (v13 != v12)
  {
    v14 = *v13++;
    result = PB::Writer::write(this, v14);
  }

  return result;
}

uint64_t sub_245EEA600(uint64_t result)
{
  *result = &unk_2858D5710;
  *(result + 56) = 0;
  return result;
}

void sub_245EEA628(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EEA660(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5710;
  *(result + 56) = 0;
  v2 = *(a2 + 56);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    v3 = 4;
    *(result + 56) = 4;
    *(result + 24) = v4;
    v2 = *(a2 + 56);
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 56) & 8) != 0)
  {
LABEL_5:
    v5 = *(a2 + 32);
    v3 |= 8u;
    *(result + 56) = v3;
    *(result + 32) = v5;
    v2 = *(a2 + 56);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 56) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 56);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 1u;
  *(result + 56) = v3;
  *(result + 8) = v7;
  v2 = *(a2 + 56);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v8 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 56) = v3;
  *(result + 40) = v8;
  v2 = *(a2 + 56);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_16:
    v10 = *(a2 + 48);
    *(result + 56) = v3 | 0x20;
    *(result + 48) = v10;
    return result;
  }

LABEL_15:
  v9 = *(a2 + 52);
  v3 |= 0x40u;
  *(result + 56) = v3;
  *(result + 52) = v9;
  if ((*(a2 + 56) & 0x20) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_245EEA750(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 56);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "batchedLocationFixType");
    v5 = *(a1 + 56);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "distOdom", *(a1 + 8));
  v5 = *(a1 + 56);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PB::TextFormatter::format(this, "distPed", *(a1 + 16));
  v5 = *(a1 + 56);
  if ((v5 & 0x40) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 56);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "timeStart", *(a1 + 24));
  v5 = *(a1 + 56);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "timeStop", *(a1 + 32));
  if ((*(a1 + 56) & 0x10) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "uncOdom", *(a1 + 40));
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EEA874(uint64_t a1, PB::Reader *this)
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
            goto LABEL_78;
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
            *(a1 + 56) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_56:
              *(this + 24) = 1;
              goto LABEL_74;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_68;
          case 2:
            *(a1 + 56) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_68;
          case 3:
            *(a1 + 56) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_56;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_68;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 56) |= 0x40u;
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

          *(a1 + 52) = v32;
          goto LABEL_74;
        }

        if (v22 == 7)
        {
          *(a1 + 56) |= 0x20u;
          v23 = *(this + 1);
          v2 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
          {
            v33 = 0;
            v34 = 0;
            v27 = 0;
            if (v2 <= v23)
            {
              v2 = *(this + 1);
            }

            v35 = v2 - v23;
            v36 = (v24 + v23);
            v37 = v23 + 1;
            while (1)
            {
              if (!v35)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_73;
              }

              v38 = v37;
              v39 = *v36;
              *(this + 1) = v38;
              v27 |= (v39 & 0x7F) << v33;
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
                LODWORD(v27) = 0;
                goto LABEL_72;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_72:
            v2 = v38;
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

LABEL_73:
          *(a1 + 48) = v27;
          goto LABEL_74;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 56) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_68;
        }

        if (v22 == 5)
        {
          *(a1 + 56) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_56;
          }

          *(a1 + 40) = *(*this + v2);
LABEL_68:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_74;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
LABEL_74:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_78:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_245EEAC9C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
    v4 = *(v3 + 56);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 56) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 56);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 56);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 56);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this);
    if ((*(v3 + 56) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 56);
  if ((v4 & 0x40) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_15:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EEAD98(uint64_t result)
{
  *result = &unk_2858D5748;
  *(result + 116) = 0;
  return result;
}

void sub_245EEADC0(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EEADF8(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5748;
  *(result + 116) = 0;
  v2 = *(a2 + 116);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 64);
    v3 = 128;
    *(result + 116) = 128;
    *(result + 64) = v4;
    v2 = *(a2 + 116);
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 116) & 0x2000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 108);
    v3 |= 0x2000u;
    *(result + 116) = v3;
    *(result + 108) = v5;
    v2 = *(a2 + 116);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 24);
    v3 |= 4u;
    *(result + 116) = v3;
    *(result + 24) = v6;
    v2 = *(a2 + 116);
    if ((v2 & 0x40) == 0)
    {
LABEL_8:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 56);
  v3 |= 0x40u;
  *(result + 116) = v3;
  *(result + 56) = v7;
  v2 = *(a2 + 116);
  if ((v2 & 0x10) == 0)
  {
LABEL_9:
    if ((v2 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v8 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 116) = v3;
  *(result + 40) = v8;
  v2 = *(a2 + 116);
  if ((v2 & 1) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v9 = *(a2 + 8);
  v3 |= 1u;
  *(result + 116) = v3;
  *(result + 8) = v9;
  v2 = *(a2 + 116);
  if ((v2 & 2) == 0)
  {
LABEL_11:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v10 = *(a2 + 16);
  v3 |= 2u;
  *(result + 116) = v3;
  *(result + 16) = v10;
  v2 = *(a2 + 116);
  if ((v2 & 0x800) == 0)
  {
LABEL_12:
    if ((v2 & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v11 = *(a2 + 96);
  v3 |= 0x800u;
  *(result + 116) = v3;
  *(result + 96) = v11;
  v2 = *(a2 + 116);
  if ((v2 & 8) == 0)
  {
LABEL_13:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v12 = *(a2 + 32);
  v3 |= 8u;
  *(result + 116) = v3;
  *(result + 32) = v12;
  v2 = *(a2 + 116);
  if ((v2 & 0x100) == 0)
  {
LABEL_14:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v13 = *(a2 + 72);
  v3 |= 0x100u;
  *(result + 116) = v3;
  *(result + 72) = v13;
  v2 = *(a2 + 116);
  if ((v2 & 0x20) == 0)
  {
LABEL_15:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v14 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 116) = v3;
  *(result + 48) = v14;
  v2 = *(a2 + 116);
  if ((v2 & 0x400) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v15 = *(a2 + 88);
  v3 |= 0x400u;
  *(result + 116) = v3;
  *(result + 88) = v15;
  v2 = *(a2 + 116);
  if ((v2 & 0x200) == 0)
  {
LABEL_17:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  v16 = *(a2 + 80);
  v3 |= 0x200u;
  *(result + 116) = v3;
  *(result + 80) = v16;
  v2 = *(a2 + 116);
  if ((v2 & 0x8000) == 0)
  {
LABEL_18:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_33;
  }

LABEL_32:
  v17 = *(a2 + 113);
  v3 |= 0x8000u;
  *(result + 116) = v3;
  *(result + 113) = v17;
  v2 = *(a2 + 116);
  if ((v2 & 0x4000) == 0)
  {
LABEL_19:
    if ((v2 & 0x1000) == 0)
    {
      return result;
    }

LABEL_34:
    v19 = *(a2 + 104);
    *(result + 116) = v3 | 0x1000;
    *(result + 104) = v19;
    return result;
  }

LABEL_33:
  v18 = *(a2 + 112);
  v3 |= 0x4000u;
  *(result + 116) = v3;
  *(result + 112) = v18;
  if ((*(a2 + 116) & 0x1000) != 0)
  {
    goto LABEL_34;
  }

  return result;
}

uint64_t sub_245EEAFE4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 116);
  if (v5)
  {
    PB::TextFormatter::format(this, "activeTime", *(a1 + 8));
    v5 = *(a1 + 116);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "currentPace", *(a1 + 16));
  v5 = *(a1 + 116);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "distance", *(a1 + 24));
  v5 = *(a1 + 116);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "duration", *(a1 + 32));
  v5 = *(a1 + 116);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "firstStepTime", *(a1 + 40));
  v5 = *(a1 + 116);
  if ((v5 & 0x1000) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "gradeType");
  v5 = *(a1 + 116);
  if ((v5 & 0x4000) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "isIndoor");
  v5 = *(a1 + 116);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "isMotionOverrideSet");
  v5 = *(a1 + 116);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "metsWR", *(a1 + 48));
  v5 = *(a1 + 116);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "rawDistance", *(a1 + 56));
  v5 = *(a1 + 116);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "startTime", *(a1 + 64));
  v5 = *(a1 + 116);
  if ((v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "steps");
  v5 = *(a1 + 116);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "stepsDuration", *(a1 + 72));
  v5 = *(a1 + 116);
  if ((v5 & 0x200) == 0)
  {
LABEL_15:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "truthMetsGradeCorrected", *(a1 + 80));
  v5 = *(a1 + 116);
  if ((v5 & 0x400) == 0)
  {
LABEL_16:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  PB::TextFormatter::format(this, "truthMetsStrollerCorrected", *(a1 + 88));
  if ((*(a1 + 116) & 0x800) != 0)
  {
LABEL_17:
    PB::TextFormatter::format(this, "verticalSpeed", *(a1 + 96));
  }

LABEL_18:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EEB228(uint64_t a1, PB::Reader *this)
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
        goto LABEL_115;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 116) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_100;
        case 2u:
          *(a1 + 116) |= 0x2000u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v49 = 0;
            v50 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(this + 1);
            }

            v51 = v2 - v32;
            v52 = (v33 + v32);
            v53 = v32 + 1;
            while (1)
            {
              if (!v51)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_110;
              }

              v54 = v53;
              v55 = *v52;
              *(this + 1) = v54;
              v36 |= (v55 & 0x7F) << v49;
              if ((v55 & 0x80) == 0)
              {
                break;
              }

              v49 += 7;
              --v51;
              ++v52;
              v53 = v54 + 1;
              v14 = v50++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_109:
                v2 = v54;
                goto LABEL_110;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_109;
          }

          v34 = 0;
          v35 = 0;
          v36 = 0;
          v37 = (v33 + v32);
          v38 = v32 + 1;
          do
          {
            v2 = v38;
            *(this + 1) = v38;
            v39 = *v37++;
            v36 |= (v39 & 0x7F) << v34;
            if ((v39 & 0x80) == 0)
            {
              goto LABEL_110;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_110:
          *(a1 + 108) = v36;
          goto LABEL_111;
        case 3u:
          *(a1 + 116) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_100;
        case 4u:
          *(a1 + 116) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_100;
        case 5u:
          *(a1 + 116) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_100;
        case 6u:
          *(a1 + 116) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_100;
        case 7u:
          *(a1 + 116) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_100;
        case 8u:
          *(a1 + 116) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_100;
        case 9u:
          *(a1 + 116) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_100;
        case 0xAu:
          *(a1 + 116) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_100;
        case 0xBu:
          *(a1 + 116) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_100;
        case 0xCu:
          *(a1 + 116) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_76;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_100;
        case 0xDu:
          *(a1 + 116) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_76:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 80) = *(*this + v2);
LABEL_100:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_111;
        case 0xEu:
          *(a1 + 116) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v41 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v40 = *(*this + v2++);
            *(this + 1) = v2;
            v41 = v40 != 0;
          }

          *(a1 + 113) = v41;
          goto LABEL_111;
        case 0xFu:
          *(a1 + 116) |= 0x4000u;
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

          *(a1 + 112) = v23;
          goto LABEL_111;
        case 0x10u:
          *(a1 + 116) |= 0x1000u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v42 = 0;
            v43 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v44 = v2 - v24;
            v45 = (v25 + v24);
            v46 = v24 + 1;
            while (1)
            {
              if (!v44)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_106;
              }

              v47 = v46;
              v48 = *v45;
              *(this + 1) = v47;
              v28 |= (v48 & 0x7F) << v42;
              if ((v48 & 0x80) == 0)
              {
                break;
              }

              v42 += 7;
              --v44;
              ++v45;
              v46 = v47 + 1;
              v14 = v43++ > 8;
              if (v14)
              {
                LODWORD(v28) = 0;
LABEL_105:
                v2 = v47;
                goto LABEL_106;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_105;
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
              goto LABEL_106;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_106:
          *(a1 + 104) = v28;
          goto LABEL_111;
        default:
          if (!PB::Reader::skip(this))
          {
            v56 = 0;
            return v56 & 1;
          }

          v2 = *(this + 1);
LABEL_111:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_115;
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

LABEL_115:
  v56 = v4 ^ 1;
  return v56 & 1;
}

uint64_t sub_245EEB944(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 116);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 116);
    if ((v4 & 0x2000) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(result + 116) & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 116);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 116);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 116);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 116);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 116);
  if ((v4 & 0x200) == 0)
  {
LABEL_14:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_15:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

LABEL_32:
    result = PB::Writer::write(this);
    if ((*(v3 + 116) & 0x1000) == 0)
    {
      return result;
    }

    goto LABEL_33;
  }

LABEL_31:
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x4000) != 0)
  {
    goto LABEL_32;
  }

LABEL_16:
  if ((v4 & 0x1000) == 0)
  {
    return result;
  }

LABEL_33:

  return PB::Writer::writeVarInt(this);
}

double sub_245EEBB3C(void *a1)
{
  *a1 = &unk_2858D5780;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 28) = 0xFFFFFFFFLL;
  return result;
}

void sub_245EEBB68(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EEBBA0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5780;
  *(result + 28) = 0xFFFFFFFFLL;
  v2 = *(a2 + 32);
  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 16);
    v3 = 2;
    *(result + 32) = 2;
    *(result + 16) = v4;
    v2 = *(a2 + 32);
    if ((v2 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if (*(a2 + 32))
  {
LABEL_5:
    v5 = *(a2 + 8);
    v3 |= 1u;
    *(result + 32) = v3;
    *(result + 8) = v5;
    v2 = *(a2 + 32);
  }

LABEL_6:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      return result;
    }

LABEL_10:
    v7 = *(a2 + 28);
    *(result + 32) = v3 | 8;
    *(result + 28) = v7;
    return result;
  }

  v6 = *(a2 + 24);
  v3 |= 4u;
  *(result + 32) = v3;
  *(result + 24) = v6;
  if ((*(a2 + 32) & 8) != 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_245EEBC40(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "radius", *(a1 + 24));
    v5 = *(a1 + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestampExit", *(a1 + 8));
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
  PB::TextFormatter::format(this, "timestampSet", *(a1 + 16));
  if ((*(a1 + 32) & 8) != 0)
  {
LABEL_5:
    PB::TextFormatter::format(this, "userResponse");
  }

LABEL_6:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EEBD04(uint64_t a1, PB::Reader *this)
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
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_45:
            *(this + 24) = 1;
            goto LABEL_61;
          }

          *(a1 + 24) = *(*this + v2);
          v2 = *(this + 1) + 4;
          goto LABEL_55;
        }

        if (v22 == 4)
        {
          *(a1 + 32) |= 8u;
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
                goto LABEL_60;
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
                goto LABEL_59;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v27) = 0;
            }

LABEL_59:
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

LABEL_60:
          *(a1 + 28) = v27;
          goto LABEL_61;
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
            goto LABEL_45;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_42;
        }

        if (v22 == 2)
        {
          *(a1 + 32) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_45;
          }

          *(a1 + 8) = *(*this + v2);
LABEL_42:
          v2 = *(this + 1) + 8;
LABEL_55:
          *(this + 1) = v2;
          goto LABEL_61;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_61:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_65:
  v38 = v4 ^ 1;
  return v38 & 1;
}