uint64_t sub_245EDAD48(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 128);
  v5 = *(result + 136);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::write(this, v6);
  }

  v7 = *(v3 + 104);
  v8 = *(v3 + 112);
  while (v7 != v8)
  {
    v9 = *v7++;
    result = PB::Writer::write(this, v9);
  }

  v10 = *(v3 + 152);
  v11 = *(v3 + 160);
  while (v10 != v11)
  {
    v12 = *v10++;
    result = PB::Writer::write(this, v12);
  }

  if (*(v3 + 180))
  {
    result = PB::Writer::write(this, *(v3 + 176));
  }

  v13 = *(v3 + 80);
  v14 = *(v3 + 88);
  while (v13 != v14)
  {
    v13 += 4;
    result = PB::Writer::writeVarInt(this);
  }

  v15 = *(v3 + 8);
  v16 = *(v3 + 16);
  while (v15 != v16)
  {
    v15 += 4;
    result = PB::Writer::writeVarInt(this);
  }

  v17 = *(v3 + 32);
  v18 = *(v3 + 40);
  while (v17 != v18)
  {
    v17 += 4;
    result = PB::Writer::writeVarInt(this);
  }

  v20 = *(v3 + 56);
  v19 = *(v3 + 64);
  while (v20 != v19)
  {
    v20 += 4;
    result = PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245EDAE6C(uint64_t result)
{
  *result = &unk_2858D4FD8;
  *(result + 68) = 0;
  return result;
}

void sub_245EDAE94(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDAECC(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D4FD8;
  *(result + 68) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 8) != 0)
  {
    v4 = *(a2 + 32);
    v3 = 8;
    *(result + 68) = 8;
    *(result + 32) = v4;
    v2 = *(a2 + 68);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x10) != 0)
  {
LABEL_5:
    v5 = *(a2 + 40);
    v3 |= 0x10u;
    *(result + 68) = v3;
    *(result + 40) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 68) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 1) == 0)
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

  v7 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 68) = v3;
  *(result + 48) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = *(a2 + 8);
  v3 |= 1u;
  *(result + 68) = v3;
  *(result + 8) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_17:
  v9 = *(a2 + 24);
  v3 |= 4u;
  *(result + 68) = v3;
  *(result + 24) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 0x40) == 0)
  {
LABEL_11:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = *(a2 + 56);
  v3 |= 0x40u;
  *(result + 68) = v3;
  *(result + 56) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 0x100) == 0)
  {
LABEL_12:
    if ((v2 & 0x80) == 0)
    {
      return result;
    }

LABEL_20:
    v12 = *(a2 + 60);
    *(result + 68) = v3 | 0x80;
    *(result + 60) = v12;
    return result;
  }

LABEL_19:
  v11 = *(a2 + 64);
  v3 |= 0x100u;
  *(result + 68) = v3;
  *(result + 64) = v11;
  if ((*(a2 + 68) & 0x80) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_245EDAFF4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "maxMean", *(a1 + 8));
    v5 = *(a1 + 68);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
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

  PB::TextFormatter::format(this, "mean", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "meanN");
  v5 = *(a1 + 68);
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
  PB::TextFormatter::format(this, "minMean", *(a1 + 24));
  v5 = *(a1 + 68);
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
  PB::TextFormatter::format(this, "speedLB", *(a1 + 32));
  v5 = *(a1 + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "speedUB", *(a1 + 40));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "updateN");
  v5 = *(a1 + 68);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PB::TextFormatter::format(this, "variance", *(a1 + 48));
  if ((*(a1 + 68) & 0x100) != 0)
  {
LABEL_10:
    PB::TextFormatter::format(this, "varianceN");
  }

LABEL_11:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDB158(uint64_t a1, PB::Reader *this)
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
            goto LABEL_120;
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
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_65:
              *(this + 24) = 1;
              goto LABEL_116;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_100;
          }

          if (v22 == 4)
          {
            *(a1 + 68) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 48) = *(*this + v2);
            goto LABEL_100;
          }
        }

        else
        {
          if (v22 == 1)
          {
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_100;
          }

          if (v22 == 2)
          {
            *(a1 + 68) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_65;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_100;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 68) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_65;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_100;
        }

        if (v22 == 6)
        {
          *(a1 + 68) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_65;
          }

          *(a1 + 24) = *(*this + v2);
LABEL_100:
          v2 = *(this + 1) + 8;
          *(this + 1) = v2;
          goto LABEL_116;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 68) |= 0x40u;
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
                  goto LABEL_107;
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
                  goto LABEL_106;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v35) = 0;
              }

LABEL_106:
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

LABEL_107:
            *(a1 + 56) = v35;
            goto LABEL_116;
          case 8:
            *(a1 + 68) |= 0x100u;
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
                  goto LABEL_115;
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
                  goto LABEL_114;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v43) = 0;
              }

LABEL_114:
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

LABEL_115:
            *(a1 + 64) = v43;
            goto LABEL_116;
          case 9:
            *(a1 + 68) |= 0x80u;
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
                  goto LABEL_111;
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
                  goto LABEL_110;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v27) = 0;
              }

LABEL_110:
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

LABEL_111:
            *(a1 + 60) = v27;
            goto LABEL_116;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v68 = 0;
        return v68 & 1;
      }

      v2 = *(this + 1);
LABEL_116:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_120:
  v68 = v4 ^ 1;
  return v68 & 1;
}

uint64_t sub_245EDB794(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::write(this, *(result + 32));
    v4 = *(v3 + 68);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
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

  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 68) & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
    return result;
  }

LABEL_19:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EDB8C8(uint64_t result)
{
  *result = &unk_2858D5010;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_245EDB8F0(PB::Base *this)
{
  *this = &unk_2858D5010;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EDB954(PB::Base *a1)
{
  sub_245EDB8F0(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDB98C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5010;
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

uint64_t sub_245EDBA14(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "pose", v7);
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 32));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDBAB0(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EDBE7C(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EDBEE0(uint64_t result)
{
  *result = &unk_2858D5048;
  *(result + 100) = 0;
  return result;
}

void sub_245EDBF08(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDBF40(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5048;
  *(result + 100) = 0;
  v2 = *(a2 + 100);
  if ((v2 & 0x80) != 0)
  {
    v4 = *(a2 + 64);
    v3 = 128;
    *(result + 100) = 128;
    *(result + 64) = v4;
    v2 = *(a2 + 100);
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
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 100) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 100);
  }

LABEL_6:
  if (v2)
  {
    v6 = *(a2 + 8);
    v3 |= 1u;
    *(result + 100) = v3;
    *(result + 8) = v6;
    v2 = *(a2 + 100);
    if ((v2 & 4) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 24);
  v3 |= 4u;
  *(result + 100) = v3;
  *(result + 24) = v7;
  v2 = *(a2 + 100);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = *(a2 + 56);
  v3 |= 0x40u;
  *(result + 100) = v3;
  *(result + 56) = v8;
  v2 = *(a2 + 100);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a2 + 48);
  v3 |= 0x20u;
  *(result + 100) = v3;
  *(result + 48) = v9;
  v2 = *(a2 + 100);
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 100) = v3;
  *(result + 40) = v10;
  v2 = *(a2 + 100);
  if ((v2 & 8) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = *(a2 + 32);
  v3 |= 8u;
  *(result + 100) = v3;
  *(result + 32) = v11;
  v2 = *(a2 + 100);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = *(a2 + 72);
  v3 |= 0x100u;
  *(result + 100) = v3;
  *(result + 72) = v12;
  v2 = *(a2 + 100);
  if ((v2 & 0x400) == 0)
  {
LABEL_14:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = *(a2 + 84);
  v3 |= 0x400u;
  *(result + 100) = v3;
  *(result + 84) = v13;
  v2 = *(a2 + 100);
  if ((v2 & 0x800) == 0)
  {
LABEL_15:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_28;
  }

LABEL_27:
  v14 = *(a2 + 88);
  v3 |= 0x800u;
  *(result + 100) = v3;
  *(result + 88) = v14;
  v2 = *(a2 + 100);
  if ((v2 & 0x1000) == 0)
  {
LABEL_16:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

LABEL_28:
  v15 = *(a2 + 92);
  v3 |= 0x1000u;
  *(result + 100) = v3;
  *(result + 92) = v15;
  v2 = *(a2 + 100);
  if ((v2 & 0x200) == 0)
  {
LABEL_17:
    if ((v2 & 0x2000) == 0)
    {
      return result;
    }

LABEL_30:
    v17 = *(a2 + 96);
    *(result + 100) = v3 | 0x2000;
    *(result + 96) = v17;
    return result;
  }

LABEL_29:
  v16 = *(a2 + 80);
  v3 |= 0x200u;
  *(result + 100) = v3;
  *(result + 80) = v16;
  if ((*(a2 + 100) & 0x2000) != 0)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_245EDC0F4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 100);
  if (v5)
  {
    PB::TextFormatter::format(this, "accuracy", *(a1 + 8));
    v5 = *(a1 + 100);
    if ((v5 & 0x200) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*(a1 + 100) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "batchedLocationFixType");
  v5 = *(a1 + 100);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "distance", *(a1 + 16));
  v5 = *(a1 + 100);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "gpsAltitude", *(a1 + 24));
  v5 = *(a1 + 100);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  PB::TextFormatter::format(this, "gpsSpeedAccuracy", *(a1 + 32));
  v5 = *(a1 + 100);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  PB::TextFormatter::format(this, "odometer", *(a1 + 40));
  v5 = *(a1 + 100);
  if ((v5 & 0x400) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  PB::TextFormatter::format(this, "originDevice");
  v5 = *(a1 + 100);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  PB::TextFormatter::format(this, "quality");
  v5 = *(a1 + 100);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "rawSpeed", *(a1 + 48));
  v5 = *(a1 + 100);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "speed", *(a1 + 56));
  v5 = *(a1 + 100);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "startTime", *(a1 + 64));
  v5 = *(a1 + 100);
  if ((v5 & 0x100) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "timestampGps", *(a1 + 72));
  v5 = *(a1 + 100);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  PB::TextFormatter::format(this, "trackRunOdometerHasBeenCorrected");
  if ((*(a1 + 100) & 0x1000) != 0)
  {
LABEL_15:
    PB::TextFormatter::format(this, "type");
  }

LABEL_16:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDC2F8(uint64_t a1, PB::Reader *this)
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
        goto LABEL_142;
      }

      switch((v10 >> 3))
      {
        case 1u:
          *(a1 + 100) |= 0x80u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 64) = *(*this + v2);
          goto LABEL_117;
        case 2u:
          *(a1 + 100) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_117;
        case 3u:
          *(a1 + 100) |= 1u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 8) = *(*this + v2);
          goto LABEL_117;
        case 4u:
          *(a1 + 100) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_117;
        case 5u:
          *(a1 + 100) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 56) = *(*this + v2);
          goto LABEL_117;
        case 6u:
          *(a1 + 100) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 48) = *(*this + v2);
          goto LABEL_117;
        case 7u:
          *(a1 + 100) |= 0x10u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 40) = *(*this + v2);
          goto LABEL_117;
        case 8u:
          *(a1 + 100) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
          {
            goto LABEL_79;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_117;
        case 9u:
          *(a1 + 100) |= 0x100u;
          v2 = *(this + 1);
          if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(this + 2))
          {
            *(a1 + 72) = *(*this + v2);
LABEL_117:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
          }

          else
          {
LABEL_79:
            *(this + 24) = 1;
          }

          goto LABEL_138;
        case 0xAu:
          *(a1 + 100) |= 0x400u;
          v38 = *(this + 1);
          v2 = *(this + 2);
          v39 = *this;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v2)
          {
            v70 = 0;
            v71 = 0;
            v42 = 0;
            if (v2 <= v38)
            {
              v2 = *(this + 1);
            }

            v72 = v2 - v38;
            v73 = (v39 + v38);
            v74 = v38 + 1;
            while (1)
            {
              if (!v72)
              {
                LODWORD(v42) = 0;
                *(this + 24) = 1;
                goto LABEL_133;
              }

              v75 = v74;
              v76 = *v73;
              *(this + 1) = v75;
              v42 |= (v76 & 0x7F) << v70;
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
                LODWORD(v42) = 0;
LABEL_132:
                v2 = v75;
                goto LABEL_133;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v42) = 0;
            }

            goto LABEL_132;
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
              goto LABEL_133;
            }

            v40 += 7;
            ++v44;
            v14 = v41++ > 8;
          }

          while (!v14);
          LODWORD(v42) = 0;
LABEL_133:
          *(a1 + 84) = v42;
          goto LABEL_138;
        case 0xBu:
          *(a1 + 100) |= 0x800u;
          v48 = *(this + 1);
          v2 = *(this + 2);
          v49 = *this;
          if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v2)
          {
            v77 = 0;
            v78 = 0;
            v52 = 0;
            if (v2 <= v48)
            {
              v2 = *(this + 1);
            }

            v79 = v2 - v48;
            v80 = (v49 + v48);
            v81 = v48 + 1;
            while (1)
            {
              if (!v79)
              {
                LODWORD(v52) = 0;
                *(this + 24) = 1;
                goto LABEL_137;
              }

              v82 = v81;
              v83 = *v80;
              *(this + 1) = v82;
              v52 |= (v83 & 0x7F) << v77;
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
                LODWORD(v52) = 0;
LABEL_136:
                v2 = v82;
                goto LABEL_137;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v52) = 0;
            }

            goto LABEL_136;
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
              goto LABEL_137;
            }

            v50 += 7;
            ++v54;
            v14 = v51++ > 8;
          }

          while (!v14);
          LODWORD(v52) = 0;
LABEL_137:
          *(a1 + 88) = v52;
          goto LABEL_138;
        case 0xCu:
          *(a1 + 100) |= 0x1000u;
          v22 = *(this + 1);
          v2 = *(this + 2);
          v23 = *this;
          if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
          {
            v56 = 0;
            v57 = 0;
            v26 = 0;
            if (v2 <= v22)
            {
              v2 = *(this + 1);
            }

            v58 = v2 - v22;
            v59 = (v23 + v22);
            v60 = v22 + 1;
            while (1)
            {
              if (!v58)
              {
                LODWORD(v26) = 0;
                *(this + 24) = 1;
                goto LABEL_125;
              }

              v61 = v60;
              v62 = *v59;
              *(this + 1) = v61;
              v26 |= (v62 & 0x7F) << v56;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v56 += 7;
              --v58;
              ++v59;
              v60 = v61 + 1;
              v14 = v57++ > 8;
              if (v14)
              {
                LODWORD(v26) = 0;
LABEL_124:
                v2 = v61;
                goto LABEL_125;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v26) = 0;
            }

            goto LABEL_124;
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
              goto LABEL_125;
            }

            v24 += 7;
            ++v28;
            v14 = v25++ > 8;
          }

          while (!v14);
          LODWORD(v26) = 0;
LABEL_125:
          *(a1 + 92) = v26;
          goto LABEL_138;
        case 0xDu:
          *(a1 + 100) |= 0x200u;
          v30 = *(this + 1);
          v2 = *(this + 2);
          v31 = *this;
          if (v30 > 0xFFFFFFFFFFFFFFF5 || v30 + 10 > v2)
          {
            v63 = 0;
            v64 = 0;
            v34 = 0;
            if (v2 <= v30)
            {
              v2 = *(this + 1);
            }

            v65 = v2 - v30;
            v66 = (v31 + v30);
            v67 = v30 + 1;
            while (1)
            {
              if (!v65)
              {
                LODWORD(v34) = 0;
                *(this + 24) = 1;
                goto LABEL_129;
              }

              v68 = v67;
              v69 = *v66;
              *(this + 1) = v68;
              v34 |= (v69 & 0x7F) << v63;
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
                LODWORD(v34) = 0;
LABEL_128:
                v2 = v68;
                goto LABEL_129;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v34) = 0;
            }

            goto LABEL_128;
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
              goto LABEL_129;
            }

            v32 += 7;
            ++v36;
            v14 = v33++ > 8;
          }

          while (!v14);
          LODWORD(v34) = 0;
LABEL_129:
          *(a1 + 80) = v34;
          goto LABEL_138;
        case 0xEu:
          *(a1 + 100) |= 0x2000u;
          v2 = *(this + 1);
          if (v2 >= *(this + 2))
          {
            v47 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v46 = *(*this + v2++);
            *(this + 1) = v2;
            v47 = v46 != 0;
          }

          *(a1 + 96) = v47;
          goto LABEL_138;
        default:
          if (!PB::Reader::skip(this))
          {
            v84 = 0;
            return v84 & 1;
          }

          v2 = *(this + 1);
LABEL_138:
          v3 = *(this + 2);
          v4 = *(this + 24);
          if (v2 >= v3 || (*(this + 24) & 1) != 0)
          {
            goto LABEL_142;
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

LABEL_142:
  v84 = v4 ^ 1;
  return v84 & 1;
}

uint64_t sub_245EDCB28(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 100);
  if ((v4 & 0x80) != 0)
  {
    result = PB::Writer::write(this, *(result + 64));
    v4 = *(v3 + 100);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 100);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 100);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 100);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 100);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 100);
  if ((v4 & 0x10) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 100);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 100);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 72));
  v4 = *(v3 + 100);
  if ((v4 & 0x400) == 0)
  {
LABEL_11:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x800) == 0)
  {
LABEL_12:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x1000) == 0)
  {
LABEL_13:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 100) & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_29;
  }

LABEL_27:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 100);
  if ((v4 & 0x200) != 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  if ((v4 & 0x2000) == 0)
  {
    return result;
  }

LABEL_29:

  return PB::Writer::write(this);
}

uint64_t sub_245EDCCE8(uint64_t result)
{
  *result = &unk_2858D5080;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

void sub_245EDCD10(PB::Base *this)
{
  *this = &unk_2858D5080;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EDCD94(PB::Base *a1)
{
  sub_245EDCD10(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDCDCC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5080;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 72))
  {
    operator new();
  }

  v2 = *(a2 + 80);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 24);
    *(a1 + 80) |= 4u;
    *(a1 + 24) = v4;
    v2 = *(a2 + 80);
    if ((v2 & 8) == 0)
    {
LABEL_5:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a2 + 80) & 8) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 32);
  *(a1 + 80) |= 8u;
  *(a1 + 32) = v5;
  v2 = *(a2 + 80);
  if ((v2 & 0x40) == 0)
  {
LABEL_6:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = *(a2 + 56);
  *(a1 + 80) |= 0x40u;
  *(a1 + 56) = v6;
  v2 = *(a2 + 80);
  if ((v2 & 0x80) == 0)
  {
LABEL_7:
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = *(a2 + 64);
  *(a1 + 80) |= 0x80u;
  *(a1 + 64) = v7;
  v2 = *(a2 + 80);
  if ((v2 & 2) == 0)
  {
LABEL_8:
    if ((v2 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 16);
  *(a1 + 80) |= 2u;
  *(a1 + 16) = v8;
  v2 = *(a2 + 80);
  if ((v2 & 1) == 0)
  {
LABEL_9:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 8);
  *(a1 + 80) |= 1u;
  *(a1 + 8) = v9;
  v2 = *(a2 + 80);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x10) == 0)
    {
      return a1;
    }

    goto LABEL_11;
  }

LABEL_19:
  v10 = *(a2 + 48);
  *(a1 + 80) |= 0x20u;
  *(a1 + 48) = v10;
  if ((*(a2 + 80) & 0x10) == 0)
  {
    return a1;
  }

LABEL_11:
  v3 = *(a2 + 40);
  *(a1 + 80) |= 0x10u;
  *(a1 + 40) = v3;
  return a1;
}

uint64_t sub_245EDCF7C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if (v5)
  {
    PB::TextFormatter::format(this, "gpsCourseAccuracy", *(a1 + 8));
    v5 = *(a1 + 80);
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

  else if ((*(a1 + 80) & 2) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "gpsCourseRadians", *(a1 + 16));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "groundAltitude", *(a1 + 24));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "groundAltitudeUncertainty", *(a1 + 32));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "maxAbsSlope", *(a1 + 40));
  v5 = *(a1 + 80);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    PB::TextFormatter::format(this, "smoothedGPSAltitude", *(a1 + 56));
    if ((*(a1 + 80) & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_19:
  PB::TextFormatter::format(this, "slope", *(a1 + 48));
  v5 = *(a1 + 80);
  if ((v5 & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_21:
  PB::TextFormatter::format(this, "smoothedGPSAltitudeUncertainty", *(a1 + 64));
LABEL_9:
  v6 = *(a1 + 72);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "super");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDD0F8(uint64_t a1, PB::Reader *this)
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
      if ((v10 >> 3) <= 4)
      {
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *(a1 + 80) |= 8u;
            v27 = *(this + 1);
            if (v27 > 0xFFFFFFFFFFFFFFF7 || v27 + 8 > *(this + 2))
            {
LABEL_58:
              *(this + 24) = 1;
              goto LABEL_63;
            }

            *(a1 + 32) = *(*this + v27);
            goto LABEL_62;
          }

          if (v22 == 4)
          {
            *(a1 + 80) |= 0x40u;
            v25 = *(this + 1);
            if (v25 > 0xFFFFFFFFFFFFFFF7 || v25 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 56) = *(*this + v25);
            goto LABEL_62;
          }
        }

        else
        {
          if (v22 == 1)
          {
            operator new();
          }

          if (v22 == 2)
          {
            *(a1 + 80) |= 4u;
            v24 = *(this + 1);
            if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 24) = *(*this + v24);
            goto LABEL_62;
          }
        }
      }

      else if (v22 <= 6)
      {
        if (v22 == 5)
        {
          *(a1 + 80) |= 0x80u;
          v29 = *(this + 1);
          if (v29 > 0xFFFFFFFFFFFFFFF7 || v29 + 8 > *(this + 2))
          {
            goto LABEL_58;
          }

          *(a1 + 64) = *(*this + v29);
          goto LABEL_62;
        }

        if (v22 == 6)
        {
          *(a1 + 80) |= 2u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFF7 || v26 + 8 > *(this + 2))
          {
            goto LABEL_58;
          }

          *(a1 + 16) = *(*this + v26);
          goto LABEL_62;
        }
      }

      else
      {
        switch(v22)
        {
          case 7:
            *(a1 + 80) |= 1u;
            v28 = *(this + 1);
            if (v28 > 0xFFFFFFFFFFFFFFF7 || v28 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 8) = *(*this + v28);
            goto LABEL_62;
          case 8:
            *(a1 + 80) |= 0x20u;
            v30 = *(this + 1);
            if (v30 > 0xFFFFFFFFFFFFFFF7 || v30 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 48) = *(*this + v30);
            goto LABEL_62;
          case 9:
            *(a1 + 80) |= 0x10u;
            v23 = *(this + 1);
            if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(this + 2))
            {
              goto LABEL_58;
            }

            *(a1 + 40) = *(*this + v23);
LABEL_62:
            *(this + 1) += 8;
            goto LABEL_63;
        }
      }

      if ((PB::Reader::skip(this) & 1) == 0)
      {
        v32 = 0;
        return v32 & 1;
      }

LABEL_63:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_67:
  v32 = v4 ^ 1;
  return v32 & 1;
}

uint64_t sub_245EDD568(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 72);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4);
  }

  v5 = *(v3 + 80);
  if ((v5 & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 24));
    v5 = *(v3 + 80);
    if ((v5 & 8) == 0)
    {
LABEL_5:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*(v3 + 80) & 8) == 0)
  {
    goto LABEL_5;
  }

  result = PB::Writer::write(this, *(v3 + 32));
  v5 = *(v3 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 56));
  v5 = *(v3 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 64));
  v5 = *(v3 + 80);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this, *(v3 + 16));
  v5 = *(v3 + 80);
  if ((v5 & 1) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    result = PB::Writer::write(this, *(v3 + 48));
    if ((*(v3 + 80) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_19;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 8));
  v5 = *(v3 + 80);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_18;
  }

LABEL_10:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

LABEL_19:
  v6 = *(v3 + 40);

  return PB::Writer::write(this, v6);
}

uint64_t sub_245EDD694(uint64_t result)
{
  *result = &unk_2858D50B8;
  *(result + 68) = 0;
  return result;
}

void sub_245EDD6BC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDD6F4(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D50B8;
  *(result + 68) = 0;
  v2 = *(a2 + 68);
  if ((v2 & 0x40) != 0)
  {
    v4 = *(a2 + 52);
    v3 = 64;
    *(result + 68) = 64;
    *(result + 52) = v4;
    v2 = *(a2 + 68);
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
    v5 = *(a2 + 56);
    v3 |= 0x80u;
    *(result + 68) = v3;
    *(result + 56) = v5;
    v2 = *(a2 + 68);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    v6 = *(a2 + 16);
    v3 |= 2u;
    *(result + 68) = v3;
    *(result + 16) = v6;
    v2 = *(a2 + 68);
    if ((v2 & 1) == 0)
    {
LABEL_8:
      if ((v2 & 0x200) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v2 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 8);
  v3 |= 1u;
  *(result + 68) = v3;
  *(result + 8) = v7;
  v2 = *(a2 + 68);
  if ((v2 & 0x200) == 0)
  {
LABEL_9:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = *(a2 + 64);
  v3 |= 0x200u;
  *(result + 68) = v3;
  *(result + 64) = v8;
  v2 = *(a2 + 68);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(a2 + 40);
  v3 |= 0x10u;
  *(result + 68) = v3;
  *(result + 40) = v9;
  v2 = *(a2 + 68);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = *(a2 + 32);
  v3 |= 8u;
  *(result + 68) = v3;
  *(result + 32) = v10;
  v2 = *(a2 + 68);
  if ((v2 & 4) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = *(a2 + 24);
  v3 |= 4u;
  *(result + 68) = v3;
  *(result + 24) = v11;
  v2 = *(a2 + 68);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      return result;
    }

LABEL_22:
    v13 = *(a2 + 48);
    *(result + 68) = v3 | 0x20;
    *(result + 48) = v13;
    return result;
  }

LABEL_21:
  v12 = *(a2 + 60);
  v3 |= 0x100u;
  *(result + 68) = v3;
  *(result + 60) = v12;
  if ((*(a2 + 68) & 0x20) != 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_245EDD838(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "confidence", *(a1 + 8));
    v5 = *(a1 + 68);
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((v5 & 0x20) == 0)
  {
    goto LABEL_3;
  }

  PB::TextFormatter::format(this, "context");
  v5 = *(a1 + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  PB::TextFormatter::format(this, "dataSource");
  v5 = *(a1 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  PB::TextFormatter::format(this, "error");
  v5 = *(a1 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  PB::TextFormatter::format(this, "heartRate", *(a1 + 16));
  v5 = *(a1 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_7:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  PB::TextFormatter::format(this, "interpolation");
  v5 = *(a1 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  PB::TextFormatter::format(this, "mode");
  v5 = *(a1 + 68);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(this, "sinceLastGood", *(a1 + 24));
  v5 = *(a1 + 68);
  if ((v5 & 8) == 0)
  {
LABEL_10:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  PB::TextFormatter::format(this, "startTime", *(a1 + 32));
  if ((*(a1 + 68) & 0x10) != 0)
  {
LABEL_11:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 40));
  }

LABEL_12:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDD9BC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_142;
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
            *(a1 + 68) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
LABEL_72:
              *(this + 24) = 1;
              goto LABEL_138;
            }

            *(a1 + 40) = *(*this + v2);
            goto LABEL_117;
          }

          if (v22 == 7)
          {
            *(a1 + 68) |= 8u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_117;
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              *(a1 + 68) |= 4u;
              v2 = *(this + 1);
              if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
              {
                goto LABEL_72;
              }

              *(a1 + 24) = *(*this + v2);
              goto LABEL_117;
            case 9:
              *(a1 + 68) |= 0x100u;
              v49 = *(this + 1);
              v2 = *(this + 2);
              v50 = *this;
              if (v49 > 0xFFFFFFFFFFFFFFF5 || v49 + 10 > v2)
              {
                v78 = 0;
                v79 = 0;
                v53 = 0;
                if (v2 <= v49)
                {
                  v2 = *(this + 1);
                }

                v80 = v2 - v49;
                v81 = (v50 + v49);
                v82 = v49 + 1;
                while (1)
                {
                  if (!v80)
                  {
                    LODWORD(v53) = 0;
                    *(this + 24) = 1;
                    goto LABEL_137;
                  }

                  v83 = v82;
                  v84 = *v81;
                  *(this + 1) = v83;
                  v53 |= (v84 & 0x7F) << v78;
                  if ((v84 & 0x80) == 0)
                  {
                    break;
                  }

                  v78 += 7;
                  --v80;
                  ++v81;
                  v82 = v83 + 1;
                  v14 = v79++ > 8;
                  if (v14)
                  {
                    LODWORD(v53) = 0;
                    goto LABEL_136;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v53) = 0;
                }

LABEL_136:
                v2 = v83;
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

LABEL_137:
              *(a1 + 60) = v53;
              goto LABEL_138;
            case 0xA:
              *(a1 + 68) |= 0x20u;
              v25 = *(this + 1);
              v2 = *(this + 2);
              v26 = *this;
              if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v2)
              {
                v71 = 0;
                v72 = 0;
                v29 = 0;
                if (v2 <= v25)
                {
                  v2 = *(this + 1);
                }

                v73 = v2 - v25;
                v74 = (v26 + v25);
                v75 = v25 + 1;
                while (1)
                {
                  if (!v73)
                  {
                    LODWORD(v29) = 0;
                    *(this + 24) = 1;
                    goto LABEL_133;
                  }

                  v76 = v75;
                  v77 = *v74;
                  *(this + 1) = v76;
                  v29 |= (v77 & 0x7F) << v71;
                  if ((v77 & 0x80) == 0)
                  {
                    break;
                  }

                  v71 += 7;
                  --v73;
                  ++v74;
                  v75 = v76 + 1;
                  v14 = v72++ > 8;
                  if (v14)
                  {
                    LODWORD(v29) = 0;
                    goto LABEL_132;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v29) = 0;
                }

LABEL_132:
                v2 = v76;
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

LABEL_133:
              *(a1 + 48) = v29;
              goto LABEL_138;
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 68) |= 0x40u;
          v41 = *(this + 1);
          v2 = *(this + 2);
          v42 = *this;
          if (v41 > 0xFFFFFFFFFFFFFFF5 || v41 + 10 > v2)
          {
            v64 = 0;
            v65 = 0;
            v45 = 0;
            if (v2 <= v41)
            {
              v2 = *(this + 1);
            }

            v66 = v2 - v41;
            v67 = (v42 + v41);
            v68 = v41 + 1;
            while (1)
            {
              if (!v66)
              {
                LODWORD(v45) = 0;
                *(this + 24) = 1;
                goto LABEL_129;
              }

              v69 = v68;
              v70 = *v67;
              *(this + 1) = v69;
              v45 |= (v70 & 0x7F) << v64;
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
                LODWORD(v45) = 0;
                goto LABEL_128;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v45) = 0;
            }

LABEL_128:
            v2 = v69;
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

LABEL_129:
          *(a1 + 52) = v45;
          goto LABEL_138;
        }

        if (v22 == 2)
        {
          *(a1 + 68) |= 0x80u;
          v33 = *(this + 1);
          v2 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v2)
          {
            v57 = 0;
            v58 = 0;
            v37 = 0;
            if (v2 <= v33)
            {
              v2 = *(this + 1);
            }

            v59 = v2 - v33;
            v60 = (v34 + v33);
            v61 = v33 + 1;
            while (1)
            {
              if (!v59)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_125;
              }

              v62 = v61;
              v63 = *v60;
              *(this + 1) = v62;
              v37 |= (v63 & 0x7F) << v57;
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
                LODWORD(v37) = 0;
                goto LABEL_124;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
            }

LABEL_124:
            v2 = v62;
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

LABEL_125:
          *(a1 + 56) = v37;
          goto LABEL_138;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 68) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 16) = *(*this + v2);
            goto LABEL_117;
          case 4:
            *(a1 + 68) |= 1u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFF7 || v2 + 8 > *(this + 2))
            {
              goto LABEL_72;
            }

            *(a1 + 8) = *(*this + v2);
LABEL_117:
            v2 = *(this + 1) + 8;
            *(this + 1) = v2;
            goto LABEL_138;
          case 5:
            *(a1 + 68) |= 0x200u;
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

            *(a1 + 64) = v24;
            goto LABEL_138;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v85 = 0;
        return v85 & 1;
      }

      v2 = *(this + 1);
LABEL_138:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_142:
  v85 = v4 ^ 1;
  return v85 & 1;
}

uint64_t sub_245EDE110(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 68);
  if ((v4 & 0x40) != 0)
  {
    result = PB::Writer::writeVarInt(this);
    v4 = *(v3 + 68);
    if ((v4 & 0x80) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v4 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 68);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 68);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = PB::Writer::write(this, *(v3 + 8));
  v4 = *(v3 + 68);
  if ((v4 & 0x200) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = PB::Writer::write(this);
  v4 = *(v3 + 68);
  if ((v4 & 0x10) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = PB::Writer::write(this, *(v3 + 40));
  v4 = *(v3 + 68);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 68);
  if ((v4 & 4) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = PB::Writer::writeVarInt(this);
    if ((*(v3 + 68) & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 68);
  if ((v4 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v4 & 0x20) == 0)
  {
    return result;
  }

LABEL_21:

  return PB::Writer::writeVarInt(this);
}

uint64_t sub_245EDE260(uint64_t result)
{
  *result = &unk_2858D50F0;
  *(result + 20) = 0;
  return result;
}

void sub_245EDE288(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDE2C0(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D50F0;
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

uint64_t sub_245EDE324(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 20);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "orientation");
    v5 = *(a1 + 20);
  }

  if (v5)
  {
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDE3A0(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EDE66C(uint64_t result, PB::Writer *this)
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

void *sub_245EDE6D8(void *result)
{
  *result = &unk_2858D5128;
  result[1] = 0;
  return result;
}

void sub_245EDE6FC(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EDE734(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D5128;
  *(result + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 8);
    *(result + 12) = 1;
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_245EDE76C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 12))
  {
    PB::TextFormatter::format(this, "type");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDE7CC(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EDEA40(uint64_t result, PB::Writer *this)
{
  if (*(result + 12))
  {
    return PB::Writer::writeVarInt(this);
  }

  return result;
}

uint64_t sub_245EDEA60(uint64_t result)
{
  *result = &unk_2858D5160;
  *(result + 32) = 0;
  return result;
}

void sub_245EDEA88(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EDEAC0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5160;
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

uint64_t sub_245EDEB5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
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

uint64_t sub_245EDEC20(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EDEEB0(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EDEF58(uint64_t result)
{
  *result = &unk_2858D5198;
  *(result + 32) = 0;
  return result;
}

void sub_245EDEF80(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EDEFB8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5198;
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

uint64_t sub_245EDF054(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
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

uint64_t sub_245EDF118(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EDF3A8(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EDF450(uint64_t result)
{
  *result = &unk_2858D51D0;
  *(result + 32) = 0;
  return result;
}

void sub_245EDF478(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EDF4B0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D51D0;
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

uint64_t sub_245EDF54C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
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

uint64_t sub_245EDF610(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EDF8A0(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EDF948(uint64_t result)
{
  *result = &unk_2858D5208;
  *(result + 40) = 0;
  return result;
}

void sub_245EDF970(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245EDF9A8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5208;
  *(a1 + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 40) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 0x10) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 28);
    v3 |= 0x10u;
    *(a1 + 40) = v3;
    *(a1 + 28) = v4;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 0x20) != 0)
  {
    LODWORD(v4) = *(a2 + 32);
    v3 |= 0x20u;
    *(a1 + 40) = v3;
    *(a1 + 32) = v4;
    v2 = *(a2 + 40);
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

  LODWORD(v4) = *(a2 + 24);
  v3 |= 8u;
  *(a1 + 40) = v3;
  *(a1 + 24) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 0x40) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 40) = v3;
  *(a1 + 36) = v5;
  v2 = *(a2 + 40);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 2) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 20);
  v3 |= 4u;
  *(a1 + 40) = v3;
  *(a1 + 20) = v4;
  if ((*(a2 + 40) & 2) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 16);
  *(a1 + 40) = v3 | 2;
  *(a1 + 16) = v4;
  return *&v4;
}

uint64_t sub_245EDFA98(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "dotAngularRateVar", *(a1 + 16));
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

  PB::TextFormatter::format(this, "dotUncTNB", *(a1 + 20));
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
  PB::TextFormatter::format(this, "dotUncertainty", *(a1 + 24));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "dotVectorX", *(a1 + 28));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "dotVectorY", *(a1 + 32));
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "hasValidTNBFrame");
  if (*(a1 + 40))
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EDFBBC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_62;
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
LABEL_52:
              *(this + 24) = 1;
              goto LABEL_58;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_57;
          case 2:
            *(a1 + 40) |= 0x10u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 28) = *(*this + v2);
LABEL_56:
            v2 = *(this + 1) + 4;
LABEL_57:
            *(this + 1) = v2;
            goto LABEL_58;
          case 3:
            *(a1 + 40) |= 0x20u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 32) = *(*this + v2);
            goto LABEL_56;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 4u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 20) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 2u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 16) = *(*this + v2);
          goto LABEL_56;
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
            goto LABEL_52;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 0x40u;
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

          *(a1 + 36) = v24;
          goto LABEL_58;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_58:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_62:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_245EDFF20(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 40) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 28));
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
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 20));
    if ((*(v3 + 40) & 2) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this);
  v4 = *(v3 + 40);
  if ((v4 & 4) != 0)
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

uint64_t sub_245EE001C(uint64_t result)
{
  *result = &unk_2858D5240;
  *(result + 32) = 0;
  return result;
}

void sub_245EE0044(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EE007C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5240;
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

uint64_t sub_245EE0118(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dotMeasurement", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotMeasurementUnc", *(a1 + 28));
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

uint64_t sub_245EE01DC(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EE046C(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EE0514(uint64_t result)
{
  *result = &unk_2858D5278;
  *(result + 32) = 0;
  return result;
}

void sub_245EE053C(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EE0574(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5278;
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

uint64_t sub_245EE0610(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 32);
  if ((v5 & 4) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 24));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 28));
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

uint64_t sub_245EE06D4(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EE0964(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EE0A0C(uint64_t result)
{
  *result = &unk_2858D52B0;
  *(result + 40) = 0;
  return result;
}

void sub_245EE0A34(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EE0A6C(uint64_t result, uint64_t a2)
{
  *result = &unk_2858D52B0;
  *(result + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(result + 40) = 1;
    *(result + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 16);
    v3 |= 2u;
    *(result + 40) = v3;
    *(result + 16) = v5;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 20);
    v3 |= 4u;
    *(result + 40) = v3;
    *(result + 20) = v6;
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

  v7 = *(a2 + 28);
  v3 |= 0x10u;
  *(result + 40) = v3;
  *(result + 28) = v7;
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
  v8 = *(a2 + 24);
  v3 |= 8u;
  *(result + 40) = v3;
  *(result + 24) = v8;
  v2 = *(a2 + 40);
  if ((v2 & 0x20) == 0)
  {
LABEL_10:
    if ((v2 & 0x40) == 0)
    {
      return result;
    }

LABEL_16:
    v10 = *(a2 + 36);
    *(result + 40) = v3 | 0x40;
    *(result + 36) = v10;
    return result;
  }

LABEL_15:
  v9 = *(a2 + 32);
  v3 |= 0x20u;
  *(result + 40) = v3;
  *(result + 32) = v9;
  if ((*(a2 + 40) & 0x40) != 0)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_245EE0B5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "dot", *(a1 + 16));
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

  PB::TextFormatter::format(this, "dotUnc", *(a1 + 20));
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
  PB::TextFormatter::format(this, "dotUncRecency", *(a1 + 24));
  v5 = *(a1 + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PB::TextFormatter::format(this, "dotVar", *(a1 + 28));
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PB::TextFormatter::format(this, "isValid");
  v5 = *(a1 + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "timeSinceLastDOTUpdate", *(a1 + 32));
  if (*(a1 + 40))
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE0C80(uint64_t a1, PB::Reader *this)
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
            goto LABEL_62;
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
LABEL_52:
              *(this + 24) = 1;
              goto LABEL_58;
            }

            *(a1 + 8) = *(*this + v2);
            v2 = *(this + 1) + 8;
            goto LABEL_57;
          case 2:
            *(a1 + 40) |= 2u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 16) = *(*this + v2);
LABEL_56:
            v2 = *(this + 1) + 4;
LABEL_57:
            *(this + 1) = v2;
            goto LABEL_58;
          case 3:
            *(a1 + 40) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_52;
            }

            *(a1 + 20) = *(*this + v2);
            goto LABEL_56;
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          *(a1 + 40) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 7)
        {
          *(a1 + 40) |= 0x40u;
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

          *(a1 + 36) = v24;
          goto LABEL_58;
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
            goto LABEL_52;
          }

          *(a1 + 28) = *(*this + v2);
          goto LABEL_56;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_52;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_56;
        }
      }

      if (!PB::Reader::skip(this))
      {
        v25 = 0;
        return v25 & 1;
      }

      v2 = *(this + 1);
LABEL_58:
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_62:
  v25 = v4 ^ 1;
  return v25 & 1;
}

uint64_t sub_245EE0FE4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(result + 40) & 2) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 40);
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
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 40);
  if ((v4 & 8) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 32));
    if ((*(v3 + 40) & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) != 0)
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

uint64_t sub_245EE10E0(uint64_t result)
{
  *result = &unk_2858D52E8;
  *(result + 16) = 0;
  *(result + 80) = 0;
  return result;
}

void sub_245EE1108(PB::Base *this)
{
  *this = &unk_2858D52E8;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EE118C(PB::Base *a1)
{
  sub_245EE1108(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EE11C4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D52E8;
  *(a1 + 16) = 0;
  *(a1 + 80) = 0;
  v2 = *(a2 + 80);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 80) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 80);
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 80) & 0x4000) != 0)
  {
LABEL_5:
    v5 = *(a2 + 76);
    v3 |= 0x4000u;
    *(a1 + 80) = v3;
    *(a1 + 76) = v5;
    v2 = *(a2 + 80);
  }

LABEL_6:
  if ((v2 & 0x2000) != 0)
  {
    v7 = *(a2 + 72);
    v3 |= 0x2000u;
    *(a1 + 80) = v3;
    *(a1 + 72) = v7;
    v2 = *(a2 + 80);
    if ((v2 & 0x1000) == 0)
    {
LABEL_8:
      if ((v2 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }
  }

  else if ((v2 & 0x1000) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 68);
  v3 |= 0x1000u;
  *(a1 + 80) = v3;
  *(a1 + 68) = v8;
  v2 = *(a2 + 80);
  if ((v2 & 2) == 0)
  {
LABEL_9:
    if ((v2 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v9 = *(a2 + 24);
  v3 |= 2u;
  *(a1 + 80) = v3;
  *(a1 + 24) = v9;
  v2 = *(a2 + 80);
  if ((v2 & 4) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v10 = *(a2 + 28);
  v3 |= 4u;
  *(a1 + 80) = v3;
  *(a1 + 28) = v10;
  v2 = *(a2 + 80);
  if ((v2 & 8) == 0)
  {
LABEL_11:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v11 = *(a2 + 32);
  v3 |= 8u;
  *(a1 + 80) = v3;
  *(a1 + 32) = v11;
  v2 = *(a2 + 80);
  if ((v2 & 0x80) == 0)
  {
LABEL_12:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v12 = *(a2 + 48);
  v3 |= 0x80u;
  *(a1 + 80) = v3;
  *(a1 + 48) = v12;
  v2 = *(a2 + 80);
  if ((v2 & 0x100) == 0)
  {
LABEL_13:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  v13 = *(a2 + 52);
  v3 |= 0x100u;
  *(a1 + 80) = v3;
  *(a1 + 52) = v13;
  v2 = *(a2 + 80);
  if ((v2 & 0x200) == 0)
  {
LABEL_14:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_30:
  v14 = *(a2 + 56);
  v3 |= 0x200u;
  *(a1 + 80) = v3;
  *(a1 + 56) = v14;
  v2 = *(a2 + 80);
  if ((v2 & 0x400) == 0)
  {
LABEL_15:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_32;
  }

LABEL_31:
  v15 = *(a2 + 60);
  v3 |= 0x400u;
  *(a1 + 80) = v3;
  *(a1 + 60) = v15;
  v2 = *(a2 + 80);
  if ((v2 & 0x800) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = *(a2 + 64);
  v3 |= 0x800u;
  *(a1 + 80) = v3;
  *(a1 + 64) = v16;
  v2 = *(a2 + 80);
  if ((v2 & 0x40) == 0)
  {
LABEL_17:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_34;
  }

LABEL_33:
  v17 = *(a2 + 44);
  v3 |= 0x40u;
  *(a1 + 80) = v3;
  *(a1 + 44) = v17;
  v2 = *(a2 + 80);
  if ((v2 & 0x10) == 0)
  {
LABEL_18:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_34:
  v18 = *(a2 + 36);
  v3 |= 0x10u;
  *(a1 + 80) = v3;
  *(a1 + 36) = v18;
  if ((*(a2 + 80) & 0x20) != 0)
  {
LABEL_19:
    v6 = *(a2 + 40);
    *(a1 + 80) = v3 | 0x20;
    *(a1 + 40) = v6;
  }

LABEL_20:
  if (*(a2 + 16))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_245EE141C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 80);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "curveUnfilteredX", *(a1 + 24));
    v5 = *(a1 + 80);
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

  PB::TextFormatter::format(this, "curveUnfilteredY", *(a1 + 28));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "curveUnfilteredZ", *(a1 + 32));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "dot", *(a1 + 36));
  v5 = *(a1 + 80);
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
  PB::TextFormatter::format(this, "dotUncertainty", *(a1 + 40));
  v5 = *(a1 + 80);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  PB::TextFormatter::format(this, "dotUnfiltered", *(a1 + 44));
  v5 = *(a1 + 80);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  PB::TextFormatter::format(this, "dotVecUnfilteredX", *(a1 + 48));
  v5 = *(a1 + 80);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  PB::TextFormatter::format(this, "dotVecUnfilteredY", *(a1 + 52));
  v5 = *(a1 + 80);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  PB::TextFormatter::format(this, "dotVecUnfilteredZ", *(a1 + 56));
  v5 = *(a1 + 80);
  if ((v5 & 0x400) == 0)
  {
LABEL_11:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  PB::TextFormatter::format(this, "dotVecX", *(a1 + 60));
  v5 = *(a1 + 80);
  if ((v5 & 0x800) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  PB::TextFormatter::format(this, "dotVecY", *(a1 + 64));
  v5 = *(a1 + 80);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  PB::TextFormatter::format(this, "frequencySelected", *(a1 + 68));
  v5 = *(a1 + 80);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  PB::TextFormatter::format(this, "idxFilterSelected");
  v5 = *(a1 + 80);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_35:
  PB::TextFormatter::format(this, "isValidDOT");
  if (*(a1 + 80))
  {
LABEL_16:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_17:
  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "tnb");
  }

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE1678(uint64_t a1, PB::Reader *this)
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
            goto LABEL_95;
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
          *(a1 + 80) |= 1u;
          v22 = *(this + 1);
          if (v22 > 0xFFFFFFFFFFFFFFF7 || v22 + 8 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 8) = *(*this + v22);
          v23 = *(this + 1) + 8;
          goto LABEL_86;
        case 2u:
          *(a1 + 80) |= 0x4000u;
          v40 = *(this + 1);
          if (v40 >= *(this + 2))
          {
            v43 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v41 = v40 + 1;
            v42 = *(*this + v40);
            *(this + 1) = v41;
            v43 = v42 != 0;
          }

          *(a1 + 76) = v43;
          goto LABEL_91;
        case 3u:
          *(a1 + 80) |= 0x2000u;
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
                goto LABEL_90;
              }

              v32 += 7;
              ++v36;
              v14 = v33++ > 8;
            }

            while (!v14);
LABEL_81:
            LODWORD(v34) = 0;
            goto LABEL_90;
          }

          v49 = 0;
          v50 = 0;
          v34 = 0;
          v17 = v29 >= v30;
          v51 = v29 - v30;
          if (!v17)
          {
            v51 = 0;
          }

          v52 = (v31 + v30);
          v53 = v30 + 1;
          break;
        case 4u:
          *(a1 + 80) |= 0x1000u;
          v38 = *(this + 1);
          if (v38 > 0xFFFFFFFFFFFFFFFBLL || v38 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 68) = *(*this + v38);
          goto LABEL_85;
        case 5u:
          *(a1 + 80) |= 2u;
          v26 = *(this + 1);
          if (v26 > 0xFFFFFFFFFFFFFFFBLL || v26 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 24) = *(*this + v26);
          goto LABEL_85;
        case 6u:
          *(a1 + 80) |= 4u;
          v44 = *(this + 1);
          if (v44 > 0xFFFFFFFFFFFFFFFBLL || v44 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 28) = *(*this + v44);
          goto LABEL_85;
        case 7u:
          *(a1 + 80) |= 8u;
          v46 = *(this + 1);
          if (v46 > 0xFFFFFFFFFFFFFFFBLL || v46 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 32) = *(*this + v46);
          goto LABEL_85;
        case 8u:
          *(a1 + 80) |= 0x80u;
          v39 = *(this + 1);
          if (v39 > 0xFFFFFFFFFFFFFFFBLL || v39 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 48) = *(*this + v39);
          goto LABEL_85;
        case 9u:
          *(a1 + 80) |= 0x100u;
          v48 = *(this + 1);
          if (v48 > 0xFFFFFFFFFFFFFFFBLL || v48 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 52) = *(*this + v48);
          goto LABEL_85;
        case 0xAu:
          *(a1 + 80) |= 0x200u;
          v28 = *(this + 1);
          if (v28 > 0xFFFFFFFFFFFFFFFBLL || v28 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 56) = *(*this + v28);
          goto LABEL_85;
        case 0xBu:
          *(a1 + 80) |= 0x400u;
          v47 = *(this + 1);
          if (v47 > 0xFFFFFFFFFFFFFFFBLL || v47 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 60) = *(*this + v47);
          goto LABEL_85;
        case 0xCu:
          *(a1 + 80) |= 0x800u;
          v25 = *(this + 1);
          if (v25 > 0xFFFFFFFFFFFFFFFBLL || v25 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 64) = *(*this + v25);
          goto LABEL_85;
        case 0xDu:
          *(a1 + 80) |= 0x40u;
          v27 = *(this + 1);
          if (v27 > 0xFFFFFFFFFFFFFFFBLL || v27 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 44) = *(*this + v27);
          goto LABEL_85;
        case 0xEu:
          *(a1 + 80) |= 0x10u;
          v45 = *(this + 1);
          if (v45 > 0xFFFFFFFFFFFFFFFBLL || v45 + 4 > *(this + 2))
          {
            goto LABEL_71;
          }

          *(a1 + 36) = *(*this + v45);
          goto LABEL_85;
        case 0xFu:
          *(a1 + 80) |= 0x20u;
          v24 = *(this + 1);
          if (v24 > 0xFFFFFFFFFFFFFFFBLL || v24 + 4 > *(this + 2))
          {
LABEL_71:
            *(this + 24) = 1;
          }

          else
          {
            *(a1 + 40) = *(*this + v24);
LABEL_85:
            v23 = *(this + 1) + 4;
LABEL_86:
            *(this + 1) = v23;
          }

          goto LABEL_91;
        case 0x10u:
          operator new();
        default:
          if (PB::Reader::skip(this))
          {
            goto LABEL_91;
          }

          v56 = 0;
          return v56 & 1;
      }

      while (1)
      {
        if (!v51)
        {
          LODWORD(v34) = 0;
          *(this + 24) = 1;
          goto LABEL_90;
        }

        v54 = *v52;
        *(this + 1) = v53;
        v34 |= (v54 & 0x7F) << v49;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v49 += 7;
        --v51;
        ++v52;
        ++v53;
        v14 = v50++ > 8;
        if (v14)
        {
          goto LABEL_81;
        }
      }

      if (*(this + 24))
      {
        LODWORD(v34) = 0;
      }

LABEL_90:
      *(a1 + 72) = v34;
LABEL_91:
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

LABEL_95:
  v56 = v4 ^ 1;
  return v56 & 1;
}

uint64_t sub_245EE1D2C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 80);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 80);
    if ((v4 & 0x4000) == 0)
    {
LABEL_3:
      if ((v4 & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(result + 80) & 0x4000) == 0)
  {
    goto LABEL_3;
  }

  result = PB::Writer::write(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x2000) == 0)
  {
LABEL_4:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  result = PB::Writer::writeVarInt(this);
  v4 = *(v3 + 80);
  if ((v4 & 0x1000) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = PB::Writer::write(this, *(v3 + 68));
  v4 = *(v3 + 80);
  if ((v4 & 2) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = PB::Writer::write(this, *(v3 + 24));
  v4 = *(v3 + 80);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = PB::Writer::write(this, *(v3 + 28));
  v4 = *(v3 + 80);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 80);
  if ((v4 & 0x80) == 0)
  {
LABEL_9:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = PB::Writer::write(this, *(v3 + 48));
  v4 = *(v3 + 80);
  if ((v4 & 0x100) == 0)
  {
LABEL_10:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = PB::Writer::write(this, *(v3 + 52));
  v4 = *(v3 + 80);
  if ((v4 & 0x200) == 0)
  {
LABEL_11:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = PB::Writer::write(this, *(v3 + 56));
  v4 = *(v3 + 80);
  if ((v4 & 0x400) == 0)
  {
LABEL_12:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = PB::Writer::write(this, *(v3 + 60));
  v4 = *(v3 + 80);
  if ((v4 & 0x800) == 0)
  {
LABEL_13:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = PB::Writer::write(this, *(v3 + 64));
  v4 = *(v3 + 80);
  if ((v4 & 0x40) == 0)
  {
LABEL_14:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = PB::Writer::write(this, *(v3 + 44));
  v4 = *(v3 + 80);
  if ((v4 & 0x10) == 0)
  {
LABEL_15:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_34:
  result = PB::Writer::write(this, *(v3 + 36));
  if ((*(v3 + 80) & 0x20) != 0)
  {
LABEL_16:
    result = PB::Writer::write(this, *(v3 + 40));
  }

LABEL_17:
  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5);
  }

  return result;
}

uint64_t sub_245EE1F20(uint64_t result)
{
  *result = &unk_2858D5320;
  *(result + 40) = 0;
  return result;
}

void sub_245EE1F48(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

float sub_245EE1F80(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5320;
  *(a1 + 40) = 0;
  v2 = *(a2 + 40);
  if (v2)
  {
    v4 = *(a2 + 8);
    v3 = 1;
    *(a1 + 40) = 1;
    *(a1 + 8) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 40) & 4) != 0)
  {
LABEL_5:
    LODWORD(v4) = *(a2 + 20);
    v3 |= 4u;
    *(a1 + 40) = v3;
    *(a1 + 20) = v4;
    v2 = *(a2 + 40);
  }

LABEL_6:
  if ((v2 & 2) != 0)
  {
    LODWORD(v4) = *(a2 + 16);
    v3 |= 2u;
    *(a1 + 40) = v3;
    *(a1 + 16) = v4;
    v2 = *(a2 + 40);
    if ((v2 & 0x20) == 0)
    {
LABEL_8:
      if ((v2 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((v2 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(v4) = *(a2 + 32);
  v3 |= 0x20u;
  *(a1 + 40) = v3;
  *(a1 + 32) = v4;
  v2 = *(a2 + 40);
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
  LODWORD(v4) = *(a2 + 36);
  v3 |= 0x40u;
  *(a1 + 40) = v3;
  *(a1 + 36) = v4;
  v2 = *(a2 + 40);
  if ((v2 & 0x10) == 0)
  {
LABEL_10:
    if ((v2 & 8) == 0)
    {
      return *&v4;
    }

    goto LABEL_16;
  }

LABEL_15:
  LODWORD(v4) = *(a2 + 28);
  v3 |= 0x10u;
  *(a1 + 40) = v3;
  *(a1 + 28) = v4;
  if ((*(a2 + 40) & 8) == 0)
  {
    return *&v4;
  }

LABEL_16:
  LODWORD(v4) = *(a2 + 24);
  *(a1 + 40) = v3 | 8;
  *(a1 + 24) = v4;
  return *&v4;
}

uint64_t sub_245EE2070(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "dotDeltaBufferMaxAbs", *(a1 + 16));
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

  PB::TextFormatter::format(this, "dotDeltaBufferVar", *(a1 + 20));
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
  PB::TextFormatter::format(this, "dotErrorEstimate", *(a1 + 24));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "dotRelativeChangeOverBuffer", *(a1 + 28));
  v5 = *(a1 + 40);
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
  PB::TextFormatter::format(this, "headingDeltaBufferVar", *(a1 + 32));
  v5 = *(a1 + 40);
  if ((v5 & 0x40) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PB::TextFormatter::format(this, "headingRelativeChangeOverBuffer", *(a1 + 36));
  if (*(a1 + 40))
  {
LABEL_8:
    PB::TextFormatter::format(this, "timestamp", *(a1 + 8));
  }

LABEL_9:

  return MEMORY[0x2821A4560](this);
}

uint64_t sub_245EE2194(uint64_t a1, PB::Reader *this)
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
            *(a1 + 40) |= 4u;
            v2 = *(this + 1);
            if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
            {
              goto LABEL_53;
            }

            *(a1 + 20) = *(*this + v2);
LABEL_55:
            v2 = *(this + 1) + 4;
LABEL_56:
            *(this + 1) = v2;
            goto LABEL_57;
          case 3:
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
          *(a1 + 40) |= 8u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 24) = *(*this + v2);
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 == 4)
        {
          *(a1 + 40) |= 0x20u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 32) = *(*this + v2);
          goto LABEL_55;
        }

        if (v22 == 5)
        {
          *(a1 + 40) |= 0x40u;
          v2 = *(this + 1);
          if (v2 > 0xFFFFFFFFFFFFFFFBLL || v2 + 4 > *(this + 2))
          {
            goto LABEL_53;
          }

          *(a1 + 36) = *(*this + v2);
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

uint64_t sub_245EE24EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    result = PB::Writer::write(this, *(result + 8));
    v4 = *(v3 + 40);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
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

  result = PB::Writer::write(this, *(v3 + 20));
  v4 = *(v3 + 40);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  result = PB::Writer::write(this, *(v3 + 16));
  v4 = *(v3 + 40);
  if ((v4 & 0x20) == 0)
  {
LABEL_5:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = PB::Writer::write(this, *(v3 + 32));
  v4 = *(v3 + 40);
  if ((v4 & 0x40) == 0)
  {
LABEL_6:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    result = PB::Writer::write(this, *(v3 + 28));
    if ((*(v3 + 40) & 8) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_13:
  result = PB::Writer::write(this, *(v3 + 36));
  v4 = *(v3 + 40);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((v4 & 8) == 0)
  {
    return result;
  }

LABEL_15:
  v5 = *(v3 + 24);

  return PB::Writer::write(this, v5);
}

uint64_t sub_245EE25E8(uint64_t result)
{
  *result = &unk_2858D5358;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 52) = 0;
  return result;
}

void sub_245EE2610(PB::Base *this)
{
  *this = &unk_2858D5358;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }

  PB::Base::~Base(this);
}

void sub_245EE2674(PB::Base *a1)
{
  sub_245EE2610(a1);

  JUMPOUT(0x24C194490);
}

uint64_t sub_245EE26AC(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5358;
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

uint64_t sub_245EE2774(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if ((*(a1 + 52) & 4) != 0)
  {
    PB::TextFormatter::format(this, "placementFiltered");
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  while (v5 != v6)
  {
    v7 = *v5++;
    PB::TextFormatter::format(this, "placementProbabilityFiltered", v7);
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

uint64_t sub_245EE2848(uint64_t a1, PB::Reader *this)
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

uint64_t sub_245EE2D5C(uint64_t result, PB::Writer *this)
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

uint64_t sub_245EE2E0C(uint64_t result)
{
  *result = &unk_2858D5390;
  *(result + 108) = 0;
  return result;
}

void sub_245EE2E34(PB::Base *a1)
{
  PB::Base::~Base(a1);

  JUMPOUT(0x24C194490);
}

double sub_245EE2E6C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2858D5390;
  *(a1 + 108) = 0;
  v2 = *(a2 + 108);
  if (v2)
  {
    result = *(a2 + 8);
    v3 = 1;
    *(a1 + 108) = 1;
    *(a1 + 8) = result;
    v2 = *(a2 + 108);
    if ((v2 & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 0x40000) != 0)
  {
LABEL_5:
    LODWORD(result) = *(a2 + 88);
    v3 |= 0x40000u;
    *(a1 + 108) = v3;
    *(a1 + 88) = LODWORD(result);
    v2 = *(a2 + 108);
  }

LABEL_6:
  if ((v2 & 0x100000) != 0)
  {
    LODWORD(result) = *(a2 + 96);
    v3 |= 0x100000u;
    *(a1 + 108) = v3;
    *(a1 + 96) = LODWORD(result);
    v2 = *(a2 + 108);
    if ((v2 & 0x80000) == 0)
    {
LABEL_8:
      if ((v2 & 0x200000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v2 & 0x80000) == 0)
  {
    goto LABEL_8;
  }

  LODWORD(result) = *(a2 + 92);
  v3 |= 0x80000u;
  *(a1 + 108) = v3;
  *(a1 + 92) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x200000) == 0)
  {
LABEL_9:
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  LODWORD(result) = *(a2 + 100);
  v3 |= 0x200000u;
  *(a1 + 108) = v3;
  *(a1 + 100) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x400) == 0)
  {
LABEL_10:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  LODWORD(result) = *(a2 + 56);
  v3 |= 0x400u;
  *(a1 + 108) = v3;
  *(a1 + 56) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x1000) == 0)
  {
LABEL_11:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  LODWORD(result) = *(a2 + 64);
  v3 |= 0x1000u;
  *(a1 + 108) = v3;
  *(a1 + 64) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x800) == 0)
  {
LABEL_12:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  LODWORD(result) = *(a2 + 60);
  v3 |= 0x800u;
  *(a1 + 108) = v3;
  *(a1 + 60) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x2000) == 0)
  {
LABEL_13:
    if ((v2 & 4) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  LODWORD(result) = *(a2 + 68);
  v3 |= 0x2000u;
  *(a1 + 108) = v3;
  *(a1 + 68) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 4) == 0)
  {
LABEL_14:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(result) = *(a2 + 24);
  v3 |= 4u;
  *(a1 + 108) = v3;
  *(a1 + 24) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x10) == 0)
  {
LABEL_15:
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(result) = *(a2 + 32);
  v3 |= 0x10u;
  *(a1 + 108) = v3;
  *(a1 + 32) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 8) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  LODWORD(result) = *(a2 + 28);
  v3 |= 8u;
  *(a1 + 108) = v3;
  *(a1 + 28) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  LODWORD(result) = *(a2 + 36);
  v3 |= 0x20u;
  *(a1 + 108) = v3;
  *(a1 + 36) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x400000) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  LODWORD(result) = *(a2 + 104);
  v3 |= 0x400000u;
  *(a1 + 108) = v3;
  *(a1 + 104) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x80) == 0)
  {
LABEL_19:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  LODWORD(result) = *(a2 + 44);
  v3 |= 0x80u;
  *(a1 + 108) = v3;
  *(a1 + 44) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x40) == 0)
  {
LABEL_20:
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  LODWORD(result) = *(a2 + 40);
  v3 |= 0x40u;
  *(a1 + 108) = v3;
  *(a1 + 40) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x200) == 0)
  {
LABEL_21:
    if ((v2 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  LODWORD(result) = *(a2 + 52);
  v3 |= 0x200u;
  *(a1 + 108) = v3;
  *(a1 + 52) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x100) == 0)
  {
LABEL_22:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(result) = *(a2 + 48);
  v3 |= 0x100u;
  *(a1 + 108) = v3;
  *(a1 + 48) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x8000) == 0)
  {
LABEL_23:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(result) = *(a2 + 76);
  v3 |= 0x8000u;
  *(a1 + 108) = v3;
  *(a1 + 76) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x4000) == 0)
  {
LABEL_24:
    if ((v2 & 0x20000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(result) = *(a2 + 72);
  v3 |= 0x4000u;
  *(a1 + 108) = v3;
  *(a1 + 72) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x20000) == 0)
  {
LABEL_25:
    if ((v2 & 0x10000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_47;
  }

LABEL_46:
  LODWORD(result) = *(a2 + 84);
  v3 |= 0x20000u;
  *(a1 + 108) = v3;
  *(a1 + 84) = LODWORD(result);
  v2 = *(a2 + 108);
  if ((v2 & 0x10000) == 0)
  {
LABEL_26:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_48:
    result = *(a2 + 16);
    *(a1 + 108) = v3 | 2;
    *(a1 + 16) = result;
    return result;
  }

LABEL_47:
  LODWORD(result) = *(a2 + 80);
  v3 |= 0x10000u;
  *(a1 + 108) = v3;
  *(a1 + 80) = LODWORD(result);
  if ((*(a2 + 108) & 2) != 0)
  {
    goto LABEL_48;
  }

  return result;
}