void sub_10039D754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

void sub_10039D770(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_10039D78C()
{
  v0 = objc_autoreleasePoolPush();
  qword_101FBA2B0 = [NSString stringWithUTF8String:sub_100649C38(0)];

  objc_autoreleasePoolPop(v0);
}

double sub_10039D7EC(uint64_t a1)
{
  *a1 = off_101E477F8;
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  return result;
}

void sub_10039D820(uint64_t a1)
{
  *a1 = off_101E477F8;
  v4 = *(a1 + 48);
  v2 = (a1 + 48);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v5)
  {
    sub_100140988(a1 + 40, v5);
  }

  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v6)
  {
    sub_100140988(a1 + 32, v6);
  }

  v7 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v7)
  {
    sub_100140988(a1 + 24, v7);
  }

  sub_100140928((a1 + 16), 0);
  v8 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v8)
  {
    sub_100140988(a1 + 8, v8);
  }

  PB::Base::~Base(a1);
}

void sub_10039D8E0(uint64_t a1)
{
  sub_10039D820(a1);

  operator delete();
}

uint64_t sub_10039D918(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_101E477F8;
  *(a1 + 40) = 0u;
  *(a1 + 64) = 0;
  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  v2 = *(a2 + 64);
  if (v2)
  {
    v3 = *(a2 + 56);
    *(a1 + 64) |= 1u;
    *(a1 + 56) = v3;
    v2 = *(a2 + 64);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 60);
    *(a1 + 64) |= 2u;
    *(a1 + 60) = v4;
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_10039DC40(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 64))
  {
    PB::TextFormatter::format(this, "activationStatus", *(a1 + 56));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if ((*(a1 + 64) & 2) != 0)
  {
    PB::TextFormatter::format(this, "associationType", *(a1 + 60));
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "eid", v5);
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_10039DD4C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_83;
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
            operator new();
          }

          if (v22 == 8)
          {
            operator new();
          }
        }

        else
        {
          if (v22 == 5)
          {
            *(a1 + 64) |= 2u;
            v33 = *(this + 1);
            v32 = *(this + 2);
            v34 = *this;
            if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
            {
              v41 = 0;
              v42 = 0;
              v37 = 0;
              v17 = v32 >= v33;
              v43 = v32 - v33;
              if (!v17)
              {
                v43 = 0;
              }

              v44 = (v34 + v33);
              v45 = v33 + 1;
              while (1)
              {
                if (!v43)
                {
                  LODWORD(v37) = 0;
                  *(this + 24) = 1;
                  goto LABEL_78;
                }

                v46 = *v44;
                *(this + 1) = v45;
                v37 |= (v46 & 0x7F) << v41;
                if ((v46 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                --v43;
                ++v44;
                ++v45;
                v14 = v42++ > 8;
                if (v14)
                {
LABEL_65:
                  LODWORD(v37) = 0;
                  goto LABEL_78;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v37) = 0;
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
                  goto LABEL_65;
                }
              }
            }

LABEL_78:
            *(a1 + 60) = v37;
            goto LABEL_53;
          }

          if (v22 == 6)
          {
            operator new();
          }
        }
      }

      else if (v22 > 2)
      {
        if (v22 == 3)
        {
          operator new();
        }

        if (v22 == 4)
        {
          *(a1 + 64) |= 1u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v47 = 0;
            v48 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v49 = v23 - v24;
            if (!v17)
            {
              v49 = 0;
            }

            v50 = (v25 + v24);
            v51 = v24 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_81;
              }

              v52 = *v50;
              *(this + 1) = v51;
              v28 |= (v52 & 0x7F) << v47;
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
LABEL_73:
                LODWORD(v28) = 0;
                goto LABEL_81;
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
                goto LABEL_73;
              }
            }
          }

LABEL_81:
          *(a1 + 56) = v28;
          goto LABEL_53;
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
          operator new();
        }
      }

      if (!PB::Reader::skip(this, v22, v10 & 7, 0))
      {
        v54 = 0;
        return v54 & 1;
      }

LABEL_53:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_83:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_10039E2C8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 32))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 64);
  if (v5)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 56), 4u);
    v5 = *(v3 + 64);
  }

  if ((v5 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 60), 5u);
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 48))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 40))
  {

    return PB::Writer::write();
  }

  return result;
}

std::string *sub_10039E3AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_10027F75C(a4);
  std::string::operator=(*(a4 + 16), (a1 + 144));
  sub_10039FB08(a4);
  std::string::operator=(*(a4 + 24), (a1 + 168));
  sub_10039FB7C(a4);
  std::string::operator=(*(a4 + 32), (a1 + 16));
  sub_10039FBF0(a4);
  std::string::operator=(*(a4 + 56), (a1 + 96));
  sub_10039FC64(a4);
  std::string::operator=(*(a4 + 64), (a1 + 120));
  sub_10039FCD8(a4);
  std::string::operator=(*(a4 + 88), (a1 + 40));
  v8 = *(a1 + 90);
  v9 = *(a4 + 128);
  *(a4 + 128) = v9 | 8;
  *(a4 + 123) = v8;
  v10 = *(a1 + 89);
  *(a4 + 128) = v9 | 0x18;
  *(a4 + 124) = v10;
  v11 = *(a1 + 92);
  *(a4 + 128) = v9 | 0x1C;
  *(a4 + 122) = v11;
  v12 = *(a1 + 91);
  *(a4 + 128) = v9 | 0x1E;
  *(a4 + 121) = v12;
  sub_10039FD4C(a4);
  result = std::string::operator=(*(a4 + 96), (a1 + 64));
  if (a2)
  {
    *(a4 + 128) |= 1u;
    *(a4 + 120) = 1;
  }

  if (*a3 == 1)
  {
    sub_10039FDC0(a4);
    std::string::operator=(*(a4 + 72), (a3 + 8));
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    sub_10039FE34(a4);
    std::string::operator=(*(a4 + 48), (a3 + 32));
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    sub_10039F9C0(a4);
    std::string::operator=(*(a4 + 40), (a3 + 56));
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    sub_10039EFFC(a4);
    std::string::operator=(*(a4 + 8), (a3 + 80));
    result = sub_100B47B18(a4);
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    if (*(a3 + 177) == 1)
    {
      v14 = *(a4 + 112);
      v15 = *(a3 + 176);
      *(v14 + 92) |= 0x10u;
      *(v14 + 84) = v15;
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 208) == 1)
    {
      v16 = *(a4 + 112);
      sub_10039FC64(v16);
      result = std::string::operator=(*(v16 + 64), (a3 + 184));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 240) == 1)
    {
      v17 = *(a4 + 112);
      sub_10039F9C0(v17);
      result = std::string::operator=(*(v17 + 40), (a3 + 216));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 304) == 1)
    {
      v18 = *(a4 + 112);
      sub_10039FB7C(v18);
      result = std::string::operator=(*(v18 + 32), (a3 + 280));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 336) == 1)
    {
      v19 = *(a4 + 112);
      sub_10039FBF0(v19);
      result = std::string::operator=(*(v19 + 56), (a3 + 312));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 433) == 1)
    {
      v20 = *(a4 + 112);
      v21 = *(a3 + 432);
      *(v20 + 92) |= 0x40u;
      *(v20 + 89) = v21;
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    v22 = *(a4 + 112);
    v23 = *(a3 + 376);
    *(v22 + 92) |= 2u;
    *(v22 + 72) = v23;
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    v24 = *(a4 + 112);
    v25 = *(a3 + 377);
    *(v24 + 92) |= 0x20u;
    *(v24 + 88) = v25;
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    v26 = *(a4 + 112);
    v27 = *(a3 + 378);
    *(v26 + 92) |= 8u;
    *(v26 + 80) = v27;
    if ((*a3 & 1) == 0)
    {
      sub_10176647C();
    }

    v28 = *(a3 + 375);
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(a3 + 360);
    }

    if (v28)
    {
      v29 = *(a4 + 112);
      sub_10039FE34(v29);
      result = std::string::operator=(*(v29 + 48), (a3 + 352));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 408) == 1)
    {
      v30 = *(a4 + 112);
      sub_10027F75C(v30);
      result = std::string::operator=(*(v30 + 16), (a3 + 384));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 424) == 1)
    {
      v31 = *(a4 + 112);
      v32 = *(a3 + 416);
      *(v31 + 92) |= 1u;
      *(v31 + 8) = v32;
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 345) == 1 && *(a3 + 344) - 1 <= 2)
    {
      v33 = dword_1017FAC50[(*(a3 + 344) - 1)];
      v34 = *(a4 + 112);
      *(v34 + 92) |= 4u;
      *(v34 + 76) = v33;
    }
  }

  return result;
}

BOOL sub_10039E7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    std::string::operator=((a2 + 16), v3);
    v7 = *(a1 + 88);
    if (v7)
    {
      std::string::operator=((a2 + 40), v7);
    }

    v8 = *(a1 + 96);
    if (v8)
    {
      std::string::operator=((a2 + 64), v8);
    }

    *(a2 + 90) = *(a1 + 123) & (*(a1 + 128) << 28 >> 31);
    *(a2 + 89) = *(a1 + 124) & (*(a1 + 128) << 27 >> 31);
    *(a2 + 92) = *(a1 + 122) & (*(a1 + 128) << 29 >> 31);
    *(a2 + 91) = *(a1 + 121) & (*(a1 + 128) << 30 >> 31);
    v9 = *(a1 + 16);
    if (v9)
    {
      std::string::operator=((a2 + 144), v9);
    }

    v10 = *(a1 + 24);
    if (v10)
    {
      std::string::operator=((a2 + 168), v10);
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      std::string::operator=((a2 + 96), v11);
    }

    v12 = *(a1 + 64);
    if (v12)
    {
      std::string::operator=((a2 + 120), v12);
    }

    v13 = *(a1 + 72);
    if (v13)
    {
      std::string::operator=(a3, v13);
    }

    v14 = *(a1 + 48);
    if (v14)
    {
      std::string::operator=((a3 + 24), v14);
    }

    v15 = *(a1 + 40);
    if (v15)
    {
      std::string::operator=((a3 + 48), v15);
    }

    v16 = *(a1 + 8);
    if (v16)
    {
      std::string::operator=((a3 + 72), v16);
    }

    v17 = *(a1 + 112);
    if (v17)
    {
      if ((*(v17 + 92) & 0x10) != 0)
      {
        *(a3 + 168) = *(v17 + 84) | 0x100;
        v17 = *(a1 + 112);
      }

      v18 = *(v17 + 64);
      if (v18)
      {
        sub_1001696A4((a3 + 176), v18);
        v17 = *(a1 + 112);
      }

      v19 = *(v17 + 40);
      if (v19)
      {
        sub_1001696A4((a3 + 208), v19);
        v17 = *(a1 + 112);
      }

      v20 = *(v17 + 32);
      if (v20)
      {
        sub_1001696A4((a3 + 272), v20);
        v17 = *(a1 + 112);
      }

      v21 = *(v17 + 56);
      if (v21)
      {
        sub_1001696A4((a3 + 304), v21);
        v17 = *(a1 + 112);
      }

      v22 = *(v17 + 92);
      if ((v22 & 2) != 0)
      {
        *(a3 + 368) = *(v17 + 72);
        v22 = *(v17 + 92);
        if ((v22 & 0x20) == 0)
        {
LABEL_35:
          if ((v22 & 8) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }

      else if ((*(v17 + 92) & 0x20) == 0)
      {
        goto LABEL_35;
      }

      *(a3 + 369) = *(v17 + 88);
      if ((*(v17 + 92) & 8) == 0)
      {
LABEL_37:
        v23 = *(v17 + 48);
        if (v23)
        {
          std::string::operator=((a3 + 344), v23);
          v17 = *(a1 + 112);
        }

        v24 = *(v17 + 16);
        if (v24)
        {
          sub_1001696A4((a3 + 376), v24);
          v17 = *(a1 + 112);
        }

        v25 = *(v17 + 92);
        if ((v25 & 0x40) != 0)
        {
          *(a3 + 424) = *(v17 + 89) | 0x100;
          v17 = *(a1 + 112);
          v25 = *(v17 + 92);
          if ((v25 & 1) == 0)
          {
LABEL_43:
            if ((v25 & 0x40) == 0)
            {
              goto LABEL_44;
            }

            goto LABEL_51;
          }
        }

        else if ((*(v17 + 92) & 1) == 0)
        {
          goto LABEL_43;
        }

        *(a3 + 408) = *(v17 + 8);
        *(a3 + 416) = 1;
        v17 = *(a1 + 112);
        v25 = *(v17 + 92);
        if ((v25 & 0x40) == 0)
        {
LABEL_44:
          if ((v25 & 4) == 0)
          {
            return v3 != 0;
          }

LABEL_52:
          v26 = *(v17 + 76);
          if (v26 <= 2)
          {
            *(a3 + 336) = 0x10301010102uLL >> (16 * v26);
          }

          return v3 != 0;
        }

LABEL_51:
        *(a3 + 424) = *(v17 + 89) | 0x100;
        v17 = *(a1 + 112);
        if ((*(v17 + 92) & 4) == 0)
        {
          return v3 != 0;
        }

        goto LABEL_52;
      }

LABEL_36:
      *(a3 + 370) = *(v17 + 80);
      goto LABEL_37;
    }
  }

  return v3 != 0;
}

void sub_10039EA60(int *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[3] == 3;
  v8 = *(a4 + 88);
  *(a4 + 88) = v8 | 0x20;
  *(a4 + 84) = v7;
  v9 = a1[3];
  *(a4 + 88) = v8 | 0x21;
  *(a4 + 64) = v9;
  v10 = a1[1];
  *(a4 + 88) = v8 | 0x29;
  *(a4 + 76) = v10;
  sub_10039EF40(a4);
  PB::Data::assign(*(a4 + 8), a1 + 16, a1 + 32);
  v11 = *a1;
  *(a4 + 88) |= 0x10u;
  *(a4 + 80) = v11;
  v12 = *(a1 + 55);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a1 + 5);
  }

  if (v12)
  {
    sub_10039FBF0(a4);
    std::string::operator=(*(a4 + 56), (a1 + 8));
  }

  if (*a3 == 1 && *(a3 + 8) == a1[1])
  {
    v13 = *(a3 + 39);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a3 + 24);
    }

    if (v13)
    {
      sub_10039F9C0(a4);
      std::string::operator=(*(a4 + 40), (a3 + 16));
      if ((*a3 & 1) == 0)
      {
        sub_10176647C();
      }
    }

    if (*(a3 + 63) < 0)
    {
      v14 = *(a3 + 48);
      if (!v14)
      {
        goto LABEL_18;
      }

      sub_100005F2C(&__p, *(a3 + 40), v14);
    }

    else
    {
      if (!*(a3 + 63))
      {
        goto LABEL_18;
      }

      __p = *(a3 + 40);
      *&v18 = *(a3 + 56);
    }

    sub_10039EFA8(a4, &__p);
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p.n128_u64[0]);
    }
  }

LABEL_18:
  v15 = a1[2];
  *(a4 + 88) |= 4u;
  *(a4 + 72) = v15;
  if (*(a1 + 80) == 1)
  {
    v16 = *(a1 + 7);
    if (v16 != *(a1 + 8))
    {
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      sub_100F11F00(v19, v16);
      sub_1001405D4((a4 + 16));
    }
  }
}

void sub_10039EEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ***sub_10039EF40(void ***result)
{
  if (!result[1])
  {
    operator new();
  }

  return result;
}

__n128 sub_10039EFA8(uint64_t a1, __n128 *a2)
{
  sub_10039FE34(a1);
  v4 = *(a1 + 48);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  result = *a2;
  *(v4 + 16) = a2[1].n128_u64[0];
  *v4 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

void sub_10039EFFC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    operator new();
  }
}

BOOL sub_10039F070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 88) & 2) != 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  if (!v4 || *(v4 + 8) != 16)
  {
    return 0;
  }

  *(a2 + 16) = **v4;
  v7 = *(a1 + 76) & (*(a1 + 88) << 28 >> 31);
  *(a2 + 4) = v7;
  *a3 = v7;
  *(a2 + 12) = 0;
  if (*(a1 + 88))
  {
    v8 = *(a1 + 64);
  }

  else
  {
    if ((*(a1 + 88) & 0x20) == 0)
    {
      goto LABEL_13;
    }

    if (*(a1 + 84))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }
  }

  *(a2 + 12) = v8;
LABEL_13:
  *a2 = *(a1 + 80) & (*(a1 + 88) << 27 >> 31);
  if ((*(a1 + 88) & 4) != 0)
  {
    v11 = *(a1 + 72);
    if ((v11 - 1) >= 3)
    {
      v11 = 0;
    }

    *(a2 + 8) = v11;
  }

  v12 = *(a1 + 56);
  if (v12)
  {
    v13 = *(v12 + 23);
    if (v13 < 0)
    {
      v13 = *(v12 + 8);
    }

    if (v13)
    {
      std::string::operator=((a2 + 32), v12);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    v15 = *(v14 + 23);
    if (v15 < 0)
    {
      v15 = *(v14 + 8);
    }

    if (v15)
    {
      std::string::operator=((a3 + 8), v14);
    }
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    v17 = *(v16 + 23);
    if (v17 < 0)
    {
      v17 = *(v16 + 8);
    }

    if (v17)
    {
      std::string::operator=((a3 + 32), v16);
    }
  }

  if (*(a1 + 24) == *(a1 + 16))
  {
    if (*(a2 + 80) == 1)
    {
      *&v26 = a2 + 56;
      sub_100112120(&v26);
      *(a2 + 80) = 0;
    }

    return 1;
  }

  v26 = 0uLL;
  *&v27 = 0;
  sub_100319BEC(a2 + 56, &v26);
  *&v55[0] = &v26;
  sub_100112120(v55);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  if (v18 == v19)
  {
    return 1;
  }

  v20 = v18 + 8;
  do
  {
    v21 = *(v20 - 8);
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v26 = 0u;
    v9 = sub_10039E7C4(v21, v55, &v26);
    if (v9)
    {
      v54 = *(v21 + 32);
      v22 = sub_10031B9CC((a3 + 56), v54, &unk_101802C98, &v54, &v53);
      sub_10031612C((v22 + 7), &v26);
      v23 = *(a2 + 64);
      if (v23 >= *(a2 + 72))
      {
        v24 = sub_10039FEA8((a2 + 56), v55);
      }

      else
      {
        sub_100F11F00(*(a2 + 64), v55);
        v24 = v23 + 216;
        *(a2 + 64) = v23 + 216;
      }

      *(a2 + 64) = v24;
    }

    else if (*(a2 + 80) == 1)
    {
      v54 = (a2 + 56);
      sub_100112120(&v54);
      *(a2 + 80) = 0;
    }

    sub_100111ED0(&v26);
    sub_100E3A5D4(v55);
    v25 = v20 != v19 && v9;
    v20 += 8;
  }

  while (v25);
  return v9;
}

BOOL sub_10039F3B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = *(a1 + 23);
  }

  else
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    sub_10027F75C(a2);
    std::string::operator=(*(a2 + 16), a1);
    v5 = *(a1 + 24);
    *(a2 + 40) |= 1u;
    *(a2 + 32) = v5;
    sub_10039EFFC(a2);
    std::string::operator=(*(a2 + 8), (a1 + 32));
    sub_10039FB08(a2);
    std::string::operator=(*(a2 + 24), (a1 + 56));
    v6 = *(a1 + 80);
    *(a2 + 40) |= 2u;
    *(a2 + 36) = v6;
  }

  return v2 != 0;
}

uint64_t sub_10039F468(uint64_t a1, std::string *this)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  std::string::operator=(this, v3);
  result = cellplan::deserializeRemotePlanSimSubscriptionStatus();
  if (result)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      std::string::operator=((this + 32), v6);
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      std::string::operator=((this + 56), v7);
    }

    if ((*(a1 + 40) & 2) != 0)
    {
      LODWORD(this[3].__r_.__value_.__r.__words[1]) = *(a1 + 36);
    }

    return 1;
  }

  return result;
}

void sub_10039F4E8(std::string *__str, uint64_t a2, std::string *this)
{
  std::string::operator=(this, __str);
  v5 = *(a2 + 8);
  if (v5)
  {
    sub_10016C728(&this[1], v5);
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v6 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10176E6AC();
    }
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    sub_10016C728(&this[2].__r_.__value_.__s.__data_[8], v7);
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v8 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10176E6E0();
    }
  }

  if ((*(a2 + 68) & 8) != 0)
  {
    v10 = *(a2 + 60);
    if (v10 >= 0xA)
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v9 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10176E714();
    }

    LOBYTE(v10) = 0;
  }

  this[3].__r_.__value_.__s.__data_[16] = v10;
  if ((*(a2 + 68) & 2) != 0)
  {
    HIDWORD(this[5].__r_.__value_.__r.__words[0]) = *(a2 + 52);
    this[5].__r_.__value_.__s.__data_[0] = 1;
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v11 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10176E748();
    }
  }

  if ((*(a2 + 68) & 0x10) != 0)
  {
    HIDWORD(this[5].__r_.__value_.__r.__words[1]) = *(a2 + 64);
    this[5].__r_.__value_.__s.__data_[8] = 1;
  }

  else
  {
    ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.r.msg.helper");
    v12 = v14;
    ctu::OsLogContext::~OsLogContext(&v13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10176E77C();
    }
  }
}

std::string *sub_10039F6D4(std::string *result, std::string **a2)
{
  v3 = result;
  size = HIBYTE(result[3].__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = result[3].__r_.__value_.__l.__size_;
  }

  if (size)
  {
    sub_10027F75C(a2);
    result = std::string::operator=(a2[2], v3 + 3);
  }

  v5 = HIBYTE(v3->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80u) != 0)
  {
    v5 = v3->__r_.__value_.__l.__size_;
  }

  if (v5)
  {
    sub_10039FB7C(a2);
    result = std::string::operator=(a2[4], v3);
  }

  v6 = HIBYTE(v3[1].__r_.__value_.__r.__words[2]);
  if ((v6 & 0x80u) != 0)
  {
    v6 = v3[1].__r_.__value_.__l.__size_;
  }

  if (v6)
  {
    sub_10039FB08(a2);
    result = std::string::operator=(a2[3], v3 + 1);
  }

  v7 = HIBYTE(v3[2].__r_.__value_.__r.__words[2]);
  if ((v7 & 0x80u) != 0)
  {
    v7 = v3[2].__r_.__value_.__l.__size_;
  }

  if (v7)
  {
    sub_10039EFFC(a2);
    v8 = a2[1];

    return std::string::operator=(v8, v3 + 2);
  }

  return result;
}

std::string *sub_10039F7C0(std::string *this, void *a2)
{
  v3 = this;
  v4 = a2[2];
  if (v4)
  {
    this = std::string::operator=(this + 3, v4);
  }

  v5 = a2[4];
  if (v5)
  {
    this = std::string::operator=(v3, v5);
  }

  v6 = a2[3];
  if (v6)
  {
    this = std::string::operator=(v3 + 1, v6);
  }

  v7 = a2[1];
  if (v7)
  {

    return std::string::operator=(v3 + 2, v7);
  }

  return this;
}

std::string *sub_10039F83C(std::string *result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = std::string::operator=((a2 + 8), (result + 32));
    *(a2 + 64) = v3->__r_.__value_.__r.__words[0];
    data = v3[3].__r_.__value_.__s.__data_[15];
    if (data < 0)
    {
      data = v3[3].__r_.__value_.__l.__data_;
    }

    if (data)
    {
      sub_10039FE34(a2);
      result = std::string::operator=(*(a2 + 48), (v3 + 64));
    }

    v5 = v3[4].__r_.__value_.__s.__data_[15];
    if (v5 < 0)
    {
      v5 = v3[4].__r_.__value_.__l.__data_;
    }

    if (v5)
    {
      sub_10039F9C0(a2);
      sub_10039F9C0(a2);
      result = std::string::operator=(*(a2 + 40), (v3 + 88));
    }

    v6 = v3[5].__r_.__value_.__s.__data_[15];
    if (v6 < 0)
    {
      v6 = v3[5].__r_.__value_.__l.__data_;
    }

    if (v6)
    {
      sub_10039FBF0(a2);
      result = std::string::operator=(*(a2 + 56), (v3 + 112));
    }

    v7 = v3[6].__r_.__value_.__s.__data_[15];
    if (v7 < 0)
    {
      v7 = v3[6].__r_.__value_.__l.__data_;
    }

    if (v7)
    {
      sub_100633DEC(a2);
      result = std::string::operator=((*(a2 + 32) + 16), (v3 + 136));
      v8 = v3[7].__r_.__value_.__s.__data_[15];
      if (v8 < 0)
      {
        v8 = v3[7].__r_.__value_.__l.__data_;
      }

      if (v8)
      {
        v9 = *(a2 + 32);
        sub_10039EFFC(v9);
        result = std::string::operator=(*(v9 + 8), (v3 + 160));
      }

      *(*(a2 + 32) + 40) = v3[7].__r_.__value_.__s.__data_[16];
    }

    v10 = v3[2].__r_.__value_.__s.__data_[8];
    if (v3[2].__r_.__value_.__s.__data_[8])
    {
      v11 = *(a2 + 84) | 1;
      *(a2 + 84) = v11;
      *(a2 + 72) = v10;
    }

    else
    {
      v11 = *(a2 + 84);
    }

    v12 = v3[7].__r_.__value_.__s.__data_[17];
    *(a2 + 84) = v11 | 4;
    *(a2 + 80) = v12;
    v13 = v3[2].__r_.__value_.__s.__data_[9];
    if (v3[2].__r_.__value_.__s.__data_[9])
    {
      *(a2 + 84) = v11 | 6;
      *(a2 + 76) = v13;
    }
  }

  return result;
}

void sub_10039F9C0(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    operator new();
  }
}

std::string *sub_10039FA34(uint64_t a1, uint64_t a2)
{
  result = std::string::operator=((a2 + 32), (a1 + 8));
  *a2 = *(a1 + 64);
  v5 = *(a1 + 48);
  if (v5)
  {
    result = std::string::operator=((a2 + 64), v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    result = std::string::operator=((a2 + 88), v6);
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    result = std::string::operator=((a2 + 112), v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    result = std::string::operator=((a2 + 136), (v8 + 16));
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    if (v10)
    {
      result = std::string::operator=((a2 + 160), v10);
      v9 = *(a1 + 32);
    }

    *(a2 + 184) = *(v9 + 40);
  }

  *(a2 + 56) = (*(a1 + 84) << 31 >> 31) & *(a1 + 72);
  v11 = *(a1 + 84);
  if ((v11 & 4) != 0)
  {
    *(a2 + 185) = *(a1 + 80);
    v11 = *(a1 + 84);
  }

  *(a2 + 57) = *(a1 + 76) & (v11 << 30 >> 31);
  return result;
}

void sub_10039FB08(uint64_t a1)
{
  if (!*(a1 + 24))
  {
    operator new();
  }
}

void sub_10039FB7C(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    operator new();
  }
}

void sub_10039FBF0(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    operator new();
  }
}

void sub_10039FC64(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    operator new();
  }
}

void sub_10039FCD8(uint64_t a1)
{
  if (!*(a1 + 88))
  {
    operator new();
  }
}

void sub_10039FD4C(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    operator new();
  }
}

void sub_10039FDC0(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    operator new();
  }
}

void sub_10039FE34(uint64_t a1)
{
  if (!*(a1 + 48))
  {
    operator new();
  }
}

uint64_t sub_10039FEA8(unint64_t *a1, uint64_t a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    sub_1000CE3D4();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100112600(a1, v6);
  }

  v13 = 0;
  v14 = 216 * v2;
  sub_100F11F00(216 * v2, a2);
  v15 = 216 * v2 + 216;
  v7 = a1[1];
  v8 = 216 * v2 + *a1 - v7;
  sub_10039FFF0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1003A0120(&v13);
  return v12;
}

void sub_10039FFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003A0120(va);
  _Unwind_Resume(a1);
}

void sub_10039FFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      v8 = *(v6 + 40);
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 40) = v8;
      *(v6 + 48) = 0;
      *(v6 + 56) = 0;
      *(v6 + 40) = 0;
      v9 = *(v6 + 64);
      *(a4 + 80) = *(v6 + 80);
      *(a4 + 64) = v9;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      v10 = *(v6 + 88);
      *(a4 + 92) = *(v6 + 92);
      *(a4 + 88) = v10;
      v11 = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 96) = v11;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      v12 = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(a4 + 120) = v12;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      v13 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 144) = v13;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      v14 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(a4 + 168) = v14;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      v15 = *(v6 + 192);
      *(a4 + 208) = *(v6 + 208);
      *(a4 + 192) = v15;
      *(v6 + 192) = 0;
      *(v6 + 200) = 0;
      *(v6 + 208) = 0;
      v6 += 216;
      a4 += 216;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_100E3A5D4(v5) + 216;
    }
  }
}

uint64_t sub_1003A0120(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 216;
    sub_100E3A5D4(i - 216);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003A0170(_BYTE *a1, __int128 *a2)
{
  v4 = *a1;
  v3 = a1 + 8;
  if (v4 == 1)
  {

    sub_10031612C(v3, a2);
  }

  else
  {
    sub_10027FEF8(v3, a2);
    *a1 = 1;
  }
}

void sub_1003A01E8(MegadomeClientInterface *a1)
{
  MegadomeClientInterface::~MegadomeClientInterface(a1);

  operator delete();
}

void sub_1003A0220(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003A049C(&v5, a4);
  rest::write_rest_value();
  operator new();
}

void sub_1003A03E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A0464(uint64_t a1)
{
  sub_1001E3CE4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_1003A049C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *sub_1003A051C(void *a1)
{
  *a1 = off_101E47888;
  sub_1001E3CE4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1003A056C(void *a1)
{
  *a1 = off_101E47888;
  sub_1001E3CE4((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1003A065C(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A067C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E47888;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1003A0904((a2 + 3), a1 + 24);
}

void sub_1003A06E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A0700(char *a1)
{
  sub_1003A099C((a1 + 8));

  operator delete(a1);
}

void sub_1003A073C(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v9 = 0;
  v10 = 0uLL;
  rest::MegadomeEventsQueryResult::MegadomeEventsQueryResult(&v9);
  rest::read_rest_value(&v9, &object, v3);
  v4 = v9;
  v7 = v9;
  v8 = v10;
  v10 = 0uLL;
  v9 = 0;
  memset(v11, 0, sizeof(v11));
  sub_1001E2A18(v11, v4, v8, 0xEEEEEEEEEEEEEEEFLL * ((v8 - v7) >> 4));
  v5 = *(a1 + 48);
  if (!v5)
  {
    sub_100022DB4();
  }

  (*(*v5 + 48))(v5, v11);
  v12 = v11;
  sub_1001E26C4(&v12);
  v11[0] = &v7;
  sub_1001E26C4(v11);
  v11[0] = &v9;
  sub_1001E26C4(v11);
  xpc_release(object);
}

void sub_1003A0850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v17 - 40) = &a11;
  sub_1001E26C4((v17 - 40));
  *(v17 - 40) = &a14;
  sub_1001E26C4((v17 - 40));
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A08B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003A0904(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_1003A099C(uint64_t a1)
{
  sub_1001E3CE4(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1003A0B1C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
    sub_100004A34(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A0B48(uint64_t a1, void *a2, void *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "ent.pnr");
  ctu::OsLogLogger::OsLogLogger(v10, &v9);
  ctu::OsLogLogger::OsLogLogger((a1 + 16), v10);
  ctu::OsLogLogger::~OsLogLogger(v10);
  ctu::OsLogContext::~OsLogContext(&v9);
  *(a1 + 24) = *a2;
  v6 = a2[1];
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = *a3;
  v7 = a3[1];
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  Registry::getNotificationSenderFactory(&v9, *(a1 + 24));
  (*(*v9.var0 + 128))(v9.var0);
  if (v9.var1.fRef)
  {
    sub_100004A34(v9.var1.fRef);
  }

  return a1;
}

void sub_1003A0C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  v13 = v11[6];
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = v11[4];
  if (v14)
  {
    sub_100004A34(v14);
  }

  ctu::OsLogLogger::~OsLogLogger((v11 + 2));
  v15 = v11[1];
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(a1);
}

void *sub_1003A0CC4(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 2));
  v5 = a1[1];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_1003A0D20(uint64_t a1, uint64_t a2)
{
  object = 0;
  sub_1003A0FF8(a1, a2, &object);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    if (*(**(a1 + 40) + 52) == 1)
    {
      *buf = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        *buf = xpc_null_create();
      }

      v11 = xpc_null_create();
      sub_10002A37C(83, buf, &v11);
      xpc_release(v11);
      xpc_release(*buf);
    }

    v6 = *(a1 + 56);
    v3 = *(a1 + 16);
    v7 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

      v10 = PersonalityInfo::logPrefix(**(a1 + 40));
      *buf = 136315394;
      *&buf[4] = v10;
      v14 = 2080;
      v15 = " ";
      v5 = "#W %s%sFailed to get PNR Notification interface.";
      goto LABEL_4;
    }

    v8 = *(a1 + 40);
    if (v7)
    {
      v9 = PersonalityInfo::logPrefix(*v8);
      *buf = 136315394;
      *&buf[4] = v9;
      v14 = 2080;
      v15 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sIssuing PNR Response received", buf, 0x16u);
      v6 = *(a1 + 56);
      v8 = *(a1 + 40);
    }

    PersonalityInfo::uuid(buf, *v8);
    (*(*v6 + 24))(v6, *buf, &object);
    sub_1000475BC(buf);
  }

  else
  {
    v3 = *(a1 + 16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(a1 + 40));
      *buf = 136315394;
      *&buf[4] = v4;
      v14 = 2080;
      v15 = " ";
      v5 = "#W %s%sFailed to create PNR notification dictionary";
LABEL_4:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 0x16u);
    }
  }

LABEL_16:
  xpc_release(object);
}

void sub_1003A0FF8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  *a4 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    *a4 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    *a4 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_9;
  }

  v9 = xpc_null_create();
LABEL_8:
  *a4 = v9;
LABEL_9:
  xpc_release(v8);
  if (*(a2 + 32) == *(a2 + 24))
  {
    if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      v14 = PersonalityInfo::logPrefix(**(a1 + 40));
      sub_10176E800(v14, &v49);
    }
  }

  else
  {
    v10 = *(a2 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a2 + 8);
    }

    if (v10)
    {
      v11 = *(a1 + 16);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = PersonalityInfo::logPrefix(**(a1 + 40));
        *buf = 136315650;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        *&buf[24] = asString();
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding HTTP header for PNR signature version %s", buf, 0x20u);
      }

      v13 = *(a1 + 48);
      v37[0] = *(a1 + 40);
      v37[1] = v13;
      v37[2] = 0;
      if (v13)
      {
        atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
      }

      sub_10082F9FC(a1 + 24, v37, *(a2 + 48));
    }

    if (os_log_type_enabled(*(a1 + 16), OS_LOG_TYPE_ERROR))
    {
      v15 = PersonalityInfo::logPrefix(**(a1 + 40));
      sub_10176E7B0(v15, &v49);
    }
  }

  memset(buf, 0, 24);
  ctu::cf::assign();
  *v38 = *buf;
  v39 = 0;
  v31 = xpc_string_create(v38);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  memset(buf, 0, 24);
  ctu::cf::assign();
  *__p = *buf;
  v36 = *&buf[16];
  v16 = *buf;
  if ((buf[23] & 0x80u) == 0)
  {
    v16 = __p;
  }

  v33 = a4;
  v34 = v16;
  sub_10000F688(&v33, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v31);
  v31 = 0;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 24));
  v18 = ServiceMap;
  if (v19 < 0)
  {
    v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  std::mutex::lock(ServiceMap);
  *buf = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, buf);
  if (!v23)
  {
    std::mutex::unlock(v18);
    return;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v18);
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v24);
    if (!v25)
    {
LABEL_65:
      sub_100004A34(v24);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v18);
    if (!v25)
    {
      return;
    }
  }

  v48 = 0;
  v46 = 0u;
  *v47 = 0u;
  *v44 = 0u;
  *v45 = 0u;
  *v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  memset(buf, 0, sizeof(buf));
  (*(*v25 + 192))(buf, v25, **(a1 + 40) + 24);
  v26 = BYTE7(v43);
  if (SBYTE7(v43) < 0)
  {
    v26 = v42[1];
  }

  if (v26)
  {
    if ((SBYTE7(v43) & 0x80u) == 0)
    {
      v27 = v42;
    }

    else
    {
      v27 = v42[0];
    }

    v29 = xpc_string_create(v27);
    if (!v29)
    {
      v29 = xpc_null_create();
    }

    v38[0] = 0;
    v38[1] = 0;
    v39 = 0;
    ctu::cf::assign();
    *__p = *v38;
    v36 = v39;
    v28 = __p;
    if (v39 < 0)
    {
      v28 = v38[0];
    }

    v33 = a4;
    v34 = v28;
    sub_10000F688(&v33, &v29, &v30);
    xpc_release(v30);
    v30 = 0;
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v29);
    v29 = 0;
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[1]);
  }

  if (SHIBYTE(v45[0]) < 0)
  {
    operator delete(v44[0]);
  }

  if (SBYTE7(v43) < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (v24)
  {
    goto LABEL_65;
  }
}

void sub_1003A191C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, xpc_object_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, xpc_object_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A1BD4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E47940;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003A26D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t __p, uint64_t a16, uint64_t a17, ...)
{
  sub_1003A371C(v18);
  if (LOBYTE(STACK[0x218]) == 1)
  {
    sub_100111C2C(v20);
  }

  _Unwind_Resume(a1);
}

void sub_1003A2D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  sub_1003A371C(v55);
  sub_100111C2C(&a54);

  _Unwind_Resume(a1);
}

void sub_1003A32EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (v56 < 0)
  {
    operator delete(__p);
  }

  sub_100111C2C(&a54);
  _Unwind_Resume(a1);
}

void sub_1003A34E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100280100(va);
  sub_1006E1008(v3 - 128);
  PB::Writer::~Writer((v3 - 64));
  _Unwind_Resume(a1);
}

void sub_1003A36A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = __p;
  __p = 0;
  if (v14)
  {
    sub_1000DF0B0(&__p, v14);
  }

  __cxa_guard_abort(&qword_101FBA2C8);

  _Unwind_Resume(a1);
}

uint64_t sub_1003A371C(uint64_t a1)
{
  if (*(a1 + 240) == 1)
  {
    v3 = (a1 + 200);
    sub_100112048(&v3);
    if (*(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    sub_10027E6B0(a1 + 32);
    if (*a1 == 1)
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *a1 = 0;
    }
  }

  return a1;
}

void sub_1003A379C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1003A3BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (*(v26 - 89) < 0)
  {
    operator delete(*(v26 - 112));
  }

  std::ios::~ios();
  if (*(v26 - 65) < 0)
  {
    operator delete(*(v26 - 88));
  }

  operator delete(v25);
  _Unwind_Resume(a1);
}

std::string *sub_1003A3C64(std::string *a1, std::string::value_type *a2, std::string::value_type *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v6 = a6;
  v9 = a2;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *v26 = 0u;
  memset(v25, 0, sizeof(v25));
  sub_1003A4080(v25, a2, a3, a4, a6);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__p = 0u;
  memset(v17, 0, sizeof(v17));
  if (sub_1003A3E20(v25, v17))
  {
    if ((v6 & 0x200) == 0)
    {
      while (v9 != a3)
      {
        std::string::push_back(a1, *v9++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!sub_1003A3E20(v25, v17))
    {
      if ((v6 & 0x200) == 0)
      {
        v15 = *(&v29 + 1);
        for (i = v29; i != v15; ++i)
        {
          std::string::push_back(a1, *i);
        }
      }

      a1 = sub_1001D0800(v26, a1, a5, &a5[v11], v6);
      v12 = *(&v30 + 1);
      v13 = v31;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      sub_1003A3EBC(v25);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v12 != v13)
      {
        std::string::push_back(a1, *v12++);
      }
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  return a1;
}

void sub_1003A3DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1003A3E20(uint64_t a1, uint64_t a2)
{
  v6 = a1 + 32;
  v4 = *(a1 + 32);
  v5 = *(v6 + 8);
  v9 = a2 + 32;
  v7 = *(a2 + 32);
  v8 = *(v9 + 8);
  v10 = v8 == v7 && v5 == v4;
  if (v5 != v4 && v8 != v7)
  {
    return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24) && sub_1003A4508(v4, v7) == 0;
  }

  return v10;
}

uint64_t sub_1003A3EBC(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  v4 = *(v3 - 8);
  v5 = v4 | 0x800;
  *(v3 - 8) = v4 | 0x800;
  if (*(v3 + 8) == v2)
  {
    v6 = (v3 + 24);
  }

  else
  {
    v6 = v2;
  }

  v7 = v6[1];
  if (*v6 != v7)
  {
    v8 = v6[1];
LABEL_6:
    *(a1 + 24) = v5 | 0x80;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *__p = 0u;
    v11 = sub_1001D0D18(v9, v8, v10, __p, v5 | 0x80u);
    sub_1003A4174(v3, v8, v10, __p, (v5 & 0x800) != 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v11)
    {
      *(a1 + 80) = v7;
      *(a1 + 96) = *(a1 + 88) != v7;
      return a1;
    }

    v2 = *v3;
    goto LABEL_16;
  }

  v12 = *(a1 + 8);
  if (v12 == v7)
  {
LABEL_16:
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
    }

    *(a1 + 128) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
    *(v3 + 25) = 0u;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    *(a1 + 136) = 0;
    return a1;
  }

  v13 = *(a1 + 16);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  v14 = sub_1001D0D18(v13, v7, v12, __p, v4 | 0x860u);
  sub_1003A4174(v3, v7, v12, __p, 1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    v5 = *(a1 + 24);
    goto LABEL_6;
  }

  return a1;
}

void sub_1003A4060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A4080(uint64_t a1, char *a2, char *a3, uint64_t a4, unsigned int a5)
{
  v5 = a5;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 0u;
  v9 = (a1 + 32);
  *(a1 + 24) = a5;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 57) = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  *__p = 0u;
  sub_1001D0D18(a4, a2, a3, __p, a5);
  sub_1003A4174(v9, a2, a3, __p, (v5 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1003A4148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A4174(void **a1, uint64_t a2, void *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  sub_1003A42F8(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  v11 = *a1;
  if (a1[1] == *a1)
  {
    v14 = a2 - v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    do
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12);
      if (v17 <= v13)
      {
        v19 = a4 + 3;
      }

      else
      {
        v19 = v18;
      }

      *&v11[v12] = v14 + *v19;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13)
      {
        v20 = a4 + 3;
      }

      else
      {
        v20 = (*a4 + v12);
      }

      *(*a1 + v12 + 8) = v14 + v20[1];
      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v21 = a4 + 3;
      }

      else
      {
        v21 = (*a4 + v12);
      }

      v22 = *(v21 + 16);
      v11 = *a1;
      v23 = a1[1];
      *(*a1 + v12 + 16) = v22;
      ++v13;
      v12 += 24;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((v23 - v11) >> 3));
  }

  a1[3] = a3;
  a1[4] = a3;
  *(a1 + 40) = 0;
  v24 = v14 + a4[6];
  a1[6] = v24;
  a1[7] = (v14 + a4[7]);
  *(a1 + 64) = *(a4 + 64);
  a1[9] = (v14 + a4[9]);
  a1[10] = (v14 + a4[10]);
  *(a1 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    a1[13] = v24;
  }

  *(a1 + 96) = *(a4 + 96);
}

void sub_1003A42F8(void **result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_1003A4334(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 24 * a2;
  }
}

void sub_1003A4334(void **a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 24 * a2;
      v11 = 24 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v11 -= 24;
      }

      while (v11);
      v4 = v10;
    }

    a1[1] = v4;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1003A44B0(a1, v9);
    }

    v12 = 24 * a2;
    v13 = 24 * v6;
    do
    {
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v14 = *a1;
    v15 = a1[1];
    v16 = *a1 + 24 * v6 - v15;
    if (v15 != *a1)
    {
      v17 = *a1 + 24 * v6 - v15;
      do
      {
        v18 = *v14;
        *(v17 + 16) = v14[2];
        *v17 = v18;
        v17 += 24;
        v14 += 3;
      }

      while (v14 != v15);
      v14 = *a1;
    }

    *a1 = v16;
    a1[1] = (24 * v6 + 24 * a2);
    a1[2] = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_1003A44B0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1003A4508(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_1001CD6B4(&__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    sub_1001CD6B4(&v15, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v17);
    v5 = v15;
    v4 = v16;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  v6 = HIBYTE(v20);
  if (v20 >= 0)
  {
    v7 = HIBYTE(v20);
  }

  else
  {
    v7 = v19;
  }

  if (v20 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v3 & 0x80u) == 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = &v15;
  }

  else
  {
    v10 = v5;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(p_p, v10, v11);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_24;
  }

  operator delete(__p);
LABEL_24:
  v13 = v9 < v7;
  if (v7 < v9)
  {
    v13 = -1;
  }

  if (v12)
  {
    return v12;
  }

  else
  {
    return v13;
  }
}

void sub_1003A4624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A4640(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
LABEL_7:
    v17 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10176E90C(v17);
    }

    *a4 = 0;
    a4[80] = 0;
    if (v16)
    {
      return;
    }

LABEL_37:
    sub_100004A34(v14);
    return;
  }

LABEL_13:
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = a3[1];
  }

  v21 = [NSData nonOwningDataWithBytes:v19 length:v20];
  v22 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Decoding client attestation XML document using BlastDoor", buf, 2u);
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  (*(*v15 + 16))(&v31, v15);
  *__p = 0u;
  v30 = 0u;
  *v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  *buf = 0;
  *&buf[8] = &v33;
  (*(*v31 + 48))(&v26);
  sub_1003A5C24(buf);
  v23 = v33;
  if (v33)
  {
    v24 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10176E850(v23, v24);
    }
  }

  else
  {
    if (BYTE8(v30))
    {
      v35 = 0;
      v36 = 0;
      sub_1003A5AC0();
    }

    v25 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10176E8C8(v25);
    }
  }

  *a4 = 0;
  a4[80] = 0;
  if (BYTE8(v30) == 1)
  {
    if (SBYTE7(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[1]);
    }

    *buf = &v26;
    sub_1003A5904(buf);
  }

  if (v32)
  {
    sub_100004A34(v32);
  }

  sub_1003A5A8C(&v33);

  if ((v16 & 1) == 0)
  {
    goto LABEL_37;
  }
}

void sub_1003A4B30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, const void *a22, __int16 a24, char a25, char a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_1003A584C(&a24);
  v39 = *(v37 - 96);
  if (v39)
  {
    sub_100004A34(v39);
  }

  sub_1003A58A0(&a9);
  if (a21)
  {
    sub_100004A34(a21);
  }

  sub_1003A5A8C(&a22);

  if ((v36 & 1) == 0)
  {
    sub_100004A34(v34);
  }

  _Unwind_Resume(a1);
}

void sub_1003A4BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  __src = 0u;
  memset(v49, 0, sizeof(v49));
  v48 = 0u;
  sub_10000C320(&v48);
  v13 = *(a3 + 23);
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a3 + 8);
  }

  if (v13)
  {
    v14 = *(a3 + 47);
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a3 + 32);
    }

    if (v14)
    {
      sub_10000501C(__p, "--boundary");
      sub_100917DBC(&v48, __p);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      sub_10000501C(__p, "Content-Disposition: form-data; name=applecertificate");
      sub_100917DBC(&v48, __p);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      sub_10000501C(__p, "Content-Type: text/plain");
      sub_100917DBC(&v48, __p);
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100917E0C(&v48);
      v15 = sub_10000C030(v49, "{\nleafCertificate : ", 23);
      v16 = *(a3 + 23);
      if (v16 >= 0)
      {
        v17 = a3;
      }

      else
      {
        v17 = *a3;
      }

      if (v16 >= 0)
      {
        v18 = *(a3 + 23);
      }

      else
      {
        v18 = *(a3 + 8);
      }

      v19 = sub_10000C030(v15, v17, v18);
      v20 = sub_10000C030(v19, ",\n", 3);
      v21 = sub_10000C030(v20, "intermediateCertificate : ", 29);
      v24 = *(a3 + 24);
      v23 = a3 + 24;
      v22 = v24;
      v25 = *(v23 + 23);
      if (v25 >= 0)
      {
        v26 = v23;
      }

      else
      {
        v26 = v22;
      }

      if (v25 >= 0)
      {
        v27 = *(v23 + 23);
      }

      else
      {
        v27 = *(v23 + 8);
      }

      v28 = sub_10000C030(v21, v26, v27);
      v29 = sub_10000C030(v28, "\n", 2);
      sub_10000C030(v29, "}\n", 2);
      sub_100917E0C(&v48);
    }
  }

  if (*(a2 + 48) == 1)
  {
    v30 = *(a2 + 23);
    if ((v30 & 0x80u) != 0)
    {
      v30 = *(a2 + 8);
    }

    if (v30)
    {
      v31 = *(a2 + 47);
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(a2 + 32);
      }

      if (v31)
      {
        sub_10000501C(__p, "--boundary");
        sub_100917DBC(&v48, __p);
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = 0;
        __p[1] = 0;
        v47 = 0;
        std::to_string(&v44, *a4);
        v32 = std::string::insert(&v44, 0, "Content-Disposition: form-data; name=client_authenticity_result_", 0x41uLL);
        v33 = *&v32->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        v34 = std::string::append(&v45, "", 1uLL);
        v35 = *&v34->__r_.__value_.__l.__data_;
        v47 = v34->__r_.__value_.__r.__words[2];
        *__p = v35;
        v34->__r_.__value_.__l.__size_ = 0;
        v34->__r_.__value_.__r.__words[2] = 0;
        v34->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        sub_100917DBC(&v48, __p);
        sub_10000501C(&v45, "Content-Type: text/plain");
        sub_100917DBC(&v48, &v45);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        sub_100917E0C(&v48);
        sub_10000501C(&v45, "{");
        sub_100917DBC(&v48, &v45);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v36 = std::string::append(&v44, ",", 2uLL);
        v37 = *&v36->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v37;
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        sub_100917DBC(&v48, &v45);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        std::operator+<char>();
        v38 = std::string::append(&v44, "", 1uLL);
        v39 = *&v38->__r_.__value_.__l.__data_;
        v45.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
        *&v45.__r_.__value_.__l.__data_ = v39;
        v38->__r_.__value_.__l.__size_ = 0;
        v38->__r_.__value_.__r.__words[2] = 0;
        v38->__r_.__value_.__r.__words[0] = 0;
        sub_100917DBC(&v48, &v45);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        sub_10000501C(&v45, "}");
        sub_100917DBC(&v48, &v45);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        v40 = *(a5 + 23);
        if ((v40 & 0x80u) != 0)
        {
          v40 = *(a5 + 8);
        }

        if (v40)
        {
          sub_10000501C(&v45, "--boundary");
          sub_100917DBC(&v48, &v45);
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          sub_10000501C(&v45, "Content-Disposition: form-data; name=as_temp_token");
          sub_100917DBC(&v48, &v45);
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          sub_10000501C(&v45, "Content-Type: text/plain");
          sub_100917DBC(&v48, &v45);
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          sub_100917E0C(&v48);
          v41 = *(a5 + 23);
          if (v41 >= 0)
          {
            v42 = a5;
          }

          else
          {
            v42 = *a5;
          }

          if (v41 >= 0)
          {
            v43 = *(a5 + 23);
          }

          else
          {
            v43 = *(a5 + 8);
          }

          sub_10000C030(v49, v42, v43);
          sub_100917E0C(&v48);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  *&v44.__r_.__value_.__l.__data_ = 0uLL;
  sub_1003A5AC0();
}

void sub_1003A5688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1003A584C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1003A58A0(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v3 = a1;
    sub_1003A5904(&v3);
  }

  return a1;
}

void sub_1003A5904(void ***a1)
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
        v4 -= 56;
        sub_1003A5988(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1003A5988(uint64_t a1)
{
  v2 = (a1 + 32);
  sub_1003A59D0(&v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void sub_1003A59D0(void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1003A5A24(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1003A5A24(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    v4 -= 4;
    if (*(v5 - 8) == 1)
    {
      v6 = *v4;
      if (*v4)
      {
        *(v5 - 3) = v6;
        operator delete(v6);
      }
    }
  }

  *(a1 + 8) = a2;
}

const void **sub_1003A5A8C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1003A5B2C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E47990;
  sub_100A221C8(a1 + 3, a2);
  return a1;
}

void sub_1003A5BA8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E47990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_1003A5C24(const void **a1)
{
  v2 = a1[1];
  if (*a1)
  {
    v3 = *v2;
    *v2 = *a1;
    v6 = v3;
  }

  else
  {
    v4 = *v2;
    *v2 = 0;
    v6 = v4;
  }

  sub_1003A5A8C(&v6);
  return a1;
}

const void **sub_1003A5C7C(const void **result)
{
  if (*result)
  {
    sub_10005C7A4(&v2, result);
    v1 = v2;
    sub_100005978(&v2);
    return [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  }

  return result;
}

const void **sub_1003A5CF0()
{
  result = CUTWeakLinkClass();
  if (result)
  {
    v1 = [objc_msgSend(result "preferencesURL")];
    cf = v1;
    if (v1)
    {
      CFRetain(v1);
      v2 = cf;
      CFRetain(cf);
      sub_1003A5C7C(&v2);
      sub_100005978(&v2);
    }

    return sub_100005978(&cf);
  }

  return result;
}

void sub_1003A5D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void sub_1003A5D8C(NSObject **a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1)
  {
    dispatch_retain(*a1);
  }

  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a3[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003A5EB4();
}

void sub_1003A5E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A5FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A60B0(void *a1, NSObject **a2, void *a3, void *a4, char a5)
{
  *a1 = &off_101E9F2C0;
  v9 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, off_101FB1CA8);
  sub_1003A6294(v9, a2, &v12);
  ctu::OsLogContext::~OsLogContext(&v12);
  *a1 = off_101E479E0;
  a1[6] = off_101E47BA8;
  a1[7] = *a3;
  v10 = a3[1];
  a1[8] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  a1[9] = *a4;
  v11 = a4[1];
  a1[10] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  a1[11] = 0;
  sub_10032E870();
}

void sub_1003A622C(_Unwind_Exception *a1)
{
  sub_1003ABC40(v3, 0);
  v5 = v1[10];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = v1[8];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v2);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_1003A6294(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_1003A62FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A6320(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, void **a5)
{
  v7 = a3;
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = sub_1003A6440(v7);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I start (%s)", &v14, 0xCu);
  }

  *(a1 + 96) = *a2;
  *(a1 + 1200) = v7;
  sub_1003AB020((a1 + 408), a4);
  v11 = *a5;
  if (*a5)
  {
    v11 = _Block_copy(v11);
  }

  v12 = *(a1 + 1208);
  *(a1 + 1208) = v11;
  if (v12)
  {
    _Block_release(v12);
  }

  return sub_1003ABDE8(*(a1 + 88), &v14, 1);
}

void sub_1003A642C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

const char *sub_1003A6440(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "GetPlansFetch";
  }

  else
  {
    return off_101E481E0[a1 - 1];
  }
}

uint64_t sub_1003A6468(uint64_t a1, _OWORD *a2, uint64_t a3, int *a4)
{
  sub_1003AB118((a1 + 128), a4);
  v8[0] = 0;
  result = sub_1003A652C(a1, a2, a3, v8);
  if (v8[0] == 1)
  {
    return sub_10016354C(&v9);
  }

  return result;
}

void sub_1003A6508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10)
{
  if (a9 == 1)
  {
    sub_10016354C(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A652C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  (*(**(a1 + 72) + 64))(&v11);
  v7 = *(a1 + 112);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  v8 = v11;
  *(v7 + 16) = v12;
  *v7 = v8;
  v13[0] = 0;
  if (*a4 == 1)
  {
    sub_10016F74C(v14, (a4 + 8));
    v13[0] = 1;
  }

  v10 = 0;
  result = sub_1003A6320(a1, a2, 2, v13, &v10);
  if (v13[0] == 1)
  {
    return sub_10016354C(v14);
  }

  return result;
}

void sub_1003A664C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  if (a13 == 1)
  {
    sub_10016354C(&a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6678(uint64_t a1, _OWORD *a2)
{
  (*(**(a1 + 72) + 64))(&v8);
  v4 = *(a1 + 112);
  if (*(v4 + 23) < 0)
  {
    operator delete(*v4);
  }

  v5 = v8;
  *(v4 + 16) = v9;
  *v4 = v5;
  v10[0] = 0;
  v7 = 0;
  result = sub_1003A6320(a1, a2, 4, v10, &v7);
  if (v10[0] == 1)
  {
    return sub_10016354C(&v11);
  }

  return result;
}

void sub_1003A6768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  if (a13 == 1)
  {
    sub_10016354C(&a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6794(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 120);
  *(a1 + 112) = v6;
  *(a1 + 120) = v5;
  if (v7)
  {
    sub_100004A34(v7);
  }

  *(a1 + 1224) = 257;
  v10[0] = 0;
  v9 = 0;
  result = sub_1003A6320(a1, a2, 3, v10, &v9);
  if (v10[0] == 1)
  {
    return sub_10016354C(&v11);
  }

  return result;
}

void sub_1003A6858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a11 == 1)
  {
    sub_10016354C(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A687C(uint64_t a1, _OWORD *a2, uint64_t *a3, int a4, int *a5)
{
  v10 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 120);
  *(a1 + 112) = v10;
  *(a1 + 120) = v9;
  if (v11)
  {
    sub_100004A34(v11);
  }

  *(a1 + 1225) = a4 ^ 1;
  *(a1 + 1224) = 1;
  sub_1003AB118((a1 + 128), a5);
  if (a4)
  {
    v12 = 5;
  }

  else
  {
    v12 = 1;
  }

  v15[0] = 0;
  v14 = 0;
  result = sub_1003A6320(a1, a2, v12, v15, &v14);
  if (v15[0] == 1)
  {
    return sub_10016354C(&v16);
  }

  return result;
}

void sub_1003A696C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a11 == 1)
  {
    sub_10016354C(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6990(uint64_t a1, _OWORD *a2, int *a3)
{
  sub_1003AB118((a1 + 128), a3);
  v7[0] = 0;
  v6 = 0;
  result = sub_1003A6320(a1, a2, 8, v7, &v6);
  if (v7[0] == 1)
  {
    return sub_10016354C(&v8);
  }

  return result;
}

void sub_1003A6A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a11 == 1)
  {
    sub_10016354C(&a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A6A58(uint64_t a1, _OWORD *a2, const void **a3)
{
  v7[0] = 0;
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  sub_1003A6320(a1, a2, 0, v7, &v6);
  if (v5)
  {
    _Block_release(v5);
  }

  if (v7[0] == 1)
  {
    sub_10016354C(&v8);
  }
}

void sub_1003A6B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1003A6B60(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  (*(**(a1 + 72) + 64))(&v11);
  v7 = *(a1 + 112);
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  v8 = v11;
  *(v7 + 16) = v12;
  *v7 = v8;
  v13[0] = 0;
  if (*a4 == 1)
  {
    sub_10016F74C(v14, (a4 + 8));
    v13[0] = 1;
  }

  v10 = 0;
  result = sub_1003A6320(a1, a2, 6, v13, &v10);
  if (v13[0] == 1)
  {
    return sub_10016354C(v14);
  }

  return result;
}

void sub_1003A6C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14)
{
  if (a13 == 1)
  {
    sub_10016354C(&a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6CAC(uint64_t a1, _OWORD *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 120);
  *(a1 + 112) = v6;
  *(a1 + 120) = v5;
  if (v7)
  {
    sub_100004A34(v7);
  }

  *(a1 + 1224) = 257;
  v10[0] = 0;
  v9 = 0;
  result = sub_1003A6320(a1, a2, 9, v10, &v9);
  if (v10[0] == 1)
  {
    return sub_10016354C(&v11);
  }

  return result;
}

void sub_1003A6D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  if (a11 == 1)
  {
    sub_10016354C(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003A6D94(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  (*(**(a1 + 72) + 64))(&v10);
  v6 = *(a1 + 112);
  if (*(v6 + 23) < 0)
  {
    operator delete(*v6);
  }

  v7 = v10;
  *(v6 + 16) = v11;
  *v6 = v7;
  v12[0] = 0;
  sub_10016F74C(v13, a3);
  v12[0] = 1;
  v9 = 0;
  result = sub_1003A6320(a1, a2, 7, v12, &v9);
  if (v12[0] == 1)
  {
    return sub_10016354C(v13);
  }

  return result;
}

void sub_1003A6EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a13 == 1)
  {
    sub_10016354C(v13 + 8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A6ECC(void *a1, void *a2, uint64_t a3)
{
  if (*a2 == a1[12] && a2[1] == a1[13])
  {
    if (*(a3 + 92))
    {
      goto LABEL_16;
    }

    if (*(a3 + 91))
    {
      goto LABEL_16;
    }

    v6 = a1[14];
    if (*(v6 + 146) & 1) != 0 || (*(v6 + 147))
    {
      goto LABEL_16;
    }

    if (*(v6 + 144) == 1)
    {
      v7 = *(v6 + 95);
      if (v7 < 0)
      {
        v7 = *(v6 + 80);
      }

      if (!v7)
      {
        goto LABEL_16;
      }
    }

    if (*(v6 + 149) == 1)
    {
LABEL_16:
      sub_1003AD37C(a1[11], &v18, 1);
      v8 = a1[8];
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v9;
          v11 = a1[7];
          if (v11)
          {
            v12 = a1[151];
            if (v12)
            {
              v13 = a1[5];
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT) && (*v17 = 0, _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I pending profile has ppr for get plan items", v17, 2u), (v12 = a1[151]) == 0))
              {
                v14 = 0;
              }

              else
              {
                v14 = _Block_copy(v12);
              }

              aBlock = v14;
              (*(*v11 + 80))(v11, &aBlock);
              if (aBlock)
              {
                _Block_release(aBlock);
              }
            }
          }

          sub_100004A34(v10);
        }
      }
    }

    else
    {
      sub_1003AD8C0(a1[11], &v15, 1);
    }
  }

  else
  {
    v5 = a1[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I CSN does not match operation's", buf, 2u);
    }
  }
}

void sub_1003A708C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A70B0(uint64_t result, int a2, uint64_t a3)
{
  v3 = result;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = *(result + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I user did consent", buf, 2u);
      }

      v6 = *(a3 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a3 + 8);
      }

      if (v6)
      {
        v7 = *(v3 + 112);
        v8 = *(v7 + 95);
        if (v8 < 0)
        {
          v8 = *(v7 + 80);
        }

        if (v8)
        {
          v9 = *(v3 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *v14 = 0;
            _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "confirmation code already exists - overriding the old one", v14, 2u);
            v7 = *(v3 + 112);
          }
        }

        std::string::operator=((v7 + 72), a3);
      }

      return sub_1003AE708(*(v3 + 88), &v13, 1);
    }

    else if (a2 == 2)
    {
      return sub_1003ADD4C(*(result + 88), &v16, 1);
    }
  }

  else
  {
    v10 = *(result + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I user did not consent", v12, 2u);
    }

    return sub_1003AEC44(*(v3 + 88), &v11, 1);
  }

  return result;
}

std::string *sub_1003A7234(std::string *result, const std::string *a2, const std::string *a3, const std::string *a4, const std::string *a5, const std::string *a6)
{
  if (result[12].__r_.__value_.__s.__data_[16] == 1)
  {
    v11 = result;
    std::string::operator=(result + 7, a2);
    std::string::operator=(v11 + 8, a3);
    std::string::operator=(v11 + 9, a4);
    std::string::operator=(v11 + 10, a5);

    return std::string::operator=((v11 + 272), a6);
  }

  return result;
}

void sub_1003A72C8(uint64_t a1, void *a2, __int128 *a3, uint64_t a4)
{
  *(a1 + 1224) = 257;
  v8 = *(a1 + 96) != *a2 || *(a1 + 104) != a2[1];
  v9 = *(a1 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E eid does not match aborting!", &v16, 2u);
    }

    sub_1003A743C(a1, 0);
  }

  else
  {
    if (v10)
    {
      if (*(a3 + 23) >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      v16 = 136315138;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I got provisioning callback iccid : %s", &v16, 0xCu);
    }

    v12 = *(a1 + 112);
    v13 = v12[13];
    v14 = v12 + 12;
    if (v13 >= v12[14])
    {
      v15 = sub_1000053A0(v14, a3);
    }

    else
    {
      sub_10011C7A4(v14, a3);
      v15 = v13 + 24;
    }

    v12[13] = v15;
    if (*a4 == 1)
    {
      std::string::operator=(*(a1 + 112), (a4 + 8));
    }

    sub_1003AF270(*(a1 + 88), &v16, 1);
  }
}

void sub_1003A743C(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        v7 = *(a1 + 1208);
        if (v7)
        {
          v35 = _Block_copy(v7);
          (*(*v6 + 80))(v6, &v35);
          if (v35)
          {
            _Block_release(v35);
          }
        }

        v8 = *(a1 + 1216);
        if (v8)
        {
          v34 = _Block_copy(v8);
          (*(*v6 + 72))(v6, &v34);
          if (v34)
          {
            _Block_release(v34);
          }

          v9 = *(a1 + 1216);
          *(a1 + 1216) = 0;
          if (v9)
          {
            _Block_release(v9);
          }
        }

        v10 = 1;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v6 = 0;
    }
  }

  else
  {
    v10 = 0;
    v6 = 0;
    v5 = 0;
  }

  v11 = 0;
  v12 = 2;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = 2;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: failed", buf, 2u);
        v13 = 0;
        v12 = 1;
        if (!v10)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v13 = 0;
        v12 = 1;
        v11 = 2;
        if (!v10)
        {
          goto LABEL_58;
        }
      }

      goto LABEL_36;
    }

    v13 = 0;
    if (a2 == 1)
    {
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: successfully", buf, 2u);
      }

      v12 = 0;
      v11 = 1;
      v13 = 1;
      if (!v10)
      {
        goto LABEL_58;
      }

LABEL_36:
      (*(*v6 + 88))(v6, v12);
      if (v13)
      {
        v18 = 0;
      }

      else
      {
        if (*(a1 + 1200) == 7)
        {
          goto LABEL_41;
        }

        v18 = 5;
      }

      (*(*v6 + 168))(v6, v18);
LABEL_41:
      if (*(a1 + 304) == 1)
      {
        v19 = *(a1 + 132);
        if (v19 <= 0xC && ((1 << v19) & 0x1820) != 0)
        {
          *(a1 + 160) = 4;
        }

        *(a1 + 296) = v11;
        sub_1003AB290(&v20, (a1 + 128));
        (*(*v6 + 176))(v6, &v20);
        if (v32 < 0)
        {
          operator delete(__p);
        }

        if (v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v24 < 0)
        {
          operator delete(v23);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        sub_1003AB1FC(a1 + 128);
      }

      goto LABEL_58;
    }

LABEL_35:
    if (!v10)
    {
      goto LABEL_58;
    }

    goto LABEL_36;
  }

  if (a2 == 2)
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: incomplete", buf, 2u);
    }

    v13 = 0;
    v11 = 3;
    goto LABEL_35;
  }

  v13 = 0;
  if (a2 != 3)
  {
    goto LABEL_35;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: cancel", buf, 2u);
  }

  v13 = 0;
  v12 = 3;
  v11 = 4;
  if (v10)
  {
    goto LABEL_36;
  }

LABEL_58:
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1003A784C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 96);
  if (v4)
  {
    _Block_release(v4);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A78AC(uint64_t a1)
{
  *(a1 + 1224) = 257;
  *(a1 + 1249) = 1;
  return sub_1003AFD20(*(a1 + 88), &v2, 1);
}

void sub_1003A78E8(uint64_t result, void *a2, uint64_t a3)
{
  if (!*(result + 1296) && *(a3 + 176) == 1)
  {
    sub_1003AB118((result + 128), a3);
  }

  if (*(result + 96) == *a2 && *(result + 104) == a2[1])
  {
    v6 = *(result + 112);
    if ((*(v6 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v6 + 8))
      {
        return;
      }
    }

    else if (*(v6 + 23))
    {
      return;
    }

    if (*(result + 1296))
    {
      sub_1003B0128(*(result + 88), &v7, 1);
    }
  }
}

void sub_1003A798C(void *a1, void *a2)
{
  if (a1[12] == *a2 && a1[13] == a2[1])
  {
    sub_1003A7A34(a1);

    sub_1003A743C(a1, 3);
  }

  else
  {
    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E eid does not match", v5, 2u);
    }
  }
}

void sub_1003A7A34(uint64_t a1)
{
  v1 = *(a1 + 1232);
  if (v1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I reset wait for consent timer", v4, 2u);
      v1 = *(a1 + 1232);
      *(a1 + 1232) = 0;
      if (!v1)
      {
        return;
      }
    }

    else
    {
      *(a1 + 1232) = 0;
    }

    (*(*v1 + 8))(v1);
  }
}

uint64_t sub_1003A7AE4(uint64_t a1)
{
  if (*(a1 + 304) == 1)
  {
    *(a1 + 160) = 4;
  }

  *&v4[1] = v1;
  v5 = v2;
  return sub_1003B05CC(*(a1 + 88), v4, 1);
}

uint64_t sub_1003A7B58(uint64_t a1, void **a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I websheet launched", buf, 2u);
  }

  if ((*(a1 + 1224) & 1) == 0)
  {
    *(a1 + 1224) = 1;
  }

  v5 = *(a1 + 1240);
  *(a1 + 1240) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a1 + 1216);
  *(a1 + 1216) = v6;
  if (v7)
  {
    _Block_release(v7);
  }

  return sub_1003B1368(*(a1 + 88), &v9, 1);
}

void sub_1003A7C40(uint64_t a1)
{
  v2 = *(a1 + 1216);
  if (v2)
  {
    *(a1 + 1216) = 0;
    _Block_release(v2);
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I invalidate websheet callback on quit", buf, 2u);
    }
  }

  if (*(a1 + 1224) != 1 || (*(a1 + 1225) & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I abort on websheet quit", buf, 2u);
    }

    v5 = *(a1 + 64);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *(a1 + 56);
        if (v7)
        {
          if (*(a1 + 304) == 1)
          {
            if (*(a1 + 160) == 4)
            {
              v8 = 1;
            }

            else
            {
              v8 = 3;
            }

            *(a1 + 296) = v8;
            sub_1003AB290(&v9, (a1 + 128));
            (*(*v7 + 176))(v7, &v9);
            if (v21 < 0)
            {
              operator delete(__p);
            }

            if (v19 < 0)
            {
              operator delete(v18);
            }

            if (v17 < 0)
            {
              operator delete(v16);
            }

            if (v15 < 0)
            {
              operator delete(v14);
            }

            if (v13 < 0)
            {
              operator delete(v12);
            }

            if (v11 < 0)
            {
              operator delete(v10);
            }

            sub_1003AB1FC(a1 + 128);
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }

    sub_1003ADD4C(*(a1 + 88), buf, 1);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }
}

void sub_1003A7E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1003A7E40(&a9);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003A7E40(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1003A7EC4(uint64_t a1)
{
  if (*(a1 + 72))
  {
    sub_100004AA0(&v18, (a1 + 8));
    v3 = v18;
    v2 = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v2);
    }

    (*(**(a1 + 72) + 16))(&v15);
    Registry::getTimerService(&v18, v15);
    v4 = v18;
    sub_10000501C(__p, "Remote Provisioning User Consent Timer");
    v5 = *(a1 + 24);
    object = v5;
    if (v5)
    {
      dispatch_retain(v5);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1003A8154;
    aBlock[3] = &unk_101E47C98;
    aBlock[4] = a1;
    aBlock[5] = v3;
    v10 = v2;
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = _Block_copy(aBlock);
    sub_100D23364(v4, __p, 1, 180000000, &object, &v11);
    v6 = v17;
    v17 = 0;
    v7 = *(a1 + 1232);
    *(a1 + 1232) = v6;
    if (v7)
    {
      (*(*v7 + 8))(v7);
      v8 = v17;
      v17 = 0;
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }
    }

    if (v11)
    {
      _Block_release(v11);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (v19)
    {
      sub_100004A34(v19);
    }

    if (v16)
    {
      sub_100004A34(v16);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }
  }
}

void sub_1003A80D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 40);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v25 - 64);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A8154(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I waited too long for reply, aborting", buf, 2u);
        }

        v7 = *(v3 + 1232);
        *(v3 + 1232) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        sub_1003B1D3C(*(v3 + 88), &v8, 1);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1003A823C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003A8258(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003A8278(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I delete all plans", buf, 2u);
  }

  v3 = a1[8];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = a1[7];
      if (v6)
      {
        sub_100004AA0(buf, a1 + 1);
        v8 = *buf;
        v7 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v7);
        }

        v9[0] = _NSConcreteStackBlock;
        v9[1] = 1174405120;
        v9[2] = sub_1003A843C;
        v9[3] = &unk_101E47CC8;
        v9[4] = a1;
        v9[5] = v8;
        v10 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        aBlock = _Block_copy(v9);
        (*(*v6 + 24))(v6, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v10)
        {
          std::__shared_weak_count::__release_weak(v10);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1003A83F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_1003A843C(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10[0] = 67109120;
          v10[1] = a2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I delete all plans result : %d", v10, 8u);
        }

        v9 = *(v5 + 88);
        if (a2)
        {
          sub_1003B2368(v9, v10, 1);
        }

        else
        {
          sub_1003ADD4C(v9, v10, 1);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1003A8550(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I get subscription info", buf, 2u);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      v6 = *(a1 + 56);
      if (v6)
      {
        sub_100004AA0(buf, (a1 + 8));
        v8 = *buf;
        v7 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v7);
        }

        if (*(a1 + 1224) == 1)
        {
          v9 = *(a1 + 1225);
        }

        else
        {
          v9 = 0;
        }

        v10[0] = _NSConcreteStackBlock;
        v10[1] = 1174405120;
        v10[2] = sub_1003A8758;
        v10[3] = &unk_101E47CF8;
        v10[4] = a1;
        v10[5] = v8;
        v11 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v6;
        v13 = v5;
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        aBlock = _Block_copy(v10);
        (*(*v6 + 16))(v6, v9 & 1, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          sub_100004A34(v13);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1003A8704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_1003A8758(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40))
      {
        v10 = *a2;
        v8 = a2 + 1;
        v9 = v10;
        if (v10 == v8)
        {
          goto LABEL_17;
        }

        v11 = 0;
        do
        {
          v12 = *(v5 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = subscriber::asString();
            v14 = *(v9 + 10);
            *buf = 136315394;
            v21 = v13;
            v22 = 1024;
            v23 = v14;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I subscription info result for slot %s: %d", buf, 0x12u);
          }

          v15 = *(v9 + 10) < 2u;
          v16 = v9[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v9[2];
              v18 = *v17 == v9;
              v9 = v17;
            }

            while (!v18);
          }

          v11 |= v15;
          v9 = v17;
        }

        while (v17 != v8);
        if ((v11 & 1) == 0)
        {
LABEL_17:
          if (*(v5 + 1224) == 1 && (*(v5 + 1225) & 1) != 0)
          {
            v19 = 7;
          }

          else
          {
            v19 = 6;
          }

          (*(**(a1 + 56) + 168))(*(a1 + 56), v19);
          sub_1003B3514(*(v5 + 88), buf, 1);
        }

        else
        {
          sub_1003B2A84(*(v5 + 88), buf, 1);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void *sub_1003A8950(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003A8984(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1003A89DC(uint64_t a1)
{
  if (*(a1 + 1200))
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 112);
  if ((*(v2 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v2 + 8))
    {
      goto LABEL_6;
    }

LABEL_7:
    v3 = *(a1 + 64);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 56);
        if (v6)
        {
          sub_100004AA0(buf, (a1 + 8));
          v8 = *buf;
          v7 = v19;
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v7);
          }

          v9 = *(a1 + 120);
          v16 = *(a1 + 112);
          v17 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v11[0] = _NSConcreteStackBlock;
          v11[1] = 1174405120;
          v11[2] = sub_1003A8E94;
          v11[3] = &unk_101E47D28;
          v11[4] = a1;
          v11[5] = v8;
          v12 = v7;
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = v6;
          v14 = v5;
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
          aBlock = _Block_copy(v11);
          (*(*v6 + 32))(v6, a1 + 96, &v16, &aBlock);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v17)
          {
            sub_100004A34(v17);
          }

          if (v14)
          {
            sub_100004A34(v14);
          }

          if (v12)
          {
            std::__shared_weak_count::__release_weak(v12);
          }

          if (v7)
          {
            std::__shared_weak_count::__release_weak(v7);
          }
        }

        sub_100004A34(v5);
      }
    }

    return;
  }

  if (*(v2 + 23))
  {
    goto LABEL_7;
  }

LABEL_6:
  if (sub_1003A8C44(a1))
  {
    goto LABEL_7;
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E GetPlansFetch: No install params found", buf, 2u);
  }

  sub_1003B3B54(*(a1 + 88), buf, 1);
}

void sub_1003A8BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock, uint64_t a19, std::__shared_weak_count *a20)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  sub_100004A34(v20);
  _Unwind_Resume(a1);
}

BOOL sub_1003A8C44(uint64_t a1)
{
  if (!*(a1 + 1296))
  {
    return 0;
  }

  v2 = *(*(*(a1 + 1264) + ((*(a1 + 1288) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 1288));
  v8 = v2;
  v3 = *(*(*(a1 + 1264) + ((*(a1 + 1288) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * *(a1 + 1288) + 8);
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003B5EAC((a1 + 1256));
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v8;
    if (*(v8 + 23) < 0)
    {
      v5 = *v8;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Dequeuing server: (%s)", buf, 0xCu);
  }

  v20 = 0;
  *__p = 0u;
  v19 = 0u;
  *v16 = 0u;
  v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  *v13 = 0u;
  v10 = 0u;
  *v11 = 0u;
  *buf = 0u;
  sub_1003AB564(buf, *(*(a1 + 1312) + 8 * (*(a1 + 1336) / 0x16uLL)) + 184 * (*(a1 + 1336) % 0x16uLL));
  sub_1003B5F7C((a1 + 1304));
  if (v8)
  {
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 120);
    *(a1 + 112) = v8;
    if (v6)
    {
      sub_100004A34(v6);
    }

    sub_1003AB118((a1 + 128), buf);
  }

  if (v20 == 1)
  {
    if (SBYTE7(v19) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v17) < 0)
    {
      operator delete(v16[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[1]);
    }

    if (SHIBYTE(v14[0]) < 0)
    {
      operator delete(v13[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(*&buf[8]);
    }
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  return v8 != 0;
}

void sub_1003A8E68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003A8E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (!*(a1 + 40))
      {
LABEL_41:
        sub_100004A34(v9);
        return;
      }

      v10 = *(v7 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = asString();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I received fetch result : %s", buf, 0xCu);
      }

      if (a2 > 1)
      {
        goto LABEL_24;
      }

      sub_1003AB44C(v7 + 312, a3);
      if (*(v7 + 312) == 1 && *(v7 + 400) == 1)
      {
        v11 = *(v7 + 40);
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        v12 = 0x84BDA12F684BDA13 * ((*(v7 + 384) - *(v7 + 376)) >> 3);
        *buf = 134217984;
        v28 = v12;
        v13 = "#I remote vinyl info: number of profiles: %lu";
        v14 = v11;
        v15 = 12;
      }

      else
      {
        v16 = *(v7 + 40);
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 0;
        v13 = "#I remote vinyl info: no profiles";
        v14 = v16;
        v15 = 2;
      }

      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
LABEL_14:
      if (*(*(v7 + 112) + 104) == *(*(v7 + 112) + 96) || sub_1003A92C4(v7))
      {
        v17 = *(v7 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Fetch Profiles", buf, 2u);
        }

LABEL_18:
        sub_1003B4278(*(v7 + 88), buf, 1);
        goto LABEL_41;
      }

      if (*(v7 + 1200) == 5)
      {
        v18 = *(v7 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I no matching profile, start websheet", buf, 2u);
        }

        goto LABEL_18;
      }

      a2 = 2;
LABEL_24:
      if (*(v7 + 1224) == 1 && (*(v7 + 1225) & 1) != 0)
      {
        v19 = 9;
      }

      else
      {
        v19 = 8;
      }

      (*(**(a1 + 56) + 168))(*(a1 + 56), v19);
      v20 = *(v7 + 40);
      if (a2 == 5 && *(v7 + 1200) != 9)
      {
        if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_DEFAULT))
        {
          v21 = asString();
          *buf = 136315138;
          v28 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Overriding %s to general failure", buf, 0xCu);
          v20 = *(v7 + 40);
        }

        a2 = 2;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v22 = asString();
        *buf = 136315138;
        v28 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Marking fetch failure: %s", buf, 0xCu);
      }

      if (*(v7 + 1200))
      {
        v23 = *(a1 + 56);
        v24 = *(v7 + 120);
        v25 = *(v7 + 112);
        v26 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v23 + 112))(v23, a2, v7 + 96, &v25);
        if (v26)
        {
          sub_100004A34(v26);
        }
      }

      sub_1003B3B54(*(v7 + 88), buf, 1);
      goto LABEL_41;
    }
  }
}

uint64_t sub_1003A92C4(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 312) == 1 && *(a1 + 400) == 1)
  {
    if (*(*(a1 + 112) + 104) == *(*(a1 + 112) + 96))
    {
      return 1;
    }

    v2 = *(a1 + 376);
    v23 = *(a1 + 384);
    if (v2 != v23)
    {
      while (1)
      {
        __p = 0;
        v26 = 0;
        v27 = 0;
        sub_10092CDF4(v2 + 16, &__p);
        v3 = *(v1 + 112);
        v5 = *(v3 + 96);
        v4 = *(v3 + 104);
        if (v5 == v4)
        {
          v15 = 0;
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v6 = *(v2 + 39);
          v24 = HIBYTE(v27);
          if (v27 >= 0)
          {
            v7 = HIBYTE(v27);
          }

          else
          {
            v7 = v26;
          }

          if (v27 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          while (1)
          {
            v9 = *(v5 + 23);
            v10 = v9 < 0 ? *(v5 + 8) : *(v5 + 23);
            if ((v6 & 0x80) != 0)
            {
              if (v10 == -1)
              {
LABEL_57:
                sub_10013C334();
              }

              v12 = *(v2 + 16);
              v11 = *(v2 + 24) >= v10 ? v10 : *(v2 + 24);
            }

            else
            {
              if (v10 == -1)
              {
                goto LABEL_57;
              }

              v11 = v6 >= v10 ? v10 : v6;
              v12 = (v2 + 16);
            }

            v13 = v9 >= 0 ? v5 : *v5;
            v14 = !memcmp(v12, v13, v11) && v11 == v10;
            if (v14 || v7 == v10 && !memcmp(p_p, v13, v7))
            {
              break;
            }

            v5 += 24;
            if (v5 == v4)
            {
              v15 = 0;
              goto LABEL_37;
            }
          }

          v15 = 1;
LABEL_37:
          v1 = a1;
          if ((v24 & 0x80) == 0)
          {
            goto LABEL_39;
          }
        }

        operator delete(__p);
LABEL_39:
        v2 += 216;
        if (v2 == v23)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          return v15;
        }
      }
    }

    return 0;
  }

  if (*(a1 + 1224) == 1 && *(a1 + 1225) != 1)
  {
    return 0;
  }

  v17 = *(a1 + 64);
  if (!v17)
  {
    return 0;
  }

  v18 = std::__shared_weak_count::lock(v17);
  if (!v18)
  {
    return 0;
  }

  v19 = v18;
  v20 = *(v1 + 56);
  if (v20)
  {
    v15 = (*(*v20 + 144))(v20, *(v1 + 112) + 96);
  }

  else
  {
    v15 = 0;
  }

  sub_100004A34(v19);
  return v15;
}

void sub_1003A9548(uint64_t a1, int a2)
{
  v3 = *(a1 + 112);
  if (!v3)
  {
    goto LABEL_41;
  }

  if ((*(v3 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(v3 + 8))
    {
      goto LABEL_41;
    }
  }

  else if (!*(v3 + 23))
  {
    goto LABEL_41;
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 56);
      if (v8)
      {
        v9 = 0;
        if (a2 > 1)
        {
          if (a2 == 2)
          {
            v13 = *(a1 + 40);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: incomplete", buf, 2u);
            }

            v9 = 3;
          }

          else if (a2 == 3)
          {
            v11 = *(a1 + 40);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: cancel", buf, 2u);
            }

            v9 = 4;
          }
        }

        else if (a2)
        {
          if (a2 == 1)
          {
            v10 = *(a1 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: successfully", buf, 2u);
            }

            v9 = 1;
          }
        }

        else
        {
          v12 = *(a1 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v9 = 2;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I provisioning finished: failed", buf, 2u);
          }

          else
          {
            v9 = 2;
          }
        }

        if (*(a1 + 304) == 1)
        {
          *(a1 + 296) = v9;
          sub_1003AB290(&v14, (a1 + 128));
          (*(*v8 + 176))(v8, &v14);
          if (v26 < 0)
          {
            operator delete(__p);
          }

          if (v24 < 0)
          {
            operator delete(v23);
          }

          if (v22 < 0)
          {
            operator delete(v21);
          }

          if (v20 < 0)
          {
            operator delete(v19);
          }

          if (v18 < 0)
          {
            operator delete(v17);
          }

          if (v16 < 0)
          {
            operator delete(v15);
          }

          sub_1003AB1FC(a1 + 128);
        }
      }

      sub_100004A34(v7);
    }
  }

LABEL_41:
  if (sub_1003A8C44(a1))
  {
    sub_1003A89DC(a1);
  }
}

void sub_1003A97C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1003A7E40(&a9);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void sub_1003A97F4(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(a1 + 56))
      {
        sub_100004AA0(&v6, (a1 + 8));
        v4 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v4);
        }

        v5 = *(a1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v6) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fetching websheet info", &v6, 2u);
        }

        if (*(a1 + 1200) == 7)
        {
          sub_1003A9A70((a1 + 408));
          if (v4)
          {
            atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v9 = 0;
          operator new();
        }

        if (v4)
        {
          atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v8 = 0;
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_1003A9A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1003B592C(va);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  sub_100004A34(v15);
  _Unwind_Resume(a1);
}

_BYTE *sub_1003A9A70(_BYTE *a1)
{
  if (*a1 != 1)
  {
    std::logic_error::logic_error(&v2, "Attempted to access the value of an uninitialized optional object.");
    v2.__vftable = &off_101E2CD58;
    sub_100174488(&v2);
  }

  return a1 + 8;
}

void sub_1003A9AFC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I launch websheet", buf, 2u);
  }

  if (*(a1 + 72))
  {
    if (*(a1 + 1200) == 5)
    {
      *(a1 + 1200) = 2;
    }

    sub_100004AA0(buf, (a1 + 8));
    v4 = *buf;
    v3 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    (*(**(a1 + 72) + 16))(&v21);
    Registry::getTimerService(buf, v21);
    v5 = *buf;
    sub_10000501C(__p, "DA checkin timer");
    v6 = *(a1 + 24);
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1003A9EE8;
    aBlock[3] = &unk_101E47D58;
    aBlock[4] = a1;
    aBlock[5] = v4;
    v16 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = _Block_copy(aBlock);
    sub_100D23364(v5, __p, 1, 15000000, &object, &v17);
    v7 = v23;
    v23 = 0;
    v8 = *(a1 + 1240);
    *(a1 + 1240) = v7;
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v9 = v23;
      v23 = 0;
      if (v9)
      {
        (*(*v9 + 8))(v9);
      }
    }

    if (v17)
    {
      _Block_release(v17);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    if (v22)
    {
      sub_100004A34(v22);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 56);
        if (v13)
        {
          if (*(a1 + 408))
          {
            sub_10016F74C(__dst, (a1 + 416));
            v14 = 1;
          }

          else
          {
            v14 = 0;
            __dst[0] = 0;
          }

          v27 = v14;
          (*(*v13 + 56))(v13, __dst);
          if (v27 == 1)
          {
            sub_10016354C(__dst);
          }
        }

        sub_100004A34(v12);
      }
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_1003A9E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  sub_100004A34(v17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(a1);
}

void sub_1003A9EE8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (v6 && *(v6 + 1240))
      {
        v7 = *(v3 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I waited too long for checkin, aborting", buf, 2u);
        }

        sub_1003ADD4C(*(v3 + 88), buf, 1);
        v8 = *(v3 + 1232);
        *(v3 + 1232) = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        v9 = *(v3 + 64);
        if (v9)
        {
          v10 = std::__shared_weak_count::lock(v9);
          if (v10)
          {
            v11 = v10;
            v12 = *(v3 + 56);
            if (v12 && *(v3 + 304) == 1)
            {
              *(v3 + 296) = 3;
              sub_1003AB290(&v13, (v3 + 128));
              (*(*v12 + 176))(v12, &v13);
              if (v25 < 0)
              {
                operator delete(__p);
              }

              if (v23 < 0)
              {
                operator delete(v22);
              }

              if (v21 < 0)
              {
                operator delete(v20);
              }

              if (v19 < 0)
              {
                operator delete(v18);
              }

              if (v17 < 0)
              {
                operator delete(v16);
              }

              if (v15 < 0)
              {
                operator delete(v14);
              }

              sub_1003AB1FC(v3 + 128);
            }

            sub_100004A34(v11);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1003AA09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1003A7E40(&a9);
  sub_100004A34(v10);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void sub_1003AA0D8(uint64_t a1)
{
  if (*(a1 + 408) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 56);
        if (v5)
        {
          v6 = *(a1 + 40);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            if ((*(a1 + 408) & 1) == 0)
            {
              __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
            }

            v7 = (a1 + 448);
            if (*(a1 + 471) < 0)
            {
              v7 = *v7;
            }

            *buf = 136315138;
            v14 = v7;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I load url: %s", buf, 0xCu);
          }

          v8 = *(a1 + 1216);
          if (v8)
          {
            aBlock = _Block_copy(v8);
            if ((*(a1 + 408) & 1) == 0)
            {
              __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
            }

            (*(*v5 + 64))(v5, &aBlock, a1 + 416);
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            v9 = *(a1 + 1216);
            *(a1 + 1216) = 0;
            if (v9)
            {
              _Block_release(v9);
            }
          }

          if (*(a1 + 304) == 1)
          {
            v10 = *(a1 + 132);
            if (v10 <= 0xC && ((1 << v10) & 0x1820) != 0)
            {
              *(a1 + 160) = 3;
            }
          }
        }

        sub_100004A34(v4);
      }
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E missing websheet launch info", buf, 2u);
    }
  }
}

void sub_1003AA2E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AA330(void *a1, unsigned __int8 a2)
{
  v3 = a1[8];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = a1[7];
      if (v7)
      {
        sub_100004AA0(&v15, a1 + 1);
        v9 = v15;
        v8 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v8);
        }

        v10[0] = _NSConcreteStackBlock;
        v10[1] = 1174405120;
        v10[2] = sub_1003AA4EC;
        v10[3] = &unk_101E47D88;
        v10[4] = a1;
        v10[5] = v9;
        v11 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = v7;
        v13 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        aBlock = _Block_copy(v10);
        (*(*v7 + 96))(v7, a1 + 12, a2, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          sub_100004A34(v13);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1003AA498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  sub_100004A34(v18);
  _Unwind_Resume(a1);
}

void sub_1003AA4EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 40) && (a2 & 0x100000000) != 0)
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E unable to send user consent response, aborting", buf, 2u);
        }

        (*(**(a1 + 56) + 104))(*(a1 + 56), a2, v5 + 96);
        sub_1003ADD4C(*(v5 + 88), &v9, 1);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1003AA5F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v3 = 2;
LABEL_5:
    *(a1 + 1228) = v3;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 56);
      if (v7)
      {
        (*(*v7 + 136))(v7, *(a1 + 1228));
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1003AA6B4(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 56);
      if (v5)
      {
        (*(*v5 + 120))(v5, 1);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003AA76C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (*(*v5 + 128))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003AA808(uint64_t a1)
{
  if ((*(a1 + 1200) - 2) > 5)
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (*(*v5 + 160))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003AA96C(uint64_t a1)
{
  if (*(a1 + 1200))
  {
    return 1;
  }

  v4 = *(a1 + 64);
  if (!v4)
  {
    return 1;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = *(a1 + 56);
  if (v7)
  {
    v1 = (*(*v7 + 152))(v7);
  }

  else
  {
    v1 = 1;
  }

  sub_100004A34(v6);
  return v1;
}

uint64_t sub_1003AAA10(uint64_t a1)
{
  if (*(a1 + 408) == 1)
  {
    v1 = *(a1 + 440) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003AAA34(uint64_t a1)
{
  if (*(a1 + 360) == 1)
  {
    v1 = *(a1 + 392) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1003AAA78(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136446210;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I moved to state: %{public}s", &v5, 0xCu);
  }
}

void sub_1003AAB2C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*a2)
  {
    v6 = *(a2 + 1);
    v12[0] = *a2;
    v12[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = sub_1003AAC94(a1, v12);
    if (v6)
    {
      sub_100004A34(v6);
    }

    if (!v7)
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *a2;
        if (*(*a2 + 23) < 0)
        {
          v9 = *v9;
        }

        *buf = 136315138;
        v14 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Enqueuing server: (%s)", buf, 0xCu);
      }

      if (!*(a1 + 1296))
      {
        v10 = *(a1 + 112);
        v11 = *(v10 + 23);
        if (v11 < 0)
        {
          v11 = *(v10 + 8);
        }

        if (!v11)
        {
          if (*(a1 + 304))
          {
            a3 = a1 + 128;
          }
        }
      }

      sub_1003B59AC((a1 + 1304), a3);
      sub_1003B5C38((a1 + 1256), a2);
    }
  }
}

BOOL sub_1003AAC94(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 1;
  }

  v5 = *(v2 + 143);
  if (v5 < 0)
  {
    if (*(v2 + 128))
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (!*(v2 + 143))
  {
    return 0;
  }

LABEL_4:
  v6 = (v2 + 120);
  v7 = a1[14];
  if (v7)
  {
    if (v5 >= 0)
    {
      v8 = *(v2 + 143);
    }

    else
    {
      v8 = *(v2 + 128);
    }

    v9 = *(v7 + 143);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(v7 + 128);
    }

    if (v8 == v9)
    {
      v11 = (v5 >= 0 ? v2 + 120 : *v6);
      v12 = v10 >= 0 ? (v7 + 120) : *(v7 + 120);
      if (!memcmp(v11, v12, v8))
      {
        v13 = *(v2 + 23);
        if (v13 >= 0)
        {
          v14 = *(v2 + 23);
        }

        else
        {
          v14 = *(v2 + 8);
        }

        v15 = *(v7 + 23);
        v16 = v15;
        if ((v15 & 0x80u) != 0)
        {
          v15 = *(v7 + 8);
        }

        if (v14 == v15)
        {
          v17 = v13 >= 0 ? v2 : *v2;
          v18 = v16 >= 0 ? v7 : *v7;
          if (!memcmp(v17, v18, v14))
          {
            v39 = a1[5];
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *v43 = 0;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I matching ongoing operation.", v43, 2u);
            }

            return 1;
          }
        }
      }
    }
  }

  v44 = 0u;
  v45 = 0u;
  *v43 = 0u;
  sub_1003B60C8(v43, a1 + 157);
  v19 = *(&v45 + 1);
  if (*(&v45 + 1))
  {
    v41 = a1;
    v20 = 1;
    v21 = *(&v45 + 1);
    v22 = 1;
    while (1)
    {
      v23 = (*(*&v43[8] + ((v45 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v45);
      v24 = *v23;
      v25 = v23[1];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = *(v2 + 143);
      if (v26 >= 0)
      {
        v27 = *(v2 + 143);
      }

      else
      {
        v27 = *(v2 + 128);
      }

      v28 = *(v24 + 143);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(v24 + 128);
      }

      if (v27 == v28)
      {
        v30 = (v26 >= 0 ? v2 + 120 : *v6);
        v31 = v29 >= 0 ? (v24 + 120) : *(v24 + 120);
        if (!memcmp(v30, v31, v27))
        {
          v32 = *(*a2 + 23);
          if (v32 >= 0)
          {
            v33 = *(*a2 + 23);
          }

          else
          {
            v33 = *(*a2 + 8);
          }

          v34 = *(v24 + 23);
          v35 = v34;
          if ((v34 & 0x80u) != 0)
          {
            v34 = *(v24 + 8);
          }

          if (v33 == v34)
          {
            v36 = v32 >= 0 ? *a2 : **a2;
            v37 = v35 >= 0 ? v24 : *v24;
            if (!memcmp(v36, v37, v33))
            {
              break;
            }
          }
        }
      }

      sub_1003B5EAC(v43);
      if (v25)
      {
        sub_100004A34(v25);
      }

      v22 = v20++ < v19;
      if (!--v21)
      {
        goto LABEL_64;
      }
    }

    v38 = v41[5];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I matching enqueued operation.", buf, 2u);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }
  }

  else
  {
LABEL_64:
    v22 = 0;
  }

  sub_1003AB5CC(v43);
  return v22;
}

void sub_1003AAF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1003AB5CC(va);
  _Unwind_Resume(a1);
}

void sub_1003AAFA4(uint64_t a1)
{
  sub_1003AB708(a1);

  operator delete();
}

void sub_1003AAFE4(uint64_t a1)
{
  sub_1003AB708(a1 - 48);

  operator delete();
}

void sub_1003AB020(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    if (*a2)
    {
      v3 = a2 + 8;

      sub_1003AB0A0(result, v3);
    }

    else
    {
      sub_10016354C((result + 8));
      *result = 0;
    }
  }

  else if (*a2)
  {
    sub_10016F74C(result + 8, (a2 + 8));
    *result = 1;
  }
}

void sub_1003AB0A0(uint64_t a1, uint64_t a2)
{
  std::string::operator=((a1 + 8), a2);
  v4 = *(a2 + 26);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 34) = v4;
  std::string::operator=((a1 + 40), (a2 + 32));
  sub_10016E6D0((a1 + 64), a2 + 56);
  sub_10016EBE4(a1 + 408, a2 + 400);

  sub_10012BF3C((a1 + 760), (a2 + 752));
}

void sub_1003AB118(std::string *result, int *a2)
{
  if (result[7].__r_.__value_.__s.__data_[8] == *(a2 + 176))
  {
    if (result[7].__r_.__value_.__s.__data_[8])
    {
      v4 = *a2;
      WORD2(result->__r_.__value_.__r.__words[0]) = *(a2 + 2);
      LODWORD(result->__r_.__value_.__l.__data_) = v4;
      std::string::operator=(&result->__r_.__value_.__r.__words[1], (a2 + 2));
      result[1].__r_.__value_.__s.__data_[8] = *(a2 + 32);
      std::string::operator=((result + 40), (a2 + 10));
      std::string::operator=((result + 64), (a2 + 16));
      std::string::operator=((result + 88), (a2 + 22));
      std::string::operator=((result + 112), (a2 + 28));
      LODWORD(result[5].__r_.__value_.__r.__words[2]) = a2[34];
      std::string::operator=(result + 6, a2 + 6);
      LODWORD(result[7].__r_.__value_.__l.__data_) = a2[42];
    }
  }

  else if (result[7].__r_.__value_.__s.__data_[8])
  {

    sub_1003AB1FC(result);
  }

  else
  {
    sub_1003AB290(result, a2);
    result[7].__r_.__value_.__s.__data_[8] = 1;
  }
}

void sub_1003AB1FC(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 144));
    }

    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 176) = 0;
  }
}

uint64_t sub_1003AB290(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 2);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 10);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = *(a2 + 4);
    *(a1 + 80) = *(a2 + 10);
    *(a1 + 64) = v7;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v8 = *(a2 + 22);
    *(a1 + 104) = *(a2 + 13);
    *(a1 + 88) = v8;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v9 = *(a2 + 7);
    *(a1 + 128) = *(a2 + 16);
    *(a1 + 112) = v9;
  }

  *(a1 + 136) = a2[34];
  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = *(a2 + 9);
    *(a1 + 160) = *(a2 + 20);
    *(a1 + 144) = v10;
  }

  *(a1 + 168) = a2[42];
  return a1;
}

void sub_1003AB3D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AB44C(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    if (*a2)
    {
      v4 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v4;
      std::string::operator=((a1 + 40), (a2 + 40));

      sub_1001148D8(a1 + 64, a2 + 64);
    }

    else
    {

      sub_1003AB4FC(a1);
    }
  }

  else if (*a2)
  {
    sub_100F11B6C(a1 + 8, a2 + 8);
    *a1 = 1;
  }
}

void sub_1003AB4FC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    if (*(a1 + 88) == 1)
    {
      v4[0] = (a1 + 64);
      sub_100112120(v4);
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *a1 = 0;
  }
}

_BYTE *sub_1003AB564(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[176] = 0;
  if (*(a2 + 176) == 1)
  {
    sub_1003AB290(a1, a2);
    a1[176] = 1;
  }

  return a1;
}

void sub_1003AB5AC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 176) == 1)
  {
    sub_1003A7E40(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AB5CC(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 8];
    v7 = *v6;
    v8 = *v6 + 16 * v5;
    v9 = *(v2 + (((a1[5] + v5) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 40) + v5);
    if (v8 != v9)
    {
      do
      {
        v10 = *(v8 + 8);
        if (v10)
        {
          sub_100004A34(v10);
          v7 = *v6;
        }

        v8 += 16;
        if (v8 - v7 == 4096)
        {
          v11 = v6[1];
          ++v6;
          v7 = v11;
          v8 = v11;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = v3 - v2;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 128;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 256;
  }

  a1[4] = v13;
LABEL_18:
  while (v2 != v3)
  {
    v14 = *v2++;
    operator delete(v14);
  }

  return sub_10001BD44(a1);
}

void sub_1003AB708(uint64_t a1)
{
  *a1 = off_101E479E0;
  *(a1 + 48) = off_101E47BA8;
  sub_1003AB8E0((a1 + 1304));
  sub_1003AB5CC((a1 + 1256));
  v2 = *(a1 + 1240);
  *(a1 + 1240) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1232);
  *(a1 + 1232) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 1216);
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(a1 + 1208);
  if (v5)
  {
    _Block_release(v5);
  }

  if (*(a1 + 408) == 1)
  {
    sub_10016354C(a1 + 416);
    *(a1 + 408) = 0;
  }

  sub_1003AB4FC(a1 + 312);
  if (*(a1 + 304) == 1)
  {
    if (*(a1 + 295) < 0)
    {
      operator delete(*(a1 + 272));
    }

    if (*(a1 + 263) < 0)
    {
      operator delete(*(a1 + 240));
    }

    if (*(a1 + 239) < 0)
    {
      operator delete(*(a1 + 216));
    }

    if (*(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }

    if (*(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1003ABC40((a1 + 88), 0);
  v7 = *(a1 + 80);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  TMKXPCServer.shutdown()();
}

uint64_t sub_1003AB8E0(void *a1)
{
  sub_1003AB938(a1);
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  return sub_10001BD44(a1);
}

void sub_1003AB938(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x16];
    v7 = *v6 + 184 * (v5 % 0x16);
    v8 = v2[(a1[5] + v5) / 0x16] + 184 * ((a1[5] + v5) % 0x16);
    if (v7 != v8)
    {
      do
      {
        if (*(v7 + 176) == 1)
        {
          if (*(v7 + 167) < 0)
          {
            operator delete(*(v7 + 144));
          }

          if (*(v7 + 135) < 0)
          {
            operator delete(*(v7 + 112));
          }

          if (*(v7 + 111) < 0)
          {
            operator delete(*(v7 + 88));
          }

          if (*(v7 + 87) < 0)
          {
            operator delete(*(v7 + 64));
          }

          if (*(v7 + 63) < 0)
          {
            operator delete(*(v7 + 40));
          }

          if (*(v7 + 31) < 0)
          {
            operator delete(*(v7 + 8));
          }
        }

        v7 += 184;
        if (v7 - *v6 == 4048)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v11 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 11;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 22;
  }

  a1[4] = v12;
}

void sub_1003ABB40(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1003ABC14);
  __cxa_rethrow();
}

void sub_1003ABB80(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003ABBD4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003ABC14(uint64_t result)
{
  if (result)
  {
    return (*(*result + 208))();
  }

  return result;
}

uint64_t *sub_1003ABC40(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1000C030C((v2 + 32));
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

void (***sub_1003ABCAC(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1003ABCFC(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (*a2)
  {
    v4 = *a2 + 48;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;
  v7 = v3;
  *a2 = 0;
  a2[1] = 0;
  sub_1003ABD8C(a1, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 91) = 0;
  *(a1 + 99) = 0;
  *(a1 + 24) = 0;
  *(a1 + 84) = 0;
  return a1;
}

void sub_1003ABD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ABD8C(uint64_t a1, uint64_t *a2)
{
  *(a1 + 4) = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 16);
    *(a1 + 8) = v4;
    *(a1 + 16) = v3;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *(a1 + 8) = v4;
    *(a1 + 16) = 0;
  }

  return a1;
}

uint64_t sub_1003ABDE8(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003ABE6C(a1))
  {
    return 1;
  }

  v5 = sub_1003ABF1C(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003ABE6C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003ABF1C(uint64_t a1)
{
  v1 = (*(&unk_101FB1CB0 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003ABFE4(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1003AC078(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F));
  *v8 = 0;
  result = sub_1003AC24C(v8, a2);
  ++a1[5];
  return result;
}

void sub_1003AC078(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_1000FB8B8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100129284(a1, &v9);
}

void sub_1003AC200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003AC24C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_1003AC2E0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

uint64_t sub_1003AC304(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_8DidStartEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_8DidStartEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AC3FC(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

int64x2_t *sub_1003AC430(int64x2_t *result)
{
  if (result[4].i64[1])
  {
    v1 = result;
    do
    {
      memset(v5, 0, sizeof(v5));
      v2 = *(v1[2].i64[1] + ((v1[4].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v1[4].i64[0] & 0x7F);
      v3 = *v2;
      if (*v2)
      {
        *&v5[0] = *v2;
        if (v3)
        {
          v4 = *(v2 + 8);
          *(&v5[1] + 1) = *(v2 + 24);
          *(v5 + 8) = v4;
        }

        else
        {
          (*v3)(v2 + 8, v5 + 8, 0);
        }
      }

      sub_1003AC4F4(v1 + 2);
      sub_1003AC560(v5);
      result = sub_1003ABCAC(v5);
    }

    while (v1[4].i64[1]);
  }

  return result;
}

uint64_t sub_1003AC4F4(int64x2_t *a1)
{
  sub_1003ABCAC((*(a1->i64[1] + ((a1[2].i64[0] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (a1[2].i64[0] & 0x7F)));
  a1[2] = vaddq_s64(a1[2], xmmword_1017CD970);

  return sub_100331AC4(a1, 1);
}

uint64_t sub_1003AC560(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

uint64_t sub_1003AC600(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_1003AC678(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_1003AC70C(a1);
  *(v7 + 24) = 0;
  sub_1003AC7A0(a1 + 96, a4, a1);
  *(v7 + 24) = 3;
  return 1;
}

uint64_t sub_1003AC678(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 192))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003AC70C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 24))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AC7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForSubscription");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AC7F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AC810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 232))(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1003AC8B8(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E97C();
  }

  if (!sub_1003AC924(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_1003AC9B8(a1 + 92, a4, a1);
  *(v7 + 24) = 7;
  return 1;
}

uint64_t sub_1003AC924(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 160))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003AC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "UserInWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003ACA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ACA28(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  v7 = 2;
  if (sub_1003ACA9C(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 0;
    sub_1003ACB30(a1);
    *(v8 + 24) = 0;
    sub_1003ACBC4(a1 + 97, a4, a1);
    *(v8 + 24) = 2;
    return 1;
  }

  return v7;
}

uint64_t sub_1003ACA9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 144))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003ACB30(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 48))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003ACBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForWebsheet");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003ACC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ACC34(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E950();
  }

  if (!sub_1003ACCA8(a1))
  {
    return 2;
  }

  v7 = a1 + 4 * a2;
  *(v7 + 24) = 0;
  sub_1003ACD3C(a1);
  *(v7 + 24) = 0;
  sub_1003ACDD0(a1 + 98, a4, a1);
  result = 1;
  *(v7 + 24) = 1;
  return result;
}

uint64_t sub_1003ACCA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 208))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

void sub_1003ACD3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003ACDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForDeleteAllPlans");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003ACE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ACE40(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E97C();
  }

  v7 = 2;
  if (sub_1003ACEA8(a1))
  {
    v8 = a1 + 4 * a2;
    *(v8 + 24) = 0;
    sub_1003ACBC4(a1 + 97, a4, a1);
    *(v8 + 24) = 2;
    return 1;
  }

  return v7;
}

uint64_t sub_1003ACEA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = (*(*v5 + 152))(v5);
  }

  else
  {
    v6 = 0;
  }

  sub_100004A34(v4);
  return v6;
}

uint64_t sub_1003ACF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003AC600(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003ACFE8(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003ACFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003AC8B8(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AD070(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003AD070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003ACA28(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AD0F8(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003AD0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003ACC34(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AD180(a1, a2, a3, a4);
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9 == 2;
    }

    if (v11)
    {
      return 2;
    }

    else
    {
      return v10;
    }
  }

  return v9;
}

uint64_t sub_1003AD180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  v8 = sub_1003ACE40(a1, a2, a3, a4);
  v9 = v8;
  if (v8 != 1 && v8 != 4)
  {
    v10 = sub_1003AD218(a1, v6, v5, a4);
    v11 = 2 * (v10 == 2);
    if (v10 == 4)
    {
      v11 = 4;
    }

    if (v10 == 1)
    {
      v11 = 1;
    }

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v9 == 2;
    }

    if (v12)
    {
      return 2;
    }

    else
    {
      return v11;
    }
  }

  return v9;
}

uint64_t sub_1003AD218(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3)
  {
    sub_10176E9A8();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 0;
  sub_1003AD278(a1);
  *(v6 + 24) = 0;
  sub_1003AD30C(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003AD278(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 32))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_1003AD30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003AD360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003AD37C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AD400(a1))
  {
    return 1;
  }

  v5 = sub_1003AD4B0(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AD400(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AD4B0(uint64_t a1)
{
  v1 = (*(&unk_101FB1D08 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003AD578(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DoesNeedInstallConsentEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_22DoesNeedInstallConsentEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003AD670(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003AD6AC(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9D4();
  }

  v4 = a1 + 4 * a2;
  *(v4 + 24) = 4;
  sub_1003AD700(a1 + 94, a4, a1);
  *(v4 + 24) = 5;
  return 1;
}

void sub_1003AD700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForUserResponse");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 0);
  sub_1003AD82C(a3);
}

void sub_1003AD768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003AD784(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        (*(*v7 + 72))(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1003AD82C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        (*(*v5 + 104))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003AD8C0(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003AD944(a1))
  {
    return 1;
  }

  v5 = sub_1003AD9F4(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003AD944(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003AD9F4(uint64_t a1)
{
  v1 = (*(&unk_101FB1D60 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003ADABC(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_25DoesNotNeedInstallConsentEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_25DoesNotNeedInstallConsentEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

uint64_t sub_1003ADBB4(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, v1 + 3, v3);
}

uint64_t sub_1003ADBF0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a3 != 4)
  {
    sub_10176E9D4();
  }

  v6 = a1 + 4 * a2;
  *(v6 + 24) = 4;
  sub_1003ADC60(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  sub_1003ADCDC(a1 + 95, a4, a1);
  *(v6 + 24) = 4;
  return 1;
}

void sub_1003ADC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "Post installing");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1003AD784(a3, 1);
}

void sub_1003ADCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003ADCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(__p, "WaitForFetch");
  sub_1003AC810(a3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003ADD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003ADD4C(int64x2_t *a1, uint64_t a2, char a3)
{
  if (!sub_1003ADDD0(a1))
  {
    return 1;
  }

  v5 = sub_1003ADE80(a1);
  a1[5].i8[8] = 0;
  if ((a3 & 6) == 0)
  {
    sub_1003AC430(a1);
  }

  return v5;
}

uint64_t sub_1003ADDD0(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 == 1)
  {
    operator new();
  }

  *(a1 + 88) = 1;
  return v1 ^ 1u;
}

uint64_t sub_1003ADE80(uint64_t a1)
{
  v1 = (*(&unk_101FB1DB8 + *(a1 + 24) + 1))();
  std::exception::~exception(&v3);
  return v1;
}

uint64_t sub_1003ADF48(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_5AbortEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N5boost3_bi6bind_tINS_3msm4back11HandledEnumENS_4_mfi3mf2IS4_NS3_13state_machineIN8cellplan3fsm30RemoteProvisioningOperationFsmENS_9parameter5void_ESC_SC_SC_EERKNS9_5AbortEhEENS0_5list3INS0_5valueIPSD_EENSJ_ISE_EENSJ_IhEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}