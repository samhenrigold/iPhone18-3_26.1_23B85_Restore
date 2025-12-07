uint64_t sub_19B579588(uint64_t a1, PB::Reader *this)
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
            goto LABEL_61;
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
            *(a1 + 40) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_53:
              *(this + 24) = 1;
              goto LABEL_57;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_56;
          case 2:
            *(a1 + 40) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 36) = *(*this + v2);
LABEL_55:
            v2 = *(this + 1) + 4;
LABEL_56:
            *(this + 1) = v2;
            goto LABEL_57;
          case 3:
            *(a1 + 40) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_55;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_55;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
LABEL_57:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_61:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_19B5798E0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
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

  else if ((*(result + 40) & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 36));
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
  result = PB::Writer::write(this, *(v3 + 32));
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
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 28));
    if ((*(v3 + 40) & 2) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

void *sub_19B5799DC(void *result)
{
  *result = &unk_1F0E2BE90;
  result[1] = 0;
  return result;
}

void sub_19B5799FC(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2BE90;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B579A7C(PB::Base *a1)
{
  sub_19B5799FC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B579AB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B579B30(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B579D4C(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B579D68(uint64_t result)
{
  *result = &unk_1F0E2FB98;
  *(result + 116) = 0;
  return result;
}

void sub_19B579D90(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B579DC8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 116);
  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "confidence");
    v5 = *(a1 + 116);
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

  PB::TextFormatter::format(this, "drivingArmLikelihoodSum", *(a1 + 52));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "drivingStowedLikelihoodSum", *(a1 + 56));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "estExitTime", *(a1 + 8));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "exitState");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "isStanding");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "isVehicleConnected");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "mountedConfidence");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "mountedState");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "rawConfidence");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "rawType");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "source");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "ssLikelihoodSum", *(a1 + 84));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "startTime", *(a1 + 16));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "tilt", *(a1 + 88));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 24));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "type");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "typeYouth");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "vehicularBasebandHint");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "vehicularBtHint");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "vehicularConfidence");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "vehicularGpsHint");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "vehicularMotionHint");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "vehicularWifiHint");
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "workoutDetectionTime", *(a1 + 32));
  v5 = *(a1 + 116);
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
  PB::TextFormatter::format(this, "workoutDetectionType");
  if ((*(a1 + 116) & 0x10) != 0)
  {
LABEL_28:
    PB::TextFormatter::format(this, "workoutEscalationTime");
  }

LABEL_29:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57A16C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_313;
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

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 116) |= 0x10000u;
          v23 = *(this + 1);
          v22 = *(this + 2);
          v24 = *this;
          if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v22)
          {
            v203 = 0;
            v204 = 0;
            v27 = 0;
            v17 = v22 >= v23;
            v205 = v22 - v23;
            if (!v17)
            {
              v205 = 0;
            }

            v206 = (v24 + v23);
            v207 = v23 + 1;
            do
            {
              if (!v205)
              {
                LODWORD(v27) = 0;
                *(this + 24) = 1;
                goto LABEL_293;
              }

              v208 = *v206;
              *(this + 1) = v207;
              v27 |= (v208 & 0x7F) << v203;
              if ((v208 & 0x80) == 0)
              {
                if (*(this + 24))
                {
                  LODWORD(v27) = 0;
                }

                goto LABEL_293;
              }

              v203 += 7;
              --v205;
              ++v206;
              ++v207;
              v14 = v204++ > 8;
            }

            while (!v14);
LABEL_211:
            LODWORD(v27) = 0;
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
                goto LABEL_211;
              }
            }
          }

LABEL_293:
          *(a1 + 92) = v27;
          goto LABEL_309;
        case 2u:
          *(a1 + 116) |= 0x200u;
          v107 = *(this + 1);
          v106 = *(this + 2);
          v108 = *this;
          if (v107 <= 0xFFFFFFFFFFFFFFF5 && v107 + 10 <= v106)
          {
            v109 = 0;
            v110 = 0;
            v111 = 0;
            v112 = (v108 + v107);
            v113 = v107 + 1;
            do
            {
              *(this + 1) = v113;
              v114 = *v112++;
              v111 |= (v114 & 0x7F) << v109;
              if ((v114 & 0x80) == 0)
              {
                goto LABEL_296;
              }

              v109 += 7;
              ++v113;
              v14 = v110++ > 8;
            }

            while (!v14);
LABEL_219:
            LODWORD(v111) = 0;
            goto LABEL_296;
          }

          v209 = 0;
          v210 = 0;
          v111 = 0;
          v17 = v106 >= v107;
          v211 = v106 - v107;
          if (!v17)
          {
            v211 = 0;
          }

          v212 = (v108 + v107);
          v213 = v107 + 1;
          while (2)
          {
            if (v211)
            {
              v214 = *v212;
              *(this + 1) = v213;
              v111 |= (v214 & 0x7F) << v209;
              if (v214 < 0)
              {
                v209 += 7;
                --v211;
                ++v212;
                ++v213;
                v14 = v210++ > 8;
                if (v14)
                {
                  goto LABEL_219;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v111) = 0;
              }
            }

            else
            {
              LODWORD(v111) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_296:
          *(a1 + 64) = v111;
          goto LABEL_309;
        case 3u:
          *(a1 + 116) |= 0x20u;
          v81 = *(this + 1);
          v80 = *(this + 2);
          v82 = *this;
          if (v81 <= 0xFFFFFFFFFFFFFFF5 && v81 + 10 <= v80)
          {
            v83 = 0;
            v84 = 0;
            v85 = 0;
            v86 = (v82 + v81);
            v87 = v81 + 1;
            do
            {
              *(this + 1) = v87;
              v88 = *v86++;
              v85 |= (v88 & 0x7F) << v83;
              if ((v88 & 0x80) == 0)
              {
                goto LABEL_287;
              }

              v83 += 7;
              ++v87;
              v14 = v84++ > 8;
            }

            while (!v14);
LABEL_193:
            LODWORD(v85) = 0;
            goto LABEL_287;
          }

          v191 = 0;
          v192 = 0;
          v85 = 0;
          v17 = v80 >= v81;
          v193 = v80 - v81;
          if (!v17)
          {
            v193 = 0;
          }

          v194 = (v82 + v81);
          v195 = v81 + 1;
          while (2)
          {
            if (v193)
            {
              v196 = *v194;
              *(this + 1) = v195;
              v85 |= (v196 & 0x7F) << v191;
              if (v196 < 0)
              {
                v191 += 7;
                --v193;
                ++v194;
                ++v195;
                v14 = v192++ > 8;
                if (v14)
                {
                  goto LABEL_193;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v85) = 0;
              }
            }

            else
            {
              LODWORD(v85) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_287:
          *(a1 + 48) = v85;
          goto LABEL_309;
        case 4u:
          *(a1 + 116) |= 0x400u;
          v94 = *(this + 1);
          v93 = *(this + 2);
          v95 = *this;
          if (v94 <= 0xFFFFFFFFFFFFFFF5 && v94 + 10 <= v93)
          {
            v96 = 0;
            v97 = 0;
            v98 = 0;
            v99 = (v95 + v94);
            v100 = v94 + 1;
            do
            {
              *(this + 1) = v100;
              v101 = *v99++;
              v98 |= (v101 & 0x7F) << v96;
              if ((v101 & 0x80) == 0)
              {
                goto LABEL_290;
              }

              v96 += 7;
              ++v100;
              v14 = v97++ > 8;
            }

            while (!v14);
LABEL_201:
            LODWORD(v98) = 0;
            goto LABEL_290;
          }

          v197 = 0;
          v198 = 0;
          v98 = 0;
          v17 = v93 >= v94;
          v199 = v93 - v94;
          if (!v17)
          {
            v199 = 0;
          }

          v200 = (v95 + v94);
          v201 = v94 + 1;
          while (2)
          {
            if (v199)
            {
              v202 = *v200;
              *(this + 1) = v201;
              v98 |= (v202 & 0x7F) << v197;
              if (v202 < 0)
              {
                v197 += 7;
                --v199;
                ++v200;
                ++v201;
                v14 = v198++ > 8;
                if (v14)
                {
                  goto LABEL_201;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v98) = 0;
              }
            }

            else
            {
              LODWORD(v98) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_290:
          *(a1 + 68) = v98;
          goto LABEL_309;
        case 5u:
          *(a1 + 116) |= 0x100000u;
          v48 = *(this + 1);
          if (v48 >= *(this + 2))
          {
            v51 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v49 = v48 + 1;
            v50 = *(*this + v48);
            *(this + 1) = v49;
            v51 = v50 != 0;
          }

          *(a1 + 108) = v51;
          goto LABEL_309;
        case 6u:
          *(a1 + 116) |= 0x8000u;
          v120 = *(this + 1);
          if (v120 > 0xFFFFFFFFFFFFFFFBLL || v120 + 4 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 88) = *(*this + v120);
          goto LABEL_135;
        case 7u:
          *(a1 + 116) |= 4u;
          v126 = *(this + 1);
          if (v126 > 0xFFFFFFFFFFFFFFF7 || v126 + 8 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 24) = *(*this + v126);
          goto LABEL_259;
        case 8u:
          *(a1 + 116) |= 0x200000u;
          v102 = *(this + 1);
          if (v102 >= *(this + 2))
          {
            v105 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v103 = v102 + 1;
            v104 = *(*this + v102);
            *(this + 1) = v103;
            v105 = v104 != 0;
          }

          *(a1 + 109) = v105;
          goto LABEL_309;
        case 9u:
          *(a1 + 116) |= 0x100u;
          v138 = *(this + 1);
          v137 = *(this + 2);
          v139 = *this;
          if (v138 <= 0xFFFFFFFFFFFFFFF5 && v138 + 10 <= v137)
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = (v139 + v138);
            v144 = v138 + 1;
            do
            {
              *(this + 1) = v144;
              v145 = *v143++;
              v142 |= (v145 & 0x7F) << v140;
              if ((v145 & 0x80) == 0)
              {
                goto LABEL_302;
              }

              v140 += 7;
              ++v144;
              v14 = v141++ > 8;
            }

            while (!v14);
LABEL_239:
            LODWORD(v142) = 0;
            goto LABEL_302;
          }

          v221 = 0;
          v222 = 0;
          v142 = 0;
          v17 = v137 >= v138;
          v223 = v137 - v138;
          if (!v17)
          {
            v223 = 0;
          }

          v224 = (v139 + v138);
          v225 = v138 + 1;
          while (2)
          {
            if (v223)
            {
              v226 = *v224;
              *(this + 1) = v225;
              v142 |= (v226 & 0x7F) << v221;
              if (v226 < 0)
              {
                v221 += 7;
                --v223;
                ++v224;
                ++v225;
                v14 = v222++ > 8;
                if (v14)
                {
                  goto LABEL_239;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v142) = 0;
              }
            }

            else
            {
              LODWORD(v142) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_302:
          *(a1 + 60) = v142;
          goto LABEL_309;
        case 0xAu:
          *(a1 + 116) |= 1u;
          v61 = *(this + 1);
          if (v61 > 0xFFFFFFFFFFFFFFF7 || v61 + 8 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 8) = *(*this + v61);
          goto LABEL_259;
        case 0xBu:
          *(a1 + 116) |= 2u;
          v136 = *(this + 1);
          if (v136 > 0xFFFFFFFFFFFFFFF7 || v136 + 8 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 16) = *(*this + v136);
          goto LABEL_259;
        case 0xCu:
          *(a1 + 116) |= 0x1000u;
          v40 = *(this + 1);
          v39 = *(this + 2);
          v41 = *this;
          if (v40 <= 0xFFFFFFFFFFFFFFF5 && v40 + 10 <= v39)
          {
            v42 = 0;
            v43 = 0;
            v44 = 0;
            v45 = (v41 + v40);
            v46 = v40 + 1;
            do
            {
              *(this + 1) = v46;
              v47 = *v45++;
              v44 |= (v47 & 0x7F) << v42;
              if ((v47 & 0x80) == 0)
              {
                goto LABEL_275;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
            }

            while (!v14);
LABEL_159:
            LODWORD(v44) = 0;
            goto LABEL_275;
          }

          v167 = 0;
          v168 = 0;
          v44 = 0;
          v17 = v39 >= v40;
          v169 = v39 - v40;
          if (!v17)
          {
            v169 = 0;
          }

          v170 = (v41 + v40);
          v171 = v40 + 1;
          while (2)
          {
            if (v169)
            {
              v172 = *v170;
              *(this + 1) = v171;
              v44 |= (v172 & 0x7F) << v167;
              if (v172 < 0)
              {
                v167 += 7;
                --v169;
                ++v170;
                ++v171;
                v14 = v168++ > 8;
                if (v14)
                {
                  goto LABEL_159;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v44) = 0;
              }
            }

            else
            {
              LODWORD(v44) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_275:
          *(a1 + 76) = v44;
          goto LABEL_309;
        case 0xDu:
          *(a1 + 116) |= 0x800u;
          v53 = *(this + 1);
          v52 = *(this + 2);
          v54 = *this;
          if (v53 <= 0xFFFFFFFFFFFFFFF5 && v53 + 10 <= v52)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            v58 = (v54 + v53);
            v59 = v53 + 1;
            do
            {
              *(this + 1) = v59;
              v60 = *v58++;
              v57 |= (v60 & 0x7F) << v55;
              if ((v60 & 0x80) == 0)
              {
                goto LABEL_278;
              }

              v55 += 7;
              ++v59;
              v14 = v56++ > 8;
            }

            while (!v14);
LABEL_167:
            LODWORD(v57) = 0;
            goto LABEL_278;
          }

          v173 = 0;
          v174 = 0;
          v57 = 0;
          v17 = v52 >= v53;
          v175 = v52 - v53;
          if (!v17)
          {
            v175 = 0;
          }

          v176 = (v54 + v53);
          v177 = v53 + 1;
          while (2)
          {
            if (v175)
            {
              v178 = *v176;
              *(this + 1) = v177;
              v57 |= (v178 & 0x7F) << v173;
              if (v178 < 0)
              {
                v173 += 7;
                --v175;
                ++v176;
                ++v177;
                v14 = v174++ > 8;
                if (v14)
                {
                  goto LABEL_167;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v57) = 0;
              }
            }

            else
            {
              LODWORD(v57) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_278:
          *(a1 + 72) = v57;
          goto LABEL_309;
        case 0xEu:
          *(a1 + 116) |= 0x2000000u;
          v122 = *(this + 1);
          if (v122 >= *(this + 2))
          {
            v125 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v123 = v122 + 1;
            v124 = *(*this + v122);
            *(this + 1) = v123;
            v125 = v124 != 0;
          }

          *(a1 + 113) = v125;
          goto LABEL_309;
        case 0xFu:
          *(a1 + 116) |= 0x1000000u;
          v35 = *(this + 1);
          if (v35 >= *(this + 2))
          {
            v38 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v36 = v35 + 1;
            v37 = *(*this + v35);
            *(this + 1) = v36;
            v38 = v37 != 0;
          }

          *(a1 + 112) = v38;
          goto LABEL_309;
        case 0x10u:
          *(a1 + 116) |= 0x400000u;
          v89 = *(this + 1);
          if (v89 >= *(this + 2))
          {
            v92 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v90 = v89 + 1;
            v91 = *(*this + v89);
            *(this + 1) = v90;
            v92 = v91 != 0;
          }

          *(a1 + 110) = v92;
          goto LABEL_309;
        case 0x11u:
          *(a1 + 116) |= 0x4000000u;
          v31 = *(this + 1);
          if (v31 >= *(this + 2))
          {
            v34 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v32 = v31 + 1;
            v33 = *(*this + v31);
            *(this + 1) = v32;
            v34 = v33 != 0;
          }

          *(a1 + 114) = v34;
          goto LABEL_309;
        case 0x12u:
          *(a1 + 116) |= 0x800000u;
          v115 = *(this + 1);
          if (v115 >= *(this + 2))
          {
            v118 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v116 = v115 + 1;
            v117 = *(*this + v115);
            *(this + 1) = v116;
            v118 = v117 != 0;
          }

          *(a1 + 111) = v118;
          goto LABEL_309;
        case 0x13u:
          *(a1 + 116) |= 0x40000u;
          v128 = *(this + 1);
          v127 = *(this + 2);
          v129 = *this;
          if (v128 <= 0xFFFFFFFFFFFFFFF5 && v128 + 10 <= v127)
          {
            v130 = 0;
            v131 = 0;
            v132 = 0;
            v133 = (v129 + v128);
            v134 = v128 + 1;
            do
            {
              *(this + 1) = v134;
              v135 = *v133++;
              v132 |= (v135 & 0x7F) << v130;
              if ((v135 & 0x80) == 0)
              {
                goto LABEL_299;
              }

              v130 += 7;
              ++v134;
              v14 = v131++ > 8;
            }

            while (!v14);
LABEL_231:
            LODWORD(v132) = 0;
            goto LABEL_299;
          }

          v215 = 0;
          v216 = 0;
          v132 = 0;
          v17 = v127 >= v128;
          v217 = v127 - v128;
          if (!v17)
          {
            v217 = 0;
          }

          v218 = (v129 + v128);
          v219 = v128 + 1;
          while (2)
          {
            if (v217)
            {
              v220 = *v218;
              *(this + 1) = v219;
              v132 |= (v220 & 0x7F) << v215;
              if (v220 < 0)
              {
                v215 += 7;
                --v217;
                ++v218;
                ++v219;
                v14 = v216++ > 8;
                if (v14)
                {
                  goto LABEL_231;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v132) = 0;
              }
            }

            else
            {
              LODWORD(v132) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_299:
          *(a1 + 100) = v132;
          goto LABEL_309;
        case 0x14u:
          *(a1 + 116) |= 0x80u;
          v155 = *(this + 1);
          if (v155 > 0xFFFFFFFFFFFFFFFBLL || v155 + 4 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 56) = *(*this + v155);
          goto LABEL_135;
        case 0x15u:
          *(a1 + 116) |= 0x40u;
          v119 = *(this + 1);
          if (v119 > 0xFFFFFFFFFFFFFFFBLL || v119 + 4 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 52) = *(*this + v119);
          goto LABEL_135;
        case 0x16u:
          *(a1 + 116) |= 0x4000u;
          v121 = *(this + 1);
          if (v121 > 0xFFFFFFFFFFFFFFFBLL || v121 + 4 > *(this + 2))
          {
            goto LABEL_138;
          }

          *(a1 + 84) = *(*this + v121);
LABEL_135:
          v156 = *(this + 1) + 4;
          goto LABEL_260;
        case 0x17u:
          *(a1 + 116) |= 0x80000u;
          v147 = *(this + 1);
          v146 = *(this + 2);
          v148 = *this;
          if (v147 <= 0xFFFFFFFFFFFFFFF5 && v147 + 10 <= v146)
          {
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = (v148 + v147);
            v153 = v147 + 1;
            do
            {
              *(this + 1) = v153;
              v154 = *v152++;
              v151 |= (v154 & 0x7F) << v149;
              if ((v154 & 0x80) == 0)
              {
                goto LABEL_305;
              }

              v149 += 7;
              ++v153;
              v14 = v150++ > 8;
            }

            while (!v14);
LABEL_249:
            LODWORD(v151) = 0;
            goto LABEL_305;
          }

          v227 = 0;
          v228 = 0;
          v151 = 0;
          v17 = v146 >= v147;
          v229 = v146 - v147;
          if (!v17)
          {
            v229 = 0;
          }

          v230 = (v148 + v147);
          v231 = v147 + 1;
          while (2)
          {
            if (v229)
            {
              v232 = *v230;
              *(this + 1) = v231;
              v151 |= (v232 & 0x7F) << v227;
              if (v232 < 0)
              {
                v227 += 7;
                --v229;
                ++v230;
                ++v231;
                v14 = v228++ > 8;
                if (v14)
                {
                  goto LABEL_249;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v151) = 0;
              }
            }

            else
            {
              LODWORD(v151) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_305:
          *(a1 + 104) = v151;
          goto LABEL_309;
        case 0x18u:
          *(a1 + 116) |= 8u;
          v157 = *(this + 1);
          if (v157 <= 0xFFFFFFFFFFFFFFF7 && v157 + 8 <= *(this + 2))
          {
            *(a1 + 32) = *(*this + v157);
LABEL_259:
            v156 = *(this + 1) + 8;
LABEL_260:
            *(this + 1) = v156;
          }

          else
          {
LABEL_138:
            *(this + 24) = 1;
          }

          goto LABEL_309;
        case 0x19u:
          *(a1 + 116) |= 0x10u;
          v72 = *(this + 1);
          v71 = *(this + 2);
          v73 = *this;
          if (v72 <= 0xFFFFFFFFFFFFFFF5 && v72 + 10 <= v71)
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            v77 = (v73 + v72);
            v78 = v72 + 1;
            do
            {
              *(this + 1) = v78;
              v79 = *v77++;
              v76 |= (v79 & 0x7F) << v74;
              if ((v79 & 0x80) == 0)
              {
                goto LABEL_284;
              }

              v74 += 7;
              ++v78;
              v14 = v75++ > 8;
            }

            while (!v14);
LABEL_185:
            v76 = 0;
            goto LABEL_284;
          }

          v185 = 0;
          v186 = 0;
          v76 = 0;
          v17 = v71 >= v72;
          v187 = v71 - v72;
          if (!v17)
          {
            v187 = 0;
          }

          v188 = (v73 + v72);
          v189 = v72 + 1;
          while (2)
          {
            if (v187)
            {
              v190 = *v188;
              *(this + 1) = v189;
              v76 |= (v190 & 0x7F) << v185;
              if (v190 < 0)
              {
                v185 += 7;
                --v187;
                ++v188;
                ++v189;
                v14 = v186++ > 8;
                if (v14)
                {
                  goto LABEL_185;
                }

                continue;
              }

              if (*(this + 24))
              {
                v76 = 0;
              }
            }

            else
            {
              v76 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_284:
          *(a1 + 40) = v76;
          goto LABEL_309;
        case 0x1Au:
          *(a1 + 116) |= 0x20000u;
          v63 = *(this + 1);
          v62 = *(this + 2);
          v64 = *this;
          if (v63 <= 0xFFFFFFFFFFFFFFF5 && v63 + 10 <= v62)
          {
            v65 = 0;
            v66 = 0;
            v67 = 0;
            v68 = (v64 + v63);
            v69 = v63 + 1;
            do
            {
              *(this + 1) = v69;
              v70 = *v68++;
              v67 |= (v70 & 0x7F) << v65;
              if ((v70 & 0x80) == 0)
              {
                goto LABEL_281;
              }

              v65 += 7;
              ++v69;
              v14 = v66++ > 8;
            }

            while (!v14);
LABEL_177:
            LODWORD(v67) = 0;
            goto LABEL_281;
          }

          v179 = 0;
          v180 = 0;
          v67 = 0;
          v17 = v62 >= v63;
          v181 = v62 - v63;
          if (!v17)
          {
            v181 = 0;
          }

          v182 = (v64 + v63);
          v183 = v63 + 1;
          while (2)
          {
            if (v181)
            {
              v184 = *v182;
              *(this + 1) = v183;
              v67 |= (v184 & 0x7F) << v179;
              if (v184 < 0)
              {
                v179 += 7;
                --v181;
                ++v182;
                ++v183;
                v14 = v180++ > 8;
                if (v14)
                {
                  goto LABEL_177;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v67) = 0;
              }
            }

            else
            {
              LODWORD(v67) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_281:
          *(a1 + 96) = v67;
          goto LABEL_309;
        case 0x1Bu:
          *(a1 + 116) |= 0x2000u;
          v159 = *(this + 1);
          v158 = *(this + 2);
          v160 = *this;
          if (v159 <= 0xFFFFFFFFFFFFFFF5 && v159 + 10 <= v158)
          {
            v161 = 0;
            v162 = 0;
            v163 = 0;
            v164 = (v160 + v159);
            v165 = v159 + 1;
            do
            {
              *(this + 1) = v165;
              v166 = *v164++;
              v163 |= (v166 & 0x7F) << v161;
              if ((v166 & 0x80) == 0)
              {
                goto LABEL_308;
              }

              v161 += 7;
              ++v165;
              v14 = v162++ > 8;
            }

            while (!v14);
LABEL_257:
            LODWORD(v163) = 0;
            goto LABEL_308;
          }

          v233 = 0;
          v234 = 0;
          v163 = 0;
          v17 = v158 >= v159;
          v235 = v158 - v159;
          if (!v17)
          {
            v235 = 0;
          }

          v236 = (v160 + v159);
          v237 = v159 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_309;
          }

          v240 = 0;
          return v240 & 1;
      }

      while (1)
      {
        if (!v235)
        {
          LODWORD(v163) = 0;
          *(this + 24) = 1;
          goto LABEL_308;
        }

        v238 = *v236;
        *(this + 1) = v237;
        v163 |= (v238 & 0x7F) << v233;
        if ((v238 & 0x80) == 0)
        {
          break;
        }

        v233 += 7;
        --v235;
        ++v236;
        ++v237;
        v14 = v234++ > 8;
        if (v14)
        {
          goto LABEL_257;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v163) = 0;
      }

LABEL_308:
      *(a1 + 80) = v163;
LABEL_309:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_313:
  v240 = v4 ^ 1;
  return v240 & 1;
}

uint64_t sub_19B57B23C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 116);
  if ((v4 & 0x10000) != 0)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 116);
    if ((v4 & 0x200) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x20) == 0)
  {
LABEL_4:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x400) == 0)
  {
LABEL_5:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x100000) == 0)
  {
LABEL_6:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x8000) == 0)
  {
LABEL_7:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 116);
  if ((v4 & 4) == 0)
  {
LABEL_8:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 116);
  if ((v4 & 0x200000) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 116);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 116);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x800) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x400000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x800000) == 0)
  {
LABEL_19:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x40000) == 0)
  {
LABEL_20:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x80) == 0)
  {
LABEL_21:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 116);
  if ((v4 & 0x40) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 116);
  if ((v4 & 0x4000) == 0)
  {
LABEL_23:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 84));
  v4 = *(v3 + 116);
  if ((v4 & 0x80000) == 0)
  {
LABEL_24:
    if ((v4 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 8) == 0)
  {
LABEL_25:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 116);
  if ((v4 & 0x10) == 0)
  {
LABEL_26:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

LABEL_54:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 116) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_55;
  }

LABEL_53:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 116);
  if ((v4 & 0x20000) != 0)
  {
    goto LABEL_54;
  }

LABEL_27:
  if ((v4 & 0x2000) == 0)
  {
    return result;
  }

LABEL_55:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B57B568(uint64_t result)
{
  *result = &unk_1F0E2DEF0;
  *(result + 36) = 0;
  return result;
}

void sub_19B57B590(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57B5C8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 36);
  if (v5)
  {
    PB::TextFormatter::format(this, "iostime", *(a1 + 8));
    v5 = *(a1 + 36);
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

  PB::TextFormatter::format(this, "outdoorCyclingStateMachineFrom");
  v5 = *(a1 + 36);
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
  PB::TextFormatter::format(this, "outdoorCyclingStateMachineTo");
  v5 = *(a1 + 36);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "workoutLocationType");
  v5 = *(a1 + 36);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "workoutPause");
  v5 = *(a1 + 36);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "workoutResume");
  v5 = *(a1 + 36);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "workoutStart");
  v5 = *(a1 + 36);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "workoutStop");
  if ((*(a1 + 36) & 0x10) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57B72C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_140;
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
      if ((v10 >> 3) <= 10)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 36) |= 8u;
            v43 = *(this + 1);
            v2 = *(this + 2);
            v44 = *this;
            if (v43 > 0xFFFFFFFFFFFFFFF5 || v43 + 10 > v2)
            {
              v70 = 0;
              v71 = 0;
              v47 = 0;
              if (v2 <= v43)
              {
                v2 = *(this + 1);
              }

              v72 = v2 - v43;
              v73 = (v44 + v43);
              v74 = v43 + 1;
              while (1)
              {
                if (!v72)
                {
                  LODWORD(v47) = 0;
                  *(this + 24) = 1;
                  goto LABEL_127;
                }

                v75 = v74;
                v76 = *v73;
                *(this + 1) = v75;
                v47 |= (v76 & 0x7F) << v70;
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
                  LODWORD(v47) = 0;
                  goto LABEL_126;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v47) = 0;
              }

LABEL_126:
              v2 = v75;
            }

            else
            {
              v45 = 0;
              v46 = 0;
              v47 = 0;
              v48 = (v44 + v43);
              v49 = v43 + 1;
              while (1)
              {
                v2 = v49;
                *(this + 1) = v49;
                v50 = *v48++;
                v47 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
                  LODWORD(v47) = 0;
                  break;
                }
              }
            }

LABEL_127:
            *(a1 + 24) = v47;
            goto LABEL_136;
          }

          if (v22 == 10)
          {
            *(a1 + 36) |= 0x80u;
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

            *(a1 + 34) = v40;
            goto LABEL_136;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 36) |= 1u;
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

            goto LABEL_136;
          }

          if (v22 == 2)
          {
            *(a1 + 36) |= 0x10u;
            v31 = *(this + 1);
            v2 = *(this + 2);
            v32 = *this;
            if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
            {
              v63 = 0;
              v64 = 0;
              v35 = 0;
              if (v2 <= v31)
              {
                v2 = *(this + 1);
              }

              v65 = v2 - v31;
              v66 = (v32 + v31);
              v67 = v31 + 1;
              while (1)
              {
                if (!v65)
                {
                  LODWORD(v35) = 0;
                  *(this + 24) = 1;
                  goto LABEL_123;
                }

                v68 = v67;
                v69 = *v66;
                *(this + 1) = v68;
                v35 |= (v69 & 0x7F) << v63;
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
                  LODWORD(v35) = 0;
                  goto LABEL_122;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_122:
              v2 = v68;
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

LABEL_123:
            *(a1 + 28) = v35;
            goto LABEL_136;
          }
        }
      }

      else if (v22 <= 12)
      {
        if (v22 == 11)
        {
          *(a1 + 36) |= 0x100u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v54 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v53 = *(*this + v2++);
            *(this + 1) = v2;
            v54 = v53 != 0;
          }

          *(a1 + 35) = v54;
          goto LABEL_136;
        }

        if (v22 == 12)
        {
          *(a1 + 36) |= 0x20u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v42 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v41 = *(*this + v2++);
            *(this + 1) = v2;
            v42 = v41 != 0;
          }

          *(a1 + 32) = v42;
          goto LABEL_136;
        }
      }

      else
      {
        switch(v22)
        {
          case 0xD:
            *(a1 + 36) |= 0x40u;
            v2 = *(this + 1);
            if (v2 >= *(this + 2))
            {
              v52 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v51 = *(*this + v2++);
              *(this + 1) = v2;
              v52 = v51 != 0;
            }

            *(a1 + 33) = v52;
            goto LABEL_136;
          case 0x15:
            *(a1 + 36) |= 2u;
            v55 = *(this + 1);
            v2 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v2)
            {
              v84 = 0;
              v85 = 0;
              v59 = 0;
              if (v2 <= v55)
              {
                v2 = *(this + 1);
              }

              v86 = v2 - v55;
              v87 = (v56 + v55);
              v88 = v55 + 1;
              while (1)
              {
                if (!v86)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_135;
                }

                v89 = v88;
                v90 = *v87;
                *(this + 1) = v89;
                v59 |= (v90 & 0x7F) << v84;
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
                  LODWORD(v59) = 0;
                  goto LABEL_134;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }

LABEL_134:
              v2 = v89;
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

LABEL_135:
            *(a1 + 16) = v59;
            goto LABEL_136;
          case 0x16:
            *(a1 + 36) |= 4u;
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
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_131;
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
                  LODWORD(v27) = 0;
                  goto LABEL_130;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_130:
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
                  LODWORD(v27) = 0;
                  break;
                }
              }
            }

LABEL_131:
            *(a1 + 20) = v27;
            goto LABEL_136;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v91 = 0;
        return v91 & 1;
      }

      v2 = *(this + 1);
LABEL_136:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_140:
  v91 = v4 ^ 1;
  return v91 & 1;
}

uint64_t sub_19B57BE64(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 36);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 36);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x100) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this);
  v4 = *(v3 + 36);
  if ((v4 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 4) == 0)
  {
    return result;
  }

LABEL_19:

  return PB::Writer::writeVarInt(this);
}

void *sub_19B57BF98(void *result)
{
  *result = &unk_1F0E2D8D0;
  result[1] = 0;
  result[3] = 0;
  return result;
}

void sub_19B57BFBC(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2D8D0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B57C03C(PB::Base *a1)
{
  sub_19B57BFBC(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57C074(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "impulse");
  }

  v6 = *(a1 + 28);
  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "state");
    v6 = *(a1 + 28);
  }

  if (v6)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57C128(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) == 3)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(a1 + 28) |= 1u;
        v32 = *(this + 1);
        if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(this + 2))
        {
          *(a1 + 16) = *(*this + v32);
          *(this + 1) += 8;
        }

        else
        {
          *(this + 24) = 1;
        }
      }

      else if (v22 == 1)
      {
        *(a1 + 28) |= 2u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v33 = 0;
          v34 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v35 = v23 - v24;
          if (!v17)
          {
            v35 = 0;
          }

          v36 = (v25 + v24);
          v37 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v38 = *v36;
            *(this + 1) = v37;
            v28 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            --v35;
            ++v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_45:
              LODWORD(v28) = 0;
              goto LABEL_50;
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
              goto LABEL_45;
            }
          }
        }

LABEL_50:
        *(a1 + 24) = v28;
      }

      else if ((PB::Reader::skip(this) & 1) == 0)
      {
        v40 = 0;
        return v40 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v40 = v4 ^ 1;
  return v40 & 1;
}

uint64_t sub_19B57C4B8(uint64_t result)
{
  *result = &unk_1F0E30928;
  *(result + 20) = 0;
  return result;
}

uint64_t sub_19B57C4DC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 28);
  }

  if (v4)
  {
    result = PB::Writer::write(this, *(v3 + 16));
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

void *sub_19B57C55C(void *result)
{
  if (!result[1])
  {
    operator new();
  }

  return result;
}

uint64_t sub_19B57C608(uint64_t result)
{
  *result = &unk_1F0E2EC48;
  *(result + 112) = 0;
  *(result + 180) = 0;
  return result;
}

void sub_19B57C630(PB::Base *this)
{
  *this = &unk_1F0E2EC48;
  v2 = *(this + 14);
  *(this + 14) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B57C6B4(PB::Base *a1)
{
  sub_19B57C630(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57C6EC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 180);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitude", *(a1 + 8));
    v5 = *(a1 + 180);
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

  PB::TextFormatter::format(this, "course", *(a1 + 16));
  v5 = *(a1 + 180);
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
  PB::TextFormatter::format(this, "courseAccuracy", *(a1 + 24));
  v5 = *(a1 + 180);
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
  PB::TextFormatter::format(this, "deltaDistance", *(a1 + 32));
  v5 = *(a1 + 180);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "deltaDistanceAccuracy", *(a1 + 40));
  v5 = *(a1 + 180);
  if ((v5 & 0x4000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "demConfidence", *(a1 + 128));
  v5 = *(a1 + 180);
  if ((v5 & 0x8000) == 0)
  {
LABEL_8:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "demNumContiguousFlatPoints");
  v5 = *(a1 + 180);
  if ((v5 & 0x10000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "gnssModesOfOperation");
  v5 = *(a1 + 180);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "horizontalAccuracy", *(a1 + 48));
  v5 = *(a1 + 180);
  if ((v5 & 0x20000) == 0)
  {
LABEL_11:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "horzUncSemiMaj", *(a1 + 140));
  v5 = *(a1 + 180);
  if ((v5 & 0x40000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "horzUncSemiMajAz", *(a1 + 144));
  v5 = *(a1 + 180);
  if ((v5 & 0x80000) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "horzUncSemiMin", *(a1 + 148));
  v5 = *(a1 + 180);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "latitude", *(a1 + 56));
  v5 = *(a1 + 180);
  if ((v5 & 0x80) == 0)
  {
LABEL_15:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "longitude", *(a1 + 64));
  v5 = *(a1 + 180);
  if ((v5 & 0x100000) == 0)
  {
LABEL_16:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "notificationType");
  v5 = *(a1 + 180);
  if ((v5 & 0x100) == 0)
  {
LABEL_17:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "odometer", *(a1 + 72));
  v5 = *(a1 + 180);
  if ((v5 & 0x200000) == 0)
  {
LABEL_18:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "originDevice");
  v5 = *(a1 + 180);
  if ((v5 & 0x400000) == 0)
  {
LABEL_19:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "roadClass");
  v5 = *(a1 + 180);
  if ((v5 & 0x200) == 0)
  {
LABEL_20:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "speed", *(a1 + 80));
  v5 = *(a1 + 180);
  if ((v5 & 0x400) == 0)
  {
LABEL_21:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "speedAccuracy", *(a1 + 88));
  v5 = *(a1 + 180);
  if ((v5 & 0x800) == 0)
  {
LABEL_22:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_55:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 96));
  if ((*(a1 + 180) & 0x1000) != 0)
  {
LABEL_23:
    PB::TextFormatter::format(this, "timestampGps", *(a1 + 104));
  }

LABEL_24:
  v6 = *(a1 + 112);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "trackRunData");
  }

  v7 = *(a1 + 180);
  if ((v7 & 0x800000) != 0)
  {
    PB::TextFormatter::format(this, "type");
    v7 = *(a1 + 180);
    if ((v7 & 0x1000000) == 0)
    {
LABEL_28:
      if ((v7 & 0x2000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_59;
    }
  }

  else if ((v7 & 0x1000000) == 0)
  {
    goto LABEL_28;
  }

  PB::TextFormatter::format(this, "undulation", *(a1 + 168));
  v7 = *(a1 + 180);
  if ((v7 & 0x2000000) == 0)
  {
LABEL_29:
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "undulationModel");
  v7 = *(a1 + 180);
  if ((v7 & 0x2000) == 0)
  {
LABEL_30:
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_60:
  PB::TextFormatter::format(this, "verticalAccuracy", *(a1 + 120));
  if ((*(a1 + 180) & 0x4000000) != 0)
  {
LABEL_31:
    PB::TextFormatter::format(this, "wayForm");
  }

LABEL_32:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57CAC8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_243;
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

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 180) |= 0x800u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 96) = *(*this + v22);
          goto LABEL_205;
        case 2u:
          *(a1 + 180) |= 0x40u;
          v44 = *(this + 1);
          if (v44 > 0xFFFFFFFFFFFFFFF7 || v44 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 56) = *(*this + v44);
          goto LABEL_205;
        case 3u:
          *(a1 + 180) |= 0x80u;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFF7 || v39 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 64) = *(*this + v39);
          goto LABEL_205;
        case 4u:
          *(a1 + 180) |= 0x200u;
          v42 = *(this + 1);
          if (v42 > 0xFFFFFFFFFFFFFFF7 || v42 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 80) = *(*this + v42);
          goto LABEL_205;
        case 5u:
          *(a1 + 180) |= 0x400u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 88) = *(*this + v27);
          goto LABEL_205;
        case 6u:
          *(a1 + 180) |= 0x20u;
          v55 = *(this + 1);
          if (v55 > 0xFFFFFFFFFFFFFFF7 || v55 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 48) = *(*this + v55);
          goto LABEL_205;
        case 7u:
          *(a1 + 180) |= 2u;
          v74 = *(this + 1);
          if (v74 > 0xFFFFFFFFFFFFFFF7 || v74 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 16) = *(*this + v74);
          goto LABEL_205;
        case 8u:
          *(a1 + 180) |= 4u;
          v43 = *(this + 1);
          if (v43 > 0xFFFFFFFFFFFFFFF7 || v43 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 24) = *(*this + v43);
          goto LABEL_205;
        case 9u:
          *(a1 + 180) |= 1u;
          v85 = *(this + 1);
          if (v85 > 0xFFFFFFFFFFFFFFF7 || v85 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 8) = *(*this + v85);
          goto LABEL_205;
        case 0xAu:
          *(a1 + 180) |= 0x2000u;
          v29 = *(this + 1);
          if (v29 > 0xFFFFFFFFFFFFFFF7 || v29 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 120) = *(*this + v29);
          goto LABEL_205;
        case 0xBu:
          *(a1 + 180) |= 0x800000u;
          v77 = *(this + 1);
          v76 = *(this + 2);
          v78 = *this;
          if (v77 <= 0xFFFFFFFFFFFFFFF5 && v77 + 10 <= v76)
          {
            v79 = 0;
            v80 = 0;
            v81 = 0;
            v82 = (v78 + v77);
            v83 = v77 + 1;
            do
            {
              *(this + 1) = v83;
              v84 = *v82++;
              v81 |= (v84 & 0x7F) << v79;
              if ((v84 & 0x80) == 0)
              {
                goto LABEL_232;
              }

              v79 += 7;
              ++v83;
              v14 = v80++ > 8;
            }

            while (!v14);
LABEL_179:
            LODWORD(v81) = 0;
            goto LABEL_232;
          }

          v138 = 0;
          v139 = 0;
          v81 = 0;
          v17 = v76 >= v77;
          v140 = v76 - v77;
          if (!v17)
          {
            v140 = 0;
          }

          v141 = (v78 + v77);
          v142 = v77 + 1;
          while (2)
          {
            if (v140)
            {
              v143 = *v141;
              *(this + 1) = v142;
              v81 |= (v143 & 0x7F) << v138;
              if (v143 < 0)
              {
                v138 += 7;
                --v140;
                ++v141;
                ++v142;
                v14 = v139++ > 8;
                if (v14)
                {
                  goto LABEL_179;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v81) = 0;
              }
            }

            else
            {
              LODWORD(v81) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_232:
          *(a1 + 164) = v81;
          goto LABEL_207;
        case 0xCu:
          *(a1 + 180) |= 0x1000u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 104) = *(*this + v26);
          goto LABEL_205;
        case 0xDu:
          *(a1 + 180) |= 0x1000000u;
          v28 = *(this + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 168) = *(*this + v28);
          goto LABEL_61;
        case 0xEu:
          *(a1 + 180) |= 0x2000000u;
          v66 = *(this + 1);
          v65 = *(this + 2);
          v67 = *this;
          if (v66 <= 0xFFFFFFFFFFFFFFF5 && v66 + 10 <= v65)
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            v71 = (v67 + v66);
            v72 = v66 + 1;
            do
            {
              *(this + 1) = v72;
              v73 = *v71++;
              v70 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                goto LABEL_229;
              }

              v68 += 7;
              ++v72;
              v14 = v69++ > 8;
            }

            while (!v14);
LABEL_171:
            LODWORD(v70) = 0;
            goto LABEL_229;
          }

          v132 = 0;
          v133 = 0;
          v70 = 0;
          v17 = v65 >= v66;
          v134 = v65 - v66;
          if (!v17)
          {
            v134 = 0;
          }

          v135 = (v67 + v66);
          v136 = v66 + 1;
          while (2)
          {
            if (v134)
            {
              v137 = *v135;
              *(this + 1) = v136;
              v70 |= (v137 & 0x7F) << v132;
              if (v137 < 0)
              {
                v132 += 7;
                --v134;
                ++v135;
                ++v136;
                v14 = v133++ > 8;
                if (v14)
                {
                  goto LABEL_171;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v70) = 0;
              }
            }

            else
            {
              LODWORD(v70) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_229:
          *(a1 + 172) = v70;
          goto LABEL_207;
        case 0xFu:
          *(a1 + 180) |= 0x20000u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 140) = *(*this + v25);
          goto LABEL_61;
        case 0x10u:
          *(a1 + 180) |= 0x80000u;
          v40 = *(this + 1);
          if (v40 > 0xFFFFFFFFFFFFFFFBLL || v40 + 4 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 148) = *(*this + v40);
          goto LABEL_61;
        case 0x11u:
          *(a1 + 180) |= 0x40000u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 144) = *(*this + v24);
          goto LABEL_61;
        case 0x12u:
          *(a1 + 180) |= 0x100u;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFF7 || v45 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 72) = *(*this + v45);
          goto LABEL_205;
        case 0x13u:
          *(a1 + 180) |= 8u;
          v75 = *(this + 1);
          if (v75 > 0xFFFFFFFFFFFFFFF7 || v75 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 32) = *(*this + v75);
          goto LABEL_205;
        case 0x14u:
          *(a1 + 180) |= 0x10u;
          v95 = *(this + 1);
          if (v95 > 0xFFFFFFFFFFFFFFF7 || v95 + 8 > *(this + 2))
          {
            goto LABEL_123;
          }

          *(a1 + 40) = *(*this + v95);
LABEL_205:
          v41 = *(this + 1) + 8;
          goto LABEL_206;
        case 0x15u:
          *(a1 + 180) |= 0x200000u;
          v47 = *(this + 1);
          v46 = *(this + 2);
          v48 = *this;
          if (v47 <= 0xFFFFFFFFFFFFFFF5 && v47 + 10 <= v46)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            do
            {
              *(this + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                goto LABEL_223;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
            }

            while (!v14);
LABEL_155:
            LODWORD(v51) = 0;
            goto LABEL_223;
          }

          v120 = 0;
          v121 = 0;
          v51 = 0;
          v17 = v46 >= v47;
          v122 = v46 - v47;
          if (!v17)
          {
            v122 = 0;
          }

          v123 = (v48 + v47);
          v124 = v47 + 1;
          while (2)
          {
            if (v122)
            {
              v125 = *v123;
              *(this + 1) = v124;
              v51 |= (v125 & 0x7F) << v120;
              if (v125 < 0)
              {
                v120 += 7;
                --v122;
                ++v123;
                ++v124;
                v14 = v121++ > 8;
                if (v14)
                {
                  goto LABEL_155;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }
            }

            else
            {
              LODWORD(v51) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_223:
          *(a1 + 156) = v51;
          goto LABEL_207;
        case 0x16u:
          *(a1 + 180) |= 0x4000000u;
          v57 = *(this + 1);
          v56 = *(this + 2);
          v58 = *this;
          if (v57 <= 0xFFFFFFFFFFFFFFF5 && v57 + 10 <= v56)
          {
            v59 = 0;
            v60 = 0;
            v61 = 0;
            v62 = (v58 + v57);
            v63 = v57 + 1;
            do
            {
              *(this + 1) = v63;
              v64 = *v62++;
              v61 |= (v64 & 0x7F) << v59;
              if ((v64 & 0x80) == 0)
              {
                goto LABEL_226;
              }

              v59 += 7;
              ++v63;
              v14 = v60++ > 8;
            }

            while (!v14);
LABEL_163:
            LODWORD(v61) = 0;
            goto LABEL_226;
          }

          v126 = 0;
          v127 = 0;
          v61 = 0;
          v17 = v56 >= v57;
          v128 = v56 - v57;
          if (!v17)
          {
            v128 = 0;
          }

          v129 = (v58 + v57);
          v130 = v57 + 1;
          while (2)
          {
            if (v128)
            {
              v131 = *v129;
              *(this + 1) = v130;
              v61 |= (v131 & 0x7F) << v126;
              if (v131 < 0)
              {
                v126 += 7;
                --v128;
                ++v129;
                ++v130;
                v14 = v127++ > 8;
                if (v14)
                {
                  goto LABEL_163;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v61) = 0;
              }
            }

            else
            {
              LODWORD(v61) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_226:
          *(a1 + 176) = v61;
          goto LABEL_207;
        case 0x17u:
          *(a1 + 180) |= 0x400000u;
          v87 = *(this + 1);
          v86 = *(this + 2);
          v88 = *this;
          if (v87 <= 0xFFFFFFFFFFFFFFF5 && v87 + 10 <= v86)
          {
            v89 = 0;
            v90 = 0;
            v91 = 0;
            v92 = (v88 + v87);
            v93 = v87 + 1;
            do
            {
              *(this + 1) = v93;
              v94 = *v92++;
              v91 |= (v94 & 0x7F) << v89;
              if ((v94 & 0x80) == 0)
              {
                goto LABEL_235;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_187:
            LODWORD(v91) = 0;
            goto LABEL_235;
          }

          v144 = 0;
          v145 = 0;
          v91 = 0;
          v17 = v86 >= v87;
          v146 = v86 - v87;
          if (!v17)
          {
            v146 = 0;
          }

          v147 = (v88 + v87);
          v148 = v87 + 1;
          while (2)
          {
            if (v146)
            {
              v149 = *v147;
              *(this + 1) = v148;
              v91 |= (v149 & 0x7F) << v144;
              if (v149 < 0)
              {
                v144 += 7;
                --v146;
                ++v147;
                ++v148;
                v14 = v145++ > 8;
                if (v14)
                {
                  goto LABEL_187;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v91) = 0;
              }
            }

            else
            {
              LODWORD(v91) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_235:
          *(a1 + 160) = v91;
          goto LABEL_207;
        case 0x18u:
          *(a1 + 180) |= 0x10000u;
          v97 = *(this + 1);
          v96 = *(this + 2);
          v98 = *this;
          if (v97 <= 0xFFFFFFFFFFFFFFF5 && v97 + 10 <= v96)
          {
            v99 = 0;
            v100 = 0;
            v101 = 0;
            v102 = (v98 + v97);
            v103 = v97 + 1;
            do
            {
              *(this + 1) = v103;
              v104 = *v102++;
              v101 |= (v104 & 0x7F) << v99;
              if ((v104 & 0x80) == 0)
              {
                goto LABEL_238;
              }

              v99 += 7;
              ++v103;
              v14 = v100++ > 8;
            }

            while (!v14);
LABEL_195:
            LODWORD(v101) = 0;
            goto LABEL_238;
          }

          v150 = 0;
          v151 = 0;
          v101 = 0;
          v17 = v96 >= v97;
          v152 = v96 - v97;
          if (!v17)
          {
            v152 = 0;
          }

          v153 = (v98 + v97);
          v154 = v97 + 1;
          while (2)
          {
            if (v152)
            {
              v155 = *v153;
              *(this + 1) = v154;
              v101 |= (v155 & 0x7F) << v150;
              if (v155 < 0)
              {
                v150 += 7;
                --v152;
                ++v153;
                ++v154;
                v14 = v151++ > 8;
                if (v14)
                {
                  goto LABEL_195;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v101) = 0;
              }
            }

            else
            {
              LODWORD(v101) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_238:
          *(a1 + 136) = v101;
          goto LABEL_207;
        case 0x19u:
          *(a1 + 180) |= 0x100000u;
          v31 = *(this + 1);
          v30 = *(this + 2);
          v32 = *this;
          if (v31 <= 0xFFFFFFFFFFFFFFF5 && v31 + 10 <= v30)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = (v32 + v31);
            v37 = v31 + 1;
            do
            {
              *(this + 1) = v37;
              v38 = *v36++;
              v35 |= (v38 & 0x7F) << v33;
              if ((v38 & 0x80) == 0)
              {
                goto LABEL_220;
              }

              v33 += 7;
              ++v37;
              v14 = v34++ > 8;
            }

            while (!v14);
LABEL_147:
            LODWORD(v35) = 0;
            goto LABEL_220;
          }

          v114 = 0;
          v115 = 0;
          v35 = 0;
          v17 = v30 >= v31;
          v116 = v30 - v31;
          if (!v17)
          {
            v116 = 0;
          }

          v117 = (v32 + v31);
          v118 = v31 + 1;
          while (2)
          {
            if (v116)
            {
              v119 = *v117;
              *(this + 1) = v118;
              v35 |= (v119 & 0x7F) << v114;
              if (v119 < 0)
              {
                v114 += 7;
                --v116;
                ++v117;
                ++v118;
                v14 = v115++ > 8;
                if (v14)
                {
                  goto LABEL_147;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }
            }

            else
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_220:
          *(a1 + 152) = v35;
          goto LABEL_207;
        case 0x1Au:
          operator new();
        case 0x1Bu:
          *(a1 + 180) |= 0x8000u;
          v106 = *(this + 1);
          v105 = *(this + 2);
          v107 = *this;
          if (v106 <= 0xFFFFFFFFFFFFFFF5 && v106 + 10 <= v105)
          {
            v108 = 0;
            v109 = 0;
            v110 = 0;
            v111 = (v107 + v106);
            v112 = v106 + 1;
            do
            {
              *(this + 1) = v112;
              v113 = *v111++;
              v110 |= (v113 & 0x7F) << v108;
              if ((v113 & 0x80) == 0)
              {
                goto LABEL_241;
              }

              v108 += 7;
              ++v112;
              v14 = v109++ > 8;
            }

            while (!v14);
LABEL_203:
            LODWORD(v110) = 0;
            goto LABEL_241;
          }

          v156 = 0;
          v157 = 0;
          v110 = 0;
          v17 = v105 >= v106;
          v158 = v105 - v106;
          if (!v17)
          {
            v158 = 0;
          }

          v159 = (v107 + v106);
          v160 = v106 + 1;
          break;
        case 0x1Cu:
          *(a1 + 180) |= 0x4000u;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
          {
LABEL_123:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 128) = *(*this + v23);
LABEL_61:
            v41 = *(this + 1) + 4;
LABEL_206:
            *(this + 1) = v41;
          }

          goto LABEL_207;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_207;
          }

          v163 = 0;
          return v163 & 1;
      }

      while (1)
      {
        if (!v158)
        {
          LODWORD(v110) = 0;
          *(this + 24) = 1;
          goto LABEL_241;
        }

        v161 = *v159;
        *(this + 1) = v160;
        v110 |= (v161 & 0x7F) << v156;
        if ((v161 & 0x80) == 0)
        {
          break;
        }

        v156 += 7;
        --v158;
        ++v159;
        ++v160;
        v14 = v157++ > 8;
        if (v14)
        {
          goto LABEL_203;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v110) = 0;
      }

LABEL_241:
      *(a1 + 132) = v110;
LABEL_207:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_243:
  v163 = v4 ^ 1;
  return v163 & 1;
}

uint64_t sub_19B57D8EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 180);
  if ((v4 & 0x800) != 0)
  {
    result = PB::Writer::write(this, *(result + 96));
    v4 = *(v3 + 180);
    if ((v4 & 0x40) == 0)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v4 & 0x40) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 180);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 180);
  if ((v4 & 0x200) == 0)
  {
LABEL_5:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 180);
  if ((v4 & 0x400) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 180);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 180);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 180);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 180);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 180);
  if ((v4 & 0x2000) == 0)
  {
LABEL_11:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 180);
  if ((v4 & 0x800000) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 180);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 180);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x20000) == 0)
  {
LABEL_16:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 180);
  if ((v4 & 0x80000) == 0)
  {
LABEL_17:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 148));
  v4 = *(v3 + 180);
  if ((v4 & 0x40000) == 0)
  {
LABEL_18:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 180);
  if ((v4 & 0x100) == 0)
  {
LABEL_19:
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 180);
  if ((v4 & 8) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 180);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 180);
  if ((v4 & 0x200000) == 0)
  {
LABEL_22:
    if ((v4 & 0x4000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x400000) == 0)
  {
LABEL_24:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 180);
  if ((v4 & 0x10000) == 0)
  {
LABEL_25:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_56:
  result = PB::Writer::writeVarInt(this);
  if ((*(v3 + 180) & 0x100000) != 0)
  {
LABEL_26:
    result = PB::Writer::writeVarInt(this);
  }

LABEL_27:
  v5 = *(v3 + 112);
  if (v5)
  {
    result = PB::Writer::writeSubmessage(this, v5);
  }

  v6 = *(v3 + 180);
  if ((v6 & 0x8000) != 0)
  {
    result = PB::Writer::writeVarInt(this);
    v6 = *(v3 + 180);
  }

  if ((v6 & 0x4000) != 0)
  {
    v7 = *(v3 + 128);

    return PB::Writer::write(this, v7);
  }

  return result;
}

uint64_t sub_19B57DC28(uint64_t result)
{
  *result = &unk_1F0E30998;
  *(result + 24) = 0;
  return result;
}

void sub_19B57DC50(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57DC88(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "event");
    v5 = *(a1 + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 24) & 4) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "value");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57DD2C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_75;
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
        *(a1 + 24) |= 4u;
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
            v2 = *(this + 1);
          }

          v48 = v2 - v31;
          v49 = (v32 + v31);
          v50 = v31 + 1;
          while (1)
          {
            if (!v48)
            {
              LODWORD(v35) = 0;
              *(this + 24) = 1;
              goto LABEL_70;
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
              goto LABEL_69;
            }
          }

          if (*(this + 24))
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

LABEL_70:
        *(a1 + 20) = v35;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
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
            v2 = *(this + 1);
          }

          v41 = v2 - v23;
          v42 = (v24 + v23);
          v43 = v23 + 1;
          while (1)
          {
            if (!v41)
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
              goto LABEL_66;
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
              goto LABEL_65;
            }
          }

          if (*(this + 24))
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

LABEL_66:
        *(a1 + 16) = v27;
      }

      else if (v22 == 1)
      {
        *(a1 + 24) |= 1u;
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
          v53 = 0;
          return v53 & 1;
        }

        v2 = *(this + 1);
      }

      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_75:
  v53 = v4 ^ 1;
  return v53 & 1;
}

uint64_t sub_19B57E104(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 24);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 24) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 24);
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

uint64_t sub_19B57E190(uint64_t result)
{
  *result = &unk_1F0E2FB60;
  *(result + 220) = 0;
  return result;
}

void sub_19B57E1B8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57E1F0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 220);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitude", *(a1 + 8));
    v5 = *(a1 + 220);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "course", *(a1 + 16));
  v5 = *(a1 + 220);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  PB::TextFormatter::format(this, "courseAccuracy", *(a1 + 24));
  v5 = *(a1 + 220);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  PB::TextFormatter::format(this, "deltaDistance", *(a1 + 32));
  v5 = *(a1 + 220);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  PB::TextFormatter::format(this, "deltaDistanceAccuracy", *(a1 + 40));
  v5 = *(a1 + 220);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  PB::TextFormatter::format(this, "groundAltitude", *(a1 + 48));
  v5 = *(a1 + 220);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  PB::TextFormatter::format(this, "groundAltitudeUncertainty", *(a1 + 56));
  v5 = *(a1 + 220);
  if ((v5 & 0x80) == 0)
  {
LABEL_9:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  PB::TextFormatter::format(this, "horizontalAccuracy", *(a1 + 64));
  v5 = *(a1 + 220);
  if ((v5 & 0x200000) == 0)
  {
LABEL_10:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_46;
  }

LABEL_45:
  PB::TextFormatter::format(this, "horzUncSemiMaj", *(a1 + 176));
  v5 = *(a1 + 220);
  if ((v5 & 0x400000) == 0)
  {
LABEL_11:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_47;
  }

LABEL_46:
  PB::TextFormatter::format(this, "horzUncSemiMajAz", *(a1 + 180));
  v5 = *(a1 + 220);
  if ((v5 & 0x800000) == 0)
  {
LABEL_12:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_48;
  }

LABEL_47:
  PB::TextFormatter::format(this, "horzUncSemiMin", *(a1 + 184));
  v5 = *(a1 + 220);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "isPrefilteredLocation");
  v5 = *(a1 + 220);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "latitude", *(a1 + 72));
  v5 = *(a1 + 220);
  if ((v5 & 0x200) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "longitude", *(a1 + 80));
  v5 = *(a1 + 220);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_16:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "matchQuality");
  v5 = *(a1 + 220);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "maxAbsSlope", *(a1 + 88));
  v5 = *(a1 + 220);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "odometer", *(a1 + 96));
  v5 = *(a1 + 220);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_19:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "originDevice");
  v5 = *(a1 + 220);
  if ((v5 & 0x1000) == 0)
  {
LABEL_20:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "rawAltitude", *(a1 + 104));
  v5 = *(a1 + 220);
  if ((v5 & 0x2000) == 0)
  {
LABEL_21:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "rawUndulation", *(a1 + 112));
  v5 = *(a1 + 220);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "rawUndulationModel");
  v5 = *(a1 + 220);
  if ((v5 & 0x4000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "rawVerticalAccuracy", *(a1 + 120));
  v5 = *(a1 + 220);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "signalEnvironment");
  v5 = *(a1 + 220);
  if ((v5 & 0x8000) == 0)
  {
LABEL_25:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "slope", *(a1 + 128));
  v5 = *(a1 + 220);
  if ((v5 & 0x10000) == 0)
  {
LABEL_26:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "speed", *(a1 + 136));
  v5 = *(a1 + 220);
  if ((v5 & 0x20000) == 0)
  {
LABEL_27:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "speedAccuracy", *(a1 + 144));
  v5 = *(a1 + 220);
  if ((v5 & 0x40000) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 152));
  v5 = *(a1 + 220);
  if ((v5 & 0x80000) == 0)
  {
LABEL_29:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "timestampGps", *(a1 + 160));
  v5 = *(a1 + 220);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "type");
  v5 = *(a1 + 220);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "undulation", *(a1 + 208));
  v5 = *(a1 + 220);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_67:
  PB::TextFormatter::format(this, "undulationModel");
  if ((*(a1 + 220) & 0x100000) != 0)
  {
LABEL_33:
    PB::TextFormatter::format(this, "verticalAccuracy", *(a1 + 168));
  }

LABEL_34:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57E634(uint64_t a1, PB::Reader *this)
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
        goto LABEL_232;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 220) |= 0x40000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 152) = *(*this + v2);
          goto LABEL_196;
        case 2u:
          *(a1 + 220) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_196;
        case 3u:
          *(a1 + 220) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_196;
        case 4u:
          *(a1 + 220) |= 0x10000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 136) = *(*this + v2);
          goto LABEL_196;
        case 5u:
          *(a1 + 220) |= 0x20000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 144) = *(*this + v2);
          goto LABEL_196;
        case 6u:
          *(a1 + 220) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_196;
        case 7u:
          *(a1 + 220) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_196;
        case 8u:
          *(a1 + 220) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_196;
        case 9u:
          *(a1 + 220) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_196;
        case 0xAu:
          *(a1 + 220) |= 0x100000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 168) = *(*this + v2);
          goto LABEL_196;
        case 0xBu:
          *(a1 + 220) |= 0x10000000u;
          v56 = *(this + 1);
          v2 = *(this + 2);
          v57 = *this;
          if (v56 > 0xFFFFFFFFFFFFFFF5 || v56 + 10 > v2)
          {
            v100 = 0;
            v101 = 0;
            v60 = 0;
            if (v2 <= v56)
            {
              v2 = *(this + 1);
            }

            v102 = v2 - v56;
            v103 = (v57 + v56);
            v104 = v56 + 1;
            while (1)
            {
              if (!v102)
              {
                LODWORD(v60) = 0;
                *(this + 24) = 1;
                goto LABEL_226;
              }

              v105 = v104;
              v106 = *v103;
              *(this + 1) = v105;
              v60 |= (v106 & 0x7F) << v100;
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
                LODWORD(v60) = 0;
LABEL_225:
                v2 = v105;
                goto LABEL_226;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v60) = 0;
            }

            goto LABEL_225;
          }

          v58 = 0;
          v59 = 0;
          v60 = 0;
          v61 = (v57 + v56);
          v62 = v56 + 1;
          do
          {
            v2 = v62;
            *(this + 1) = v62;
            v63 = *v61++;
            v60 |= (v63 & 0x7F) << v58;
            if ((v63 & 0x80) == 0)
            {
              goto LABEL_226;
            }

            v58 += 7;
            ++v62;
            v14 = v59++ > 8;
          }

          while (!v14);
          LODWORD(v60) = 0;
LABEL_226:
          *(a1 + 204) = v60;
          goto LABEL_198;
        case 0xCu:
          *(a1 + 220) |= 0x80000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 160) = *(*this + v2);
          goto LABEL_196;
        case 0xDu:
          *(a1 + 220) |= 0x20000000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 208) = *(*this + v2);
          goto LABEL_58;
        case 0xEu:
          *(a1 + 220) |= 0x40000000u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v93 = 0;
            v94 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v95 = v2 - v48;
            v96 = (v49 + v48);
            v97 = v48 + 1;
            while (1)
            {
              if (!v95)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_222;
              }

              v98 = v97;
              v99 = *v96;
              *(this + 1) = v98;
              v52 |= (v99 & 0x7F) << v93;
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
                LODWORD(v52) = 0;
LABEL_221:
                v2 = v98;
                goto LABEL_222;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_221;
          }

          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          do
          {
            v2 = v54;
            *(this + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              goto LABEL_222;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_222:
          *(a1 + 212) = v52;
          goto LABEL_198;
        case 0xFu:
          *(a1 + 220) |= 0x200000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 176) = *(*this + v2);
          goto LABEL_58;
        case 0x10u:
          *(a1 + 220) |= 0x800000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 184) = *(*this + v2);
          goto LABEL_58;
        case 0x11u:
          *(a1 + 220) |= 0x400000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 180) = *(*this + v2);
LABEL_58:
          v2 = *(this + 1) + 4;
          goto LABEL_197;
        case 0x12u:
          *(a1 + 220) |= 0x800u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 96) = *(*this + v2);
          goto LABEL_196;
        case 0x13u:
          *(a1 + 220) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_196;
        case 0x14u:
          *(a1 + 220) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_196;
        case 0x15u:
          *(a1 + 220) |= 0x2000000u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v79 = 0;
            v80 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(this + 1);
            }

            v81 = v2 - v32;
            v82 = (v33 + v32);
            v83 = v32 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_214;
              }

              v84 = v83;
              v85 = *v82;
              *(this + 1) = v84;
              v36 |= (v85 & 0x7F) << v79;
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
                LODWORD(v36) = 0;
LABEL_213:
                v2 = v84;
                goto LABEL_214;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_213;
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
              goto LABEL_214;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_214:
          *(a1 + 192) = v36;
          goto LABEL_198;
        case 0x16u:
          *(a1 + 220) |= 0x8000000u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v86 = 0;
            v87 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(this + 1);
            }

            v88 = v2 - v40;
            v89 = (v41 + v40);
            v90 = v40 + 1;
            while (1)
            {
              if (!v88)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_218;
              }

              v91 = v90;
              v92 = *v89;
              *(this + 1) = v91;
              v44 |= (v92 & 0x7F) << v86;
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
                LODWORD(v44) = 0;
LABEL_217:
                v2 = v91;
                goto LABEL_218;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_217;
          }

          v42 = 0;
          v43 = 0;
          v44 = 0;
          v45 = (v41 + v40);
          v46 = v40 + 1;
          do
          {
            v2 = v46;
            *(this + 1) = v46;
            v47 = *v45++;
            v44 |= (v47 & 0x7F) << v42;
            if ((v47 & 0x80) == 0)
            {
              goto LABEL_218;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_218:
          *(a1 + 200) = v44;
          goto LABEL_198;
        case 0x17u:
          *(a1 + 220) |= 0x1000000u;
          v64 = *(this + 1);
          v2 = *(this + 2);
          v65 = *this;
          if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v2)
          {
            v107 = 0;
            v108 = 0;
            v68 = 0;
            if (v2 <= v64)
            {
              v2 = *(this + 1);
            }

            v109 = v2 - v64;
            v110 = (v65 + v64);
            v111 = v64 + 1;
            while (1)
            {
              if (!v109)
              {
                LODWORD(v68) = 0;
                *(this + 24) = 1;
                goto LABEL_230;
              }

              v112 = v111;
              v113 = *v110;
              *(this + 1) = v112;
              v68 |= (v113 & 0x7F) << v107;
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
                LODWORD(v68) = 0;
LABEL_229:
                v2 = v112;
                goto LABEL_230;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v68) = 0;
            }

            goto LABEL_229;
          }

          v66 = 0;
          v67 = 0;
          v68 = 0;
          v69 = (v65 + v64);
          v70 = v64 + 1;
          do
          {
            v2 = v70;
            *(this + 1) = v70;
            v71 = *v69++;
            v68 |= (v71 & 0x7F) << v66;
            if ((v71 & 0x80) == 0)
            {
              goto LABEL_230;
            }

            v66 += 7;
            ++v70;
            v14 = v67++ > 8;
          }

          while (!v14);
          LODWORD(v68) = 0;
LABEL_230:
          *(a1 + 188) = v68;
          goto LABEL_198;
        case 0x18u:
          *(a1 + 220) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_196;
        case 0x19u:
          *(a1 + 220) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_196;
        case 0x1Au:
          *(a1 + 220) |= 0x8000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 128) = *(*this + v2);
          goto LABEL_196;
        case 0x1Bu:
          *(a1 + 220) |= 0x400u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 88) = *(*this + v2);
          goto LABEL_196;
        case 0x1Cu:
          *(a1 + 220) |= 0x80000000;
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

          *(a1 + 216) = v23;
          goto LABEL_198;
        case 0x1Du:
          *(a1 + 220) |= 0x1000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 104) = *(*this + v2);
          goto LABEL_196;
        case 0x1Eu:
          *(a1 + 220) |= 0x4000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_144;
          }

          *(a1 + 120) = *(*this + v2);
          goto LABEL_196;
        case 0x1Fu:
          *(a1 + 220) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_144:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 112) = *(*this + v2);
LABEL_196:
            v2 = *(this + 1) + 8;
LABEL_197:
            *(this + 1) = v2;
          }

          goto LABEL_198;
        case 0x20u:
          *(a1 + 220) |= 0x4000000u;
          v24 = *(this + 1);
          v2 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v2)
          {
            v72 = 0;
            v73 = 0;
            v28 = 0;
            if (v2 <= v24)
            {
              v2 = *(this + 1);
            }

            v74 = v2 - v24;
            v75 = (v25 + v24);
            v76 = v24 + 1;
            while (1)
            {
              if (!v74)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_210;
              }

              v77 = v76;
              v78 = *v75;
              *(this + 1) = v77;
              v28 |= (v78 & 0x7F) << v72;
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
                LODWORD(v28) = 0;
LABEL_209:
                v2 = v77;
                goto LABEL_210;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }

            goto LABEL_209;
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
              goto LABEL_210;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
          }

          while (!v14);
          LODWORD(v28) = 0;
LABEL_210:
          *(a1 + 196) = v28;
          goto LABEL_198;
        default:
          if (!PB::Reader::skip(this))
          {
            v114 = 0;
            return v114 & 1;
          }

          v2 = *(this + 1);
LABEL_198:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_232;
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

LABEL_232:
  v114 = v4 ^ 1;
  return v114 & 1;
}

uint64_t sub_19B57F3D0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 220);
  if ((v4 & 0x40000) != 0)
  {
    result = PB::Writer::write(this, *(result + 152));
    v4 = *(v3 + 220);
    if ((v4 & 0x100) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v4 & 0x100) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 220);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 220);
  if ((v4 & 0x10000) == 0)
  {
LABEL_5:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = PB::Writer::write(this, *(v3 + 136));
  v4 = *(v3 + 220);
  if ((v4 & 0x20000) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = PB::Writer::write(this, *(v3 + 144));
  v4 = *(v3 + 220);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 220);
  if ((v4 & 2) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 220);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 220);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 220);
  if ((v4 & 0x100000) == 0)
  {
LABEL_11:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = PB::Writer::write(this, *(v3 + 168));
  v4 = *(v3 + 220);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_12:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x80000) == 0)
  {
LABEL_13:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = PB::Writer::write(this, *(v3 + 160));
  v4 = *(v3 + 220);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = PB::Writer::write(this, *(v3 + 208));
  v4 = *(v3 + 220);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_15:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x200000) == 0)
  {
LABEL_16:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  result = PB::Writer::write(this, *(v3 + 176));
  v4 = *(v3 + 220);
  if ((v4 & 0x800000) == 0)
  {
LABEL_17:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  result = PB::Writer::write(this, *(v3 + 184));
  v4 = *(v3 + 220);
  if ((v4 & 0x400000) == 0)
  {
LABEL_18:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = PB::Writer::write(this, *(v3 + 180));
  v4 = *(v3 + 220);
  if ((v4 & 0x800) == 0)
  {
LABEL_19:
    if ((v4 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  result = PB::Writer::write(this, *(v3 + 96));
  v4 = *(v3 + 220);
  if ((v4 & 8) == 0)
  {
LABEL_20:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 220);
  if ((v4 & 0x10) == 0)
  {
LABEL_21:
    if ((v4 & 0x2000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 220);
  if ((v4 & 0x2000000) == 0)
  {
LABEL_22:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_23:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_24:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x20) == 0)
  {
LABEL_25:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 220);
  if ((v4 & 0x40) == 0)
  {
LABEL_26:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 220);
  if ((v4 & 0x8000) == 0)
  {
LABEL_27:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  result = PB::Writer::write(this, *(v3 + 128));
  v4 = *(v3 + 220);
  if ((v4 & 0x400) == 0)
  {
LABEL_28:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  result = PB::Writer::write(this, *(v3 + 88));
  v4 = *(v3 + 220);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_29:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  result = PB::Writer::write(this);
  v4 = *(v3 + 220);
  if ((v4 & 0x1000) == 0)
  {
LABEL_30:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  result = PB::Writer::write(this, *(v3 + 104));
  v4 = *(v3 + 220);
  if ((v4 & 0x4000) == 0)
  {
LABEL_31:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

LABEL_64:
    result = PB::Writer::write(this, *(v3 + 112));
    if ((*(v3 + 220) & 0x4000000) == 0)
    {
      return result;
    }

    goto LABEL_65;
  }

LABEL_63:
  result = PB::Writer::write(this, *(v3 + 120));
  v4 = *(v3 + 220);
  if ((v4 & 0x2000) != 0)
  {
    goto LABEL_64;
  }

LABEL_32:
  if ((v4 & 0x4000000) == 0)
  {
    return result;
  }

LABEL_65:

  return PB::Writer::writeVarInt(this);
}

double sub_19B57F788(uint64_t a1)
{
  *a1 = &unk_1F0E39948;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_19B57F7B8(PB::Base *this)
{
  *this = &unk_1F0E39948;
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

void sub_19B57F82C(PB::Base *a1)
{
  sub_19B57F7B8(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57F864(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  v6 = a1[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "loiAltitude", v7);
  }

  v8 = a1[4];
  v9 = a1[5];
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "loiVerticalUncertainty", v10);
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57F910(void *a1, PB::Reader *this)
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
        goto LABEL_102;
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
        goto LABEL_102;
      }

      if ((v10 >> 3) == 2)
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        if (v22 != 2)
        {
          v56 = a1[2];
          v55 = a1[3];
          if (v56 >= v55)
          {
            v60 = a1[1];
            v61 = v56 - v60;
            v62 = (v56 - v60) >> 3;
            v63 = v62 + 1;
            if ((v62 + 1) >> 61)
            {
              goto LABEL_105;
            }

            v64 = v55 - v60;
            if (v64 >> 2 > v63)
            {
              v63 = v64 >> 2;
            }

            if (v64 >= 0x7FFFFFFFFFFFFFF8)
            {
              v65 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v65 = v63;
            }

            if (v65)
            {
              sub_19B4C50F0((a1 + 1), v65);
            }

            v72 = (v56 - v60) >> 3;
            v73 = (8 * v62);
            v74 = (8 * v62 - 8 * v72);
            *v73 = 0;
            v57 = v73 + 1;
            memcpy(v74, v60, v61);
            v75 = a1[1];
            a1[1] = v74;
            a1[2] = v57;
            a1[3] = 0;
            if (v75)
            {
              operator delete(v75);
            }
          }

          else
          {
            *v56 = 0;
            v57 = v56 + 8;
          }

          a1[2] = v57;
LABEL_94:
          v80 = *(this + 1);
          if (v80 <= 0xFFFFFFFFFFFFFFF7 && v80 + 8 <= *(this + 2))
          {
            *(v57 - 1) = *(*this + v80);
            *(this + 1) += 8;
          }

          else
          {
            *(this + 24) = 1;
          }

          goto LABEL_98;
        }

        if (PB::Reader::placeMark())
        {
          goto LABEL_104;
        }

        v23 = *(this + 1);
        v24 = *(this + 2);
        while (v23 < v24 && (*(this + 24) & 1) == 0)
        {
          v26 = a1[2];
          v25 = a1[3];
          if (v26 >= v25)
          {
            v28 = a1[1];
            v29 = v26 - v28;
            v30 = (v26 - v28) >> 3;
            v31 = v30 + 1;
            if ((v30 + 1) >> 61)
            {
              goto LABEL_105;
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
              sub_19B4C50F0((a1 + 1), v33);
            }

            v34 = (v26 - v28) >> 3;
            v35 = (8 * v30);
            v36 = (8 * v30 - 8 * v34);
            *v35 = 0;
            v27 = v35 + 1;
            memcpy(v36, v28, v29);
            v37 = a1[1];
            a1[1] = v36;
            a1[2] = v27;
            a1[3] = 0;
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

          a1[2] = v27;
          v38 = *(this + 1);
          if (v38 > 0xFFFFFFFFFFFFFFF7 || v38 + 8 > *(this + 2))
          {
            goto LABEL_70;
          }

          *(v27 - 1) = *(*this + v38);
          v24 = *(this + 2);
          v23 = *(this + 1) + 8;
          *(this + 1) = v23;
        }

LABEL_71:
        PB::Reader::recallMark();
        goto LABEL_98;
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
LABEL_104:
        v81 = 0;
        return v81 & 1;
      }

LABEL_98:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_102;
      }
    }

    if (v22 != 2)
    {
      v59 = a1[5];
      v58 = a1[6];
      if (v59 >= v58)
      {
        v66 = a1[4];
        v67 = v59 - v66;
        v68 = (v59 - v66) >> 3;
        v69 = v68 + 1;
        if ((v68 + 1) >> 61)
        {
LABEL_105:
          sub_19B5BE690();
        }

        v70 = v58 - v66;
        if (v70 >> 2 > v69)
        {
          v69 = v70 >> 2;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF8)
        {
          v71 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v69;
        }

        if (v71)
        {
          sub_19B4C50F0((a1 + 4), v71);
        }

        v76 = (v59 - v66) >> 3;
        v77 = (8 * v68);
        v78 = (8 * v68 - 8 * v76);
        *v77 = 0;
        v57 = v77 + 1;
        memcpy(v78, v66, v67);
        v79 = a1[4];
        a1[4] = v78;
        a1[5] = v57;
        a1[6] = 0;
        if (v79)
        {
          operator delete(v79);
        }
      }

      else
      {
        *v59 = 0;
        v57 = v59 + 8;
      }

      a1[5] = v57;
      goto LABEL_94;
    }

    if (PB::Reader::placeMark())
    {
      goto LABEL_104;
    }

    v39 = *(this + 1);
    v40 = *(this + 2);
    while (v39 < v40 && (*(this + 24) & 1) == 0)
    {
      v42 = a1[5];
      v41 = a1[6];
      if (v42 >= v41)
      {
        v44 = a1[4];
        v45 = v42 - v44;
        v46 = (v42 - v44) >> 3;
        v47 = v46 + 1;
        if ((v46 + 1) >> 61)
        {
          goto LABEL_105;
        }

        v48 = v41 - v44;
        if (v48 >> 2 > v47)
        {
          v47 = v48 >> 2;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF8)
        {
          v49 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          sub_19B4C50F0((a1 + 4), v49);
        }

        v50 = (v42 - v44) >> 3;
        v51 = (8 * v46);
        v52 = (8 * v46 - 8 * v50);
        *v51 = 0;
        v43 = v51 + 1;
        memcpy(v52, v44, v45);
        v53 = a1[4];
        a1[4] = v52;
        a1[5] = v43;
        a1[6] = 0;
        if (v53)
        {
          operator delete(v53);
        }
      }

      else
      {
        *v42 = 0;
        v43 = v42 + 8;
      }

      a1[5] = v43;
      v54 = *(this + 1);
      if (v54 > 0xFFFFFFFFFFFFFFF7 || v54 + 8 > *(this + 2))
      {
LABEL_70:
        *(this + 24) = 1;
        goto LABEL_71;
      }

      *(v43 - 1) = *(*this + v54);
      v40 = *(this + 2);
      v39 = *(this + 1) + 8;
      *(this + 1) = v39;
    }

    goto LABEL_71;
  }

LABEL_102:
  v81 = v4 ^ 1;
  return v81 & 1;
}

uint64_t sub_19B57FE4C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v8 = *(v3 + 32);
  v7 = *(v3 + 40);
  while (v8 != v7)
  {
    v9 = *v8++;
    result = PB::Writer::write(this, v9);
  }

  return result;
}

uint64_t sub_19B57FEB8(uint64_t result)
{
  *result = &unk_1F0E2FF18;
  *(result + 84) = -1;
  *(result + 92) = 0;
  return result;
}

void sub_19B57FEE8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57FF20(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 92);
  if (v5)
  {
    PB::TextFormatter::format(this, "arrivalDate", *(a1 + 8));
    v5 = *(a1 + 92);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a1 + 92) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "confidence");
  v5 = *(a1 + 92);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "confidenceOfGeoLocation", *(a1 + 16));
  v5 = *(a1 + 92);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "departureDate", *(a1 + 24));
  v5 = *(a1 + 92);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "distanceToLoi", *(a1 + 32));
  v5 = *(a1 + 92);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "hashedLatLong");
  v5 = *(a1 + 92);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "horizontalAccuracy", *(a1 + 40));
  v5 = *(a1 + 92);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "latitude", *(a1 + 48));
  v5 = *(a1 + 92);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "longitude", *(a1 + 56));
  v5 = *(a1 + 92);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "type");
  v5 = *(a1 + 92);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  PB::TextFormatter::format(this, "uncertaintyOfGeoLocation", *(a1 + 64));
  if ((*(a1 + 92) & 0x100) != 0)
  {
LABEL_13:
    PB::TextFormatter::format(this, "withinDistance", *(a1 + 72));
  }

LABEL_14:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5800E4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_116;
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
              *(a1 + 92) |= 0x400u;
              v33 = *(this + 1);
              v2 = *(this + 2);
              v34 = *this;
              if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
              {
                v48 = 0;
                v49 = 0;
                v37 = 0;
                if (v2 <= v33)
                {
                  v2 = *(this + 1);
                }

                v50 = v2 - v33;
                v51 = (v34 + v33);
                v52 = v33 + 1;
                while (1)
                {
                  if (!v50)
                  {
                    LODWORD(v37) = 0;
                    *(this + 24) = 1;
                    goto LABEL_111;
                  }

                  v53 = v52;
                  v54 = *v51;
                  *(this + 1) = v53;
                  v37 |= (v54 & 0x7F) << v48;
                  if ((v54 & 0x80) == 0)
                  {
                    break;
                  }

                  v48 += 7;
                  --v50;
                  ++v51;
                  v52 = v53 + 1;
                  v14 = v49++ > 8;
                  if (v14)
                  {
                    LODWORD(v37) = 0;
                    goto LABEL_110;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v37) = 0;
                }

LABEL_110:
                v2 = v53;
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
                  v2 = v39;
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
                    LODWORD(v37) = 0;
                    break;
                  }
                }
              }

LABEL_111:
              *(a1 + 84) = v37;
              goto LABEL_112;
            case 0xB:
              *(a1 + 92) |= 8u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
LABEL_79:
                *(this + 24) = 1;
                goto LABEL_112;
              }

              *(a1 + 32) = *(*this + v2);
              goto LABEL_101;
            case 0xC:
              *(a1 + 92) |= 0x800u;
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

              *(a1 + 88) = v32;
              goto LABEL_112;
          }
        }

        else
        {
          switch(v22)
          {
            case 7:
              *(a1 + 92) |= 0x100u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 72) = *(*this + v2);
              goto LABEL_101;
            case 8:
              *(a1 + 92) |= 0x80u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 64) = *(*this + v2);
              goto LABEL_101;
            case 9:
              *(a1 + 92) |= 2u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_79;
              }

              *(a1 + 16) = *(*this + v2);
              goto LABEL_101;
          }
        }
      }

      else if (v22 > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 92) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 8) = *(*this + v2);
            goto LABEL_101;
          case 5:
            *(a1 + 92) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_101;
          case 6:
            *(a1 + 92) |= 0x200u;
            v23 = *(this + 1);
            v2 = *(this + 2);
            v24 = *this;
            if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
            {
              v41 = 0;
              v42 = 0;
              v27 = 0;
              if (v2 <= v23)
              {
                v2 = *(this + 1);
              }

              v43 = v2 - v23;
              v44 = (v24 + v23);
              v45 = v23 + 1;
              while (1)
              {
                if (!v43)
                {
                  LODWORD(v27) = 0;
                  *(this + 24) = 1;
                  goto LABEL_107;
                }

                v46 = v45;
                v47 = *v44;
                *(this + 1) = v46;
                v27 |= (v47 & 0x7F) << v41;
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
                  LODWORD(v27) = 0;
                  goto LABEL_106;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_106:
              v2 = v46;
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

LABEL_107:
            *(a1 + 80) = v27;
            goto LABEL_112;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 92) |= 0x40u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 56) = *(*this + v2);
            goto LABEL_101;
          case 2:
            *(a1 + 92) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_101;
          case 3:
            *(a1 + 92) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_79;
            }

            *(a1 + 24) = *(*this + v2);
LABEL_101:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_112;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v55 = 0;
        return v55 & 1;
      }

      v2 = *(this + 1);
LABEL_112:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_116:
  v55 = v4 ^ 1;
  return v55 & 1;
}

uint64_t sub_19B580720(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 92);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::write(this, *(result + 56));
    v4 = *(v3 + 92);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
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

  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 92);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 92);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 92);
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
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 92);
  if ((v4 & 0x200) == 0)
  {
LABEL_7:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 92);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 92);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 92);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 92) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

LABEL_23:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 92);
  if ((v4 & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_25:

  return PB::Writer::write(this);
}

void *sub_19B5808A8(void *result)
{
  *result = &unk_1F0E2EC10;
  result[4] = 0;
  result[24] = 0;
  return result;
}

void sub_19B5808D0(PB::Base *this)
{
  *this = &unk_1F0E2EC10;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B580954(PB::Base *a1)
{
  sub_19B5808D0(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B58098C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 192);
  if ((v5 & 0x40) != 0)
  {
    PB::TextFormatter::format(this, "alsLux");
    v5 = *(a1 + 192);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "caltype");
  v5 = *(a1 + 192);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  PB::TextFormatter::format(this, "confidence");
  v5 = *(a1 + 192);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  PB::TextFormatter::format(this, "drivingArmLikelihoodSum", *(a1 + 76));
  v5 = *(a1 + 192);
  if ((v5 & 0x400) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  PB::TextFormatter::format(this, "drivingStowedLikelihoodSum", *(a1 + 80));
  v5 = *(a1 + 192);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  PB::TextFormatter::format(this, "exitState");
  v5 = *(a1 + 192);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  PB::TextFormatter::format(this, "hidTimestamp", *(a1 + 8));
  v5 = *(a1 + 192);
  if ((v5 & 0x1000) == 0)
  {
LABEL_9:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  PB::TextFormatter::format(this, "isMoving");
  v5 = *(a1 + 192);
  if ((v5 & 0x2000) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  PB::TextFormatter::format(this, "isVehicular");
  v5 = *(a1 + 192);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  PB::TextFormatter::format(this, "machineFrequency", *(a1 + 96));
  v5 = *(a1 + 192);
  if ((v5 & 0x8000) == 0)
  {
LABEL_12:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  PB::TextFormatter::format(this, "motionType");
  v5 = *(a1 + 192);
  if ((v5 & 0x10000) == 0)
  {
LABEL_13:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  PB::TextFormatter::format(this, "mounted");
  v5 = *(a1 + 192);
  if ((v5 & 0x20000) == 0)
  {
LABEL_14:
    if ((v5 & 2) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  PB::TextFormatter::format(this, "mountedConfidence");
  v5 = *(a1 + 192);
  if ((v5 & 2) == 0)
  {
LABEL_15:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  PB::TextFormatter::format(this, "now");
  v5 = *(a1 + 192);
  if ((v5 & 0x40000) == 0)
  {
LABEL_16:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  PB::TextFormatter::format(this, "rawConfidence");
  v5 = *(a1 + 192);
  if ((v5 & 0x80000) == 0)
  {
LABEL_17:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  PB::TextFormatter::format(this, "rawIsVehicular");
  v5 = *(a1 + 192);
  if ((v5 & 0x100000) == 0)
  {
LABEL_18:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  PB::TextFormatter::format(this, "rawMotionType");
  v5 = *(a1 + 192);
  if ((v5 & 0x200000) == 0)
  {
LABEL_19:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  PB::TextFormatter::format(this, "rowStrokeAmplitude", *(a1 + 124));
  v5 = *(a1 + 192);
  if ((v5 & 0x400000) == 0)
  {
LABEL_20:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  PB::TextFormatter::format(this, "rowStrokeFrequency", *(a1 + 128));
  v5 = *(a1 + 192);
  if ((v5 & 0x800000) == 0)
  {
LABEL_21:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  PB::TextFormatter::format(this, "rowStrokePower", *(a1 + 132));
  v5 = *(a1 + 192);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_22:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  PB::TextFormatter::format(this, "seq");
  v5 = *(a1 + 192);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_23:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  PB::TextFormatter::format(this, "ssLikelihoodSum", *(a1 + 140));
  v5 = *(a1 + 192);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_24:
    if ((v5 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_69;
  }

LABEL_68:
  PB::TextFormatter::format(this, "standing");
  v5 = *(a1 + 192);
  if ((v5 & 4) == 0)
  {
LABEL_25:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

LABEL_69:
  PB::TextFormatter::format(this, "startTime");
  v5 = *(a1 + 192);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_26:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_71;
  }

LABEL_70:
  PB::TextFormatter::format(this, "turn");
  v5 = *(a1 + 192);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_27:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_72;
  }

LABEL_71:
  PB::TextFormatter::format(this, "typeYouth");
  v5 = *(a1 + 192);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_28:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

LABEL_72:
  PB::TextFormatter::format(this, "vectorMagnitude", *(a1 + 156));
  v5 = *(a1 + 192);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_29:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_74;
  }

LABEL_73:
  PB::TextFormatter::format(this, "vehicleExitState");
  v5 = *(a1 + 192);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_30:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_75;
  }

LABEL_74:
  PB::TextFormatter::format(this, "vehicleProbabilityLongTermMean0", *(a1 + 164));
  v5 = *(a1 + 192);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_31:
    if ((v5 & 0x200000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_76;
  }

LABEL_75:
  PB::TextFormatter::format(this, "vehicleProbabilityLongTermMean1", *(a1 + 168));
  v5 = *(a1 + 192);
  if ((v5 & 0x200000000) == 0)
  {
LABEL_32:
    if ((v5 & 0x400000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

LABEL_76:
  PB::TextFormatter::format(this, "vehicleProbabilityLongTermMean2", *(a1 + 172));
  v5 = *(a1 + 192);
  if ((v5 & 0x400000000) == 0)
  {
LABEL_33:
    if ((v5 & 0x800000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_77:
  PB::TextFormatter::format(this, "vehicleType");
  if ((*(a1 + 192) & 0x800000000) != 0)
  {
LABEL_34:
    PB::TextFormatter::format(this, "vehicularConfidence");
  }

LABEL_35:
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "vehicularFlags");
  }

  v7 = *(a1 + 192);
  if ((v7 & 8) != 0)
  {
    PB::TextFormatter::format(this, "wallStartTime", *(a1 + 40));
    v7 = *(a1 + 192);
    if ((v7 & 0x10) == 0)
    {
LABEL_39:
      if ((v7 & 0x1000000000) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_81;
    }
  }

  else if ((v7 & 0x10) == 0)
  {
    goto LABEL_39;
  }

  PB::TextFormatter::format(this, "workoutDetectionTime");
  v7 = *(a1 + 192);
  if ((v7 & 0x1000000000) == 0)
  {
LABEL_40:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_82;
  }

LABEL_81:
  PB::TextFormatter::format(this, "workoutDetectionType");
  v7 = *(a1 + 192);
  if ((v7 & 0x20) == 0)
  {
LABEL_41:
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_82:
  PB::TextFormatter::format(this, "workoutEscalationTime");
  if ((*(a1 + 192) & 0x2000000000) != 0)
  {
LABEL_42:
    PB::TextFormatter::format(this, "youthClassificationReason");
  }

LABEL_43:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B580EC8(uint64_t a1, PB::Reader *this)
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
            goto LABEL_548;
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

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 192) |= 0x8000uLL;
          v23 = *(this + 1);
          v22 = *(this + 2);
          v24 = *this;
          if (v23 <= 0xFFFFFFFFFFFFFFF5 && v23 + 10 <= v22)
          {
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v28 = (v24 + v23);
            v29 = v23 + 1;
            do
            {
              *(this + 1) = v29;
              v30 = *v28++;
              v27 |= (v30 & 0x7F) << v25;
              if ((v30 & 0x80) == 0)
              {
                goto LABEL_504;
              }

              v25 += 7;
              ++v29;
              v14 = v26++ > 8;
            }

            while (!v14);
LABEL_336:
            LODWORD(v27) = 0;
            goto LABEL_504;
          }

          v327 = 0;
          v328 = 0;
          v27 = 0;
          v17 = v22 >= v23;
          v329 = v22 - v23;
          if (!v17)
          {
            v329 = 0;
          }

          v330 = (v24 + v23);
          v331 = v23 + 1;
          while (2)
          {
            if (v329)
            {
              v332 = *v330;
              *(this + 1) = v331;
              v27 |= (v332 & 0x7F) << v327;
              if (v332 < 0)
              {
                v327 += 7;
                --v329;
                ++v330;
                ++v331;
                v14 = v328++ > 8;
                if (v14)
                {
                  goto LABEL_336;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }
            }

            else
            {
              LODWORD(v27) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_504:
          *(a1 + 100) = v27;
          goto LABEL_544;
        case 2u:
          *(a1 + 192) |= 0x100uLL;
          v138 = *(this + 1);
          v137 = *(this + 2);
          v139 = *this;
          if (v138 <= 0xFFFFFFFFFFFFFFF5 && v138 + 10 <= v137)
          {
            v140 = 0;
            v141 = 0;
            v142 = 0;
            v143 = (v139 + v138);
            v144 = v138 + 1;
            do
            {
              *(this + 1) = v144;
              v145 = *v143++;
              v142 |= (v145 & 0x7F) << v140;
              if ((v145 & 0x80) == 0)
              {
                goto LABEL_507;
              }

              v140 += 7;
              ++v144;
              v14 = v141++ > 8;
            }

            while (!v14);
LABEL_344:
            LODWORD(v142) = 0;
            goto LABEL_507;
          }

          v333 = 0;
          v334 = 0;
          v142 = 0;
          v17 = v137 >= v138;
          v335 = v137 - v138;
          if (!v17)
          {
            v335 = 0;
          }

          v336 = (v139 + v138);
          v337 = v138 + 1;
          while (2)
          {
            if (v335)
            {
              v338 = *v336;
              *(this + 1) = v337;
              v142 |= (v338 & 0x7F) << v333;
              if (v338 < 0)
              {
                v333 += 7;
                --v335;
                ++v336;
                ++v337;
                v14 = v334++ > 8;
                if (v14)
                {
                  goto LABEL_344;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v142) = 0;
              }
            }

            else
            {
              LODWORD(v142) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_507:
          *(a1 + 72) = v142;
          goto LABEL_544;
        case 3u:
          *(a1 + 192) |= 0x10000uLL;
          v102 = *(this + 1);
          v101 = *(this + 2);
          v103 = *this;
          if (v102 <= 0xFFFFFFFFFFFFFFF5 && v102 + 10 <= v101)
          {
            v104 = 0;
            v105 = 0;
            v106 = 0;
            v107 = (v103 + v102);
            v108 = v102 + 1;
            do
            {
              *(this + 1) = v108;
              v109 = *v107++;
              v106 |= (v109 & 0x7F) << v104;
              if ((v109 & 0x80) == 0)
              {
                goto LABEL_492;
              }

              v104 += 7;
              ++v108;
              v14 = v105++ > 8;
            }

            while (!v14);
LABEL_304:
            LODWORD(v106) = 0;
            goto LABEL_492;
          }

          v303 = 0;
          v304 = 0;
          v106 = 0;
          v17 = v101 >= v102;
          v305 = v101 - v102;
          if (!v17)
          {
            v305 = 0;
          }

          v306 = (v103 + v102);
          v307 = v102 + 1;
          while (2)
          {
            if (v305)
            {
              v308 = *v306;
              *(this + 1) = v307;
              v106 |= (v308 & 0x7F) << v303;
              if (v308 < 0)
              {
                v303 += 7;
                --v305;
                ++v306;
                ++v307;
                v14 = v304++ > 8;
                if (v14)
                {
                  goto LABEL_304;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v106) = 0;
              }
            }

            else
            {
              LODWORD(v106) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_492:
          *(a1 + 104) = v106;
          goto LABEL_544;
        case 4u:
          *(a1 + 192) |= 0x20000uLL;
          v120 = *(this + 1);
          v119 = *(this + 2);
          v121 = *this;
          if (v120 <= 0xFFFFFFFFFFFFFFF5 && v120 + 10 <= v119)
          {
            v122 = 0;
            v123 = 0;
            v124 = 0;
            v125 = (v121 + v120);
            v126 = v120 + 1;
            do
            {
              *(this + 1) = v126;
              v127 = *v125++;
              v124 |= (v127 & 0x7F) << v122;
              if ((v127 & 0x80) == 0)
              {
                goto LABEL_498;
              }

              v122 += 7;
              ++v126;
              v14 = v123++ > 8;
            }

            while (!v14);
LABEL_320:
            LODWORD(v124) = 0;
            goto LABEL_498;
          }

          v315 = 0;
          v316 = 0;
          v124 = 0;
          v17 = v119 >= v120;
          v317 = v119 - v120;
          if (!v17)
          {
            v317 = 0;
          }

          v318 = (v121 + v120);
          v319 = v120 + 1;
          while (2)
          {
            if (v317)
            {
              v320 = *v318;
              *(this + 1) = v319;
              v124 |= (v320 & 0x7F) << v315;
              if (v320 < 0)
              {
                v315 += 7;
                --v317;
                ++v318;
                ++v319;
                v14 = v316++ > 8;
                if (v14)
                {
                  goto LABEL_320;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v124) = 0;
              }
            }

            else
            {
              LODWORD(v124) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_498:
          *(a1 + 108) = v124;
          goto LABEL_544;
        case 5u:
          *(a1 + 192) |= 0x800uLL;
          v65 = *(this + 1);
          v64 = *(this + 2);
          v66 = *this;
          if (v65 <= 0xFFFFFFFFFFFFFFF5 && v65 + 10 <= v64)
          {
            v67 = 0;
            v68 = 0;
            v69 = 0;
            v70 = (v66 + v65);
            v71 = v65 + 1;
            do
            {
              *(this + 1) = v71;
              v72 = *v70++;
              v69 |= (v72 & 0x7F) << v67;
              if ((v72 & 0x80) == 0)
              {
                goto LABEL_480;
              }

              v67 += 7;
              ++v71;
              v14 = v68++ > 8;
            }

            while (!v14);
LABEL_272:
            LODWORD(v69) = 0;
            goto LABEL_480;
          }

          v279 = 0;
          v280 = 0;
          v69 = 0;
          v17 = v64 >= v65;
          v281 = v64 - v65;
          if (!v17)
          {
            v281 = 0;
          }

          v282 = (v66 + v65);
          v283 = v65 + 1;
          while (2)
          {
            if (v281)
            {
              v284 = *v282;
              *(this + 1) = v283;
              v69 |= (v284 & 0x7F) << v279;
              if (v284 < 0)
              {
                v279 += 7;
                --v281;
                ++v282;
                ++v283;
                v14 = v280++ > 8;
                if (v14)
                {
                  goto LABEL_272;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v69) = 0;
              }
            }

            else
            {
              LODWORD(v69) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_480:
          *(a1 + 84) = v69;
          goto LABEL_544;
        case 6u:
          *(a1 + 192) |= 0x8000000uLL;
          v166 = *(this + 1);
          v165 = *(this + 2);
          v167 = *this;
          if (v166 <= 0xFFFFFFFFFFFFFFF5 && v166 + 10 <= v165)
          {
            v168 = 0;
            v169 = 0;
            v170 = 0;
            v171 = (v167 + v166);
            v172 = v166 + 1;
            do
            {
              *(this + 1) = v172;
              v173 = *v171++;
              v170 |= (v173 & 0x7F) << v168;
              if ((v173 & 0x80) == 0)
              {
                goto LABEL_516;
              }

              v168 += 7;
              ++v172;
              v14 = v169++ > 8;
            }

            while (!v14);
LABEL_368:
            LODWORD(v170) = 0;
            goto LABEL_516;
          }

          v351 = 0;
          v352 = 0;
          v170 = 0;
          v17 = v165 >= v166;
          v353 = v165 - v166;
          if (!v17)
          {
            v353 = 0;
          }

          v354 = (v167 + v166);
          v355 = v166 + 1;
          while (2)
          {
            if (v353)
            {
              v356 = *v354;
              *(this + 1) = v355;
              v170 |= (v356 & 0x7F) << v351;
              if (v356 < 0)
              {
                v351 += 7;
                --v353;
                ++v354;
                ++v355;
                v14 = v352++ > 8;
                if (v14)
                {
                  goto LABEL_368;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v170) = 0;
              }
            }

            else
            {
              LODWORD(v170) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_516:
          *(a1 + 148) = v170;
          goto LABEL_544;
        case 7u:
          *(a1 + 192) |= 0x2000uLL;
          v193 = *(this + 1);
          v192 = *(this + 2);
          v194 = *this;
          if (v193 <= 0xFFFFFFFFFFFFFFF5 && v193 + 10 <= v192)
          {
            v195 = 0;
            v196 = 0;
            v197 = 0;
            v198 = (v194 + v193);
            v199 = v193 + 1;
            do
            {
              *(this + 1) = v199;
              v200 = *v198++;
              v197 |= (v200 & 0x7F) << v195;
              if ((v200 & 0x80) == 0)
              {
                goto LABEL_525;
              }

              v195 += 7;
              ++v199;
              v14 = v196++ > 8;
            }

            while (!v14);
LABEL_392:
            LODWORD(v197) = 0;
            goto LABEL_525;
          }

          v369 = 0;
          v370 = 0;
          v197 = 0;
          v17 = v192 >= v193;
          v371 = v192 - v193;
          if (!v17)
          {
            v371 = 0;
          }

          v372 = (v194 + v193);
          v373 = v193 + 1;
          while (2)
          {
            if (v371)
            {
              v374 = *v372;
              *(this + 1) = v373;
              v197 |= (v374 & 0x7F) << v369;
              if (v374 < 0)
              {
                v369 += 7;
                --v371;
                ++v372;
                ++v373;
                v14 = v370++ > 8;
                if (v14)
                {
                  goto LABEL_392;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v197) = 0;
              }
            }

            else
            {
              LODWORD(v197) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_525:
          *(a1 + 92) = v197;
          goto LABEL_544;
        case 8u:
          *(a1 + 192) |= 0x1000uLL;
          v129 = *(this + 1);
          v128 = *(this + 2);
          v130 = *this;
          if (v129 <= 0xFFFFFFFFFFFFFFF5 && v129 + 10 <= v128)
          {
            v131 = 0;
            v132 = 0;
            v133 = 0;
            v134 = (v130 + v129);
            v135 = v129 + 1;
            do
            {
              *(this + 1) = v135;
              v136 = *v134++;
              v133 |= (v136 & 0x7F) << v131;
              if ((v136 & 0x80) == 0)
              {
                goto LABEL_501;
              }

              v131 += 7;
              ++v135;
              v14 = v132++ > 8;
            }

            while (!v14);
LABEL_328:
            LODWORD(v133) = 0;
            goto LABEL_501;
          }

          v321 = 0;
          v322 = 0;
          v133 = 0;
          v17 = v128 >= v129;
          v323 = v128 - v129;
          if (!v17)
          {
            v323 = 0;
          }

          v324 = (v130 + v129);
          v325 = v129 + 1;
          while (2)
          {
            if (v323)
            {
              v326 = *v324;
              *(this + 1) = v325;
              v133 |= (v326 & 0x7F) << v321;
              if (v326 < 0)
              {
                v321 += 7;
                --v323;
                ++v324;
                ++v325;
                v14 = v322++ > 8;
                if (v14)
                {
                  goto LABEL_328;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v133) = 0;
              }
            }

            else
            {
              LODWORD(v133) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_501:
          *(a1 + 88) = v133;
          goto LABEL_544;
        case 9u:
          *(a1 + 192) |= 0x1000000uLL;
          v205 = *(this + 1);
          v204 = *(this + 2);
          v206 = *this;
          if (v205 <= 0xFFFFFFFFFFFFFFF5 && v205 + 10 <= v204)
          {
            v207 = 0;
            v208 = 0;
            v209 = 0;
            v210 = (v206 + v205);
            v211 = v205 + 1;
            do
            {
              *(this + 1) = v211;
              v212 = *v210++;
              v209 |= (v212 & 0x7F) << v207;
              if ((v212 & 0x80) == 0)
              {
                goto LABEL_528;
              }

              v207 += 7;
              ++v211;
              v14 = v208++ > 8;
            }

            while (!v14);
LABEL_400:
            LODWORD(v209) = 0;
            goto LABEL_528;
          }

          v375 = 0;
          v376 = 0;
          v209 = 0;
          v17 = v204 >= v205;
          v377 = v204 - v205;
          if (!v17)
          {
            v377 = 0;
          }

          v378 = (v206 + v205);
          v379 = v205 + 1;
          while (2)
          {
            if (v377)
            {
              v380 = *v378;
              *(this + 1) = v379;
              v209 |= (v380 & 0x7F) << v375;
              if (v380 < 0)
              {
                v375 += 7;
                --v377;
                ++v378;
                ++v379;
                v14 = v376++ > 8;
                if (v14)
                {
                  goto LABEL_400;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v209) = 0;
              }
            }

            else
            {
              LODWORD(v209) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_528:
          *(a1 + 136) = v209;
          goto LABEL_544;
        case 0xAu:
          *(a1 + 192) |= 8uLL;
          v82 = *(this + 1);
          if (v82 > 0xFFFFFFFFFFFFFFF7 || v82 + 8 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 40) = *(*this + v82);
          goto LABEL_186;
        case 0xBu:
          *(a1 + 192) |= 1uLL;
          v202 = *(this + 1);
          if (v202 > 0xFFFFFFFFFFFFFFF7 || v202 + 8 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 8) = *(*this + v202);
LABEL_186:
          v203 = *(this + 1) + 8;
          goto LABEL_443;
        case 0xCu:
          *(a1 + 192) |= 4uLL;
          v56 = *(this + 1);
          v55 = *(this + 2);
          v57 = *this;
          if (v56 <= 0xFFFFFFFFFFFFFFF5 && v56 + 10 <= v55)
          {
            v58 = 0;
            v59 = 0;
            v60 = 0;
            v61 = (v57 + v56);
            v62 = v56 + 1;
            do
            {
              *(this + 1) = v62;
              v63 = *v61++;
              v60 |= (v63 & 0x7F) << v58;
              if ((v63 & 0x80) == 0)
              {
                goto LABEL_477;
              }

              v58 += 7;
              ++v62;
              v14 = v59++ > 8;
            }

            while (!v14);
LABEL_264:
            v60 = 0;
            goto LABEL_477;
          }

          v273 = 0;
          v274 = 0;
          v60 = 0;
          v17 = v55 >= v56;
          v275 = v55 - v56;
          if (!v17)
          {
            v275 = 0;
          }

          v276 = (v57 + v56);
          v277 = v56 + 1;
          while (2)
          {
            if (v275)
            {
              v278 = *v276;
              *(this + 1) = v277;
              v60 |= (v278 & 0x7F) << v273;
              if (v278 < 0)
              {
                v273 += 7;
                --v275;
                ++v276;
                ++v277;
                v14 = v274++ > 8;
                if (v14)
                {
                  goto LABEL_264;
                }

                continue;
              }

              if (*(this + 24))
              {
                v60 = 0;
              }
            }

            else
            {
              v60 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_477:
          *(a1 + 24) = v60;
          goto LABEL_544;
        case 0xDu:
          *(a1 + 192) |= 2uLL;
          v74 = *(this + 1);
          v73 = *(this + 2);
          v75 = *this;
          if (v74 <= 0xFFFFFFFFFFFFFFF5 && v74 + 10 <= v73)
          {
            v76 = 0;
            v77 = 0;
            v78 = 0;
            v79 = (v75 + v74);
            v80 = v74 + 1;
            do
            {
              *(this + 1) = v80;
              v81 = *v79++;
              v78 |= (v81 & 0x7F) << v76;
              if ((v81 & 0x80) == 0)
              {
                goto LABEL_483;
              }

              v76 += 7;
              ++v80;
              v14 = v77++ > 8;
            }

            while (!v14);
LABEL_280:
            v78 = 0;
            goto LABEL_483;
          }

          v285 = 0;
          v286 = 0;
          v78 = 0;
          v17 = v73 >= v74;
          v287 = v73 - v74;
          if (!v17)
          {
            v287 = 0;
          }

          v288 = (v75 + v74);
          v289 = v74 + 1;
          while (2)
          {
            if (v287)
            {
              v290 = *v288;
              *(this + 1) = v289;
              v78 |= (v290 & 0x7F) << v285;
              if (v290 < 0)
              {
                v285 += 7;
                --v287;
                ++v288;
                ++v289;
                v14 = v286++ > 8;
                if (v14)
                {
                  goto LABEL_280;
                }

                continue;
              }

              if (*(this + 24))
              {
                v78 = 0;
              }
            }

            else
            {
              v78 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_483:
          *(a1 + 16) = v78;
          goto LABEL_544;
        case 0xEu:
          *(a1 + 192) |= 0x80uLL;
          v184 = *(this + 1);
          v183 = *(this + 2);
          v185 = *this;
          if (v184 <= 0xFFFFFFFFFFFFFFF5 && v184 + 10 <= v183)
          {
            v186 = 0;
            v187 = 0;
            v188 = 0;
            v189 = (v185 + v184);
            v190 = v184 + 1;
            do
            {
              *(this + 1) = v190;
              v191 = *v189++;
              v188 |= (v191 & 0x7F) << v186;
              if ((v191 & 0x80) == 0)
              {
                goto LABEL_522;
              }

              v186 += 7;
              ++v190;
              v14 = v187++ > 8;
            }

            while (!v14);
LABEL_384:
            LODWORD(v188) = 0;
            goto LABEL_522;
          }

          v363 = 0;
          v364 = 0;
          v188 = 0;
          v17 = v183 >= v184;
          v365 = v183 - v184;
          if (!v17)
          {
            v365 = 0;
          }

          v366 = (v185 + v184);
          v367 = v184 + 1;
          while (2)
          {
            if (v365)
            {
              v368 = *v366;
              *(this + 1) = v367;
              v188 |= (v368 & 0x7F) << v363;
              if (v368 < 0)
              {
                v363 += 7;
                --v365;
                ++v366;
                ++v367;
                v14 = v364++ > 8;
                if (v14)
                {
                  goto LABEL_384;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v188) = 0;
              }
            }

            else
            {
              LODWORD(v188) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_522:
          *(a1 + 68) = v188;
          goto LABEL_544;
        case 0xFu:
          *(a1 + 192) |= 0x20000000uLL;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 156) = *(*this + v45);
          goto LABEL_442;
        case 0x10u:
          *(a1 + 192) |= 0x4000000uLL;
          v111 = *(this + 1);
          v110 = *(this + 2);
          v112 = *this;
          if (v111 <= 0xFFFFFFFFFFFFFFF5 && v111 + 10 <= v110)
          {
            v113 = 0;
            v114 = 0;
            v115 = 0;
            v116 = (v112 + v111);
            v117 = v111 + 1;
            do
            {
              *(this + 1) = v117;
              v118 = *v116++;
              v115 |= (v118 & 0x7F) << v113;
              if ((v118 & 0x80) == 0)
              {
                goto LABEL_495;
              }

              v113 += 7;
              ++v117;
              v14 = v114++ > 8;
            }

            while (!v14);
LABEL_312:
            LODWORD(v115) = 0;
            goto LABEL_495;
          }

          v309 = 0;
          v310 = 0;
          v115 = 0;
          v17 = v110 >= v111;
          v311 = v110 - v111;
          if (!v17)
          {
            v311 = 0;
          }

          v312 = (v112 + v111);
          v313 = v111 + 1;
          while (2)
          {
            if (v311)
            {
              v314 = *v312;
              *(this + 1) = v313;
              v115 |= (v314 & 0x7F) << v309;
              if (v314 < 0)
              {
                v309 += 7;
                --v311;
                ++v312;
                ++v313;
                v14 = v310++ > 8;
                if (v14)
                {
                  goto LABEL_312;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v115) = 0;
              }
            }

            else
            {
              LODWORD(v115) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_495:
          *(a1 + 144) = v115;
          goto LABEL_544;
        case 0x11u:
          *(a1 + 192) |= 0x4000uLL;
          v44 = *(this + 1);
          if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 96) = *(*this + v44);
          goto LABEL_442;
        case 0x12u:
          *(a1 + 192) |= 0x400000uLL;
          v155 = *(this + 1);
          if (v155 > 0xFFFFFFFFFFFFFFFBLL || v155 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 128) = *(*this + v155);
          goto LABEL_442;
        case 0x13u:
          *(a1 + 192) |= 0x200000uLL;
          v201 = *(this + 1);
          if (v201 > 0xFFFFFFFFFFFFFFFBLL || v201 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 124) = *(*this + v201);
          goto LABEL_442;
        case 0x14u:
          *(a1 + 192) |= 0x800000uLL;
          v240 = *(this + 1);
          if (v240 > 0xFFFFFFFFFFFFFFFBLL || v240 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 132) = *(*this + v240);
          goto LABEL_442;
        case 0x15u:
          *(a1 + 192) |= 0x10uLL;
          v157 = *(this + 1);
          v156 = *(this + 2);
          v158 = *this;
          if (v157 <= 0xFFFFFFFFFFFFFFF5 && v157 + 10 <= v156)
          {
            v159 = 0;
            v160 = 0;
            v161 = 0;
            v162 = (v158 + v157);
            v163 = v157 + 1;
            do
            {
              *(this + 1) = v163;
              v164 = *v162++;
              v161 |= (v164 & 0x7F) << v159;
              if ((v164 & 0x80) == 0)
              {
                goto LABEL_513;
              }

              v159 += 7;
              ++v163;
              v14 = v160++ > 8;
            }

            while (!v14);
LABEL_360:
            v161 = 0;
            goto LABEL_513;
          }

          v345 = 0;
          v346 = 0;
          v161 = 0;
          v17 = v156 >= v157;
          v347 = v156 - v157;
          if (!v17)
          {
            v347 = 0;
          }

          v348 = (v158 + v157);
          v349 = v157 + 1;
          while (2)
          {
            if (v347)
            {
              v350 = *v348;
              *(this + 1) = v349;
              v161 |= (v350 & 0x7F) << v345;
              if (v350 < 0)
              {
                v345 += 7;
                --v347;
                ++v348;
                ++v349;
                v14 = v346++ > 8;
                if (v14)
                {
                  goto LABEL_360;
                }

                continue;
              }

              if (*(this + 24))
              {
                v161 = 0;
              }
            }

            else
            {
              v161 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_513:
          *(a1 + 48) = v161;
          goto LABEL_544;
        case 0x16u:
          *(a1 + 192) |= 0x800000000uLL;
          v175 = *(this + 1);
          v174 = *(this + 2);
          v176 = *this;
          if (v175 <= 0xFFFFFFFFFFFFFFF5 && v175 + 10 <= v174)
          {
            v177 = 0;
            v178 = 0;
            v179 = 0;
            v180 = (v176 + v175);
            v181 = v175 + 1;
            do
            {
              *(this + 1) = v181;
              v182 = *v180++;
              v179 |= (v182 & 0x7F) << v177;
              if ((v182 & 0x80) == 0)
              {
                goto LABEL_519;
              }

              v177 += 7;
              ++v181;
              v14 = v178++ > 8;
            }

            while (!v14);
LABEL_376:
            LODWORD(v179) = 0;
            goto LABEL_519;
          }

          v357 = 0;
          v358 = 0;
          v179 = 0;
          v17 = v174 >= v175;
          v359 = v174 - v175;
          if (!v17)
          {
            v359 = 0;
          }

          v360 = (v176 + v175);
          v361 = v175 + 1;
          while (2)
          {
            if (v359)
            {
              v362 = *v360;
              *(this + 1) = v361;
              v179 |= (v362 & 0x7F) << v357;
              if (v362 < 0)
              {
                v357 += 7;
                --v359;
                ++v360;
                ++v361;
                v14 = v358++ > 8;
                if (v14)
                {
                  goto LABEL_376;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v179) = 0;
              }
            }

            else
            {
              LODWORD(v179) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_519:
          *(a1 + 180) = v179;
          goto LABEL_544;
        case 0x17u:
          *(a1 + 192) |= 0x40000000uLL;
          v232 = *(this + 1);
          v231 = *(this + 2);
          v233 = *this;
          if (v232 <= 0xFFFFFFFFFFFFFFF5 && v232 + 10 <= v231)
          {
            v234 = 0;
            v235 = 0;
            v236 = 0;
            v237 = (v233 + v232);
            v238 = v232 + 1;
            do
            {
              *(this + 1) = v238;
              v239 = *v237++;
              v236 |= (v239 & 0x7F) << v234;
              if ((v239 & 0x80) == 0)
              {
                goto LABEL_537;
              }

              v234 += 7;
              ++v238;
              v14 = v235++ > 8;
            }

            while (!v14);
LABEL_424:
            LODWORD(v236) = 0;
            goto LABEL_537;
          }

          v393 = 0;
          v394 = 0;
          v236 = 0;
          v17 = v231 >= v232;
          v395 = v231 - v232;
          if (!v17)
          {
            v395 = 0;
          }

          v396 = (v233 + v232);
          v397 = v232 + 1;
          while (2)
          {
            if (v395)
            {
              v398 = *v396;
              *(this + 1) = v397;
              v236 |= (v398 & 0x7F) << v393;
              if (v398 < 0)
              {
                v393 += 7;
                --v395;
                ++v396;
                ++v397;
                v14 = v394++ > 8;
                if (v14)
                {
                  goto LABEL_424;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v236) = 0;
              }
            }

            else
            {
              LODWORD(v236) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_537:
          *(a1 + 160) = v236;
          goto LABEL_544;
        case 0x18u:
          *(a1 + 192) |= 0x100000uLL;
          v242 = *(this + 1);
          v241 = *(this + 2);
          v243 = *this;
          if (v242 <= 0xFFFFFFFFFFFFFFF5 && v242 + 10 <= v241)
          {
            v244 = 0;
            v245 = 0;
            v246 = 0;
            v247 = (v243 + v242);
            v248 = v242 + 1;
            do
            {
              *(this + 1) = v248;
              v249 = *v247++;
              v246 |= (v249 & 0x7F) << v244;
              if ((v249 & 0x80) == 0)
              {
                goto LABEL_540;
              }

              v244 += 7;
              ++v248;
              v14 = v245++ > 8;
            }

            while (!v14);
LABEL_432:
            LODWORD(v246) = 0;
            goto LABEL_540;
          }

          v399 = 0;
          v400 = 0;
          v246 = 0;
          v17 = v241 >= v242;
          v401 = v241 - v242;
          if (!v17)
          {
            v401 = 0;
          }

          v402 = (v243 + v242);
          v403 = v242 + 1;
          while (2)
          {
            if (v401)
            {
              v404 = *v402;
              *(this + 1) = v403;
              v246 |= (v404 & 0x7F) << v399;
              if (v404 < 0)
              {
                v399 += 7;
                --v401;
                ++v402;
                ++v403;
                v14 = v400++ > 8;
                if (v14)
                {
                  goto LABEL_432;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v246) = 0;
              }
            }

            else
            {
              LODWORD(v246) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_540:
          *(a1 + 120) = v246;
          goto LABEL_544;
        case 0x19u:
          *(a1 + 192) |= 0x80000uLL;
          v93 = *(this + 1);
          v92 = *(this + 2);
          v94 = *this;
          if (v93 <= 0xFFFFFFFFFFFFFFF5 && v93 + 10 <= v92)
          {
            v95 = 0;
            v96 = 0;
            v97 = 0;
            v98 = (v94 + v93);
            v99 = v93 + 1;
            do
            {
              *(this + 1) = v99;
              v100 = *v98++;
              v97 |= (v100 & 0x7F) << v95;
              if ((v100 & 0x80) == 0)
              {
                goto LABEL_489;
              }

              v95 += 7;
              ++v99;
              v14 = v96++ > 8;
            }

            while (!v14);
LABEL_296:
            LODWORD(v97) = 0;
            goto LABEL_489;
          }

          v297 = 0;
          v298 = 0;
          v97 = 0;
          v17 = v92 >= v93;
          v299 = v92 - v93;
          if (!v17)
          {
            v299 = 0;
          }

          v300 = (v94 + v93);
          v301 = v93 + 1;
          while (2)
          {
            if (v299)
            {
              v302 = *v300;
              *(this + 1) = v301;
              v97 |= (v302 & 0x7F) << v297;
              if (v302 < 0)
              {
                v297 += 7;
                --v299;
                ++v300;
                ++v301;
                v14 = v298++ > 8;
                if (v14)
                {
                  goto LABEL_296;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v97) = 0;
              }
            }

            else
            {
              LODWORD(v97) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_489:
          *(a1 + 116) = v97;
          goto LABEL_544;
        case 0x1Au:
          *(a1 + 192) |= 0x40000uLL;
          v84 = *(this + 1);
          v83 = *(this + 2);
          v85 = *this;
          if (v84 <= 0xFFFFFFFFFFFFFFF5 && v84 + 10 <= v83)
          {
            v86 = 0;
            v87 = 0;
            v88 = 0;
            v89 = (v85 + v84);
            v90 = v84 + 1;
            do
            {
              *(this + 1) = v90;
              v91 = *v89++;
              v88 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                goto LABEL_486;
              }

              v86 += 7;
              ++v90;
              v14 = v87++ > 8;
            }

            while (!v14);
LABEL_288:
            LODWORD(v88) = 0;
            goto LABEL_486;
          }

          v291 = 0;
          v292 = 0;
          v88 = 0;
          v17 = v83 >= v84;
          v293 = v83 - v84;
          if (!v17)
          {
            v293 = 0;
          }

          v294 = (v85 + v84);
          v295 = v84 + 1;
          while (2)
          {
            if (v293)
            {
              v296 = *v294;
              *(this + 1) = v295;
              v88 |= (v296 & 0x7F) << v291;
              if (v296 < 0)
              {
                v291 += 7;
                --v293;
                ++v294;
                ++v295;
                v14 = v292++ > 8;
                if (v14)
                {
                  goto LABEL_288;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v88) = 0;
              }
            }

            else
            {
              LODWORD(v88) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_486:
          *(a1 + 112) = v88;
          goto LABEL_544;
        case 0x1Bu:
          operator new();
        case 0x1Cu:
          *(a1 + 192) |= 0x400uLL;
          v34 = *(this + 1);
          if (v34 > 0xFFFFFFFFFFFFFFFBLL || v34 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 80) = *(*this + v34);
          goto LABEL_442;
        case 0x1Du:
          *(a1 + 192) |= 0x200uLL;
          v250 = *(this + 1);
          if (v250 > 0xFFFFFFFFFFFFFFFBLL || v250 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 76) = *(*this + v250);
          goto LABEL_442;
        case 0x1Eu:
          *(a1 + 192) |= 0x2000000uLL;
          v251 = *(this + 1);
          if (v251 > 0xFFFFFFFFFFFFFFFBLL || v251 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 140) = *(*this + v251);
          goto LABEL_442;
        case 0x1Fu:
          *(a1 + 192) |= 0x1000000000uLL;
          v214 = *(this + 1);
          v213 = *(this + 2);
          v215 = *this;
          if (v214 <= 0xFFFFFFFFFFFFFFF5 && v214 + 10 <= v213)
          {
            v216 = 0;
            v217 = 0;
            v218 = 0;
            v219 = (v215 + v214);
            v220 = v214 + 1;
            do
            {
              *(this + 1) = v220;
              v221 = *v219++;
              v218 |= (v221 & 0x7F) << v216;
              if ((v221 & 0x80) == 0)
              {
                goto LABEL_531;
              }

              v216 += 7;
              ++v220;
              v14 = v217++ > 8;
            }

            while (!v14);
LABEL_408:
            LODWORD(v218) = 0;
            goto LABEL_531;
          }

          v381 = 0;
          v382 = 0;
          v218 = 0;
          v17 = v213 >= v214;
          v383 = v213 - v214;
          if (!v17)
          {
            v383 = 0;
          }

          v384 = (v215 + v214);
          v385 = v214 + 1;
          while (2)
          {
            if (v383)
            {
              v386 = *v384;
              *(this + 1) = v385;
              v218 |= (v386 & 0x7F) << v381;
              if (v386 < 0)
              {
                v381 += 7;
                --v383;
                ++v384;
                ++v385;
                v14 = v382++ > 8;
                if (v14)
                {
                  goto LABEL_408;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v218) = 0;
              }
            }

            else
            {
              LODWORD(v218) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_531:
          *(a1 + 184) = v218;
          goto LABEL_544;
        case 0x20u:
          *(a1 + 192) |= 0x20uLL;
          v147 = *(this + 1);
          v146 = *(this + 2);
          v148 = *this;
          if (v147 <= 0xFFFFFFFFFFFFFFF5 && v147 + 10 <= v146)
          {
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = (v148 + v147);
            v153 = v147 + 1;
            do
            {
              *(this + 1) = v153;
              v154 = *v152++;
              v151 |= (v154 & 0x7F) << v149;
              if ((v154 & 0x80) == 0)
              {
                goto LABEL_510;
              }

              v149 += 7;
              ++v153;
              v14 = v150++ > 8;
            }

            while (!v14);
LABEL_352:
            v151 = 0;
            goto LABEL_510;
          }

          v339 = 0;
          v340 = 0;
          v151 = 0;
          v17 = v146 >= v147;
          v341 = v146 - v147;
          if (!v17)
          {
            v341 = 0;
          }

          v342 = (v148 + v147);
          v343 = v147 + 1;
          while (2)
          {
            if (v341)
            {
              v344 = *v342;
              *(this + 1) = v343;
              v151 |= (v344 & 0x7F) << v339;
              if (v344 < 0)
              {
                v339 += 7;
                --v341;
                ++v342;
                ++v343;
                v14 = v340++ > 8;
                if (v14)
                {
                  goto LABEL_352;
                }

                continue;
              }

              if (*(this + 24))
              {
                v151 = 0;
              }
            }

            else
            {
              v151 = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_510:
          *(a1 + 56) = v151;
          goto LABEL_544;
        case 0x21u:
          *(a1 + 192) |= 0x10000000uLL;
          v223 = *(this + 1);
          v222 = *(this + 2);
          v224 = *this;
          if (v223 <= 0xFFFFFFFFFFFFFFF5 && v223 + 10 <= v222)
          {
            v225 = 0;
            v226 = 0;
            v227 = 0;
            v228 = (v224 + v223);
            v229 = v223 + 1;
            do
            {
              *(this + 1) = v229;
              v230 = *v228++;
              v227 |= (v230 & 0x7F) << v225;
              if ((v230 & 0x80) == 0)
              {
                goto LABEL_534;
              }

              v225 += 7;
              ++v229;
              v14 = v226++ > 8;
            }

            while (!v14);
LABEL_416:
            LODWORD(v227) = 0;
            goto LABEL_534;
          }

          v387 = 0;
          v388 = 0;
          v227 = 0;
          v17 = v222 >= v223;
          v389 = v222 - v223;
          if (!v17)
          {
            v389 = 0;
          }

          v390 = (v224 + v223);
          v391 = v223 + 1;
          while (2)
          {
            if (v389)
            {
              v392 = *v390;
              *(this + 1) = v391;
              v227 |= (v392 & 0x7F) << v387;
              if (v392 < 0)
              {
                v387 += 7;
                --v389;
                ++v390;
                ++v391;
                v14 = v388++ > 8;
                if (v14)
                {
                  goto LABEL_416;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v227) = 0;
              }
            }

            else
            {
              LODWORD(v227) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_534:
          *(a1 + 152) = v227;
          goto LABEL_544;
        case 0x22u:
          *(a1 + 192) |= 0x2000000000uLL;
          v47 = *(this + 1);
          v46 = *(this + 2);
          v48 = *this;
          if (v47 <= 0xFFFFFFFFFFFFFFF5 && v47 + 10 <= v46)
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v52 = (v48 + v47);
            v53 = v47 + 1;
            do
            {
              *(this + 1) = v53;
              v54 = *v52++;
              v51 |= (v54 & 0x7F) << v49;
              if ((v54 & 0x80) == 0)
              {
                goto LABEL_474;
              }

              v49 += 7;
              ++v53;
              v14 = v50++ > 8;
            }

            while (!v14);
LABEL_256:
            LODWORD(v51) = 0;
            goto LABEL_474;
          }

          v267 = 0;
          v268 = 0;
          v51 = 0;
          v17 = v46 >= v47;
          v269 = v46 - v47;
          if (!v17)
          {
            v269 = 0;
          }

          v270 = (v48 + v47);
          v271 = v47 + 1;
          while (2)
          {
            if (v269)
            {
              v272 = *v270;
              *(this + 1) = v271;
              v51 |= (v272 & 0x7F) << v267;
              if (v272 < 0)
              {
                v267 += 7;
                --v269;
                ++v270;
                ++v271;
                v14 = v268++ > 8;
                if (v14)
                {
                  goto LABEL_256;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v51) = 0;
              }
            }

            else
            {
              LODWORD(v51) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_474:
          *(a1 + 188) = v51;
          goto LABEL_544;
        case 0x23u:
          *(a1 + 192) |= 0x40uLL;
          v36 = *(this + 1);
          v35 = *(this + 2);
          v37 = *this;
          if (v36 <= 0xFFFFFFFFFFFFFFF5 && v36 + 10 <= v35)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = (v37 + v36);
            v42 = v36 + 1;
            do
            {
              *(this + 1) = v42;
              v43 = *v41++;
              v40 |= (v43 & 0x7F) << v38;
              if ((v43 & 0x80) == 0)
              {
                goto LABEL_471;
              }

              v38 += 7;
              ++v42;
              v14 = v39++ > 8;
            }

            while (!v14);
LABEL_248:
            LODWORD(v40) = 0;
            goto LABEL_471;
          }

          v261 = 0;
          v262 = 0;
          v40 = 0;
          v17 = v35 >= v36;
          v263 = v35 - v36;
          if (!v17)
          {
            v263 = 0;
          }

          v264 = (v37 + v36);
          v265 = v36 + 1;
          while (2)
          {
            if (v263)
            {
              v266 = *v264;
              *(this + 1) = v265;
              v40 |= (v266 & 0x7F) << v261;
              if (v266 < 0)
              {
                v261 += 7;
                --v263;
                ++v264;
                ++v265;
                v14 = v262++ > 8;
                if (v14)
                {
                  goto LABEL_248;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v40) = 0;
              }
            }

            else
            {
              LODWORD(v40) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_471:
          *(a1 + 64) = v40;
          goto LABEL_544;
        case 0x24u:
          *(a1 + 192) |= 0x80000000uLL;
          v32 = *(this + 1);
          if (v32 > 0xFFFFFFFFFFFFFFFBLL || v32 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 164) = *(*this + v32);
          goto LABEL_442;
        case 0x25u:
          *(a1 + 192) |= 0x100000000uLL;
          v33 = *(this + 1);
          if (v33 > 0xFFFFFFFFFFFFFFFBLL || v33 + 4 > *(this + 2))
          {
            goto LABEL_232;
          }

          *(a1 + 168) = *(*this + v33);
          goto LABEL_442;
        case 0x26u:
          *(a1 + 192) |= 0x200000000uLL;
          v31 = *(this + 1);
          if (v31 > 0xFFFFFFFFFFFFFFFBLL || v31 + 4 > *(this + 2))
          {
LABEL_232:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 172) = *(*this + v31);
LABEL_442:
            v203 = *(this + 1) + 4;
LABEL_443:
            *(this + 1) = v203;
          }

          goto LABEL_544;
        case 0x27u:
          *(a1 + 192) |= 0x400000000uLL;
          v253 = *(this + 1);
          v252 = *(this + 2);
          v254 = *this;
          if (v253 <= 0xFFFFFFFFFFFFFFF5 && v253 + 10 <= v252)
          {
            v255 = 0;
            v256 = 0;
            v257 = 0;
            v258 = (v254 + v253);
            v259 = v253 + 1;
            do
            {
              *(this + 1) = v259;
              v260 = *v258++;
              v257 |= (v260 & 0x7F) << v255;
              if ((v260 & 0x80) == 0)
              {
                goto LABEL_543;
              }

              v255 += 7;
              ++v259;
              v14 = v256++ > 8;
            }

            while (!v14);
LABEL_440:
            LODWORD(v257) = 0;
            goto LABEL_543;
          }

          v405 = 0;
          v406 = 0;
          v257 = 0;
          v17 = v252 >= v253;
          v407 = v252 - v253;
          if (!v17)
          {
            v407 = 0;
          }

          v408 = (v254 + v253);
          v409 = v253 + 1;
          break;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_544;
          }

          v412 = 0;
          return v412 & 1;
      }

      while (1)
      {
        if (!v407)
        {
          LODWORD(v257) = 0;
          *(this + 24) = 1;
          goto LABEL_543;
        }

        v410 = *v408;
        *(this + 1) = v409;
        v257 |= (v410 & 0x7F) << v405;
        if ((v410 & 0x80) == 0)
        {
          break;
        }

        v405 += 7;
        --v407;
        ++v408;
        ++v409;
        v14 = v406++ > 8;
        if (v14)
        {
          goto LABEL_440;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v257) = 0;
      }

LABEL_543:
      *(a1 + 176) = v257;
LABEL_544:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3)
      {
        break;
      }
    }

    while ((*(this + 24) & 1) == 0);
  }

LABEL_548:
  v412 = v4 ^ 1;
  return v412 & 1;
}