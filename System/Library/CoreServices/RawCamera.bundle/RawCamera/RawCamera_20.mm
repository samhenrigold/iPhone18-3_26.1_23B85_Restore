void sub_2338D0944(uint64_t a1)
{
  sub_2338B1F54(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338D0A18(uint64_t a1, uint64_t *a2, void **a3, void **a4)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284934F88;
  sub_2338B21BC(a1 + 24, a2, *a3, *a4);
  *(a1 + 24) = &unk_284934E90;
  *(a1 + 220) = -1;
  return a1;
}

void sub_2338D0AC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284934F88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338D0B3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284934FD8;
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
  v7 = sub_233725614(*a3);
  v8 = 0;
  do
  {
    v9 = sub_23372574C(*a3);
    v11 = *(a1 + 56);
    v10 = *(a1 + 64);
    if (v11 >= v10)
    {
      v13 = *v6;
      v14 = v11 - *v6;
      v15 = v14 >> 3;
      v16 = (v14 >> 3) + 1;
      if (v16 >> 61)
      {
        sub_2337235BC();
      }

      v17 = v10 - v13;
      if (v17 >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        sub_233723798(v6, v18);
      }

      *(8 * v15) = v9;
      v12 = 8 * v15 + 8;
      memcpy(0, v13, v14);
      v19 = *(a1 + 48);
      *(a1 + 48) = 0;
      *(a1 + 56) = v12;
      *(a1 + 64) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v11 = v9;
      v12 = (v11 + 1);
    }

    *(a1 + 56) = v12;
    ++v8;
  }

  while (v8 <= v7);
  return a1;
}

void sub_2338D0CF0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

RAWOpcodeMapPolynomial *sub_2338D0D1C(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 12)];
  [v2 setObject:v3 forKeyedSubscript:@"Top"];

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 16)];
  [v2 setObject:v4 forKeyedSubscript:@"Left"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 20)];
  [v2 setObject:v5 forKeyedSubscript:@"Bottom"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 24)];
  [v2 setObject:v6 forKeyedSubscript:@"Right"];

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
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:*v12];
    [v11 addObject:v14];

    ++v12;
  }

  [v2 setObject:v11 forKeyedSubscript:@"Coefficients"];
  v15 = [[RAWOpcodeMapPolynomial alloc] initWithArguments:v2];

  return v15;
}

void *sub_2338D0FAC(void *a1)
{
  *a1 = &unk_284934FD8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2338D0FFC(void *a1)
{
  *a1 = &unk_284934FD8;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_2338D1074(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284935168, 0);
    if (v11)
    {
      sub_2338D1674(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338D1154(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v9 = __dynamic_cast(a1, &unk_28492EBB0, &unk_284935168, 0);
    if (v9)
    {
      sub_2338D177C(v9, v10, v11, a4, v12, a6);
    }
  }
}

void sub_2338D1218(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338D1C74();
}

void sub_2338D12AC(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
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
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/%@/%@", @"SamsungThumbnail", @"PreviewImageStart"];
  v14 = sub_233740FAC(v12, v13);

  v15 = sub_2338A9C18(a1);
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"IFD0/Exif/Makernote/%@/%@", @"SamsungThumbnail", @"PreviewImageLength"];
  v17 = sub_233740FAC(v15, v16);

  memset(v23, 0, sizeof(v23));
  sub_2338B0B1C(a1, a2, &v22);
  LODWORD(v18) = [v14 intValue];
  v19 = [v17 intValue];
  sub_233726998(&v20, &v19);
  sub_2338A820C(a1, &v18, &v20, v11, &v21);
  sub_2338AFE60(a1, @"IFD1/SubIFD0", &v18);
  if (v22)
  {
    sub_233753C74(v23, &v22);
  }

  if (v21)
  {
    sub_233753C74(v23, &v21);
  }

  if (v18)
  {
    sub_233753C74(v23, &v18);
  }

  sub_2338A86B8(v23, a2, a3);
  if (*(&v18 + 1))
  {
    sub_2337239E8(*(&v18 + 1));
  }

  if (*(&v21 + 1))
  {
    sub_2337239E8(*(&v21 + 1));
  }

  if (*(&v22 + 1))
  {
    sub_2337239E8(*(&v22 + 1));
  }

  *&v22 = v23;
  sub_233723948(&v22);
}

void sub_2338D150C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void **a16, std::__shared_weak_count *a17, char a18)
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

uint64_t sub_2338D15D0(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  sub_2338ADD58(a1, v10, word_284935010, 0, a5 + a3, a6);
  (*(*a1 + 160))(a1);

  return 1;
}

void sub_2338D1674(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

    sub_2338ADD58(a1, v14, word_2789F0DC0, v17, a5, a6);

    v11 = v18;
  }
}

void sub_2338D177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (*(a4 + 4) == 1)
  {
    v7 = bswap32(*(a4 + 8)) >> 16;
    if (a6)
    {
      v8 = v7;
    }

    else
    {
      v8 = *(a4 + 8);
    }

    v13 = sub_2338A9B94(a1);
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    v10 = *MEMORY[0x277CD2F50];
    sub_2337830C4(v13, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68], v9);

    v14 = sub_2338D18B4(v11, v8);
    if (v14)
    {
      v12 = sub_2338A9B94(a1);
      sub_2337830C4(v12, v10, *MEMORY[0x277CD2F78], v14);
    }
  }
}

id sub_2338D18B4(uint64_t a1, uint64_t a2)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v3 = sub_2338E9010(@"samsung");
  if (!v3)
  {
    goto LABEL_25;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", a2];
  v5 = sub_23378DDE8(v3, v4);

  for (i = 0; ; i = v29 + 1)
  {
    v29 = i;
    if (i >= [v5 count])
    {
      break;
    }

    v7 = sub_23386EAC4(v5, &v29);
    if ([v7 count] != 5)
    {
      goto LABEL_21;
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

      HIBYTE(v24) = v15;
      if (v15)
      {
        memmove(&__dst, v14, v15);
      }

      *(&__dst + v16) = 0;
      v17 = SHIBYTE(v24);
      if (SHIBYTE(v24) < 0)
      {
        sub_233731FB8(__p, __dst, *(&__dst + 1));
      }

      else
      {
        *__p = __dst;
        v26 = v24;
      }

      *&v27 = v9;
      *(&v27 + 1) = v10;
      *&v28 = v11;
      *(&v28 + 1) = v13;
      v18 = v31;
      if (v31 >= v32)
      {
        v31 = sub_2338BAFB4(&v30, __p);
        if (SHIBYTE(v26) < 0)
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

LABEL_17:
        operator delete(__dst);
        goto LABEL_20;
      }

      v19 = *__p;
      *(v31 + 16) = v26;
      *v18 = v19;
      __p[1] = 0;
      v26 = 0;
      __p[0] = 0;
      v20 = v28;
      *(v18 + 24) = v27;
      *(v18 + 40) = v20;
      v31 = v18 + 56;
      if (v17 < 0)
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
    v21 = 0;
  }

  else
  {
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
  }

  __p[0] = &v30;
  sub_2338BB644(__p);

  return v21;
}

void sub_2338D1BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  __p = &a24;
  sub_2338BB644(&__p);
  _Unwind_Resume(a1);
}

void *sub_2338D1D10(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284935190;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_284935098;
  return a1;
}

void sub_2338D1DB0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284935190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338D1E2C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849353C8, 0);
    if (v10)
    {
      sub_2338D33A4(v10, v11, a3, a4, v12, a6);
    }
  }
}

void sub_2338D1EF8(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849353C8, 0);
    if (v11)
    {
      sub_2338D348C(v11, v12, a3, a4, a5, v6);
    }
  }
}

void sub_2338D1FD8(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338D38D0();
}

void sub_2338D206C(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v8 = sub_233875D18(v2, *MEMORY[0x277CD3038], @"LensModel");

  v3 = sub_2338A9B94(a1);
  v4 = *MEMORY[0x277CD2F50];
  v5 = sub_2338BD598(v3, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68]);

  if (v5)
  {
    v6 = sub_2338D2214(a1, [v5 intValue]);
    if (sub_2338A818C(v6, v8, 0))
    {
      v7 = sub_2338A9B94(a1);
      sub_2338AE980(v7, v4, *MEMORY[0x277CD2F78]);
    }

    else
    {
      v7 = sub_2338A9B94(a1);
      sub_2337830C4(v7, v4, *MEMORY[0x277CD2F78], v6);
    }
  }

  sub_2338AF5B0(a1);
}

id sub_2338D2214(uint64_t a1, uint64_t a2)
{
  v83 = 0;
  v84 = 0;
  v85 = 0;
  if (a2 != 0xFFFF || (sub_2338A9B94(a1), v3 = objc_claimAutoreleasedReturnValue(), sub_233875D18(v3, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F78]), v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    v5 = sub_2338E9010(@"sony");
    v75 = v5;
    if (!v5)
    {
      goto LABEL_28;
    }

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", a2];
    v7 = sub_23378DDE8(v5, v6);

    for (i = 0; ; i = v82 + 1)
    {
      v82 = i;
      if (i >= [v7 count])
      {
        break;
      }

      v9 = sub_23386EAC4(v7, &v82);
      if ([v9 count] != 5)
      {
        goto LABEL_24;
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

        HIBYTE(v77) = v17;
        if (v17)
        {
          memmove(&__dst, v16, v17);
        }

        *(&__dst + v18) = 0;
        v19 = SHIBYTE(v77);
        if (SHIBYTE(v77) < 0)
        {
          sub_233731FB8(__p, __dst, *(&__dst + 1));
        }

        else
        {
          *__p = __dst;
          v79 = v77;
        }

        *&v80 = v11;
        *(&v80 + 1) = v12;
        *&v81 = v13;
        *(&v81 + 1) = v15;
        v20 = v84;
        if (v84 >= v85)
        {
          v84 = sub_2338BAFB4(&v83, __p);
          if (SHIBYTE(v79) < 0)
          {
            operator delete(__p[0]);
            if ((v19 & 0x80000000) == 0)
            {
              goto LABEL_22;
            }
          }

          else if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_22;
          }

LABEL_19:
          operator delete(__dst);
        }

        else
        {
          v21 = *__p;
          *(v84 + 16) = v79;
          *v20 = v21;
          __p[1] = 0;
          v79 = 0;
          __p[0] = 0;
          v22 = v81;
          *(v20 + 24) = v80;
          *(v20 + 40) = v22;
          v84 = v20 + 56;
          if (v19 < 0)
          {
            goto LABEL_19;
          }
        }

LABEL_22:
        v5 = v75;
      }

LABEL_24:
    }

LABEL_28:
    if (v84 - v83 == 56)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
      goto LABEL_93;
    }

    if ((0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3)) < 2)
    {
      v4 = 0;
LABEL_93:

      goto LABEL_94;
    }

    v23 = sub_2338B0E5C(a1);
    v24 = sub_2338A9B94(a1);
    v25 = sub_233739994(v24, *MEMORY[0x277CD2F50], 0);

    v26 = sub_233740FAC(v23, *MEMORY[0x277CD3088]);
    v27 = sub_233740FAC(v23, *MEMORY[0x277CD30E8]);
    v28 = sub_23378DDE8(v23, *MEMORY[0x277CD2F70]);
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
      v71 = v27;
      v72 = v25;
      v70 = v33;
      [v26 doubleValue];
      v35 = v34;
      [v27 doubleValue];
      v37 = exp2(v36 * 0.5);
      v38 = sub_233755CB8(0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3));
      v40 = v83;
      if ((0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3)) >= 2)
      {
        v68 = log(v35);
        v41 = 0;
        v42 = 0;
        v43 = 999999999.0;
        v44 = 1;
        v73 = v37;
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
          if (v32 > 0.0 && vabdd_f64(v32, *&v80) > 0.9)
          {
            goto LABEL_72;
          }

          if (v31 > 0.0 && vabdd_f64(v31, *(&v80 + 1)) > 0.9)
          {
            goto LABEL_72;
          }

          if (v35 < *&v80 + -0.9 || v35 > *(&v80 + 1) + 0.9)
          {
            goto LABEL_72;
          }

          if (v37 <= 0.0)
          {
            break;
          }

          if (v37 < *&v81 + -0.15 || v37 > *(&v81 + 1) + 0.15)
          {
            goto LABEL_72;
          }

          if (*&v80 != *(&v80 + 1) && *&v81 != *(&v81 + 1))
          {
            v69 = v43;
            v53 = log(*&v81);
            v54 = log(v50) - v53;
            v55 = log(*(&v49 + 1));
            v56 = log(*&v49);
            v57 = v53 + v54 / (v55 - v56) * (v68 - v56);
            v37 = v73;
            v39 = exp(v57);
            v43 = v69;
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

            goto LABEL_67;
          }

LABEL_71:
          v37 = v73;
LABEL_72:
          if (SHIBYTE(v79) < 0)
          {
            v63 = v43;
            operator delete(__p[0]);
            v43 = v63;
          }

          ++v44;
          v40 = v83;
          v41 += 56;
          if (v44 >= 0x6DB6DB6DB6DB6DB7 * ((v84 - v83) >> 3))
          {
            goto LABEL_77;
          }
        }

        v58 = v43;
LABEL_67:
        if (v79 >= 0)
        {
          v61 = __p;
        }

        else
        {
          v61 = __p[0];
        }

        v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:v61];
        [v38 addObject:v62];

        v43 = v58;
        goto LABEL_71;
      }

      v42 = 0;
LABEL_77:
      if ([v38 count])
      {
        if (v42)
        {
          v64 = v42;
        }

        else
        {
          v64 = &stru_284938540;
        }

        v4 = [MEMORY[0x277CCAB68] stringWithString:v64];
        for (j = 0; ; j = __p[0] + 1)
        {
          __p[0] = j;
          if (j >= [v38 count])
          {
            break;
          }

          v66 = sub_23386E0B8(v38, __p);
          if ([v4 length])
          {
            if (!v42 || ([v66 isEqualToString:v42] & 1) == 0)
            {
              [v4 appendFormat:@" or %@", v66];
            }
          }

          else
          {
            [v4 appendString:v66];
          }
        }

        v5 = v75;
        v27 = v71;
        v25 = v72;
        v33 = v70;
        goto LABEL_92;
      }

      v5 = v75;
      v27 = v71;
      v33 = v70;
    }

    v4 = v33;
LABEL_92:

    goto LABEL_93;
  }

LABEL_94:
  __p[0] = &v83;
  sub_2338BB644(__p);

  return v4;
}

void sub_2338D2A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, _Unwind_Exception *exception_object, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  __p = &a34;
  sub_2338BB644(&__p);
  _Unwind_Resume(a1);
}

void sub_2338D2C1C(uint64_t a1)
{
  v2 = sub_2338A9B94(a1);
  v3 = *MEMORY[0x277CD2F50];
  v8 = v2;
  v4 = sub_2338AE880(v2, *MEMORY[0x277CD2F50], @"ImageStabilization");

  if (v4)
  {
    v9 = sub_2338A9B94(a1);
    v5 = sub_2338AE900(v9, v3, @"ImageStabilization");

    if (v5)
    {
      v6 = 3;
    }

    else
    {
      v6 = 0;
    }

    v10 = sub_2338A9B94(a1);
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v6];
    sub_2337830C4(v10, v3, @"ImageStabilization", v7);
  }
}

BOOL sub_2338D2D5C(uint64_t a1)
{
  v1 = sub_2338A9B94(a1);
  v2 = sub_233875D18(v1, *MEMORY[0x277CD3490], *MEMORY[0x277CD34B0]);

  v3 = sub_2338BA75C(v2, @"DSLR-A100", 0) != 0;
  return v3;
}

BOOL sub_2338D2DF4(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v14 = 0;
  v15[0] = 0;
  *(v15 + 5) = 0;
  v11 = sub_2338A9730(a1, &v14, 20, a5, a3);
  if (v11 == 20)
  {
    if (v14 ^ 0x43534420594E4F53 | LOWORD(v15[0]) ^ 0x20)
    {
      v12 = a3;
    }

    else
    {
      v12 = a3 + 12;
    }

    sub_2338ADD58(a1, v10, word_2849351D0, v12, a5, a6);
    (*(*a1 + 160))(a1);
  }

  return v11 == 20;
}

void sub_2338D2F34(uint64_t a1)
{
  v15 = sub_2338A9B94(a1);
  v2 = sub_2338AE880(v15, @"{PictStyleSetting}", @"SceneMode");

  if (v2)
  {
    v16 = sub_2338A9B94(a1);
    v3 = sub_2338AE900(v16, @"{PictStyleSetting}", @"SceneMode");

    v17 = sub_2338D3264(v4, v3);
    sub_2338AD018(a1, @"{PictureStyle}", @"SceneMode", v17, v3, v3);
  }

  v18 = sub_2338A9B94(a1);
  v5 = sub_2338AE880(v18, @"{PictStyleSetting}", @"ColorMode");

  if (v5)
  {
    v19 = sub_2338A9B94(a1);
    v6 = sub_2338AE900(v19, @"{PictStyleSetting}", @"ColorMode");

    v20 = sub_2338D3284(v7, v6);
    sub_2338AD018(a1, @"{PictureStyle}", @"ColorMode", v20, v6, v6);

    v8 = v6 == 6;
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2338A9B94(a1);
  v21 = sub_233739994(v9, @"{PictureStyle}", 0);

  if (v21)
  {
    if (!sub_233739ACC(v21, @"Monochrome"))
    {
      sub_2338ACF60(a1, @"Monochrome", v8);
    }

    v10 = (*(*a1 + 96))(a1);
    if ((v10 & 0x80000000) == 0)
    {
      v11 = @"{PictureStyle}";
      v12 = sub_2338AD1AC(a1, v10);
      sub_2338AD018(a1, v11, @"PictStyleColorSpace", v12, v10, v10);
    }
  }

  v13 = sub_2338A9B94(a1);
  [v13 removeObjectForKey:@"{PictStyleSetting}"];

  v14 = sub_2338A9B94(a1);
  [v14 removeObjectForKey:@"{PictStyleNormalized}"];
}

__CFString *sub_2338D3264(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x11)
  {
    return 0;
  }

  else
  {
    return off_2789F0E48[a2];
  }
}

__CFString *sub_2338D3284(uint64_t a1, int a2)
{
  if (a2 <= 6)
  {
    v2 = @"Night Portrait";
    v11 = @"Black and White";
    if (a2 != 6)
    {
      v11 = 0;
    }

    if (a2 != 5)
    {
      v2 = v11;
    }

    v12 = @"Landscape";
    v13 = @"Sunset";
    if (a2 != 4)
    {
      v13 = 0;
    }

    if (a2 != 3)
    {
      v12 = v13;
    }

    if (a2 <= 4)
    {
      v2 = v12;
    }

    v6 = @"Standard";
    v14 = @"Vivid";
    v15 = @"Portrait";
    if (a2 != 2)
    {
      v15 = 0;
    }

    if (a2 != 1)
    {
      v14 = v15;
    }

    if (a2)
    {
      v6 = v14;
    }

    v10 = a2 <= 2;
  }

  else
  {
    v2 = @"Night view";
    v3 = @"Autumn Leaves";
    if (a2 != 105)
    {
      v3 = 0;
    }

    if (a2 != 104)
    {
      v2 = v3;
    }

    v4 = @"Deep";
    v5 = @"Ligth";
    if (a2 != 103)
    {
      v5 = 0;
    }

    if (a2 != 102)
    {
      v4 = v5;
    }

    if (a2 <= 103)
    {
      v2 = v4;
    }

    v6 = @"Neutral";
    v7 = @"Clear";
    if (a2 != 101)
    {
      v7 = 0;
    }

    if (a2 != 100)
    {
      v6 = v7;
    }

    v8 = @"Adobe RGB";
    v9 = @"Neutral";
    if (a2 != 12)
    {
      v9 = 0;
    }

    if (a2 != 7)
    {
      v8 = v9;
    }

    if (a2 <= 99)
    {
      v6 = v8;
    }

    v10 = a2 <= 101;
  }

  if (v10)
  {
    return v6;
  }

  else
  {
    return v2;
  }
}

void sub_2338D33A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(v8) = *(a4 + 8);
  v13 = sub_2338A9B94(a1);
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
  v11 = sub_2338A9B78(a3);
  v12 = [MEMORY[0x277CCABB0] numberWithInt:v8];
  sub_2337830C4(v13, v10, v11, v12);
}

void sub_2338D3460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2338D348C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v45[1] = *MEMORY[0x277D85DE8];
  v44 = a2;
  v45[0] = 0;
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

  if (sub_2338A9730(a1, v45, 8, a5, v13) != 8)
  {
    goto LABEL_53;
  }

  if ((v45[0] & 3) > 1)
  {
    v15 = 0;
    if ((v45[0] & 3) == 2)
    {
      v14 = @"FE ";
    }

    else
    {
      v14 = @"E ";
    }
  }

  else if ((v45[0] & 3) != 0)
  {
    v15 = 0;
    v14 = @"DT ";
  }

  else
  {
    v14 = 0;
    v15 = 1;
  }

  v16 = v45[0];
  if ((v45[0] & 0x40) != 0)
  {
    v17 = @"PZ ";
  }

  else
  {
    v17 = 0;
  }

  v18 = HIBYTE(v45[0]);
  if ((v45[0] & 0x400000000000000) != 0)
  {
    v19 = @" ZA";
  }

  else
  {
    v19 = 0;
  }

  v42 = a3;
  v43 = a1;
  v39 = v19;
  v40 = v17;
  v41 = v14;
  if ((HIBYTE(v45[0]) & 3) == 2)
  {
    v20 = 0;
    v21 = @" SAM";
  }

  else
  {
    if ((HIBYTE(v45[0]) & 3) != 1)
    {
      v38 = 0;
      v20 = 1;
      goto LABEL_24;
    }

    v20 = 0;
    v21 = @" SSM";
  }

  v38 = v21;
LABEL_24:
  v22 = v45[0];
  v23 = @" OSS";
  v24 = @" LE";
  if (SLOBYTE(v45[0]) >= 0)
  {
    v23 = 0;
  }

  if ((v45[0] & 0x20) == 0)
  {
    v24 = 0;
  }

  v37 = v24;
  v25 = @" II";
  if ((v45[0] & 8) == 0)
  {
    v25 = 0;
  }

  v35 = v23;
  v36 = v25;
  v26 = BYTE5(v45[0]);
  v27 = BYTE6(v45[0]);
  if (*(v45 + 3))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%d-%dmm ", (BYTE2(v45[0]) & 0xF) + 100 * (BYTE1(v45[0]) & 0xF) + 10 * ((BYTE2(v45[0]) >> 4) + (BYTE1(v45[0]) >> 4)), (BYTE4(v45[0]) & 0xF) + 100 * (BYTE3(v45[0]) & 0xF) + 10 * ((BYTE4(v45[0]) >> 4) + (BYTE3(v45[0]) >> 4))];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%dmm ", (BYTE2(v45[0]) & 0xF) + 100 * (BYTE1(v45[0]) & 0xF) + 10 * ((BYTE2(v45[0]) >> 4) + (BYTE1(v45[0]) >> 4))];
  }
  v28 = ;
  if (BYTE6(v45[0]))
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"F%.1f-%.1f", (((v26 & 0xF) + 10 * (v26 >> 4)) / 10.0), (((v27 & 0xF) + 10 * (v27 >> 4)) / 10.0)];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"F%.1f", (((v26 & 0xF) + 10 * (v26 >> 4)) / 10.0)];
  }
  v29 = ;
  v30 = [MEMORY[0x277CCAB68] stringWithString:@"Sony "];
  v31 = v30;
  if ((v15 & 1) == 0)
  {
    [v30 appendString:v41];
  }

  if ((v16 & 0x40) != 0)
  {
    [v31 appendString:v40];
  }

  [v31 appendString:v28];
  [v31 appendString:v29];
  if ((v18 & 4) != 0)
  {
    [v31 appendString:v39];
  }

  if ((v20 & 1) == 0)
  {
    [v31 appendString:v38];
  }

  if (v22 < 0)
  {
    [v31 appendString:v35];
  }

  if ((v22 & 0x20) != 0)
  {
    [v31 appendString:v37];
  }

  if ((v22 & 8) != 0)
  {
    [v31 appendString:v36];
  }

  if ([v31 length])
  {
    v32 = sub_2338A9B94(v43);
    v33 = sub_2338A9BFC(v42);
    v34 = sub_2338A9B78(v42);
    sub_2337830C4(v32, v33, v34, v31);
  }

LABEL_53:
}

void *sub_2338D396C(void *a1, uint64_t *a2, void **a3, void **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2849353F0;
  sub_2338B21BC((a1 + 3), a2, *a3, *a4);
  a1[3] = &unk_2849352F8;
  return a1;
}

void sub_2338D3A0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2849353F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338D3A88(uint64_t a1, unsigned int a2)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37678[0];
  v6 = (*(*a1 + 120))(a1);
  sub_2338D3B5C(v4, v5, v6);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return sub_23373C0BC(a1, a2);
}

void sub_2338D3B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D3B5C(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  sub_2337BEBCC(v5, a3, &__p);
  v6 = sub_233735E3C(a1 + 24, &__p);
  if ((a1 + 32) != v6)
  {
    sub_23384C194((a1 + 24), v6);
    sub_2337BF040((v6 + 4));
    operator delete(v6);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2338D3BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_2338D3C20(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"methodNumber"])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = (*(*a1 + 120))(a1);
LABEL_5:
    v6 = [v4 numberWithInt:v5];
LABEL_6:
    v7 = v6;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"sushiMode"])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = sub_233739B84(a1);
    goto LABEL_5;
  }

  if ([v3 isEqualToString:@"isV4Faux"])
  {
    v7 = MEMORY[0x277CBEC28];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"cameraMake"])
  {
    (*(*a1 + 216))(&__p, a1);
    v9 = sub_233729FBC(&__p);
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"cameraModel"])
  {
    (*(*a1 + 224))(&__p, a1);
    v9 = sub_233729FBC(&__p);
LABEL_16:
    v7 = v9;
    if (v29 < 0)
    {
      operator delete(__p);
    }

    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"isDNGFile"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = (*(*a1 + 176))(a1);
LABEL_22:
    v6 = [v10 numberWithBool:v11];
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"isDNGMethod"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = (*(*a1 + 128))(a1);
    goto LABEL_22;
  }

  if ([v3 isEqualToString:@"iso"])
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = (*(*a1 + 256))(a1);
LABEL_25:
    v6 = [v12 numberWithUnsignedInt:v13];
    goto LABEL_6;
  }

  if ([v3 isEqualToString:off_27DE37738[0]])
  {
    v4 = MEMORY[0x277CCABB0];
    v5 = (*(*a1 + 816))(a1);
    goto LABEL_5;
  }

  if ([v3 isEqualToString:@"whiteLevelThresholdMultiplier"])
  {
    v14 = MEMORY[0x277CCABB0];
    (*(*a1 + 848))(a1);
LABEL_30:
    v6 = [v14 numberWithDouble:?];
    goto LABEL_6;
  }

  if ([v3 isEqualToString:off_27DE37670[0]])
  {
    __p = (*(*a1 + 560))(a1);
    v6 = sub_2338E6B50(&__p);
    goto LABEL_6;
  }

  if ([v3 isEqualToString:off_27DE37698[0]])
  {
    __p = (*(*a1 + 408))(a1);
    v6 = sub_2338E6B50(&__p);
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"evenSensorSize"])
  {
    __p = ((*(*a1 + 408))(a1) & 0xFFFFFFFEFFFFFFFELL);
    v6 = sub_2338E6B50(&__p);
    goto LABEL_6;
  }

  if ([v3 isEqualToString:off_27DE376A0[0]])
  {
    __p = (*(*a1 + 432))(a1);
    v28 = v15;
    v6 = sub_2337D891C(&__p);
    goto LABEL_6;
  }

  if ([v3 isEqualToString:off_27DE376A8[0]])
  {
    __p = (*(*a1 + 456))(a1);
    v28 = v16;
    v6 = sub_2337D891C(&__p);
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"rawDataSize"])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:(*(*a1 + 344))(a1)];
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"longExposureNoiseReductionEnabled"])
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = (*(*a1 + 248))(a1);
    goto LABEL_22;
  }

  if ([v3 isEqualToString:@"focalLength"])
  {
    v17 = MEMORY[0x277CCABB0];
    (*(*a1 + 160))(&v25, a1);
    v18 = v25;
    sub_23372A488(&__p, "IFD0:EXIF");
    (*(*v18 + 304))(v18, &__p);
    v19 = [v17 numberWithDouble:?];
LABEL_51:
    v7 = v19;
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      sub_2337239E8(v26);
    }

    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"exifPixelXDimension"])
  {
    v20 = MEMORY[0x277CCABB0];
    (*(*a1 + 160))(&v25, a1);
    v21 = v25;
    sub_23372A488(&__p, "IFD0:EXIF");
    v19 = [v20 numberWithUnsignedInt:{(*(*v21 + 312))(v21, &__p)}];
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"exifPixelYDimension"])
  {
    v22 = MEMORY[0x277CCABB0];
    (*(*a1 + 160))(&v25, a1);
    v23 = v25;
    sub_23372A488(&__p, "IFD0:EXIF");
    v19 = [v22 numberWithUnsignedInt:{(*(*v23 + 320))(v23, &__p)}];
    goto LABEL_51;
  }

  if ([v3 isEqualToString:@"bitsPerSample"] || objc_msgSend(v3, "isEqualToString:", @"sensorBitDepth"))
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = (*(*a1 + 576))(a1);
    goto LABEL_25;
  }

  if ([v3 isEqualToString:@"subsampling"])
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = (*(*a1 + 544))(a1);
    goto LABEL_25;
  }

  if ([v3 isEqualToString:off_27DE37708[0]])
  {
    v14 = MEMORY[0x277CCABB0];
    (*(*a1 + 896))(a1);
    goto LABEL_30;
  }

  if ([v3 isEqualToString:off_27DE376D0[0]])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:(*(*a1 + 864))(a1)];
    goto LABEL_6;
  }

  if ([v3 isEqualToString:@"rn"])
  {
    v14 = MEMORY[0x277CCABB0];
    (*(*a1 + 2664))(a1, 0, 0);
    goto LABEL_30;
  }

  if ([v3 isEqualToString:@"rnp"])
  {
    v14 = MEMORY[0x277CCABB0];
    (*(*a1 + 2672))(a1);
    goto LABEL_30;
  }

  (*(*a1 + 160))(&__p, a1);
  v7 = (*(*__p + 32))(__p, v3);
  if (v28)
  {
    sub_2337239E8(v28);
  }

  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

LABEL_7:

  return v7;
}

void sub_2338D46F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17)
{
  if (a13)
  {
    sub_2337239E8(a13);
  }

  _Unwind_Resume(a1);
}

double sub_2338D47A8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE375F8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D48C8;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D48B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338D48D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*a1 + 72))(&v9, a1);
  v7 = sub_23386E124(v9, v5, v6);
  if (v10)
  {
    sub_2337239E8(v10);
  }

  return v7;
}

void sub_2338D4980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t (*sub_2338D49A8(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37600[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D4E7C;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D4AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D4AC0(uint64_t a1, void *a2, int a3, void *a4))(void, void, void, void, void)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2338E6C40;
    v24[3] = &unk_2789EEF98;
    v12 = v8;
    v25 = v12;
    sub_23386DB28(a1, v7, v24, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = [v14 objectAtIndexedSubscript:0];
      v16 = [v15 intValue];
      v17 = [v14 objectAtIndexedSubscript:1];
      v18 = [v17 intValue];

      v11 = (v16 | (v18 << 32));
    }

    else
    {
      v11 = 0;
    }

    if (v29)
    {
      sub_2337239E8(v29);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v19 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v27);
    v20 = (v19 + 7);
    v27[0] = sub_2338E6CD8;
    v27[1] = v11;
    if (v27 != v19 + 7)
    {
      v21 = *v20;
      if (*v20)
      {
        p_p = 0;
        v29 = 0;
        v21(2, v20, &p_p, 0, 0);
        v27[0](2, v27, v20, 0, 0);
        (p_p)(2, &p_p, v27, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        v19[7] = sub_2338E6CD8;
        v19[8] = v11;
        v27[0] = 0;
      }
    }

    sub_2337BF090(v27);
  }

  else
  {
    v10 = sub_2338E6C8C((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338D4DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v29);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2338D4E84(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37608[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D4FA4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D4F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D4FAC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37610[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D50C4;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D50AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D50CC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37618[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D51E4;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D51CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D51EC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37620[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D530C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D52F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D5314(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37628[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D542C;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D5414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D5434(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37630[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D58B8;
  v7[3] = &unk_2789F0EF8;
  v7[4] = a1;
  v5 = sub_2338D554C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D554C(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2338E6D98;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2338E6E30;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2338E6E30;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2338E6DE4((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338D5828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2338D58C0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37638[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D59E0;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D59C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D59E8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37640[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D5B00;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D5B08(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37648[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D5C20;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D5C28(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37650[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D5D48;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D5D50(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37658[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D61C8;
  v7[3] = &unk_2789F0F18;
  v7[4] = a1;
  v5 = sub_2338D5E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D5E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D5E68(uint64_t a1, void *a2, int a3, void *a4))(void, void, void, void, void)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2338E6EF8;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[0] = sub_2338E6F90;
    v23[1] = v11;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        v15[7] = sub_2338E6F90;
        v15[8] = v11;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2338E6F44((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338D6138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2338D61D0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37660[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D62F0;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D62D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D62F8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37668[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6418;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D6420(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37670[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6538;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D6540(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37678[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6658;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D6660(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37680[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6C70;
  v7[3] = &unk_2789F0F38;
  v7[4] = a1;
  sub_2338D6778(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D6760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D6778(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a2;
  v30 = a4;
  sub_2337BEBCC(v9, a3, &v40);
  v10 = sub_233735E3C(a1 + 24, &v40);
  if (a1 + 32 == v10)
  {
    LOBYTE(__p) = 0;
    v39 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2338E7050;
    v33[3] = &unk_2789EEF98;
    v29 = v30;
    v34 = v29;
    sub_23386DB28(a1, v9, v33, &v35);
    if (v35)
    {
      v12 = sub_23386FD70(v35);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v13 = 0;
      __src = 0uLL;
      v32 = 0;
      while (v13 < [v12 count])
      {
        v14 = [v12 objectAtIndexedSubscript:v13];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v27, "RawCameraException");
          __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v15 = [v14 longLongValue];
        v16 = __src.n128_u64[1];
        if (__src.n128_u64[1] >= v32)
        {
          v18 = __src.n128_u64[0];
          v19 = __src.n128_u64[1] - __src.n128_u64[0];
          v20 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 2;
          v21 = v20 + 1;
          if ((v20 + 1) >> 62)
          {
            sub_2337235BC();
          }

          v22 = v32 - __src.n128_u64[0];
          if ((v32 - __src.n128_u64[0]) >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
          v24 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v23)
          {
            v24 = v21;
          }

          if (v24)
          {
            sub_2337235D4(&__src, v24);
          }

          *(4 * v20) = v15;
          v17 = 4 * v20 + 4;
          memcpy(0, v18, v19);
          v25 = __src.n128_u64[0];
          __src.n128_u64[0] = 0;
          __src.n128_u64[1] = v17;
          v32 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *__src.n128_u64[1] = v15;
          v17 = v16 + 4;
        }

        __src.n128_u64[1] = v17;

        ++v13;
      }

      sub_233790794(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }
    }

    if (v36)
    {
      sub_2337239E8(v36);
    }

    if ((v39 & 1) == 0)
    {
      (v29)[2](&__src);
      sub_233767718(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }

      if ((v39 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    __src.n128_u64[0] = &v40;
    v26 = sub_2337BEEAC((a1 + 24), &v40, &unk_233905F1C, &__src, &v35);
    sub_2338E70D8((v26 + 7), &__p);
    if ((v39 & 1) == 0)
    {
LABEL_40:
      sub_233728FA8();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233729070(a5, __p, v38, (v38 - __p) >> 2);
    if (v39 == 1 && __p)
    {
      v38 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_2338E7224((v10 + 56));
    if (!v11)
    {
      sub_2337BEE3C();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233729070(a5, *v11, v11[1], (v11[1] - *v11) >> 2);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }
}

void sub_2338D6B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a26 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_2338D6C70(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2338D6C7C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37688[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6D94;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D6D9C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37690[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6EB4;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D6EBC(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37698[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D6FD4;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D6FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D6FDC(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376A0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D754C;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D70E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D70FC(uint64_t a1, void *a2, uint64_t (*a3)(void, void, void, void, void), void *a4))(void, void, void, void, void)
{
  v37 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v30 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v8 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v8)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2338E7450;
    v31[3] = &unk_2789EEF98;
    v28 = v30;
    v32 = v28;
    sub_23386DB28(a1, v7, v31, &p_p);
    v12 = p_p;
    if (p_p)
    {
      v13 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v27 = [v13 objectAtIndexedSubscript:0];
      v14 = [v27 intValue];
      v15 = [v13 objectAtIndexedSubscript:1];
      v29 = [v15 intValue];
      v16 = [v13 objectAtIndexedSubscript:2];
      v17 = [v16 intValue];
      v18 = [v13 objectAtIndexedSubscript:3];
      v19 = [v18 intValue];

      a3 = (v17 | (v19 << 32));
    }

    else
    {
      v14 = 0;
      v29 = v11;
    }

    if (v36)
    {
      sub_2337239E8(v36);
    }

    if (!v12)
    {
      v20 = v28[2]();
      v14 = v20;
      a3 = v21;
      v29 = HIDWORD(v20);
    }

    p_p = &__p;
    v22 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v34);
    v23 = (v22 + 7);
    v10 = (v14 | (v29 << 32));
    v34[1] = v10;
    v34[2] = a3;
    v34[0] = sub_2338E74E8;
    if (v34 != v22 + 7)
    {
      v24 = *v23;
      if (*v23)
      {
        p_p = 0;
        v36 = 0;
        v24(2, v23, &p_p, 0, 0);
        v34[0](2, v34, v23, 0, 0);
        (p_p)(2, &p_p, v34, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        v22[8] = v10;
        v22[9] = a3;
        v22[7] = sub_2338E74E8;
        v34[0] = 0;
      }
    }

    sub_2337BF090(v34);
  }

  else
  {
    v9 = sub_2338E749C((v8 + 56));
    if (!v9)
    {
      sub_2337BEE3C();
    }

    v10 = *v9;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_2338D7484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  __cxa_free_exception(v30);

  if (a29)
  {
    sub_2337239E8(a29);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t (*sub_2338D7554(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376A8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D7674;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D765C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D767C(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376B0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D7794;
  v7[3] = &unk_2789F0ED8;
  v7[4] = a1;
  v5 = sub_2338D4AC0(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D777C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D779C(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376B8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D78BC;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D78A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D78C4(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376C0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D79E4;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D79CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (*sub_2338D79EC(uint64_t a1))(void, void, void, void, void)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376C8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D7B0C;
  v7[3] = &unk_2789F0F58;
  v7[4] = a1;
  v5 = sub_2338D70FC(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D7AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D7B14(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376D0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D7C2C;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D7C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D7C34(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v7);
  v4 = v7;
  v5 = off_27DE376D8[0];
  v6 = (*(*a1 + 120))(a1);
  sub_2338D7D08(v4, v5, v6, &unk_284935430, a2);
  if (v8)
  {
    sub_2337239E8(v8);
  }
}

void sub_2338D7CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D7D08(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a2;
  v30 = a4;
  sub_2337BEBCC(v9, a3, &v40);
  v10 = sub_233735E3C(a1 + 24, &v40);
  if (a1 + 32 == v10)
  {
    LOBYTE(__p) = 0;
    v39 = 0;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2338E75B0;
    v33[3] = &unk_2789EEF98;
    v29 = v30;
    v34 = v29;
    sub_23386DB28(a1, v9, v33, &v35);
    if (v35)
    {
      v12 = sub_23386FD70(v35);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v13 = 0;
      __src = 0uLL;
      v32 = 0;
      while (v13 < [v12 count])
      {
        v14 = [v12 objectAtIndexedSubscript:v13];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v27, "RawCameraException");
          __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v15 = [v14 longLongValue];
        v16 = __src.n128_u64[1];
        if (__src.n128_u64[1] >= v32)
        {
          v18 = __src.n128_u64[0];
          v19 = __src.n128_u64[1] - __src.n128_u64[0];
          v20 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 2;
          v21 = v20 + 1;
          if ((v20 + 1) >> 62)
          {
            sub_2337235BC();
          }

          v22 = v32 - __src.n128_u64[0];
          if ((v32 - __src.n128_u64[0]) >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
          v24 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v23)
          {
            v24 = v21;
          }

          if (v24)
          {
            sub_2337235D4(&__src, v24);
          }

          *(4 * v20) = v15;
          v17 = 4 * v20 + 4;
          memcpy(0, v18, v19);
          v25 = __src.n128_u64[0];
          __src.n128_u64[0] = 0;
          __src.n128_u64[1] = v17;
          v32 = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *__src.n128_u64[1] = v15;
          v17 = v16 + 4;
        }

        __src.n128_u64[1] = v17;

        ++v13;
      }

      sub_233790794(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }
    }

    if (v36)
    {
      sub_2337239E8(v36);
    }

    if ((v39 & 1) == 0)
    {
      (v29)[2](&__src);
      sub_233767718(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }

      if ((v39 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    __src.n128_u64[0] = &v40;
    v26 = sub_2337BEEAC((a1 + 24), &v40, &unk_233905F1C, &__src, &v35);
    sub_2338E7638((v26 + 7), &__p);
    if ((v39 & 1) == 0)
    {
LABEL_40:
      sub_233728FA8();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233729070(a5, __p, v38, (v38 - __p) >> 2);
    if (v39 == 1 && __p)
    {
      v38 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_2338E7784((v10 + 56));
    if (!v11)
    {
      sub_2337BEE3C();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233729070(a5, *v11, v11[1], (v11[1] - *v11) >> 2);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }
}

void sub_2338D8104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a26 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_2338D8200(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_2338D820C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376E0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8690;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338D8324(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D830C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D8324(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2338E79B0;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2338E7A48;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2338E7A48;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2338E79FC((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338D8600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338D8698(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE376E8[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8C10;
  v7[3] = &unk_2789F0F98;
  v7[4] = a1;
  sub_2338D87B0(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D8798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338D87B0(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a4;
  sub_2337BEBCC(v11, a3, &__p);
  v13 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v13)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2338E7B10;
    v24[3] = &unk_2789F1040;
    v16 = v12;
    v25 = v16;
    sub_23386DB28(a1, v11, v24, &v28);
    v17 = v28;
    if (v28)
    {
      v18 = sub_23386FD70(v28);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      sub_23373CD80(v18, &p_p);
      v19 = p_p;
      v5 = v32;
      v26[0] = *v33;
      *(v26 + 3) = *&v33[3];
      v6 = v34;
    }

    else
    {
      v19 = 0;
    }

    if (v29)
    {
      sub_2337239E8(v29);
    }

    if (!v17)
    {
      (*(v16 + 2))(&p_p, v16);
      v19 = p_p;
      v5 = v32;
      v26[0] = *v33;
      *(v26 + 3) = *&v33[3];
      v6 = v34;
    }

    p_p = &__p;
    v20 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, &v28);
    v28 = 0;
    *&v29 = 0;
    if (v6 < 0)
    {
      sub_233731FB8(&v29, v19, v5);
    }

    else
    {
      *&v29 = v19;
      *(&v29 + 1) = v5;
      LODWORD(v30) = v26[0];
      *(&v30 + 3) = *(v26 + 3);
      HIBYTE(v30) = v6;
    }

    v21 = (v20 + 7);
    v28 = sub_2338E7BE4;
    if (&v28 != v20 + 7)
    {
      v22 = *v21;
      if (*v21)
      {
        p_p = 0;
        v32 = 0;
        v22(2, v20 + 7, &p_p, 0, 0);
        v28(2, &v28, (v20 + 7), 0, 0);
        (p_p)(2, &p_p, &v28, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v20 + 4) = v29;
        v20[10] = v30;
        v30 = 0;
        v29 = 0uLL;
        v20[7] = sub_2338E7BE4;
        v28 = 0;
      }
    }

    sub_2337BF090(&v28);
    if (v6 < 0)
    {
      sub_233731FB8(a5, v19, v5);
      operator delete(v19);
    }

    else
    {
      *a5 = v19;
      *(a5 + 8) = v5;
      *(a5 + 16) = v26[0];
      *(a5 + 19) = *(v26 + 3);
      *(a5 + 23) = v6;
    }
  }

  else
  {
    v14 = sub_2338E7B98((v13 + 56));
    if (!v14)
    {
      sub_2337BEE3C();
    }

    if (*(v14 + 23) < 0)
    {
      sub_233731FB8(a5, *v14, v14[1]);
    }

    else
    {
      v15 = *v14;
      *(a5 + 16) = v14[2];
      *a5 = v15;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2338D8B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22)
{
  __cxa_free_exception(v24);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338D8C18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE376F0[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8D30;
  v7[3] = &unk_2789F0F98;
  v7[4] = a1;
  sub_2338D87B0(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338D8D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D8D38(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE376F8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8E50;
  v7[3] = &unk_2789F0EF8;
  v7[4] = a1;
  v5 = sub_2338D554C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D8E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D8E58(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37700[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D8F70;
  v7[3] = &unk_2789F0EF8;
  v7[4] = a1;
  v5 = sub_2338D554C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D8F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D8F78(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37708[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9098;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D90A0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37710[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D91B8;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D91A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D91C0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37718[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9310;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5 * (*(*a1 + 896))(a1);
}

void sub_2338D92F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D9318(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37720[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9430;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D9438(uint64_t a1, float *a2)
{
  result = (*(*a1 + 976))(a1);
  if (result == 1)
  {
    v15 = *a2;
    *&v15 = ((((COERCE_FLOAT(*a2) + 0.0) + COERCE_FLOAT(HIDWORD(*a2))) + COERCE_FLOAT(*(a2 + 1))) + COERCE_FLOAT(HIDWORD(*a2))) * 0.25;
    *a2 = vdupq_lane_s32(*&v15, 0);
    return result;
  }

  if (result != 2)
  {
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0.0;
  v7 = 32768.0;
  v8 = 0.0;
  do
  {
    v9 = 0;
    v10 = 1;
    do
    {
      if (v4 == v9)
      {
        goto LABEL_12;
      }

      v11 = a2[v9];
      if (v10)
      {
        v10 = 0;
        v8 = a2[v9];
LABEL_8:
        v6 = a2[v9];
        goto LABEL_12;
      }

      v10 = 0;
      if (v11 >= v8)
      {
        if (v11 > v6)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = a2[v9];
      }

LABEL_12:
      ++v9;
    }

    while (v9 != 4);
    v12 = v6 - v8;
    if ((v6 - v8) < v7)
    {
      v5 = v4;
      v7 = v6 - v8;
    }

    ++v4;
  }

  while (v4 != 4);
  switch(v5)
  {
    case 3:
      v13 = 2;
LABEL_23:
      v14 = 1;
LABEL_24:
      v16 = a2;
      goto LABEL_26;
    case 2:
      v13 = 3;
      goto LABEL_23;
    case 1:
      v13 = 3;
      v14 = 2;
      goto LABEL_24;
  }

  v16 = a2 + 1;
  v13 = 3;
  v14 = 2;
LABEL_26:
  v17 = a2[v13];
  v18 = a2[v14];
  if (*v16 <= v18)
  {
    v19 = *v16;
  }

  else
  {
    v19 = a2[v14];
  }

  if (*v16 > v18)
  {
    v18 = *v16;
  }

  if (v19 > v17)
  {
    v17 = v19;
  }

  if (v18 <= v17)
  {
    v17 = v18;
  }

  v20 = v17 - v12;
  v21 = v12 + v17;
  if (v20 > v5 || v21 < v5)
  {
    a2[v5] = v17;
  }

  return result;
}

uint64_t sub_2338D95D8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37728[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D96F0;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_233801254(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D96D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D96F8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37730[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9810;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_233801254(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D97F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D9818(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37738[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9C9C;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338D9930(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338D9930(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2338E7CF8;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2338E7D90;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2338E7D90;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2338E7D44((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338D9C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2338D9CA4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37740[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9DC4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D9DCC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37748[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338D9EEC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338D9ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338D9EF4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37750[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA044;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5 + (*(*a1 + 936))(a1);
}

void sub_2338DA02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DA04C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37758[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA164;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DA16C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37760[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA284;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA26C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DA28C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37768[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA3AC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DA3B4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37770[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA4D4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DA4DC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37778[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA5FC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DA604(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = off_27DE37780[0];
  v4 = (*(*a1 + 120))(a1);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2338DA730;
  v5[3] = &unk_2789EF130;
  v5[4] = a1;
  sub_2337F5668(v2, v3, v4, v5);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2338DA718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DA738(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37788[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DA858;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DA840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DA860(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = off_27DE37790[0];
  v4 = (*(*a1 + 120))(a1);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2338DA998;
  v5[3] = &unk_2789EF130;
  v5[4] = a1;
  sub_2337F5668(v2, v3, v4, v5);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2338DA980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DA9A0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37798[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DAAB8;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_233801254(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DAAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338DAAC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 120))(a1);
  v5 = a1[39];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 39;
  do
  {
    if (*(v5 + 32) >= v4)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v4));
  }

  while (v5);
  if (v6 == a1 + 39 || v4 < *(v6 + 8))
  {
LABEL_8:
    v12 = 0uLL;
    (*(*a1 + 72))(&v10, a1);
    v7 = sub_23386E1A8(v10, &v12);
    if (v11)
    {
      sub_2337239E8(v11);
    }

    if (!v7)
    {
      sub_2337FC940();
    }

    LODWORD(v10) = (*(*a1 + 120))(a1);
    sub_2338DAC9C((a1 + 38), &v10, &v12);
    if (*(&v12 + 1))
    {
      sub_2337239E8(*(&v12 + 1));
    }
  }

  LODWORD(v12) = (*(*a1 + 120))(a1);
  result = sub_2338DAD04((a1 + 38), &v12);
  v9 = result[1];
  *a2 = *result;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338DAC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DAC9C(uint64_t a1, _DWORD *a2, uint64_t *a3)
{
  v8 = a2;
  v4 = sub_2338E7E58(a1, a2, &unk_233905F1C, &v8);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

uint64_t sub_2338DAD04(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    if (*(v3 + 32) >= v5)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v5));
  }

  while (v3);
  if (v6 == v2 || v5 < *(v6 + 32))
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return v6 + 40;
}

void *sub_2338DADAC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 120))(a1);
  v5 = a1[42];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 42;
  do
  {
    if (*(v5 + 32) >= v4)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v4));
  }

  while (v5);
  if (v6 == a1 + 42 || v4 < *(v6 + 8))
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    (*(*a1 + 72))(&v11, a1);
    v7 = sub_23386F1B8(v11, &v13);
    if (v12)
    {
      sub_2337239E8(v12);
    }

    if (!v7)
    {
      v8 = v14;
      v13 = 0;
      v14 = 0;
      if (v8)
      {
        sub_2337239E8(v8);
      }
    }

    LODWORD(v11) = (*(*a1 + 120))(a1);
    sub_2338DAC9C((a1 + 41), &v11, &v13);
    if (v14)
    {
      sub_2337239E8(v14);
    }
  }

  LODWORD(v13) = (*(*a1 + 120))(a1);
  if (!*sub_2338DAD04((a1 + 41), &v13))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  LODWORD(v13) = (*(*a1 + 120))(a1);
  result = sub_2338DAD04((a1 + 41), &v13);
  v10 = result[1];
  *a2 = *result;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338DAF98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338DAFD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 120))(a1);
  v5 = a1[45];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 45;
  do
  {
    if (*(v5 + 32) >= v4)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v4));
  }

  while (v5);
  if (v6 == a1 + 45 || v4 < *(v6 + 8))
  {
LABEL_8:
    v13 = 0;
    v14 = 0;
    (*(*a1 + 72))(&v11, a1);
    v7 = sub_23386EB30(v11, &v13);
    if (v12)
    {
      sub_2337239E8(v12);
    }

    if (!v7)
    {
      v8 = v14;
      v13 = 0;
      v14 = 0;
      if (v8)
      {
        sub_2337239E8(v8);
      }
    }

    LODWORD(v11) = (*(*a1 + 120))(a1);
    sub_2338DAC9C((a1 + 44), &v11, &v13);
    if (v14)
    {
      sub_2337239E8(v14);
    }
  }

  LODWORD(v13) = (*(*a1 + 120))(a1);
  if (!*sub_2338DAD04((a1 + 44), &v13))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  LODWORD(v13) = (*(*a1 + 120))(a1);
  result = sub_2338DAD04((a1 + 44), &v13);
  v10 = result[1];
  *a2 = *result;
  a2[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338DB1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DB204(uint64_t a1)
{
  (*(*a1 + 72))(&v5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2338DB2E4;
  v4[3] = &unk_2789EF000;
  v4[4] = a1;
  v2 = sub_2337D0E68(v5, off_27DE377A0[0], 0, v4);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v2;
}

void sub_2338DB2CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DB2EC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377A8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DB404;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DB3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DB40C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377B0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DB524;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DB50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DB52C(uint64_t a1)
{
  (*(*a1 + 72))(&v7);
  v2 = v7;
  v3 = (*(*a1 + 120))(a1);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2338DB634;
  v6[3] = &unk_2789EF000;
  v6[4] = a1;
  v4 = sub_2337D0E68(v2, @"honorLensCompensationSuggestions", v3, v6);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  return v4;
}

void sub_2338DB61C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

float sub_2338DB63C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377C0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DBACC;
  v7[3] = &unk_2789F0FB8;
  v7[4] = a1;
  v5 = sub_2338DB75C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DB744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

float sub_2338DB75C(uint64_t a1, void *a2, int a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_2338E7F2C;
    v22[3] = &unk_2789EEF70;
    v12 = v8;
    v23 = v12;
    sub_23386DB28(a1, v7, v22, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      [v14 doubleValue];
      v16 = v15;

      v11 = v16;
    }

    else
    {
      v11 = 0.0;
    }

    if (v27)
    {
      sub_2337239E8(v27);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v17 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v25);
    v18 = (v17 + 7);
    v25[1] = LODWORD(v11);
    v25[0] = sub_2338E7FC0;
    if (v25 != v17 + 7)
    {
      v19 = *v18;
      if (*v18)
      {
        p_p = 0;
        v27 = 0;
        v19(2, v18, &p_p, 0, 0);
        v25[0](2, v25, v18, 0, 0);
        (p_p)(2, &p_p, v25, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v17 + 16) = v11;
        v17[7] = sub_2338E7FC0;
        v25[0] = 0;
      }
    }

    sub_2337BF090(v25);
  }

  else
  {
    v10 = sub_2338E7F74((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338DBA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338DBAD4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE377B8[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DBBEC;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DBBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DBBF4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE377C8[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC200;
  v7[3] = &unk_2789F0FD8;
  v7[4] = a1;
  sub_2338DBD0C(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DBCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DBD0C(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a2;
  v28 = a4;
  sub_2337BEBCC(v9, a3, &v38);
  v10 = sub_233735E3C(a1 + 24, &v38);
  if (a1 + 32 == v10)
  {
    LOBYTE(__p) = 0;
    v37 = 0;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_2338E8088;
    v31[3] = &unk_2789EEF98;
    v27 = v28;
    v32 = v27;
    sub_23386DB28(a1, v9, v31, &v33);
    if (v33)
    {
      v12 = sub_23386FD70(v33);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v13 = 0;
      __src = 0uLL;
      v30 = 0;
      while (v13 < [v12 count])
      {
        v14 = [v12 objectAtIndexedSubscript:v13];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v25 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v25, "RawCameraException");
          __cxa_throw(v25, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v15 = [v14 longLongValue];
        v16 = __src.n128_u64[1];
        if (__src.n128_u64[1] >= v30)
        {
          v18 = __src.n128_u64[0];
          v19 = __src.n128_u64[1] - __src.n128_u64[0];
          v20 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 1;
          if (v20 <= -2)
          {
            sub_2337235BC();
          }

          if (v30 - __src.n128_u64[0] <= v20 + 1)
          {
            v21 = v20 + 1;
          }

          else
          {
            v21 = v30 - __src.n128_u64[0];
          }

          v22 = 0x7FFFFFFFFFFFFFFFLL;
          if (v30 - __src.n128_u64[0] < 0x7FFFFFFFFFFFFFFELL)
          {
            v22 = v21;
          }

          if (v22)
          {
            sub_2337262C8(&__src, v22);
          }

          *(2 * v20) = v15;
          v17 = 2 * v20 + 2;
          memcpy(0, v18, v19);
          v23 = __src.n128_u64[0];
          __src.n128_u64[0] = 0;
          __src.n128_u64[1] = v17;
          v30 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *__src.n128_u64[1] = v15;
          v17 = v16 + 2;
        }

        __src.n128_u64[1] = v17;

        ++v13;
      }

      sub_2338E8110(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }
    }

    if (v34)
    {
      sub_2337239E8(v34);
    }

    if ((v37 & 1) == 0)
    {
      (v27)[2](&__src);
      sub_233767718(&__p, &__src);
      if (__src.n128_u64[0])
      {
        __src.n128_u64[1] = __src.n128_u64[0];
        operator delete(__src.n128_u64[0]);
      }

      if ((v37 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    __src.n128_u64[0] = &v38;
    v24 = sub_2337BEEAC((a1 + 24), &v38, &unk_233905F1C, &__src, &v33);
    sub_2338E818C((v24 + 7), &__p);
    if ((v37 & 1) == 0)
    {
LABEL_41:
      sub_233728FA8();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233728FF4(a5, __p, v36, (v36 - __p) >> 1);
    if (v37 == 1 && __p)
    {
      v36 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v11 = sub_2338E82D8((v10 + 56));
    if (!v11)
    {
      sub_2337BEE3C();
    }

    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
    sub_233728FF4(a5, *v11, v11[1], (v11[1] - *v11) >> 1);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_2338DC104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v27);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a26 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v28 - 89) < 0)
  {
    operator delete(*(v28 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338DC208(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377D0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC320;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DC308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DC328(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE377D8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC448;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DC430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DC450(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE377E0[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC568;
  v7[3] = &unk_2789F0FD8;
  v7[4] = a1;
  sub_2338DBD0C(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DC550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DC570(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37808[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DC688;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DC670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DC690(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37810[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DCC00;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DC790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DC7A8(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>)
{
  v9 = a2;
  v10 = a4;
  sub_2337BEBCC(v9, a3, &v33);
  v11 = sub_233735E3C(a1 + 24, &v33);
  if (a1 + 32 == v11)
  {
    v31[0] = 0;
    v32 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_2338E8504;
    v27[3] = &unk_2789EEF98;
    v13 = v10;
    v28 = v13;
    sub_23386DB28(a1, v9, v27, &v29);
    if (v29)
    {
      v14 = sub_23386FD70(v29);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      while (v15 < [v14 count])
      {
        v16 = [v14 objectAtIndexedSubscript:v15];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v19 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v19, "RawCameraException");
          __cxa_throw(v19, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        [v16 doubleValue];
        v21 = v17;
        sub_2337F207C(&v24, &v21);

        ++v15;
      }

      sub_2337DFC24(&v21, 3u, 3u, &v24);
      sub_2338E858C(v31, &v21);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }
    }

    if (v30)
    {
      sub_2337239E8(v30);
    }

    if ((v32 & 1) == 0)
    {
      (*(v13 + 2))(&v21, v13);
      sub_2338E858C(v31, &v21);
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      if ((v32 & 1) == 0)
      {
        sub_233728FA8();
      }
    }

    v21 = &v33;
    v18 = sub_2337BEEAC((a1 + 24), &v33, &unk_233905F1C, &v21, &v24);
    sub_2338E85D0(v18 + 7, v31);
  }

  v12 = sub_2338E86F8((v11 + 56));
  if (!v12)
  {
    sub_2337BEE3C();
  }

  sub_2337DF874(a5, v12);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_2338DCAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27)
{
  __cxa_free_exception(v30);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  if (a27 == 1 && __p)
  {
    operator delete(__p);
  }

  if (*(v31 - 81) < 0)
  {
    operator delete(*(v31 - 104));
  }

  _Unwind_Resume(a1);
}

void sub_2338DCC08(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37818[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DCD20;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DCD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DCD28(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37820[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DCE40;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DCE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DCE48(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37828[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DCF60;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DCF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338DCF68(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37830[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD080;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338DD068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD088(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37838[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD1A0;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD188(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD1A8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37840[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD2C0;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD2C8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37848[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD3E0;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD3E8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37850[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD500;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD508(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37858[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD620;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD628(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37860[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD740;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD748(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37868[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DD860;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD868(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37870[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DDCEC;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338DD980(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DD968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DD980(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2338E88B8;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2338E8950;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2338E8950;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2338E8904((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338DDC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2338DDCF4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37878[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DDE14;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DDDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DDE1C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37880[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DDF3C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DDF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DDF44(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37888[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE064;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE06C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37890[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE18C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE194(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37898[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE2B4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE2BC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378A0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE3DC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE3E4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378A8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE504;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE50C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378B0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE62C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE634(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378B8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE754;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE75C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378C0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE87C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE864(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE884(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378C8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DE9A4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DE98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DE9AC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378D0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DEACC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DEAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DEAD4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378D8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DEBEC;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DEBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DEBF4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378E0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DED0C;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DECF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DED14(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378E8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DEE34;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DEE1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DEE3C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378F0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DEF5C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DEF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DEF64(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE378F8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF084;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338DF08C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37900[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF1A4;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_23381446C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF1AC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37908[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF2CC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF2D4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37910[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF3F4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF3FC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37918[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF51C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF524(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37920[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF644;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF62C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF64C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37928[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF76C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF774(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37930[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF894;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF89C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37938[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DF9BC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DF9A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DF9C4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37940[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFAE4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFAEC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37948[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFC0C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFBF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFC14(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37950[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFD34;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFD3C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37958[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFE5C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFE44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFE64(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37960[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338DFF84;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338DFF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338DFF8C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37968[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E00AC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E00B4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37970[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E01D4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E01BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E01DC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37978[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E02FC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E02E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0304(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37980[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0424;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E040C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E042C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37988[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E054C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0554(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37990[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0674;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E065C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E067C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37998[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E079C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E07A4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379A0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E08C4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E08AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E08CC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379A8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E09EC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E09D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E09F4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379B0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0B14;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0B1C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379B8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0C3C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0C24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0C44(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379C0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0D64;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0D6C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379C8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0E8C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0E94(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379D0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E0FB4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E0F9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E0FBC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379D8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E10DC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E10C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E10E4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379E0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E1204;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E11EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E120C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379E8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E132C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E1334(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379F0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E1454;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E143C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E145C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE379F8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E157C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E1584(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A00[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E16A4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E168C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E16AC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A08[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E17CC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E17B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E17D4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A10[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E18F4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E18DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E18FC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A18[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E1A1C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E1A24(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A20[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E1EA8;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E1B3C(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1B24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E1B3C(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2338E8A18;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2338E8AB0;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2338E8AB0;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2338E8A64((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338E1E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338E1EB0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A28[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2334;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E1FC8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E1FB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E1FC8(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2338E8B78;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2338E8C10;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2338E8C10;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2338E8BC4((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338E22A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2338E233C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A30[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E245C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E2444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E2464(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37A38[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2A68;
  v7[3] = &unk_2789F1018;
  v7[4] = a1;
  sub_2338E257C(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E2564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E257C(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  sub_2337BEBCC(v9, a3, &v28);
  v11 = sub_233735E3C(a1 + 24, &v28);
  if (a1 + 32 == v11)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_2338E67D8;
    v26[3] = &unk_2789EEF98;
    v14 = v10;
    v27 = v14;
    sub_23386DB28(a1, v9, v26, &v29);
    if (v29)
    {
      v15 = sub_23386FD70(v29);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v32 = 0;
        while (v16 < [v15 count])
        {
          v17 = [v15 objectAtIndexedSubscript:v16];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          [v17 doubleValue];
          *&v25 = v18;
          sub_2337F207C(__p, &v25);

          ++v16;
        }

        sub_233764CCC(__p);
      }

      v23 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v23, "RawCameraException");
      __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v30)
    {
      sub_2337239E8(v30);
    }

    (*(v14 + 2))(__p, v14);
    v24 = *__p;
    __p[0] = &v28;
    v19 = sub_2337BEEAC((a1 + 24), &v28, &unk_233905F1C, __p, &v29);
    v20 = (v19 + 7);
    v30 = v24;
    if (*(&v24 + 1))
    {
      atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v29 = sub_2338E6920;
    if (&v29 != v20)
    {
      v21 = *v20;
      if (*v20)
      {
        __p[0] = 0;
        __p[1] = 0;
        v21(2, v20, __p, 0, 0);
        v29(2, &v29, v20, 0, 0);
        (__p[0])(2, __p, &v29, 0, 0);
        sub_2337BF090(__p);
      }

      else
      {
        *(v19 + 4) = v24;
        v30 = 0uLL;
        v19[7] = sub_2338E6920;
        v29 = 0;
      }
    }

    sub_2337BF090(&v29);
    *a5 = v24;
    if (*(&v24 + 1))
    {
      atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
      sub_2337239E8(*(&v24 + 1));
    }
  }

  else
  {
    v12 = sub_2338E68D4((v11 + 56));
    if (!v12)
    {
      sub_2337BEE3C();
    }

    v13 = v12[1];
    *a5 = *v12;
    *(a5 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }
}

void sub_2338E2984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  __cxa_free_exception(v31);

  if (a24)
  {
    sub_2337239E8(a24);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338E2A70(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37A40[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2B88;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E2B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E2B90(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37A48[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2CA8;
  v7[3] = &unk_2789F0FF8;
  v7[4] = a1;
  sub_2338DC7A8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E2C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E2CB0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37A50[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2DC8;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E2DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E2DD0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A58[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E2EF0;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E2ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E2EF8(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A60[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3018;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3020(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A68[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3140;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3148(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A70[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3268;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3270(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A78[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3390;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3398(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A80[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E34B8;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E34A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E34C0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A88[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E35D8;
  v7[3] = &unk_2789EF000;
  v7[4] = a1;
  v5 = sub_2337D0E68(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E35C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E35E0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A90[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3700;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E36E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3708(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37A98[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3828;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3830(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AA0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3950;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E3958(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AA8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3A78;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E3A80(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 72))(&v8);
  v4 = v8;
  v5 = off_27DE37AB0[0];
  v6 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E3B98;
  v7[3] = &unk_2789EEF48;
  v7[4] = a1;
  sub_2337BE5F8(v4, v5, v6, v7, a2);
  if (v9)
  {
    sub_2337239E8(v9);
  }
}

void sub_2338E3B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E3BA0(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AB8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4024;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E3CA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E3CB8(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  sub_2337BEBCC(v7, a3, &__p);
  v9 = sub_233735E3C(a1 + 24, &__p);
  if (a1 + 32 == v9)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2338E8CD8;
    v20[3] = &unk_2789EEF70;
    v12 = v8;
    v21 = v12;
    sub_23386DB28(a1, v7, v20, &p_p);
    v13 = p_p;
    if (p_p)
    {
      v14 = sub_23386FD70(p_p);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](exception, "RawCameraException");
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = [v14 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    if (v25)
    {
      sub_2337239E8(v25);
    }

    if (!v13)
    {
      v11 = v12[2](v12);
    }

    p_p = &__p;
    v15 = sub_2337BEEAC((a1 + 24), &__p, &unk_233905F1C, &p_p, v23);
    v16 = (v15 + 7);
    v23[1] = v11;
    v23[0] = sub_2338E8D70;
    if (v23 != v15 + 7)
    {
      v17 = *v16;
      if (*v16)
      {
        p_p = 0;
        v25 = 0;
        v17(2, v16, &p_p, 0, 0);
        v23[0](2, v23, v16, 0, 0);
        (p_p)(2, &p_p, v23, 0, 0);
        sub_2337BF090(&p_p);
      }

      else
      {
        *(v15 + 16) = v11;
        v15[7] = sub_2338E8D70;
        v23[0] = 0;
      }
    }

    sub_2337BF090(v23);
  }

  else
  {
    v10 = sub_2338E8D24((v9 + 56));
    if (!v10)
    {
      sub_2337BEE3C();
    }

    v11 = *v10;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2338E3F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  __cxa_free_exception(v28);

  if (a26)
  {
    sub_2337239E8(a26);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

double sub_2338E402C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AC0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E414C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4154(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AC8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4274;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E425C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E427C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AD0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E439C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4384(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E43A4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AD8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E44BC;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E44A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E44C4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AE0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E45E4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E45CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E45EC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AE8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E470C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E46F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4714(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AF0[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4834;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E481C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E483C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37AF8[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4954;
  v7[3] = &unk_2789EF208;
  v7[4] = a1;
  v5 = sub_2337D7FB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E493C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E495C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B00[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4A74;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4A7C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B08[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4B9C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4B84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4BA4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B10[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4CC4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4CCC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B18[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4DEC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4DD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E4DF4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B20[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E4F14;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E4EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E4F1C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B28[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5034;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E501C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E503C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B30[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E515C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E5164(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B38[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5284;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E526C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E528C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B40[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E53AC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E53B4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B48[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E54CC;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E54B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E54D4(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B50[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E55F4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E55DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E55FC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B58[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E571C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E5724(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B60[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5844;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E582C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E584C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B68[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5964;
  v7[3] = &unk_2789EEF28;
  v7[4] = a1;
  v5 = sub_2338E3CB8(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E594C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E596C(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B70[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5A8C;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E5A94(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B78[0];
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5BB4;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338E5BBC(uint64_t a1)
{
  (*(*a1 + 72))(&v8);
  v2 = v8;
  v3 = off_27DE37B80;
  v4 = (*(*a1 + 120))(a1);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2338E5CDC;
  v7[3] = &unk_2789EF130;
  v7[4] = a1;
  v5 = sub_2337F5668(v2, v3, v4, v7);
  if (v9)
  {
    sub_2337239E8(v9);
  }

  return v5;
}

void sub_2338E5CC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338E5CE4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*a1 + 120))(a1);
  v5 = a1[48];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 48;
  do
  {
    if (*(v5 + 32) >= v4)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v4));
  }

  while (v5);
  if (v6 == a1 + 48 || v4 < *(v6 + 8))
  {
LABEL_8:
    (*(*a1 + 1840))(v46, a1);
    v7 = (v46[1] - v46[0]) >> 3;
    if (v7 < 3 || v7 % 3 != 0)
    {
      v9 = (*(*a1 + 1848))(a1);
      v10 = (*(*a1 + 1856))(a1);
      v11 = (*(*a1 + 1864))(a1);
      v12 = (*(*a1 + 1872))(a1);
      v13 = (*(*a1 + 1880))(a1);
      v14 = (*(*a1 + 1888))(a1);
      v15 = (*(*a1 + 1896))(a1);
      v16 = (*(*a1 + 1904))(a1);
      v17 = (*(*a1 + 1912))(a1);
      v18 = (*(*a1 + 1920))(a1);
      if (v18)
      {
        v19 = (*(*a1 + 1928))(a1);
        v20 = (*(*a1 + 1936))(a1);
        v45 = (*(*a1 + 1944))(a1);
        v44 = (*(*a1 + 1952))(a1);
        v21 = (*(*a1 + 1960))(a1);
        v43 = (*(*a1 + 1968))(a1);
        v42 = (*(*a1 + 1976))(a1);
        v41 = (*(*a1 + 1984))(a1);
        v22 = (*(*a1 + 1992))(a1);
        v40 = (*(*a1 + 2000))(a1);
        v39 = v20;
        v38 = (*(*a1 + 2008))(a1);
        v23 = (*(*a1 + 2016))(a1);
        v36 = v19;
        v37 = v16;
        v24 = (*(*a1 + 2024))(a1);
        v25 = v15;
        v26 = v14;
        v27 = v12;
        v28 = v11;
        v29 = v10;
        v30 = (*(*a1 + 2032))(a1);
        v31 = (*(*a1 + 2040))(a1);
        *&v32 = (*(*a1 + 2048))(a1);
        sub_23372FE60(v9, v13, v17, v18, v21, v22, v24, v29, v28, v27, v26, v25, v37, v36, v39, v33, v45, v44, v43, v42, v41, v40, v38, v23, v30, v31, v32);
      }

      sub_2338E6770(v9, v13, v17, v10, v11, v12, v14, v15, v16);
    }

    operator new();
  }

  LODWORD(v46[0]) = (*(*a1 + 120))(a1);
  result = sub_2338DAD04((a1 + 47), v46);
  v35 = result[1];
  *a2 = *result;
  a2[1] = v35;
  if (v35)
  {
    atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}