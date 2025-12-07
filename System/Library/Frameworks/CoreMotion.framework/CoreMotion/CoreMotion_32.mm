uint64_t sub_19B57167C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 28) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 28) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B571708(uint64_t result)
{
  *result = &unk_1F0E2F5E8;
  *(result + 28) = 0;
  return result;
}

void sub_19B571730(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B571768(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "state");
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

  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  if ((*(a1 + 28) & 2) != 0)
  {
LABEL_4:
    PB::TextFormatter::format(this, "timestampGestureBegin", *(a1 + 16));
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57180C(uint64_t a1, PB::Reader *this)
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
        break;
      }

      if (v22 == 2)
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

      if (v22 == 1)
      {
        *(a1 + 28) |= 1u;
        v2 = *(this + 1);
        if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
        {
          goto LABEL_37;
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
LABEL_37:
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

uint64_t sub_19B571B18(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if ((v4 & 1) == 0)
  {
    if ((*(result + 28) & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 28) & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = PB::Writer::write(this, *(result + 8));
  v4 = *(v3 + 28);
  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_7:
  v5 = *(v3 + 16);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B571BA4(uint64_t result)
{
  *result = &unk_1F0E2E3C0;
  *(result + 64) = 0;
  return result;
}

void sub_19B571BCC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B571C04(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 64);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "classificationType");
    v5 = *(a1 + 64);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "intervalSleepBeginToSleepDetected", *(a1 + 28));
  v5 = *(a1 + 64);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "intervalSleepDetectedToGazeDetected", *(a1 + 32));
  v5 = *(a1 + 64);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "intervalSleepDetectedToWakeDetected", *(a1 + 36));
  v5 = *(a1 + 64);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "intervalWakeBeginToWakeDetected", *(a1 + 40));
  v5 = *(a1 + 64);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "intervalWakeDetectedToGazeDetected", *(a1 + 44));
  v5 = *(a1 + 64);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "intervalWakeDetectedToSleepDetected", *(a1 + 48));
  v5 = *(a1 + 64);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "shouldNotify");
  v5 = *(a1 + 64);
  if ((v5 & 0x1000) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "shouldNotifyStats");
  v5 = *(a1 + 64);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "sleepType");
  v5 = *(a1 + 64);
  if ((v5 & 0x400) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "state");
  v5 = *(a1 + 64);
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
  if ((*(a1 + 64) & 2) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "timestampGestureBegin", *(a1 + 16));
  }

LABEL_15:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B571DE8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_125;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 64) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_74;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_55;
        case 2u:
          *(a1 + 64) |= 0x800u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v49 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v48 = *(*this + v2++);
            *(this + 1) = v2;
            v49 = v48 != 0;
          }

          *(a1 + 60) = v49;
          goto LABEL_121;
        case 3u:
          *(a1 + 64) |= 0x400u;
          v40 = *(this + 1);
          v2 = *(this + 2);
          v41 = *this;
          if (v40 > 0xFFFFFFFFFFFFFFF5 || v40 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v44 = 0;
            if (v2 <= v40)
            {
              v2 = *(this + 1);
            }

            v66 = v2 - v40;
            v67 = (v41 + v40);
            v68 = v40 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v44) = 0;
                *(this + 24) = 1;
                goto LABEL_120;
              }

              v69 = v68;
              v70 = *v67;
              *(this + 1) = v69;
              v44 |= (v70 & 0x7F) << v64;
              if ((v70 & 0x80) == 0)
              {
                break;
              }

              v64 += 7;
              --v66;
              ++v67;
              v68 = v69 + 1;
              v14 = v65++ > 8;
              if (v14)
              {
                LODWORD(v44) = 0;
LABEL_119:
                v2 = v69;
                goto LABEL_120;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v44) = 0;
            }

            goto LABEL_119;
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
              goto LABEL_120;
            }

            v42 += 7;
            ++v46;
            v14 = v43++ > 8;
          }

          while (!v14);
          LODWORD(v44) = 0;
LABEL_120:
          *(a1 + 56) = v44;
          goto LABEL_121;
        case 4u:
          *(a1 + 64) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_74;
          }

          *(a1 + 16) = *(*this + v2);
LABEL_55:
          v2 = *(this + 1) + 8;
          goto LABEL_105;
        case 5u:
          *(a1 + 64) |= 0x1000u;
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

          *(a1 + 61) = v31;
          goto LABEL_121;
        case 6u:
          *(a1 + 64) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_74;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_104;
        case 7u:
          *(a1 + 64) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_74;
          }

          *(a1 + 44) = *(*this + v2);
          goto LABEL_104;
        case 8u:
          *(a1 + 64) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_74;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_104;
        case 9u:
          *(a1 + 64) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_74;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_104;
        case 0xAu:
          *(a1 + 64) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_74;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_104;
        case 0xBu:
          *(a1 + 64) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_74:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 36) = *(*this + v2);
LABEL_104:
            v2 = *(this + 1) + 4;
LABEL_105:
            *(this + 1) = v2;
          }

          goto LABEL_121;
        case 0xCu:
          *(a1 + 64) |= 4u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v50 = 0;
            v51 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v52 = v2 - v22;
            v53 = (v23 + v22);
            v54 = v22 + 1;
            while (1)
            {
              if (!v52)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_112;
              }

              v55 = v54;
              v56 = *v53;
              *(this + 1) = v55;
              v26 |= (v56 & 0x7F) << v50;
              if ((v56 & 0x80) == 0)
              {
                break;
              }

              v50 += 7;
              --v52;
              ++v53;
              v54 = v55 + 1;
              v14 = v51++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_111:
                v2 = v55;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_111;
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
              goto LABEL_112;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_112:
          *(a1 + 24) = v26;
          goto LABEL_121;
        case 0xDu:
          *(a1 + 64) |= 0x200u;
          v32 = *(this + 1);
          v2 = *(this + 2);
          v33 = *this;
          if (v32 > 0xFFFFFFFFFFFFFFF5 || v32 + 10 > v2)
          {
            v57 = 0;
            v58 = 0;
            v36 = 0;
            if (v2 <= v32)
            {
              v2 = *(this + 1);
            }

            v59 = v2 - v32;
            v60 = (v33 + v32);
            v61 = v32 + 1;
            while (1)
            {
              if (!v59)
              {
                LODWORD(v36) = 0;
                *(this + 24) = 1;
                goto LABEL_116;
              }

              v62 = v61;
              v63 = *v60;
              *(this + 1) = v62;
              v36 |= (v63 & 0x7F) << v57;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v57 += 7;
              --v59;
              ++v60;
              v61 = v62 + 1;
              v14 = v58++ > 8;
              if (v14)
              {
                LODWORD(v36) = 0;
LABEL_115:
                v2 = v62;
                goto LABEL_116;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v36) = 0;
            }

            goto LABEL_115;
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
              goto LABEL_116;
            }

            v34 += 7;
            ++v38;
            v14 = v35++ > 8;
          }

          while (!v14);
          LODWORD(v36) = 0;
LABEL_116:
          *(a1 + 52) = v36;
          goto LABEL_121;
        default:
          if (!PB::Reader::skip(this))
          {
            v71 = 0;
            return v71 & 1;
          }

          v2 = *(this + 1);
LABEL_121:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_125;
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

LABEL_125:
  v71 = v4 ^ 1;
  return v71 & 1;
}

uint64_t sub_19B5724F0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 64);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 64);
    if ((v4 & 0x800) == 0)
    {
LABEL_3:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(result + 64) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_6:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this);
  v4 = *(v3 + 64);
  if ((v4 & 0x40) == 0)
  {
LABEL_7:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 64);
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
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_9:
    if ((v4 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_10:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_12:
    if ((v4 & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 64) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 64);
  if ((v4 & 4) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x200) == 0)
  {
    return result;
  }

LABEL_27:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B572694(uint64_t result)
{
  *result = &unk_1F0E2F1C0;
  *(result + 100) = 0;
  return result;
}

void sub_19B5726BC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5726F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 100);
  if (v5)
  {
    PB::TextFormatter::format(this, "altitude", *(a1 + 8));
    v5 = *(a1 + 100);
    if ((v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a1 + 100) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "confidence");
  v5 = *(a1 + 100);
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
  PB::TextFormatter::format(this, "course", *(a1 + 16));
  v5 = *(a1 + 100);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "courseAccuracy", *(a1 + 24));
  v5 = *(a1 + 100);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "horizontalAccuracy", *(a1 + 32));
  v5 = *(a1 + 100);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "latitude", *(a1 + 40));
  v5 = *(a1 + 100);
  if ((v5 & 0x800) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "locationLoggingEnabled");
  v5 = *(a1 + 100);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "longitude", *(a1 + 48));
  v5 = *(a1 + 100);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "speed", *(a1 + 56));
  v5 = *(a1 + 100);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "speedAccuracy", *(a1 + 64));
  v5 = *(a1 + 100);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 72));
  v5 = *(a1 + 100);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PB::TextFormatter::format(this, "type");
  if ((*(a1 + 100) & 0x200) != 0)
  {
LABEL_14:
    PB::TextFormatter::format(this, "verticalAccuracy", *(a1 + 80));
  }

LABEL_15:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5728D8(uint64_t a1, PB::Reader *this)
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
          *(a1 + 100) |= 0x100u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 72) = *(*this + v2);
          goto LABEL_101;
        case 2u:
          *(a1 + 100) |= 0x1000u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v60 = 0;
            v61 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v62 = v2 - v38;
            v63 = (v39 + v38);
            v64 = v38 + 1;
            while (1)
            {
              if (!v62)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_116;
              }

              v65 = v64;
              v66 = *v63;
              *(this + 1) = v65;
              v42 |= (v66 & 0x7F) << v60;
              if ((v66 & 0x80) == 0)
              {
                break;
              }

              v60 += 7;
              --v62;
              ++v63;
              v64 = v65 + 1;
              v14 = v61++ > 8;
              if (v14)
              {
                LODWORD(v42) = 0;
LABEL_115:
                v2 = v65;
                goto LABEL_116;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_115;
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = (v39 + v38);
          v44 = v38 + 1;
          do
          {
            v2 = v44;
            *(this + 1) = v44;
            v45 = *v43++;
            v42 |= (v45 & 0x7F) << v40;
            if ((v45 & 0x80) == 0)
            {
              goto LABEL_116;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_116:
          *(a1 + 96) = v42;
          goto LABEL_117;
        case 3u:
          *(a1 + 100) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_101;
        case 4u:
          *(a1 + 100) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_101;
        case 5u:
          *(a1 + 100) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_101;
        case 6u:
          *(a1 + 100) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_101;
        case 7u:
          *(a1 + 100) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_101;
        case 8u:
          *(a1 + 100) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_101;
        case 9u:
          *(a1 + 100) |= 0x200u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 80) = *(*this + v2);
          goto LABEL_101;
        case 0xAu:
          *(a1 + 100) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_75;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_101;
        case 0xBu:
          *(a1 + 100) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
LABEL_75:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 24) = *(*this + v2);
LABEL_101:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          goto LABEL_117;
        case 0xCu:
          *(a1 + 100) |= 0x400u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v46 = 0;
            v47 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v48 = v2 - v22;
            v49 = (v23 + v22);
            v50 = v22 + 1;
            while (1)
            {
              if (!v48)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_108;
              }

              v51 = v50;
              v52 = *v49;
              *(this + 1) = v51;
              v26 |= (v52 & 0x7F) << v46;
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
                LODWORD(v26) = 0;
LABEL_107:
                v2 = v51;
                goto LABEL_108;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_107;
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
              goto LABEL_108;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_108:
          *(a1 + 88) = v26;
          goto LABEL_117;
        case 0xDu:
          *(a1 + 100) |= 0x800u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v53 = 0;
            v54 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v55 = v2 - v30;
            v56 = (v31 + v30);
            v57 = v30 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_112;
              }

              v58 = v57;
              v59 = *v56;
              *(this + 1) = v58;
              v34 |= (v59 & 0x7F) << v53;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              --v55;
              ++v56;
              v57 = v58 + 1;
              v14 = v54++ > 8;
              if (v14)
              {
                LODWORD(v34) = 0;
LABEL_111:
                v2 = v58;
                goto LABEL_112;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_111;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = (v31 + v30);
          v36 = v30 + 1;
          do
          {
            v2 = v36;
            *(this + 1) = v36;
            v37 = *v35++;
            v34 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              goto LABEL_112;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_112:
          *(a1 + 92) = v34;
          goto LABEL_117;
        default:
          if (!PB::Reader::skip(this))
          {
            v67 = 0;
            return v67 & 1;
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
  v67 = v4 ^ 1;
  return v67 & 1;
}

uint64_t sub_19B572FC0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 100);
  if ((v4 & 0x100) != 0)
  {
    result = PB::Writer::write(this, *(result + 72));
    v4 = *(v3 + 100);
    if ((v4 & 0x1000) == 0)
    {
LABEL_3:
      if ((v4 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*(result + 100) & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_4:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 100);
  if ((v4 & 0x80) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 100);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 100);
  if ((v4 & 1) == 0)
  {
LABEL_9:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 100);
  if ((v4 & 0x200) == 0)
  {
LABEL_10:
    if ((v4 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 80));
  v4 = *(v3 + 100);
  if ((v4 & 2) == 0)
  {
LABEL_11:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 100);
  if ((v4 & 4) == 0)
  {
LABEL_12:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 100) & 0x800) == 0)
    {
      return result;
    }

    goto LABEL_27;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 100);
  if ((v4 & 0x400) != 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v4 & 0x800) == 0)
  {
    return result;
  }

LABEL_27:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_19B573164(uint64_t result)
{
  *result = &unk_1F0E2F188;
  *(result + 12) = 0;
  return result;
}

void sub_19B57318C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5731C4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "lockScreen");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B573224(uint64_t a1, PB::Reader *this)
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
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_34;
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

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v2 = *(this + 1);
        v3 = *(this + 2);
        if (v2 >= v3)
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

        *(a1 + 8) = v24;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(this + 1);
        v3 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_34:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B5733D8(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::write(this);
  }

  return result;
}

void *sub_19B5733F8(void *result)
{
  *result = &unk_1F0E2C1D8;
  result[1] = 0;
  return result;
}

void sub_19B573418(PB::Base *this)
{
  v2 = *(this + 1);
  *this = &unk_1F0E2C1D8;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_19B573498(PB::Base *a1)
{
  sub_19B573418(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5734D0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "super");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57354C(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B573768(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(this, v2);
  }

  return result;
}

uint64_t sub_19B573784(uint64_t result)
{
  *result = &unk_1F0E2F5B0;
  *(result + 20) = 0;
  return result;
}

void sub_19B5737AC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5737E4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "state");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B573860(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B573BE0(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B573C4C(uint64_t result)
{
  *result = &unk_1F0E2D4E0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_19B573C70(PB::Base *this)
{
  *this = &unk_1F0E2D4E0;
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

void sub_19B573CD4(PB::Base *a1)
{
  sub_19B573C70(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B573D0C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    PB::TextFormatter::format(this, "accessoryType");
    v5 = *(a1 + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "isAttached");
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B573DA0(uint64_t a1, PB::Reader *this)
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
        *(a1 + 24) |= 2u;
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

        *(a1 + 20) = v35;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v36 = 0;
          v37 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v38 = v23 - v24;
          if (!v17)
          {
            v38 = 0;
          }

          v39 = (v25 + v24);
          v40 = v24 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v41 = *v39;
            *(this + 1) = v40;
            v28 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            --v38;
            ++v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_44:
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
              goto LABEL_44;
            }
          }
        }

LABEL_50:
        *(a1 + 16) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this))
        {
          v43 = 0;
          return v43 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_19B5740BC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {

    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B57413C(uint64_t result)
{
  *result = &unk_1F0E2D4A8;
  *(result + 12) = 0;
  return result;
}

void sub_19B574164(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57419C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "isCharging");
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5741FC(uint64_t a1, PB::Reader *this)
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
        v17 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v7 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_34;
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

LABEL_22:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      if ((v10 >> 3) == 1)
      {
        *(a1 + 12) |= 1u;
        v2 = *(this + 1);
        v3 = *(this + 2);
        if (v2 >= v3)
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

        *(a1 + 8) = v24;
      }

      else
      {
        if (!PB::Reader::skip(this))
        {
          v25 = 0;
          return v25 & 1;
        }

        v2 = *(this + 1);
        v3 = *(this + 2);
      }

      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_34:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_19B5743B0(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::write(this);
  }

  return result;
}

uint64_t sub_19B5743D0(uint64_t result)
{
  *result = &unk_1F0E303B0;
  *(result + 36) = 0;
  return result;
}

void sub_19B5743F8(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B574430(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 36);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "location");
    v5 = *(a1 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "temperature", *(a1 + 20));
  v5 = *(a1 + 36);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  v5 = *(a1 + 36);
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
  PB::TextFormatter::format(this, "x", *(a1 + 24));
  v5 = *(a1 + 36);
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
  PB::TextFormatter::format(this, "y", *(a1 + 28));
  if ((*(a1 + 36) & 0x20) != 0)
  {
LABEL_7:
    PB::TextFormatter::format(this, "z", *(a1 + 32));
  }

LABEL_8:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B574534(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            *(a1 + 36) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
LABEL_52:
              *(this + 24) = 1;
              goto LABEL_69;
            }

            *(a1 + 32) = *(*this + v2);
LABEL_62:
            v2 = *(this + 1) + 4;
LABEL_63:
            *(this + 1) = v2;
            goto LABEL_69;
          case 5:
            *(a1 + 36) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_62;
          case 6:
            *(a1 + 36) |= 2u;
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
                  goto LABEL_68;
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
                  goto LABEL_67;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_67:
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

LABEL_68:
            *(a1 + 16) = v27;
            goto LABEL_69;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            *(a1 + 36) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_63;
          case 2:
            *(a1 + 36) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 24) = *(*this + v2);
            goto LABEL_62;
          case 3:
            *(a1 + 36) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 28) = *(*this + v2);
            goto LABEL_62;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_69:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_73:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B574910(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 36);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 36);
    if ((v4 & 8) == 0)
    {
LABEL_3:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(result + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 36);
  if ((v4 & 0x10) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 36);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    result = PB::Writer::write(this, *(v3 + 20));
    if ((*(v3 + 36) & 2) == 0)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 36);
  if ((v4 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_13:

  return PB::Writer::writeVarInt(this);
}

double sub_19B5749F0(uint64_t a1)
{
  *a1 = &unk_1F0E398A0;
  *(a1 + 136) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

void sub_19B574A38(PB::Base *this)
{
  *this = &unk_1F0E398A0;
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
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

void sub_19B574ADC(PB::Base *a1)
{
  sub_19B574A38(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B574B14(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "biasEst", v7);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    PB::TextFormatter::format(this, "biasEstVar", v10);
  }

  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  while (v11 != v12)
  {
    v13 = *v11++;
    PB::TextFormatter::format(this, "residual", v13);
  }

  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  while (v14 != v15)
  {
    v16 = *v14++;
    PB::TextFormatter::format(this, "temperature", v16);
  }

  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  while (v17 != v18)
  {
    v19 = *v17++;
    PB::TextFormatter::format(this, "temperatureFiltered", v19);
  }

  if (*(a1 + 136))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 128));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B574C60(uint64_t a1, PB::Reader *this)
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
        goto LABEL_210;
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
        goto LABEL_210;
      }

      v23 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        break;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_212;
            }

            v74 = *(this + 1);
            v75 = *(this + 2);
            while (v74 < v75 && (*(this + 24) & 1) == 0)
            {
              v77 = *(a1 + 40);
              v76 = *(a1 + 48);
              if (v77 >= v76)
              {
                v79 = *(a1 + 32);
                v80 = v77 - v79;
                v81 = (v77 - v79) >> 2;
                v82 = v81 + 1;
                if ((v81 + 1) >> 62)
                {
                  goto LABEL_213;
                }

                v83 = v76 - v79;
                if (v83 >> 1 > v82)
                {
                  v82 = v83 >> 1;
                }

                if (v83 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v84 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = v82;
                }

                if (v84)
                {
                  sub_19B4C4FA8(a1 + 32, v84);
                }

                v85 = (v77 - v79) >> 2;
                v86 = (4 * v81);
                v87 = (4 * v81 - 4 * v85);
                *v86 = 0;
                v78 = v86 + 1;
                memcpy(v87, v79, v80);
                v88 = *(a1 + 32);
                *(a1 + 32) = v87;
                *(a1 + 40) = v78;
                *(a1 + 48) = 0;
                if (v88)
                {
                  operator delete(v88);
                }
              }

              else
              {
                *v77 = 0;
                v78 = v77 + 4;
              }

              *(a1 + 40) = v78;
              v89 = *(this + 1);
              if (v89 > 0xFFFFFFFFFFFFFFFBLL || v89 + 4 > *(this + 2))
              {
                goto LABEL_134;
              }

              *(v78 - 1) = *(*this + v89);
              v75 = *(this + 2);
              v74 = *(this + 1) + 4;
              *(this + 1) = v74;
            }

            goto LABEL_135;
          }

          v114 = *(a1 + 40);
          v113 = *(a1 + 48);
          if (v114 >= v113)
          {
            v135 = *(a1 + 32);
            v136 = v114 - v135;
            v137 = (v114 - v135) >> 2;
            v138 = v137 + 1;
            if ((v137 + 1) >> 62)
            {
              goto LABEL_213;
            }

            v139 = v113 - v135;
            if (v139 >> 1 > v138)
            {
              v138 = v139 >> 1;
            }

            if (v139 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v140 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v140 = v138;
            }

            if (v140)
            {
              sub_19B4C4FA8(a1 + 32, v140);
            }

            v159 = (v114 - v135) >> 2;
            v160 = (4 * v137);
            v161 = (4 * v137 - 4 * v159);
            *v160 = 0;
            v108 = v160 + 1;
            memcpy(v161, v135, v136);
            v162 = *(a1 + 32);
            *(a1 + 32) = v161;
            *(a1 + 40) = v108;
            *(a1 + 48) = 0;
            if (v162)
            {
              operator delete(v162);
            }
          }

          else
          {
            *v114 = 0;
            v108 = v114 + 4;
          }

          *(a1 + 40) = v108;
        }

        else
        {
          if (v23 != 3)
          {
            goto LABEL_92;
          }

          if (v22 == 2)
          {
            if (PB::Reader::placeMark())
            {
              goto LABEL_212;
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
                v31 = (v27 - v29) >> 2;
                v32 = v31 + 1;
                if ((v31 + 1) >> 62)
                {
                  goto LABEL_213;
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
                  sub_19B4C4FA8(a1 + 8, v34);
                }

                v35 = (v27 - v29) >> 2;
                v36 = (4 * v31);
                v37 = (4 * v31 - 4 * v35);
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
                v28 = v27 + 4;
              }

              *(a1 + 16) = v28;
              v39 = *(this + 1);
              if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
              {
                goto LABEL_134;
              }

              *(v28 - 1) = *(*this + v39);
              v25 = *(this + 2);
              v24 = *(this + 1) + 4;
              *(this + 1) = v24;
            }

LABEL_135:
            PB::Reader::recallMark();
            goto LABEL_206;
          }

          v110 = *(a1 + 16);
          v109 = *(a1 + 24);
          if (v110 >= v109)
          {
            v123 = *(a1 + 8);
            v124 = v110 - v123;
            v125 = (v110 - v123) >> 2;
            v126 = v125 + 1;
            if ((v125 + 1) >> 62)
            {
              goto LABEL_213;
            }

            v127 = v109 - v123;
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
              sub_19B4C4FA8(a1 + 8, v128);
            }

            v151 = (v110 - v123) >> 2;
            v152 = (4 * v125);
            v153 = (4 * v125 - 4 * v151);
            *v152 = 0;
            v108 = v152 + 1;
            memcpy(v153, v123, v124);
            v154 = *(a1 + 8);
            *(a1 + 8) = v153;
            *(a1 + 16) = v108;
            *(a1 + 24) = 0;
            if (v154)
            {
              operator delete(v154);
            }
          }

          else
          {
            *v110 = 0;
            v108 = v110 + 4;
          }

          *(a1 + 16) = v108;
        }

LABEL_201:
        v167 = *(this + 1);
        if (v167 > 0xFFFFFFFFFFFFFFFBLL || v167 + 4 > *(this + 2))
        {
          goto LABEL_203;
        }

        *(v108 - 1) = *(*this + v167);
        v57 = *(this + 1) + 4;
        goto LABEL_205;
      }

      *(a1 + 136) |= 1u;
      v56 = *(this + 1);
      if (v56 > 0xFFFFFFFFFFFFFFF7 || v56 + 8 > *(this + 2))
      {
LABEL_203:
        *(this + 24) = 1;
        goto LABEL_206;
      }

      *(a1 + 128) = *(*this + v56);
      v57 = *(this + 1) + 8;
LABEL_205:
      *(this + 1) = v57;
LABEL_206:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
      if (v2 >= v3 || (*(this + 24) & 1) != 0)
      {
        goto LABEL_210;
      }
    }

    switch(v23)
    {
      case 4:
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_212;
          }

          v58 = *(this + 1);
          v59 = *(this + 2);
          while (v58 < v59 && (*(this + 24) & 1) == 0)
          {
            v61 = *(a1 + 112);
            v60 = *(a1 + 120);
            if (v61 >= v60)
            {
              v63 = *(a1 + 104);
              v64 = v61 - v63;
              v65 = (v61 - v63) >> 2;
              v66 = v65 + 1;
              if ((v65 + 1) >> 62)
              {
                goto LABEL_213;
              }

              v67 = v60 - v63;
              if (v67 >> 1 > v66)
              {
                v66 = v67 >> 1;
              }

              if (v67 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v68 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v68 = v66;
              }

              if (v68)
              {
                sub_19B4C4FA8(a1 + 104, v68);
              }

              v69 = (v61 - v63) >> 2;
              v70 = (4 * v65);
              v71 = (4 * v65 - 4 * v69);
              *v70 = 0;
              v62 = v70 + 1;
              memcpy(v71, v63, v64);
              v72 = *(a1 + 104);
              *(a1 + 104) = v71;
              *(a1 + 112) = v62;
              *(a1 + 120) = 0;
              if (v72)
              {
                operator delete(v72);
              }
            }

            else
            {
              *v61 = 0;
              v62 = v61 + 4;
            }

            *(a1 + 112) = v62;
            v73 = *(this + 1);
            if (v73 > 0xFFFFFFFFFFFFFFFBLL || v73 + 4 > *(this + 2))
            {
LABEL_134:
              *(this + 24) = 1;
              goto LABEL_135;
            }

            *(v62 - 1) = *(*this + v73);
            v59 = *(this + 2);
            v58 = *(this + 1) + 4;
            *(this + 1) = v58;
          }

          goto LABEL_135;
        }

        v107 = *(a1 + 112);
        v106 = *(a1 + 120);
        if (v107 >= v106)
        {
          v117 = *(a1 + 104);
          v118 = v107 - v117;
          v119 = (v107 - v117) >> 2;
          v120 = v119 + 1;
          if ((v119 + 1) >> 62)
          {
            goto LABEL_213;
          }

          v121 = v106 - v117;
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
            sub_19B4C4FA8(a1 + 104, v122);
          }

          v147 = (v107 - v117) >> 2;
          v148 = (4 * v119);
          v149 = (4 * v119 - 4 * v147);
          *v148 = 0;
          v108 = v148 + 1;
          memcpy(v149, v117, v118);
          v150 = *(a1 + 104);
          *(a1 + 104) = v149;
          *(a1 + 112) = v108;
          *(a1 + 120) = 0;
          if (v150)
          {
            operator delete(v150);
          }
        }

        else
        {
          *v107 = 0;
          v108 = v107 + 4;
        }

        *(a1 + 112) = v108;
        break;
      case 5:
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_212:
            v168 = 0;
            return v168 & 1;
          }

          v90 = *(this + 1);
          v91 = *(this + 2);
          while (v90 < v91 && (*(this + 24) & 1) == 0)
          {
            v93 = *(a1 + 64);
            v92 = *(a1 + 72);
            if (v93 >= v92)
            {
              v95 = *(a1 + 56);
              v96 = v93 - v95;
              v97 = (v93 - v95) >> 2;
              v98 = v97 + 1;
              if ((v97 + 1) >> 62)
              {
                goto LABEL_213;
              }

              v99 = v92 - v95;
              if (v99 >> 1 > v98)
              {
                v98 = v99 >> 1;
              }

              if (v99 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v100 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v100 = v98;
              }

              if (v100)
              {
                sub_19B4C4FA8(a1 + 56, v100);
              }

              v101 = (v93 - v95) >> 2;
              v102 = (4 * v97);
              v103 = (4 * v97 - 4 * v101);
              *v102 = 0;
              v94 = v102 + 1;
              memcpy(v103, v95, v96);
              v104 = *(a1 + 56);
              *(a1 + 56) = v103;
              *(a1 + 64) = v94;
              *(a1 + 72) = 0;
              if (v104)
              {
                operator delete(v104);
              }
            }

            else
            {
              *v93 = 0;
              v94 = v93 + 4;
            }

            *(a1 + 64) = v94;
            v105 = *(this + 1);
            if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(this + 2))
            {
              goto LABEL_134;
            }

            *(v94 - 1) = *(*this + v105);
            v91 = *(this + 2);
            v90 = *(this + 1) + 4;
            *(this + 1) = v90;
          }

          goto LABEL_135;
        }

        v116 = *(a1 + 64);
        v115 = *(a1 + 72);
        if (v116 >= v115)
        {
          v141 = *(a1 + 56);
          v142 = v116 - v141;
          v143 = (v116 - v141) >> 2;
          v144 = v143 + 1;
          if ((v143 + 1) >> 62)
          {
LABEL_213:
            sub_19B5BE690();
          }

          v145 = v115 - v141;
          if (v145 >> 1 > v144)
          {
            v144 = v145 >> 1;
          }

          if (v145 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v146 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v146 = v144;
          }

          if (v146)
          {
            sub_19B4C4FA8(a1 + 56, v146);
          }

          v163 = (v116 - v141) >> 2;
          v164 = (4 * v143);
          v165 = (4 * v143 - 4 * v163);
          *v164 = 0;
          v108 = v164 + 1;
          memcpy(v165, v141, v142);
          v166 = *(a1 + 56);
          *(a1 + 56) = v165;
          *(a1 + 64) = v108;
          *(a1 + 72) = 0;
          if (v166)
          {
            operator delete(v166);
          }
        }

        else
        {
          *v116 = 0;
          v108 = v116 + 4;
        }

        *(a1 + 64) = v108;
        break;
      case 6:
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_212;
          }

          v40 = *(this + 1);
          v41 = *(this + 2);
          while (v40 < v41 && (*(this + 24) & 1) == 0)
          {
            v43 = *(a1 + 88);
            v42 = *(a1 + 96);
            if (v43 >= v42)
            {
              v45 = *(a1 + 80);
              v46 = v43 - v45;
              v47 = (v43 - v45) >> 2;
              v48 = v47 + 1;
              if ((v47 + 1) >> 62)
              {
                goto LABEL_213;
              }

              v49 = v42 - v45;
              if (v49 >> 1 > v48)
              {
                v48 = v49 >> 1;
              }

              if (v49 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v50 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v50 = v48;
              }

              if (v50)
              {
                sub_19B4C4FA8(a1 + 80, v50);
              }

              v51 = (v43 - v45) >> 2;
              v52 = (4 * v47);
              v53 = (4 * v47 - 4 * v51);
              *v52 = 0;
              v44 = v52 + 1;
              memcpy(v53, v45, v46);
              v54 = *(a1 + 80);
              *(a1 + 80) = v53;
              *(a1 + 88) = v44;
              *(a1 + 96) = 0;
              if (v54)
              {
                operator delete(v54);
              }
            }

            else
            {
              *v43 = 0;
              v44 = v43 + 4;
            }

            *(a1 + 88) = v44;
            v55 = *(this + 1);
            if (v55 > 0xFFFFFFFFFFFFFFFBLL || v55 + 4 > *(this + 2))
            {
              goto LABEL_134;
            }

            *(v44 - 1) = *(*this + v55);
            v41 = *(this + 2);
            v40 = *(this + 1) + 4;
            *(this + 1) = v40;
          }

          goto LABEL_135;
        }

        v112 = *(a1 + 88);
        v111 = *(a1 + 96);
        if (v112 >= v111)
        {
          v129 = *(a1 + 80);
          v130 = v112 - v129;
          v131 = (v112 - v129) >> 2;
          v132 = v131 + 1;
          if ((v131 + 1) >> 62)
          {
            goto LABEL_213;
          }

          v133 = v111 - v129;
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
            sub_19B4C4FA8(a1 + 80, v134);
          }

          v155 = (v112 - v129) >> 2;
          v156 = (4 * v131);
          v157 = (4 * v131 - 4 * v155);
          *v156 = 0;
          v108 = v156 + 1;
          memcpy(v157, v129, v130);
          v158 = *(a1 + 80);
          *(a1 + 80) = v157;
          *(a1 + 88) = v108;
          *(a1 + 96) = 0;
          if (v158)
          {
            operator delete(v158);
          }
        }

        else
        {
          *v112 = 0;
          v108 = v112 + 4;
        }

        *(a1 + 88) = v108;
        break;
      default:
LABEL_92:
        if ((PB::Reader::skip(this) & 1) == 0)
        {
          goto LABEL_212;
        }

        goto LABEL_206;
    }

    goto LABEL_201;
  }

LABEL_210:
  v168 = v4 ^ 1;
  return v168 & 1;
}

uint64_t sub_19B5756FC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 136))
  {
    result = PB::Writer::write(this, *(result + 128));
  }

  v4 = v3[4];
  v5 = v3[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = v3[1];
  v8 = v3[2];
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = v3[13];
  v11 = v3[14];
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  v13 = v3[7];
  v14 = v3[8];
  while (v13 != v14)
  {
    v15 = *v13++;
    result = PB::Writer::write(this, v15);
  }

  v17 = v3[10];
  v16 = v3[11];
  while (v17 != v16)
  {
    v18 = *v17++;
    result = PB::Writer::write(this, v18);
  }

  return result;
}

uint64_t sub_19B5757E0(uint64_t result)
{
  *result = &unk_1F0E2ECB8;
  *(result + 44) = 0;
  return result;
}

void sub_19B575808(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B575840(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 44);
  if ((v5 & 0x10) != 0)
  {
    PB::TextFormatter::format(this, "exitingSaturation");
    v5 = *(a1 + 44);
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

  else if ((*(a1 + 44) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "extendedSaturation");
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "shiftInSaturation");
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "timeSinceLastRemag");
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "timeSinceLastRemagTrigger");
  v5 = *(a1 + 44);
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
  PB::TextFormatter::format(this, "timestamp", *(a1 + 24));
  if ((*(a1 + 44) & 8) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "triggerCount");
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B575964(uint64_t a1, PB::Reader *this)
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
            *(a1 + 44) |= 4u;
            v2 = *(this + 1);
            if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
            {
              *(a1 + 24) = *(*this + v2);
              v2 = *(this + 1) + 8;
              *(this + 1) = v2;
            }

            else
            {
              *(this + 24) = 1;
            }

            goto LABEL_109;
          case 2:
            *(a1 + 44) |= 2u;
            v45 = *(this + 1);
            v2 = *(this + 2);
            v46 = *this;
            if (v45 > 0xFFFFFFFFFFFFFFF5 || v45 + 10 > v2)
            {
              v67 = 0;
              v68 = 0;
              v49 = 0;
              if (v2 <= v45)
              {
                v2 = *(this + 1);
              }

              v69 = v2 - v45;
              v70 = (v46 + v45);
              v71 = v45 + 1;
              while (1)
              {
                if (!v69)
                {
                  v49 = 0;
                  *(this + 24) = 1;
                  goto LABEL_108;
                }

                v72 = v71;
                v73 = *v70;
                *(this + 1) = v72;
                v49 |= (v73 & 0x7F) << v67;
                if ((v73 & 0x80) == 0)
                {
                  break;
                }

                v67 += 7;
                --v69;
                ++v70;
                v71 = v72 + 1;
                v14 = v68++ > 8;
                if (v14)
                {
                  v49 = 0;
                  goto LABEL_107;
                }
              }

              if (*(this + 24))
              {
                v49 = 0;
              }

LABEL_107:
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
                *(this + 1) = v51;
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

LABEL_108:
            *(a1 + 16) = v49;
            goto LABEL_109;
          case 3:
            *(a1 + 44) |= 1u;
            v25 = *(this + 1);
            v2 = *(this + 2);
            v26 = *this;
            if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
            {
              v60 = 0;
              v61 = 0;
              v29 = 0;
              if (v2 <= v25)
              {
                v2 = *(this + 1);
              }

              v62 = v2 - v25;
              v63 = (v26 + v25);
              v64 = v25 + 1;
              while (1)
              {
                if (!v62)
                {
                  v29 = 0;
                  *(this + 24) = 1;
                  goto LABEL_104;
                }

                v65 = v64;
                v66 = *v63;
                *(this + 1) = v65;
                v29 |= (v66 & 0x7F) << v60;
                if ((v66 & 0x80) == 0)
                {
                  break;
                }

                v60 += 7;
                --v62;
                ++v63;
                v64 = v65 + 1;
                v14 = v61++ > 8;
                if (v14)
                {
                  v29 = 0;
                  goto LABEL_103;
                }
              }

              if (*(this + 24))
              {
                v29 = 0;
              }

LABEL_103:
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

LABEL_104:
            *(a1 + 8) = v29;
            goto LABEL_109;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 44) |= 0x10u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v44 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v43 = *(*this + v2++);
            *(this + 1) = v2;
            v44 = v43 != 0;
          }

          *(a1 + 40) = v44;
          goto LABEL_109;
        }

        if (v22 == 7)
        {
          *(a1 + 44) |= 0x20u;
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

          *(a1 + 41) = v34;
          goto LABEL_109;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 44) |= 8u;
          v35 = *(this + 1);
          v2 = *(this + 2);
          v36 = *this;
          if (v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v2)
          {
            v53 = 0;
            v54 = 0;
            v39 = 0;
            if (v2 <= v35)
            {
              v2 = *(this + 1);
            }

            v55 = v2 - v35;
            v56 = (v36 + v35);
            v57 = v35 + 1;
            while (1)
            {
              if (!v55)
              {
                v39 = 0;
                *(this + 24) = 1;
                goto LABEL_100;
              }

              v58 = v57;
              v59 = *v56;
              *(this + 1) = v58;
              v39 |= (v59 & 0x7F) << v53;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              --v55;
              ++v56;
              v57 = v58 + 1;
              v14 = v54++ > 8;
              if (v14)
              {
                v39 = 0;
                goto LABEL_99;
              }
            }

            if (*(this + 24))
            {
              v39 = 0;
            }

LABEL_99:
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
              *(this + 1) = v41;
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

LABEL_100:
          *(a1 + 32) = v39;
          goto LABEL_109;
        }

        if (v22 == 5)
        {
          *(a1 + 44) |= 0x40u;
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

          *(a1 + 42) = v24;
          goto LABEL_109;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v74 = 0;
        return v74 & 1;
      }

      v2 = *(this + 1);
LABEL_109:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_113:
  v74 = v4 ^ 1;
  return v74 & 1;
}

uint64_t sub_19B575F3C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 44);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
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

  else if ((*(result + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this);
    if ((*(v3 + 44) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this);
  v4 = *(v3 + 44);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_15:

  return PB::Writer::write(this);
}

uint64_t sub_19B576038(uint64_t result)
{
  *result = &unk_1F0E2EC80;
  *(result + 20) = 0;
  return result;
}

void sub_19B576060(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B576098(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if (v5)
  {
    PB::TextFormatter::format(this, "isAppleMapsRoutingActive");
    v5 = *(a1 + 20);
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

  PB::TextFormatter::format(this, "isBicycleRouting");
  v5 = *(a1 + 20);
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
  PB::TextFormatter::format(this, "isBicycleRoutingActive");
  v5 = *(a1 + 20);
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
  PB::TextFormatter::format(this, "isPedestrianRouting");
  v5 = *(a1 + 20);
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
  PB::TextFormatter::format(this, "isPedestrianRoutingActive");
  v5 = *(a1 + 20);
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
  PB::TextFormatter::format(this, "isStepTypeBicycle");
  v5 = *(a1 + 20);
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
  PB::TextFormatter::format(this, "isStepTypePedestrian");
  v5 = *(a1 + 20);
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
  PB::TextFormatter::format(this, "isVehicularRouting");
  if ((*(a1 + 20) & 0x100) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "isVehicularRoutingActive");
  }

LABEL_11:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5761FC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_77;
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

        if (v4)
        {
          v10 = 0;
        }

        else
        {
          v10 = v17;
        }
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

      v23 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        if (v23 > 2)
        {
          if (v23 == 3)
          {
            *(a1 + 20) |= 8u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v35 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v34 = *(*this + v3++);
              *(this + 1) = v3;
              v35 = v34 != 0;
            }

            *(a1 + 11) = v35;
            goto LABEL_73;
          }

          if (v23 == 4)
          {
            *(a1 + 20) |= 0x20u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v29 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v28 = *(*this + v3++);
              *(this + 1) = v3;
              v29 = v28 != 0;
            }

            *(a1 + 13) = v29;
            goto LABEL_73;
          }
        }

        else
        {
          if (v23 == 1)
          {
            *(a1 + 20) |= 0x80u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v33 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v32 = *(*this + v3++);
              *(this + 1) = v3;
              v33 = v32 != 0;
            }

            *(a1 + 15) = v33;
            goto LABEL_73;
          }

          if (v23 == 2)
          {
            *(a1 + 20) |= 2u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v27 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v26 = *(*this + v3++);
              *(this + 1) = v3;
              v27 = v26 != 0;
            }

            *(a1 + 9) = v27;
            goto LABEL_73;
          }
        }
      }

      else if (v23 <= 6)
      {
        if (v23 == 5)
        {
          *(a1 + 20) |= 0x40u;
          v3 = *(this + 1);
          v2 = *(this + 2);
          if (v3 >= v2)
          {
            v39 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v38 = *(*this + v3++);
            *(this + 1) = v3;
            v39 = v38 != 0;
          }

          *(a1 + 14) = v39;
          goto LABEL_73;
        }

        if (v23 == 6)
        {
          *(a1 + 20) |= 0x10u;
          v3 = *(this + 1);
          v2 = *(this + 2);
          if (v3 >= v2)
          {
            v31 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v30 = *(*this + v3++);
            *(this + 1) = v3;
            v31 = v30 != 0;
          }

          *(a1 + 12) = v31;
          goto LABEL_73;
        }
      }

      else
      {
        switch(v23)
        {
          case 7:
            *(a1 + 20) |= 0x100u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v37 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v36 = *(*this + v3++);
              *(this + 1) = v3;
              v37 = v36 != 0;
            }

            *(a1 + 16) = v37;
            goto LABEL_73;
          case 8:
            *(a1 + 20) |= 4u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v41 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v40 = *(*this + v3++);
              *(this + 1) = v3;
              v41 = v40 != 0;
            }

            *(a1 + 10) = v41;
            goto LABEL_73;
          case 9:
            *(a1 + 20) |= 1u;
            v3 = *(this + 1);
            v2 = *(this + 2);
            if (v3 >= v2)
            {
              v25 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v24 = *(*this + v3++);
              *(this + 1) = v3;
              v25 = v24 != 0;
            }

            *(a1 + 8) = v25;
            goto LABEL_73;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v42 = 0;
        return v42 & 1;
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
LABEL_73:
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_77:
  v42 = v4 ^ 1;
  return v42 & 1;
}

uint64_t sub_19B576628(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 20);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this);
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

  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this);
  v4 = *(v3 + 20);
  if ((v4 & 0x100) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::write(this);
    if ((*(v3 + 20) & 1) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this);
  v4 = *(v3 + 20);
  if ((v4 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 1) == 0)
  {
    return result;
  }

LABEL_19:

  return PB::Writer::write(this);
}

uint64_t sub_19B57675C(uint64_t result)
{
  *result = &unk_1F0E2B408;
  *(result + 28) = 0;
  return result;
}

void sub_19B576784(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B5767BC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 28);
  if (v5)
  {
    PB::TextFormatter::format(this, "mets", *(a1 + 8));
    v5 = *(a1 + 28);
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

  else if ((*(a1 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "metsDiff", *(a1 + 12));
  v5 = *(a1 + 28);
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
  PB::TextFormatter::format(this, "metsHR", *(a1 + 16));
  v5 = *(a1 + 28);
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
  PB::TextFormatter::format(this, "metsWR", *(a1 + 20));
  if ((*(a1 + 28) & 0x10) != 0)
  {
LABEL_6:
    PB::TextFormatter::format(this, "source");
  }

LABEL_7:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B5768A0(uint64_t a1, PB::Reader *this)
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
            goto LABEL_68;
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 28) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
LABEL_46:
            *(this + 24) = 1;
            goto LABEL_64;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_58;
        }

        if (v22 == 2)
        {
          *(a1 + 28) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_46;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_58;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 28) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_46;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_58;
          case 4:
            *(a1 + 28) |= 0x10u;
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
                  goto LABEL_63;
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
                  goto LABEL_62;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_62:
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

LABEL_63:
            *(a1 + 24) = v27;
            goto LABEL_64;
          case 5:
            *(a1 + 28) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_46;
            }

            *(a1 + 12) = *(*this + v2);
LABEL_58:
            v2 = *(this + 1) + 4;
            *(this + 1) = v2;
            goto LABEL_64;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v38 = 0;
        return v38 & 1;
      }

      v2 = *(this + 1);
LABEL_64:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_68:
  v38 = v4 ^ 1;
  return v38 & 1;
}

uint64_t sub_19B576C34(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
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

  else if ((*(result + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 28);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 28) & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 28);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v4 & 2) == 0)
  {
    return result;
  }

LABEL_11:
  v5 = *(v3 + 12);

  return PB::Writer::write(this, v5);
}

void *sub_19B576CF8(void *result)
{
  *result = &unk_1F0E2E388;
  result[23] = 0;
  return result;
}

void sub_19B576D20(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B576D58(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 184);
  if ((v5 & 8) != 0)
  {
    PB::TextFormatter::format(this, "asymmetryPercentage", *(a1 + 32));
    v5 = *(a1 + 184);
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

  PB::TextFormatter::format(this, "asymmetryPercentageIsValid");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "asymmetryPercentageRejectionStatus");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "boundaryType");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "cycleTimeEntropy", *(a1 + 44));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "cycleTimeMean", *(a1 + 48));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "cycleTimePoincareSD1", *(a1 + 52));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "cycleTimePoincareSD2", *(a1 + 56));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "deviceSide");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "doubleSupportPercentage", *(a1 + 64));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "doubleSupportPercentageIsValid");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "doubleSupportPercentageRejectionStatus");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "endTime", *(a1 + 8));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "invalidGradePercentage", *(a1 + 16));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "isHeightSet");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "isWeightSet");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "numGaitMetrics");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "rejectionStatus");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "segmentsRejectedByIsCadenceConcordant");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "segmentsRejectedByIsFeasibleWalkingSpeed");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "segmentsRejectedByIsNotRunning");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "segmentsRejectedByIsPendular");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "segmentsRejectedByIsSufficientVerticalTwist");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "segmentsRejectedByIsSwingStanceCycle");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "startTime", *(a1 + 24));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepCount");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityAP", *(a1 + 108));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityML", *(a1 + 112));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepIndexOfHarmonicityVT", *(a1 + 116));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepLength", *(a1 + 120));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepLengthEntropy", *(a1 + 124));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepLengthIsValid");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepLengthPoincareSD1", *(a1 + 128));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepLengthPoincareSD2", *(a1 + 132));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "stepLengthRejectionStatus");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityAP", *(a1 + 140));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityML", *(a1 + 144));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "swingIndexOfHarmonicityVT", *(a1 + 148));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "terminationReason");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "userHeight", *(a1 + 156));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "userWeight", *(a1 + 160));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "walkingSpeed", *(a1 + 164));
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "walkingSpeedIsValid");
  v5 = *(a1 + 184);
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
  PB::TextFormatter::format(this, "walkingSpeedRejectionStatus");
  if ((*(a1 + 184) & 0x4000000000) != 0)
  {
LABEL_46:
    PB::TextFormatter::format(this, "workoutType");
  }

LABEL_47:

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B57733C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_446;
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
          *(a1 + 184) |= 4uLL;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 24) = *(*this + v22);
          goto LABEL_171;
        case 2u:
          *(a1 + 184) |= 1uLL;
          v106 = *(this + 1);
          if (v106 > 0xFFFFFFFFFFFFFFF7 || v106 + 8 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 8) = *(*this + v106);
          goto LABEL_171;
        case 3u:
          *(a1 + 184) |= 0x200000uLL;
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
                goto LABEL_411;
              }

              v89 += 7;
              ++v93;
              v14 = v90++ > 8;
            }

            while (!v14);
LABEL_274:
            LODWORD(v91) = 0;
            goto LABEL_411;
          }

          v252 = 0;
          v253 = 0;
          v91 = 0;
          v17 = v86 >= v87;
          v254 = v86 - v87;
          if (!v17)
          {
            v254 = 0;
          }

          v255 = (v88 + v87);
          v256 = v87 + 1;
          while (2)
          {
            if (v254)
            {
              v257 = *v255;
              *(this + 1) = v256;
              v91 |= (v257 & 0x7F) << v252;
              if (v257 < 0)
              {
                v252 += 7;
                --v254;
                ++v255;
                ++v256;
                v14 = v253++ > 8;
                if (v14)
                {
                  goto LABEL_274;
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

LABEL_411:
          *(a1 + 104) = v91;
          goto LABEL_374;
        case 4u:
          *(a1 + 184) |= 0x1000000000uLL;
          v104 = *(this + 1);
          if (v104 > 0xFFFFFFFFFFFFFFFBLL || v104 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 164) = *(*this + v104);
          goto LABEL_372;
        case 5u:
          *(a1 + 184) |= 0x100000000000uLL;
          v50 = *(this + 1);
          if (v50 >= *(this + 2))
          {
            v53 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v51 = v50 + 1;
            v52 = *(*this + v50);
            *(this + 1) = v51;
            v53 = v52 != 0;
          }

          *(a1 + 181) = v53;
          goto LABEL_374;
        case 6u:
          *(a1 + 184) |= 0x800uLL;
          v135 = *(this + 1);
          if (v135 > 0xFFFFFFFFFFFFFFFBLL || v135 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 64) = *(*this + v135);
          goto LABEL_372;
        case 7u:
          *(a1 + 184) |= 0x10000000000uLL;
          v154 = *(this + 1);
          if (v154 >= *(this + 2))
          {
            v157 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v155 = v154 + 1;
            v156 = *(*this + v154);
            *(this + 1) = v155;
            v157 = v156 != 0;
          }

          *(a1 + 177) = v157;
          goto LABEL_374;
        case 8u:
          *(a1 + 184) |= 0x2000000uLL;
          v105 = *(this + 1);
          if (v105 > 0xFFFFFFFFFFFFFFFBLL || v105 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 120) = *(*this + v105);
          goto LABEL_372;
        case 9u:
          *(a1 + 184) |= 0x80000000000uLL;
          v169 = *(this + 1);
          if (v169 >= *(this + 2))
          {
            v172 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v170 = v169 + 1;
            v171 = *(*this + v169);
            *(this + 1) = v170;
            v172 = v171 != 0;
          }

          *(a1 + 180) = v172;
          goto LABEL_374;
        case 0xAu:
          *(a1 + 184) |= 0x4000uLL;
          v60 = *(this + 1);
          v59 = *(this + 2);
          v61 = *this;
          if (v60 <= 0xFFFFFFFFFFFFFFF5 && v60 + 10 <= v59)
          {
            v62 = 0;
            v63 = 0;
            v64 = 0;
            v65 = (v61 + v60);
            v66 = v60 + 1;
            do
            {
              *(this + 1) = v66;
              v67 = *v65++;
              v64 |= (v67 & 0x7F) << v62;
              if ((v67 & 0x80) == 0)
              {
                goto LABEL_402;
              }

              v62 += 7;
              ++v66;
              v14 = v63++ > 8;
            }

            while (!v14);
LABEL_248:
            LODWORD(v64) = 0;
            goto LABEL_402;
          }

          v234 = 0;
          v235 = 0;
          v64 = 0;
          v17 = v59 >= v60;
          v236 = v59 - v60;
          if (!v17)
          {
            v236 = 0;
          }

          v237 = (v61 + v60);
          v238 = v60 + 1;
          while (2)
          {
            if (v236)
            {
              v239 = *v237;
              *(this + 1) = v238;
              v64 |= (v239 & 0x7F) << v234;
              if (v239 < 0)
              {
                v234 += 7;
                --v236;
                ++v237;
                ++v238;
                v14 = v235++ > 8;
                if (v14)
                {
                  goto LABEL_248;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              LODWORD(v64) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_402:
          *(a1 + 76) = v64;
          goto LABEL_374;
        case 0xBu:
          *(a1 + 184) |= 2uLL;
          v167 = *(this + 1);
          if (v167 > 0xFFFFFFFFFFFFFFF7 || v167 + 8 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 16) = *(*this + v167);
LABEL_171:
          v168 = *(this + 1) + 8;
          goto LABEL_373;
        case 0xCu:
          *(a1 + 184) |= 8uLL;
          v49 = *(this + 1);
          if (v49 > 0xFFFFFFFFFFFFFFFBLL || v49 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 32) = *(*this + v49);
          goto LABEL_372;
        case 0xDu:
          *(a1 + 184) |= 0x8000000000uLL;
          v55 = *(this + 1);
          if (v55 >= *(this + 2))
          {
            v58 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v56 = v55 + 1;
            v57 = *(*this + v55);
            *(this + 1) = v56;
            v58 = v57 != 0;
          }

          *(a1 + 176) = v58;
          goto LABEL_374;
        case 0xEu:
          *(a1 + 184) |= 0x2000uLL;
          v146 = *(this + 1);
          v145 = *(this + 2);
          v147 = *this;
          if (v146 <= 0xFFFFFFFFFFFFFFF5 && v146 + 10 <= v145)
          {
            v148 = 0;
            v149 = 0;
            v150 = 0;
            v151 = (v147 + v146);
            v152 = v146 + 1;
            do
            {
              *(this + 1) = v152;
              v153 = *v151++;
              v150 |= (v153 & 0x7F) << v148;
              if ((v153 & 0x80) == 0)
              {
                goto LABEL_429;
              }

              v148 += 7;
              ++v152;
              v14 = v149++ > 8;
            }

            while (!v14);
LABEL_322:
            LODWORD(v150) = 0;
            goto LABEL_429;
          }

          v288 = 0;
          v289 = 0;
          v150 = 0;
          v17 = v145 >= v146;
          v290 = v145 - v146;
          if (!v17)
          {
            v290 = 0;
          }

          v291 = (v147 + v146);
          v292 = v146 + 1;
          while (2)
          {
            if (v290)
            {
              v293 = *v291;
              *(this + 1) = v292;
              v150 |= (v293 & 0x7F) << v288;
              if (v293 < 0)
              {
                v288 += 7;
                --v290;
                ++v291;
                ++v292;
                v14 = v289++ > 8;
                if (v14)
                {
                  goto LABEL_322;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v150) = 0;
              }
            }

            else
            {
              LODWORD(v150) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_429:
          *(a1 + 72) = v150;
          goto LABEL_374;
        case 0xFu:
          *(a1 + 184) |= 0x200000000uLL;
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
                goto LABEL_399;
              }

              v42 += 7;
              ++v46;
              v14 = v43++ > 8;
            }

            while (!v14);
LABEL_238:
            LODWORD(v44) = 0;
            goto LABEL_399;
          }

          v228 = 0;
          v229 = 0;
          v44 = 0;
          v17 = v39 >= v40;
          v230 = v39 - v40;
          if (!v17)
          {
            v230 = 0;
          }

          v231 = (v41 + v40);
          v232 = v40 + 1;
          while (2)
          {
            if (v230)
            {
              v233 = *v231;
              *(this + 1) = v232;
              v44 |= (v233 & 0x7F) << v228;
              if (v233 < 0)
              {
                v228 += 7;
                --v230;
                ++v231;
                ++v232;
                v14 = v229++ > 8;
                if (v14)
                {
                  goto LABEL_238;
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

LABEL_399:
          *(a1 + 152) = v44;
          goto LABEL_374;
        case 0x10u:
          *(a1 + 184) |= 0x4000000000uLL;
          v96 = *(this + 1);
          v95 = *(this + 2);
          v97 = *this;
          if (v96 <= 0xFFFFFFFFFFFFFFF5 && v96 + 10 <= v95)
          {
            v98 = 0;
            v99 = 0;
            v100 = 0;
            v101 = (v97 + v96);
            v102 = v96 + 1;
            do
            {
              *(this + 1) = v102;
              v103 = *v101++;
              v100 |= (v103 & 0x7F) << v98;
              if ((v103 & 0x80) == 0)
              {
                goto LABEL_414;
              }

              v98 += 7;
              ++v102;
              v14 = v99++ > 8;
            }

            while (!v14);
LABEL_282:
            LODWORD(v100) = 0;
            goto LABEL_414;
          }

          v258 = 0;
          v259 = 0;
          v100 = 0;
          v17 = v95 >= v96;
          v260 = v95 - v96;
          if (!v17)
          {
            v260 = 0;
          }

          v261 = (v97 + v96);
          v262 = v96 + 1;
          while (2)
          {
            if (v260)
            {
              v263 = *v261;
              *(this + 1) = v262;
              v100 |= (v263 & 0x7F) << v258;
              if (v263 < 0)
              {
                v258 += 7;
                --v260;
                ++v261;
                ++v262;
                v14 = v259++ > 8;
                if (v14)
                {
                  goto LABEL_282;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v100) = 0;
              }
            }

            else
            {
              LODWORD(v100) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_414:
          *(a1 + 172) = v100;
          goto LABEL_374;
        case 0x11u:
          *(a1 + 184) |= 0x100000uLL;
          v30 = *(this + 1);
          v29 = *(this + 2);
          v31 = *this;
          if (v30 <= 0xFFFFFFFFFFFFFFF5 && v30 + 10 <= v29)
          {
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v35 = (v31 + v30);
            v36 = v30 + 1;
            do
            {
              *(this + 1) = v36;
              v37 = *v35++;
              v34 |= (v37 & 0x7F) << v32;
              if ((v37 & 0x80) == 0)
              {
                goto LABEL_396;
              }

              v32 += 7;
              ++v36;
              v14 = v33++ > 8;
            }

            while (!v14);
LABEL_230:
            LODWORD(v34) = 0;
            goto LABEL_396;
          }

          v222 = 0;
          v223 = 0;
          v34 = 0;
          v17 = v29 >= v30;
          v224 = v29 - v30;
          if (!v17)
          {
            v224 = 0;
          }

          v225 = (v31 + v30);
          v226 = v30 + 1;
          while (2)
          {
            if (v224)
            {
              v227 = *v225;
              *(this + 1) = v226;
              v34 |= (v227 & 0x7F) << v222;
              if (v227 < 0)
              {
                v222 += 7;
                --v224;
                ++v225;
                ++v226;
                v14 = v223++ > 8;
                if (v14)
                {
                  goto LABEL_230;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v34) = 0;
              }
            }

            else
            {
              LODWORD(v34) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_396:
          *(a1 + 100) = v34;
          goto LABEL_374;
        case 0x12u:
          *(a1 + 184) |= 0x20000uLL;
          v117 = *(this + 1);
          v116 = *(this + 2);
          v118 = *this;
          if (v117 <= 0xFFFFFFFFFFFFFFF5 && v117 + 10 <= v116)
          {
            v119 = 0;
            v120 = 0;
            v121 = 0;
            v122 = (v118 + v117);
            v123 = v117 + 1;
            do
            {
              *(this + 1) = v123;
              v124 = *v122++;
              v121 |= (v124 & 0x7F) << v119;
              if ((v124 & 0x80) == 0)
              {
                goto LABEL_420;
              }

              v119 += 7;
              ++v123;
              v14 = v120++ > 8;
            }

            while (!v14);
LABEL_298:
            LODWORD(v121) = 0;
            goto LABEL_420;
          }

          v270 = 0;
          v271 = 0;
          v121 = 0;
          v17 = v116 >= v117;
          v272 = v116 - v117;
          if (!v17)
          {
            v272 = 0;
          }

          v273 = (v118 + v117);
          v274 = v117 + 1;
          while (2)
          {
            if (v272)
            {
              v275 = *v273;
              *(this + 1) = v274;
              v121 |= (v275 & 0x7F) << v270;
              if (v275 < 0)
              {
                v270 += 7;
                --v272;
                ++v273;
                ++v274;
                v14 = v271++ > 8;
                if (v14)
                {
                  goto LABEL_298;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v121) = 0;
              }
            }

            else
            {
              LODWORD(v121) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_420:
          *(a1 + 88) = v121;
          goto LABEL_374;
        case 0x13u:
          *(a1 + 184) |= 0x10000uLL;
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
                goto LABEL_432;
              }

              v161 += 7;
              ++v165;
              v14 = v162++ > 8;
            }

            while (!v14);
LABEL_330:
            LODWORD(v163) = 0;
            goto LABEL_432;
          }

          v294 = 0;
          v295 = 0;
          v163 = 0;
          v17 = v158 >= v159;
          v296 = v158 - v159;
          if (!v17)
          {
            v296 = 0;
          }

          v297 = (v160 + v159);
          v298 = v159 + 1;
          while (2)
          {
            if (v296)
            {
              v299 = *v297;
              *(this + 1) = v298;
              v163 |= (v299 & 0x7F) << v294;
              if (v299 < 0)
              {
                v294 += 7;
                --v296;
                ++v297;
                ++v298;
                v14 = v295++ > 8;
                if (v14)
                {
                  goto LABEL_330;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v163) = 0;
              }
            }

            else
            {
              LODWORD(v163) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_432:
          *(a1 + 84) = v163;
          goto LABEL_374;
        case 0x14u:
          *(a1 + 184) |= 0x40000uLL;
          v189 = *(this + 1);
          v188 = *(this + 2);
          v190 = *this;
          if (v189 <= 0xFFFFFFFFFFFFFFF5 && v189 + 10 <= v188)
          {
            v191 = 0;
            v192 = 0;
            v193 = 0;
            v194 = (v190 + v189);
            v195 = v189 + 1;
            do
            {
              *(this + 1) = v195;
              v196 = *v194++;
              v193 |= (v196 & 0x7F) << v191;
              if ((v196 & 0x80) == 0)
              {
                goto LABEL_438;
              }

              v191 += 7;
              ++v195;
              v14 = v192++ > 8;
            }

            while (!v14);
LABEL_352:
            LODWORD(v193) = 0;
            goto LABEL_438;
          }

          v306 = 0;
          v307 = 0;
          v193 = 0;
          v17 = v188 >= v189;
          v308 = v188 - v189;
          if (!v17)
          {
            v308 = 0;
          }

          v309 = (v190 + v189);
          v310 = v189 + 1;
          while (2)
          {
            if (v308)
            {
              v311 = *v309;
              *(this + 1) = v310;
              v193 |= (v311 & 0x7F) << v306;
              if (v311 < 0)
              {
                v306 += 7;
                --v308;
                ++v309;
                ++v310;
                v14 = v307++ > 8;
                if (v14)
                {
                  goto LABEL_352;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v193) = 0;
              }
            }

            else
            {
              LODWORD(v193) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_438:
          *(a1 + 92) = v193;
          goto LABEL_374;
        case 0x15u:
          *(a1 + 184) |= 0x80000uLL;
          v127 = *(this + 1);
          v126 = *(this + 2);
          v128 = *this;
          if (v127 <= 0xFFFFFFFFFFFFFFF5 && v127 + 10 <= v126)
          {
            v129 = 0;
            v130 = 0;
            v131 = 0;
            v132 = (v128 + v127);
            v133 = v127 + 1;
            do
            {
              *(this + 1) = v133;
              v134 = *v132++;
              v131 |= (v134 & 0x7F) << v129;
              if ((v134 & 0x80) == 0)
              {
                goto LABEL_423;
              }

              v129 += 7;
              ++v133;
              v14 = v130++ > 8;
            }

            while (!v14);
LABEL_306:
            LODWORD(v131) = 0;
            goto LABEL_423;
          }

          v276 = 0;
          v277 = 0;
          v131 = 0;
          v17 = v126 >= v127;
          v278 = v126 - v127;
          if (!v17)
          {
            v278 = 0;
          }

          v279 = (v128 + v127);
          v280 = v127 + 1;
          while (2)
          {
            if (v278)
            {
              v281 = *v279;
              *(this + 1) = v280;
              v131 |= (v281 & 0x7F) << v276;
              if (v281 < 0)
              {
                v276 += 7;
                --v278;
                ++v279;
                ++v280;
                v14 = v277++ > 8;
                if (v14)
                {
                  goto LABEL_306;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v131) = 0;
              }
            }

            else
            {
              LODWORD(v131) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_423:
          *(a1 + 96) = v131;
          goto LABEL_374;
        case 0x16u:
          *(a1 + 184) |= 0x8000uLL;
          v137 = *(this + 1);
          v136 = *(this + 2);
          v138 = *this;
          if (v137 <= 0xFFFFFFFFFFFFFFF5 && v137 + 10 <= v136)
          {
            v139 = 0;
            v140 = 0;
            v141 = 0;
            v142 = (v138 + v137);
            v143 = v137 + 1;
            do
            {
              *(this + 1) = v143;
              v144 = *v142++;
              v141 |= (v144 & 0x7F) << v139;
              if ((v144 & 0x80) == 0)
              {
                goto LABEL_426;
              }

              v139 += 7;
              ++v143;
              v14 = v140++ > 8;
            }

            while (!v14);
LABEL_314:
            LODWORD(v141) = 0;
            goto LABEL_426;
          }

          v282 = 0;
          v283 = 0;
          v141 = 0;
          v17 = v136 >= v137;
          v284 = v136 - v137;
          if (!v17)
          {
            v284 = 0;
          }

          v285 = (v138 + v137);
          v286 = v137 + 1;
          while (2)
          {
            if (v284)
            {
              v287 = *v285;
              *(this + 1) = v286;
              v141 |= (v287 & 0x7F) << v282;
              if (v287 < 0)
              {
                v282 += 7;
                --v284;
                ++v285;
                ++v286;
                v14 = v283++ > 8;
                if (v14)
                {
                  goto LABEL_314;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v141) = 0;
              }
            }

            else
            {
              LODWORD(v141) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_426:
          *(a1 + 80) = v141;
          goto LABEL_374;
        case 0x17u:
          *(a1 + 184) |= 0x400uLL;
          v179 = *(this + 1);
          v178 = *(this + 2);
          v180 = *this;
          if (v179 <= 0xFFFFFFFFFFFFFFF5 && v179 + 10 <= v178)
          {
            v181 = 0;
            v182 = 0;
            v183 = 0;
            v184 = (v180 + v179);
            v185 = v179 + 1;
            do
            {
              *(this + 1) = v185;
              v186 = *v184++;
              v183 |= (v186 & 0x7F) << v181;
              if ((v186 & 0x80) == 0)
              {
                goto LABEL_435;
              }

              v181 += 7;
              ++v185;
              v14 = v182++ > 8;
            }

            while (!v14);
LABEL_344:
            LODWORD(v183) = 0;
            goto LABEL_435;
          }

          v300 = 0;
          v301 = 0;
          v183 = 0;
          v17 = v178 >= v179;
          v302 = v178 - v179;
          if (!v17)
          {
            v302 = 0;
          }

          v303 = (v180 + v179);
          v304 = v179 + 1;
          while (2)
          {
            if (v302)
            {
              v305 = *v303;
              *(this + 1) = v304;
              v183 |= (v305 & 0x7F) << v300;
              if (v305 < 0)
              {
                v300 += 7;
                --v302;
                ++v303;
                ++v304;
                v14 = v301++ > 8;
                if (v14)
                {
                  goto LABEL_344;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v183) = 0;
              }
            }

            else
            {
              LODWORD(v183) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_435:
          *(a1 + 60) = v183;
          goto LABEL_374;
        case 0x18u:
          *(a1 + 184) |= 0x2000000000uLL;
          v199 = *(this + 1);
          v198 = *(this + 2);
          v200 = *this;
          if (v199 <= 0xFFFFFFFFFFFFFFF5 && v199 + 10 <= v198)
          {
            v201 = 0;
            v202 = 0;
            v203 = 0;
            v204 = (v200 + v199);
            v205 = v199 + 1;
            do
            {
              *(this + 1) = v205;
              v206 = *v204++;
              v203 |= (v206 & 0x7F) << v201;
              if ((v206 & 0x80) == 0)
              {
                goto LABEL_441;
              }

              v201 += 7;
              ++v205;
              v14 = v202++ > 8;
            }

            while (!v14);
LABEL_360:
            LODWORD(v203) = 0;
            goto LABEL_441;
          }

          v312 = 0;
          v313 = 0;
          v203 = 0;
          v17 = v198 >= v199;
          v314 = v198 - v199;
          if (!v17)
          {
            v314 = 0;
          }

          v315 = (v200 + v199);
          v316 = v199 + 1;
          while (2)
          {
            if (v314)
            {
              v317 = *v315;
              *(this + 1) = v316;
              v203 |= (v317 & 0x7F) << v312;
              if (v317 < 0)
              {
                v312 += 7;
                --v314;
                ++v315;
                ++v316;
                v14 = v313++ > 8;
                if (v14)
                {
                  goto LABEL_360;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v203) = 0;
              }
            }

            else
            {
              LODWORD(v203) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_441:
          *(a1 + 168) = v203;
          goto LABEL_374;
        case 0x19u:
          *(a1 + 184) |= 0x1000uLL;
          v78 = *(this + 1);
          v77 = *(this + 2);
          v79 = *this;
          if (v78 <= 0xFFFFFFFFFFFFFFF5 && v78 + 10 <= v77)
          {
            v80 = 0;
            v81 = 0;
            v82 = 0;
            v83 = (v79 + v78);
            v84 = v78 + 1;
            do
            {
              *(this + 1) = v84;
              v85 = *v83++;
              v82 |= (v85 & 0x7F) << v80;
              if ((v85 & 0x80) == 0)
              {
                goto LABEL_408;
              }

              v80 += 7;
              ++v84;
              v14 = v81++ > 8;
            }

            while (!v14);
LABEL_266:
            LODWORD(v82) = 0;
            goto LABEL_408;
          }

          v246 = 0;
          v247 = 0;
          v82 = 0;
          v17 = v77 >= v78;
          v248 = v77 - v78;
          if (!v17)
          {
            v248 = 0;
          }

          v249 = (v79 + v78);
          v250 = v78 + 1;
          while (2)
          {
            if (v248)
            {
              v251 = *v249;
              *(this + 1) = v250;
              v82 |= (v251 & 0x7F) << v246;
              if (v251 < 0)
              {
                v246 += 7;
                --v248;
                ++v249;
                ++v250;
                v14 = v247++ > 8;
                if (v14)
                {
                  goto LABEL_266;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v82) = 0;
              }
            }

            else
            {
              LODWORD(v82) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_408:
          *(a1 + 68) = v82;
          goto LABEL_374;
        case 0x1Au:
          *(a1 + 184) |= 0x20000000uLL;
          v69 = *(this + 1);
          v68 = *(this + 2);
          v70 = *this;
          if (v69 <= 0xFFFFFFFFFFFFFFF5 && v69 + 10 <= v68)
          {
            v71 = 0;
            v72 = 0;
            v73 = 0;
            v74 = (v70 + v69);
            v75 = v69 + 1;
            do
            {
              *(this + 1) = v75;
              v76 = *v74++;
              v73 |= (v76 & 0x7F) << v71;
              if ((v76 & 0x80) == 0)
              {
                goto LABEL_405;
              }

              v71 += 7;
              ++v75;
              v14 = v72++ > 8;
            }

            while (!v14);
LABEL_258:
            LODWORD(v73) = 0;
            goto LABEL_405;
          }

          v240 = 0;
          v241 = 0;
          v73 = 0;
          v17 = v68 >= v69;
          v242 = v68 - v69;
          if (!v17)
          {
            v242 = 0;
          }

          v243 = (v70 + v69);
          v244 = v69 + 1;
          while (2)
          {
            if (v242)
            {
              v245 = *v243;
              *(this + 1) = v244;
              v73 |= (v245 & 0x7F) << v240;
              if (v245 < 0)
              {
                v240 += 7;
                --v242;
                ++v243;
                ++v244;
                v14 = v241++ > 8;
                if (v14)
                {
                  goto LABEL_258;
                }

                continue;
              }

              if (*(this + 24))
              {
                LODWORD(v73) = 0;
              }
            }

            else
            {
              LODWORD(v73) = 0;
              *(this + 24) = 1;
            }

            break;
          }

LABEL_405:
          *(a1 + 136) = v73;
          goto LABEL_374;
        case 0x1Bu:
          *(a1 + 184) |= 0x10uLL;
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
                goto LABEL_444;
              }

              v216 += 7;
              ++v220;
              v14 = v217++ > 8;
            }

            while (!v14);
LABEL_370:
            LODWORD(v218) = 0;
            goto LABEL_444;
          }

          v318 = 0;
          v319 = 0;
          v218 = 0;
          v17 = v213 >= v214;
          v320 = v213 - v214;
          if (!v17)
          {
            v320 = 0;
          }

          v321 = (v215 + v214);
          v322 = v214 + 1;
          while (2)
          {
            if (v320)
            {
              v323 = *v321;
              *(this + 1) = v322;
              v218 |= (v323 & 0x7F) << v318;
              if (v323 < 0)
              {
                v318 += 7;
                --v320;
                ++v321;
                ++v322;
                v14 = v319++ > 8;
                if (v14)
                {
                  goto LABEL_370;
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

LABEL_444:
          *(a1 + 36) = v218;
          goto LABEL_374;
        case 0x1Cu:
          *(a1 + 184) |= 0x400000000uLL;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFFBLL || v27 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 156) = *(*this + v27);
          goto LABEL_372;
        case 0x1Du:
          *(a1 + 184) |= 0x20000000000uLL;
          v207 = *(this + 1);
          if (v207 >= *(this + 2))
          {
            v210 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v208 = v207 + 1;
            v209 = *(*this + v207);
            *(this + 1) = v208;
            v210 = v209 != 0;
          }

          *(a1 + 178) = v210;
          goto LABEL_374;
        case 0x1Eu:
          *(a1 + 184) |= 0x800000000uLL;
          v211 = *(this + 1);
          if (v211 > 0xFFFFFFFFFFFFFFFBLL || v211 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 160) = *(*this + v211);
          goto LABEL_372;
        case 0x1Fu:
          *(a1 + 184) |= 0x40000000000uLL;
          v173 = *(this + 1);
          if (v173 >= *(this + 2))
          {
            v176 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v174 = v173 + 1;
            v175 = *(*this + v173);
            *(this + 1) = v174;
            v176 = v175 != 0;
          }

          *(a1 + 179) = v176;
          goto LABEL_374;
        case 0x20u:
          *(a1 + 184) |= 0x20uLL;
          v108 = *(this + 1);
          v107 = *(this + 2);
          v109 = *this;
          if (v108 <= 0xFFFFFFFFFFFFFFF5 && v108 + 10 <= v107)
          {
            v110 = 0;
            v111 = 0;
            v112 = 0;
            v113 = (v109 + v108);
            v114 = v108 + 1;
            do
            {
              *(this + 1) = v114;
              v115 = *v113++;
              v112 |= (v115 & 0x7F) << v110;
              if ((v115 & 0x80) == 0)
              {
                goto LABEL_417;
              }

              v110 += 7;
              ++v114;
              v14 = v111++ > 8;
            }

            while (!v14);
LABEL_290:
            LODWORD(v112) = 0;
            goto LABEL_417;
          }

          v264 = 0;
          v265 = 0;
          v112 = 0;
          v17 = v107 >= v108;
          v266 = v107 - v108;
          if (!v17)
          {
            v266 = 0;
          }

          v267 = (v109 + v108);
          v268 = v108 + 1;
          break;
        case 0x21u:
          *(a1 + 184) |= 0x80uLL;
          v177 = *(this + 1);
          if (v177 > 0xFFFFFFFFFFFFFFFBLL || v177 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 48) = *(*this + v177);
          goto LABEL_372;
        case 0x22u:
          *(a1 + 184) |= 0x4000000uLL;
          v48 = *(this + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 124) = *(*this + v48);
          goto LABEL_372;
        case 0x23u:
          *(a1 + 184) |= 0x8000000uLL;
          v28 = *(this + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 128) = *(*this + v28);
          goto LABEL_372;
        case 0x24u:
          *(a1 + 184) |= 0x10000000uLL;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 132) = *(*this + v25);
          goto LABEL_372;
        case 0x25u:
          *(a1 + 184) |= 0x40uLL;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 44) = *(*this + v26);
          goto LABEL_372;
        case 0x26u:
          *(a1 + 184) |= 0x100uLL;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 52) = *(*this + v24);
          goto LABEL_372;
        case 0x27u:
          *(a1 + 184) |= 0x200uLL;
          v212 = *(this + 1);
          if (v212 > 0xFFFFFFFFFFFFFFFBLL || v212 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 56) = *(*this + v212);
          goto LABEL_372;
        case 0x28u:
          *(a1 + 184) |= 0x400000uLL;
          v187 = *(this + 1);
          if (v187 > 0xFFFFFFFFFFFFFFFBLL || v187 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 108) = *(*this + v187);
          goto LABEL_372;
        case 0x29u:
          *(a1 + 184) |= 0x800000uLL;
          v54 = *(this + 1);
          if (v54 > 0xFFFFFFFFFFFFFFFBLL || v54 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 112) = *(*this + v54);
          goto LABEL_372;
        case 0x2Au:
          *(a1 + 184) |= 0x1000000uLL;
          v125 = *(this + 1);
          if (v125 > 0xFFFFFFFFFFFFFFFBLL || v125 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 116) = *(*this + v125);
          goto LABEL_372;
        case 0x2Bu:
          *(a1 + 184) |= 0x40000000uLL;
          v197 = *(this + 1);
          if (v197 > 0xFFFFFFFFFFFFFFFBLL || v197 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 140) = *(*this + v197);
          goto LABEL_372;
        case 0x2Cu:
          *(a1 + 184) |= 0x80000000uLL;
          v23 = *(this + 1);
          if (v23 > 0xFFFFFFFFFFFFFFFBLL || v23 + 4 > *(this + 2))
          {
            goto LABEL_215;
          }

          *(a1 + 144) = *(*this + v23);
          goto LABEL_372;
        case 0x2Du:
          *(a1 + 184) |= 0x100000000uLL;
          v38 = *(this + 1);
          if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
          {
LABEL_215:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 148) = *(*this + v38);
LABEL_372:
            v168 = *(this + 1) + 4;
LABEL_373:
            *(this + 1) = v168;
          }

          goto LABEL_374;
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_374;
          }

          v325 = 0;
          return v325 & 1;
      }

      while (1)
      {
        if (!v266)
        {
          LODWORD(v112) = 0;
          *(this + 24) = 1;
          goto LABEL_417;
        }

        v269 = *v267;
        *(this + 1) = v268;
        v112 |= (v269 & 0x7F) << v264;
        if ((v269 & 0x80) == 0)
        {
          break;
        }

        v264 += 7;
        --v266;
        ++v267;
        ++v268;
        v14 = v265++ > 8;
        if (v14)
        {
          goto LABEL_290;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v112) = 0;
      }

LABEL_417:
      *(a1 + 40) = v112;
LABEL_374:
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

LABEL_446:
  v325 = v4 ^ 1;
  return v325 & 1;
}

uint64_t sub_19B578B98(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 184);
  if ((v4 & 4) != 0)
  {
    result = PB::Writer::write(this, *(result + 24));
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

  result = PB::Writer::write(this, *(v3 + 8));
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::write(this, *(v3 + 164));
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this, *(v3 + 64));
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this, *(v3 + 120));
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::write(this, *(v3 + 16));
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
  result = PB::Writer::write(this, *(v3 + 32));
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::write(this, *(v3 + 156));
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::write(this, *(v3 + 160));
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
  result = PB::Writer::write(this);
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
  result = PB::Writer::writeVarInt(this);
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
  result = PB::Writer::write(this, *(v3 + 48));
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
  result = PB::Writer::write(this, *(v3 + 124));
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
  result = PB::Writer::write(this, *(v3 + 128));
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
  result = PB::Writer::write(this, *(v3 + 132));
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
  result = PB::Writer::write(this, *(v3 + 44));
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
  result = PB::Writer::write(this, *(v3 + 52));
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
  result = PB::Writer::write(this, *(v3 + 56));
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
  result = PB::Writer::write(this, *(v3 + 108));
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
  result = PB::Writer::write(this, *(v3 + 112));
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
  result = PB::Writer::write(this, *(v3 + 116));
  v4 = *(v3 + 184);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_44:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_90:
    result = PB::Writer::write(this, *(v3 + 144));
    if ((*(v3 + 184) & 0x100000000) == 0)
    {
      return result;
    }

    goto LABEL_91;
  }

LABEL_89:
  result = PB::Writer::write(this, *(v3 + 140));
  v4 = *(v3 + 184);
  if ((v4 & 0x80000000) != 0)
  {
    goto LABEL_90;
  }

LABEL_45:
  if ((v4 & 0x100000000) == 0)
  {
    return result;
  }

LABEL_91:
  v5 = *(v3 + 148);

  return PB::Writer::write(this, v5);
}

uint64_t sub_19B5790BC(uint64_t result)
{
  *result = &unk_1F0E398D8;
  *(result + 24) = 0;
  return result;
}

void sub_19B5790E4(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B57911C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    PB::TextFormatter::format(this, "endTime", *(a1 + 8));
    v5 = *(a1 + 24);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "startTime", *(a1 + 16));
  }

  return MEMORY[0x1EEE30A90](this);
}

uint64_t sub_19B579198(uint64_t a1, PB::Reader *this)
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

uint64_t sub_19B579398(uint64_t result, PB::Writer *this)
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

uint64_t sub_19B579404(uint64_t result)
{
  *result = &unk_1F0E39910;
  *(result + 40) = 0;
  return result;
}

void sub_19B57942C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x19EAE76F0);
}

uint64_t sub_19B579464(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "asymmetryProbability", *(a1 + 16));
    v5 = *(a1 + 40);
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

  else if ((*(a1 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "cycleTime", *(a1 + 20));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "distance", *(a1 + 24));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "doubleSupportPercentage", *(a1 + 28));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "startTime", *(a1 + 8));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "stepLength", *(a1 + 32));
  if ((*(a1 + 40) & 0x40) != 0)
  {
LABEL_8:
    PB::TextFormatter::format(this, "walkingSpeed", *(a1 + 36));
  }

LABEL_9:

  return MEMORY[0x1EEE30A90](this);
}