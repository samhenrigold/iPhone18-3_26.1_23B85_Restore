uint64_t sub_23386D1E4(uint64_t a1)
{
  *a1 = &unk_284929CB8;

  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

uint64_t sub_23386D24C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284929D38;
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
    v8 = sub_233725730(*a3);
    v10 = *(a1 + 56);
    v9 = *(a1 + 64);
    if (v10 >= v9)
    {
      v12 = *v6;
      v13 = v10 - *v6;
      v14 = v13 >> 2;
      v15 = (v13 >> 2) + 1;
      if (v15 >> 62)
      {
        sub_2337235BC();
      }

      v16 = v9 - v12;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      if (v16 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v17 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v15;
      }

      if (v17)
      {
        sub_2337235D4(v6, v17);
      }

      *(4 * v14) = v8;
      v11 = 4 * v14 + 4;
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
      v11 = (v10 + 1);
    }

    *(a1 + 56) = v11;
  }

  return a1;
}

void sub_23386D3FC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

RAWOpcodeDeltaPerColumn *sub_23386D428(uint64_t a1)
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
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  while (v13 != v14)
  {
    LODWORD(v12) = *v13;
    v15 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    [v11 addObject:v15];

    ++v13;
  }

  [v2 setObject:v11 forKeyedSubscript:@"Delta"];
  v16 = [[RAWOpcodeDeltaPerColumn alloc] initWithArguments:v2];

  return v16;
}

void *sub_23386D6B8(void *a1)
{
  *a1 = &unk_284929D38;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_23386D708(void *a1)
{
  *a1 = &unk_284929D38;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_23386D780(void *a1, void *a2)
{
  a1;
  a2;
  sub_23386F760();
}

id sub_23386D804(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v1 = sub_23386D8A8(a1, @"rawImageClass");
  v2 = sub_233739A60(v1, @"className");

  return v2;
}

id sub_23386D8A8(uint64_t a1, void *a2)
{
  v2 = sub_233739994(*(a1 + 8), a2, 0);

  return v2;
}

id sub_23386D8DC(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v1 = sub_23386D8A8(a1, @"version");
  v2 = sub_233739A60(v1, @"minRawCameraVersion");

  return v2;
}

void sub_23386D980(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v1 = sub_23386D8A8(a1, @"rawProperties");
    sub_233729F60(v1);
  }

  __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0]();
  sub_2338F83F4();
}

BOOL sub_23386DA24(uint64_t a1)
{
  v2 = sub_23384AFB8(a1);
  v3 = sub_23386D8DC(a1);
  v4 = v3;
  if (!v2 || !v3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5 = sub_23384B074(v2);
  v6 = v5 >= sub_23384B074(v4);

  return v6;
}

void sub_23386DB38(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = a2;
  v10 = a3;
  v28 = a1;
  v29 = a4;
  v11 = sub_23386D8A8(a1, @"rawPlugin");
  *a5 = 0;
  a5[1] = 0;
  if ([v10 isEqualToString:off_27DE377A0[0]])
  {
LABEL_16:
    if (sub_233739ACC(v11, v10))
    {
      v25 = sub_2338747A8();
      v26 = MEMORY[0x2383AC810](*(v28 + 16));
      sub_23386FC84(v11, v10, v25, v26, v29);
    }

    goto LABEL_18;
  }

  v12 = MEMORY[0x2383AC810](*(v28 + 16));
  v13 = (v12)[2](v12, @"methodNumber");

  v14 = [v13 shortValue];
  if (v14 < 0)
  {

    goto LABEL_16;
  }

  v27 = v13;
  do
  {
    v15 = MEMORY[0x277CCACA8];
    LODWORD(v30) = v14;
    v16 = sub_2337584A8(&v30);
    v17 = [v15 stringWithFormat:@"v%@", v16];

    v18 = sub_233739994(v11, v17, 0);
    v19 = v18;
    if (v18)
    {
      if (v9 && sub_233739ACC(v18, v9))
      {
        v20 = sub_233739994(v19, v9, 0);

        v19 = v20;
      }

      if (sub_233739ACC(v19, v10))
      {
        v21 = sub_2338747A8();
        v22 = MEMORY[0x2383AC810](*(v28 + 16));
        sub_23386FC84(v19, v10, v21, v22, v29);
      }
    }

    v23 = *a5;
    if (*a5)
    {
      break;
    }
  }

  while (v14-- >= 1);

  if (!v23)
  {
    goto LABEL_16;
  }

LABEL_18:
}

void sub_23386DDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v19 = *(v16 + 8);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  _Unwind_Resume(a1);
}

void sub_23386DE80(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (!*(a1 + 8))
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = sub_23386D8A8(a1, @"rawImageClass");
  v4 = sub_23378DDE8(v3, @"supportedMethods");

  v7 = sub_23386E07C(v5, v6);
  for (i = 0; i < [v4 count]; ++i)
  {
    v16.__r_.__value_.__r.__words[0] = i;
    v9 = sub_23386E0B8(v4, &v16);
    sub_23373CD80(v9, &__str);

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v12 = __str.__r_.__value_.__r.__words[0];
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v13 = size - 1;
      v14 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      if (v14->__r_.__value_.__s.__data_[v13] == 112)
      {
        if (!v7)
        {
          goto LABEL_20;
        }

        std::string::basic_string(&v16, &__str, 0, v13, &v18);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        __str = v16;
        v11 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v12 = v16.__r_.__value_.__r.__words[0];
      }
    }

    if (v11 >= 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = v12;
    }

    if (atoi(p_str) >= 6)
    {
      sub_233754418(a2, &__str);
      v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

LABEL_20:
    if (v11 < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t sub_23386E07C(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_280C04D98, memory_order_acquire) & 1) == 0)
  {
    sub_2338FD250();
  }

  return byte_27DE37C58;
}

void *sub_23386E0B8(void *a1, void *a2)
{
  v2 = [a1 objectAtIndexedSubscript:*a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id sub_23386E124(uint64_t a1, void *a2, void *a3)
{
  sub_23386DB38(a1, a2, a3, 0, &v5);
  if (v5)
  {
    v3 = sub_23386FD70(v5);
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v3;
}

void sub_23386E190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23386E1A8(uint64_t a1, void *a2)
{
  sub_23386DB38(a1, 0, @"blackNoiseModel", 0, &v26);
  v3 = v26;
  if (v26)
  {
    v4 = sub_23386FD70(v26);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 count] >= 2)
    {
      v25 = 0;
      v5 = sub_23386EA2C(v4, &v25);
      if (v5)
      {
        if (v5 == 1 && [v4 count] > 2)
        {
          v25 = 1;
          v24 = sub_23386EA2C(v4, &v25);
          v6 = [v4 count];
          v7 = (v6 - 2);
          if (v6 == 2)
          {
            v16 = 0;
            v15 = 0;
          }

          else
          {
            v8 = 0;
            v9 = 0;
            do
            {
              v25 = v8 + 2;
              v10 = sub_23386EAC4(v4, &v25);
              if (!v10)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0](exception, "RawCameraException");
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }

              if (v24)
              {
                v11 = 1;
                v12 = v24;
                do
                {
                  v25 = v11;
                  v13 = sub_23386EAC4(v10, &v25);
                  v14 = v13;
                  if (!v13)
                  {
                    v20 = __cxa_allocate_exception(0x10uLL);
                    MEMORY[0x2383ABCE0](v20, "RawCameraException");
                    __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }

                  v9 += [v13 count];

                  ++v11;
                  --v12;
                }

                while (v12);
              }

              ++v8;
            }

            while (v8 != v7);
            v15 = 24 * v9;
            v16 = v7;
          }

          sub_2337AD310(16 * v16 + 16 * v7 * v24 + v15 + 16, &v25);
        }

        v22 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v22, "RawCameraException");
        __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v19 = ([v4 count] - 1) / 0xEuLL;
      if ([v4 count] == ((14 * v19) | 1))
      {
        sub_2337AD310(112 * (v19 + 1), &v25);
      }

      v23 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v23, "RawCameraException");
      __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v17 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v17)
    {
      sub_2337239E8(v17);
    }
  }

  if (v27)
  {
    sub_2337239E8(v27);
  }

  return v3 != 0;
}

void sub_23386E8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  __cxa_free_exception(v24);

  v27 = *(v25 - 88);
  if (v27)
  {
    sub_2337239E8(v27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_23386EA2C(void *a1, void *a2)
{
  v2 = sub_23386F6F4(a1, a2);
  v3 = [v2 intValue];

  return v3;
}

double sub_23386EA74(void *a1, void *a2)
{
  v2 = sub_23386F6F4(a1, a2);
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

void *sub_23386EAC4(void *a1, void *a2)
{
  v2 = [a1 objectAtIndexedSubscript:*a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

BOOL sub_23386EB30(uint64_t a1, void *a2)
{
  sub_23386DB38(a1, 0, @"blackLevelModel", 0, &v24);
  v3 = v24;
  if (v24)
  {
    v4 = sub_23386FD70(v24);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 count] > 1)
      {
        v23 = 0;
        if (!sub_23386EA2C(v4, &v23) && [v4 count] > 2)
        {
          v23 = 1;
          v22 = sub_23386EA2C(v4, &v23);
          v5 = [v4 count];
          v6 = (v5 - 2);
          if (v5 == 2)
          {
            v15 = 0;
            v14 = 0;
          }

          else
          {
            v7 = 0;
            v8 = 0;
            do
            {
              v23 = (v7 + 2);
              v9 = sub_23386EAC4(v4, &v23);
              if (!v9)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                MEMORY[0x2383ABCE0](exception, "RawCameraException");
                __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
              }

              if (v22)
              {
                v10 = 1;
                v11 = v22;
                do
                {
                  v23 = v10;
                  v12 = sub_23386EAC4(v9, &v23);
                  v13 = v12;
                  if (!v12)
                  {
                    v18 = __cxa_allocate_exception(0x10uLL);
                    MEMORY[0x2383ABCE0](v18, "RawCameraException");
                    __cxa_throw(v18, MEMORY[0x277D82760], MEMORY[0x277D82600]);
                  }

                  v8 += [v12 count];

                  ++v10;
                  --v11;
                }

                while (v11);
              }

              ++v7;
            }

            while (v7 != v6);
            v14 = 24 * v8;
            v15 = v6;
          }

          sub_2337AD310(16 * v15 + 16 * v6 * v22 + v14 + 16, &v23);
        }

        v21 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v21, "RawCameraException");
        __cxa_throw(v21, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v20 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v20, "RawCameraException");
      __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v16 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v16)
    {
      sub_2337239E8(v16);
    }
  }

  if (v25)
  {
    sub_2337239E8(v25);
  }

  return v3 != 0;
}

void sub_23386F084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  __cxa_free_exception(v22);

  v25 = *(v23 - 88);
  if (v25)
  {
    sub_2337239E8(v25);
  }

  _Unwind_Resume(a1);
}

BOOL sub_23386F1B8(uint64_t a1, void *a2)
{
  __src[4] = *MEMORY[0x277D85DE8];
  sub_23386DB38(a1, 0, @"signalNoiseModel", 0, &v16);
  v3 = v16;
  if (v16)
  {
    v4 = sub_23386FD70(v16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v4 count] > 1)
      {
        __src[0] = 0;
        if (!sub_23386EA2C(v4, __src) && [v4 count] > 2)
        {
          __src[0] = 1;
          v5 = sub_23386EA2C(v4, __src);
          if (v5 - 5 > 0xFFFFFFFB)
          {
            v6 = [v4 objectAtIndexedSubscript:2];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v6 BOOLValue];
              v7 = 0;
              v14 = ([v4 count] - (v5 + 3)) / (3 * v5 + 1);
              do
              {
                v15 = v7 + 3;
                *&__src[v7++] = sub_23386EA74(v4, &v15);
              }

              while (v5 != v7);
              sub_2337AD310(8 * v5 + 16 * v14 + 24 * v14 * v5 + 32, &v15);
            }

            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v12 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0](v12, "RawCameraException");
          __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v11 = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x2383ABCE0](v11, "RawCameraException");
        __cxa_throw(v11, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v10 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v10, "RawCameraException");
      __cxa_throw(v10, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v8 = a2[1];
    *a2 = 0;
    a2[1] = 0;
    if (v8)
    {
      sub_2337239E8(v8);
    }
  }

  if (v17)
  {
    sub_2337239E8(v17);
  }

  return v3 != 0;
}

void sub_23386F628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  __cxa_free_exception(v23);

  if (a22)
  {
    sub_2337239E8(a22);
  }

  _Unwind_Resume(a1);
}

void *sub_23386F6F4(void *a1, void *a2)
{
  v2 = [a1 objectAtIndexedSubscript:*a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

uint64_t sub_23386F7D4(uint64_t a1, id *a2, void **a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_284929D80;
  v4 = *a3;
  v5 = *a2;
  v6 = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = a1 + 56;
  return a1;
}

void sub_23386F86C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284929D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_23386F8CC(uint64_t a1)
{
  sub_23386F914(a1 + 24, *(a1 + 32));

  return a1;
}

void sub_23386F914(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_23386F914(a1, *a2);
    sub_23386F914(a1, a2[1]);
    sub_2337BF040((a2 + 4));

    operator delete(a2);
  }
}

uint64_t sub_23386F970()
{
  if ((atomic_load_explicit(&qword_280C04ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C04ED0))
  {
    operator new();
  }

  return qword_280C04EC8;
}

void sub_23386FA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_23386F970();
  if (*(a1 + 23) < 0)
  {
    sub_233731FB8(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v6 = *(a1 + 16);
  }

  v7 = a2;
  sub_23386FBE0(v4, __p, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23386FA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23386FAAC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_23386D804(v4);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v7 = sub_23386F970();
  sub_23373CD80(v6, __p);
  v8 = sub_233735E3C(v7, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (sub_23386F970() + 8 != v8)
  {
    v9 = *(v8 + 56);
    if (v9)
    {
      (*(*v9 + 16))(__p);
      *a2 = *__p;
    }
  }
}

void sub_23386FBCC()
{
  if (v0)
  {
    sub_2337239E8(v0);
  }

  JUMPOUT(0x23386FBC4);
}

uint64_t sub_23386FBE0(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v3 = *sub_233757640(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_23386FC84(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  a1;
  a2;
  a3;
  a4;
  a5;
  sub_2338704F4();
}

id sub_23386FD70(uint64_t a1)
{
  v2 = sub_233739A60(*(a1 + 16), *(a1 + 24));
  if (v2)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_23386FFE4;
    v18 = sub_233870010;
    v19 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_233870018;
    v13[3] = &unk_2789EF3D0;
    v13[4] = &v14;
    v13[5] = a1;
    v3 = MEMORY[0x2383AC810](v13);
    v4 = v15[5];
    v15[5] = v3;

    v5 = v15[5];
    [v2 UTF8String];
    v6 = sub_2338717E0(v5);
    v7 = v15[5];
    v15[5] = 0;

    if (!v6)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v8 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v8 description];
      CFShow(v11);
      v12 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v12, "RawCameraException");
      __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_23386FF80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  __cxa_free_exception(v23);

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23386FFE4(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2383AC810](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id sub_233870018(uint64_t a1, char *__s)
{
  v4 = *(a1 + 40);
  v5 = strlen(__s);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2337304FC();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v19 = v5;
  if (v5)
  {
    memcpy(&__dst, __s, v5);
  }

  *(&__dst + v6) = 0;
  v7 = sub_233729FBC(&__dst);
  if (v19 < 0)
  {
    operator delete(__dst);
  }

  if (([v7 hasPrefix:@"@"] & 1) == 0)
  {
    if ([v7 isEqualToString:@"inherited"])
    {
      v12 = *(v4 + 48);
      if (!v12)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Inherited::%@", *(v4 + 24)];

        v17 = *(v4 + 40);
        if (v17)
        {
          v10 = (*(v17 + 16))(v17, v8);
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_22;
      }

      v13 = (*(v12 + 16))();
    }

    else
    {
      v14 = *(v4 + 32);
      if (v14)
      {
        v10 = [v14 objectForKeyedSubscript:v7];
        if (v10)
        {
          goto LABEL_21;
        }
      }

      v15 = *(v4 + 40);
      if (!v15)
      {
        v10 = 0;
        goto LABEL_21;
      }

      v13 = (*(v15 + 16))(v15, v7);
    }

    v10 = v13;
LABEL_21:
    v8 = v7;
    goto LABEL_22;
  }

  v8 = [v7 substringWithRange:{1, objc_msgSend(v7, "length") - 1}];

  v9 = [*(v4 + 16) objectForKeyedSubscript:v8];
  objc_opt_class();
  v10 = v9;
  if (objc_opt_isKindOfClass())
  {
    v11 = *(*(*(a1 + 32) + 8) + 40);
    [v9 UTF8String];
    v10 = sub_2338717E0(v11);
  }

LABEL_22:

  return v10;
}

void sub_233870290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338702D4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  *a1 = &unk_284929DD0;
  a1[1] = 0;
  v16 = v11;
  a1[2] = v16;
  v17 = v12;
  a1[3] = v17;
  v18 = v13;
  a1[4] = v18;
  a1[5] = MEMORY[0x2383AC810](v14);
  a1[6] = MEMORY[0x2383AC810](v15);
  if (!v16 || !v17 || !v14)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v19 = [MEMORY[0x277CBEB18] array];
  v20 = a1[1];
  a1[1] = v19;

  return a1;
}

void sub_233870450(_Unwind_Exception *a1)
{
  __cxa_free_exception(v7);

  _Unwind_Resume(a1);
}

void sub_2338704BC(id *a1)
{
  sub_23387069C(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233870590(void *a1, void **a2, void **a3, void **a4, void **a5, void **a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284929E00;
  sub_2338702D4(a1 + 3, *a2, *a3, *a4, *a5, *a6);
  return a1;
}

void sub_233870620(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284929E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338706F0(uint64_t a1)
{
  (*(*a1 + 2200))(__p);
  v4[0] = &unk_284917748;
  v4[1] = 0;
  (*(*a1 + 160))(&v2, a1);
  (*(*v2 + 600))(v2, __p, v4, 3);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2338707F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_233870824(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6[0] = 0;
  v6[1] = 0;
  v7 = 0;
  if ((*(*a1 + 960))(a1) == 10)
  {
    (*(*a1 + 160))(&v5, a1);
    operator new();
  }

  __p = 0;
  sub_233731694(a2, 4uLL, &__p);
  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }
}

void sub_23387099C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338709EC(void *a1)
{
  (*(*a1 + 2888))(&v6);
  if (v7 != v6)
  {
    v2 = v7 - v6;
    if (*v6 == 5)
    {
      if (v2 > 2)
      {
        (*(*a1 + 160))(&v4, a1);
        (*(*v4 + 384))(&v5);
        (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_23380620C();
      }

LABEL_14:
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*v6 == 4)
    {
      if (v2 > 1 && (v6[1] & 0x80000000) == 0)
      {
        (*(*a1 + 160))(&v4, a1);
        (*(*v4 + 384))(&v5);
        (*(*a1 + 336))(a1);
        (*(*a1 + 408))(a1);
        (*(*a1 + 432))(a1);
        sub_233802844();
      }

      goto LABEL_14;
    }
  }

  sub_23373C7EC(a1);
  if (!a1[3])
  {
    goto LABEL_14;
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }
}

void sub_233870E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_2337239E8(a18);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  v20 = *(v18 - 48);
  if (v20)
  {
    *(v18 - 40) = v20;
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_233870F24(uint64_t a1)
{
  v2 = (*(*a1 + 2192))(a1);
  v9 = 0;
  v10 = v2;
  v8 = &unk_284917748;
  (*(*a1 + 160))(&v6, a1);
  v3 = v6;
  (*(*a1 + 2200))(__p, a1);
  (*(*v3 + 600))(v3, __p, &v8, 3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_233871074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338710A4(void *a1)
{
  sub_23373C7EC(a1);
  if (!a1[3])
  {
    (*(*a1 + 2888))(&v5, a1);
    if (v6 == v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (*v5 == 10)
    {
      (*(*a1 + 160))(&v3, a1);
      (*(*v3 + 384))(&v4);
      (*(*a1 + 336))(a1);
      (*(*a1 + 408))(a1);
      (*(*a1 + 432))(a1);
      sub_233871328();
    }

    v6 = v5;
    operator delete(v5);
  }
}

void sub_2338712C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  v18 = *(v16 - 48);
  if (v18)
  {
    *(v16 - 40) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2338713CC(void *a1, void *a2, unint64_t *a3, void *a4, _OWORD *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28492B5C8;
  sub_2337AD9D8((a1 + 3), a2, *a3, a4, a5);
  a1[3] = &unk_28490B588;
  return a1;
}

void sub_233871468(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28492B5C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

float32x2_t *sub_2338714E4@<X0>(float32x2_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[89];
  v3 = result[90].f32[0];
  v4 = result->i32[1];
  if (v4 == 2)
  {
    v15 = result + 107;
    v5 = result[108].f32[1];
    v6 = result[110].f32[1] * result[110].f32[1];
    v17 = &result[111] + 4;
    v7 = result[117].i32[1];
    v8 = result[118].i32[0];
    if (result[111].i8[0] == 1)
    {
      v9 = result[118].f32[1];
      v10 = result + 108;
      v20.i32[0] = result[110].i32[0];
      v12 = &result[115] + 4;
      v13 = result + 116;
      v14 = result[116].f32[1];
      v20.i32[1] = result[109].i32[0];
      v16 = vmul_f32(v20, v20);
      v18 = result + 112;
      v19 = result[112].f32[1];
      goto LABEL_17;
    }

    v9 = result[119].f32[0] * result[119].f32[0];
    v10 = result + 108;
    v22.i32[0] = result[110].i32[0];
    v12 = &result[115] + 4;
    v13 = result + 116;
    v14 = result[117].f32[0] * result[117].f32[0];
    v22.i32[1] = result[109].i32[0];
    v16 = vmul_f32(v22, v22);
    v18 = result + 112;
    v21 = result[113].f32[0];
  }

  else if (v4 == 1)
  {
    v5 = result[107].f32[1];
    v6 = result[109].f32[1] * result[109].f32[1];
    v7 = result[113].i32[1];
    v8 = result[114].i32[0];
    if (result[111].i8[0] == 1)
    {
      v9 = result[114].f32[1];
      v10 = (result + 868);
      v12 = &result[117] + 4;
      v13 = result + 118;
      v14 = result[118].f32[1];
      v15 = result + 108;
      v16 = vrev64_s32(vmul_f32(result[110], result[110]));
      v17 = &result[115] + 4;
      v18 = result + 116;
      v19 = result[116].f32[1];
      goto LABEL_17;
    }

    v9 = result[115].f32[0] * result[115].f32[0];
    v10 = (result + 868);
    v12 = &result[117] + 4;
    v13 = result + 118;
    v14 = result[119].f32[0] * result[119].f32[0];
    v15 = result + 108;
    v16 = vrev64_s32(vmul_f32(result[110], result[110]));
    v17 = &result[115] + 4;
    v18 = result + 116;
    v21 = result[117].f32[0];
  }

  else if (v4)
  {
    v5 = result[107].f32[0];
    v6 = result[109].f32[0] * result[109].f32[0];
    v7 = result[111].i32[1];
    v8 = result[112].i32[0];
    if (result[111].i8[0] == 1)
    {
      v9 = result[112].f32[1];
      v10 = result + 108;
      v12 = &result[115] + 4;
      v13 = result + 116;
      v14 = result[116].f32[1];
      v15 = (result + 868);
      v16 = vmul_f32(result[110], result[110]);
      v17 = &result[117] + 4;
      v18 = result + 118;
      v19 = result[118].f32[1];
      goto LABEL_17;
    }

    v9 = result[113].f32[0] * result[113].f32[0];
    v10 = result + 108;
    v12 = &result[115] + 4;
    v13 = result + 116;
    v14 = result[117].f32[0] * result[117].f32[0];
    v15 = (result + 868);
    v16 = vmul_f32(result[110], result[110]);
    v17 = &result[117] + 4;
    v18 = result + 118;
    v21 = result[119].f32[0];
  }

  else
  {
    v5 = result[108].f32[0];
    v6 = result[110].f32[0] * result[110].f32[0];
    v7 = result[115].i32[1];
    v8 = result[116].i32[0];
    if (result[111].i8[0] == 1)
    {
      v9 = result[116].f32[1];
      v10 = (result + 868);
      v11.i32[0] = result[110].i32[1];
      v12 = &result[117] + 4;
      v13 = result + 118;
      v14 = result[118].f32[1];
      v15 = (result + 860);
      v11.i32[1] = result[109].i32[1];
      v16 = vmul_f32(v11, v11);
      v17 = &result[113] + 4;
      v18 = result + 114;
      v19 = result[114].f32[1];
      goto LABEL_17;
    }

    v9 = result[117].f32[0] * result[117].f32[0];
    v10 = (result + 868);
    v23.i32[0] = result[110].i32[1];
    v12 = &result[117] + 4;
    v13 = result + 118;
    v14 = result[119].f32[0] * result[119].f32[0];
    v23.i32[1] = result[109].i32[1];
    v15 = (result + 860);
    v16 = vmul_f32(v23, v23);
    v17 = &result[113] + 4;
    v18 = result + 114;
    v21 = result[115].f32[0];
  }

  v19 = v21 * v21;
LABEL_17:
  v24 = v18->i32[0];
  v25 = v13->i32[0];
  v26 = *v17;
  v27 = *v12;
  v28 = v15->f32[0];
  v29 = v10->f32[0];
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 12) = 0;
  __asm { FMOV            V25.2S, #1.0 }

  *(a2 + 16) = vdiv_f32(_D25, v2);
  *(a2 + 24) = 1.0 / v3;
  *(a2 + 28) = 0;
  if (v29 >= 0.0)
  {
    v35 = v29;
  }

  else
  {
    v35 = 0.0;
  }

  *(a2 + 32) = v5;
  *(a2 + 36) = v35;
  if (v28 >= 0.0)
  {
    v36 = v28;
  }

  else
  {
    v36 = 0.0;
  }

  *(a2 + 40) = v36;
  *(a2 + 44) = 0;
  *(a2 + 48) = v6;
  *(a2 + 52) = v16;
  *(a2 + 60) = 0;
  *(a2 + 64) = v7;
  *(a2 + 68) = v27;
  *(a2 + 72) = v26;
  *(a2 + 76) = 0;
  *(a2 + 80) = v8;
  *(a2 + 84) = v25;
  *(a2 + 88) = v24;
  *(a2 + 92) = 0;
  *(a2 + 96) = v9;
  *(a2 + 100) = v14;
  *(a2 + 104) = v19;
  *(a2 + 108) = 0;
  return result;
}

id sub_2338717E0(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v30 = v1;
  bzero(__s1, 0xF000uLL);
  v31 = 0;
  v4 = *v3;
  if (*v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = MEMORY[0x277D85DE0];
    while (1)
    {
      v8 = v4;
      if (v4 < 0)
      {
        v9 = __maskrune(v4, 0x4000uLL);
      }

      else
      {
        v9 = *(v7 + 4 * v8 + 60) & 0x4000;
      }

      if (v9)
      {
        v10 = 1;
        goto LABEL_37;
      }

      v11 = 0xCu;
      do
      {
        v12 = strlen(*&off_2789EF3F0[v11]);
        if (!strncmp(v3, *&off_2789EF3F0[v11], v12))
        {
          v14 = &v3[strlen(*&off_2789EF3F0[v11])];
          goto LABEL_14;
        }

        v11 += 6;
      }

      while (v11 != 240);
      v13 = (v8 & 0x80000000) != 0 ? __maskrune(v8, 0x400uLL) : *(v7 + 4 * v8 + 60) & 0x400;
      if (v8 != 46 && !v13)
      {
        break;
      }

      strtod(v3, &v31);
      v14 = v31;
      if (v31 == v3)
      {
        v24 = sub_2338723D0(10, @"Error: Expression has invalid number.");
        v25 = v24;
        goto LABEL_41;
      }

LABEL_35:
      v10 = v14 - v3;
      v19 = &v5[v14 - v3];
      if ((v19 + 1) > 0xF000)
      {
        v24 = sub_2338723D0(7, @"Error: Expression too long.");
        v20 = v24;
        goto LABEL_41;
      }

      memcpy(&__s1[v5], v3, v14 - v3);
      __s1[v19] = 0;
      ++v6;
      v5 = v19 + 1;
LABEL_37:
      v3 += v10;
      v4 = *v3;
      if (!*v3)
      {
        v24 = 0;
        goto LABEL_42;
      }
    }

    if (v8 == 39)
    {
      v15 = strchr(v3 + 1, 39);
      v31 = v15;
      if (!v15)
      {
        v24 = sub_2338723D0(9, @"Error: Expression has unterminated quote.");
        v26 = v24;
        goto LABEL_41;
      }

      v14 = v15 + 1;
LABEL_14:
      v31 = v14;
      goto LABEL_35;
    }

    if ((v8 & 0x80000000) != 0)
    {
      v16 = __maskrune(v8, 0x100uLL);
    }

    else
    {
      v16 = *(v7 + 4 * v8 + 60) & 0x100;
    }

    if (v16 || v8 == 64 || v8 == 36)
    {
      v14 = v3;
      while (1)
      {
        while (1)
        {
          v31 = v14 + 1;
          v17 = v14[1];
          if ((v17 & 0x80000000) != 0)
          {
            break;
          }

          ++v14;
          if ((*(v7 + 4 * v17 + 60) & 0x500) == 0)
          {
            goto LABEL_34;
          }
        }

        v18 = __maskrune(v17, 0x500uLL);
        v14 = v31;
        if (!v18)
        {
LABEL_34:
          if (*v14 != 95)
          {
            goto LABEL_35;
          }
        }
      }
    }

    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: Expression has unexpected character #%d", v8, v30];
    v24 = sub_2338723D0(8, v28);
    v29 = v24;

LABEL_41:
    v6 = -1;
  }

  else
  {
    v24 = 0;
    v6 = 0;
  }

LABEL_42:
  v21 = v24;
  v22 = v21;
  if (v6 < 0)
  {
    v22 = v21;
    v23 = v22;
  }

  else
  {
    if (v6)
    {
      operator new();
    }

    v23 = 0;
  }

  return v23;
}

id sub_2338723D0(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v7 = *MEMORY[0x277CBEE58];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.RawExpression" code:a1 userInfo:v4];

  return v5;
}

void *sub_2338724C8(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  result = a1[3];
  if (v4 >= v5)
  {
    result = malloc_type_realloc(result, 8 * v5 + 80, 0x2004093837F09uLL);
    v4 = a1[1];
    a1[2] += 10;
    a1[3] = result;
  }

  a1[1] = v4 + 1;
  *(result + v4) = a2;
  return result;
}

uint64_t sub_233872530(void *a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 8);
  v7 = off_2789EF3F0[6 * v6 + 5];
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v8 = a1[1];
      if (!v8 || (v9 = *(a1[3] + 8 * v8 - 8), *(v9 + 8) == 16))
      {
        if (a3)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: function '%s' requires 1 parameter.", *&off_2789EF3F0[6 * v6]];
          v11 = sub_2338723D0(6, v10);
          goto LABEL_35;
        }

        goto LABEL_36;
      }

LABEL_31:
      a1[1] = v8 - 1;
      *(a2 + 24) = v9;
      goto LABEL_32;
    }

    if (v7 == 2)
    {
      v12 = a1[1];
      if (!v12)
      {
        if (a3)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: function '%s' requires 1 or more parameters.", *&off_2789EF3F0[6 * v6]];
          v11 = sub_2338723D0(6, v10);
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      goto LABEL_12;
    }

LABEL_26:
    v12 = a1[1];
    if (v6 == 2 && !v12)
    {
      goto LABEL_32;
    }

    v22 = *(a2 + 16);
    if (v12 < v22)
    {
      if (a3)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: operator '%s' requires %zu operands.", *&off_2789EF3F0[6 * v6], v22];
        v11 = sub_2338723D0(6, v10);
        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if (v22 == 2)
    {
      v13 = a1[3];
      *(a2 + 32) = *(v13 + 8 * v12 - 8);
      v14 = v12 - 2;
      goto LABEL_13;
    }

    if (v22 != 1)
    {
      if (v22)
      {
        if (!a3)
        {
          goto LABEL_36;
        }

        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: unexpected operator '%s'.\n", *&off_2789EF3F0[6 * v6]];
        v11 = sub_2338723D0(5, v10);
        goto LABEL_35;
      }

LABEL_32:
      sub_2338724C8(a1, a2);
      return 1;
    }

LABEL_12:
    v13 = a1[3];
    v14 = v12 - 1;
LABEL_13:
    a1[1] = v14;
    v15 = *(v13 + 8 * v14);
    goto LABEL_21;
  }

  if (v7 != 3)
  {
    if (v7 == 5)
    {
      v19 = a1[1];
      if (!v19)
      {
        goto LABEL_32;
      }

      v20 = a1[3];
      v21 = v19 - 1;
      a1[1] = v21;
      v15 = *(v20 + 8 * v21);
LABEL_21:
      *(a2 + 24) = v15;
      goto LABEL_32;
    }

    if (v7 == 4)
    {
      v8 = a1[1];
      if (!v8 || (v9 = *(a1[3] + 8 * v8 - 8), *(v9 + 8) != 16))
      {
        if (a3)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: function '%s' requires 2 or more parameters.", *&off_2789EF3F0[6 * v6]];
          v11 = sub_2338723D0(6, v10);
LABEL_35:
          *a3 = v11;

          goto LABEL_36;
        }

        goto LABEL_36;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v16 = a1[1];
  if (v16)
  {
    v17 = *(a1[3] + 8 * v16 - 8);
    if (*(v17 + 8) == 16)
    {
      v18 = *(v17 + 32);
      if (*(v18 + 8) != 16)
      {
        a1[1] = v16 - 1;
        *(a2 + 24) = *(v17 + 24);
        *(a2 + 32) = v18;
        *(v17 + 24) = 0;
        *(v17 + 32) = 0;
        (*(*v17 + 8))(v17);
        goto LABEL_32;
      }
    }
  }

  if (a3)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error: function '%s' requires 2 parameters.", *&off_2789EF3F0[6 * v6]];
    v11 = sub_2338723D0(6, v10);
    goto LABEL_35;
  }

LABEL_36:
  (*(*a2 + 8))(a2);
  return 0;
}

id sub_2338728F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v5.n128_u64[0] = 0x7FF8000000000000;
  switch(*(a1 + 8))
  {
    case 0:
    case 0x15:
      v6 = [MEMORY[0x277CBEB68] null];
      goto LABEL_98;
    case 1:
      v43 = *(a1 + 40);
      v44 = *v43;
      if ((v44 & 0x80000000) != 0)
      {
        v45 = __maskrune(v44, 0x400uLL);
        v43 = *(a1 + 40);
      }

      else
      {
        v45 = *(MEMORY[0x277D85DE0] + 4 * v44 + 60) & 0x400;
      }

      if (v45)
      {
        goto LABEL_96;
      }

      v61 = *v43;
      if (v61 == 39)
      {
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:*(a1 + 40) + 1 length:strlen(*(a1 + 40)) - 2 encoding:1];
      }

      else if (v61 == 46)
      {
LABEL_96:
        v5.n128_f64[0] = strtod(v43, 0);
LABEL_97:
        v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5.n128_f64[0]];
      }

      else
      {
        v6 = v3[2](v3, v5);
      }

      goto LABEL_98;
    case 2:
      v46 = *(a1 + 24);
      if (v46)
      {
        sub_2338728F0(v46, v3);
      }

      else
      {
        [MEMORY[0x277CBEB68] null];
      }

      goto LABEL_61;
    case 4:
      v33 = sub_233873538(*(a1 + 24), v3, 0);
      v5.n128_f64[0] = v33 * sub_233873538(*(a1 + 32), v3, 0);
      goto LABEL_97;
    case 5:
      v39 = sub_233873538(*(a1 + 24), v3, 0);
      v5.n128_f64[0] = v39 / sub_233873538(*(a1 + 32), v3, 0);
      goto LABEL_97;
    case 6:
      v40 = sub_233873538(*(a1 + 24), v3, 0);
      v5.n128_f64[0] = v40 + sub_233873538(*(a1 + 32), v3, 0);
      goto LABEL_97;
    case 7:
      v51 = sub_233873538(*(a1 + 24), v3, 0);
      v5.n128_f64[0] = v51 - sub_233873538(*(a1 + 32), v3, 0);
      goto LABEL_97;
    case 8:
      v49 = sub_233873538(*(a1 + 24), v3, 0);
      v50 = sub_233873538(*(a1 + 32), v3, 0);
      v17 = MEMORY[0x277CBEC28];
      if (v49 >= v50)
      {
        v17 = MEMORY[0x277CBEC38];
      }

      goto LABEL_65;
    case 9:
      v27 = sub_233873538(*(a1 + 24), v3, 0);
      v28 = sub_233873538(*(a1 + 32), v3, 0);
      v17 = MEMORY[0x277CBEC28];
      if (v27 > v28)
      {
        v17 = MEMORY[0x277CBEC38];
      }

      goto LABEL_65;
    case 0xA:
      v34 = sub_233873538(*(a1 + 24), v3, 0);
      v35 = sub_233873538(*(a1 + 32), v3, 0);
      v17 = MEMORY[0x277CBEC28];
      if (v34 <= v35)
      {
        v17 = MEMORY[0x277CBEC38];
      }

      goto LABEL_65;
    case 0xB:
      v31 = sub_233873538(*(a1 + 24), v3, 0);
      v32 = sub_233873538(*(a1 + 32), v3, 0);
      v17 = MEMORY[0x277CBEC28];
      if (v31 < v32)
      {
        v17 = MEMORY[0x277CBEC38];
      }

      goto LABEL_65;
    case 0xC:
      v16 = sub_233873618(*(a1 + 24), v3, *(a1 + 32));
      v17 = MEMORY[0x277CBEC28];
      v18 = MEMORY[0x277CBEC38];
      goto LABEL_50;
    case 0xD:
      v16 = sub_233873618(*(a1 + 24), v3, *(a1 + 32));
      v17 = MEMORY[0x277CBEC38];
      v18 = MEMORY[0x277CBEC28];
LABEL_50:
      if (v16)
      {
        v17 = v18;
      }

LABEL_65:
      v6 = v17;
      goto LABEL_98;
    case 0xE:
      v41 = sub_233873790(*(a1 + 24), v3);
      v42 = MEMORY[0x277CBEC28];
      if (v41 && (sub_233873790(*(a1 + 32), v3) & 1) != 0)
      {
        v42 = MEMORY[0x277CBEC38];
      }

      v6 = v42;
      goto LABEL_98;
    case 0xF:
      if ((sub_233873790(*(a1 + 24), v3) & 1) != 0 || sub_233873790(*(a1 + 32), v3))
      {
        goto LABEL_8;
      }

      goto LABEL_9;
    case 0x10:
      v6 = sub_233873834(a1, v3);
      goto LABEL_98;
    case 0x11:
      if (*(*(a1 + 32) + 8) == 18)
      {
        v52 = sub_233873790(*(a1 + 24), v3);
        v53 = *(a1 + 32);
        if (v52)
        {
          sub_2338728F0(*(v53 + 24), v3);
        }

        else
        {
          sub_2338728F0(*(v53 + 32), v3);
        }

        v6 = LABEL_61:;
LABEL_98:
        v4 = v6;
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_114;
    case 0x13:
LABEL_8:
      v4 = MEMORY[0x277CBEC38];
      goto LABEL_114;
    case 0x14:
LABEL_9:
      v4 = MEMORY[0x277CBEC28];
      goto LABEL_114;
    case 0x16:
      goto LABEL_97;
    case 0x17:
      v7 = sub_2338728F0(*(a1 + 24), v3);
      v15 = sub_2338728F0(*(a1 + 32), v3);
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v4 = [v7 objectForKeyedSubscript:v15];
      }

      else
      {
        v4 = 0;
      }

      goto LABEL_113;
    case 0x18:
      v7 = sub_2338728F0(*(a1 + 24), v3);
      v30 = sub_233873538(*(a1 + 32), v3, 0);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v30 >= 0.0)) != 1 || v30 > ([v7 count] - 1))
      {
        goto LABEL_35;
      }

      v38 = [v7 objectAtIndexedSubscript:v30];
      goto LABEL_112;
    case 0x19:
      v7 = sub_233873834(*(a1 + 24), v3);
      if (v7)
      {
        v4 = [MEMORY[0x277CBEB38] dictionary];
        v21 = [v7 count];
        if (v21)
        {
          for (i = 0; i < v21; i = v24 + 1)
          {
            v23 = [v7 objectAtIndexedSubscript:i];
            v24 = i + 1;
            v25 = [v7 objectAtIndexedSubscript:v24];
            v26 = v25;
            if (v23 && v25)
            {
              [v4 setObject:v25 forKeyedSubscript:v23];
            }
          }
        }
      }

      else
      {
LABEL_35:
        v4 = 0;
      }

      goto LABEL_113;
    case 0x1A:
      v6 = sub_233873834(*(a1 + 24), v3);
      goto LABEL_98;
    case 0x1B:
      v19 = *(a1 + 24);
      v20 = 0.0;
      if (v19)
      {
        v7 = sub_2338728F0(v19, v3);
        if (v7)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            v20 = [v7 count];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = 1.0;
            }

            else
            {
              v20 = NAN;
            }
          }
        }
      }

      else
      {
        v7 = 0;
      }

      v38 = [MEMORY[0x277CCABB0] numberWithDouble:v20];
      goto LABEL_112;
    case 0x1C:
    case 0x1D:
      v7 = sub_233873834(*(a1 + 24), v3);
      v8 = [v7 count];
      v9 = [v7 objectAtIndexedSubscript:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 doubleValue];
        v11 = v10;
      }

      else
      {
        v11 = NAN;
      }

      v54 = v8 - 1;
      v4 = [v7 objectAtIndexedSubscript:v8 - 1];
      if (v54 < 2)
      {
        v56 = v9;
      }

      else
      {
        v55 = 2;
        while (1)
        {
          v56 = [v7 objectAtIndexedSubscript:v55 - 1];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v56 doubleValue];
          }

          else
          {
            v57 = NAN;
          }

          v58 = *(a1 + 8);
          if (v58 == 29 && v11 == v57)
          {
            break;
          }

          if (v58 == 28 && v11 <= v57)
          {
            break;
          }

          v59 = v55 + 1;
          v55 += 2;
          v9 = v56;
          if (v59 >= v54)
          {
            goto LABEL_91;
          }
        }

        v60 = [v7 objectAtIndexedSubscript:v55];

        v4 = v60;
      }

LABEL_91:

LABEL_113:
LABEL_114:

      return v4;
    case 0x1E:
      v5.n128_f64[0] = round(sub_233873538(*(a1 + 24), v3, 0));
      goto LABEL_97;
    case 0x1F:
      v5.n128_f64[0] = floor(sub_233873538(*(a1 + 24), v3, 0));
      goto LABEL_97;
    case 0x20:
      v5.n128_f64[0] = sqrt(sub_233873538(*(a1 + 24), v3, 0));
      goto LABEL_97;
    case 0x21:
      v29 = sub_233873538(*(a1 + 24), v3, 0);
      v5.n128_f64[0] = exp(v29);
      goto LABEL_97;
    case 0x22:
      v5.n128_f64[0] = fabs(sub_233873538(*(a1 + 24), v3, 0));
      goto LABEL_97;
    case 0x23:
      v13 = sub_233873538(*(a1 + 24), v3, 0);
      v14 = sub_233873538(*(a1 + 32), v3, 0);
      v5.n128_f64[0] = pow(v13, v14);
      goto LABEL_97;
    case 0x24:
      v47 = sub_233873538(*(a1 + 24), v3, 0);
      v5.n128_f64[0] = sub_233873538(*(a1 + 32), v3, 0);
      v48 = v5.n128_f64[0] < v47;
      goto LABEL_71;
    case 0x25:
      v47 = sub_233873538(*(a1 + 24), v3, 0);
      v5.n128_f64[0] = sub_233873538(*(a1 + 32), v3, 0);
      v48 = v47 < v5.n128_f64[0];
LABEL_71:
      if (!v48)
      {
        v5.n128_f64[0] = v47;
      }

      goto LABEL_97;
    case 0x26:
      v12 = sub_233873538(*(a1 + 24), v3, 0);
      v5.n128_f64[0] = log2(v12);
      goto LABEL_97;
    case 0x27:
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:{*(*(a1 + 24) + 40), NAN}];
      v37 = [v36 substringWithRange:{1, objc_msgSend(v36, "length") - 2}];

      v7 = v37;
      v38 = (v3[2])(v3, [v37 UTF8String]);
LABEL_112:
      v4 = v38;
      goto LABEL_113;
    default:
      goto LABEL_114;
  }
}

void sub_233873368(void *a1)
{
  sub_2338733A0(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338733A0(void *a1)
{
  *a1 = &unk_28492B618;
  v2 = a1[1];
  while (v2)
  {
    v3 = a1[3];
    a1[1] = --v2;
    v4 = *(v3 + 8 * v2);
    if (v4)
    {
      (*(*v4 + 8))(v4);
      v2 = a1[1];
    }
  }

  v5 = a1[3];
  if (v5)
  {
    free(v5);
    a1[3] = 0;
  }

  return a1;
}

void sub_23387343C(void *a1)
{
  sub_233873474(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233873474(void *a1)
{
  *a1 = &unk_28492B648;
  v3 = a1 + 3;
  v2 = a1[3];
  if (v2)
  {
    v4 = a1[4];
    (*(*v2 + 8))(a1[3]);
    if (v2 == v4)
    {
      v3[1] = 0;
    }

    *v3 = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    (*(*v5 + 8))(v5);
    a1[4] = 0;
  }

  a1[5] = 0;
  return a1;
}

double sub_233873538(uint64_t a1, void *a2, int a3)
{
  v4 = sub_2338728F0(a1, a2);
  v5 = v4;
  if (a3)
  {
    v6 = [v4 isEqualToValue:MEMORY[0x277CBEC28]];
    v7 = [v5 isEqualToValue:MEMORY[0x277CBEC38]];
    v8 = NAN;
    if (v6)
    {
      v8 = 0.0;
    }

    if (v7)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = v8;
    }
  }

  else
  {
    v9 = NAN;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = CFGetTypeID(v5);
    if (v10 != CFBooleanGetTypeID())
    {
      [v5 doubleValue];
      v9 = v11;
    }
  }

  return v9;
}

uint64_t sub_233873618(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = sub_2338728F0(a1, v5);
  v7 = sub_2338728F0(a3, v5);
  if (v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      if (isKindOfClass & objc_opt_isKindOfClass())
      {
        v10 = sub_233873538(a1, v5, 1);
        v8 = v10 == sub_233873538(a3, v5, 1);
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

uint64_t sub_233873790(uint64_t a1, void *a2)
{
  v2 = sub_2338728F0(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objCType];
    if (*v3 == 66 && !v3[1])
    {
      v5 = [v2 BOOLValue];
    }

    else
    {
      [v2 doubleValue];
      v5 = v4 != 0.0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_233873834(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [MEMORY[0x277CBEB18] array];
  if (a1)
  {
    if (*(a1 + 8) == 16)
    {
      while (1)
      {
        v6 = *(a1 + 24);
        a1 = *(a1 + 32);
        v7 = sub_2338728F0(v6, v4);
        v8 = v7;
        if (!v7)
        {
          v2 = [MEMORY[0x277CBEB68] null];
          v8 = v2;
        }

        [v5 addObject:v8];
        if (!v7)
        {
        }

        if (*(a1 + 8) != 16)
        {
          break;
        }
      }

      v9 = sub_2338728F0(a1, v4);

      v10 = v9;
      if (!v9)
      {
        v10 = [MEMORY[0x277CBEB68] null];
      }
    }

    else
    {
      v9 = sub_2338728F0(a1, v4);
      v10 = v9;
      if (!v9)
      {
        v10 = [MEMORY[0x277CBEB68] null];
      }
    }

    [v5 addObject:v10];
    if (!v9)
    {
    }
  }

  return v5;
}

void sub_233873A08(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v6 = &unk_284910F28;
  sub_23372A488(__p, "IFD0:EXIF:MAKERNOTE:ColorBalance1");
  (*(*a1 + 2976))(a1, a2, __p, &v6);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_233873AD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233873AEC(uint64_t a1)
{
  (*(*a1 + 160))(&v3);
  sub_2337D76B4(&v3, &v5);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v5)
  {
    v1 = (*(*v5 + 800))(v5);
  }

  else
  {
    v1 = 0;
  }

  if (v6)
  {
    sub_2337239E8(v6);
  }

  return v1;
}

void sub_233873BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

double sub_233873BB8(uint64_t a1)
{
  v1 = (*(*a1 + 2992))(a1);
  result = 0.6;
  if (!v1)
  {
    return 1.0;
  }

  return result;
}

void sub_233873C0C(uint64_t a1)
{
  (*(*a1 + 160))(&__p);
  sub_233873E7C(&__p, &v11);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  if (!v11)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((*(*v11 + 632))(v11))
  {
    v10[0] = &unk_284917748;
    v10[1] = 0;
    (*(*a1 + 160))(&v8, a1);
    v2 = v8;
    sub_23372A488(&__p, "AsShotWhiteBalance");
    (*(*v2 + 600))(v2, &__p, v10, 3);
    if (v7 < 0)
    {
      operator delete(__p);
    }

    if (v9)
    {
      sub_2337239E8(v9);
    }
  }

  else
  {
    v3 = (*(*a1 + 3000))(a1);
    (*(*a1 + 2960))(a1, v3);
  }

  if (v12)
  {
    sub_2337239E8(v12);
  }
}

void sub_233873E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  v19 = *(v17 - 24);
  if (v19)
  {
    sub_2337239E8(v19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233873E7C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284906FB0, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_233873F00(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D7FB8(v2, @"cameraMultipliersOffset", v3, &unk_28492B668);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_233873FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_233873FC4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t sub_233874020(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D7FB8(v2, @"blackLevelTableOffset", v3, &unk_28492B688);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2338740CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338740E4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x2383ABCE0](exception, "RawCameraException");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t sub_233874140(uint64_t a1)
{
  (*(*a1 + 72))(&v6);
  v2 = v6;
  v3 = (*(*a1 + 120))(a1);
  v4 = sub_2337D7FB8(v2, @"cameraMultipliersChannelCount", v3, &unk_28492B6A8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  return v4;
}

void sub_2338741EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_23387420C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:@"aspectRatioCrop"])
  {
    v16 = 0;
    v17 = 0;
    v4 = (*(*a1 + 432))(a1);
    v6 = v5;
    (*(*a1 + 160))(&v12, a1);
    sub_2337D76B4(&v12, &v14);
    if (v13)
    {
      sub_2337239E8(v13);
    }

    if (v14)
    {
      v4 = (*(*v14 + 792))(v14);
      v6 = v7;
    }

    v16 = v4;
    v17 = v6;
    if (v15)
    {
      sub_2337239E8(v15);
    }

    v8 = sub_2337D891C(&v16);
  }

  else if ([v3 isEqualToString:@"firmwareVersion"])
  {
    (*(*a1 + 160))(&v14, a1);
    sub_2337D76B4(&v14, &v16);
    if (v15)
    {
      sub_2337239E8(v15);
    }

    if (v16)
    {
      v9 = sub_23375D000(v16);
    }

    else
    {
      v9 = 0;
    }

    if (v17)
    {
      sub_2337239E8(v17);
    }

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  }

  else
  {
    v8 = sub_233814A54(a1, v3);
  }

  v10 = v8;

  return v10;
}

void sub_2338743F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(a1);
}

void sub_233874434(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(*a1 + 960))(a1) != 10)
  {
LABEL_23:
    sub_233814B18(a1, a2);
    return;
  }

  (*(*a1 + 160))(&__p, a1);
  sub_233873E7C(&__p, &v17);
  if (v13)
  {
    sub_2337239E8(v13);
  }

  if (!v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if ((*(*v17 + 632))(v17))
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    (*(*a1 + 160))(&v15, a1);
    v4 = v15;
    sub_23372A488(&__p, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
    v5 = (*(*v4 + 248))(v4, &__p, a2, 0);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v16)
    {
      sub_2337239E8(v16);
    }

    if (v5)
    {
LABEL_11:
      v6 = 0;
      goto LABEL_20;
    }
  }

  else
  {
    v7 = (*(*a1 + 3016))(a1);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    (*(*a1 + 160))(&v15, a1);
    v8 = v15;
    sub_23372A488(&__p, "IFD0:EXIF:MAKERNOTE:BLACKLEVELS");
    v9 = (*(*v8 + 248))(v8, &__p, a2, v7);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    if (v16)
    {
      sub_2337239E8(v16);
    }

    if (v9)
    {
      goto LABEL_11;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v10;
    operator delete(v10);
  }

  v6 = 1;
LABEL_20:
  if (v18)
  {
    sub_2337239E8(v18);
  }

  if (v6)
  {
    goto LABEL_23;
  }
}

void sub_233874700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  v21 = *v19;
  if (*v19)
  {
    *(v19 + 8) = v21;
    operator delete(v21);
  }

  if (a19)
  {
    sub_2337239E8(a19);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2338747B4@<X0>(char *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = a2;
  if (result[23] < 0)
  {
    result = sub_233731FB8(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    a2[2] = *(result + 2);
  }

  if (*(v2 + 23) < 0)
  {
    if (v2[1])
    {
      return result;
    }

    v2[1] = 7;
    v2 = *v2;
  }

  else
  {
    if (*(v2 + 23))
    {
      return result;
    }

    *(v2 + 23) = 7;
  }

  strcpy(v2, "<empty>");
  return result;
}

char *sub_233874844@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v2 = a2;
  if (*(a1 + 23) < 0)
  {
    sub_233731FB8(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 2) = *(a1 + 16);
  }

  v3 = v2[23];
  v4 = *v2;
  if (v3 >= 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = *v2;
  }

  if (v3 >= 0)
  {
    v6 = v2[23];
  }

  else
  {
    v6 = *(v2 + 1);
  }

  v7 = &v5[v6];
  if (v6 < 1)
  {
    v11 = -1;
  }

  else
  {
    v8 = v6;
    v9 = v5;
    do
    {
      v10 = memchr(v9, 64, v8);
      if (!v10)
      {
        break;
      }

      if (*v10 == 64)
      {
        goto LABEL_16;
      }

      v9 = v10 + 1;
      v8 = v7 - v9;
    }

    while (v7 - v9 > 0);
    v10 = &v5[v6];
LABEL_16:
    if (v10 == v7)
    {
      v11 = -1;
    }

    else
    {
      v11 = v10 - v5;
    }

    v12 = v5;
    do
    {
      result = memchr(v12, 46, v6);
      if (!result)
      {
        break;
      }

      if (*result == 46)
      {
        goto LABEL_26;
      }

      v12 = result + 1;
      v6 = v7 - v12;
    }

    while (v7 - v12 > 0);
  }

  result = v7;
LABEL_26:
  v14 = result - v5;
  if (result == v7)
  {
    v14 = -1;
  }

  if (v11 != -1 && v14 != -1 && v14 > v11 + 1)
  {
    if ((v3 & 0x80000000) != 0)
    {
      *(v2 + 1) = 7;
      v2 = v4;
    }

    else
    {
      v2[23] = 7;
    }

    strcpy(v2, "<email>");
  }

  return result;
}

int64_t sub_2338749AC(uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = v5 + v6;
    if (v8 >= v7)
    {
      v13 = v5 + a3;
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return v11 - v5;
    }
  }

  return a3;
}

void sub_233874A78(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_233731FB8(__dst, *a1, *(a1 + 8));
  }

  else
  {
    *__dst = *a1;
    v49 = *(a1 + 16);
  }

  sub_233874844(__dst, __p);
  sub_2338747B4(__p, a2);
  if (v51 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(a2 + 23) < 0)
  {
    sub_233731FB8(&v47, *a2, *(a2 + 8));
  }

  else
  {
    v47 = *a2;
  }

  v3 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  LOBYTE(v4) = *(&v47.__r_.__value_.__s + 23);
  size = v47.__r_.__value_.__l.__size_;
  v5 = v47.__r_.__value_.__r.__words[0];
  v7 = &v47;
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = (&v47 + HIBYTE(v47.__r_.__value_.__r.__words[2]));
  }

  else
  {
    v8 = (v47.__r_.__value_.__r.__words[0] + v47.__r_.__value_.__l.__size_);
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v47;
  }

  else
  {
    v9 = v47.__r_.__value_.__r.__words[0];
  }

  if (v9 != v8)
  {
    do
    {
      v9->__r_.__value_.__s.__data_[0] = __toupper(v9->__r_.__value_.__s.__data_[0]);
      v9 = (v9 + 1);
    }

    while (v9 != v8);
    v3 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    size = v47.__r_.__value_.__l.__size_;
    v5 = v47.__r_.__value_.__r.__words[0];
    LOBYTE(v4) = *(&v47.__r_.__value_.__s + 23);
  }

  if ((v4 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v7 = v5;
    v10 = size;
  }

  if (v10 >= 5)
  {
    v11 = v7 + v10;
    v12 = v10;
    v13 = v7;
    do
    {
      v14 = memchr(v13, 78, v12 - 4);
      if (!v14)
      {
        break;
      }

      if (*v14 == 1330334030 && v14[4] == 78)
      {
        if (v14 != v11 && v14 - v7 != -1)
        {
          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 5;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 5;
          }

          *(a2 + 4) = 78;
          v45 = 1330334030;
          goto LABEL_149;
        }

        break;
      }

      v13 = (v14 + 1);
      v12 = v11 - v13;
    }

    while (v11 - v13 >= 5);
    v16 = v10;
    v17 = v7;
    if (v10 < 7)
    {
      goto LABEL_45;
    }

    v18 = v10;
    v19 = v7;
    while (1)
    {
      v20 = memchr(v19, 79, v18 - 6);
      if (!v20)
      {
LABEL_44:
        v16 = v10;
        v17 = v7;
        goto LABEL_45;
      }

      v21 = v20;
      if (*v20 == 1297697871 && *(v20 + 3) == 1398100045)
      {
        break;
      }

      v19 = (v20 + 1);
      v18 = v11 - (v21 + 1);
      if (v18 < 7)
      {
        goto LABEL_44;
      }
    }

    v16 = v10;
    v17 = v7;
    if (v21 != v11)
    {
      v16 = v10;
      v17 = v7;
      if (v21 - v7 != -1)
      {
        if (*(a2 + 23) < 0)
        {
          *(a2 + 8) = 7;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 7;
        }

        *(a2 + 3) = 1398100045;
        v46 = 1297697871;
LABEL_156:
        *a2 = v46;
        v44 = (a2 + 7);
        goto LABEL_157;
      }
    }

LABEL_45:
    do
    {
      v23 = memchr(v17, 76, v16 - 4);
      if (!v23)
      {
        break;
      }

      if (*v23 == 1128875340 && v23[4] == 65)
      {
        if (v23 != v11 && v23 - v7 != -1)
        {
          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 5;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 5;
          }

          *(a2 + 4) = 65;
          v45 = 1128875340;
          goto LABEL_149;
        }

        break;
      }

      v17 = (v23 + 1);
      v16 = v11 - v17;
    }

    while (v11 - v17 >= 5);
    if (v10 != 5)
    {
      v25 = v7;
      do
      {
        v26 = memchr(v25, 80, v10 - 5);
        if (!v26)
        {
          break;
        }

        if (*v26 == 1414415696 && *(v26 + 2) == 22593)
        {
          if (v26 == v11 || v26 - v7 == -1)
          {
            break;
          }

          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 6;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 6;
          }

          *(a2 + 4) = 22593;
          *a2 = 1414415696;
          v44 = (a2 + 6);
          goto LABEL_157;
        }

        v25 = (v26 + 1);
        v10 = v11 - v25;
      }

      while (v11 - v25 >= 6);
    }
  }

  if ((v4 & 0x80u) == 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = size;
  }

  v28 = v7 + v4;
  if (v4 > 6)
  {
    v29 = v4;
    v30 = v7;
    do
    {
      v31 = memchr(v30, 77, v29 - 6);
      if (!v31)
      {
        break;
      }

      if (*v31 == 1330530637 && *(v31 + 3) == 1096043599)
      {
        if (v31 != v28 && v31 - v7 != -1)
        {
          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 7;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 7;
          }

          *(a2 + 3) = 1096043599;
          v46 = 1330530637;
          goto LABEL_156;
        }

        break;
      }

      v30 = (v31 + 1);
      v29 = v28 - v30;
    }

    while (v28 - v30 >= 7);
    v33 = v4;
    v34 = v7;
    do
    {
      v35 = memchr(v34, 83, v33 - 6);
      if (!v35)
      {
        break;
      }

      if (*v35 == 1397571923 && *(v35 + 3) == 1196315987)
      {
        if (v35 == v28 || v35 - v7 == -1)
        {
          break;
        }

        if (*(a2 + 23) < 0)
        {
          *(a2 + 8) = 7;
          a2 = *a2;
        }

        else
        {
          *(a2 + 23) = 7;
        }

        *(a2 + 3) = 1196315987;
        v46 = 1397571923;
        goto LABEL_156;
      }

      v34 = (v35 + 1);
      v33 = v28 - v34;
    }

    while (v28 - v34 >= 7);
  }

  if (v4 >= 5)
  {
    v37 = v4;
    v38 = v7;
    do
    {
      v39 = memchr(v38, 69, v37 - 4);
      if (!v39)
      {
        break;
      }

      if (*v39 == 1330860101 && v39[4] == 78)
      {
        if (v39 != v28 && v39 - v7 != -1)
        {
          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 5;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 5;
          }

          *(a2 + 4) = 78;
          v45 = 1330860101;
          goto LABEL_149;
        }

        break;
      }

      v38 = (v39 + 1);
      v37 = v28 - v38;
    }

    while (v28 - v38 >= 5);
    if (v4 >= 10)
    {
      v41 = v7;
      do
      {
        v42 = memchr(v41, 72, v4 - 9);
        if (!v42)
        {
          break;
        }

        if (*v42 == 0x4C424C4553534148 && *(v42 + 4) == 17473)
        {
          if (v42 == v28 || v42 - v7 == -1)
          {
            break;
          }

          if (*(a2 + 23) < 0)
          {
            *(a2 + 8) = 10;
            a2 = *a2;
          }

          else
          {
            *(a2 + 23) = 10;
          }

          *(a2 + 8) = 17473;
          *a2 = *"HASSELBLAD";
          v44 = (a2 + 10);
          goto LABEL_157;
        }

        v41 = (v42 + 1);
        v4 = v28 - v41;
      }

      while (v28 - v41 >= 10);
    }
  }

  if (sub_2338749AC(&v47, "LEAF", 0) == -1)
  {
    if (sub_2338749AC(&v47, "RICOH", 0) == -1)
    {
      if (sub_2338749AC(&v47, "PHASE ONE", 0) == -1)
      {
        std::string::operator=(a2, &v47);
        goto LABEL_158;
      }

      if (*(a2 + 23) < 0)
      {
        *(a2 + 8) = 9;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 9;
      }

      *(a2 + 8) = 69;
      *a2 = *"PHASE ONE";
      v44 = (a2 + 9);
    }

    else
    {
      if (*(a2 + 23) < 0)
      {
        *(a2 + 8) = 5;
        a2 = *a2;
      }

      else
      {
        *(a2 + 23) = 5;
      }

      *(a2 + 4) = 72;
      v45 = 1329809746;
LABEL_149:
      *a2 = v45;
      v44 = (a2 + 5);
    }
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      *(a2 + 8) = 4;
      a2 = *a2;
    }

    else
    {
      *(a2 + 23) = 4;
    }

    *a2 = 1178682700;
    v44 = (a2 + 4);
  }

LABEL_157:
  *v44 = 0;
LABEL_158:
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_2338751E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 + 23) < 0)
  {
    operator delete(*v27);
  }

  _Unwind_Resume(exception_object);
}

void sub_233875248(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_233731FB8(v3, *a1, *(a1 + 8));
  }

  else
  {
    *v3 = *a1;
    v4 = *(a1 + 16);
  }

  sub_233874844(v3, __p);
  sub_2338747B4(__p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_2338752D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_233875304(int a1, int a2, char *__s, uint64_t *a4, uint64_t *a5)
{
  v7 = __s;
  v8 = __s[23];
  if (v8 < 0)
  {
    v8 = *(__s + 1);
    if (!v8)
    {
LABEL_18:
      v13 = 1;
      goto LABEL_19;
    }

    v7 = *__s;
  }

  else if (!__s[23])
  {
    goto LABEL_18;
  }

  v9 = &v7[v8];
  if (v8 >= 4)
  {
    v10 = v7;
    do
    {
      v11 = memchr(v10, 100, v8 - 3);
      if (!v11)
      {
        break;
      }

      if (*v11 == 778530404)
      {
        goto LABEL_12;
      }

      v10 = v11 + 1;
      v8 = v9 - v10;
    }

    while (v9 - v10 > 3);
  }

  v11 = v9;
LABEL_12:
  v13 = v11 == v9 || v11 != v7;
LABEL_19:
  v14 = *(a4 + 23);
  if (v14 < 0)
  {
    if (a4[1] != 14)
    {
      return 0;
    }

    a4 = *a4;
  }

  else if (v14 != 14)
  {
    return 0;
  }

  if (*a4 ^ 0x4F45206E6F6E6143 | *(a4 + 6) ^ 0x4430303320534F45)
  {
    v13 = 1;
  }

  if (v13)
  {
    return 0;
  }

  v15 = *(a5 + 23);
  if (v15 < 0)
  {
    if (a5[1] == 10)
    {
      a5 = *a5;
      return *a5 == 0x3831313330363830 && *(a5 + 4) == 14646;
    }

    return 0;
  }

  if (v15 != 10)
  {
    return 0;
  }

  return *a5 == 0x3831313330363830 && *(a5 + 4) == 14646;
}

void sub_23387546C(void *a1, void *a2)
{
  if ((atomic_load_explicit(byte_280C04EE0, memory_order_acquire) & 1) == 0)
  {
    sub_2338FD2B4();
  }

  if (qword_27DE3DE20 != -1)
  {
    sub_2338FD310();
  }

  v4 = *a1;
  if (qword_280C04ED8)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (*a2)
    {
      LODWORD(v44) = (*(**a2 + 120))(*a2);
      v6 = sub_2337584D4(&v44);
      v7 = sub_2337584A8(&v44);
      sub_23373CD80(v7, &v50);

      (*(**a2 + 144))(&v48);
      if (*(&v48 + 1) == v48)
      {
        goto LABEL_24;
      }

      v8 = *(v48 + 23);
      if (v8 >= 0)
      {
        v9 = *(v48 + 23);
      }

      else
      {
        v9 = *(v48 + 8);
      }

      v10 = HIBYTE(v51);
      if (v51 < 0)
      {
        v10 = *(&v50 + 1);
      }

      if (v9 != v10)
      {
LABEL_24:
        v13 = 0;
      }

      else
      {
        if (v8 >= 0)
        {
          v11 = v48;
        }

        else
        {
          v11 = *v48;
        }

        if (v51 >= 0)
        {
          v12 = &v50;
        }

        else
        {
          v12 = v50;
        }

        v13 = memcmp(v11, v12, v9) == 0;
      }

      *&v46 = &v48;
      sub_233735AD4(&v46);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50);
      }

      v4 = *a1;
    }

    else
    {
      v13 = 0;
      v6 = -1;
    }

    (*(*v4 + 216))(&v50);
    (*(**a1 + 224))(&v48);
    (***a1)(&v46);
    (*(**a1 + 232))(&v44);
    v14 = (*(**a1 + 400))(*a1);
    v15 = sub_233875D18(v14, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2FE0]);
    sub_23373CD80(v15, &v42);

    if (SHIBYTE(v51) < 0)
    {
      v16 = sub_233731FB8(&__dst, v50, *(&v50 + 1));
    }

    else
    {
      __dst = v50;
      v41 = v51;
    }

    if (SHIBYTE(v49) < 0)
    {
      v16 = sub_233731FB8(v38, v48, *(&v48 + 1));
    }

    else
    {
      *v38 = v48;
      v39 = v49;
    }

    if (SHIBYTE(v47) < 0)
    {
      v16 = sub_233731FB8(__s, v46, *(&v46 + 1));
    }

    else
    {
      *__s = v46;
      v37 = v47;
    }

    if (SHIBYTE(v45) < 0)
    {
      v16 = sub_233731FB8(v34, v44, *(&v44 + 1));
    }

    else
    {
      *v34 = v44;
      v35 = v45;
    }

    if (SHIBYTE(v43) < 0)
    {
      v16 = sub_233731FB8(__p, v42, *(&v42 + 1));
    }

    else
    {
      *__p = v42;
      v33 = v43;
    }

    v18 = sub_233875304(v16, v17, __s, v34, __p);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(__s[0]);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(__dst);
      if (v18)
      {
LABEL_75:
        if (SHIBYTE(v43) < 0)
        {
          operator delete(v42);
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44);
        }

        if (SHIBYTE(v47) < 0)
        {
          operator delete(v46);
        }

        if (SHIBYTE(v49) < 0)
        {
          operator delete(v48);
        }

        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50);
        }

        return;
      }
    }

    else if (v18)
    {
      goto LABEL_75;
    }

    v19 = qword_280C04ED8;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3321888768;
    v21[2] = sub_233875DAC;
    v21[3] = &unk_28492C300;
    if (SHIBYTE(v51) < 0)
    {
      sub_233731FB8(v22, v50, *(&v50 + 1));
    }

    else
    {
      *v22 = v50;
      v23 = v51;
    }

    if (SHIBYTE(v49) < 0)
    {
      sub_233731FB8(v24, v48, *(&v48 + 1));
    }

    else
    {
      *v24 = v48;
      v25 = v49;
    }

    if (SHIBYTE(v47) < 0)
    {
      sub_233731FB8(v26, v46, *(&v46 + 1));
    }

    else
    {
      *v26 = v46;
      v27 = v47;
    }

    v20 = a2[1];
    v28 = *a2;
    v29 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v6;
    v31 = v13;
    dispatch_async(v19, v21);
    if (v29)
    {
      sub_2337239E8(v29);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[0]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22[0]);
    }

    goto LABEL_75;
  }
}

void sub_2338759F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (*(v55 - 161) < 0)
  {
    operator delete(*(v55 - 184));
  }

  if (*(v55 - 137) < 0)
  {
    operator delete(*(v55 - 160));
  }

  if (*(v55 - 113) < 0)
  {
    operator delete(*(v55 - 136));
  }

  if (*(v55 - 89) < 0)
  {
    operator delete(*(v55 - 112));
  }

  if (*(v55 - 65) < 0)
  {
    operator delete(*(v55 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_233875B34()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v1 bundleIdentifier];
  v3 = [v1 bundleURL];
  v4 = [v3 pathExtension];

  if (v2)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v2;
    v7 = v4;
    AnalyticsSendEventLazy();
  }

  objc_autoreleasePoolPop(v0);
}

id sub_233875C88(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"Signature";
  v4[1] = @"Extension";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id sub_233875D18(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_233739994(a1, a2, 0);
  v7 = sub_233739A60(v6, v5);

  return v7;
}

void sub_233875DAC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = MEMORY[0x277CCACA8];
  if (*(a1 + 55) < 0)
  {
    sub_233731FB8(&__dst, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __dst = *(a1 + 32);
    v43 = *(a1 + 48);
  }

  sub_233874A78(&__dst, v44);
  if (v45 >= 0)
  {
    v4 = v44;
  }

  else
  {
    v4 = v44[0];
  }

  v5 = [v3 stringWithUTF8String:v4];
  v6 = v5;
  v7 = @"Unknown Make";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__dst);
  }

  v9 = MEMORY[0x277CCACA8];
  if (*(a1 + 79) < 0)
  {
    sub_233731FB8(&__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __p = *(a1 + 56);
    v41 = *(a1 + 72);
  }

  sub_233875248(&__p, v44);
  if (v45 >= 0)
  {
    v10 = v44;
  }

  else
  {
    v10 = v44[0];
  }

  v11 = [v9 stringWithUTF8String:v10];
  v12 = v11;
  v13 = @"Unknown Model";
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(__p);
  }

  v15 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v15 = *v15;
  }

  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:v15];
  v17 = v16;
  v18 = @"Unknown Key";
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = *(a1 + 104);
  if (v20)
  {
    v21 = (*(*v20 + 2152))(v20);
    v22 = (*(**(a1 + 104) + 176))(*(a1 + 104));
    v23 = (*(**(a1 + 104) + 408))(*(a1 + 104));
    v24 = 0.0;
    if ((v21 & 1) == 0)
    {
      v24 = (*(**(a1 + 104) + 2664))(*(a1 + 104), 0, 0);
    }

    v25 = (*(**(a1 + 104) + 256))(*(a1 + 104));
    v26 = (*(**(a1 + 104) + 264))(*(a1 + 104));
    v32[1] = MEMORY[0x277D85DD0];
    v32[2] = 3221225472;
    v32[3] = sub_233876304;
    v32[4] = &unk_2789EF7E0;
    v36 = *(a1 + 120);
    v37 = *(a1 + 124);
    v38 = v22;
    v39 = v21;
    v33 = v8;
    v34 = v14;
    v35[0] = v19;
    *&v35[1] = v24;
    *&v35[2] = v23 * SHIDWORD(v23);
    *&v35[3] = v25;
    *&v35[4] = v26;
    AnalyticsSendEventLazy();
    v27 = &v33;
    v28 = &v34;
    v29 = v35;
  }

  else
  {
    v30 = v8;
    v31 = v14;
    v32[0] = v19;
    AnalyticsSendEventLazy();
    v27 = &v30;
    v28 = &v31;
    v29 = v32;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_233876218(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338761F0);
}

void sub_2338762A4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v34 - 113) < 0)
  {
    operator delete(*(v34 - 136));
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x233876280);
}

void sub_2338762D4()
{
  if (*(v0 - 113) < 0)
  {
    operator delete(*(v0 - 136));
  }

  if (*(v0 - 137) < 0)
  {
    operator delete(*(v0 - 160));
  }

  JUMPOUT(0x233876284);
}

id sub_233876304(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v12[0] = @"ProcessingVersion";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 88)];
  v13[0] = v2;
  v12[1] = @"LatestVersion";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 92)];
  v13[1] = v3;
  v12[2] = @"DNG";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 93)];
  v13[2] = v4;
  v12[3] = @"Linearized";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 94)];
  v13[3] = v5;
  v14 = *(a1 + 32);
  v12[4] = @"CameraMake";
  v12[5] = @"CameraModel";
  v15 = *(a1 + 48);
  v12[6] = @"CameraKey";
  v12[7] = @"RepresentativeNoise";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v16 = v6;
  v12[8] = @"Megapixel";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v17 = v7;
  v12[9] = @"ISO";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v18 = v8;
  v12[10] = @"ExposureTime";
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
  v19 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:11];

  return v10;
}

id sub_233876588(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4[0] = @"CameraMake";
  v4[1] = @"CameraModel";
  v5 = v1;
  v4[2] = @"CameraKey";
  v6 = *(a1 + 48);
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v5 forKeys:v4 count:3];

  return v2;
}

_BYTE *sub_23387662C(_BYTE *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 55) < 0)
  {
    result = sub_233731FB8(result + 32, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 6) = *(a2 + 48);
    *(result + 2) = v4;
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_233731FB8(v3 + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(v3 + 9) = *(a2 + 72);
    *(v3 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    result = sub_233731FB8(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(v3 + 12) = *(a2 + 96);
    *(v3 + 5) = v6;
  }

  v7 = *(a2 + 112);
  *(v3 + 13) = *(a2 + 104);
  *(v3 + 14) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338766E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void sub_233876714(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    v3 = *(a1 + 32);

    operator delete(v3);
  }
}

void sub_233876A94(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_233876AB0(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWBayerInterleavedFilter", &unk_233945DBE, v5, 2u);
  }
}

void sub_233876B38(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGAffineTransformMakeScale(&v8, 0.5, 0.5);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  v10 = CGRectApplyAffineTransform(v9, &v8);
  CGRectIntegral(v10);
}

void sub_2338789CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338789E8(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWDemosaicFilter", &unk_233945DBE, v5, 2u);
  }
}

double sub_233878AA0(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, float a9)
{
  v11 = a1 + a7;
  v12 = a2 + a8;
  v19 = CGRectInset(*(&a3 - 2), -a9, -a9);
  v13 = 0;
  v14 = 0;
  v15 = a5;
  v16 = a6;

  *&result = CGRectIntersection(v19, *&v13);
  return result;
}

double sub_233878B60(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_233878B8C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    *&result = CGRectInset(*&result, -3.0, -3.0);
  }

  return result;
}

void sub_233878CE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 160))(&v7);
  sub_233878E40(&v7, &v9);
  if (v8)
  {
    sub_2337239E8(v8);
  }

  if (v9)
  {
    (*(*a1 + 160))(&v5, a1);
    sub_2338EDDEC(&v5, &v7);
    if (v6)
    {
      sub_2337239E8(v6);
    }

    v4 = 0.0;
    if (v7[18] >= 3)
    {
      LODWORD(v4) = v7[29];
      v4 = *&v4;
    }

    v5 = v4;
    sub_233731694(a2, 4uLL, &v5);
    if (v8)
    {
      sub_2337239E8(v8);
    }
  }

  else
  {
    v7 = 0;
    sub_233731694(a2, 4uLL, &v7);
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }
}

void sub_233878E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_233878E40@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  if (result && (result = __dynamic_cast(result, &unk_284903320, &unk_284937F70, 0)) != 0)
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_233878EC4(_DWORD *a1)
{
  if (!a1[10])
  {
    sub_23373C93C(a1);
  }
}

void sub_233878ED4(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  sub_2338799A8();
}

void sub_233878F24(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x233878F14);
}

void sub_233878F34(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233878F4C(uint64_t *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 48))();
  v14 = sub_233725414(*a2);
  LODWORD(v13[0]) = v4;
  LODWORD(v13[0]) = *sub_233725A80(v13, &v14);
  sub_233754E8C(v15, a2, v13);
  v5 = sub_233725614(*a2);
  sub_233725614(*a2);
  v14 = sub_233725614(*a2);
  if (v5 != 1229539657 && v5 != 1296911693)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233723AE0(&v12, &v14);
  sub_233725F08(v13, a2, &v12, 0);
  v6 = sub_233725614(*a2);
  sub_233725614(*a2);
  if (v6 > 0x1FF)
  {
    v9 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v9, "RawCameraException");
    __cxa_throw(v9, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  for (; v6; --v6)
  {
    v7 = sub_233725614(*a2);
    v12 = sub_233725614(*a2);
    v11 = sub_233725614(*a2);
    sub_233879198(a1, a2, v7, &v12, &v11);
  }

  sub_233725FD4(v13);
  return sub_233754F18(v15);
}

void sub_23387912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  __cxa_free_exception(v13);
  sub_233754F18(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_233879198(uint64_t *result, uint64_t *a2, int a3, _DWORD *a4, int *a5)
{
  v7 = result;
  v43 = *MEMORY[0x277D85DE8];
  if (a3 > 1048)
  {
    switch(a3)
    {
      case 1049:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        if (*a4 >= 0x24u && sub_2337255C0(*a2) == 18761 && sub_2337255C0(*a2) == 1)
        {
          *(v7 + 16) = sub_233725730(*a2);
          *(v7 + 17) = sub_233725730(*a2);
          *(v7 + 18) = sub_233725730(*a2);
          *(v7 + 19) = sub_233725730(*a2);
          *(v7 + 20) = sub_233725730(*a2);
          *(v7 + 21) = sub_233725730(*a2);
          *(v7 + 22) = sub_233725730(*a2);
          v30 = sub_233725730(*a2);
          *(v7 + 23) = v30;
          *(v7 + 48) = 0;
          if ((v7[8] & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v7 + 17) & 0x7FFFFFFFu) > 0x7F7FFFFF || (v7[9] & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v7 + 19) & 0x7FFFFFFFu) > 0x7F7FFFFF || (v7[10] & 0x7FFFFFFFu) > 0x7F7FFFFF || (*(v7 + 21) & 0x7FFFFFFFu) > 0x7F7FFFFF || (v7[11] & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v30) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }
        }

        return sub_233725FD4(v39);
      case 1050:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        if (*a4 == 16)
        {
          v31 = sub_233725730(*a2);
          *__s = v31;
          v38 = sub_233725730(*a2);
          v32 = sub_233725730(*a2);
          v37 = v32;
          v33 = sub_233725730(*a2);
          v36 = v33;
          if ((LODWORD(v31) & 0x7FFFFFFFu) > 0x7F7FFFFF || (v38 & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v32) & 0x7FFFFFFFu) > 0x7F7FFFFF || (LODWORD(v33) & 0x7FFFFFFFu) > 0x7F7FFFFF)
          {
            v34 = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](v34, "RawCameraException");
            __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          sub_233754CB4(v7 + 3, __s);
          sub_233754CB4(v7 + 3, &v38);
          sub_233754CB4(v7 + 3, &v37);
          sub_233754CB4(v7 + 3, &v36);
        }

        return sub_233725FD4(v39);
      case 1051:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        if (*a4 == 116)
        {
          v9 = 5;
          do
          {
            *__s = sub_233725614(*a2);
            sub_2337539D0(v7 + 13, __s);
            --v9;
          }

          while (v9);
          v10 = 5;
          do
          {
            *__s = sub_233725614(*a2);
            sub_2337539D0(v7 + 16, __s);
            --v10;
          }

          while (v10);
          v11 = 5;
          do
          {
            *__s = sub_233725614(*a2);
            sub_2337539D0(v7 + 19, __s);
            --v11;
          }

          while (v11);
          v12 = 5;
          do
          {
            *__s = sub_233725614(*a2);
            sub_2337539D0(v7 + 22, __s);
            --v12;
          }

          while (v12);
          v13 = *a2;
          *__s = 32;
          (*(*v13 + 40))(v13, __s, 1);
          *(v7 + 200) = sub_233725614(*a2) == 1;
        }

        return sub_233725FD4(v39);
    }
  }

  else
  {
    switch(a3)
    {
      case 1024:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        v38 = 8;
        *__s = *a4;
        for (i = *sub_2337B21A0(__s, &v38); i; --i)
        {
          v15 = sub_2337255C0(*a2);
          v16 = sub_2337255C0(*a2);
          v17 = sub_2337255C0(*a2);
          sub_2337255C0(*a2);
          v18 = v15 | (v16 << 32);
          v20 = v7[1];
          v19 = v7[2];
          if (v20 >= v19)
          {
            v22 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *v7) >> 2);
            v23 = v22 + 1;
            if (v22 + 1 > 0x1555555555555555)
            {
              sub_2337235BC();
            }

            v24 = 0xAAAAAAAAAAAAAAABLL * ((v19 - *v7) >> 2);
            if (2 * v24 > v23)
            {
              v23 = 2 * v24;
            }

            if (v24 >= 0xAAAAAAAAAAAAAAALL)
            {
              v25 = 0x1555555555555555;
            }

            else
            {
              v25 = v23;
            }

            if (v25)
            {
              sub_233879950(v7, v25);
            }

            v26 = 12 * v22;
            *v26 = v17;
            *(v26 + 4) = v18;
            v21 = 12 * v22 + 12;
            v27 = v7[1] - *v7;
            v28 = (12 * v22 - v27);
            memcpy(v28, *v7, v27);
            v29 = *v7;
            *v7 = v28;
            v7[1] = v21;
            v7[2] = 0;
            if (v29)
            {
              operator delete(v29);
            }
          }

          else
          {
            *v20 = v17;
            *(v20 + 4) = v18;
            v21 = v20 + 12;
          }

          v7[1] = v21;
        }

        return sub_233725FD4(v39);
      case 1026:
        if (!*a4)
        {
          *(result + 58) = *a5;
        }

        break;
      case 1031:
        sub_233726A8C(__s, a5);
        sub_233725F08(v39, a2, __s, 0);
        *__s = 0;
        v41 = 0;
        v42 = 0;
        if (*a4 <= 0x12u)
        {
          v8 = (*(**a2 + 32))(*a2, __s);
          if (*a4 == v8)
          {
            __s[v8] = 0;
            sub_23372610C((v7 + 26), __s);
          }
        }

        return sub_233725FD4(v39);
    }
  }

  return result;
}

void sub_233879824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_233879950(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  sub_2337236AC();
}

void sub_233879AA4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28492CF50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_233879B1C(void *a1)
{
  sub_233879B54(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_233879B54(void *a1)
{
  *a1 = &unk_28492CFD0;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[5] = v4;
    operator delete(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a1[2] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_233879BD4(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  sub_233879B54((a1 + 96));
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

id sub_23387B09C(void *a1)
{
  v2 = [objc_opt_class() description];
  NSLog(&cfstr_FixmeOutputima.isa, v2);

  v3 = [a1 inputKeys];
  v4 = *MEMORY[0x277CBFAF0];
  v5 = [v3 containsObject:*MEMORY[0x277CBFAF0]];

  if (v5)
  {
    v6 = [a1 valueForKey:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_23387B15C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  *__p = xmmword_23390A6C0;
  v14 = 0x3FF0000000000000;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  sub_233764ED4(a2, __p, &v15, 3uLL);
  (*(*a1 + 160))(__p, a1);
  sub_2337D03B0(__p, &v11);
  if (__p[1])
  {
    sub_2337239E8(__p[1]);
  }

  if (v11)
  {
    sub_23387B340(v11, __p);
    v6 = __p[0];
    if (*__p[0] != 0.0)
    {
      v5.i32[0] = *(__p[0] + 1);
      if (*v5.i32 != 0.0)
      {
        v7 = *(__p[0] + 2);
        if (v7 != 0.0)
        {
          v8 = *a2;
          *v8 = vcvtq_f64_f32(vdiv_f32(vdup_lane_s32(v5, 0), *__p[0]));
          v8[1].f64[0] = (*v5.i32 / v7);
LABEL_11:
          __p[1] = v6;
          operator delete(v6);
          goto LABEL_12;
        }
      }
    }

    v9 = sub_2338C0490(__p[0], v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_23371F000, v9, OS_LOG_TYPE_INFO, "Not applying LevelBalanceAdjustment as it would result in a divide by zero", v10, 2u);
    }

    v6 = __p[0];
    if (__p[0])
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  if (v12)
  {
    sub_2337239E8(v12);
  }
}

void sub_23387B2F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_2337239E8(a12);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_23387B340@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 1400) == 1)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return sub_233729070(a2, result[172], result[173], (result[173] - result[172]) >> 2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void sub_23387B378(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 2192))(a1);
  (*(*a1 + 2200))(v18, a1);
  v16 = 0;
  v17 = v4;
  v15 = &unk_284917748;
  (*(*a1 + 160))(&__p, a1);
  (*(*__p + 600))(__p, v18, &v15, 3);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  (*(*a1 + 160))(&__p, a1);
  sub_2337D03B0(&__p, &v13);
  if (v12)
  {
    sub_2337239E8(v12);
  }

  if (v13 && *(a2 + 8) - *a2 >= 0x11uLL)
  {
    sub_23387B340(v13, &__p);
    v6 = __p;
    if (*__p != 0.0 && *(__p + 1) != 0.0)
    {
      v7 = *(__p + 2);
      if (v7 != 0.0)
      {
        v8 = *a2;
        *v8 = vdivq_f64(**a2, vcvtq_f64_f32(*__p));
        v8[1].f64[0] = v8[1].f64[0] / v7;
LABEL_14:
        v12 = v6;
        operator delete(v6);
        goto LABEL_15;
      }
    }

    v9 = sub_2338C0490(__p, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_23371F000, v9, OS_LOG_TYPE_INFO, "Not applying LevelBalanceAdjustment as it would result in a divide by zero", v10, 2u);
    }

    v6 = __p;
    if (__p)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  if (v14)
  {
    sub_2337239E8(v14);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_23387B5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    sub_2337239E8(a15);
  }

  v18 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v18;
    operator delete(v18);
  }

  if (*(v16 - 33) < 0)
  {
    operator delete(*(v16 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_23387B654(uint64_t a1)
{
  if ((*(*a1 + 176))(a1))
  {
    goto LABEL_2;
  }

  v10 = 0;
  (*(*a1 + 160))(&v8, a1);
  v2 = v8;
  sub_23372A488(__p, "IFD0:DNGPrivate:SR2Private:SR2SubIFD:WhiteLevel");
  v3 = (*(*v2 + 240))(v2, __p, &v10);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }

  if (v3)
  {
    goto LABEL_13;
  }

  (*(*a1 + 160))(&v8, a1);
  v4 = v8;
  sub_23372A488(__p, "IFD0:SR2Private:SR2SubIFD:0x7306");
  v5 = (*(*v4 + 240))(v4, __p, &v10);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9)
  {
    sub_2337239E8(v9);
  }

  if (v5)
  {
LABEL_13:
    (*(*a1 + 848))(a1);
  }

  else
  {
LABEL_2:
    sub_2338D8F78(a1);
  }
}

void sub_23387B81C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_23387B854(uint64_t a1@<X0>, float64x2_t **a2@<X8>)
{
  if (((*(*a1 + 176))(a1) & 1) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    (*(*a1 + 160))(&v10, a1);
    v4 = v10;
    sub_23372A488(__p, "IFD0:DNGPrivate:SR2Private:SR2SubIFD:BlackLevels");
    v5 = (*(*v4 + 248))(v4, __p, a2, 0);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11)
    {
      sub_2337239E8(v11);
    }

    v6 = *a2;
    if (v5)
    {
      v7 = vaddq_f64(v6[1], v6[1]);
      *v6 = vaddq_f64(*v6, *v6);
      v6[1] = v7;
      return;
    }

    if (v6)
    {
      a2[1] = v6;
      operator delete(v6);
    }
  }

  sub_2338D50CC(a1, a2);
}

void sub_23387B980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_2337239E8(a17);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_23387B9C8(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPanasonic14BitUnpacker", &unk_233945DBE, buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_23387BDA8;
  v4[3] = &unk_2789EE800;
  v4[4] = a1;
  MEMORY[0x2383AC810](v4);
  operator new[]();
}

void sub_23387BDA8(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPanasonic14BitUnpacker", &unk_233945DBE, v5, 2u);
  }
}

void sub_23387BF48(void *a1)
{
  v3 = __cxa_begin_catch(a1);
  v5 = sub_2338C0490(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_2338FD42C(v5);
  }

  __cxa_end_catch();
  JUMPOUT(0x23387BEE0);
}

void sub_23387BFA8(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWLinearSpacePlaceholder", &unk_233945DBE, v5, 2u);
  }
}

void sub_23387E984(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_23387E9A0(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWAdjustColorTRC", &unk_233945DBE, v5, 2u);
  }
}

void sub_23387EA28(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  if (v4 < 5)
  {
    v6 = v21 - ((8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = *(a1 + 48);
    v8 = v21 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v9 = 0;
      do
      {
        [*(a1 + 32) valueAtIndex:v9];
        *&v6[8 * v9] = v10;
        [*(a1 + 40) valueAtIndex:v9];
        *&v8[8 * v9++] = v11;
        v12 = *(a1 + 48);
      }

      while (v9 < v12);
    }

    else
    {
      v12 = 0;
    }

    v5 = [Curve curveWithCount:v12 xvalues:v6 yvalues:v8];
  }

  else
  {
    v5 = +[Curve curveWithCount:xvalues:yvalues:](Curve, "curveWithCount:xvalues:yvalues:", *(a1 + 48), [*(a1 + 32) _values], objc_msgSend(*(a1 + 40), "_values"));
  }

  for (i = 0; i != 256; ++i)
  {
    v14 = [v5 function];
    _D8 = v14[2](i / 255.0);

    __asm { FCVT            H0, D8 }

    *(a2 + 2 * i) = _H0;
  }
}

double sub_23387EBF0(uint64_t a1, int a2)
{
  if (a2)
  {
    return *(a1 + 32);
  }

  return result;
}

void sub_23387F00C(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWConvertSRGBtoLinear", &unk_233945DBE, v5, 2u);
  }
}

void sub_23387F2E8(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWConvertLinearToSRGB", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338801FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_233880218(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWHueMagnet", &unk_233945DBE, v5, 2u);
  }
}

double sub_2338833BC(double a1, double a2, double a3, double a4)
{
  v4 = a1;
  v5 = (v4 * 0.5) + 0.5;
  v6 = a1 + a3;
  v7 = (v6 * 0.5) + 0.5;
  v8 = a2;
  v9 = (v8 * 0.5) + 0.5;
  v10 = a2 + a4;
  v11 = (v10 * 0.5) + 0.5;
  v13.origin.x = v5;
  v13.origin.y = v9;
  v13.size.width = (v7 - v5);
  v13.size.height = (v11 - v9);
  *&result = CGRectInset(v13, -1.0, -1.0);
  return result;
}

double sub_2338837B8(int a1, double result, double a3, double a4, double a5)
{
  if (a1 == 1)
  {
    v5 = result;
    v6 = (v5 * 0.5) + 0.5;
    v7 = result + a4;
    v8 = (v7 * 0.5) + 0.5;
    v9 = a3;
    v10 = (v9 * 0.5) + 0.5;
    v11 = a3 + a5;
    v12 = (v11 * 0.5) + 0.5;
    v13.origin.x = v6;
    v13.origin.y = v10;
    v13.size.width = (v8 - v6);
    v13.size.height = (v12 - v10);
    *&result = CGRectInset(v13, -1.0, -1.0);
  }

  return result;
}

double sub_233883930(double a1, double a2, double a3, double a4)
{
  v4 = a1;
  v5 = (v4 * 2.0) + 0.5;
  v6 = a1 + a3;
  v7 = (v6 * 2.0) + 0.5;
  v8 = a2;
  v9 = (v8 * 2.0) + 0.5;
  v10 = a2 + a4;
  v11 = (v10 * 2.0) + 0.5;
  v13.origin.x = v5;
  v13.origin.y = v9;
  v13.size.width = (v7 - v5);
  v13.size.height = (v11 - v9);
  *&result = CGRectInset(v13, -2.0, -2.0);
  return result;
}

double sub_23388409C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (!a6)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_233884324(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (!a2)
  {
    *&result = CGRectInset(*&result, -*(a1 + 32), -*(a1 + 32));
  }

  return result;
}

double sub_2338845B8(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (!a2)
  {
    *&result = CGRectInset(*&result, -*(a1 + 32), -*(a1 + 32));
  }

  return result;
}

double sub_2338848A4(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (!a2)
  {
    *&result = CGRectInset(*&result, (*(a1 + 32) * -2.0), (*(a1 + 32) * -2.0));
  }

  return result;
}

double sub_233884B9C(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (!a2)
  {
    *&result = CGRectInset(*&result, (*(a1 + 32) * -2.0), (*(a1 + 32) * -2.0));
  }

  return result;
}

double sub_233885C84(int a1, double result, double a3, double a4, double a5)
{
  if (!a1)
  {
    v5 = result;
    v6 = (v5 * 0.5) + 0.5;
    v7 = result + a4;
    v8 = (v7 * 0.5) + 0.5;
    v9 = a3;
    v10 = (v9 * 0.5) + 0.5;
    v11 = a3 + a5;
    v12 = (v11 * 0.5) + 0.5;
    v13.origin.x = v6;
    v13.origin.y = v10;
    v13.size.width = (v8 - v6);
    v13.size.height = (v12 - v10);
    *&result = CGRectInset(v13, -1.0, -1.0);
  }

  return result;
}

void sub_23388E644(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWReduceNoise", &unk_233945DBE, v5, 2u);
  }
}

id sub_23388E6CC(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v32[5] = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v31[0] = @"inputRVector";
  v13 = MEMORY[0x277CBF788];
  [v12 X];
  v15 = [v13 vectorWithX:0.0 Y:0.0 Z:0.0 W:v14];
  v32[0] = v15;
  v31[1] = @"inputGVector";
  v16 = MEMORY[0x277CBF788];
  [v12 Y];
  v18 = [v16 vectorWithX:0.0 Y:0.0 Z:0.0 W:v17];
  v32[1] = v18;
  v31[2] = @"inputBVector";
  v19 = MEMORY[0x277CBF788];
  [v12 Z];
  v21 = [v19 vectorWithX:0.0 Y:0.0 Z:0.0 W:v20];
  v32[2] = v21;
  v31[3] = @"inputAVector";
  v22 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v32[3] = v22;
  v31[4] = @"inputBiasVector";
  v23 = [MEMORY[0x277CBF788] vectorWithX:0.0 Y:0.0 Z:0.0 W:1.0];
  v32[4] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:5];
  v25 = [v11 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v24];

  v26 = [v25 imageByCroppingToRect:{a3, a4, a5, a6}];
  v27 = [v26 _imageBySamplingNearest];

  CGAffineTransformMakeScale(&v30, 2.0, 2.0);
  v28 = [v27 imageByApplyingTransform:&v30];

  return v28;
}

double sub_233891318(double a1, double a2, double a3, double a4)
{
  v4 = floor(a1);
  v5 = (v4 * 2.0) + 0.5;
  v6 = floor(a1 + a3);
  v7 = (v6 * 2.0) + 0.5;
  v8 = floor(a2);
  v9 = (v8 * 2.0) + 0.5;
  v10 = floor(a2 + a4);
  v11 = (v10 * 2.0) + 0.5;
  v13.origin.x = v5;
  v13.origin.y = v9;
  v13.size.width = (v7 - v5);
  v13.size.height = (v11 - v9);
  *&result = CGRectInset(v13, -2.0, -2.0);
  return result;
}

double sub_2338913CC(double a1, double a2, double a3, double a4, float a5)
{
  v5 = floor(a1 * 0.5);
  v6 = v5 + a5;
  v7 = floor((a1 + a3) * 0.5);
  v8 = v7 + a5;
  v9 = floor(a2 * 0.5);
  v10 = v9 + a5;
  v11 = floor((a2 + a4) * 0.5);
  v12 = v11 + a5;
  v14.origin.x = v6;
  v14.origin.y = v10;
  v14.size.width = (v8 - v6);
  v14.size.height = (v12 - v10);
  *&result = CGRectInset(v14, -1.0, -1.0);
  return result;
}

void sub_23389DECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, void *a45, void *a46, void *a47, void *a48, void *a49, uint64_t a50, void *a51, uint64_t a52, void *a53, void *a54, void *a55, void *a56, void *a57, void *a58, void *a59, void *a60, void *a61, _Unwind_Exception *exception_objecta, void *a63)
{
  STACK[0x2D8] = STACK[0x338];

  _Unwind_Resume(a1);
}

float sub_23389FB1C(float *a1, float *a2, float a3)
{
  if (*a1 > a3)
  {
    return *a2;
  }

  v4 = a1 + 1;
  v5 = a2 + 1;
  v6 = 8;
  while (*v4 <= a3)
  {
    ++v4;
    ++v5;
    if (!--v6)
    {
      return a2[8];
    }
  }

  return *(v5 - 1) + (((a3 - *(v4 - 1)) / (*v4 - *(v4 - 1))) * (*v5 - *(v5 - 1)));
}

float64_t sub_23389FB9C(uint64_t result, uint64_t a2, float64x2_t a3, float64_t a4)
{
  if (a2 == 1)
  {
    a3.f64[0] = sub_23389FBC0(a3, a4);
  }

  return a3.f64[0];
}

float64_t sub_23389FBC0(float64x2_t a1, float64_t a2)
{
  a1.f64[1] = a2;
  __asm
  {
    FMOV            V1.2D, #0.5
    FMOV            V6.2S, #-1.0
  }

  *&a1.f64[0] = *&vcvtq_f64_f32(vadd_f32(vadd_f32(vcvt_f32_f64(vrndmq_f64(vmulq_f64(a1, _Q1))), 0x3F0000003F000000), _D6));
  return a1.f64[0];
}

float64_t sub_23389FC20(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FC48(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FC70(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (a4 == 1)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

double sub_23389FCB8(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -1.0, -1.0);
  }

  return result;
}

float64_t sub_23389FCE4(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FD08(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

double sub_23389FD50(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -1.0, -1.0);
  }

  return result;
}

double sub_23389FD7C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_23389FDA8(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -4.0, -4.0);
  }

  return result;
}

double sub_23389FDD4(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -8.0, -8.0);
  }

  return result;
}

float64_t sub_23389FE00(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FE24(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

double sub_23389FE6C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -1.0, -1.0);
  }

  return result;
}

double sub_23389FE98(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_23389FEC4(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -4.0, -4.0);
  }

  return result;
}

double sub_23389FEF0(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -8.0, -8.0);
  }

  return result;
}

double sub_23389FF1C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -16.0, -16.0);
  }

  return result;
}

float64_t sub_23389FF48(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_23389FF6C(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

double sub_23389FFA8(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -1.0, -1.0);
  }

  return result;
}

double sub_23389FFD4(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

double sub_2338A0000(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -4.0, -4.0);
  }

  return result;
}

double sub_2338A002C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -8.0, -8.0);
  }

  return result;
}

double sub_2338A0058(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -16.0, -16.0);
  }

  return result;
}

float64_t sub_2338A0090(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

float64_t sub_2338A00CC(float64x2_t a1, float64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    a1.f64[0] = sub_23389FBC0(a1, a2);
  }

  return a1.f64[0];
}

void sub_2338A0B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (a2)
  {

    if (__p)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2338A0ABCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A0E68(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWTemperatureAdjust", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338A181C(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWAdjustExposureAndBias", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338A2288(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338A22A4(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWVignetteRadial", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338A3290(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  sub_2337DFDF8(v1);
  JUMPOUT(0x2338A3268);
}

void sub_2338A33D4(_Unwind_Exception *exception_object, int a2, ...)
{
  va_start(va, a2);
  if (a2)
  {

    sub_2337D35EC(va);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x2338A338CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A3A80(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a37)
    {
      operator delete(a37);
    }

    sub_2337D35EC(&a42);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x2338A3A28);
  }

  _Unwind_Resume(a1);
}

void sub_2338A3C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2337D35EC(va);
  _Unwind_Resume(a1);
}

void sub_2338A4664(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338A4680(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWConvert", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338A4B74(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  sub_233813F5C(v12);
  JUMPOUT(0x2338A4B54);
}

void sub_2338A4BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_2337D35EC(va);
  _Unwind_Resume(a1);
}

void sub_2338A4DEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338A4DC4);
}

uint64_t sub_2338A4E4C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284910238;
  *(a1 + 8) = *(a2 + 8);
  sub_2337DF874((a1 + 16), a2 + 16);
  sub_2337DF874((a1 + 48), a2 + 48);
  sub_2337DF874((a1 + 80), a2 + 80);
  sub_2337DF874((a1 + 112), a2 + 112);
  sub_2337DF874((a1 + 144), a2 + 144);
  sub_2337DF874((a1 + 176), a2 + 176);
  *(a1 + 208) = *(a2 + 208);
  sub_2337DF874((a1 + 216), a2 + 216);
  sub_2337DF874((a1 + 248), a2 + 248);
  return a1;
}

void sub_2338A4F00(_Unwind_Exception *exception_object)
{
  v3 = v1[28];
  if (v3)
  {
    v1[29] = v3;
    operator delete(v3);
  }

  v4 = v1[23];
  if (v4)
  {
    v1[24] = v4;
    operator delete(v4);
  }

  v5 = v1[19];
  if (v5)
  {
    v1[20] = v5;
    operator delete(v5);
  }

  v6 = v1[15];
  if (v6)
  {
    v1[16] = v6;
    operator delete(v6);
  }

  v7 = v1[11];
  if (v7)
  {
    v1[12] = v7;
    operator delete(v7);
  }

  v8 = v1[7];
  if (v8)
  {
    v1[8] = v8;
    operator delete(v8);
  }

  v9 = v1[3];
  if (v9)
  {
    v1[4] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A5560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_sync_exit(v11);

  _Unwind_Resume(a1);
}

void sub_2338A5638(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2338A56E8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2338A70C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338A70E0(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWDefringeFilter", &unk_233945DBE, v5, 2u);
  }
}

double sub_2338A71B8(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -5.0, -5.0);
  }

  return result;
}

double sub_2338A71E4(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (a2 < 1)
  {
    *&result = CGRectInset(*&result, -*(a1 + 32), -*(a1 + 32));
  }

  return result;
}

double sub_2338A721C(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if (a6 != 1)
  {
    *&result = CGRectInset(*&result, -5.0, -5.0);
  }

  return result;
}

double sub_2338A7248(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (a2 < 1)
  {
    *&result = CGRectInset(*&result, -*(a1 + 32), -*(a1 + 32));
  }

  return result;
}

void sub_2338A72FC(int a1@<W0>, _DWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v84 = *MEMORY[0x277D85DE8];
  sub_2337DFC28(3u, &v52);
  if (a1)
  {
    sub_2337E0244(&v52, &v77, 2.55);
  }

  else
  {
    sub_2337E0244(&v52, &v77, 2.0);
  }

  sub_2337E004C(&v52, &v77);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  v83[0] = a4 / a5;
  v83[1] = 1.0;
  v83[2] = (1.0 - a4 - a5) / a5;
  v80 = xmmword_233915FA0;
  v81 = 0x3FEA6594AF4F0D84;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_2337236E0(&v49, v83, &v84, 3uLL);
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_2337236E0(&v46, &v80, &v82, 3uLL);
  if (v50 - v49 != 24 || v47 - v46 != 24)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_2337DF9CC(&v77, 3u, 3u, 0.8951, v10, v11, v12, v13, v14, 0x3FD10CB295E9E1B1);
  sub_2337DF9CC(&v74, 3u, 3u, 0.986993, v15, v16, v17, v18, v19, 0xBFC2D2AA5C5F7C67);
  v20 = sub_2337DF9C8(&v71, 3u, 1u);
  sub_2337E0E4C(v20, &v49);
  sub_2337E032C(&v77, &v71, v68);
  sub_2337E0E4C(&v71, &v46);
  sub_2337E032C(&v77, &v71, v65);
  sub_2337DFC28(3u, &v62);
  v55 = sub_2337DFCEC(v65, 0);
  __p = v21;
  v22 = *sub_2337DFD6C(&v55, 0);
  v60 = sub_2337DFCEC(v68, 0);
  v61 = v23;
  v24 = *sub_2337DFD6C(&v60, 0);
  v58 = sub_2337DFCEC(&v62, 0);
  v59 = v25;
  *sub_2337DFD6C(&v58, 0) = v22 / v24;
  v55 = sub_2337DFCEC(v65, 1u);
  __p = v26;
  v27 = *sub_2337DFD6C(&v55, 0);
  v60 = sub_2337DFCEC(v68, 1u);
  v61 = v28;
  v29 = *sub_2337DFD6C(&v60, 0);
  v58 = sub_2337DFCEC(&v62, 1u);
  v59 = v30;
  *sub_2337DFD6C(&v58, 1u) = v27 / v29;
  v55 = sub_2337DFCEC(v65, 2u);
  __p = v31;
  v32 = *sub_2337DFD6C(&v55, 0);
  v60 = sub_2337DFCEC(v68, 2u);
  v61 = v33;
  v34 = *sub_2337DFD6C(&v60, 0);
  v58 = sub_2337DFCEC(&v62, 2u);
  v59 = v35;
  *sub_2337DFD6C(&v58, 2u) = v32 / v34;
  sub_2337DF9C8(&v43, 3u, 3u);
  sub_2337E032C(&v62, &v77, &v55);
  sub_2337E004C(&v43, &v55);
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  sub_2337E032C(&v74, &v43, &v55);
  sub_2337E004C(&v43, &v55);
  if (__p)
  {
    v57 = __p;
    operator delete(__p);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  sub_2337E032C(&v43, &v52, &v77);
  sub_2337E004C(&v52, &v77);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  v41 = sub_2337DF9CC(&v74, 3u, 3u, 1.82412008, v36, v37, v38, v39, v40, 0xBFE026BD9F433306);
  sub_2337E032C(v41, &v52, &v77);
  sub_2337E004C(&v52, &v77);
  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v75)
  {
    v76 = v75;
    operator delete(v75);
  }

  sub_2337E032C(&v52, a2, a3);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }
}

void sub_2338A7998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45)
{
  v47 = *(v45 - 136);
  if (v47)
  {
    *(v45 - 128) = v47;
    operator delete(v47);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A7B70(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = a2;
  v46 = a3;
  *a5 = 0;
  a5[1] = 0;
  context = objc_autoreleasePoolPush();
  v41 = v10;
  v39 = a4;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
  }

  v12 = v11;
  v13 = sub_233875D18(v11, *MEMORY[0x277CD3490], *MEMORY[0x277CD34A8]);
  v14 = 0;
  v15 = 0;
  v38 = *MEMORY[0x277CD3038];
  v45 = v12;
  while (2)
  {
    if (!v13)
    {
      goto LABEL_34;
    }

    v42 = v14;
    v43 = v15;
    v16 = 14;
    v17 = &qword_28492E8D8;
    do
    {
      v18 = *(v17 - 2);
      if (!v18 || (v6 = v18, !sub_2338A818C(v13, v6, 1)))
      {
        v19 = *(v17 - 1);
        if (v19)
        {
          v5 = v19;
          if (sub_2338A818C(v13, v5, 1))
          {

            if (!v18)
            {
              goto LABEL_24;
            }

            goto LABEL_12;
          }

          v20 = *v17;
          if (!*v17)
          {
            v21 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          v20 = *v17;
          if (!*v17)
          {
            v21 = 0;
            if (v18)
            {
              goto LABEL_19;
            }

LABEL_23:
            if (!v21)
            {
              goto LABEL_32;
            }

            goto LABEL_24;
          }
        }

        v22 = v20;
        v21 = sub_2338A818C(v13, v22, 1);

        if (!v19)
        {
          if (v18)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }

LABEL_22:

        if (v18)
        {
LABEL_19:

          if (!v21)
          {
            goto LABEL_32;
          }

          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_12:

LABEL_24:
      v23 = [MEMORY[0x277CBEB38] dictionary];
      v24 = *(v17 - 3);
      v24(&v49, a1, v23, v46);
      v25 = v49;
      v49 = 0uLL;
      v26 = a5[1];
      *a5 = v25;
      if (v26)
      {
        sub_2337239E8(v26);
        if (*(&v49 + 1))
        {
          sub_2337239E8(*(&v49 + 1));
        }
      }

      if (v25)
      {
        (**v25)(v25);
        if ((*(*v25 + 32))(v25))
        {
          v34 = *(v25 + 24);
          v35 = *(v25 + 32);
          if (v39)
          {
            v36 = sub_233739994(v23, v38, 0);
            if (v36)
            {
              [v45 setObject:v36 forKeyedSubscript:@"__ExifProperties"];
            }
          }

          v24(&v49, a1, v45, v46);
          v37 = v49;
          v49 = 0uLL;
          v48 = v37;
          *a5 = v37;
          if (*(&v25 + 1))
          {
            sub_2337239E8(*(&v25 + 1));
            if (*(&v49 + 1))
            {
              sub_2337239E8(*(&v49 + 1));
            }
          }

          *(v48 + 24) = v34;
          *(v48 + 32) = v35;

          v12 = v45;
          goto LABEL_58;
        }

        *a5 = 0;
        a5[1] = 0;
        if (*(&v25 + 1))
        {
          sub_2337239E8(*(&v25 + 1));
        }
      }

LABEL_32:
      v17 += 6;
      --v16;
    }

    while (v16);
    v12 = v45;
    v14 = v42;
    v15 = v43;
    if (*a5)
    {
      goto LABEL_58;
    }

LABEL_34:
    v27 = 14;
    v28 = &off_28492E8C0;
    while (1)
    {
      v29 = *(v28 - 1);
      if (v29)
      {
        if (v29(a1))
        {
          break;
        }
      }

      v28 += 6;
      if (!--v27)
      {
        v30 = 0;
        goto LABEL_43;
      }
    }

    (*v28)(&v49, a1, v12, v46);
    v31 = v49;
    v49 = 0uLL;
    v32 = a5[1];
    v44 = v31;
    *a5 = v31;
    if (v32)
    {
      sub_2337239E8(v32);
      if (*(&v49 + 1))
      {
        sub_2337239E8(*(&v49 + 1));
      }
    }

    v30 = v44;
LABEL_43:
    if (!((v30 != 0) | v14 & 1))
    {
      sub_2338C0138(a1, v12, v46);
    }

    if (!v30 && v15++ < 2)
    {
      continue;
    }

    break;
  }

  if (!v30)
  {
    sub_2338A9438(a1, v12, v46);
  }

LABEL_58:

  objc_autoreleasePoolPop(context);
}

void sub_2338A80A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20)
{
  v23 = *(v20 + 8);
  if (v23)
  {
    sub_2337239E8(v23);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2338A818C(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    [v5 rangeOfString:v6 options:a3];
    v8 = v9 != 0;
  }

  return v8;
}

double sub_2338A820C@<D0>(uint64_t *a1@<X0>, int *a2@<X1>, unsigned int *a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v18 = a4;
  LODWORD(v16) = *a2;
  v9 = *sub_233723874(&v16, a3);
  sub_2338A832C(a1, &v16);
  v10 = (*(*v16 + 16))(v16);
  v13 = v9 < 0 || v10 >= v9;
  if (v17)
  {
    sub_2337239E8(v17);
  }

  *a5 = 0;
  a5[1] = 0;
  if (v13)
  {
    v14 = *a3;
    if (v14)
    {
      v15 = sub_2338A839C(a1, *a2, v14);
      if (v15)
      {
        if (HIDWORD(v15))
        {
          sub_233735F54();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2338A832C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = *(result + 16);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_2338A839C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  sub_2338A832C(a1, &v23);
  sub_2337268D8(&v21, &v26);
  sub_233725F08(v25, &v23, &v21, 0);
  if (v24)
  {
    sub_2337239E8(v24);
  }

  sub_233735A18(&v23, a1 + 1, 2);
  sub_2338A832C(a1, &v21);
  v5 = sub_2337255C0(v21);
  if (v22)
  {
    sub_2337239E8(v22);
  }

  if ((*(*a1 + 64))(a1, v5))
  {
    v6 = 0;
    v7 = 0;
    do
    {
      sub_2338A832C(a1, &v21);
      v8 = sub_2337255C0(v21);
      if (v22)
      {
        sub_2337239E8(v22);
      }

      sub_2338A832C(a1, &v21);
      v9 = sub_2337255C0(v21);
      if (v22)
      {
        sub_2337239E8(v22);
      }

      v10 = (*(*a1[1] + 48))(a1[1]);
      if (v8 < 0xFF01)
      {
        break;
      }

      v11 = v10;
      if (v8 == 65472)
      {
        sub_233725510(a1[1]);
        sub_2338A832C(a1, &v21);
        v7 = sub_2337255C0(v21);
        if (v22)
        {
          sub_2337239E8(v22);
        }

        sub_2338A832C(a1, &v21);
        v6 = sub_2337255C0(v21);
        if (v22)
        {
          sub_2337239E8(v22);
        }
      }

      v12 = v9 - 2;
      v3 = v3 - 4 - (v9 - 2);
      if (v3 >= 0)
      {
        sub_2338A832C(a1, &v21);
        v13 = v21;
        v19 = v11 + v12;
        sub_2337268D8(&v20, &v19);
        (*(*v13 + 40))(v13, &v20, 0);
        if (v22)
        {
          sub_2337239E8(v22);
        }
      }

      v14 = !v6 || v7 == 0;
      v15 = v14;
    }

    while (v3 >= 5 && v15 && v8 != 65498);
    v16 = v7 << 32;
    v17 = v6;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  sub_233735A90(&v23);
  sub_233725FD4(v25);
  return v16 | v17;
}

void sub_2338A8634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_233735A90(va);
  sub_233725FD4(va1);
  _Unwind_Resume(a1);
}

void sub_2338A86B8(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(a1 + 8) == *a1)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *v4;
    v8 = v4[1];
    *a3 = *v4;
    a3[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v7)
    {
      v9 = *(v7 + 16);
    }

    else
    {
      v9 = 0;
    }

    v10 = *a1;
    if (*(a1 + 8) != *a1)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        if (a2 > 0xA0)
        {
          v13 = sub_2337DE858(v7);
          v14 = sub_2337DE858(*(*a1 + v11 * 8));
        }

        else
        {
          v13 = sub_2337DE858(v10[v11]);
          v14 = sub_2337DE858(v7);
        }

        if (v13 <= v14 && SHIDWORD(v13) <= SHIDWORD(v14))
        {
          v16 = (*a1 + v11 * 8);
          v7 = *v16;
          v17 = v16[1];
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v8)
          {
            sub_2337239E8(v8);
          }

          v8 = v17;
          if (!v9)
          {
            v9 = *(v7 + 16);
            v8 = v17;
          }
        }

        ++v12;
        v10 = *a1;
        v11 += 2;
      }

      while (v12 < (*(a1 + 8) - *a1) >> 4);
    }

    *a3 = v7;
    a3[1] = v8;
    if (*(v7 + 16))
    {
      v18 = 1;
    }

    else
    {
      v18 = v9 == 0;
    }

    if (!v18)
    {
      *(v7 + 16) = v9;
    }
  }
}

void sub_2338A8804(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v1[1] = v3;
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338A882C(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_28492EB60;
  *(result + 8) = v3;
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void sub_2338A887C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v10)
    {
      sub_2338FDBD8(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338A894C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  if (a1 && __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0))
  {
    sub_2338FDD20();
  }
}

void sub_2338A8A2C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338AE470(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A8B0C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v15 = a2;
  if (a1)
  {
    v12 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v12)
    {
      sub_2338ADB78(v12, v13, v14, a4, a5, a6, a7);
    }
  }
}

void sub_2338A8BE4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338AE38C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A8CC4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338ADC74(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A8DA4(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v14 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v10)
    {
      sub_2338FDAC4(v10, v13, v11, v12, a4, a5, a6);
    }
  }
}

void sub_2338A8E70(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v7)
    {
      sub_2338AD3EC(v7, v8, a3, a4);
    }
  }
}

void sub_2338A8F38(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v10)
    {
      sub_2338AE294(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338A9008(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11 = a2;
  if (a1)
  {
    v7 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v7)
    {
      sub_2338AD1E0(v7, v9, v10, v8, a3, a4);
    }
  }
}

void sub_2338A90D0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  if (a1)
  {
    v10 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v10)
    {
      sub_2338AE1A0(v10, v12, v11, a4, a5, a6);
    }
  }
}

void sub_2338A91A0(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338AD870(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A927C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  if (a1 && __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0))
  {
    sub_2338FDF90();
  }
}

void sub_2338A935C(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v13 = a2;
  if (a1)
  {
    v11 = __dynamic_cast(a1, &unk_28492EBB0, &unk_2849312A8, 0);
    if (v11)
    {
      sub_2338AD57C(v11, v12, a3, a4, a5, a6);
    }
  }
}

void sub_2338A9438(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  sub_2338B2020();
}

uint64_t sub_2338A94CC(_BYTE *a1)
{
  if ((*(*a1 + 24))(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = a1[194];
  }

  return v2 & 1;
}

BOOL sub_2338A9524(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  do
  {
    v3 = *a2++;
    v2 = v3;
  }

  while (v3 == 32);
  return v2 == 0;
}

uint64_t sub_2338A9548(uint64_t a1, char *a2, unint64_t a3)
{
  result = 0;
  if (a3)
  {
    while (1)
    {
      while ((*a2 & 0x80000000) == 0)
      {
        ++a2;
        if (!--a3)
        {
          return result;
        }
      }

      v4 = *a2;
      if ((v4 - 254) < 0xFFFFFFC2)
      {
        break;
      }

      v5 = 0;
      do
      {
        v6 = v5;
        v7 = v5++ + 2;
      }

      while (((v4 << v7) & 0x80) != 0);
      if (a3 < v5 + 1)
      {
        break;
      }

      v8 = v4 & ~(-1 << (6 - v5));
      if ((v5 + 1) < 2)
      {
        v11 = v8;
      }

      else
      {
        v9 = 0;
        v10 = v6 + 1;
        do
        {
          v11 = a2[++v9] & 0x3F | (v8 << 6);
          v8 = v11;
        }

        while (v10 != v9);
      }

      if (HIWORD(v11) > 0x10u || v11 < dword_233916000[v5 + 1])
      {
        break;
      }

      a2 += v5 + 1;
      result = 1;
      v13 = v5 + 1 == a3;
      a3 += ~v5;
      if (v13)
      {
        return result;
      }
    }

    return 2;
  }

  return result;
}

unsigned __int16 *sub_2338A9630(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, _DWORD *a4)
{
  *a4 = 0;
  while (a3)
  {
    v8 = *a3;
    if (v8 != 0xFFFF)
    {
      v9 = *a2;
      do
      {
        if (v8 == v9)
        {
          v10 = a2[1];
          if ((v10 - 1) <= 0xC && ((v11 = a3[1], v10 == v11) || ((v11 >> v10) & 0x10) != 0))
          {
            if (!a3[2] || *(a2 + 1) == a3[2])
            {
              *a4 = 0;
              return a3;
            }

            v12 = 2;
          }

          else
          {
            v12 = 1;
          }

          *a4 |= v12;
        }

        v13 = a3[20];
        a3 += 20;
        v8 = v13;
      }

      while (v13 != 0xFFFF);
    }

    if (a3[2] != -1)
    {
      return 0;
    }

    v14 = *(a3 + 2);
    if (!v14)
    {
      return 0;
    }

    v15 = sub_2338A9630(a1, a2, v14, a4);
    a3 += 20;
    if (v15)
    {
      return v15;
    }
  }

  return a3;
}

uint64_t sub_2338A9730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  if (__CFADD__(a5, a4))
  {
    v6 = (a4 >> 63) + 1;
  }

  else
  {
    v6 = a4 >> 63;
  }

  v7 = v6 << 63 >> 63;
  v15 = a5 + a4;
  if (v7 == v6 && (v7 & 0x8000000000000000) == 0)
  {
    sub_2338A832C(a1, &v13);
    v10 = v13;
    sub_233723C18(&v12, &v15);
    v5 = (*(*v10 + 24))(v10, a2, a3, &v12);
    if (v14)
    {
      sub_2337239E8(v14);
    }
  }

  return v5;
}

void sub_2338A97E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A9800(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  sub_233726154(&__p, *(a4 + 4));
  v12 = v36 - __p;
  if ((v36 - __p) > 4)
  {
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

    v16 = sub_2338A9730(a1, __p, v12, a5, v15);
    v17 = __p;
    if (v16 != v36 - __p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    memmove(__p, (a4 + 8), v12);
  }

  v18 = sub_2338A9B78(a3);
  v19 = [v18 length];

  if (v19)
  {
    v20 = sub_233755CB8(*(a4 + 4));
    if (*(a4 + 4))
    {
      v21 = 0;
      do
      {
        v22 = [MEMORY[0x277CCABB0] numberWithInt:*(__p + v21)];
        [v20 addObject:v22];

        ++v21;
      }

      while (v21 < *(a4 + 4));
    }

    v23 = *(a3 + 32);
    if ((v23 & 4) != 0)
    {
      v24 = sub_2338A9B94(a1);
      v25 = sub_2338A9BFC(a3);
      v26 = sub_2337854A4(v24, v25, 1);

      if (*(a3 + 4) != 1 || (*(a3 + 32) & 2) != 0)
      {
        v27 = sub_2338A9B78(a3);
        [v26 setObject:v20 forKeyedSubscript:v27];
      }

      else
      {
        v34 = 0;
        v27 = sub_23386F6F4(v20, &v34);
        v28 = sub_2338A9B78(a3);
        [v26 setObject:v27 forKeyedSubscript:v28];
      }

      v23 = *(a3 + 32);
    }

    if ((v23 & 8) != 0)
    {
      v29 = MEMORY[0x277CCACA8];
      v30 = sub_2338A9B78(a3);
      v31 = [v29 stringWithFormat:@"%@/%@", v11, v30];

      if (*(a3 + 4) != 1 || (*(a3 + 32) & 2) != 0)
      {
        v32 = sub_2338A9C18(a1);
        [v32 setObject:v20 forKeyedSubscript:v31];
      }

      else
      {
        v34 = 0;
        v32 = sub_23386F6F4(v20, &v34);
        v33 = sub_2338A9C18(a1);
        [v33 setObject:v32 forKeyedSubscript:v31];
      }
    }
  }

  v17 = __p;
LABEL_25:
  if (v17)
  {
    v36 = v17;
    operator delete(v17);
  }
}

void sub_2338A9AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__CFString *sub_2338A9B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return &stru_284938540;
  }
}

id sub_2338A9B94(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return v1;
}

__CFString *sub_2338A9BFC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return &stru_284938540;
  }
}

id sub_2338A9C18(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (!v1)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  return v1;
}

char *sub_2338A9C80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a4 > 0x2710)
  {
    v11 = 0;
    goto LABEL_16;
  }

  sub_233726154(__s, a4 + 1);
  if (sub_2338A9730(a1, __s[0], a4, a2, a3) != a4)
  {
    goto LABEL_11;
  }

  __s[0][a4] = 0;
  v10 = strlen(__s[0]);
  __s[0][v10] = 0;
  v11 = __s[0];
  if ((a5 & 1) == 0)
  {
    if (!__s[0])
    {
      goto LABEL_14;
    }

    v12 = __s[0];
    do
    {
      v13 = *v12;
      if (!*v12)
      {
        goto LABEL_11;
      }

      ++v12;
    }

    while (v13 == 32);
  }

  v14 = sub_2338A9548(v10, __s[0], v10);
  if (!v14)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:1];
    goto LABEL_13;
  }

  if (v14 != 1)
  {
LABEL_11:
    v11 = 0;
    goto LABEL_14;
  }

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v11];
LABEL_13:
  v11 = v15;
LABEL_14:
  if (__s[0])
  {
    __s[1] = __s[0];
    operator delete(__s[0]);
  }

LABEL_16:

  return v11;
}

void sub_2338A9DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338A9DDC(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = a2;
  v14 = *(a5 + 4);
  if ((v14 - 10001) < 0xFFFFD8F0)
  {
    goto LABEL_28;
  }

  v15 = *(a5 + 2);
  if (v15 > 0x6F)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_233916070[v15];
  }

  v17 = v16 * v14;
  sub_2338B1C48(__dst, v16 * v14 + 1);
  if (v17 <= 4)
  {
    v18 = memmove(__dst[0], (a5 + 8), v17);
    *(__dst[0] + v17) = 0;
    goto LABEL_10;
  }

  v19 = *(a5 + 8);
  v20 = bswap32(v19);
  if (a7)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v18 = sub_2338A9730(a1, __dst[0], v17, a6, v21);
  *(__dst[0] + v17) = 0;
  if (v18 == v17)
  {
LABEL_10:
    v22 = __dst[0];
    if ((a4 & 1) == 0)
    {
      if (!__dst[0])
      {
        goto LABEL_28;
      }

      v23 = __dst[0];
      do
      {
        v24 = *v23;
        if (!*v23)
        {
          goto LABEL_26;
        }

        ++v23;
      }

      while (v24 == 32);
    }

    v25 = sub_2338A9548(v18, __dst[0], v17);
    if (v25)
    {
      if (v25 != 1)
      {
        goto LABEL_22;
      }

      v26 = sub_2338A9B94(a1);
      v27 = sub_2338A9BFC(a3);
      v28 = sub_2337854A4(v26, v27, 1);

      if (v28)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = sub_2338A9B94(a1);
      v30 = sub_2338A9BFC(a3);
      v28 = sub_2337854A4(v29, v30, 1);

      if (v28)
      {
LABEL_20:
        v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:__dst[0]];
        v32 = sub_2338A9B78(a3);
        [v28 setObject:v31 forKeyedSubscript:v32];
      }
    }

LABEL_22:
    v22 = __dst[0];
    if (v17 >= 0x33)
    {
      *(__dst[0] + 45) = 3026478;
LABEL_27:
      __dst[1] = v22;
      operator delete(v22);
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v22 = __dst[0];
LABEL_26:
  if (v22)
  {
    goto LABEL_27;
  }

LABEL_28:
}

void sub_2338AA050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2338AA0D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v13 = a2;
  v11 = *(a4 + 2);
  if (v11 != 2 && *(a4 + 4) > 0x50u)
  {
    goto LABEL_3;
  }

  if (*(a4 + 2) <= 6u)
  {
    if (*(a4 + 2) <= 2u)
    {
      if (v11 == 1)
      {
        goto LABEL_28;
      }

      if (v11 != 2)
      {
        goto LABEL_3;
      }

      v12 = *(a3 + 32);
      goto LABEL_29;
    }

    switch(v11)
    {
      case 3:
        sub_2338AA324(a1, v13, a3, a4, a5, v6);
        break;
      case 4:
        sub_2338AABA4(a1, v13, a3, a4, a5, v6);
        break;
      case 5:
        sub_2338ABD74(a1, v13, a3, a4, a5, v6);
        break;
    }
  }

  else
  {
    if (*(a4 + 2) <= 9u)
    {
      if (v11 != 7)
      {
        if (v11 == 8)
        {
          sub_2338AA764(a1, v13, a3, a4, a5, v6);
        }

        else
        {
          sub_2338AAFE4(a1, v13, a3, a4, a5, v6);
        }

        goto LABEL_3;
      }

      v12 = *(a3 + 32);
      if ((v12 & 0x10) == 0)
      {
LABEL_28:
        sub_2338A9800(a1, v13, a3, a4, a5, v6);
        goto LABEL_3;
      }

LABEL_29:
      sub_2338A9DDC(a1, v13, a3, (v12 & 0x20) != 0, a4, a5, v6);
      goto LABEL_3;
    }

    switch(v11)
    {
      case 10:
        sub_2338AC184(a1, v13, a3, a4, a5, v6);
        break;
      case 11:
        sub_2338AB424(a1, v13, a3, a4, a5, v6);
        break;
      case 12:
        sub_2338AB8CC(a1, v13, a3, a4, a5, v6);
        break;
    }
  }

LABEL_3:
}

uint64_t sub_2338AA324(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    v12 = *(a4 + 4);
    if (v12 == 1)
    {
      v13 = 0;
      goto LABEL_7;
    }

LABEL_38:
    v25 = 0;
    goto LABEL_37;
  }

  v12 = *(a4 + 4);
  if (v12 - 1000001 < 0xFFF0BDC0)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_7:
  sub_233726218(&__dst, v12);
  v14 = *(a3 + 32);
  v15 = *(a4 + 4);
  if (v15 <= 2)
  {
    v16 = *(a4 + 2);
    if (v16 > 0x6F)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_233916070[v16];
    }

    memmove(__dst, (a4 + 8), v17 * v15);
LABEL_15:
    v22 = __dst;
    if (a6 && v46 != __dst)
    {
      v23 = (v46 - __dst) >> 1;
      v24 = __dst;
      do
      {
        *v24 = bswap32(*v24) >> 16;
        ++v24;
        --v23;
      }

      while (v23);
    }

    v25 = *v22;
    v26 = [MEMORY[0x277CBEB18] array];
    if (*(a4 + 4))
    {
      v27 = 0;
      v28 = (v14 << 31 >> 31) & a5;
      do
      {
        v29 = [MEMORY[0x277CCABB0] numberWithInt:v28 + *(__dst + v27)];
        [v26 addObject:v29];

        ++v27;
      }

      while (v27 < *(a4 + 4));
    }

    v30 = sub_2338A9B78(a3);
    v31 = [v30 length];

    if (v31)
    {
      v32 = *(a3 + 32);
      if ((v32 & 4) != 0)
      {
        v33 = sub_2338A9B94(a1);
        v34 = sub_2338A9BFC(a3);
        v35 = sub_2337854A4(v33, v34, 1);

        if (v13)
        {
          v36 = sub_2338A9B78(a3);
          [v35 setObject:v26 forKeyedSubscript:v36];
        }

        else
        {
          v44 = 0;
          v36 = sub_23386F6F4(v26, &v44);
          v37 = sub_2338A9B78(a3);
          [v35 setObject:v36 forKeyedSubscript:v37];
        }

        v32 = *(a3 + 32);
      }

      if ((v32 & 8) != 0)
      {
        v38 = MEMORY[0x277CCACA8];
        v39 = sub_2338A9B78(a3);
        v40 = [v38 stringWithFormat:@"%@/%@", v11, v39];

        if (v13)
        {
          v41 = sub_2338A9C18(a1);
          [v41 setObject:v26 forKeyedSubscript:v40];
        }

        else
        {
          v44 = 0;
          v41 = sub_23386F6F4(v26, &v44);
          v42 = sub_2338A9C18(a1);
          [v42 setObject:v41 forKeyedSubscript:v40];
        }
      }
    }

    goto LABEL_35;
  }

  v19 = *(a4 + 8);
  v20 = bswap32(v19);
  if (a6)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v18 = v46 - __dst;
  if (sub_2338A9730(a1, __dst, v46 - __dst, a5, v21) == v18)
  {
    goto LABEL_15;
  }

  v25 = 0;
LABEL_35:
  if (__dst)
  {
    v46 = __dst;
    operator delete(__dst);
  }

LABEL_37:

  return v25;
}

void sub_2338AA698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338AA764(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    v12 = *(a4 + 4);
    if (v12 == 1)
    {
      v13 = 0;
      goto LABEL_7;
    }

LABEL_38:
    v25 = 0;
    goto LABEL_37;
  }

  v12 = *(a4 + 4);
  if (v12 - 1000001 < 0xFFF0BDC0)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_7:
  sub_2337560FC(&__dst, v12);
  v14 = *(a3 + 32);
  v15 = *(a4 + 4);
  if (v15 <= 2)
  {
    v16 = *(a4 + 2);
    if (v16 > 0x6F)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_233916070[v16];
    }

    memmove(__dst, (a4 + 8), v17 * v15);
LABEL_15:
    v22 = __dst;
    if (a6 && v46 != __dst)
    {
      v23 = (v46 - __dst) >> 1;
      v24 = __dst;
      do
      {
        *v24 = bswap32(*v24) >> 16;
        ++v24;
        --v23;
      }

      while (v23);
    }

    v25 = *v22;
    v26 = [MEMORY[0x277CBEB18] array];
    if (*(a4 + 4))
    {
      v27 = 0;
      v28 = (v14 << 31 >> 31) & a5;
      do
      {
        v29 = [MEMORY[0x277CCABB0] numberWithInt:(v28 + *(__dst + v27))];
        [v26 addObject:v29];

        ++v27;
      }

      while (v27 < *(a4 + 4));
    }

    v30 = sub_2338A9B78(a3);
    v31 = [v30 length];

    if (v31)
    {
      v32 = *(a3 + 32);
      if ((v32 & 4) != 0)
      {
        v33 = sub_2338A9B94(a1);
        v34 = sub_2338A9BFC(a3);
        v35 = sub_2337854A4(v33, v34, 1);

        if (v13)
        {
          v36 = sub_2338A9B78(a3);
          [v35 setObject:v26 forKeyedSubscript:v36];
        }

        else
        {
          v44 = 0;
          v36 = sub_23386F6F4(v26, &v44);
          v37 = sub_2338A9B78(a3);
          [v35 setObject:v36 forKeyedSubscript:v37];
        }

        v32 = *(a3 + 32);
      }

      if ((v32 & 8) != 0)
      {
        v38 = MEMORY[0x277CCACA8];
        v39 = sub_2338A9B78(a3);
        v40 = [v38 stringWithFormat:@"%@/%@", v11, v39];

        if (v13)
        {
          v41 = sub_2338A9C18(a1);
          [v41 setObject:v26 forKeyedSubscript:v40];
        }

        else
        {
          v44 = 0;
          v41 = sub_23386F6F4(v26, &v44);
          v42 = sub_2338A9C18(a1);
          [v42 setObject:v41 forKeyedSubscript:v40];
        }
      }
    }

    goto LABEL_35;
  }

  v19 = *(a4 + 8);
  v20 = bswap32(v19);
  if (a6)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v18 = v46 - __dst;
  if (sub_2338A9730(a1, __dst, v46 - __dst, a5, v21) == v18)
  {
    goto LABEL_15;
  }

  v25 = 0;
LABEL_35:
  if (__dst)
  {
    v46 = __dst;
    operator delete(__dst);
  }

LABEL_37:

  return v25;
}

void sub_2338AAAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338AABA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    v12 = *(a4 + 4);
    if (v12 == 1)
    {
      v13 = 0;
      goto LABEL_7;
    }

LABEL_40:
    v25 = 0;
    goto LABEL_39;
  }

  v12 = *(a4 + 4);
  if (v12 - 1000001 < 0xFFF0BDC0)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_7:
  sub_23372630C(&__dst, v12);
  v14 = *(a3 + 32);
  v15 = *(a4 + 4);
  if (v15 <= 1)
  {
    v16 = *(a4 + 2);
    if (v16 > 0x6F)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_233916070[v16];
    }

    memmove(__dst, (a4 + 8), v17 * v15);
LABEL_15:
    v22 = __dst;
    if (a6 && v46 != __dst)
    {
      v23 = (v46 - __dst) >> 2;
      v24 = __dst;
      do
      {
        *v24 = bswap32(*v24);
        ++v24;
        --v23;
      }

      while (v23);
    }

    v25 = *v22;
    v26 = [MEMORY[0x277CBEB18] array];
    if (*(a4 + 4))
    {
      v27 = 0;
      if (v14)
      {
        v28 = a5;
      }

      else
      {
        v28 = 0;
      }

      do
      {
        v29 = [MEMORY[0x277CCABB0] numberWithLongLong:v28 + *(__dst + v27)];
        [v26 addObject:v29];

        ++v27;
      }

      while (v27 < *(a4 + 4));
    }

    v30 = sub_2338A9B78(a3);
    v31 = [v30 length];

    if (v31)
    {
      v32 = *(a3 + 32);
      if ((v32 & 4) != 0)
      {
        v33 = sub_2338A9B94(a1);
        v34 = sub_2338A9BFC(a3);
        v35 = sub_2337854A4(v33, v34, 1);

        if (v13)
        {
          v36 = sub_2338A9B78(a3);
          [v35 setObject:v26 forKeyedSubscript:v36];
        }

        else
        {
          v44 = 0;
          v36 = sub_23386F6F4(v26, &v44);
          v37 = sub_2338A9B78(a3);
          [v35 setObject:v36 forKeyedSubscript:v37];
        }

        v32 = *(a3 + 32);
      }

      if ((v32 & 8) != 0)
      {
        v38 = MEMORY[0x277CCACA8];
        v39 = sub_2338A9B78(a3);
        v40 = [v38 stringWithFormat:@"%@/%@", v11, v39];

        if (v13)
        {
          v41 = sub_2338A9C18(a1);
          [v41 setObject:v26 forKeyedSubscript:v40];
        }

        else
        {
          v44 = 0;
          v41 = sub_23386F6F4(v26, &v44);
          v42 = sub_2338A9C18(a1);
          [v42 setObject:v41 forKeyedSubscript:v40];
        }
      }
    }

    goto LABEL_37;
  }

  v19 = *(a4 + 8);
  v20 = bswap32(v19);
  if (a6)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v18 = v46 - __dst;
  if (sub_2338A9730(a1, __dst, v46 - __dst, a5, v21) == v18)
  {
    goto LABEL_15;
  }

  v25 = 0;
LABEL_37:
  if (__dst)
  {
    v46 = __dst;
    operator delete(__dst);
  }

LABEL_39:

  return v25;
}

void sub_2338AAF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338AAFE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    v12 = *(a4 + 4);
    if (v12 == 1)
    {
      v13 = 0;
      goto LABEL_7;
    }

LABEL_40:
    v25 = 0;
    goto LABEL_39;
  }

  v12 = *(a4 + 4);
  if (v12 - 1000001 < 0xFFF0BDC0)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_7:
  sub_2337565A0(&__dst, v12);
  v14 = *(a3 + 32);
  v15 = *(a4 + 4);
  if (v15 <= 1)
  {
    v16 = *(a4 + 2);
    if (v16 > 0x6F)
    {
      v17 = 0;
    }

    else
    {
      v17 = qword_233916070[v16];
    }

    memmove(__dst, (a4 + 8), v17 * v15);
LABEL_15:
    v22 = __dst;
    if (a6 && v46 != __dst)
    {
      v23 = (v46 - __dst) >> 2;
      v24 = __dst;
      do
      {
        *v24 = bswap32(*v24);
        ++v24;
        --v23;
      }

      while (v23);
    }

    v25 = *v22;
    v26 = [MEMORY[0x277CBEB18] array];
    if (*(a4 + 4))
    {
      v27 = 0;
      if (v14)
      {
        v28 = a5;
      }

      else
      {
        v28 = 0;
      }

      do
      {
        v29 = [MEMORY[0x277CCABB0] numberWithLongLong:v28 + *(__dst + v27)];
        [v26 addObject:v29];

        ++v27;
      }

      while (v27 < *(a4 + 4));
    }

    v30 = sub_2338A9B78(a3);
    v31 = [v30 length];

    if (v31)
    {
      v32 = *(a3 + 32);
      if ((v32 & 4) != 0)
      {
        v33 = sub_2338A9B94(a1);
        v34 = sub_2338A9BFC(a3);
        v35 = sub_2337854A4(v33, v34, 1);

        if (v13)
        {
          v36 = sub_2338A9B78(a3);
          [v35 setObject:v26 forKeyedSubscript:v36];
        }

        else
        {
          v44 = 0;
          v36 = sub_23386F6F4(v26, &v44);
          v37 = sub_2338A9B78(a3);
          [v35 setObject:v36 forKeyedSubscript:v37];
        }

        v32 = *(a3 + 32);
      }

      if ((v32 & 8) != 0)
      {
        v38 = MEMORY[0x277CCACA8];
        v39 = sub_2338A9B78(a3);
        v40 = [v38 stringWithFormat:@"%@/%@", v11, v39];

        if (v13)
        {
          v41 = sub_2338A9C18(a1);
          [v41 setObject:v26 forKeyedSubscript:v40];
        }

        else
        {
          v44 = 0;
          v41 = sub_23386F6F4(v26, &v44);
          v42 = sub_2338A9C18(a1);
          [v42 setObject:v41 forKeyedSubscript:v40];
        }
      }
    }

    goto LABEL_37;
  }

  v19 = *(a4 + 8);
  v20 = bswap32(v19);
  if (a6)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v18 = v46 - __dst;
  if (sub_2338A9730(a1, __dst, v46 - __dst, a5, v21) == v18)
  {
    goto LABEL_15;
  }

  v25 = 0;
LABEL_37:
  if (__dst)
  {
    v46 = __dst;
    operator delete(__dst);
  }

LABEL_39:

  return v25;
}

void sub_2338AB358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

float sub_2338AB424(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    if (*(a4 + 4) == 1)
    {
      v12 = 0;
      goto LABEL_7;
    }

LABEL_41:
    v33 = 0.0;
    goto LABEL_40;
  }

  if ((*(a4 + 4) - 1000001) < 0xFFF0BDC0)
  {
    goto LABEL_41;
  }

  v12 = 1;
LABEL_7:
  v13 = [MEMORY[0x277CBEB18] array];
  v15 = *(a4 + 4);
  v16 = *(a4 + 2);
  if (v16 > 0x6F)
  {
    v17 = 0;
  }

  else
  {
    v17 = qword_233916070[v16];
  }

  if (v17 * v15 == 4)
  {
    v18 = *(a4 + 8);
    v19 = bswap32(v18);
    if (a6)
    {
      v18 = v19;
    }

    v20 = *&v18;
    LODWORD(v14) = v18;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
    [v13 addObject:v21];

    goto LABEL_27;
  }

  sub_23372630C(&__p, v15);
  v22 = v49 - __p;
  v23 = *(a4 + 8);
  v24 = bswap32(v23);
  if (a6)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v26 = sub_2338A9730(a1, __p, v49 - __p, a5, v25);
  v28 = __p;
  if (v26 == v22)
  {
    if (a6 && v49 != __p)
    {
      v29 = (v49 - __p) >> 2;
      v30 = __p;
      do
      {
        *v30 = bswap32(*v30);
        ++v30;
        --v29;
      }

      while (v29);
    }

    v20 = *v28;
    if (!*(a4 + 4))
    {
      goto LABEL_25;
    }

    v31 = 0;
    do
    {
      LODWORD(v27) = *(__p + v31);
      v32 = [MEMORY[0x277CCABB0] numberWithFloat:v27];
      [v13 addObject:v32];

      ++v31;
    }

    while (v31 < *(a4 + 4));
    v28 = __p;
    if (__p)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = 0.0;
    if (__p)
    {
LABEL_25:
      v49 = v28;
      operator delete(v28);
    }
  }

  v33 = 0.0;
  if (v26 == v22)
  {
LABEL_27:
    v34 = sub_2338A9B78(a3);
    v35 = [v34 length];

    if (v35)
    {
      v36 = *(a3 + 32);
      if ((v36 & 4) != 0)
      {
        v37 = sub_2338A9B94(a1);
        v38 = sub_2338A9BFC(a3);
        v39 = sub_2337854A4(v37, v38, 1);

        if (v12)
        {
          v40 = sub_2338A9B78(a3);
          [v39 setObject:v13 forKeyedSubscript:v40];
        }

        else
        {
          __p = 0;
          v40 = sub_23386F6F4(v13, &__p);
          v41 = sub_2338A9B78(a3);
          [v39 setObject:v40 forKeyedSubscript:v41];
        }

        v36 = *(a3 + 32);
      }

      if ((v36 & 8) != 0)
      {
        v42 = MEMORY[0x277CCACA8];
        v43 = sub_2338A9B78(a3);
        v44 = [v42 stringWithFormat:@"%@/%@", v11, v43];

        if (v12)
        {
          v45 = sub_2338A9C18(a1);
          [v45 setObject:v13 forKeyedSubscript:v44];
        }

        else
        {
          __p = 0;
          v45 = sub_23386F6F4(v13, &__p);
          v46 = sub_2338A9C18(a1);
          [v46 setObject:v45 forKeyedSubscript:v44];
        }
      }
    }

    v33 = v20;
  }

LABEL_40:
  return v33;
}

double sub_2338AB8CC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) == 1 && (*(a3 + 32) & 2) == 0)
  {
    if (*(a4 + 4) == 1)
    {
      v12 = 0;
      goto LABEL_7;
    }

LABEL_42:
    v31 = 0.0;
    goto LABEL_41;
  }

  if ((*(a4 + 4) - 1000001) < 0xFFF0BDC0)
  {
    goto LABEL_42;
  }

  v12 = 1;
LABEL_7:
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = *(a4 + 4);
  v15 = *(a4 + 2);
  if (v15 > 0x6F)
  {
    v16 = 0;
  }

  else
  {
    v16 = qword_233916070[v15];
  }

  if (v16 * v14 == 4)
  {
    LODWORD(v17) = *(a4 + 8);
    v18 = bswap32(LODWORD(v17));
    if (a6)
    {
      *&v17 = v18;
    }

    else
    {
      *&v17 = LODWORD(v17);
    }

    v19 = v17;
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v17];
    [v13 addObject:v20];

    goto LABEL_28;
  }

  sub_2338B2340(&__p, v14);
  v21 = v47 - __p;
  v22 = *(a4 + 8);
  v23 = bswap32(v22);
  if (a6)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  v25 = sub_2338A9730(a1, __p, v47 - __p, a5, v24);
  v26 = __p;
  if (v25 == v21)
  {
    if (a6 && v47 != __p)
    {
      v27 = (v47 - __p) >> 3;
      v28 = __p;
      do
      {
        *v28 = bswap64(*v28);
        ++v28;
        --v27;
      }

      while (v27);
    }

    v19 = *v26;
    if (!*(a4 + 4))
    {
      goto LABEL_26;
    }

    v29 = 0;
    do
    {
      v30 = [MEMORY[0x277CCABB0] numberWithDouble:*(__p + v29)];
      [v13 addObject:v30];

      ++v29;
    }

    while (v29 < *(a4 + 4));
    v26 = __p;
    if (__p)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v19 = 0.0;
    if (__p)
    {
LABEL_26:
      v47 = v26;
      operator delete(v26);
    }
  }

  v31 = 0.0;
  if (v25 == v21)
  {
LABEL_28:
    v32 = sub_2338A9B78(a3);
    v33 = [v32 length];

    if (v33)
    {
      v34 = *(a3 + 32);
      if ((v34 & 4) != 0)
      {
        v35 = sub_2338A9B94(a1);
        v36 = sub_2338A9BFC(a3);
        v37 = sub_2337854A4(v35, v36, 1);

        if (v12)
        {
          v38 = sub_2338A9B78(a3);
          [v37 setObject:v13 forKeyedSubscript:v38];
        }

        else
        {
          __p = 0;
          v38 = sub_23386F6F4(v13, &__p);
          v39 = sub_2338A9B78(a3);
          [v37 setObject:v38 forKeyedSubscript:v39];
        }

        v34 = *(a3 + 32);
      }

      if ((v34 & 8) != 0)
      {
        v40 = MEMORY[0x277CCACA8];
        v41 = sub_2338A9B78(a3);
        v42 = [v40 stringWithFormat:@"%@/%@", v11, v41];

        if (v12)
        {
          v43 = sub_2338A9C18(a1);
          [v43 setObject:v13 forKeyedSubscript:v42];
        }

        else
        {
          __p = 0;
          v43 = sub_23386F6F4(v13, &__p);
          v44 = sub_2338A9C18(a1);
          [v44 setObject:v43 forKeyedSubscript:v42];
        }
      }
    }

    v31 = v19;
  }

LABEL_41:
  return v31;
}

double sub_2338ABD74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v11 = a2;
  if (*(a3 + 4) != 1 || (*(a3 + 32) & 2) != 0)
  {
    v12 = *(a4 + 4);
    if ((v12 - 1000001) >= 0xFFF0BDC0)
    {
      v13 = 1;
      goto LABEL_7;
    }

LABEL_39:
    v24 = 0.0;
    goto LABEL_38;
  }

  v12 = *(a4 + 4);
  if (v12 != 1)
  {
    goto LABEL_39;
  }

  v13 = 0;
LABEL_7:
  sub_23372630C(&__p, (2 * v12));
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

  v14 = v44 - __p;
  if (sub_2338A9730(a1, __p, v44 - __p, a5, v17) == v14)
  {
    v18 = [MEMORY[0x277CBEB18] array];
    if (a6)
    {
      v20 = __p;
      if (v44 != __p)
      {
        v21 = (v44 - __p) >> 2;
        do
        {
          *v20 = bswap32(*v20);
          ++v20;
          --v21;
        }

        while (v21);
      }
    }

    if (*(a4 + 4))
    {
      v22 = 0;
      v23 = 0;
      v24 = 0.0;
      do
      {
        v25 = *(__p + v22);
        v26 = 0.0;
        if (v25)
        {
          LODWORD(v19) = *(__p + v22 + 4);
          v26 = v25 / v19;
        }

        if (!v23)
        {
          v24 = v26;
        }

        *&v26 = v26;
        v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
        [v18 addObject:v27];

        ++v23;
        v22 += 8;
      }

      while (v23 < *(a4 + 4));
    }

    else
    {
      v24 = 0.0;
    }

    v28 = sub_2338A9B78(a3);
    v29 = [v28 length];

    if (v29)
    {
      v30 = *(a3 + 32);
      if ((v30 & 4) != 0)
      {
        v31 = sub_2338A9B94(a1);
        v32 = sub_2338A9BFC(a3);
        v33 = sub_2337854A4(v31, v32, 1);

        if (v13)
        {
          v34 = sub_2338A9B78(a3);
          [v33 setObject:v18 forKeyedSubscript:v34];
        }

        else
        {
          v42 = 0;
          v34 = sub_23386F6F4(v18, &v42);
          v35 = sub_2338A9B78(a3);
          [v33 setObject:v34 forKeyedSubscript:v35];
        }

        v30 = *(a3 + 32);
      }

      if ((v30 & 8) != 0)
      {
        v36 = MEMORY[0x277CCACA8];
        v37 = sub_2338A9B78(a3);
        v38 = [v36 stringWithFormat:@"%@/%@", v11, v37];

        if (v13)
        {
          v39 = sub_2338A9C18(a1);
          [v39 setObject:v18 forKeyedSubscript:v38];
        }

        else
        {
          v42 = 0;
          v39 = sub_23386F6F4(v18, &v42);
          v40 = sub_2338A9C18(a1);
          [v40 setObject:v39 forKeyedSubscript:v38];
        }
      }
    }
  }

  else
  {
    v24 = 0.0;
  }

  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

LABEL_38:

  return v24;
}