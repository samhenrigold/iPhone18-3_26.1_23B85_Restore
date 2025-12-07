BOOL sub_2338BDE40(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, void *a5)
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = sub_2338A818C(v8, @"S9100", 1);
  v10 = sub_2338A818C(v8, @"S9600", 1);
  v11 = sub_2338A818C(v8, @"S3Pro", 1);
  v12 = sub_2338A818C(v8, @"S2Pro", 1);
  v13 = sub_2338A818C(v8, @"S20Pro", 1);
  v14 = sub_2338A818C(v8, @"S5Pro", 1);
  if (v9 || v10)
  {
    *a5 = 0x4B000000640;
    if (a3 <= 0x22)
    {
      v15 = (((a3 - ((37 * a3) >> 8)) >> 1) + ((37 * a3) >> 8)) >> 2;
      v16 = dword_2339167C0[(a3 - 7 * v15)];
      v17 = dword_2339167DC[v15];
      *a4 = v16;
      *(a4 + 4) = v17;
      *(a4 + 8) = 0xF0000003CLL;
LABEL_11:
      v23 = 1;
      goto LABEL_16;
    }

LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  if (v11 || v12)
  {
    *a5 = 0x3C0000005A0;
    if (a3 > 4)
    {
      goto LABEL_15;
    }

    v18 = dword_233916818[a3];
    v19 = dword_23391682C[a3];
    v20 = dword_2339167F0[a3];
    v21 = &unk_233916804;
LABEL_10:
    v22 = v21[a3];
    *a4 = v18;
    *(a4 + 4) = v19;
    *(a4 + 8) = v20;
    *(a4 + 12) = v22;
    goto LABEL_11;
  }

  if (v13)
  {
    *a5 = 0x3C000000500;
    if (a3 > 4)
    {
      goto LABEL_15;
    }

    v18 = dword_233916818[a3];
    v19 = dword_23391682C[a3];
    v20 = dword_233916840[a3];
    v21 = &unk_233916854;
    goto LABEL_10;
  }

  if (!v14)
  {
    goto LABEL_15;
  }

  *a5 = 0x3C0000005A0;
  v31 = 0;
  v28 = 0u;
  v29 = 0;
  *(&v28 + 4) = 0xFFFFFF3D000000C3;
  v30 = xmmword_2339167B0;
  v23 = a3 < 0xB;
  if (a3 <= 0xA)
  {
    v24 = *(&v28 + a3);
    v25 = dword_233916894[a3];
    v26 = dword_2339168C0[a3];
    *a4 = dword_233916868[a3];
    *(a4 + 4) = v24;
    *(a4 + 8) = v25;
    *(a4 + 12) = v26;
  }

LABEL_16:

  return v23;
}

void sub_2338BE114(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = a2;
  v11 = sub_2338AA324(a1, v15, a3, a4, a5, a6);
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = sub_2338A9B94(a1);
      v13 = sub_2338A9BFC(a3);
      v14 = sub_2338A9B78(a3);
      sub_2337830C4(v12, v13, v14, &unk_2849588A0);
    }

    else
    {
      v12 = sub_2338A9B94(a1);
      v13 = sub_2338A9BFC(a3);
      v14 = sub_2338A9B78(a3);
      sub_2338AE980(v12, v13, v14);
    }
  }

  else
  {
    v12 = sub_2338A9B94(a1);
    v13 = sub_2338A9BFC(a3);
    v14 = sub_2338A9B78(a3);
    sub_2337830C4(v12, v13, v14, &unk_284958888);
  }
}

void sub_2338BE2B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, int a6)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v10 = sub_2338A9B94(a1);
  v11 = sub_2338A9BFC(a3);
  v12 = sub_2338A9B78(a3);
  v13 = sub_2338AE7EC(v10, v11, v12);

  v14 = 0;
  v30[0] = 0;
  do
  {
    if (v14 >= [v13 count])
    {
      v15 = -1;
    }

    else
    {
      v15 = sub_23386EA2C(v13, v30);
    }

    v16 = v30[0];
    *(&v30[1] + v30[0]) = v15;
    v14 = v16 + 1;
    v30[0] = v16 + 1;
  }

  while ((v16 + 1) < 6);
  v17 = a4[4];
  v18 = bswap32(v17) >> 16;
  if (a6)
  {
    LOWORD(v17) = v18;
  }

  v19 = a4[5];
  v20 = bswap32(v19) >> 16;
  if (a6)
  {
    LOWORD(v19) = v20;
  }

  v21 = 3;
  if (*a4 - 4131 < 3)
  {
    v21 = 2 * (*a4 - 4131) + 1;
  }

  *(&v30[1] + v21) = v19;
  v30[0] = v21 - 1;
  *(v30 + v21 + 1) = v17;
  v22 = sub_2338A9B94(a1);
  v23 = sub_2338A9BFC(a3);
  v24 = sub_2338A9B78(a3);
  sub_2338AE980(v22, v23, v24);

  v30[0] = 0;
  do
  {
    v25 = sub_2338A9B94(a1);
    v26 = sub_2338A9BFC(a3);
    v27 = sub_2338A9B78(a3);
    v28 = sub_2338BE594(v25, v26, v27);

    if (v28)
    {
      v29 = [MEMORY[0x277CCABB0] numberWithInt:*(&v30[1] + v30[0])];
      [v28 addObject:v29];
    }

    ++v30[0];
  }

  while (v30[0] < 6uLL);
}

id sub_2338BE594(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_2337854A4(a1, a2, 0);
  v7 = sub_2337E2674(v6, v5);

  return v7;
}

void sub_2338BE628(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338BE6FC(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284932190;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_284932098;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  return a1;
}

void sub_2338BE7A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

_BYTE *sub_2338BE81C(_BYTE *result)
{
  if (result)
  {
    result = __dynamic_cast(result, &unk_28492EBB0, &unk_284932328, 0);
    if (result)
    {
      result[195] = 1;
    }
  }

  return result;
}

void sub_2338BE884(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338BE9B4();
}

uint64_t sub_2338BE918(_BYTE *a1)
{
  if (sub_2338A94CC(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = a1[195];
  }

  return v2 & 1;
}

void sub_2338BE97C(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338BEA50(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284932350;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_284932258;
  *(a1 + 219) = 0;
  return a1;
}

void sub_2338BEAF4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932350;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338BEB70(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338BEC38();
}

void *sub_2338BECD4(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284932498;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_2849323A0;
  return a1;
}

void sub_2338BED74(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932498;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338BF05C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932630, 0);
    if (v10)
    {
      sub_2338BF59C(v10, v11, v12, a4, a5, a6);
    }
  }
}

uint64_t sub_2338BF128(uint64_t *a1)
{
  v2 = (*(**a1 + 16))(*a1);
  if (v2 < 4)
  {
    return 0;
  }

  v3 = v2;
  sub_233754E04(v16, a1);
  v15 = 0;
  if ((*(**a1 + 32))(*a1, &v15, 4) == 4)
  {
    if (v15 == 73 && BYTE1(v15) == 73 && BYTE2(v15) == 42 && !HIBYTE(v15) || (v4 = 0, v15 == 77) && BYTE1(v15) == 77 && !BYTE2(v15) && HIBYTE(v15) == 42)
    {
      if (v15 == 77)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }

      sub_233735A18(v14, a1, v5);
      v6 = sub_233725614(*a1);
      v7 = v3;
      if (v3 - 2 >= v6 && (v8 = sub_2337255C0(*a1), v9 = v8, v7 >= v6 + 2 + 12 * v8) && (v13 = v6 + 2, v8))
      {
        while (1)
        {
          v10 = *a1;
          sub_233723AE0(&v12, &v13);
          (*(*v10 + 40))(v10, &v12, 0);
          if (sub_2337255C0(*a1) == 34310)
          {
            break;
          }

          --v9;
          v13 += 12;
          if (!v9)
          {
            goto LABEL_19;
          }
        }

        v4 = 1;
      }

      else
      {
LABEL_19:
        v4 = 0;
      }

      sub_233735A90(v14);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_233725FD4(v16);
  return v4;
}

void sub_2338BF318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_233735A90(va);
  sub_233725FD4(va1);
  _Unwind_Resume(a1);
}

void sub_2338BF350(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338BFEC4();
}

void sub_2338BF410(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v12, 0, sizeof(v12));
  sub_2338B0B1C(a1, a2, &v11);
  sub_233723AE0(&v9, (a1 + 200));
  v8 = *(a1 + 204);
  sub_2338A820C(a1, &v9, &v8, 0, &v10);
  if (v11)
  {
    sub_233753C74(v12, &v11);
  }

  if (v10)
  {
    v6 = sub_2338A9B94(a1);
    v7 = sub_2337397B0(v6, *MEMORY[0x277CD3410]);

    if (v7)
    {
      if (v7 == 6)
      {
        v7 = 8;
      }

      else if (v7 == 8)
      {
        v7 = 6;
      }
    }

    *(v10 + 20) = v7;
    sub_233753C74(v12, &v10);
  }

  sub_2338A86B8(v12, a2, a3);
  if (*(&v10 + 1))
  {
    sub_2337239E8(*(&v10 + 1));
  }

  if (*(&v11 + 1))
  {
    sub_2337239E8(*(&v11 + 1));
  }

  *&v11 = v12;
  sub_233723948(&v11);
}

void sub_2338BF540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a13)
  {
    sub_2337239E8(a13);
  }

  a12 = &a14;
  sub_233723948(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_2338BF59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  sub_2338A832C(a1, &v16);
  if (a6)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  sub_233735A18(v18, &v16, v10);
  if (v17)
  {
    sub_2337239E8(v17);
  }

  v11 = *(a4 + 8);
  v12 = bswap32(v11);
  if (a6)
  {
    v11 = v12;
  }

  v13 = *(a4 + 2);
  if (v13 > 0x6F)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_233916A68[v13];
  }

  sub_2338BF680(a1, a5 + v11, v14 * *(a4 + 4), 0);
  return sub_233735A90(v18);
}

void sub_2338BF650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_233735A90(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_2338BF680(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v50 = *MEMORY[0x277D85DE8];
  v43 = a2;
  sub_2338A832C(a1, v44);
  sub_2337268D8(&v47, &v43);
  sub_233725F08(v42, v44, &v47, 0);
  if (v45)
  {
    sub_2337239E8(v45);
  }

  if (a3 >= 0x35)
  {
    do
    {
      sub_2338A832C(a1, v44);
      v6 = sub_233725614(*v44);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      if (v6 != 1347114067)
      {
        return sub_233725FD4(v42);
      }

      sub_2338A832C(a1, v44);
      v7 = *v44;
      v47 = 4;
      sub_233723B40(&v40, &v47);
      (*(*v7 + 40))(v7, &v40, 1);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      sub_2338A832C(a1, v44);
      (*(**v44 + 32))(*v44, &v47, 32);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      v49 = 0;
      sub_2338A832C(a1, v44);
      v8 = *v44;
      v40 = 8;
      sub_233723B40(&v38, &v40);
      (*(*v8 + 40))(v8, &v38, 1);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      sub_2338A832C(a1, v44);
      v9 = sub_233725614(*v44);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      sub_2338A832C(a1, v44);
      v10 = (*(**v44 + 48))(*v44);
      if (v45)
      {
        sub_2337239E8(v45);
      }

      v11 = v9;
      if (v47 == 0x666F725074706143 && *v48 == 0x7461645F7761725FLL && *&v48[8] == 0x697461746F725F61 && *&v48[11] == 0x6E6F697461746FLL)
      {
        sub_2338A832C(a1, &v40);
        if (v9 >= 0x27uLL)
        {
          v32 = 39;
        }

        else
        {
          v32 = v9;
        }

        (*(*v40 + 32))(v40, v44, v32);
        v46 = 0;
        if (v41)
        {
          sub_2337239E8(v41);
        }

        sscanf(v44, "%d", a1 + 216);
        v31 = 0;
        *(a1 + 195) = 1;
        goto LABEL_114;
      }

      if (v47 == 0x5F666F7250676D49 && *v48 == 0x6E6F697461746F72 && *&v48[7] == 0x656C676E615F6ELL)
      {
        sub_2338A832C(a1, &v40);
        if (v9 >= 0x27uLL)
        {
          v33 = 39;
        }

        else
        {
          v33 = v9;
        }

        (*(*v40 + 32))(v40, v44, v33);
        v46 = 0;
        if (v41)
        {
          sub_2337239E8(v41);
        }

        sscanf(v44, "%d", a1 + 212);
        v31 = 0;
        *(a1 + 196) = 1;
        goto LABEL_114;
      }

      if (v47 == 0x6572705F4745504ALL && *v48 == 0x7461645F77656976 && *&v48[8] == 97)
      {
        v31 = 0;
        *(a1 + 200) = v10;
        *(a1 + 204) = v9;
        *(a1 + 197) = 1;
      }

      else
      {
        if (v47 == 0x624F6172656D6143 && *v48 == 0x70735F4F53495F6ALL && *&v48[8] == 6579557)
        {
          LODWORD(v38) = 0;
          sub_2338A832C(a1, &v40);
          if (v9 >= 0x27uLL)
          {
            v34 = 39;
          }

          else
          {
            v34 = v9;
          }

          (*(*v40 + 32))(v40, v44, v34);
          v46 = 0;
          if (v41)
          {
            sub_2337239E8(v41);
          }

          if (sscanf(v44, "%u", &v38) == 1 && v38 <= 6)
          {
            *(a1 + 208) = dword_233916A30[v38];
          }

          v31 = 0;
          *(a1 + 198) = 1;
          goto LABEL_114;
        }

        if (v47 != 0x4F65727574706143 || *v48 != 0x63656C65735F6A62 || *&v48[5] != 0x6E6F697463656CLL)
        {
          v23 = v47 == 0x4F65727574706143 && *v48 == 0x5F656E6F745F6A62;
          if (!v23 || *&v48[6] != 0x65767275635F65)
          {
            v25 = v47 == 0x4F65727574706143 && *v48 == 0x70726168735F6A62;
            if (!v25 || *&v48[5] != 0x7373656E707261)
            {
              v27 = v47 == 0x6A624F746F6F6853 && *v48 == 0x735F726F6C6F635FLL;
              if (!v27 || *&v48[5] != 0x70757465735F72)
              {
                v29 = v47 == 0x6A624F746F6F6853 && *v48 == 0x65735F657661735FLL;
                if (!v29 || *&v48[8] != 7370100)
                {
                  if (*(a1 + 195) == 1 && *(a1 + 196) == 1 && *(a1 + 197) == 1)
                  {
                    v31 = *(a1 + 198);
                  }

                  else
                  {
                    v31 = 0;
                  }

                  if ((v31 & 1) != 0 || v9 < 0x35)
                  {
                    goto LABEL_114;
                  }

                  sub_2338BF680(a1, v10, v9, a4 + 1);
                }
              }
            }
          }
        }

        v31 = 0;
      }

LABEL_114:
      sub_2338A832C(a1, &v40);
      v35 = v40;
      v38 = v10 + v11;
      sub_2337268D8(&v39, &v38);
      (*(*v35 + 40))(v35, &v39, 0);
      if (v41)
      {
        sub_2337239E8(v41);
      }

      a3 = a3 - 52 - v11;
    }

    while (!(v31 & 1 | (a3 < 0x35)));
  }

  return sub_233725FD4(v42);
}

void sub_2338BFDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338BFE8C(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338BFF60(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284932658;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_284932560;
  *(a1 + 219) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  return a1;
}

void sub_2338C000C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338C0088(const void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v3 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932818, 0);
    if (v3)
    {
      sub_2338C01EC(v3);
    }
  }
}

void sub_2338C0138(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338C0268();
}

void sub_2338C01EC(uint64_t a1)
{
  v1 = sub_2338A9B94(a1);
  sub_2337830C4(v1, *MEMORY[0x277CD3490], *MEMORY[0x277CD34A8], @"Hasselblad");
}

void *sub_2338C0304(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284932840;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284932748;
  return a1;
}

void sub_2338C03A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338C0420(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_280C04EF0, memory_order_acquire) & 1) == 0)
  {
    sub_2338FF8E0();
  }

  return qword_280C04EE8;
}

uint64_t sub_2338C0458(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_280C04F00, memory_order_acquire) & 1) == 0)
  {
    sub_2338FF93C();
  }

  return qword_280C04EF8;
}

uint64_t sub_2338C0490(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_280C04F10, memory_order_acquire) & 1) == 0)
  {
    sub_2338FF998();
  }

  return qword_280C04F08;
}

uint64_t sub_2338C04C8(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_280C04F30, memory_order_acquire) & 1) == 0)
  {
    sub_2338FF9F4();
  }

  return qword_280C04F28;
}

void sub_2338C0500(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932A78, 0);
    if (v10)
    {
      sub_2338C1D30(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338C05CC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932A78, 0);
    if (v10)
    {
      sub_2338C1BC4(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338C0698(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932A78, 0);
    if (v10)
    {
      sub_2338C1AF0(v10, v11, a3, a4, v12, a6);
    }
  }
}

void sub_2338C0764(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338C21A8();
}

uint64_t sub_2338C07F8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_2338A832C(a1, &v9);
  LODWORD(v8) = 0;
  sub_233725F08(v7, &v9, &v8, 0);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  v8 = 0;
  sub_2338A832C(a1, &v9);
  v2 = (*(*v9 + 32))(v9, &v8, 8);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  if (v2 == 8 && bswap32(v8) == 5067341)
  {
    v9 = 0;
    if (sub_2338A9730(a1, &v9, 8, 48, 0) != 8)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (BYTE1(v9) == 77 && v9 == 77)
    {
      v4 = 48;
    }

    else
    {
      v4 = 140;
    }
  }

  else
  {
    v4 = sub_2338AEFA4();
  }

  sub_233725FD4(v7);
  return v4;
}

void sub_2338C0984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

BOOL sub_2338C09F8(uint64_t *a1)
{
  v4 = 0;
  sub_233725F08(v5, a1, &v4, 0);
  v4 = 0;
  v2 = (*(**a1 + 32))(*a1, &v4, 4);
  sub_2338FFA78(v2, &v4, v5, &v6);
  return v6;
}

void sub_2338C0A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338C0A98(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v6 = sub_2338BD598(v2, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68]);

  if (v6)
  {
    v4 = sub_2338C0BB0(a1, [v6 intValue]);
    if (v4)
    {
      v5 = sub_2338A9B94(a1);
      sub_2337830C4(v5, v3, *MEMORY[0x277CD2F78], v4);
    }
  }

  sub_2338AF5B0(a1);
}

id sub_2338C0BB0(uint64_t a1, uint64_t a2)
{
  v83 = 0;
  v84 = 0;
  v85 = 0;
  v4 = sub_2338E9010(@"minolta");
  v75 = v4;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", a2];
    v6 = sub_23378DDE8(v4, v5);

    for (i = 0; ; i = v82 + 1)
    {
      v82 = i;
      if (i >= [v6 count])
      {

        goto LABEL_26;
      }

      v8 = sub_23386EAC4(v6, &v82);
      if ([v8 count] == 5)
      {
        break;
      }

LABEL_22:
    }

    __p[0] = 0;
    v9 = sub_23386E0B8(v8, __p);
    __p[0] = 1;
    v10 = sub_23386EA74(v8, __p);
    __p[0] = 2;
    v11 = sub_23386EA74(v8, __p);
    __p[0] = 3;
    v12 = sub_23386EA74(v8, __p);
    __p[0] = 4;
    v13 = sub_23386EA74(v8, __p);
    if (!v9)
    {
LABEL_21:

      goto LABEL_22;
    }

    v14 = v13;
    v15 = [v9 UTF8String];
    v16 = strlen(v15);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2337304FC();
    }

    v17 = v16;
    if (v16 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v77) = v16;
    if (v16)
    {
      memmove(&__dst, v15, v16);
    }

    *(&__dst + v17) = 0;
    v18 = SHIBYTE(v77);
    if (SHIBYTE(v77) < 0)
    {
      sub_233731FB8(__p, __dst, *(&__dst + 1));
    }

    else
    {
      *__p = __dst;
      v79 = v77;
    }

    *&v80 = v10;
    *(&v80 + 1) = v11;
    *&v81 = v12;
    *(&v81 + 1) = v14;
    v19 = v84;
    if (v84 >= v85)
    {
      v84 = sub_2338BAFB4(&v83, __p);
      if (SHIBYTE(v79) < 0)
      {
        operator delete(__p[0]);
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }
      }

      else if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v20 = *__p;
      *(v84 + 16) = v79;
      *v19 = v20;
      __p[1] = 0;
      v79 = 0;
      __p[0] = 0;
      v21 = v81;
      *(v19 + 24) = v80;
      *(v19 + 40) = v21;
      v84 = v19 + 56;
      if ((v18 & 0x80000000) == 0)
      {
LABEL_20:
        v4 = v75;
        goto LABEL_21;
      }
    }

    operator delete(__dst);
    goto LABEL_20;
  }

LABEL_26:
  if (v84 - v83 == 56)
  {
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    goto LABEL_94;
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3)) < 2)
  {
    v22 = 0;
    goto LABEL_94;
  }

  v23 = sub_2338B0E5C(a1);
  v24 = sub_2338A9B94(a1);
  v25 = sub_233739994(v24, *MEMORY[0x277CD2F50], 0);

  v26 = sub_233740FAC(v23, *MEMORY[0x277CD3088]);
  v27 = sub_233740FAC(v23, *MEMORY[0x277CD30E8]);
  v28 = sub_23378DDE8(v25, *MEMORY[0x277CD2F70]);
  v30 = v28;
  v31 = 0.0;
  if (v28)
  {
    v32 = 0.0;
    if ([v28 count] == 4)
    {
      __p[0] = 0;
      v32 = sub_23386EA74(v30, __p);
      __p[0] = 1;
      v31 = sub_23386EA74(v30, __p);
      __p[0] = 2;
      sub_23386EA74(v30, __p);
      __p[0] = 3;
      v29 = sub_23386EA74(v30, __p);
    }
  }

  else
  {
    v32 = 0.0;
  }

  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:v29];
  if (v26)
  {
    v72 = v27;
    v73 = v25;
    v71 = v33;
    [v26 doubleValue];
    v35 = v34;
    [v27 doubleValue];
    v37 = exp2(v36 * 0.5);
    v38 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3));
    v40 = v83;
    if ((0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3)) >= 2)
    {
      v69 = log(v35);
      v41 = 0;
      v42 = 0;
      v43 = 999999999.0;
      v44 = 1;
      v74 = v37;
      while (1)
      {
        v45 = v40 + v41;
        if (*(v40 + v41 + 79) < 0)
        {
          v47 = v43;
          sub_233731FB8(__p, *(v45 + 56), *(v45 + 64));
          v43 = v47;
        }

        else
        {
          v46 = *(v45 + 56);
          v79 = *(v45 + 72);
          *__p = v46;
        }

        v48 = *(v40 + v41 + 80);
        v81 = *(v40 + v41 + 96);
        v80 = v48;
        v49 = v48;
        v50 = *(&v81 + 1);
        v39 = *&v81;
        if ((v32 <= 0.0 || vabdd_f64(v32, *&v80) <= 0.9) && (v31 <= 0.0 || vabdd_f64(v31, *(&v80 + 1)) <= 0.9) && v35 >= *&v80 + -0.9 && v35 <= *(&v80 + 1) + 0.9)
        {
          if (v37 <= 0.0)
          {
            v61 = v43;
LABEL_66:
            if (v79 >= 0)
            {
              v62 = __p;
            }

            else
            {
              v62 = __p[0];
            }

            v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:v62];
            if (v63)
            {
              [v38 addObject:v63];
            }

            v43 = v61;
            goto LABEL_72;
          }

          if (v37 >= *&v81 + -0.15 && v37 <= *(&v81 + 1) + 0.15)
          {
            if (*&v80 != *(&v80 + 1) && *&v81 != *(&v81 + 1))
            {
              v70 = v43;
              v53 = log(*&v81);
              v54 = log(v50) - v53;
              v55 = log(*(&v49 + 1));
              v56 = log(*&v49);
              v57 = v53 + v54 / (v55 - v56) * (v69 - v56);
              v37 = v74;
              v39 = exp(v57);
              v43 = v70;
            }

            v58 = vabdd_f64(v37, v39);
            v39 = v43 + 0.15;
            if (v58 <= v43 + 0.15)
            {
              if (v58 < v43 + -0.15)
              {
                if (v79 >= 0)
                {
                  v59 = __p;
                }

                else
                {
                  v59 = __p[0];
                }

                v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:v59];

                v42 = v60;
              }

              v61 = v58;
              v37 = v74;
              goto LABEL_66;
            }

            v37 = v74;
          }
        }

LABEL_72:
        if (SHIBYTE(v79) < 0)
        {
          v64 = v43;
          operator delete(__p[0]);
          v43 = v64;
        }

        ++v44;
        v40 = v83;
        v41 += 56;
        if (v44 >= 0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3))
        {
          goto LABEL_78;
        }
      }
    }

    v42 = 0;
LABEL_78:
    if ([v38 count])
    {
      if (v42)
      {
        v65 = v42;
      }

      else
      {
        v65 = &stru_284938540;
      }

      v22 = [MEMORY[0x277CCAB68] stringWithString:v65];
      for (j = 0; ; j = __p[0] + 1)
      {
        __p[0] = j;
        if (j >= [v38 count])
        {
          break;
        }

        v67 = sub_23386E0B8(v38, __p);
        if ([v22 length])
        {
          if (!v42 || ([v67 isEqualToString:v22] & 1) == 0)
          {
            [v22 appendFormat:@" or %@", v67];
          }
        }

        else
        {
          [v22 appendString:v67];
        }
      }

      v4 = v75;
      v27 = v72;
      v25 = v73;
      v33 = v71;
      goto LABEL_93;
    }

    v4 = v75;
    v27 = v72;
    v33 = v71;
  }

  v22 = v33;
LABEL_93:

LABEL_94:
  __p[0] = &v83;
  sub_2338BB644(__p);

  return v22;
}

void sub_2338C13E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  __p = &a34;
  sub_2338BB644(&__p);
  _Unwind_Resume(a1);
}

BOOL sub_2338C1588(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v13 = 0;
  v14[0] = 0;
  *(v14 + 5) = 0;
  v11 = sub_2338A9730(a1, &v13, 20, a5, a3);
  if (v11 == 20)
  {
    sub_2338ADD58(a1, v10, word_284932880, a3, a5, a6);
    (*(*a1 + 160))(a1);
  }

  return v11 == 20;
}

uint64_t sub_2338C169C(uint64_t a1, void *a2, unsigned int a3, _DWORD *a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v18[0] = 0;
  v18[2] = 650;
  v18[1] = 0x1450000028ALL;
  v18[3] = 0xFFFFFEBBFFFFFD76;
  v19 = -650;
  v14 = 0u;
  *(&v14 + 4) = 0x10E00000168;
  v15 = 0xFFFFFE98FFFFFEF2;
  v16 = 4294967026;
  v17 = 270;
  if (sub_2338BA75C(v8, @"ALPHA SWEET DIGITAL", 0) && sub_2338BA75C(v8, @"ALPHA-7 DIGITAL", 0) && sub_2338BA75C(v8, @"MAXXUM 7D", 0) || (*a5 = 0x7D000000BC0, a3 > 8))
  {
    v12 = 0;
  }

  else
  {
    v9 = *(&v14 + a3);
    v10 = dword_233916BC0[a3];
    v11 = dword_233916BE4[a3];
    *a4 = *(v18 + a3);
    a4[1] = v9;
    a4[2] = v10;
    a4[3] = v11;
    v12 = 1;
  }

  return v12;
}

void sub_2338C181C(uint64_t *a1, int a2)
{
  v23 = 0;
  v4 = sub_2338A9B94(a1);
  v5 = sub_233875D18(v4, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  for (i = 0; ; ++i)
  {
    v6 = sub_2338C169C(v6, v5, i, v22, &v23);
    if (!v6)
    {
      break;
    }
  }

  if (i)
  {
    v8 = sub_2338AC594(a1, 0, 0, sub_2338C1A6C);
    v9 = 0;
    __p = 0;
    v20 = 0;
    v21 = 0;
    do
    {
      v18 = 0uLL;
      v8 = sub_2338C169C(v8, v5, v9, &v18, &v23);
      if (v8)
      {
        v10 = v20;
        if (v20 >= v21)
        {
          v12 = (v20 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_2337235BC();
          }

          v14 = v21 - __p;
          if ((v21 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_23377FC40(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = v18;
          v11 = 16 * v12 + 16;
          v17 = (16 * v12 - (v20 - __p));
          memcpy(v16 - (v20 - __p), __p, v20 - __p);
          v8 = __p;
          __p = v17;
          v20 = v11;
          v21 = 0;
          if (v8)
          {
            operator delete(v8);
          }
        }

        else
        {
          *v20 = v18;
          v11 = (v10 + 16);
        }

        v20 = v11;
      }

      ++v9;
    }

    while (v9 < i);
    sub_2338B1160(a1, &__p, 1);
    if (a2)
    {
      sub_2338B1254(a1, 1 << (a2 - 1), (1 << (a2 - 1)) >> 63, 1);
    }

    sub_2338B1194(a1, &v23, 1);
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }
}

id sub_2338C1A6C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284932A78, 0);
    if (a1)
    {
      a1 = sub_2338C2188(a1, v3);
    }

    v2 = vars8;
  }

  return a1;
}

void sub_2338C1AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v8) = *(a4 + 8);
  v12 = sub_2338A9B94(a1);
  v9 = bswap32(v8);
  if (a6)
  {
    v8 = v9;
  }

  else
  {
    v8 = v8;
  }

  v10 = sub_2338A9BFC(a3);
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  sub_2337830C4(v12, v10, *MEMORY[0x277CD2F68], v11);
}

void sub_2338C1BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) >= 0xA2u)
  {
    v20 = 0;
    LODWORD(v8) = *(a4 + 8);
    v9 = bswap32(v8);
    v8 = a6 ? v9 : v8;
    if (sub_2338A9730(a1, &v20, 2, a5, v8 + 160) == 2)
    {
      v10 = v20;
      v11 = bswap32(v20) >> 16;
      if (a6)
      {
        v10 = v11;
      }

      v12 = v10;
      v20 = v10;
      if (v10 == 76)
      {
        v13 = 6;
      }

      else
      {
        v13 = 1;
      }

      if (v12 == 82)
      {
        v14 = 8;
      }

      else
      {
        v14 = v13;
      }

      v15 = sub_2338A9B94(a1);
      v16 = [MEMORY[0x277CCABB0] numberWithShort:v14];
      v17 = *MEMORY[0x277CD34B8];
      sub_2337830C4(v15, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B8], v16);

      v18 = [MEMORY[0x277CCABB0] numberWithShort:v14];
      v19 = sub_2338A9B94(a1);
      [v19 setObject:v18 forKeyedSubscript:v17];
    }
  }
}

void sub_2338C1D30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) >= 0x8Eu)
  {
    v24 = 0;
    v9 = *(a4 + 8);
    v10 = bswap32(v9);
    if (a6)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (sub_2338A9730(a1, &v24, 2, a5, v11 + 140) == 2)
    {
      v12 = v24;
      v13 = bswap32(v24) >> 16;
      if (a6)
      {
        v12 = v13;
      }

      v14 = v12;
      v24 = v12;
      if (v12 == 76)
      {
        v15 = 6;
      }

      else
      {
        v15 = 1;
      }

      if (v14 == 82)
      {
        v16 = 8;
      }

      else
      {
        v16 = v15;
      }

      v17 = sub_2338A9B94(a1);
      v18 = [MEMORY[0x277CCABB0] numberWithShort:v16];
      v19 = *MEMORY[0x277CD34B8];
      sub_2337830C4(v17, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B8], v18);

      v20 = [MEMORY[0x277CCABB0] numberWithShort:v16];
      v21 = sub_2338A9B94(a1);
      [v21 setObject:v20 forKeyedSubscript:v19];
    }

    if (sub_2338A9730(a1, &v24, 2, a5, v11 + 32) == 2)
    {
      v22 = v24;
      v23 = bswap32(v24) >> 16;
      if (a6)
      {
        v22 = v23;
      }

      v24 = v22;
      sub_2338C181C(a1, v22);
    }
  }
}

void sub_2338C1EF0(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9B94(a1);
  v7 = sub_2337397B0(v6, *MEMORY[0x277CD3410]);

  memset(v21, 0, sizeof(v21));
  sub_2338B0B1C(a1, a2, &v20);
  v19 = 0uLL;
  v8 = sub_2338A9C18(a1);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/%@", @"PreviewImageStart"];
  v10 = sub_233740FAC(v8, v9);

  v11 = sub_2338A9C18(a1);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/%@", @"PreviewImageLength"];
  v13 = sub_233740FAC(v11, v12);

  v14 = 1;
  if (v10 && v13)
  {
    v17 = [v10 intValue];
    v15 = [v13 intValue];
    sub_233726998(&v16, &v15);
    sub_2338A820C(a1, &v17, &v16, v7, &v18);
    v19 = v18;
    v14 = v18 == 0;
  }

  if (v20)
  {
    sub_233753C74(v21, &v20);
  }

  if (!v14)
  {
    sub_233753C74(v21, &v19);
  }

  sub_2338A86B8(v21, a2, a3);

  if (*(&v19 + 1))
  {
    sub_2337239E8(*(&v19 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_2337239E8(*(&v20 + 1));
  }

  *&v20 = v21;
  sub_233723948(&v20);
}

void sub_2338C20E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void **a18, std::__shared_weak_count *a19, char a20)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  a18 = &a20;
  sub_233723948(&a18);
  _Unwind_Resume(a1);
}

__CFString *sub_2338C2188(uint64_t a1, unsigned int a2)
{
  if (a2 > 8)
  {
    return 0;
  }

  else
  {
    return off_2789F0240[a2];
  }
}

void *sub_2338C2244(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284932AA0;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_2849329A8;
  return a1;
}

void sub_2338C22E4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284932AA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338C2360(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v9)
    {
      sub_2338C74C0(v9, v12, v10, a4, v11, a6);
    }
  }
}

void sub_2338C2428(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v11)
    {
      sub_2338C64CC(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C2508(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v7)
    {
      sub_2338C65D4(v7, v8, a3, a4);
    }
  }
}

void sub_2338C25D0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v9)
    {
      sub_2338C6940(v9, v10, v11, a4, v12, a6);
    }
  }
}

void sub_2338C2694(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v10)
    {
      sub_2338C6C04(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C2764(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v7)
    {
      sub_2338FFBFC(v7, v8, a3, a4);
    }
  }
}

void sub_2338C2840(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v10)
    {
      sub_2338FFD80(v10, v13, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338C290C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v11)
    {
      sub_2338C6724(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C29E8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v10)
    {
      sub_2338C7294(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C2AB8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (v10)
    {
      sub_2338C7910(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C2B88(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338C7D94();
}

uint64_t sub_2338C2C1C(uint64_t a1, unsigned int *a2, int *a3, float *a4, float *a5)
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = sub_2338A9B94(a1);
  v10 = @"{Temporary}";
  v11 = @"_AutoFocus";
  v12 = sub_2338AE7EC(v9, v10, v11);

  v13 = 0;
  v29 = 0;
  LOBYTE(v14) = 1;
  do
  {
    while ((v14 & 1) == 0)
    {
      LOBYTE(v14) = 0;
      v18 = 0;
      v29 = v13 + 1;
      if (v13++ >= 6)
      {
        goto LABEL_25;
      }
    }

    if (v13 < [v12 count] && (sub_23386F6F4(v12, &v29), v15 = objc_claimAutoreleasedReturnValue(), (v16 = v15) != 0))
    {
      v17 = [v15 intValue];
      *(&v30 + v29) = v17;

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v13 = v29 + 1;
    v29 = v13;
  }

  while (v13 < 7);
  v18 = 0;
  if (v14)
  {
    if (v30)
    {
      v20 = v31;
      if (v31)
      {
        v21 = v32;
        if (v32)
        {
          v22 = v33;
          v23 = v34;
          v24 = v36;
          *a2 = v35 + (v33 - v31) / 2;
          v25 = v24 + (v23 - v21) / 2;
          *a3 = v25;
          *a4 = *a4 * v22;
          *a5 = *a5 * v23;
          *a4 = *a4 / v20;
          *a5 = *a5 / v21;
          if ((*a2 & 0x80000000) == 0)
          {
            v26 = *a2;
          }

          else
          {
            v26 = -*a2;
          }

          if (v25 >= 0)
          {
            v27 = v24 + (v23 - v21) / 2;
          }

          else
          {
            v27 = -v25;
          }

          if (v26 > 0x20 || v27 >= 0x21)
          {
            *a3 = 0;
            *a2 = 0;
          }

          v18 = 1;
        }
      }
    }
  }

LABEL_25:

  return v18;
}

void sub_2338C2E74(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v4 = @"ImageStabilization";
  v14 = sub_233875D18(v2, v3, v4);

  if (v14)
  {
    v6 = sub_2338C3068(v5, off_2789F0288, &v14);
  }

  else
  {
    v7 = sub_2338A9B94(a1);
    v8 = sub_2338AE7EC(v7, v3, v4);

    if ([v8 count] < 5)
    {
      v6 = 0x7FFFLL;
    }

    else
    {
      v9 = sub_23386EA2C(v8, &v13);
      if (v9 == 2)
      {
        v10 = 0;
      }

      else
      {
        v10 = 0x7FFF;
      }

      if (v9 == 1)
      {
        v6 = 3;
      }

      else
      {
        v6 = v10;
      }
    }
  }

  v11 = sub_2338A9B94(a1);
  if (v6 == 0x7FFF)
  {
    sub_2338AE980(v11, v3, v4);
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    sub_2337830C4(v11, v3, v4, v12);
  }
}

uint64_t sub_2338C3068(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = [MEMORY[0x277CCAB68] stringWithString:*a3];
  [v5 replaceOccurrencesOfString:@" " withString:&stru_284938540 options:0 range:{0, objc_msgSend(*a3, "length")}];
  v6 = MEMORY[0x277CCAB68];
  v7 = [v5 uppercaseString];
  v8 = [v6 stringWithString:v7];

  v9 = 0;
  do
  {
    v10 = a2 + 24 * v9;
    if (!*v10)
    {
      break;
    }

    v11 = *v10;
    v12 = sub_2338BA75C(v11, v8, 0);

    if (!v12)
    {
      objc_storeStrong(a3, *(v10 + 8));
      break;
    }

    ++v9;
  }

  while (*v10);
  v13 = *(v10 + 16);

  return v13;
}

void sub_2338C31B0(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v4 = *MEMORY[0x277CD33D8];
  v5 = sub_2338AE880(v2, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8]);

  if (!v5)
  {
    v6 = sub_2338A9B94(a1);
    v7 = sub_233875D18(v6, *MEMORY[0x277CD33C8], v4);

    if (v7)
    {
      v8 = sub_2338A818C(v7, @"MANUAL", 1);
      v9 = sub_2338A9B94(a1);
      v10 = [MEMORY[0x277CCABB0] numberWithInt:!v8];
      sub_2337830C4(v9, v3, v4, v10);
    }
  }

  sub_2338AF5B0(a1);
}

void sub_2338C32FC(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9B94(a1);
  v7 = sub_2337397B0(v6, *MEMORY[0x277CD3410]);

  memset(v21, 0, sizeof(v21));
  sub_2338B0B1C(a1, a2, &v20);
  v19 = 0uLL;
  v8 = sub_2338A9C18(a1);
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/%@/%@", @"NikonThumbnail", @"PreviewImageStart"];
  v10 = sub_233740FAC(v8, v9);

  v11 = sub_2338A9C18(a1);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/%@/%@", @"NikonThumbnail", @"PreviewImageLength"];
  v13 = sub_233740FAC(v11, v12);

  v14 = 1;
  if (v10 && v13)
  {
    v17 = [v10 intValue];
    v15 = [v13 intValue];
    sub_233726998(&v16, &v15);
    sub_2338A820C(a1, &v17, &v16, v7, &v18);
    v19 = v18;
    v14 = v18 == 0;
  }

  if (v20)
  {
    sub_233753C74(v21, &v20);
  }

  if (!v14)
  {
    sub_233753C74(v21, &v19);
  }

  sub_2338A86B8(v21, a2, a3);

  if (*(&v19 + 1))
  {
    sub_2337239E8(*(&v19 + 1));
  }

  if (*(&v20 + 1))
  {
    sub_2337239E8(*(&v20 + 1));
  }

  *&v20 = v21;
  sub_233723948(&v20);
}

void sub_2338C34FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void **a18, std::__shared_weak_count *a19, char a20)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  a18 = &a20;
  sub_233723948(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_2338C3594(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v17 = 0;
  v18[0] = 0;
  *(v18 + 5) = 0;
  if (sub_2338A9730(a1, &v17, 20, a5, a3) != 20)
  {
    goto LABEL_19;
  }

  if (v17 == 1869310286 && *(&v17 + 3) == 33582703)
  {
    if (BYTE2(v18[0]) == 73)
    {
      v12 = 0;
    }

    else
    {
      v12 = a6;
    }

    if (BYTE2(v18[0]) == 77)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    if (BYTE2(v18[0]) == BYTE3(v18[0]))
    {
      v14 = v13;
    }

    else
    {
      v14 = a6;
    }

    sub_2338ADD58(a1, v10, word_284933030, 8, a3 + a5 + 10, v14);
    goto LABEL_18;
  }

  if (!(v17 ^ 0x100006E6F6B694ELL | LOWORD(v18[0])))
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  sub_2338ADD58(a1, v10, word_2789F0648, a3, a5, a6);
LABEL_18:
  (*(*a1 + 160))(a1);
  v15 = 1;
LABEL_20:

  return v15;
}

void sub_2338C373C(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD33C8];
  v4 = sub_233739994(v2, *MEMORY[0x277CD33C8], 0);

  v5 = sub_2338A9B94(a1);
  v6 = *MEMORY[0x277CD2F50];
  v7 = *MEMORY[0x277CD2FE0];
  v8 = sub_233875D18(v5, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2FE0]);

  if (v8 && CFStringGetCString(v8, buffer, 256, 0x8000100u))
  {
    v9 = buffer[0];
    if (buffer[0])
    {
      v10 = 0;
      v11 = &buffer[1];
      do
      {
        if ((*(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x400) != 0)
        {
          v12 = v9 - 48;
        }

        else
        {
          v12 = v9 % 0xA;
        }

        v10 = v12 + 10 * v10;
        v13 = *v11++;
        v9 = v13;
      }

      while (v13);
    }

    else
    {
      v10 = 0;
    }

    if (sub_2338A9524(a1, buffer))
    {
      v28 = sub_2338A9B94(a1);
      sub_2338AE980(v28, v6, v7);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = *MEMORY[0x277CD33E8];
  if (sub_233739ACC(v4, *MEMORY[0x277CD33E8]))
  {
    v15 = sub_2337397B0(v4, v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277CD33F8];
  if (sub_233739ACC(v4, *MEMORY[0x277CD33F8]))
  {
    v17 = sub_2337397B0(v4, v16);
    v18 = sub_2338A9B94(a1);
    v19 = [MEMORY[0x277CCABB0] numberWithInt:v17];
    sub_2337830C4(v18, v6, *MEMORY[0x277CD2F60], v19);
  }

  else
  {
    v17 = 0;
  }

  v20 = sub_2338A9B94(a1);
  v21 = v3;
  v22 = sub_2338AE7EC(v20, v21, @"_Nikon98Tag");

  if (v22)
  {
    v23 = [v22 count];
    if (v23)
    {
      sub_233726154(buffer, v23);
      v24 = 0;
      v25 = 1;
      do
      {
        v29 = v24;
        v26 = sub_23386EA2C(v22, &v29);
        *(*buffer + v24) = v26;
        v24 = v25;
      }

      while (v23 > v25++);
      sub_2338C3B28(a1, *buffer, v23, v17, v10, v15);
      if (*buffer)
      {
        v31 = *buffer;
        operator delete(*buffer);
      }
    }
  }

  [v4 removeObjectForKey:@"_Nikon98Tag"];
}

void sub_2338C3B28(uint64_t a1, _DWORD *a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_2338FFB34(a1, a2, a3, a4, a5);
  v28 = 0;
  v12 = 11;
  v13 = 9;
  if (v10 > 200)
  {
    if ((v10 - 201) >= 3)
    {
      if (v10 != 204)
      {
        return;
      }

      v12 = 12;
      v13 = 10;
    }

LABEL_7:
    if (v13 < a3)
    {
      LOBYTE(v11) = *(a2 + v13);
      v14 = expf((v11 * 2.3026) / 40.0);
      v25 = sub_2338A9B94(a1);
      *&v15 = v14 / 100.0;
      v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
      sub_2337830C4(v25, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D0], v16);
    }

    goto LABEL_10;
  }

  if (v10 != 100)
  {
    if (v10 != 101)
    {
      return;
    }

    goto LABEL_7;
  }

  v12 = 6;
LABEL_10:
  if (v12 + 6 < a3)
  {
    v17 = a2 + v12;
    v18 = 7;
    do
    {
      v19 = *v17++;
      *(&v28 + v18) = v19;
    }

    while (v18-- > 1);
    LOBYTE(v28) = a6;
    v26 = sub_2338A9B94(a1);
    v21 = v28;
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v28];
    v23 = *MEMORY[0x277CD2F50];
    sub_2337830C4(v26, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68], v22);

    v27 = sub_2338C5A6C(a1, v21);
    if (v27)
    {
      v24 = sub_2338A9B94(a1);
      sub_2337830C4(v24, v23, *MEMORY[0x277CD2F78], v27);
    }
  }
}

void sub_2338C3D94(uint64_t a1)
{
  sub_2338C3F64(a1);
  v2 = sub_2338A9B94(a1);
  v9 = sub_233739994(v2, @"{PictureStyle}", 0);

  if (v9)
  {
    v3 = sub_2338A9B94(a1);
    v4 = sub_2338AE880(v3, @"{PictureStyle}", @"Monochrome");

    if (!v4)
    {
      sub_2338ACF60(a1, @"Monochrome", 0);
    }

    v5 = (*(*a1 + 96))(a1);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = sub_2338AD1AC(a1, v5);
      sub_2338AD018(a1, @"{PictureStyle}", @"PictStyleColorSpace", v6, v5, v5);
    }
  }

  v7 = sub_2338A9B94(a1);
  [v7 removeObjectForKey:@"{PictStyleSetting}"];

  v8 = sub_2338A9B94(a1);
  [v8 removeObjectForKey:@"{PictStyleNormalized}"];
}

void sub_2338C3F64(uint64_t a1)
{
  v88 = *MEMORY[0x277D85DE8];
  v86 = 0;
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD33C8];
  v4 = *MEMORY[0x277CD33F0];
  v86 = sub_233875D18(v2, v3, v4);

  if (v86)
  {
    v6 = sub_2338C3068(v5, off_2789F02D0, &v86);
    if (v6 != 0x7FFF)
    {
      sub_2338AD018(a1, @"{PictureStyle}", *MEMORY[0x277CD3150], v86, v6, v6);
    }
  }

  v7 = sub_2338A9B94(a1);
  v8 = @"{PictStyleSetting}";
  v9 = sub_233875D18(v7, v8, @"ToneCompensation");
  v10 = v86;
  v86 = v9;

  if (v9)
  {
    v12 = sub_2338C3068(v11, off_2789F03A8, &v86);
    if (v12 != 0x7FFF)
    {
      sub_2338AD018(a1, @"{PictureStyle}", @"ToneCompensation", v86, v12, v12);
    }
  }

  v13 = sub_2338A9B94(a1);
  v14 = v8;
  v15 = *MEMORY[0x277CD3128];
  v16 = sub_233875D18(v13, v14, v15);
  v17 = v86;
  v86 = v16;

  if (v16)
  {
    v19 = sub_2338C3068(v18, off_2789F0468, &v86);
    if (v19 != 0x7FFF)
    {
      sub_2338AD018(a1, @"{PictureStyle}", v15, v86, v19, v19);
    }
  }

  v20 = sub_2338A9B94(a1);
  v21 = sub_2338AE880(v20, v14, @"HueAdjustment");

  if (v21)
  {
    v22 = sub_2338A9B94(a1);
    v23 = sub_2338AE900(v22, v14, @"HueAdjustment");

    v24 = v23 >= 0 ? v23 : -v23;
    if (v24 <= 0x7E)
    {
      sub_2338ACF60(a1, @"HueAdjustment", v23);
    }
  }

  v25 = sub_2338A9B94(a1);
  v26 = v14;
  v27 = @"ToningEffect";
  v28 = sub_233875D18(v25, v26, v27);
  v29 = v86;
  v86 = v28;

  if (v28)
  {
    sub_2338AD018(a1, @"{PictureStyle}", v27, v28, 32767.0, 32767.0);
  }

  v82 = v28;
  v30 = sub_2338A9B94(a1);
  v31 = v26;
  v32 = sub_2338AE7EC(v30, v31, @"_Nikon23Tag");

  if (v32)
  {
    v33 = [v32 count];
    if (v33 >= 0x3A)
    {
      sub_233726154(__p, v33);
      *v87 = 0;
      do
      {
        v34 = sub_23386EA2C(v32, v87);
        *(__p[0] + (*v87)++) = v34;
      }

      while (*v87 < v33);
      v71 = v15;
      v35 = *(__p[0] + 48);
      v76 = *(__p[0] + 52);
      v77 = *(__p[0] + 50);
      v79 = *(__p[0] + 53);
      v80 = *(__p[0] + 51);
      v75 = *(__p[0] + 54);
      v78 = *(__p[0] + 55);
      v81 = *(__p[0] + 56);
      v36 = *(__p[0] + 57);
      memset(v87, 0, sizeof(v87));
      v37 = *(__p[0] + 4);
      *&v87[16] = *(__p[0] + 5);
      *v87 = v37;
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:v87];
      v39 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v73 = v36;
      v74 = v35;
      v40 = [v38 stringByTrimmingCharactersInSet:v39];
      v41 = v40;
      if (v40)
      {
        v42 = v40;
      }

      else
      {
        v42 = &stru_284938540;
      }

      v84 = v42;

      *v87 = *(__p[0] + 24);
      *&v87[16] = *(__p[0] + 10);
      v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:v87];
      v44 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v45 = [v43 stringByTrimmingCharactersInSet:v44];
      v46 = v45;
      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = &stru_284938540;
      }

      v83 = v47;

      v49 = sub_2338C3068(v48, off_2789F04C8, &v84);
      v50 = v49;
      v51 = sub_2338C3068(v49, off_2789F04C8, &v83);
      v52 = v84;
      v72 = v83;
      v53 = sub_2338BA75C(v84, v83, 0) == 0;
      if (v51 == 0x7FFF)
      {
        v53 = 1;
      }

      if (v51 == v50)
      {
        v53 = 1;
      }

      v54 = v50;
      if (v53 && v51 == 0x7FFF)
      {
        v55 = v50;
      }

      else
      {
        v55 = v51;
      }

      if (!v53)
      {
        v54 = 0.0;
      }

      sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v52, v54, v55);
      v56 = (v80 - 128);
      v57 = v79 - 128;
      v59 = sub_2338FFAF8(v58, v55, (v79 - 128));
      v60 = v59;
      if (v56 >= 0)
      {
        v61 = v80 - 128;
      }

      else
      {
        v61 = 128 - v80;
      }

      if (v61 < 0x7F)
      {
        v70 = sub_2338FFABC(v59, v55, v56);
        sub_2338AD018(a1, @"{PictureStyle}", *MEMORY[0x277CD3018], 0, v56, v70);
      }

      if (v57 >= 0)
      {
        v62 = v79 - 128;
      }

      else
      {
        v62 = 128 - v79;
      }

      if (v62 <= 0x7E)
      {
        sub_2338AD018(a1, @"{PictureStyle}", v71, 0, v57, v60);
      }

      v63 = sub_2338C4904(v59, v81);
      sub_2338AD018(a1, @"{PictureStyle}", v27, v63, v81, v81);

      v64 = v81 < -125 || v55 == 11;
      v65 = @"{PictureStyle}";
      v66 = @"FilterEffect";
      v67 = 0;
      if (v78 > 130)
      {
        switch(v78)
        {
          case 131:
            v67 = @"Red";
            break;
          case 132:
            v67 = @"Green";
            break;
          case 255:
            v67 = @"N/A";
            break;
        }
      }

      else
      {
        switch(v78)
        {
          case 128:
            v67 = @"Off";
            break;
          case 129:
            v67 = @"Yellow";
            break;
          case 130:
            v67 = @"Orange";
            break;
        }
      }

      sub_2338AD018(a1, v65, v66, v67, v78, v78);

      sub_2338ACF60(a1, *MEMORY[0x277CD3150], v77 - 128);
      sub_2338ACF60(a1, *MEMORY[0x277CD2FF0], v76 - 128);
      if (v75 - 128 >= 0)
      {
        v68 = v75 - 128;
      }

      else
      {
        v68 = 128 - v75;
      }

      if (v68 <= 0x7E)
      {
        sub_2338ACF60(a1, @"HueAdjustment", v75 - 128);
      }

      if (v73 - 128 >= 0)
      {
        v69 = v73 - 128;
      }

      else
      {
        v69 = 128 - v73;
      }

      if (v69 <= 0x7E)
      {
        sub_2338ACF60(a1, @"ToningSaturation", v73 - 128);
      }

      sub_2338ACF60(a1, @"PictureControlAdjust", v74 & 0x7F);
      sub_2338ACF60(a1, @"Monochrome", v64);

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }
}

void sub_2338C4794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *__p, uint64_t a20, uint64_t a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_2338C4904(uint64_t a1, unsigned __int8 a2)
{
  v2 = @"Purple-blue";
  v3 = @"Red-purple ";
  v4 = @"N/A";
  if (a2 != 255)
  {
    v4 = 0;
  }

  if (a2 != 137)
  {
    v3 = v4;
  }

  if (a2 != 136)
  {
    v2 = v3;
  }

  v5 = @"Blue";
  if (a2 != 135)
  {
    v5 = 0;
  }

  if (a2 == 134)
  {
    v5 = @"Blue-green";
  }

  if (a2 == 133)
  {
    v5 = @"Green";
  }

  if (a2 <= 0x87u)
  {
    v2 = v5;
  }

  v6 = @"Red";
  v7 = @"Yellow";
  if (a2 != 132)
  {
    v7 = 0;
  }

  if (a2 != 131)
  {
    v6 = v7;
  }

  if (a2 == 130)
  {
    v6 = @"Cyanotype";
  }

  v8 = @"Sepia";
  if (a2 != 129)
  {
    v8 = 0;
  }

  if (a2 == 128)
  {
    v8 = @"Black and White";
  }

  if (a2 <= 0x81u)
  {
    v6 = v8;
  }

  if (a2 <= 0x84u)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2338C49D4(uint64_t a1, void *a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v5 = a3;
  v7 = a2;
  v67 = sub_2338A818C(v7, @"D7000", 1);
  v60 = sub_2338A818C(v7, @"D7100", 1);
  v66 = sub_2338A818C(v7, @"D700", 1);
  v8 = sub_2338A818C(v7, @"D3000", 1);
  v75 = sub_2338A818C(v7, @"D3100", 1);
  v74 = sub_2338A818C(v7, @"D3200", 1);
  v72 = sub_2338A818C(v7, @"D300S", 1);
  v71 = sub_2338A818C(v7, @"D300", 1);
  v70 = sub_2338A818C(v7, @"D3X", 1);
  v69 = sub_2338A818C(v7, @"D3S", 1);
  v68 = sub_2338A818C(v7, @"D3", 1);
  v9 = sub_2338A818C(v7, @"D90", 1);
  v10 = sub_2338A818C(v7, @"D5000", 1);
  v11 = sub_2338A818C(v7, @"D5100", 1);
  v59 = sub_2338A818C(v7, @"D5200", 1);
  v58 = sub_2338A818C(v7, @"D5300", 1);
  v65 = sub_2338A818C(v7, @"wide", 1);
  v64 = sub_2338A818C(v7, @"D4", 1);
  v63 = sub_2338A818C(v7, @"Df", 1);
  v62 = sub_2338A818C(v7, @"D800", 1);
  v61 = sub_2338A818C(v7, @"D810", 1);
  v12 = sub_2338A818C(v7, @"D600", 1);
  v13 = sub_2338A818C(v7, @"D610", 1);
  v14 = sub_2338A818C(v7, @"D750", 1);
  v15 = sub_2338C5504(a1, v5);
  v78 = v15;
  if (v15)
  {
    v16 = v15;
    v73 = sub_2338B9D7C(v15, 0);
    v17 = sub_2338B9D7C(v16, 1uLL);
    v18 = sub_2338B9D7C(v16, 2uLL) + 10 * v17;
    v19 = v18 - 528;
    if (v9 || v10 || v8 || v75 || v74)
    {
      v20 = 0xB20000010C0;
      if (v8)
      {
        v20 = 0xA2000000F20;
      }

      v21 = v78;
      *a5 = v20;
      v22 = v19 + (v73 << 8) - 14080;
      if (v22 <= 3077)
      {
        if (v22 <= 2821)
        {
          if (v19 + (v73 << 8) == 16645)
          {
            v23 = 2;
            goto LABEL_73;
          }

          if (v19 + (v73 << 8) == 16646)
          {
            v23 = 4;
            goto LABEL_73;
          }
        }

        else
        {
          switch(v19 + (v73 << 8))
          {
            case 16902:
              v23 = 1;
              goto LABEL_73;
            case 16903:
              v23 = 9;
              goto LABEL_73;
            case 17157:
              v23 = 10;
              goto LABEL_73;
          }
        }
      }

      else if (v22 > 3334)
      {
        switch(v19 + (v73 << 8))
        {
          case 17415:
            v23 = 6;
            goto LABEL_73;
          case 17669:
            v23 = 5;
            goto LABEL_73;
          case 17670:
            v23 = 8;
            goto LABEL_73;
        }
      }

      else
      {
        switch(v19 + (v73 << 8))
        {
          case 17158:
            v23 = 11;
            if (!v65)
            {
              v23 = 0;
            }

            goto LABEL_73;
          case 17159:
            v23 = 7;
            goto LABEL_73;
          case 17414:
            v23 = 3;
LABEL_73:
            v47 = dword_233916E48[v23];
            v48 = dword_233916E7C[v23];
            v49 = dword_233916EB0[v23];
            v50 = dword_233916EE4[v23];
LABEL_91:
            *a4 = v47;
            a4[1] = v48;
            a4[2] = v49;
            a4[3] = v50;
LABEL_92:
            v24 = 1;
            goto LABEL_93;
        }
      }

      v23 = 12;
      goto LABEL_73;
    }

    v21 = v78;
    if (v11)
    {
      *a5 = 0xCC000001340;
      v25 = v19 + (v73 << 8) - 14080;
      if (v25 <= 3077)
      {
        if (v25 <= 2821)
        {
          if (v19 + (v73 << 8) == 16645)
          {
            v26 = 2;
            goto LABEL_90;
          }

          if (v19 + (v73 << 8) == 16646)
          {
            v26 = 4;
            goto LABEL_90;
          }
        }

        else
        {
          switch(v19 + (v73 << 8))
          {
            case 16902:
              v26 = 1;
              goto LABEL_90;
            case 16903:
              v26 = 9;
              goto LABEL_90;
            case 17157:
              v26 = 10;
              goto LABEL_90;
          }
        }
      }

      else if (v25 > 3334)
      {
        switch(v19 + (v73 << 8))
        {
          case 17415:
            v26 = 6;
            goto LABEL_90;
          case 17669:
            v26 = 5;
            goto LABEL_90;
          case 17670:
            v26 = 8;
            goto LABEL_90;
        }
      }

      else
      {
        switch(v19 + (v73 << 8))
        {
          case 17158:
            v26 = 11;
            if (!v65)
            {
              v26 = 0;
            }

            goto LABEL_90;
          case 17159:
            v26 = 7;
            goto LABEL_90;
          case 17414:
            v26 = 3;
LABEL_90:
            v56 = dword_233916F18[v26];
            v48 = dword_233916F4C[v26];
            v49 = dword_233916F80[v26];
            v50 = dword_233916FB4[v26];
            v47 = v56 + 65;
            goto LABEL_91;
        }
      }

      v26 = 12;
      goto LABEL_90;
    }

    v27 = v18 - 480;
    if (v71 && !v8 && !v72 || v72)
    {
      v28 = 1;
      v29 = 0xB3400001100;
      v30 = 110.0;
      v31 = 1124204544;
      v32 = 1127481344;
      v33 = 80.0;
      v34 = 200.0;
      v35 = 150.0;
      v36 = 212.0;
      v37 = 240.0;
      v38 = 1.4;
      v39 = 1.4;
      goto LABEL_37;
    }

    v28 = 1;
    v29 = 0xB1C000010C0;
    v30 = 110.0;
    v31 = 1124204544;
    v32 = 1127481344;
    v33 = 80.0;
    v34 = 200.0;
    v35 = 150.0;
    v36 = 212.0;
    v39 = 1.02;
    v38 = 0.99;
    v37 = 240.0;
    if ((((!v68 || v8 || v72) | ((v71 || v70) | v69)) & ~v69 & 1) == 0 || v66 && !v67)
    {
LABEL_37:
      *a5 = v29;
      if (67 - v73 >= 0)
      {
        v40 = 67 - v73;
      }

      else
      {
        v40 = v73 - 67;
      }

      if (v40 <= 1)
      {
        v28 = 0;
      }

      v41 = v27 + v28;
      v43 = v41 - 54;
      v42 = v41 - 54 < 0;
      v44 = 54 - v41;
      if (!v42)
      {
        v44 = v43;
      }

      v45 = v43;
      if (v44 > 1)
      {
        v46 = ((v33 * v45) / v44) + (v34 * v45);
        v36 = *&v32;
        v35 = *&v31;
      }

      else
      {
        v46 = v37 * v45;
        v30 = 125.0;
      }

      LODWORD(v79) = (v38 * v46);
      DWORD1(v79) = (v39 * (v36 * (67 - v73)));
      sub_2337238F0(&v79 + 2, (v38 * v35), (v39 * v30));
      *a4 = v79;
      goto LABEL_92;
    }

    if (v64 || v63)
    {
      v28 = 1;
      v29 = 0xCDC00001380;
      v30 = 110.0;
      v31 = 1124204544;
      v32 = 1127481344;
      v33 = 80.0;
      v34 = 200.0;
      v35 = 150.0;
      v36 = 212.0;
      v37 = 240.0;
      v38 = 1.15;
LABEL_36:
      v39 = v38;
      goto LABEL_37;
    }

    if (!v12 && !v13)
    {
      if (v62 || v61)
      {
        v28 = 1;
        v29 = 0x133C00001D00;
        v30 = 110.0;
        v31 = 1124204544;
        v32 = 1127481344;
        v33 = 80.0;
        v34 = 200.0;
        v35 = 150.0;
        v39 = 1.72;
        v36 = 212.0;
        v38 = 1.7;
        v37 = 240.0;
        goto LABEL_37;
      }

      if (v14)
      {
        v28 = 1;
        v29 = 0xFB000001780;
        v38 = 1.25;
        v30 = 110.0;
        v31 = 1124204544;
        v32 = 1127481344;
        v33 = 80.0;
        v34 = 200.0;
        v35 = 150.0;
        v36 = 212.0;
        v39 = 1.25;
        v37 = 240.0;
        goto LABEL_37;
      }

      v29 = 0xFB400001790;
      if (!v60)
      {
        if (v70)
        {
          v28 = 1;
          v30 = 110.0;
          v31 = 1124204544;
          v32 = 1127481344;
          v33 = 80.0;
          v34 = 200.0;
          v35 = 150.0;
          v36 = 212.0;
          v37 = 240.0;
          v39 = 1.45;
          v38 = 1.4;
        }

        else
        {
          v33 = 30.0;
          v32 = 1132756992;
          if (v67)
          {
            v28 = 4;
            v29 = 0xCC000001340;
            v30 = 125.0;
            v34 = 210.0;
            v35 = 150.0;
            v37 = 225.0;
            v38 = 1.4;
            v39 = 1.4;
            v36 = 225.0;
            v31 = 1125515264;
          }

          else
          {
            if (!v59 && !v58)
            {
              v24 = 0;
              goto LABEL_93;
            }

            v28 = 4;
            v29 = 17179869190000;
            v34 = 210.0;
            v35 = 125.0;
            v37 = 225.0;
            v38 = 1.7;
            v39 = 1.7;
            v36 = 225.0;
            v31 = 1123680256;
            v30 = 125.0;
          }
        }

        goto LABEL_37;
      }

      v29 = 0xFB400001794;
      v28 = 1;
      v30 = 110.0;
      v31 = 1124204544;
      v32 = 1127481344;
      v33 = 80.0;
      v34 = 200.0;
      v35 = 150.0;
      v36 = 212.0;
      v37 = 240.0;
      v38 = 1.95;
      goto LABEL_36;
    }

    v24 = 0;
    *a5 = 0xFBC000017C0;
    if ((v27 - 49) <= 9)
    {
      v51 = v73 - 65;
      if ((v73 - 65) <= 4u)
      {
        v52 = v27 - 44;
        if ((v51 & 0xFFFFFFFB) != 0)
        {
          v52 = v19;
        }

        v53 = v52 - 1;
        v54 = ((dword_233916FE8[11 * v51 + v53] * 250.0) + -60.0);
        v55 = ((dword_2339170C4[11 * v51 + v53] * 250.0) + 60.0);
        *a4 = v54;
        a4[1] = v55;
        *(a4 + 1) = 0x7800000078;
        goto LABEL_92;
      }
    }
  }

  else
  {
    if (v5)
    {
      sub_2338C49D4(a1, v7, 0, a4, a5);
    }

    v24 = 0;
    v21 = 0;
  }

LABEL_93:

  return v24;
}

id sub_2338C5504(uint64_t a1, unsigned int a2)
{
  v3 = sub_2338C70F0(a1);
  if (a2 >= [v3 length] / 0xCuLL)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 substringWithRange:{12 * a2, 12}];
  }

  return v4;
}

BOOL sub_2338C5598(uint64_t a1, void *a2, unsigned int a3, _DWORD *a4, uint64_t *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v33 = sub_2338A818C(v6, @"D100", 1);
  v30 = sub_2338A818C(v6, @"D200", 1);
  v29 = sub_2338A818C(v6, @"D80", 1);
  v32 = sub_2338A818C(v6, @"D70", 1);
  v7 = sub_2338A818C(v6, @"D60", 1);
  v8 = sub_2338A818C(v6, @"D50", 1);
  v9 = sub_2338A818C(v6, @"D40", 1);
  v27 = sub_2338A818C(v6, @"D2", 1);
  v28 = sub_2338A818C(v6, @"D1X", 1);
  v10 = sub_2338A818C(v6, @"D1H", 1);
  v11 = sub_2338A818C(v6, @"D1", 1);
  v12 = sub_2338A818C(v6, @"P6000", 1);
  v13 = sub_2338A818C(v6, @"E8400", 1);
  v14 = sub_2338A818C(v6, @"E8700", 1);
  v15 = sub_2338A818C(v6, @"E8800", 1);
  if (v7 || v9)
  {
    *a5 = 0xA3800000F40;
    if (a3 <= 4)
    {
      v16 = dword_2339171A0[a3];
      v17 = dword_2339171B4[a3];
      v18 = dword_2339171C8[a3];
      v19 = &unk_2339171DC;
LABEL_7:
      v20 = v19[a3];
      *a4 = v16;
      a4[1] = v17;
      a4[2] = v18;
      a4[3] = v20;
      v21 = 1;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v32 || v33 || v8)
  {
    *a5 = 0x7DE00000BE0;
    if (a3 <= 4)
    {
      v16 = dword_2339171F0[a3];
      v17 = dword_233917204[a3];
      v18 = dword_233917218[a3];
      v19 = &unk_23391722C;
      goto LABEL_7;
    }

    goto LABEL_22;
  }

  if (!v29 && !v30)
  {
    if (v13 || v14 || v15)
    {
      *a5 = 0x99600000CD0;
      if (a3 <= 4)
      {
        v16 = dword_2339172C4[a3];
        v17 = dword_2339172D8[a3];
        v18 = dword_2339172EC[a3];
        v19 = &unk_233917300;
        goto LABEL_7;
      }
    }

    else
    {
      if (!v28 && !v10 && (!v11 || v33))
      {
        if (v12)
        {
          v21 = 0;
          v25 = 0xC5600001080;
        }

        else
        {
          v38 = 0;
          v35 = 0u;
          v36 = 0;
          *(&v35 + 4) = 0xFFFFFD8000000280;
          v37 = xmmword_233916CB0;
          if (v27)
          {
            *a5 = 0xB20000010C0;
            if (a3 < 0xB)
            {
              v16 = dword_233917364[a3];
              v17 = *(&v35 + a3);
              v18 = dword_233917390[a3];
              v19 = &unk_2339173BC;
              goto LABEL_7;
            }

            goto LABEL_22;
          }

          v21 = 0;
          v25 = 0x7DE00000BE0;
        }

        *a5 = v25;
        goto LABEL_23;
      }

      *a5 = 0x7AA00000BBELL;
      if (a3 <= 4)
      {
        v16 = dword_233917314[a3];
        v17 = dword_233917328[a3];
        v18 = dword_23391733C[a3];
        v19 = &unk_233917350;
        goto LABEL_7;
      }
    }

LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  *a5 = 0xA2800000F30;
  v38 = 0;
  v35 = 0u;
  v36 = 0;
  *(&v35 + 4) = 0xFFFFFDD000000230;
  v37 = xmmword_233916CC0;
  v21 = a3 < 0xB;
  if (a3 <= 0xA)
  {
    v22 = *(&v35 + a3);
    v23 = dword_23391726C[a3];
    v24 = dword_233917298[a3];
    *a4 = dword_233917240[a3];
    a4[1] = v22;
    a4[2] = v23;
    a4[3] = v24;
  }

LABEL_23:

  return v21;
}

id sub_2338C5A6C(uint64_t a1, unint64_t a2)
{
  v3 = vdupq_n_s64(a2);
  *v3.i8 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_s64(v3, xmmword_233916CE0), vshlq_s64(v3, xmmword_233916CD0)), vuzp1q_s32(vshlq_s64(v3, xmmword_233916D00), vshlq_s64(v3, xmmword_233916CF0))));
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02X %02X %02X %02X %02X %02X %02X %02X", v3.u8[7], v3.u8[6], v3.u8[5], v3.u8[4], v3.u8[3], v3.u8[2], v3.u8[1], v3.u8[0]];
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v5 = sub_2338E9010(@"nikon");
  v6 = v5;
  v78 = v5;
  if (v5)
  {
    v76 = v4;
    v7 = sub_23378DDE8(v5, v4);
    for (i = 0; ; i = v85 + 1)
    {
      v85 = i;
      if (i >= [v7 count])
      {

        v4 = v76;
        goto LABEL_25;
      }

      v9 = sub_23386EAC4(v7, &v85);
      if ([v9 count] == 5)
      {
        break;
      }

LABEL_21:
    }

    __p[0] = 0;
    v10 = sub_23386E0B8(v9, __p);
    __p[0] = 1;
    v11 = sub_23386EA74(v9, __p);
    __p[0] = 2;
    v12 = sub_23386EA74(v9, __p);
    __p[0] = 3;
    v13 = sub_23386EA74(v9, __p);
    __p[0] = 4;
    v14 = sub_23386EA74(v9, __p);
    if (v10)
    {
      v15 = v14;
      v16 = [v10 UTF8String];
      v17 = strlen(v16);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2337304FC();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v80) = v17;
      if (v17)
      {
        memmove(&__dst, v16, v17);
      }

      v6 = v78;
      *(&__dst + v18) = 0;
      v19 = SHIBYTE(v80);
      if (SHIBYTE(v80) < 0)
      {
        sub_233731FB8(__p, __dst, *(&__dst + 1));
      }

      else
      {
        *__p = __dst;
        v82 = v80;
      }

      *&v83 = v11;
      *(&v83 + 1) = v12;
      *&v84 = v13;
      *(&v84 + 1) = v15;
      v20 = v87;
      if (v87 >= v88)
      {
        v87 = sub_2338BAFB4(&v86, __p);
        if (SHIBYTE(v82) < 0)
        {
          operator delete(__p[0]);
          if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v21 = *__p;
      *(v87 + 16) = v82;
      *v20 = v21;
      __p[1] = 0;
      v82 = 0;
      __p[0] = 0;
      v22 = v84;
      *(v20 + 24) = v83;
      *(v20 + 40) = v22;
      v87 = v20 + 56;
      if (v19 < 0)
      {
LABEL_17:
        operator delete(__dst);
      }
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_25:
  v23 = v86;
  if (v87 - v86 != 56)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v87 - v86) >> 3)) < 2)
    {
      v24 = 0;
      goto LABEL_92;
    }

    v25 = sub_2338B0E5C(a1);
    v26 = sub_2338A9B94(a1);
    v27 = sub_233739994(v26, *MEMORY[0x277CD2F50], 0);

    v28 = sub_233740FAC(v25, *MEMORY[0x277CD3088]);
    v29 = sub_233740FAC(v25, *MEMORY[0x277CD30E8]);
    v30 = sub_23378DDE8(v27, *MEMORY[0x277CD2F70]);
    v32 = v30;
    v33 = 0.0;
    if (v30)
    {
      v34 = 0.0;
      if ([v30 count] == 4)
      {
        __p[0] = 0;
        v34 = sub_23386EA74(v32, __p);
        __p[0] = 1;
        v33 = sub_23386EA74(v32, __p);
        __p[0] = 2;
        sub_23386EA74(v32, __p);
        __p[0] = 3;
        v31 = sub_23386EA74(v32, __p);
      }
    }

    else
    {
      v34 = 0.0;
    }

    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:v31];
    if (v28)
    {
      v77 = v4;
      v74 = v28;
      v72 = v35;
      v73 = v29;
      [v28 doubleValue];
      v37 = v36;
      [v29 doubleValue];
      v39 = exp2(v38 * 0.5);
      v40 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v87 - v86) >> 3));
      v42 = v86;
      if ((0x6DB6DB6DB6DB6DB7 * ((v87 - v86) >> 3)) >= 2)
      {
        v70 = log(v37);
        v43 = 0;
        v44 = 0;
        v45 = 999999999.0;
        v46 = 1;
        v75 = v39;
        while (1)
        {
          v47 = v42 + v43;
          if (*(v42 + v43 + 79) < 0)
          {
            v49 = v45;
            sub_233731FB8(__p, *(v47 + 56), *(v47 + 64));
            v45 = v49;
          }

          else
          {
            v48 = *(v47 + 56);
            v82 = *(v47 + 72);
            *__p = v48;
          }

          v50 = *(v42 + v43 + 80);
          v84 = *(v42 + v43 + 96);
          v83 = v50;
          v51 = v50;
          v52 = *(&v84 + 1);
          v41 = *&v84;
          if ((v34 <= 0.0 || vabdd_f64(v34, *&v83) <= 0.9) && (v33 <= 0.0 || vabdd_f64(v33, *(&v83 + 1)) <= 0.9) && v37 >= *&v83 + -0.9 && v37 <= *(&v83 + 1) + 0.9)
          {
            if (v39 <= 0.0)
            {
              v63 = v45;
LABEL_67:
              if (v82 >= 0)
              {
                v64 = __p;
              }

              else
              {
                v64 = __p[0];
              }

              v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:v64];
              if (v65)
              {
                [v40 addObject:v65];
              }

              v45 = v63;
              goto LABEL_73;
            }

            if (v39 >= *&v84 + -0.15 && v39 <= *(&v84 + 1) + 0.15)
            {
              if (*&v83 != *(&v83 + 1) && *&v84 != *(&v84 + 1))
              {
                v71 = v45;
                v55 = log(*&v84);
                v56 = log(v52) - v55;
                v57 = log(*(&v51 + 1));
                v58 = log(*&v51);
                v59 = v55 + v56 / (v57 - v58) * (v70 - v58);
                v39 = v75;
                v41 = exp(v59);
                v45 = v71;
              }

              v60 = vabdd_f64(v39, v41);
              v41 = v45 + 0.15;
              if (v60 <= v45 + 0.15)
              {
                if (v60 < v45 + -0.15)
                {
                  if (v82 >= 0)
                  {
                    v61 = __p;
                  }

                  else
                  {
                    v61 = __p[0];
                  }

                  v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:v61];

                  v44 = v62;
                }

                v63 = v60;
                v39 = v75;
                goto LABEL_67;
              }

              v39 = v75;
            }
          }

LABEL_73:
          if (SHIBYTE(v82) < 0)
          {
            v66 = v45;
            operator delete(__p[0]);
            v45 = v66;
          }

          ++v46;
          v42 = v86;
          v43 += 56;
          if (v46 >= 0x6DB6DB6DB6DB6DB7 * ((v87 - v86) >> 3))
          {
            goto LABEL_79;
          }
        }
      }

      v44 = 0;
LABEL_79:
      v4 = v77;
      if ([v40 count])
      {
        v24 = [MEMORY[0x277CCAB68] stringWithString:v44];
        for (j = 0; ; j = __p[0] + 1)
        {
          __p[0] = j;
          if (j >= [v40 count])
          {
            break;
          }

          v68 = sub_23386E0B8(v40, __p);
          if ([v24 length])
          {
            if (!v44 || ([v68 isEqualToString:v44] & 1) == 0)
            {
              [v24 appendFormat:@" or %@", v68];
            }
          }

          else
          {
            [v24 appendString:v68];
          }
        }

        v4 = v77;
        v6 = v78;
        v28 = v74;
        v35 = v72;
        v29 = v73;
        goto LABEL_91;
      }

      v6 = v78;
      v28 = v74;
      v35 = v72;
      v29 = v73;
    }

    v24 = v35;
LABEL_91:

    goto LABEL_92;
  }

  if (*(v86 + 23) < 0)
  {
    v23 = *v86;
  }

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
LABEL_92:

  __p[0] = &v86;
  sub_2338BB644(__p);

  return v24;
}

void sub_2338C630C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  __p = (v42 - 176);
  sub_2338BB644(&__p);

  _Unwind_Resume(a1);
}

void sub_2338C64CC(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  if (*(a4 + 4))
  {
    v12 = MEMORY[0x277CCACA8];
    v18 = v11;
    v13 = sub_2338A9B78(a3);
    v14 = [v12 stringWithFormat:@"%@/%@", v18, v13];

    v15 = *(a4 + 8);
    v16 = bswap32(v15);
    if (a6)
    {
      v17 = v16;
    }

    else
    {
      v17 = v15;
    }

    sub_2338ADD58(a1, v14, word_2789F0728, v17, a5, a6);

    v11 = v18;
  }
}

void sub_2338C65D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 4) >= 3u)
  {
    v5 = *(a4 + 8);
    v6 = *(a4 + 9);
    v7 = *(a4 + 10);
    v16 = sub_2338A9B94(a1);
    v8 = v5 * v6;
    if (!v7)
    {
      v8 = -0.0;
    }

    v9 = v7;
    if (!v7)
    {
      v9 = 6.0;
    }

    v10 = v8 / v9;
    if (v10 == 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v10;
    }

    v12 = sub_2338A9BFC(a3);
    v13 = sub_2338A9B78(a3);
    *&v14 = v11;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    sub_2337830C4(v16, v12, v13, v15);
  }
}

void sub_2338C66F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2338C6724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 4);
  if ((v6 - 16385) >= 0xFFFFC00A)
  {
    sub_233726154(&__p, v6);
    v12 = *(a4 + 8);
    v13 = bswap32(v12);
    if (a6)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v15 = sub_2338A9730(a1, __p, v31 - __p, a5, v14);
    v16 = __p;
    if (v15 == v31 - __p)
    {
      v17 = 0;
      v18 = 0;
      do
      {
        v18 = (*(__p + v17++) & 0xF) + 10 * v18;
      }

      while (v17 != 4);
      if ((v18 - 100) <= 5)
      {
        v19 = *(__p + 10);
        if ((v19 / -6.0) == 0.0)
        {
          v20 = 0.0;
        }

        else
        {
          v20 = v19 / -6.0;
        }

        v21 = sub_2338A9B94(a1);
        v22 = sub_2338A9BFC(a3);
        v23 = sub_2338A9B78(a3);
        v24 = sub_2338AE880(v21, v22, v23);

        if (!v24)
        {
          v25 = sub_2338A9B94(a1);
          v26 = sub_2338A9BFC(a3);
          v27 = sub_2338A9B78(a3);
          *&v28 = v20;
          v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
          sub_2337830C4(v25, v26, v27, v29);
        }
      }

      v16 = __p;
    }

    if (v16)
    {
      v31 = v16;
      operator delete(v16);
    }
  }
}

void sub_2338C68E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v15 = v11;

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338C6940(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = sub_2338A9B94(a1);
  v10 = sub_233875D18(v9, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  v12 = 0;
  v13 = 0;
  v29 = 0;
  v28 = 0uLL;
  v14 = *(a4 + 8);
  v15 = *(a4 + 9);
  v16 = bswap32(*(a4 + 10)) >> 16;
  if (a6)
  {
    v17 = v16;
  }

  else
  {
    v17 = *(a4 + 10);
  }

  LODWORD(v18) = 11;
  do
  {
    LODWORD(v11) = sub_2338C5598(v11, v10, v13, &v28, &v29);
    if (v11)
    {
      v18 = v18;
    }

    else
    {
      v18 = v12;
    }

    v13 += v11;
    v12 = v13;
  }

  while (v18 > v13);
  if (v14 > 5)
  {
    v19 = @" UNKNOWN AF Mode";
  }

  else
  {
    v19 = off_2789F0830[v14];
  }

  v20 = sub_2338AC594(a1, v19, v18, sub_2338C6B80);
  v21 = v20;
  if (v20)
  {
    v22 = v20 >= 9 ? v17 : (v17 | HIBYTE(v17)) & 0x7F;
    if ((v15 & 0x80000000) == 0)
    {
      if ((v15 & 0x40) != 0)
      {
        v23 = 1 << v15;
      }

      else
      {
        v23 = 0;
      }

      if ((v15 & 0x40) != 0)
      {
        v24 = 0;
      }

      else
      {
        v24 = 1 << v15;
      }

      if ((v14 & 0xFE) == 2 && sub_2338A818C(v10, @"D2", 1))
      {
        v23 = 0;
        v24 = 0;
      }

      sub_2338B1254(a1, v22, 0, 0);
      v25 = sub_2338B11B8(a1, v24, v23, 0);
      v26 = 0;
      memset(v27, 0, sizeof(v27));
      do
      {
        sub_2338C5598(v25, v10, v26, &v28, &v29);
        sub_2338B44A8(v27, &v28);
        ++v26;
      }

      while (v21 > v26);
      sub_2338B1160(a1, v27, 0);
      sub_2338B1194(a1, &v29, 0);
      sub_2338F884C(v27);
    }
  }
}

id sub_2338C6B80(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (a1)
    {
      a1 = sub_2338C7D74(a1, v3);
    }

    v2 = vars8;
  }

  return a1;
}

void sub_2338C6C04(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  v11 = sub_2338A9B94(a1);
  v12 = sub_233875D18(v11, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  v13 = [MEMORY[0x277CCAB68] stringWithString:v12];
  v58 = 0;
  v14 = sub_2338C70F0(a1);
  v15 = *(a4 + 4);
  if (v15 >= 0xD)
  {
    sub_233726154(&v55, v15);
    v16 = *(a4 + 8);
    v17 = bswap32(v16);
    if (a6)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    v19 = sub_2338A9730(a1, v55, v56 - v55, a5, v18);
    v20 = v55;
    if (v19 != v56 - v55)
    {
      goto LABEL_31;
    }

    v21 = *(v55 + 5);
    v22 = *(v55 + 6);
    v23 = sub_2338C71EC([v13 appendString:@" "], v21);
    [v13 appendString:v23];

    v25 = sub_2338C71EC(v24, v21);
    sub_2338AC594(a1, v25, 0, sub_2338C7210);

    v26 = sub_2338A9B94(a1);
    v27 = *MEMORY[0x277CD2F50];
    v28 = *MEMORY[0x277CD33D8];
    v29 = sub_2338AE880(v26, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8]);

    if (v29)
    {
      v30 = sub_2338A9B94(a1);
      v31 = [MEMORY[0x277CCABB0] numberWithInt:v22 != 0];
      sub_2337830C4(v30, v27, v28, v31);
    }

      ;
    }

    v20 = v55;
    if (i)
    {
      v49 = v10;
      v50 = v12;
      v33 = *(v55 + 7);
      if (*(v55 + 7))
      {
        v34 = 0;
        v35 = 0;
        v36 = (v33 - 1) & 7;
        v37 = ((v33 - v36 + (((v33 - v36) & 0xE000u) >> 13)) >> 3);
        v38 = 1 << v36;
        while (sub_2338B9D7C(v14, v34))
        {
          if (sub_2338B9D7C(v14, v34 + 6) - 48 == v37)
          {
            v39 = sub_2338B9D7C(v14, v34 + 9);
            if (v38 == v39 + 16 * sub_2338B9D7C(v14, v34 + 8) - 816)
            {
              sub_2338B11B8(a1, 1 << v35, 0, 1);
              break;
            }
          }

          v34 += 12;
          ++v35;
        }
      }

      v40 = 0;
      v41 = 0;
      v42 = 0;
      while (1)
      {
        if (!sub_2338B9D7C(v14, v40))
        {
          sub_2338B1254(a1, v42, 0, 1);
          v48 = 0;
          __p = 0;
          v53 = 0;
          v54 = 0;
          v12 = v50;
          do
          {
            v51 = 0uLL;
            sub_2338C49D4(a1, v13, v48, &v51, &v58);
            sub_2338B44A8(&__p, &v51);
            ++v48;
          }

          while (i > v48);
          sub_2338B1160(a1, &__p, 1);
          sub_2338B1194(a1, &v58, 1);
          v10 = v49;
          if (__p)
          {
            v53 = __p;
            operator delete(__p);
          }

          v20 = v55;
          goto LABEL_31;
        }

        v43 = sub_2338B9D7C(v14, v40 + 6);
        v44 = sub_2338B9D7C(v14, v40 + 9);
        v45 = sub_2338B9D7C(v14, v40 + 8);
        v46 = (v43 - 40);
        v20 = v55;
        if (v46 >= v56 - v55)
        {
          break;
        }

        if (((v44 + 16 * v45 + 208) & *(v55 + v46)) != 0)
        {
          v47 = 1 << v41;
        }

        else
        {
          v47 = 0;
        }

        v42 |= v47;
        v40 += 12;
        ++v41;
      }

      v10 = v49;
      v12 = v50;
      if (v55)
      {
        goto LABEL_32;
      }
    }

    else
    {
LABEL_31:
      if (v20)
      {
LABEL_32:
        v56 = v20;
        operator delete(v20);
      }
    }
  }
}

void sub_2338C7028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_2338C70F0(uint64_t a1)
{
  v1 = sub_2338A9B94(a1);
  v2 = sub_233875D18(v1, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  if (sub_2338A818C(v2, @"D7000", 1) || sub_2338A818C(v2, @"D600", 1))
  {
    v3 = @"A01 = 1 10  A02 = 0 04  A03 = 0 80  B01 = 4 20  B02 = 4 04  B03 = 3 80  B04 = 3 10  B05 = 1 08  B06 = 0 02  B07 = 0 40  B08 = 2 01  B09 = 2 08  B10 = 2 40  B11 = 3 02  C01 = 4 10  C02 = 4 02  C03 = 3 40  C04 = 3 08  C05 = 1 04  C06 = 0 01  C07 = 0 20  C08 = 1 80  C09 = 2 04  C10 = 2 20  C11 = 3 01  D01 = 4 40  D02 = 4 08  D03 = 4 01  D04 = 3 20  D05 = 1 20  D06 = 0 08  D07 = 1 01  D08 = 2 02  D09 = 2 10  D10 = 2 80  D11 = 3 04  E01 = 1 40  E02 = 0 10  E03 = 1 02  ";
  }

  else
  {
    v3 = @"A01 = 1 10  A02 = 0 04  A03 = 0 80  B01 = 4 20  B02 = 4 04  B03 = 3 80  B04 = 3 10  B05 = 1 08  B06 = 0 02  B07 = 0 40  B08 = 2 01  B09 = 2 08  B10 = 2 40  B11 = 3 02  C01 = 4 10  C02 = 4 02  C03 = 3 40  C04 = 3 08  C05 = 1 04  C06 = 0 01  C07 = 0 20  C08 = 1 80  C09 = 2 04  C10 = 2 20  C11 = 3 01  D01 = 4 40  D02 = 4 08  D03 = 4 01  D04 = 3 20  D05 = 1 20  D06 = 0 08  D07 = 1 01  D08 = 2 02  D09 = 2 10  D10 = 2 80  D11 = 3 04  E01 = 1 40  E02 = 0 10  E03 = 1 02  ";
    if (!sub_2338A818C(v2, @"D5200", 1) && !sub_2338A818C(v2, @"D5300", 1))
    {
      v3 = @"A01 = 5 20  A02 = 5 01  A03 = 4 08  A04 = 1 10  A05 = 0 04  A06 = 0 80  A07 = 2 02  A08 = 2 40  A09 = 3 08  B01 = 6 02  B02 = 5 10  B03 = 4 80  B04 = 4 04  B05 = 1 08  B06 = 0 02  B07 = 0 40  B08 = 2 01  B09 = 2 20  B10 = 3 04  B11 = 3 80  C01 = 6 01  C02 = 5 08  C03 = 4 40  C04 = 4 02  C05 = 1 04  C06 = 0 01  C07 = 0 20  C08 = 1 80  C09 = 2 10  C10 = 3 02  C11 = 3 40  D01 = 6 04  D02 = 5 40  D03 = 5 02  D04 = 4 10  D05 = 1 20  D06 = 0 08  D07 = 1 01  D08 = 2 04  D09 = 2 80  D10 = 3 10  D11 = 4 01  E01 = 5 80  E02 = 5 04  E03 = 4 20  E04 = 1 40  E05 = 0 10  E06 = 1 02  E07 = 2 08  E08 = 3 01  E09 = 3 20  ";
    }
  }

  return v3;
}

__CFString *sub_2338C71EC(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xC)
  {
    return @" UNKNOWN AF Mode";
  }

  else
  {
    return off_2789F0860[a2];
  }
}

id sub_2338C7210(void *a1, unsigned int a2)
{
  if (a1)
  {
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284933250, 0);
    if (a1)
    {
      a1 = sub_2338C5504(a1, a2);
    }

    v2 = vars8;
  }

  return a1;
}

void sub_2338C7294(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  v11 = *(a4 + 4);
  if (v11 <= 0x4000)
  {
    sub_233726154(&v31, v11);
    v12 = *(a4 + 8);
    v13 = bswap32(v12);
    if (a6)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    v15 = sub_2338A9730(a1, v31, &v32[-v31], a5, v14);
    v16 = v31;
    if (v15 == &v32[-v31])
    {
      v17 = *(a4 + 4);
      if (v17 >= 0x2D)
      {
        v18 = v31 + v17;
        v19 = (v31 + 44);
        v20 = (v31 + 22);
        v21 = *MEMORY[0x277CD3490];
        v22 = *MEMORY[0x277CD34B8];
        do
        {
          v23 = *(v20 + 18);
          v24 = v23 - 4;
          if (v23 >= 4 && v23 < *(a4 + 4))
          {
            break;
          }

          v26 = v19 + v24;
          if (v19 + v24 > v18)
          {
            break;
          }

          if (*v20 == 1990472199)
          {
            v27 = *v19 + 360 - 360 * ((11930465 * (*v19 + 360)) >> 32);
            if (v27 == 90 || v27 == 270 || v27 == 180)
            {
              if (v27 == 90)
              {
                v28 = 6;
              }

              else if (v27 == 180)
              {
                v28 = 3;
              }

              else
              {
                v28 = 8;
              }

              v29 = sub_2338A9B94(a1);
              v30 = [MEMORY[0x277CCABB0] numberWithShort:v28];
              sub_2337830C4(v29, v21, v22, v30);
            }
          }

          v19 = (v26 + 22);
          v20 = v26;
        }

        while ((v26 + 22) < v18);
        v16 = v31;
      }
    }

    if (v16)
    {
      v32 = v16;
      operator delete(v16);
    }
  }
}

void sub_2338C7470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338C74C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = a2;
  v10 = *(a4 + 4);
  if ((v10 - 1) > 1)
  {
    goto LABEL_51;
  }

  LODWORD(v11) = *(a4 + 8);
  v12 = bswap32(v11) >> 16;
  if (a6)
  {
    LOWORD(v11) = v12;
  }

  v13 = v11;
  if (v11)
  {
    v11 = v11;
  }

  else
  {
    v11 = -1;
  }

  if (v10 == 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = -1;
  }

  if (v10 == 1)
  {
    v15 = v11;
  }

  else
  {
    v15 = -1;
  }

  if (v10 == 2)
  {
    v16 = *(a4 + 10);
    v17 = bswap32(v16) >> 16;
    if (a6)
    {
      LOWORD(v16) = v17;
    }

    v18 = v13 >= 2u || v16 == 0;
    v14 = v16;
    if (v18)
    {
      v15 = -1;
    }

    else
    {
      v15 = v16;
    }
  }

  else
  {
    v13 = -1;
  }

  v19 = v14 == 6400 || v14 == 0;
  v20 = MEMORY[0x277CD33C8];
  if (v19)
  {
    v21 = sub_2338A9B94(a1);
    v22 = sub_233875D18(v21, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

    if (sub_2338A818C(v22, @"P7000", 1))
    {
      v23 = sub_2338B0E5C(a1);
      v24 = *MEMORY[0x277CD30B0];
      v25 = sub_23378DDE8(v23, *MEMORY[0x277CD30B0]);

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v25 count])
        {
          v45 = 0;
          if (!sub_23386EA2C(v25, &v45))
          {
            if (!v14)
            {
              v14 = 6400;
            }

            v26 = sub_2338ADA50(a1, 0);
            [v26 removeObjectForKey:v24];

            v15 = v14;
          }
        }
      }
    }

    goto LABEL_38;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
LABEL_38:
    v27 = sub_2338A9B94(a1);
    sub_2338AE980(v27, *v20, *MEMORY[0x277CD33E0]);

    v28 = 1;
    goto LABEL_39;
  }

  v28 = 0;
  v14 = 0xFFFFFFFFLL;
LABEL_39:
  if (v15 >= 1)
  {
    v29 = sub_2338ADA50(a1, 0);
    v30 = *MEMORY[0x277CD30B0];
    v31 = sub_233739ACC(v29, *MEMORY[0x277CD30B0]);

    if (!v31)
    {
      v32 = sub_2338ADA50(a1, 1);
      v33 = sub_2337E2674(v32, v30);
      v34 = [MEMORY[0x277CCABB0] numberWithInt:v15];
      [v33 addObject:v34];
    }
  }

  v35 = sub_2338A9B94(a1);
  v36 = *v20;
  v37 = *MEMORY[0x277CD33E0];
  v38 = sub_2338AE880(v35, *v20, *MEMORY[0x277CD33E0]);

  if (!v38)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      v39 = sub_2338A9B94(a1);
      v40 = sub_2338BE594(v39, v36, v37);

      if (v40)
      {
        v41 = [MEMORY[0x277CCABB0] numberWithInt:v13];
        [v40 addObject:v41];
      }
    }

    if (v28)
    {
      v42 = sub_2338A9B94(a1);
      v43 = sub_2338BE594(v42, v36, v37);

      if (v43)
      {
        v44 = [MEMORY[0x277CCABB0] numberWithInt:v14];
        [v43 addObject:v44];
      }
    }
  }

LABEL_51:
}

void sub_2338C7910(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  v11 = *(a4 + 4);
  if (v11 < 4)
  {
    goto LABEL_54;
  }

  v12 = *(a4 + 8);
  v13 = bswap32(v12);
  if (a6)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v38 = 0;
  if (sub_2338A9730(a1, &v38, 1, a5, v14) != 1)
  {
    v18 = -1;
    v19 = -1;
    goto LABEL_45;
  }

  v15 = 1.0;
  v16 = v38;
  while (1)
  {
    while (1)
    {
      while (v16 > 0x43u)
      {
        if (v16 > 0x7Bu)
        {
          if (v16 == 124)
          {
            v16 = 0;
            v17 = 4000.0;
            goto LABEL_25;
          }

          if (v16 != 140)
          {
            goto LABEL_28;
          }

          v16 = 0;
          v15 = v15 * 10000.0;
          v38 = 0;
        }

        else
        {
          if (v16 == 68)
          {
            v16 = 0;
            v17 = 160.0;
          }

          else
          {
            if (v16 != 72)
            {
              goto LABEL_28;
            }

            v16 = 0;
            v17 = 200.0;
          }

LABEL_25:
          v15 = v15 * v17;
          v38 = 0;
        }
      }

      if (v16 > 0x3Bu)
      {
        if (v16 == 60)
        {
          v16 = 0;
          v17 = 100.0;
        }

        else
        {
          if (v16 != 64)
          {
            goto LABEL_28;
          }

          v16 = 0;
          v17 = 125.0;
        }

        goto LABEL_25;
      }

      if (v16 != 36)
      {
        break;
      }

      v16 = 0;
      v15 = v15 * 25.0;
      v38 = 0;
    }

    if (v16 == 48)
    {
      v16 = 0;
      v17 = 50.0;
      goto LABEL_25;
    }

    if (!v16)
    {
      break;
    }

LABEL_28:
    if (v16 < 0x49u)
    {
      if (v16 > 0x23u)
      {
        v15 = v15 * 1.0595;
        v38 = --v16;
      }

      else
      {
        v16 += 12;
        v38 = v16;
        v15 = v15 * 0.5;
      }
    }

    else
    {
      v16 -= 12;
      v38 = v16;
      v15 = v15 + v15;
    }
  }

  if ((v11 & 0xFFFE) >= 6 && (v37 = 0, sub_2338A9730(a1, &v37, 2, a5, (v14 + 4)) == 2))
  {
    v20 = v37;
    if (a6)
    {
      v20 = v37 << 8;
    }

    if ((v20 & 0x300) == 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }
  }

  else
  {
    v19 = -1;
  }

  v18 = llroundf(v15);
  if (v18 >= 1)
  {
    v21 = sub_2338ADA50(a1, 0);
    v22 = *MEMORY[0x277CD30B0];
    v23 = sub_233739ACC(v21, *MEMORY[0x277CD30B0]);

    if (!v23)
    {
      v24 = sub_2338ADA50(a1, 1);
      v25 = sub_2337E2674(v24, v22);
      v26 = [MEMORY[0x277CCABB0] numberWithInt:v18];
      [v25 addObject:v26];
    }
  }

LABEL_45:
  v27 = sub_2338A9B94(a1);
  v28 = *MEMORY[0x277CD33C8];
  v29 = *MEMORY[0x277CD33E0];
  v30 = sub_2338AE880(v27, *MEMORY[0x277CD33C8], *MEMORY[0x277CD33E0]);

  if (!v30)
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      v31 = sub_2338A9B94(a1);
      v32 = sub_2338BE594(v31, v28, v29);

      if (v32)
      {
        v33 = [MEMORY[0x277CCABB0] numberWithInt:v19];
        [v32 addObject:v33];
      }
    }

    if ((v18 & 0x8000000000000000) == 0)
    {
      v34 = sub_2338A9B94(a1);
      v35 = sub_2338BE594(v34, v28, v29);

      if (v35)
      {
        v36 = [MEMORY[0x277CCABB0] numberWithInt:v18];
        [v35 addObject:v36];
      }
    }
  }

LABEL_54:
}

__CFString *sub_2338C7D74(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xA)
  {
    return 0;
  }

  else
  {
    return off_2789F08C8[a2];
  }
}

void *sub_2338C7E30(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284933278;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284933180;
  return a1;
}

void sub_2338C7ED0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284933278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338C7F6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_2849332C8;
  v5[6] = 0;
  v6 = (v5 + 6);
  v5[7] = 0;
  v5[8] = 0;
  *(a1 + 12) = sub_233725614(*a3);
  *(a1 + 16) = sub_233725614(*a3);
  *(a1 + 20) = sub_233725614(*a3);
  *(a1 + 24) = sub_233725614(*a3);
  *(a1 + 28) = sub_233725614(*a3);
  *(a1 + 32) = sub_233725614(*a3);
  *(a1 + 36) = sub_233725614(*a3);
  *(a1 + 40) = sub_233725614(*a3);
  for (i = sub_233725614(*a3); i; --i)
  {
    v8 = sub_2337255C0(*a3);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = v10 - *v6;
      v14 = v13 >> 1;
      if (v13 >> 1 <= -2)
      {
        sub_2337235BC();
      }

      v15 = v9 - v12;
      if (v15 <= v14 + 1)
      {
        v16 = v14 + 1;
      }

      else
      {
        v16 = v15;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        sub_2337262C8(v6, v17);
      }

      *(2 * v14) = v8;
      v11 = 2 * v14 + 2;
      memcpy(0, v12, v13);
      v18 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(a1 + 56) = v11;
      *(a1 + 64) = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 2);
    }

    *(a1 + 56) = v11;
  }

  return a1;
}

void sub_2338C8110(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

RAWOpcodeMapTable *sub_2338C813C(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 12)];
  [v2 setObject:v3 forKeyedSubscript:@"Top"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 16)];
  [v2 setObject:v4 forKeyedSubscript:@"Left"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 20)];
  [v2 setObject:v5 forKeyedSubscript:@"Bottom"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 24)];
  [v2 setObject:v6 forKeyedSubscript:@"mRight"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 28)];
  [v2 setObject:v7 forKeyedSubscript:@"Plane"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  [v2 setObject:v8 forKeyedSubscript:@"Planes"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 36)];
  [v2 setObject:v9 forKeyedSubscript:@"RowPitch"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 40)];
  [v2 setObject:v10 forKeyedSubscript:@"ColPitch"];

  v11 = [MEMORY[0x277CBEB18] array];
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  while (v12 != v13)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v12];
    [v11 addObject:v14];

    ++v12;
  }

  [v2 setObject:v11 forKeyedSubscript:@"Table"];
  v15 = [[RAWOpcodeMapTable alloc] initWithArguments:v2];

  return v15;
}

void *sub_2338C83CC(void *a1)
{
  *a1 = &unk_2849332C8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2338C841C(void *a1)
{
  *a1 = &unk_2849332C8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_2338C849C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CA6A0(v11, v12, a3, a4, a5, v6);
    }
  }
}

void sub_2338C857C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CBE5C(v11, v12, a3, a4, a5, v6);
    }
  }
}

void sub_2338C865C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v10)
    {
      sub_2338CB19C(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C872C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v10)
    {
      sub_2338CB274(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C87FC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v10)
    {
      sub_2338CB34C(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338C88CC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CA888(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C89A8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v10)
    {
      sub_2338CB068(v10, v11, a3, a4, v12, a6);
    }
  }
}

void sub_2338C8A74(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CB9C4(v11, v12, a3, a4, a5, v6);
    }
  }
}

void sub_2338C8B54(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CBC94(v11, v12, a3, a4, a5, v6);
    }
  }
}

void sub_2338C8C34(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CB424(v11, v12, a3, a4, a5, v6);
    }
  }
}

void sub_2338C8D14(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CAD58(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C8DF4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CC034(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338C8ED0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v9)
    {
      sub_2338CB50C(v9, v12, v10, a4, v11, a6);
    }
  }
}

void sub_2338C8F98(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (v11)
    {
      sub_2338CA590(v11, v12, a3, a4, a5, a6);
    }
  }
}

BOOL sub_2338C9074(uint64_t *a1)
{
  v4 = 0;
  sub_233725F08(v5, a1, &v4, 0);
  v4 = 0;
  v2 = (*(**a1 + 32))(*a1, &v4, 4) == 4 && sub_2338FFE88(&v4, 4uLL);
  sub_233725FD4(v5);
  return v2;
}

void sub_2338C9114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338C912C(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338CC1A0();
}

uint64_t sub_2338C91C0(uint64_t a1, int a2)
{
  v3 = sub_2338AF450(a1, a2);
  v4 = a2 == 21330 || v3;
  if (a2 == 20306)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void sub_2338C9208(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9C18(a1);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/%@", *MEMORY[0x277CD34B8]];
  v8 = sub_233740FAC(v6, v7);

  v29 = v8;
  v9 = [v8 intValue];
  if ((v9 - 9) >= 0xFFFFFFF8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v8)
  {
    v10 = v9;
  }

  v27 = v10;
  v11 = sub_2338A9C18(a1);
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/OlympusCameraSettings/%@", @"PreviewImageValid"];
  v13 = sub_233740FAC(v11, v12);

  v14 = sub_2338A9C18(a1);
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/OlympusCameraSettings/%@", @"PreviewImageOffset"];
  v16 = sub_233740FAC(v14, v15);

  v28 = v16;
  v17 = sub_2338A9C18(a1);
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/OlympusCameraSettings/%@", @"PreviewImageLength"];
  v19 = sub_233740FAC(v17, v18);

  v20 = sub_2338A9C18(a1);
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/%@/Offset", @"JPEGThumbnail"];
  v22 = sub_233740FAC(v20, v21);

  v23 = sub_2338A9C18(a1);
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/%@/Length", @"JPEGThumbnail"];
  v25 = sub_233740FAC(v23, v24);

  memset(v36, 0, sizeof(v36));
  sub_2338B0B1C(a1, a2, &v35);
  if (v13 && [v13 intValue] && v28 && v19)
  {
    LODWORD(v31) = [v28 intValue];
    v32 = [v19 intValue];
    sub_233726998(&v33, &v32);
    v26 = sub_2338A820C(a1, &v31, &v33, v27, &v34);
    if (!v22)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v34 = 0uLL;
    if (!v22)
    {
      goto LABEL_15;
    }
  }

  if (v25)
  {
    v33 = [v22 intValue];
    v30 = [v25 intValue];
    sub_233726998(&v32, &v30);
    sub_2338A820C(a1, &v33, &v32, v27, &v31);
    goto LABEL_16;
  }

LABEL_15:
  v31 = 0uLL;
LABEL_16:
  if (v35)
  {
    sub_233753C74(v36, &v35);
  }

  if (v34)
  {
    sub_233753C74(v36, &v34);
  }

  if (v31)
  {
    sub_233753C74(v36, &v31);
  }

  sub_2338A86B8(v36, a2, a3);
  if (*(&v31 + 1))
  {
    sub_2337239E8(*(&v31 + 1));
  }

  if (*(&v34 + 1))
  {
    sub_2337239E8(*(&v34 + 1));
  }

  if (*(&v35 + 1))
  {
    sub_2337239E8(*(&v35 + 1));
  }

  *&v35 = v36;
  sub_233723948(&v35);
}

void sub_2338C95C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, std::__shared_weak_count *a21, char a22)
{
  if (a21)
  {
    sub_2337239E8(a21);
  }

  a20 = &a22;
  sub_233723948(&a20);

  _Unwind_Resume(a1);
}

void sub_2338C9704(uint64_t a1)
{
  sub_2338C99CC(a1, *MEMORY[0x277CD3018]);
  sub_2338C99CC(a1, *MEMORY[0x277CD3128]);
  sub_2338C99CC(a1, *MEMORY[0x277CD3150]);
  v2 = sub_2338A9B94(a1);
  v3 = sub_2338AE7EC(v2, @"{PictStyleSetting}", @"PictureStyle");

  if ([v3 count])
  {
    v21 = 0;
    v4 = sub_23386EA2C(v3, &v21);
    v5 = v4;
    v6 = @"Portrait";
    v7 = @"Monotone";
    v8 = @"Sepia";
    if (v4 != 512)
    {
      v8 = 0;
    }

    if (v4 != 256)
    {
      v7 = v8;
    }

    if (v4 != 4)
    {
      v6 = v7;
    }

    v9 = @"Vivid";
    v10 = @"Natural";
    v11 = @"Muted";
    if (v4 != 3)
    {
      v11 = 0;
    }

    if (v4 != 2)
    {
      v10 = v11;
    }

    if (v4 != 1)
    {
      v9 = v10;
    }

    if (v4 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v12, v4, v4);
    v14 = v5 == 512 || v5 == 256;
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_2338A9B94(a1);
  v16 = sub_233739994(v15, @"{PictStyleSetting}", 0);

  if (sub_233739ACC(v16, @"ColorTone"))
  {
    v17 = sub_2337397B0(v16, @"ColorTone");
    if (v17 > 5)
    {
      v18 = 0;
    }

    else
    {
      v18 = off_2789F0948[v17];
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"ColorTone", v18, v17, v17);
  }

  if (sub_233739ACC(v16, @"FilterEffect"))
  {
    v19 = sub_2337397B0(v16, @"FilterEffect");
    if (v19 > 5)
    {
      v20 = 0;
    }

    else
    {
      v20 = off_2789F0978[v19];
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"FilterEffect", v20, v19, v19);
  }

  sub_2338ACF60(a1, @"Monochrome", v14);
}

void sub_2338C99CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_2338A9B94(a1);
  v5 = sub_2338AE7EC(v4, @"{PictStyleNormalized}", v3);

  v6 = sub_2338A9B94(a1);
  v7 = sub_2338AE7EC(v6, @"{PictStyleSetting}", v3);

  if (v5)
  {
    v8 = [v5 count] > 2;
    if (v7)
    {
LABEL_3:
      v9 = [v7 count] > 1;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = 0.0;
  if (v8)
  {
    v15 = 2;
    v10 = sub_2338C9B8C(v5, &v15);
  }

  if (v9)
  {
    v15 = 1;
    v11 = sub_2338C9B8C(v7, &v15);
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
    v11 = v10;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8 && !v9)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  if (v8)
  {
    v14 = v10;
  }

  else
  {
    v14 = v11;
  }

  sub_2338AD018(a1, @"{PictureStyle}", v3, 0, v13, v14);
LABEL_18:
}

float sub_2338C9B8C(void *a1, void *a2)
{
  v2 = sub_23386F6F4(a1, a2);
  [v2 floatValue];
  v4 = v3;

  return v4;
}

void sub_2338C9BDC(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v4 = sub_233875D18(v2, *MEMORY[0x277CD3038], @"LensModel");

  if (v4)
  {
    v3 = sub_2338A9B94(a1);
    sub_2338AE980(v3, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F78]);
  }

  sub_2338AF5B0(a1);
}

uint64_t sub_2338C9CB8(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v18 = 0;
  v19[0] = 0;
  *(v19 + 5) = 0;
  if (sub_2338A9730(a1, &v18, 20, a5, a3) == 20)
  {
    if (v18 == 1297697871 && WORD2(v18) == 80)
    {
      if ((a7 & 1) == 0)
      {
        v15 = a3 + 8;
        v14 = &unk_284933ED0;
        goto LABEL_11;
      }
    }

    else if (v18 == 0x5355504D594C4FLL)
    {
      a5 += a3;
      v14 = &unk_284933FC0;
      v15 = 12;
LABEL_11:
      sub_2338ADD58(a1, v12, v14, v15, a5, a6);
      (*(*a1 + 160))(a1);
      v16 = 1;
      goto LABEL_12;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

uint64_t sub_2338C9E24(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD3000];
  v4 = sub_2338AE880(v2, @"{PictStyleSetting}", *MEMORY[0x277CD3000]);

  if (v4)
  {
    v5 = sub_2338A9B94(a1);
    v6 = sub_2338AE900(v5, @"{PictStyleSetting}", v3);

    if (v6 < 0x100)
    {
      return v6 + 1;
    }

    else
    {
      return 0xFFFFLL;
    }
  }

  else
  {
    v8 = sub_2338B0E5C(a1);
    v9 = sub_233739ACC(v8, v3);

    if (v9)
    {
      v10 = sub_2338B0E5C(a1);
      v7 = sub_2337397B0(v10, v3);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

void sub_2338C9F30(uint64_t a1)
{
  sub_2338C9704(a1);
  v2 = sub_2338A9B94(a1);
  v9 = sub_233739994(v2, @"{PictureStyle}", 0);

  if (v9)
  {
    v3 = sub_2338A9B94(a1);
    v4 = sub_2338AE880(v3, @"{PictureStyle}", @"Monochrome");

    if (!v4)
    {
      sub_2338ACF60(a1, @"Monochrome", 0);
    }

    v5 = (*(*a1 + 96))(a1);
    if ((v5 & 0x80000000) == 0)
    {
      v6 = sub_2338AD1AC(a1, v5);
      sub_2338AD018(a1, @"{PictureStyle}", @"PictStyleColorSpace", v6, v5, v5);
    }
  }

  v7 = sub_2338A9B94(a1);
  [v7 removeObjectForKey:@"{PictStyleSetting}"];

  v8 = sub_2338A9B94(a1);
  [v8 removeObjectForKey:@"{PictStyleNormalized}"];
}

uint64_t sub_2338CA100(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = MEMORY[0x277CCAB68];
    v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v5 = [(__CFString *)v2 stringByTrimmingCharactersInSet:v4];
    v6 = [v3 stringWithString:v5];

    if ([v6 isEqualToString:@"XZ-1"])
    {
      v7 = 10001;
    }

    else if ([v6 isEqualToString:@"E-P1"])
    {
      v7 = 10002;
    }

    else if ([v6 isEqualToString:@"E-P2"])
    {
      v7 = 10004;
    }

    else if ([v6 isEqualToString:@"E-PL1"])
    {
      v7 = 10003;
    }

    else if ([v6 isEqualToString:@"E-PL2"])
    {
      v7 = 10005;
    }

    else
    {
      if (!CFStringGetCString(v2, buffer, 256, 0x8000100u))
      {
        goto LABEL_28;
      }

      v8 = strcasestr(buffer, "C");
      v9 = v8;
      if (v8)
      {
        v10 = strcasestr(v8 + 1, "C");
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }

        v9 = v11 + 1;
      }

      v12 = strcasestr(buffer, "E-");
      v13 = v12 ? v12 + 2 : v9;
      if (v13 && (v14 = *v13, v14 >= 48))
      {
        v15 = 0;
        v7 = 0;
        v16 = v13 + 1;
        do
        {
          if (v15 > 4)
          {
            break;
          }

          if (v14 > 0x39u)
          {
            break;
          }

          v17 = v14 - 48;
          v14 = v16[v15++];
          v7 = 10 * v7 + v17;
        }

        while (v14 > 47);
      }

      else
      {
LABEL_28:
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_2338CA36C(uint64_t a1, int a2, unsigned int a3, uint64_t a4, void *a5)
{
  result = 0;
  v20 = *MEMORY[0x277D85DE8];
  if (a2 > 409)
  {
    if (a2 > 509)
    {
      if (a2 == 510)
      {
        goto LABEL_22;
      }

      if (a2 == 620)
      {
        result = 0;
        *a5 = 0x10000000100;
        return result;
      }

      if (a2 != 520)
      {
        return result;
      }
    }

    else
    {
      if (a2 == 410)
      {
        goto LABEL_22;
      }

      if (a2 != 420)
      {
        if (a2 == 500)
        {
          goto LABEL_22;
        }

        return result;
      }
    }

    *a5 = 0x10000000100;
    v15 = 0;
    *v16 = 0;
    if (a3 < 4)
    {
      v8 = v15.i32[a3];
      *a4 = dword_233917700[a3];
      *(a4 + 4) = v8;
      v9 = 0x2B00000020;
LABEL_29:
      *(a4 + 8) = v9;
      return 1;
    }

    return 0;
  }

  if (a2 <= 299)
  {
    if (a2 != 1)
    {
      if (a2 == 3)
      {
        *a5 = 0xAB000000E40;
        if (a3 <= 0xA)
        {
          v17 = 0;
          *&v16[4] = 0u;
          v15 = vdup_n_s32(0x221u);
          *v16 = 545;
          v6 = -545;
          v18 = vdup_n_s32(0xFFFFFDDF);
          v7 = &unk_233917740;
          goto LABEL_28;
        }
      }

      else
      {
        if (a2 != 5)
        {
          return result;
        }

        *a5 = 0xBD000000FC0;
        if (a3 <= 0xA)
        {
          v17 = 0;
          *&v16[4] = 0u;
          v15 = vdup_n_s32(0x25Du);
          *v16 = 605;
          v6 = -605;
          v18 = vdup_n_s32(0xFFFFFDA3);
          v7 = &unk_23391776C;
LABEL_28:
          v19 = v6;
          v13 = v7[a3];
          v14 = v15.i32[a3];
          *a4 = v13;
          *(a4 + 4) = v14;
          v9 = 0x900000006CLL;
          goto LABEL_29;
        }
      }

      return 0;
    }

LABEL_22:
    *a5 = 0x79E00000A30;
    v15 = 0;
    *v16 = 0;
    if (a3 < 4)
    {
      v10 = v15.i32[a3];
      v11 = dword_233917720[a3];
      v12 = dword_233917730[a3];
      *a4 = dword_233917710[a3];
      *(a4 + 4) = v10;
      *(a4 + 8) = v11;
      *(a4 + 12) = v12;
      return 1;
    }

    return 0;
  }

  if (a2 == 300 || a2 == 330 || a2 == 400)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_2338CA590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = 0;
  if (*(a4 + 4) >= 0x2Du)
  {
    v8 = *(a4 + 8);
    v9 = bswap32(v8);
    if (a6)
    {
      v8 = v9;
    }

    if (sub_2338A9730(a1, &v15, 1, a5, v8 + 44))
    {
      v10 = v15;
      if (v15 <= 3u)
      {
        v11 = sub_2338A9B94(a1);
        v12 = sub_2338A9BFC(a3);
        v13 = sub_2338A9B78(a3);
        v14 = [MEMORY[0x277CCABB0] numberWithInt:v10];
        sub_2337830C4(v11, v12, v13, v14);
      }
    }
  }
}

void sub_2338CA678(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2338CA6A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v23 = a2;
  v11 = MEMORY[0x277CCACA8];
  v12 = sub_2338A9B78(a3);
  v13 = [v11 stringWithFormat:@"%@/%@/%@", v23, v12, @"Offset"];

  v14 = MEMORY[0x277CCACA8];
  v15 = sub_2338A9B78(a3);
  v16 = [v14 stringWithFormat:@"%@/%@/%@", v23, v15, @"Length"];

  LODWORD(v17) = *(a4 + 8);
  v18 = bswap32(v17);
  if (a6)
  {
    v17 = v18;
  }

  else
  {
    v17 = v17;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:v17 + a5];
  v20 = sub_2338A9C18(a1);
  [v20 setObject:v19 forKeyedSubscript:v13];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a4 + 4)];
  v22 = sub_2338A9C18(a1);
  [v22 setObject:v21 forKeyedSubscript:v16];
}

void sub_2338CA888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) == 6)
  {
    v14 = 0;
    v13 = 0;
    LODWORD(v8) = *(a4 + 8);
    v9 = bswap32(v8);
    v8 = a6 ? v9 : v8;
    if (sub_2338A9730(a1, &v13, 6, a5, v8) == 6)
    {
      v10 = sub_2338CA98C(6, (v13 << 16) | (BYTE2(v13) << 8) | HIBYTE(v13));
      if (v10)
      {
        v11 = sub_2338A9B94(a1);
        v12 = sub_2338A9BFC(a3);
        sub_2337830C4(v11, v12, *MEMORY[0x277CD2F78], v10);
      }
    }
  }
}

id sub_2338CA98C(uint64_t a1, int a2)
{
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%1X %02X %02X", BYTE2(a2), BYTE1(a2), a2];
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v2 = sub_2338E9010(@"olympus");
  v3 = v2;
  if (!v2)
  {
    goto LABEL_25;
  }

  v4 = sub_23378DDE8(v2, v22);
  for (i = 0; ; i = v29 + 1)
  {
    v29 = i;
    if (i >= [v4 count])
    {
      break;
    }

    v6 = sub_23386EAC4(v4, &v29);
    if ([v6 count] != 5)
    {
      goto LABEL_21;
    }

    __p[0] = 0;
    v7 = sub_23386E0B8(v6, __p);
    __p[0] = 1;
    v8 = sub_23386EA74(v6, __p);
    __p[0] = 2;
    v9 = sub_23386EA74(v6, __p);
    __p[0] = 3;
    v10 = sub_23386EA74(v6, __p);
    __p[0] = 4;
    v11 = sub_23386EA74(v6, __p);
    if (v7)
    {
      v12 = v11;
      v13 = [v7 UTF8String];
      v14 = strlen(v13);
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2337304FC();
      }

      v15 = v14;
      if (v14 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v24) = v14;
      if (v14)
      {
        memmove(&__dst, v13, v14);
      }

      *(&__dst + v15) = 0;
      v16 = SHIBYTE(v24);
      if (SHIBYTE(v24) < 0)
      {
        sub_233731FB8(__p, __dst, *(&__dst + 1));
      }

      else
      {
        *__p = __dst;
        v26 = v24;
      }

      *&v27 = v8;
      *(&v27 + 1) = v9;
      *&v28 = v10;
      *(&v28 + 1) = v12;
      v17 = v31;
      if (v31 >= v32)
      {
        v31 = sub_2338BAFB4(&v30, __p);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(__p[0]);
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else if ((v16 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_17:
        operator delete(__dst);
        goto LABEL_20;
      }

      v18 = *__p;
      *(v31 + 16) = v26;
      *v17 = v18;
      __p[1] = 0;
      v26 = 0;
      __p[0] = 0;
      v19 = v28;
      *(v17 + 24) = v27;
      *(v17 + 40) = v19;
      v31 = v17 + 56;
      if (v16 < 0)
      {
        goto LABEL_17;
      }
    }

LABEL_20:

LABEL_21:
  }

LABEL_25:
  if (v31 == v30)
  {
    v20 = 0;
  }

  else
  {
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  __p[0] = &v30;
  sub_2338BB644(__p);

  return v20;
}

void sub_2338CACB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  __p = &a28;
  sub_2338BB644(&__p);

  _Unwind_Resume(a1);
}

void sub_2338CAD58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a2;
  if (!*(a4 + 4))
  {
    goto LABEL_18;
  }

  v11 = sub_2338A9B94(a1);
  v12 = sub_2338A9BFC(a3);
  v13 = sub_233739994(v11, v12, 0);

  sub_2338AA0D0(a1, v31, a3, a4, a5, a6);
  v14 = sub_2338A9B78(a3);
  v15 = sub_233740FAC(v13, v14);

  v16 = v15 != 0;
  if (v15)
  {
    v17 = [v15 intValue];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = v17;
  if (*(a4 + 4) >= 3u)
  {
    v20 = sub_2338A9B78(a3);
    v21 = sub_233740FAC(v13, v20);

    v22 = sub_2338A9B78(a3);
    v23 = sub_233740FAC(v13, v22);

    v16 = 0;
    if (v21)
    {
      v19 = v17;
      if (!v23)
      {
LABEL_12:

        goto LABEL_13;
      }

      [v21 floatValue];
      v25 = v24;
      [v23 floatValue];
      v16 = 0;
      if (v15)
      {
        v19 = v17;
        if (v26 != v25)
        {
          v16 = 1;
          v19 = (v18 - v25) / (v26 - v25);
        }

        goto LABEL_12;
      }
    }

    v19 = v17;
    goto LABEL_12;
  }

LABEL_13:
  if (v13)
  {
    v27 = sub_2338A9B78(a3);
    [v13 removeObjectForKey:v27];
  }

  if (v16)
  {
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v17];
    v29 = sub_2338A9BFC(a3);
    v30 = sub_2338A9B78(a3);
    sub_2338AD018(a1, v29, v30, v28, v18, v19);
  }

LABEL_18:
}

void sub_2338CB068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) == 1 && *(a4 + 2) == 3)
  {
    v15 = sub_2338A9B94(a1);
    v10 = sub_2338A9BFC(a3);
    v11 = sub_2338A9B78(a3);
    v12 = *(a4 + 8);
    v13 = bswap32(v12) >> 16;
    if (a6)
    {
      LOWORD(v12) = v13;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:{pow(1.41421356, vcvtd_n_f64_u32(v12, 8uLL))}];
    sub_2337830C4(v15, v10, v11, v14);
  }
}

uint64_t sub_2338CB19C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = v10;
  if (*(a4 + 4))
  {
    v17 = v10;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/OlympusEquipment", v10];
    v13 = *(a4 + 8);
    v14 = bswap32(v13);
    if (a6)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    sub_2338ADD58(a1, v12, word_2849340B0, v15, a5, a6);

    v11 = v17;
  }

  return MEMORY[0x2821F96F8](v10, v11);
}

uint64_t sub_2338CB274(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = v10;
  if (*(a4 + 4))
  {
    v17 = v10;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/OlympusCameraSettings", v10];
    v13 = *(a4 + 8);
    v14 = bswap32(v13);
    if (a6)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    sub_2338ADD58(a1, v12, word_2849341F0, v15, a5, a6);

    v11 = v17;
  }

  return MEMORY[0x2821F96F8](v10, v11);
}

uint64_t sub_2338CB34C(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  v11 = v10;
  if (*(a4 + 4))
  {
    v17 = v10;
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/OlympusFocusInfo", v10];
    v13 = *(a4 + 8);
    v14 = bswap32(v13);
    if (a6)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    sub_2338ADD58(a1, v12, word_284934588, v15, a5, a6);

    v11 = v17;
  }

  return MEMORY[0x2821F96F8](v10, v11);
}

uint64_t sub_2338CB424(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  result = sub_2338AABA4(a1, a2, a3, a4, a5, a6);
  v8 = BYTE1(result) - BYTE3(result);
  v9 = result - BYTE2(result);
  if (v8 >= 4 && v9 >= 4)
  {
    v12 = 0x10000000100;
    LODWORD(v11) = (BYTE1(result) + BYTE3(result) - 256 + (((BYTE1(result) + BYTE3(result) - 256) & 0x8000) >> 15)) >> 1;
    DWORD1(v11) = (256 - (BYTE2(result) + result) + (((256 - (BYTE2(result) + result)) & 0x8000u) >> 15)) >> 1;
    sub_2337238F0(&v11 + 2, v8 >> 2, v9 >> 2);
    sub_2338B1194(a1, &v12, 0);
    sub_2338B10E8(a1, &v11, 0);
    sub_2338B1254(a1, 1uLL, 0, 0);
    return sub_2338B11B8(a1, 1uLL, 0, 0);
  }

  return result;
}

void sub_2338CB50C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v34 = a2;
  v9 = sub_2338A9B94(a1);
  v10 = sub_233875D18(v9, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  v12 = sub_2338CA100(v11, v10);
  v13 = v12;
  v14 = 0;
  v15 = 0;
  v16 = *(a4 + 8);
  v17 = bswap32(v16) >> 16;
  if (a6)
  {
    LOWORD(v16) = v17;
  }

  v18 = v16 & 0x3F;
  v32 = v16;
  v33 = v16 & 0xC0;
  v38 = 0;
  v39 = 0;
  __p = 0;
  v37 = 0;
  v19 = 22;
  do
  {
    v35 = 0uLL;
    v12 = sub_2338CA36C(v12, v13, v15, &v35, &v39);
    if (v12)
    {
      if (v14 >= v38)
      {
        v20 = (v14 - __p) >> 4;
        if ((v20 + 1) >> 60)
        {
          sub_2337235BC();
        }

        v21 = (v38 - __p) >> 3;
        if (v21 <= v20 + 1)
        {
          v21 = v20 + 1;
        }

        if (v38 - __p >= 0x7FFFFFFFFFFFFFF0)
        {
          v22 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v21;
        }

        if (v22)
        {
          sub_23377FC40(&__p, v22);
        }

        v23 = (16 * v20);
        *v23 = v35;
        v14 = (16 * v20 + 16);
        v24 = (16 * v20 - (v37 - __p));
        memcpy(v23 - (v37 - __p), __p, v37 - __p);
        v12 = __p;
        __p = v24;
        v37 = v14;
        v38 = 0;
        if (v12)
        {
          operator delete(v12);
        }
      }

      else
      {
        *v14 = v35;
        v14 += 16;
      }

      v37 = v14;
    }

    else
    {
      v19 = v15;
    }

    ++v15;
  }

  while (v15 < v19);
  if (v13 <= 0x1E && ((1 << v13) & 0x40000028) != 0)
  {
    v25 = v33;
    if (!v19)
    {
      goto LABEL_41;
    }

    sub_2338AC594(a1, off_2789F09A8[v33 >> 6], 0, sub_2338CB878);
    v26 = v32;
    if (v32 != 255)
    {
      if (v18)
      {
        v18 = (v18 - 1) % v19;
      }

      else
      {
        v18 = 255;
      }
    }
  }

  else
  {
    if (!v19)
    {
      goto LABEL_41;
    }

    sub_2338AC594(a1, 0, 0, sub_2338CB8FC);
    v26 = v32;
    v25 = v32 & 0x40;
  }

  if (v18 >= v19 || v26 == 255)
  {
    v28 = 0;
  }

  else
  {
    v28 = 1 << v18;
  }

  sub_2338B1194(a1, &v39, 1);
  sub_2338B1160(a1, &__p, 1);
  sub_2338B1254(a1, v28, 0, 1);
  v29 = (v25 >> 6) ^ 2;
  v30 = ~(-1 << v19);
  if (v29 == 2)
  {
    v30 = v28;
  }

  if (v29 <= 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  sub_2338B11B8(a1, v31, 0, 1);
LABEL_41:
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }
}

void sub_2338CB824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2338CB878(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934708, 0);
    if (a1)
    {
      a1 = sub_2338CC180(a1, v3);
    }

    v2 = vars8;
  }

  return a1;
}

__CFString *sub_2338CB8FC(__CFString *result, int a2)
{
  if (result)
  {
    v3 = __dynamic_cast(result, &unk_28492EBB0, &unk_284934708, 0);
    v4 = @"Right";
    v5 = @"Center (vertical)";
    v6 = @"(none)";
    if (a2 != 255)
    {
      v6 = 0;
    }

    if (a2 != 3)
    {
      v5 = v6;
    }

    if (a2 != 2)
    {
      v4 = v5;
    }

    v7 = @"Left";
    v8 = @"Center (horizontal)";
    if (a2 != 1)
    {
      v8 = 0;
    }

    if (a2)
    {
      v7 = v8;
    }

    if (a2 <= 1)
    {
      v4 = v7;
    }

    if (v3)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2338CB9C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  v12 = sub_2338A9BFC(a3);
  if (![v12 length])
  {

    goto LABEL_20;
  }

  v13 = sub_2338A9B78(a3);
  v14 = [v13 length];

  if (v14)
  {
    v15 = sub_2338AA324(a1, v11, a3, a4, a5, a6);
    if (v15 >= 0xB)
    {
      v16 = 0x7FFFLL;
    }

    else
    {
      v16 = dword_233917800[v15];
    }

    if (*(a4 + 4) < 2u)
    {
      goto LABEL_16;
    }

    v17 = sub_2338A9B94(a1);
    v18 = sub_2338A9BFC(a3);
    v19 = sub_2338A9B78(a3);
    v20 = sub_2338AE7EC(v17, v18, v19);

    v21 = [v20 count];
    if (v21)
    {
      v28 = 0;
      LOBYTE(v21) = sub_23386EA2C(v20, &v28);
      if ((v21 & 0x30) == 0x10)
      {
        v16 = 0;
        goto LABEL_15;
      }

      if ((v21 & 0x30) == 0x20)
      {
        v16 = 2;
LABEL_15:

LABEL_16:
        v22 = sub_2338A9B94(a1);
        sub_2338A9BFC(a3);
        if (v16 == 0x7FFF)
          v23 = {;
          v24 = sub_2338A9B78(a3);
          sub_2338AE980(v22, v23, v24);
        }

        else
          v25 = {;
          v26 = sub_2338A9B78(a3);
          v27 = [MEMORY[0x277CCABB0] numberWithInt:v16];
          sub_2337830C4(v22, v25, v26, v27);
        }

        goto LABEL_20;
      }
    }

    if ((v21 & 3) != 0)
    {
      v16 = 1;
    }

    else
    {
      v16 = v16;
    }

    goto LABEL_15;
  }

LABEL_20:
}

void sub_2338CBC94(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v17 = a2;
  v11 = sub_2338A9BFC(a3);
  if ([v11 length])
  {
    v12 = sub_2338A9B78(a3);
    v13 = [v12 length];

    if (!v13)
    {
      goto LABEL_8;
    }

    if (sub_2338AA324(a1, v17, a3, a4, a5, a6))
    {
      v11 = sub_2338A9B94(a1);
      v14 = sub_2338A9BFC(a3);
      v15 = sub_2338A9B78(a3);
      v16 = [MEMORY[0x277CCABB0] numberWithInt:1];
      sub_2337830C4(v11, v14, v15, v16);
    }

    else
    {
      v11 = sub_2338A9B94(a1);
      v14 = sub_2338A9BFC(a3);
      v15 = sub_2338A9B78(a3);
      sub_2338AE980(v11, v14, v15);
    }
  }

LABEL_8:
}

void sub_2338CBE5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v19 = a2;
  v11 = sub_2338A9BFC(a3);
  if (![v11 length])
  {
    goto LABEL_10;
  }

  v12 = sub_2338A9B78(a3);
  v13 = [v12 length];

  if (!v13)
  {
    goto LABEL_11;
  }

  v14 = sub_2338AA324(a1, v19, a3, a4, a5, a6);
  if (v14)
  {
    if (v14 != 1)
    {
      v11 = sub_2338A9B94(a1);
      v16 = sub_2338A9BFC(a3);
      v17 = sub_2338A9B78(a3);
      sub_2338AE980(v11, v16, v17);
      goto LABEL_9;
    }

    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v11 = sub_2338A9B94(a1);
  v16 = sub_2338A9BFC(a3);
  v17 = sub_2338A9B78(a3);
  v18 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  sub_2337830C4(v11, v16, v17, v18);

LABEL_9:
LABEL_10:

LABEL_11:
}

void sub_2338CC034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v20 = 0;
  v10 = *(a4 + 8);
  v11 = bswap32(v10);
  if (a6)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  if (sub_2338A9730(a1, &v20, 4, a5, v12) == 4)
  {
    v13 = v20;
    v14 = bswap32(v20);
    if (a6)
    {
      v13 = v14;
    }

    v20 = v13;
    if (v13 >= 1)
    {
      v15 = v13;
      sub_2338A9730(a1, &v20, 4, a5, v12 + 4);
      v16 = sub_2338A9B94(a1);
      v17 = sub_2338A9BFC(a3);
      v18 = sub_2338A9B78(a3);
      v19 = [MEMORY[0x277CCABB0] numberWithDouble:v15 / 1000.0];
      sub_2337830C4(v16, v17, v18, v19);
    }
  }
}

__CFString *sub_2338CC180(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x15)
  {
    return 0;
  }

  else
  {
    return off_2789F09C8[a2];
  }
}

void *sub_2338CC23C(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284934730;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284934638;
  return a1;
}

void sub_2338CC2DC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284934730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338CC5C4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934990, 0);
    if (v10)
    {
      sub_2338CD14C(v10, v12, v11, a4, a5, a6);
    }
  }
}

uint64_t sub_2338CC694(uint64_t *a1)
{
  v4 = 0;
  sub_233725F08(v5, a1, &v4, 0);
  v4 = 0;
  v2 = (*(**a1 + 32))(*a1, &v4, 4);
  sub_2338FFF88(v2, &v4, v5, &v6);
  return v6;
}

void sub_2338CC71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338CC734(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338CD304();
}

uint64_t sub_2338CC7C8(uint64_t a1, int a2)
{
  LODWORD(result) = sub_2338AF450(a1, a2);
  if (a2 == 85)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void sub_2338CC814(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v8 = v2;
  v4 = sub_2338AE880(v2, *MEMORY[0x277CD2F50], @"ImageStabilization");

  if (v4 && (sub_2338A9B94(a1), v9 = objc_claimAutoreleasedReturnValue(), v5 = sub_2338AE900(v9, v3, @"ImageStabilization"), v9, (v5 - 2) < 3))
  {
    v6 = dword_233917930[v5 - 2];
    v10 = sub_2338A9B94(a1);
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    sub_2337830C4(v10, v3, @"ImageStabilization", v7);
  }

  else
  {
    v10 = sub_2338A9B94(a1);
    sub_2338AE980(v10, v3, @"ImageStabilization");
  }
}

uint64_t sub_2338CC970(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v16 = 0;
  v17[0] = 0;
  *(v17 + 5) = 0;
  if (sub_2338A9730(a1, &v16, 20, a5, a3) == 20)
  {
    if (v16 == 1128875340 && WORD2(v16) == 65)
    {
      v14 = 8;
    }

    else
    {
      if (v16 != 0x696E6F73616E6150 || LOWORD(v17[0]) != 99)
      {
        goto LABEL_10;
      }

      v14 = 12;
    }

    sub_2338ADD58(a1, v10, L"%\a", v14 + a3, a5, a6);
    (*(*a1 + 160))(a1);
    v13 = 1;
    goto LABEL_14;
  }

LABEL_10:
  v13 = 0;
LABEL_14:

  return v13;
}

void sub_2338CCAD8(uint64_t a1)
{
  v13 = sub_2338A9B94(a1);
  v2 = sub_2338AE880(v13, @"{PictStyleSetting}", @"PictureStyle");

  if (v2)
  {
    v14 = sub_2338A9B94(a1);
    v3 = sub_2338AE900(v14, @"{PictStyleSetting}", @"PictureStyle");

    v15 = sub_2338CCD70(v4, v3);
    sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v15, v3, v3);
  }

  v5 = sub_2338A9B94(a1);
  v16 = sub_233739994(v5, @"{PictureStyle}", 0);

  if (v16)
  {
    v6 = sub_2338A9B94(a1);
    v7 = sub_2338AE880(v6, @"{PictureStyle}", @"Monochrome");

    if (!v7)
    {
      sub_2338ACF60(a1, @"Monochrome", 0);
    }

    v8 = (*(*a1 + 96))(a1);
    if ((v8 & 0x80000000) == 0)
    {
      v9 = @"{PictureStyle}";
      v10 = sub_2338AD1AC(a1, v8);
      sub_2338AD018(a1, v9, @"PictStyleColorSpace", v10, v8, v8);
    }
  }

  v11 = sub_2338A9B94(a1);
  [v11 removeObjectForKey:@"{PictStyleSetting}"];

  v12 = sub_2338A9B94(a1);
  [v12 removeObjectForKey:@"{PictStyleNormalized}"];
}

__CFString *sub_2338CCD70(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0x2B)
  {
    return 0;
  }

  else
  {
    return off_2789F0B90[a2 - 1];
  }
}

void sub_2338CCD94(uint64_t *a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = @"{Temporary}";
  v4 = @"_AutoFocus";
  v5 = sub_2338AE7EC(v2, v3, v4);

  if ([v5 count] >= 2)
  {
    *&v17 = 0;
    v16 = sub_2338C9B8C(v5, &v17);
    *&v17 = 1;
    v6 = sub_2338C9B8C(v5, &v17);
    v7 = vdupq_lane_s64(__SPAIR64__(LODWORD(v6), LODWORD(v16)), 0);
    v8.i32[0] = vmovn_s32(vcgeq_f32(xmmword_233917830, v7)).u32[0];
    v8.i32[1] = vmovn_s32(vcgtq_f32(v7, xmmword_233917830)).i32[1];
    if (vminv_u16(v8))
    {
      v15 = v6;
      v9 = sub_2338B0E5C(a1);
      v18 = 0xBB800000FA0;
      v10 = *MEMORY[0x277CD3110];
      if (sub_233739ACC(v9, v10))
      {
        v11 = *MEMORY[0x277CD3118];
        v12 = sub_233739ACC(v9, *MEMORY[0x277CD3118]);

        if (v12)
        {
          v13 = sub_2337397B0(v9, v10);
          LODWORD(v18) = v13;
          v14 = sub_2337397B0(v9, v11);
          HIDWORD(v18) = v14;
LABEL_8:
          LODWORD(v17) = ((v16 + -0.5) * v13);
          DWORD1(v17) = ((0.5 - v15) * v14);
          sub_2337238F0(&v17 + 2, v13 / 20, v14 / 20);
          sub_2338B1194(a1, &v18, 0);
          sub_2338B10E8(a1, &v17, 0);
          sub_2338B1254(a1, 1uLL, 0, 0);
          sub_2338AC690(a1);

          goto LABEL_9;
        }
      }

      else
      {
      }

      v13 = 4000;
      v14 = 3000;
      goto LABEL_8;
    }
  }

LABEL_9:
}

void sub_2338CD02C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  memset(v10, 0, sizeof(v10));
  sub_2338B0B1C(a1, a2, &v9);
  sub_233723AE0(&v7, (a1 + 196));
  v6 = *(a1 + 200);
  sub_2338A820C(a1, &v7, &v6, 0, &v8);
  if (v9)
  {
    sub_233753C74(v10, &v9);
  }

  if (v8)
  {
    sub_233753C74(v10, &v8);
  }

  sub_2338A86B8(v10, a2, a3);
  if (*(&v8 + 1))
  {
    sub_2337239E8(*(&v8 + 1));
  }

  if (*(&v9 + 1))
  {
    sub_2337239E8(*(&v9 + 1));
  }

  *&v9 = v10;
  sub_233723948(&v9);
}

void sub_2338CD104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, std::__shared_weak_count *a13, char a14)
{
  if (a13)
  {
    sub_2337239E8(a13);
  }

  a12 = &a14;
  sub_233723948(&a12);
  _Unwind_Resume(a1);
}

void sub_2338CD14C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = *(a4 + 4);
  v12 = *(a4 + 8);
  v13 = bswap32(v12);
  if (a6)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  *(a1 + 196) = v14;
  v15 = *(a4 + 2);
  if (v15 > 0x6F)
  {
    LODWORD(v16) = 0;
  }

  else
  {
    v16 = qword_233917870[v15];
  }

  *(a1 + 200) = v16 * v11;
  v21 = 0uLL;
  v22 = 0;
  if (sub_2338A9730(a1, &v21, 24, a5, v14) == 24 && !(*(&v21 + 6) ^ 0x66697845 | WORD5(v21)))
  {
    v17 = BYTE12(v21);
    if (BYTE12(v21) == BYTE13(v21) && (BYTE13(v21) & 0xFB) == 0x49)
    {
      v18 = bswap32(v22);
      if (BYTE12(v21) == 77)
      {
        v19 = v18;
      }

      else
      {
        v19 = v22;
      }

      if (HIBYTE(v21) + BYTE14(v21) == 42)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/PanasonicThumbnail", v10];
        sub_2338ADD58(a1, v20, word_28492EDC8, a5 + v19, (v14 + 12), v17 == 77);
      }
    }
  }
}

uint64_t sub_2338CD3A0(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2849349B8;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_2849348C0;
  *(a1 + 220) = 0;
  *(a1 + 224) = 0;
  return a1;
}

void sub_2338CD444(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849349B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338CD4C0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v10)
    {
      sub_2338D038C(v10, v11, a3, a4, v12, a6);
    }
  }
}

void sub_2338CD58C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v11)
    {
      sub_2338D074C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338CD668(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v10)
    {
      sub_2338CFC40(v10, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338CD734(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v7)
    {
      sub_2338D0684(v7, v8, a3, a4);
    }
  }
}

void sub_2338CD7FC(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v9)
    {
      sub_2338CFEA0(v9, v12, v10, a4, v11, a6);
    }
  }
}

void sub_2338CD8F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (result)
  {
    v8 = __dynamic_cast(result, &unk_28492EBB0, &unk_284934F60, 0);
    if (v8)
    {
      v9 = *(a4 + 8);
      v10 = bswap32(v9) >> 16;
      if (a6)
      {
        LOWORD(v9) = v10;
      }

      sub_2338CF9AC(v8, 0, v9);
    }
  }
}

void sub_2338CD998(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v10)
    {
      sub_2338CFFE0(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338CDA68(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v10)
    {
      sub_2338D01C4(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338CDB38(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (v11)
    {
      sub_2338D0494(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338CDC18(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338D097C();
}

void sub_2338CDCB8(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2338A9C18(a1);
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/%@", *MEMORY[0x277CD34B8]];
  v8 = sub_233740FAC(v6, v7);

  v9 = [v8 intValue];
  if ((v9 - 9) >= 0xFFFFFFF8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_2338A9C18(a1);
  v13 = MEMORY[0x277CCACA8];
  v14 = @"_JPEGInterchangeFormat";
  v15 = [v13 stringWithFormat:@"IFD2/%@", v14];
  v16 = sub_233740FAC(v12, v15);

  v17 = sub_2338A9C18(a1);
  v18 = MEMORY[0x277CCACA8];
  v19 = @"_JPEGInterchangeFormatLength";
  v20 = [v18 stringWithFormat:@"IFD2/%@", v19];
  v21 = sub_233740FAC(v17, v20);

  memset(v27, 0, sizeof(v27));
  sub_2338B0B1C(a1, a2, &v26);
  LODWORD(v22) = [v16 intValue];
  v23 = [v21 intValue];
  sub_233726998(&v24, &v23);
  sub_2338A820C(a1, &v22, &v24, v11, &v25);
  sub_2338AFE60(a1, @"IFD2", &v22);
  if (v26)
  {
    sub_233753C74(v27, &v26);
  }

  if (v25)
  {
    sub_233753C74(v27, &v25);
  }

  if (v22)
  {
    sub_233753C74(v27, &v22);
  }

  sub_2338A86B8(v27, a2, a3);
  if (*(&v22 + 1))
  {
    sub_2337239E8(*(&v22 + 1));
  }

  if (*(&v25 + 1))
  {
    sub_2337239E8(*(&v25 + 1));
  }

  if (*(&v26 + 1))
  {
    sub_2337239E8(*(&v26 + 1));
  }

  *&v26 = v27;
  sub_233723948(&v26);
}

void sub_2338CDF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void **a16, std::__shared_weak_count *a17, char a18)
{
  if (a15)
  {
    sub_2337239E8(a15);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  a16 = &a18;
  sub_233723948(&a16);

  _Unwind_Resume(a1);
}

void sub_2338CE004(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v6 = sub_2338BD598(v2, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68]);

  if (v6)
  {
    v4 = sub_2338CE11C(a1, [v6 intValue]);
    if (v4)
    {
      v5 = sub_2338A9B94(a1);
      sub_2337830C4(v5, v3, *MEMORY[0x277CD2F78], v4);
    }
  }

  sub_2338AF5B0(a1);
}

id sub_2338CE11C(uint64_t a1, __int16 a2)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d %d", HIBYTE(a2), a2];
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v3 = sub_2338E9010(@"pentax");
  v4 = v3;
  v66 = v3;
  if (v3)
  {
    v64 = v2;
    v5 = sub_23378DDE8(v3, v2);
    for (i = 0; ; i = v73 + 1)
    {
      v73 = i;
      if (i >= [v5 count])
      {

        v2 = v64;
        goto LABEL_25;
      }

      v7 = sub_23386EAC4(v5, &v73);
      if ([v7 count] == 5)
      {
        break;
      }

LABEL_21:
    }

    __p[0] = 0;
    v8 = sub_23386E0B8(v7, __p);
    __p[0] = 1;
    v9 = sub_23386EA74(v7, __p);
    __p[0] = 2;
    v10 = sub_23386EA74(v7, __p);
    __p[0] = 3;
    v11 = sub_23386EA74(v7, __p);
    __p[0] = 4;
    v12 = sub_23386EA74(v7, __p);
    if (v8)
    {
      v13 = v12;
      v14 = [v8 UTF8String];
      v15 = strlen(v14);
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_2337304FC();
      }

      v16 = v15;
      if (v15 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v68) = v15;
      if (v15)
      {
        memmove(&__dst, v14, v15);
      }

      *(&__dst + v16) = 0;
      v17 = SHIBYTE(v68);
      if (SHIBYTE(v68) < 0)
      {
        v4 = v66;
        sub_233731FB8(__p, __dst, *(&__dst + 1));
      }

      else
      {
        *__p = __dst;
        v70 = v68;
        v4 = v66;
      }

      *&v71 = v9;
      *(&v71 + 1) = v10;
      *&v72 = v11;
      *(&v72 + 1) = v13;
      v18 = v75;
      if (v75 >= v76)
      {
        v75 = sub_2338BAFB4(&v74, __p);
        if (SHIBYTE(v70) < 0)
        {
          operator delete(__p[0]);
          if ((v17 & 0x80000000) == 0)
          {
            goto LABEL_20;
          }
        }

        else if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_17;
      }

      v19 = *__p;
      *(v75 + 16) = v70;
      *v18 = v19;
      __p[1] = 0;
      v70 = 0;
      __p[0] = 0;
      v20 = v72;
      *(v18 + 24) = v71;
      *(v18 + 40) = v20;
      v75 = v18 + 56;
      if (v17 < 0)
      {
LABEL_17:
        operator delete(__dst);
      }
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_25:
  if (v75 - v74 == 56)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    goto LABEL_80;
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((v75 - v74) >> 3)) < 2)
  {
    v21 = 0;
  }

  else
  {
    v22 = sub_2338B0E5C(a1);
    v23 = sub_2337397B0(v22, *MEMORY[0x277CD3088]);

    v24 = sub_2338B0E5C(a1);
    v25 = sub_233740FAC(v24, *MEMORY[0x277CD30E8]);

    [v25 doubleValue];
    v27 = v26;
    v28 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v75 - v74) >> 3));
    v29 = v2;
    v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    v30 = v74;
    if ((0x6DB6DB6DB6DB6DB7 * ((v75 - v74) >> 3)) >= 2)
    {
      v31 = v23;
      v62 = log(v23);
      v32 = 0;
      v33 = 0;
      v34 = 1;
      v35 = 999999999.0;
      v61 = v27;
      while (1)
      {
        v36 = v30 + v32;
        if (*(v30 + v32 + 79) < 0)
        {
          sub_233731FB8(__p, *(v36 + 56), *(v36 + 64));
        }

        else
        {
          v37 = *(v36 + 56);
          v70 = *(v36 + 72);
          *__p = v37;
        }

        v38 = *(v30 + v32 + 80);
        v72 = *(v30 + v32 + 96);
        v71 = v38;
        v39 = v38;
        v40 = *&v38 + -0.9;
        v41 = *(&v71 + 1) + 0.9;
        if (*&v71 + -0.9 <= v31 && v41 >= v31)
        {
          if (v25)
          {
            v44 = *(&v72 + 1);
            v43 = *&v72;
            v41 = *&v72 + -0.15;
            if (v27 < *&v72 + -0.15 || v27 > *(&v72 + 1) + 0.15)
            {
              goto LABEL_59;
            }

            if (*&v71 != *(&v71 + 1) && *&v72 != *(&v72 + 1))
            {
              v46 = log(*&v72);
              v47 = log(v44) - v46;
              v48 = log(*(&v39 + 1));
              v49 = log(*&v39);
              v50 = v46 + v47 / (v48 - v49) * (v62 - v49);
              v27 = v61;
              v43 = exp(v50);
            }

            v51 = vabdd_f64(v27, v43);
            if (v51 > v35 + 0.15)
            {
              goto LABEL_59;
            }

            v40 = v35 + -0.15;
            if (v51 >= v35 + -0.15)
            {
              v35 = v51;
            }

            else
            {
              if (v70 >= 0)
              {
                v52 = __p;
              }

              else
              {
                v52 = __p[0];
              }

              v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:v52];

              v35 = v51;
              v33 = v53;
            }
          }

          if (v70 >= 0)
          {
            v54 = __p;
          }

          else
          {
            v54 = __p[0];
          }

          v55 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v54, v40, v41}];
          if (v55)
          {
            [v28 addObject:v55];
          }
        }

LABEL_59:
        if (SHIBYTE(v70) < 0)
        {
          operator delete(__p[0]);
        }

        ++v34;
        v30 = v74;
        v32 += 56;
        if (v34 >= 0x6DB6DB6DB6DB6DB7 * ((v75 - v74) >> 3))
        {
          goto LABEL_65;
        }
      }
    }

    v33 = 0;
LABEL_65:
    v4 = v66;
    if ([v28 count])
    {
      if (v33)
      {
        v56 = v33;
      }

      else
      {
        v56 = &stru_284938540;
      }

      v21 = [MEMORY[0x277CCAB68] stringWithString:v56];
      for (j = 0; ; j = __p[0] + 1)
      {
        __p[0] = j;
        if (j >= [v28 count])
        {
          break;
        }

        v58 = sub_23386E0B8(v28, __p);
        if ([v21 length])
        {
          if (!v33 || ([v58 isEqualToString:v33] & 1) == 0)
          {
            [v21 appendFormat:@" or %@", v58];
          }
        }

        else
        {
          [v21 appendString:v58];
        }
      }

      v2 = v29;
      v59 = v63;
    }

    else
    {
      v2 = v29;
      v59 = v63;
      v21 = v63;
    }
  }

LABEL_80:

  __p[0] = &v74;
  sub_2338BB644(__p);

  return v21;
}

void sub_2338CE810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  __p = &a32;
  sub_2338BB644(&__p);

  _Unwind_Resume(a1);
}

void sub_2338CE964(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = sub_2338AE7EC(v2, @"{PictStyleSetting}", @"PictureStyle");

  if ([v3 count])
  {
    v33 = 0;
    v4 = sub_23386EA2C(v3, &v33);
    v5 = v4;
    v6 = sub_2338CEE20(v4, v4);
    sub_2338AD018(a1, @"{PictureStyle}", @"PictureStyle", v6, v5, v5);
  }

  v7 = sub_2338A9B94(a1);
  v8 = sub_2338AE7EC(v7, @"{PictStyleSetting}", @"ColorTone");

  if ([v8 count])
  {
    v33 = 0;
    v9 = sub_23386EA2C(v8, &v33);
    v10 = v9;
    if (v9 > 5)
    {
      v11 = 0;
    }

    else
    {
      v11 = off_2789F0D18[v9];
    }

    sub_2338AD018(a1, @"{PictureStyle}", @"ColorTone", v11, v9, v9);
    v12 = v10 == 5;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_2338A9B94(a1);
  v14 = sub_2338AE880(v13, @"{PictStyleSetting}", @"Hue");

  if (v14)
  {
    v15 = sub_2338A9B94(a1);
    v16 = sub_2338AE900(v15, @"{PictStyleSetting}", @"Hue");

    sub_2338ACF60(a1, @"Hue", v16);
  }

  v17 = sub_2338A9B94(a1);
  v18 = sub_2338AE880(v17, @"{PictStyleSetting}", @"FineSharpness");

  if (v18)
  {
    v19 = sub_2338A9B94(a1);
    v20 = sub_2338AE900(v19, @"{PictStyleSetting}", @"FineSharpness");

    sub_2338ACF60(a1, @"FineSharpness", v20);
  }

  v21 = sub_2338A9B94(a1);
  v22 = sub_2338AE880(v21, @"{PictStyleSetting}", @"ShadowCompensation");

  if (v22)
  {
    v23 = sub_2338A9B94(a1);
    v24 = sub_2338AE900(v23, @"{PictStyleSetting}", @"ShadowCompensation");

    sub_2338ACF60(a1, @"ShadowCompensation", v24);
  }

  v25 = sub_2338A9B94(a1);
  v26 = sub_233739994(v25, @"{PictureStyle}", 0);

  if (v26)
  {
    v27 = sub_2338A9B94(a1);
    v28 = sub_2338AE880(v27, @"{PictureStyle}", @"Monochrome");

    if (!v28)
    {
      sub_2338ACF60(a1, @"Monochrome", v12);
    }

    v29 = (*(*a1 + 96))(a1);
    if ((v29 & 0x80000000) == 0)
    {
      v30 = sub_2338AD1AC(a1, v29);
      sub_2338AD018(a1, @"{PictureStyle}", @"PictStyleColorSpace", v30, v29, v29);
    }
  }

  v31 = sub_2338A9B94(a1);
  [v31 removeObjectForKey:@"{PictStyleSetting}"];

  v32 = sub_2338A9B94(a1);
  [v32 removeObjectForKey:@"{PictStyleNormalized}"];
}

__CFString *sub_2338CEE20(uint64_t a1, int a2)
{
  result = 0;
  switch(a2)
  {
    case 0:
      result = @"Program";
      break;
    case 1:
      result = @"Shutter Speed Priority";
      break;
    case 2:
      result = @"Program AE";
      break;
    case 3:
      result = @"Manual";
      break;
    case 4:
    case 10:
    case 16:
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 32:
    case 34:
    case 35:
    case 36:
    case 39:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 52:
    case 57:
    case 59:
    case 62:
    case 63:
    case 64:
      return result;
    case 5:
      result = @"Portrait";
      break;
    case 6:
      result = @"Landscape";
      break;
    case 7:
      result = @"?";
      break;
    case 8:
      result = @"Sport";
      break;
    case 9:
      result = @"Night Scene";
      break;
    case 11:
      result = @"Soft";
      break;
    case 12:
      result = @"Surf and Snow";
      break;
    case 13:
    case 54:
      result = @"Candlelight";
      break;
    case 14:
      result = @"Autumn";
      break;
    case 15:
      result = @"Macro";
      break;
    case 17:
      result = @"Fireworks";
      break;
    case 18:
      result = @"Text";
      break;
    case 19:
      result = @"Panorama";
      break;
    case 30:
      result = @"Self Portrait";
      break;
    case 31:
      result = @"Illustrations";
      break;
    case 33:
      result = @"Digital Filter";
      break;
    case 37:
      result = @"Museum";
      break;
    case 38:
      result = @"Food";
      break;
    case 40:
      result = @"Green Mode";
      break;
    case 49:
      result = @"Light Pet";
      break;
    case 50:
      result = @"Dark Pet";
      break;
    case 51:
      result = @"Medium Pet";
      break;
    case 53:
      result = @"Underwater";
      break;
    case 55:
      result = @"Natural Skin Tone";
      break;
    case 56:
      result = @"Synchro Sound Record";
      break;
    case 58:
      result = @"Frame Composite";
      break;
    case 60:
      result = @"Kids";
      break;
    case 61:
      result = @"Blur Reduction";
      break;
    case 65:
      result = @"Half-length Portrait";
      break;
    default:
      if (a2 == 255)
      {
        result = @"Digital Filter";
      }

      else
      {
        result = 0;
      }

      break;
  }

  return result;
}

void sub_2338CEFF0(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v4 = sub_2338AE7EC(v2, *MEMORY[0x277CD2F50], @"ImageStabilization");

  if ([v4 count] < 2)
  {
    v11 = sub_2338A9B94(a1);
    sub_2338AE980(v11, v3, @"ImageStabilization");
  }

  else
  {
    v13 = 0;
    v5 = sub_23386EA2C(v4, &v13);
    v13 = 1;
    v6 = sub_23386EA2C(v4, &v13);
    if ((v5 & 0x42) != 0)
    {
      v7 = 131;
    }

    else
    {
      v7 = 3;
    }

    if (v5)
    {
      v8 = 7;
    }

    else
    {
      v8 = v7;
    }

    if (v5)
    {
      v9 = v8;
    }

    else
    {
      v9 = 131;
    }

    if (v6)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_2338A9B94(a1);
    v12 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    sub_2337830C4(v11, v3, @"ImageStabilization", v12);
  }
}

uint64_t sub_2338CF174(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v12 = a2;
  v15 = 0;
  v16[0] = 0;
  *(v16 + 5) = 0;
  if (sub_2338A9730(a1, &v15, 20, a5, a3) == 20)
  {
    if (a7)
    {
      sub_2338ADD58(a1, @"IFD0", word_2849349F8, a3, a5, a6);
LABEL_9:
      sub_2338ADD58(a1, v12, word_284934A48, a3, a5, a6);
      (*(*a1 + 160))(a1);
      v13 = 1;
      goto LABEL_10;
    }

    if (v15 == 4411201)
    {
      a3 += 6;
      sub_2338ADD58(a1, @"IFD0", word_2849349F8, a3, a5, a6);
      goto LABEL_9;
    }

    if (v15 == 0x205841544E4550)
    {
      a3 += 10;
      sub_2338ADD58(a1, @"IFD0", word_2849349F8, a3, a5, a6);
      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_10:

  return v13;
}

uint64_t sub_2338CF338(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v11 = 0;
  v12[0] = 0;
  *(v12 + 5) = 0;
  if (sub_2338A9730(a1, &v11, 20, a4, a3) == 20)
  {
    sub_2338AEC78(a1, v9, a3, a4, a5);
  }

  return 1;
}

uint64_t sub_2338CF480(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD3000];
  v4 = sub_2338AE880(v2, @"{PictStyleSetting}", *MEMORY[0x277CD3000]);

  if (v4)
  {
    v5 = sub_2338A9B94(a1);
    v6 = sub_2338AE900(v5, @"{PictStyleSetting}", v3);

    if (v6 < 0x100)
    {
      return v6 + 1;
    }

    else
    {
      return 0xFFFFLL;
    }
  }

  else
  {
    v8 = sub_2338B0E5C(a1);
    v9 = sub_233739ACC(v8, v3);

    if (v9)
    {
      v10 = sub_2338B0E5C(a1);
      v7 = sub_2337397B0(v10, v3);
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v7;
}

uint64_t sub_2338CF58C(uint64_t a1, int a2, int a3, __int128 *a4, uint64_t *a5)
{
  if (a2 <= 76705)
  {
    if (a2 <= 76639)
    {
      if (a2 != 76180 && a2 != 76450 && a2 != 76570)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v7 = a2 - 96;
      if ((a2 - 76640) > 0x3D)
      {
        goto LABEL_68;
      }

      if (((1 << v7) & 0x140000005) == 0)
      {
        if (((1 << v7) & 0x3000000000000000) != 0)
        {
          goto LABEL_28;
        }

        goto LABEL_68;
      }
    }

    v8 = 65;
    v9 = 70;
    v10 = 135;
    v11 = 45;
    v12 = 50;
    v13 = 1150;
    v14 = 400;
    v15 = 575;
    v16 = 0x7E800000BE0;
    goto LABEL_29;
  }

  if (a2 <= 77049)
  {
    if (a2 <= 76831)
    {
      if (a2 != 76706)
      {
        v6 = 11294;
LABEL_22:
        if (a2 != (v6 | 0x10000))
        {
          goto LABEL_68;
        }
      }
    }

    else if (a2 != 76832 && a2 != 77010)
    {
      v6 = 11476;
      goto LABEL_22;
    }

LABEL_28:
    v8 = 65;
    v9 = 70;
    v10 = 135;
    v11 = 45;
    v12 = 50;
    v13 = 1150;
    v14 = 400;
    v15 = 575;
    v16 = 0xA2000000F20;
    goto LABEL_29;
  }

  if (a2 <= 77419)
  {
    if ((a2 - 77170) < 2)
    {
      *a5 = 0xA2000000F20;
      if (a3 == 1)
      {
        v17 = xmmword_233917940;
      }

      else
      {
        if (a3)
        {
          return 0;
        }

        v17 = xmmword_233917950;
      }

      goto LABEL_63;
    }

    if (a2 == 77050)
    {
      v8 = 65;
      v9 = 70;
      v10 = 150;
      v12 = 55;
      v13 = 1320;
      v14 = 480;
      v15 = 660;
      v16 = 0xA2000000F20;
      v11 = 55;
      goto LABEL_29;
    }

LABEL_68:
    result = 0;
    *a5 = 0xA2000000F20;
    return result;
  }

  if (a2 != 77420)
  {
    if (a2 == 77430)
    {
      v8 = 83;
      v9 = 90;
      v10 = 172;
      v11 = 57;
      v12 = 63;
      v13 = 1465;
      v14 = 504;
      v15 = 732;
      v16 = 0xCC000001340;
      goto LABEL_29;
    }

    goto LABEL_68;
  }

  v8 = 72;
  v9 = 78;
  v10 = 150;
  v11 = 50;
  v12 = 55;
  v13 = 1275;
  v14 = 440;
  v15 = 637;
  v16 = 0xB20000010C0;
LABEL_29:
  *a5 = v16;
  if (a3 > 5)
  {
    if (a3 > 8)
    {
      if (a3 == 9)
      {
        v15 = 0;
      }

      else if (a3 != 10)
      {
        result = 0;
        if (a3 != 11)
        {
          return result;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (a3 == 6)
      {
        v14 = 0;
        goto LABEL_55;
      }

      if (a3 == 7)
      {
        v14 = 0;
        v15 = v13;
        goto LABEL_52;
      }

      v15 = -v15;
    }

    v14 = -v14;
    goto LABEL_55;
  }

  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        v14 = 0;
        goto LABEL_54;
      }

LABEL_45:
      v15 = 0;
      v14 = 0;
      v12 = v9;
      v11 = v8;
      goto LABEL_55;
    }

    v14 = 0;
    v15 = -v13;
LABEL_52:
    v11 = v10;
    goto LABEL_55;
  }

  if (!a3)
  {
LABEL_54:
    v15 = -v15;
    goto LABEL_55;
  }

  if (a3 == 1)
  {
    v15 = 0;
  }

  else
  {
    result = 0;
    if (a3 != 2)
    {
      return result;
    }
  }

LABEL_55:
  if (a2 == 76570)
  {
    v19 = 1 << a3;
    v20 = 2160;
  }

  else
  {
    if (a2 != 76672 && a2 != 76670)
    {
      goto LABEL_62;
    }

    v19 = 1 << a3;
    v20 = 2674;
  }

  if ((v19 & v20) == 0)
  {
    v15 = 0;
    v14 = 0;
    v12 = 0;
    v11 = 0;
  }

LABEL_62:
  *&v21 = __PAIR64__(v14, v15);
  sub_2337238F0(&v21 + 2, v12, v11);
  v17 = v21;
LABEL_63:
  *a4 = v17;
  return 1;
}

void sub_2338CF9AC(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (a3 | a2)
  {
    v3 = a1;
    v4 = 0;
    v5 = *(a1 + 49);
    if (v5 >> 1 == 38585)
    {
      v6 = 0;
    }

    else
    {
      v6 = a3;
    }

    if (v5 >> 1 == 38585)
    {
      v7 = 0;
    }

    else
    {
      v7 = a2;
    }

    v17 = v7;
    __p = 0;
    v21 = 0;
    v22 = 0;
    v19 = 0;
    v8 = 100;
    do
    {
      v18 = 0uLL;
      a1 = sub_2338CF58C(a1, v5, v4, &v18, &v19);
      if (a1)
      {
        v9 = v21;
        if (v21 >= v22)
        {
          v11 = (v21 - __p) >> 4;
          v12 = v11 + 1;
          if ((v11 + 1) >> 60)
          {
            sub_2337235BC();
          }

          v13 = v22 - __p;
          if ((v22 - __p) >> 3 > v12)
          {
            v12 = v13 >> 3;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF0)
          {
            v14 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            sub_23377FC40(&__p, v14);
          }

          v15 = (16 * v11);
          *v15 = v18;
          v10 = 16 * v11 + 16;
          v16 = (16 * v11 - (v21 - __p));
          memcpy(v15 - (v21 - __p), __p, v21 - __p);
          a1 = __p;
          __p = v16;
          v21 = v10;
          v22 = 0;
          if (a1)
          {
            operator delete(a1);
          }
        }

        else
        {
          *v21 = v18;
          v10 = (v9 + 16);
        }

        v21 = v10;
        ++v4;
      }

      else
      {
        v8 = v4;
      }
    }

    while (v4 < v8);
    if (v8)
    {
      sub_2338B1194(v3, &v19, 1);
      sub_2338B1254(v3, v6, 0, v6 != 0);
      sub_2338B11B8(v3, v17, 0, v17 != 0);
      sub_2338B1160(v3, &__p, 1);
      sub_2338AC594(v3, 0, 0, sub_2338CFBBC);
    }

    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }
}

void sub_2338CFB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338CFBBC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2;
    a1 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284934F60, 0);
    if (a1)
    {
      a1 = sub_2338D0924(a1, v3);
    }

    v2 = vars8;
  }

  return a1;
}

void sub_2338CFC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 4);
  if (v6 >= 0xC8)
  {
    v7 = 200;
  }

  else
  {
    v7 = v6;
  }

  if (v6 >= 0x21)
  {
    v12 = sub_2338A9B94(a1);
    v13 = sub_233875D18(v12, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

    sub_233756E64(&__p, v7);
    v14 = *(a4 + 8);
    v15 = bswap32(v14);
    if (a6)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = sub_2338A9730(a1, __p, v24 - __p, a5, v16);
    v18 = __p;
    if (v17 == v24 - __p)
    {
      if (sub_2338A818C(v13, @"*ist", 0) || sub_2338A818C(v13, @"GX-1S", 0) || sub_2338A818C(v13, @"GX-1L", 0) || (sub_2338A818C(v13, @"K100D", 0) || sub_2338A818C(v13, @"K110D", 0)) && (v18[20] == 255 || !v18[20] && !v18[21]))
      {
        v19 = 17;
      }

      else if ((v24 - __p) >= 0x5A)
      {
        v19 = 26;
        if (v24 - __p == 90)
        {
          v19 = 27;
        }
      }

      else
      {
        v19 = 18;
      }

      v18 = __p;
      v20 = *(__p + v19);
      if (v20 < 2)
      {
        goto LABEL_16;
      }

      v21 = [MEMORY[0x277CCABB0] numberWithDouble:{exp2(vcvtd_n_f64_u32((v20 - 1), 5uLL))}];
      v22 = sub_2338ADA50(a1, 1);
      [v22 setObject:v21 forKeyedSubscript:*MEMORY[0x277CD30E8]];

      v18 = __p;
    }

    if (!v18)
    {
LABEL_17:

      return;
    }

LABEL_16:
    v24 = v18;
    operator delete(v18);
    goto LABEL_17;
  }
}

void sub_2338CFE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338CFEA0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  LOWORD(v9) = 0;
  v10 = *(a4 + 8);
  v11 = bswap32(v10) >> 16;
  if (a6)
  {
    LOWORD(v10) = v11;
  }

  if (v10 <= 0xFFFCu)
  {
    if (v10)
    {
      if (v10 == 65532)
      {
        v12 = sub_2338A9B94(a1);
        sub_2337830C4(v12, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8], &unk_2849588B8);

        LOWORD(v9) = 0;
      }

      else
      {
        if (v10 > 0x10u)
        {
          goto LABEL_13;
        }

        v9 = 1 << (v10 - 1);
      }
    }
  }

  else if (v10 == 65534)
  {
    LOWORD(v9) = 32;
  }

  sub_2338CF9AC(a1, v9, 0);
LABEL_13:
}

void sub_2338CFFE0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  if (*(a4 + 4) >= 6u)
  {
    v11 = *(a4 + 8);
    v12 = bswap32(v11);
    if (a6)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    v14 = sub_2338A9B94(a1);
    v15 = *MEMORY[0x277CD2F50];
    v16 = *MEMORY[0x277CD33D8];
    v17 = sub_2338AE880(v14, *MEMORY[0x277CD2F50], *MEMORY[0x277CD33D8]);

    if (!v17)
    {
      v23 = 0;
      if ((v13 + 3) << 31 >> 31 != v13 + 3)
      {
        goto LABEL_20;
      }

      if (sub_2338A9730(a1, &v23, 1, a5, v13 + 3) == 1)
      {
        if ((v23 & 0xF) != 0)
        {
          v23 = 1;
        }

        v18 = sub_2338A9B94(a1);
        v19 = [MEMORY[0x277CCABB0] numberWithInt:v23];
        sub_2337830C4(v18, v15, v16, v19);
      }
    }

    v22 = 0;
    if ((v13 + 4) << 31 >> 31 == v13 + 4)
    {
      if (sub_2338A9730(a1, &v22, 2, a5, v13 + 4) == 2)
      {
        v20 = v22;
        v21 = bswap32(v22) >> 16;
        if (a6)
        {
          v20 = v21;
        }

        v22 = v20;
        if (!v20)
        {
          v20 = 2047;
        }
      }

      else
      {
        v20 = 0;
      }

      sub_2338CF9AC(a1, v20, 0);
    }
  }

LABEL_20:
}

void sub_2338D01C4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = a2;
  if (*(a4 + 4) >= 0xCu)
  {
    v11 = *(a4 + 8);
    v12 = bswap32(v11);
    if (a6)
    {
      v11 = v12;
    }

    if (v11 <= 0xFFFFFFF3)
    {
      v17 = 0;
      if (sub_2338A9730(a1, &v17, 1, a5, v11 + 11) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 9;
        v16 = 8;
        switch(v17)
        {
          case 0:
            break;
          case 1:
            goto LABEL_30;
          case 2:
            goto LABEL_22;
          case 3:
            goto LABEL_15;
          case 4:
            v15 = 5;
            v16 = 4;
            goto LABEL_30;
          case 5:
            v16 = 5;
            v15 = 5;
            goto LABEL_30;
          case 6:
            v15 = 5;
            v16 = 6;
            goto LABEL_30;
          case 7:
            v16 = 0;
            goto LABEL_28;
          case 8:
            v16 = 1;
LABEL_28:
            v15 = 1;
            goto LABEL_30;
          case 9:
            v15 = 1;
            goto LABEL_13;
          case 10:
            v16 = 7;
            v15 = 7;
            goto LABEL_30;
          case 11:
            goto LABEL_25;
          case 12:
            v16 = 0;
            goto LABEL_25;
          case 13:
            v15 = 5;
LABEL_22:
            v16 = 9;
            goto LABEL_30;
          case 14:
            v15 = 5;
            v16 = 1;
            goto LABEL_30;
          case 15:
            v15 = 6;
LABEL_15:
            v16 = 10;
            goto LABEL_30;
          case 16:
            v15 = 6;
LABEL_13:
            v16 = 2;
            goto LABEL_30;
          case 17:
            v16 = 3;
            v15 = 3;
            goto LABEL_30;
          case 18:
            v16 = 4;
LABEL_25:
            v15 = 4;
            goto LABEL_30;
          case 19:
            v16 = 11;
            v15 = 11;
            goto LABEL_30;
          case 20:
            v16 = 6;
            v15 = 6;
LABEL_30:
            v13 = 1 << v16;
            v14 = (1 << v15) | (1 << v16);
            break;
          default:
            v13 = 0;
            v14 = 0;
            v17 = 0;
            break;
        }
      }

      else
      {
        v13 = 0;
        v14 = 0;
      }

      sub_2338CF9AC(a1, v13, v14);
    }
  }
}

void sub_2338D038C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a4 + 8);
  v7 = bswap32(v6);
  if (a6)
  {
    v6 = v7;
  }

  *(a1 + 196) = v6;
  if ((*(a3 + 32) & 4) != 0)
  {
    v13 = sub_2338A9B94(a1);
    v10 = sub_2338A9BFC(a3);
    v11 = sub_2338A9B78(a3);
    v12 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 196)];
    sub_2337830C4(v13, v10, v11, v12);
  }
}

void sub_2338D0468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2338D0494(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2338AA0D0(a1, a2, a3, a4, a5, a6);
  v8 = sub_2338A9B94(a1);
  v9 = sub_2338A9BFC(a3);
  v10 = sub_2337854A4(v8, v9, 0);

  v11 = sub_2338A9B78(a3);
  v12 = sub_23378DDE8(v10, v11);

  if (v12)
  {
    v13 = [v12 count] == 0;
  }

  else
  {
    v13 = 1;
  }

  v19 = 0;
  v14 = sub_23386EA2C(v12, &v19);
  v15 = sub_2338A9B78(a3);
  [v10 removeObjectForKey:v15];

  if (v14 != 0xFFFF && !v13)
  {
    if (v14 <= 8)
    {
      v14 = dword_233917960[v14];
    }

    v16 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    v17 = sub_2338A9B78(a3);
    [v10 setObject:v16 forKeyedSubscript:v17];

    v18 = sub_2338A9B78(a3);
    sub_2338ACF60(a1, v18, v14);
  }
}

void sub_2338D0684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  v8 = sub_2338A9B94(a1);
  v6 = sub_2338A9BFC(a3);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:__rev16(v5)];
  sub_2337830C4(v8, v6, *MEMORY[0x277CD2F68], v7);
}

void sub_2338D074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 4);
  if (v6 >= 3)
  {
    LODWORD(v10) = *(a4 + 8);
    v11 = bswap32(v10);
    v10 = a6 ? v11 : v10;
    v22[0] = 0;
    v22[1] = 0;
    v23 = 0;
    if (sub_2338A9730(a1, v22, 20, a5, v10) == 20)
    {
      v12 = v22[0];
      v13 = bswap32(v22[0]);
      if (a6)
      {
        v12 = v13;
      }

      *(a1 + 196) = v12;
      v14 = sub_2338A9B94(a1);
      v15 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 196)];
      sub_2337830C4(v14, @"{MakerPentax}", @"PentaxModelID", v15);

      if (v6 >= 5)
      {
        v16 = bswap32(v23);
        if (a6)
        {
          v17 = v16;
        }

        else
        {
          v17 = v23;
        }

        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v17];
        v19 = sub_2338A9B94(a1);
        v20 = sub_2338A9BFC(a3);
        v21 = sub_2338A9B78(a3);
        sub_2337830C4(v19, v20, v21, v18);
      }
    }
  }
}

__CFString *sub_2338D0924(uint64_t a1, unsigned int a2)
{
  if (a2 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_2789F0D48[a2];
  }
}