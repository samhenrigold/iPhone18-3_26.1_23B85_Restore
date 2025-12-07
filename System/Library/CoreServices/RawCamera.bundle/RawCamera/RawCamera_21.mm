void sub_2338E66A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v35 = *(v33 - 168);
  if (v35)
  {
    *(v33 - 160) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E6770(int a1, int a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = a1;
  v15 = a5;
  v16 = a4;
  v14 = a6;
  v13 = a2;
  v11 = a8;
  v12 = a7;
  v10 = a9;
  v9 = a3;
  sub_2338E6A08(&v18, &v17, &v16, &v15, &v14, &v13, &v12, &v11, &v10, &v9);
}

id sub_2338E67D8(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(&v3);
  v1 = sub_2338E6858(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338E6840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_2338E6858(uint64_t *a1)
{
  sub_233764DC0(a1, __p);
  v1 = sub_2337BF480(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2338E68B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (**sub_2338E68D4(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936000, &unk_233917B0C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E6920(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        return &unk_284936000;
      }

      if (a4)
      {
        v6 = sub_2337BF190(a4, &unk_284936000);
      }

      else
      {
        v6 = a5 == &unk_233917B0C;
      }

      if (v6)
      {
        return (a2 + 8);
      }

      else
      {
        return 0;
      }
    }

    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a3 = sub_2338E6920;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (!a1)
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      sub_2337239E8(v7);
    }

    result = 0;
    goto LABEL_11;
  }

  v9 = *(a2 + 16);
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 16) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  result = 0;
  *a3 = sub_2338E6920;
  return result;
}

void *sub_2338E6ACC(void *a1, int *a2, unint64_t *a3, float64_t *a4, double *a5, int *a6, unint64_t *a7, float64_t *a8, float64x2_t a9, double a10, double a11, float64x2_t a12, double *a13, int *a14)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284902C38;
  *&a9.f64[0] = *a3;
  *&a12.f64[0] = *a7;
  sub_233730EF8((a1 + 3), *a2, *a6, *a14, a9, *a4, *a5, a12, *a8, *a13);
  return a1;
}

id sub_2338E6B50(unsigned int *a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*a1];
  v6[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:a1[1]];
  v6[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];

  return v4;
}

void sub_2338E6C18(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id sub_2338E6C40(uint64_t a1)
{
  v3 = (*(*(a1 + 32) + 16))();
  v1 = sub_2338E6B50(&v3);

  return v1;
}

uint64_t (**sub_2338E6C8C(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936010, &unk_233917BA0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E6CD8(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = sub_2338E6CD8;
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = sub_2338E6CD8;
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_284936010;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_284936010);
  }

  else
  {
    v6 = a5 == &unk_233917BA0;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E6D98(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedInt:v2];
}

uint64_t (**sub_2338E6DE4(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827C8], &unk_233917BA4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2338E6E30(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E6E30;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E6E30;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827C8];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D827C8]);
  }

  else
  {
    v6 = a5 == &unk_233917BA4;
  }

  if (v6)
  {
    return a2 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E6EF8(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  (*(*(a1 + 32) + 16))();

  return MEMORY[0x2821F9670](v1, sel_numberWithLong_);
}

uint64_t (**sub_2338E6F44(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827D0], &unk_233917BA8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E6F90(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = sub_2338E6F90;
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = sub_2338E6F90;
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827D0];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D827D0]);
  }

  else
  {
    v6 = a5 == &unk_233917BA8;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

id sub_2338E7050(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v1 = sub_2338E7270(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2338E70BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E70D8(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  sub_233729070(v5 + 1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *&v5[0] = sub_2338E7348;
  if (v5 != a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v6[0] = 0;
      v6[1] = 0;
      v3(2, a1, v6, 0, 0);
      (*&v5[0])(2, v5, a1, 0, 0);
      (v6)[0](2, v6, v5, 0, 0);
      sub_2337BF090(v6);
    }

    else
    {
      *(a1 + 8) = *(v5 + 8);
      *(a1 + 24) = *(&v5[1] + 1);
      memset(v5 + 8, 0, 24);
      *a1 = sub_2338E7348;
      *&v5[0] = 0;
    }
  }

  sub_2337BF090(v5);
  return a1;
}

void sub_2338E7218(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2338E7224(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936020, &unk_233917BD0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2338E7270(unsigned int **a1)
{
  v2 = sub_233755CB8(a1[1] - *a1);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithInt:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  return v6;
}

void *sub_2338E7348(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      a3[2] = 0;
      a3[3] = 0;
      a3[1] = 0;
      sub_233729070(a3 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
      result = 0;
      *a3 = sub_2338E7348;
      return result;
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      *(a2 + 16) = v8;
      operator delete(v8);
    }

    result = 0;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *(a3 + 1) = *(a2 + 8);
    a3[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *a3 = sub_2338E7348;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    return &unk_284936020;
  }

  if (a4)
  {
    v7 = sub_2337BF190(a4, &unk_284936020);
  }

  else
  {
    v7 = a5 == &unk_233917BD0;
  }

  if (v7)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

id sub_2338E7450(uint64_t a1)
{
  v4[0] = (*(*(a1 + 32) + 16))();
  v4[1] = v1;
  v2 = sub_2337D891C(v4);

  return v2;
}

uint64_t (**sub_2338E749C(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936030, &unk_233917BE4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E74E8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E74E8;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E74E8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_284936030;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_284936030);
  }

  else
  {
    v6 = a5 == &unk_233917BE4;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

id sub_2338E75B0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v1 = sub_2338E77D0(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2338E761C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E7638(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  sub_233729070(v5 + 1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *&v5[0] = sub_2338E78A8;
  if (v5 != a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v6[0] = 0;
      v6[1] = 0;
      v3(2, a1, v6, 0, 0);
      (*&v5[0])(2, v5, a1, 0, 0);
      (v6)[0](2, v6, v5, 0, 0);
      sub_2337BF090(v6);
    }

    else
    {
      *(a1 + 8) = *(v5 + 8);
      *(a1 + 24) = *(&v5[1] + 1);
      memset(v5 + 8, 0, 24);
      *a1 = sub_2338E78A8;
      *&v5[0] = 0;
    }
  }

  sub_2337BF090(v5);
  return a1;
}

void sub_2338E7778(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2338E7784(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936040, &unk_233917C0C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2338E77D0(unsigned int **a1)
{
  v2 = sub_233755CB8(a1[1] - *a1);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  return v6;
}

void *sub_2338E78A8(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      a3[2] = 0;
      a3[3] = 0;
      a3[1] = 0;
      sub_233729070(a3 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
      result = 0;
      *a3 = sub_2338E78A8;
      return result;
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      *(a2 + 16) = v8;
      operator delete(v8);
    }

    result = 0;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *(a3 + 1) = *(a2 + 8);
    a3[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *a3 = sub_2338E78A8;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    return &unk_284936040;
  }

  if (a4)
  {
    v7 = sub_2337BF190(a4, &unk_284936040);
  }

  else
  {
    v7 = a5 == &unk_233917C0C;
  }

  if (v7)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E79B0(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedInt:v2];
}

uint64_t (**sub_2338E79FC(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936050, &unk_233917C28);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E7A48(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E7A48;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E7A48;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_284936050;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_284936050);
  }

  else
  {
    v6 = a5 == &unk_233917C28;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

id sub_2338E7B10(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v1 = sub_233729FBC(__p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2338E7B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t (**sub_2338E7B98(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936060, &unk_233917C6C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E7BE4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 != 3)
      {
        return &unk_284936060;
      }

      if (a4)
      {
        v7 = sub_2337BF190(a4, &unk_284936060);
      }

      else
      {
        v7 = a5 == &unk_233917C6C;
      }

      if (v7)
      {
        return (a2 + 8);
      }

      else
      {
        return 0;
      }
    }

    v9 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *a3 = sub_2338E7BE4;
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    if (*(a2 + 31) < 0)
    {
      v8 = *(a2 + 8);
LABEL_11:
      operator delete(v8);
    }

LABEL_12:
    result = 0;
    *a2 = 0;
    return result;
  }

  if (*(a2 + 31) < 0)
  {
    sub_233731FB8((a3 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v11 = *(a2 + 8);
    *(a3 + 24) = *(a2 + 24);
    *(a3 + 8) = v11;
  }

  result = 0;
  *a3 = sub_2338E7BE4;
  return result;
}

uint64_t sub_2338E7CF8(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedInt:v2];
}

uint64_t (**sub_2338E7D44(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936070, &unk_233917C88);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E7D90(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E7D90;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E7D90;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_284936070;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_284936070);
  }

  else
  {
    v6 = a5 == &unk_233917C88;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_2338E7E58(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_2338E7F2C(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  (*(*(a1 + 32) + 16))();

  return [v1 numberWithFloat:?];
}

uint64_t (**sub_2338E7F74(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, MEMORY[0x277D827B0], &unk_233917C8C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2338E7FC0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E7FC0;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E7FC0;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return MEMORY[0x277D827B0];
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, MEMORY[0x277D827B0]);
  }

  else
  {
    v6 = a5 == &unk_233917C8C;
  }

  if (v6)
  {
    return a2 + 8;
  }

  else
  {
    return 0;
  }
}

id sub_2338E8088(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(__p);
  v1 = sub_2338E8324(__p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v1;
}

void sub_2338E80F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E8110(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_233754F80(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_233728FF4(a1, *a2, a2[1], (a2[1] - *a2) >> 1);
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t sub_2338E818C(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  sub_233728FF4(v5 + 1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 1);
  *&v5[0] = sub_2338E83FC;
  if (v5 != a1)
  {
    v3 = *a1;
    if (*a1)
    {
      v6[0] = 0;
      v6[1] = 0;
      v3(2, a1, v6, 0, 0);
      (*&v5[0])(2, v5, a1, 0, 0);
      (v6)[0](2, v6, v5, 0, 0);
      sub_2337BF090(v6);
    }

    else
    {
      *(a1 + 8) = *(v5 + 8);
      *(a1 + 24) = *(&v5[1] + 1);
      memset(v5 + 8, 0, 24);
      *a1 = sub_2338E83FC;
      *&v5[0] = 0;
    }
  }

  sub_2337BF090(v5);
  return a1;
}

void sub_2338E82CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2338E82D8(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936080, &unk_233917CB4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_2338E8324(unsigned __int16 **a1)
{
  v2 = sub_233755CB8(a1[1] - *a1);
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:*v3];
      [v2 addObject:v5];

      ++v3;
    }

    while (v3 != v4);
  }

  v6 = [MEMORY[0x277CBEA60] arrayWithArray:v2];

  return v6;
}

void *sub_2338E83FC(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      a3[2] = 0;
      a3[3] = 0;
      a3[1] = 0;
      sub_233728FF4(a3 + 1, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 1);
      result = 0;
      *a3 = sub_2338E83FC;
      return result;
    }

    v8 = *(a2 + 8);
    if (v8)
    {
      *(a2 + 16) = v8;
      operator delete(v8);
    }

    result = 0;
LABEL_11:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[3] = 0;
    *(a3 + 1) = *(a2 + 8);
    a3[3] = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *a3 = sub_2338E83FC;
    goto LABEL_11;
  }

  if (a1 != 3)
  {
    return &unk_284936080;
  }

  if (a4)
  {
    v7 = sub_2337BF190(a4, &unk_284936080);
  }

  else
  {
    v7 = a5 == &unk_233917CB4;
  }

  if (v7)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

id sub_2338E8504(uint64_t a1)
{
  (*(*(a1 + 32) + 16))(&v3);
  v1 = sub_2337E1060(&v3);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return v1;
}

void sub_2338E8570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E858C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    sub_2337E004C(a1, a2);
  }

  else
  {
    sub_2337DF874(a1, a2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_2338E85D0(unint64_t *a1, uint64_t a2)
{
  v2[8] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_2338E8744(v2, a2);
}

void sub_2338E86EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_233721B78(a1);
}

uint64_t (**sub_2338E86F8(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_284936090, &unk_233917CC4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E87BC(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_2338E8744(a3, a2[1]);
    }

    else
    {
      sub_2338E8878(a2);
    }

    return 0;
  }

  else if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = sub_2338E87BC;
    a3[1] = v8;
    *a2 = 0;
  }

  else if (a1 == 3)
  {
    if (a4)
    {
      v6 = sub_2337BF190(a4, &unk_284936090);
    }

    else
    {
      v6 = a5 == &unk_233917CC4;
    }

    if (v6)
    {
      return a2[1];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return &unk_284936090;
  }

  return result;
}

void sub_2338E8878(void *a1)
{
  v2 = a1[1];
  v3 = v2[1];
  if (v3)
  {
    v2[2] = v3;
    operator delete(v3);
  }

  operator delete(v2);
  *a1 = 0;
}

uint64_t sub_2338E88B8(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedInt:v2];
}

uint64_t (**sub_2338E8904(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849360A0, &unk_233917CD8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E8950(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E8950;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E8950;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849360A0;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849360A0);
  }

  else
  {
    v6 = a5 == &unk_233917CD8;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E8A18(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithInt:v2];
}

uint64_t (**sub_2338E8A64(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849360B0, &unk_233917CF0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E8AB0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E8AB0;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E8AB0;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849360B0;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849360B0);
  }

  else
  {
    v6 = a5 == &unk_233917CF0;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E8B78(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedInt:v2];
}

uint64_t (**sub_2338E8BC4(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849360C0, &unk_233917D0C);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E8C10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E8C10;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E8C10;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849360C0;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849360C0);
  }

  else
  {
    v6 = a5 == &unk_233917D0C;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E8CD8(uint64_t a1)
{
  v1 = MEMORY[0x277CCABB0];
  v2 = (*(*(a1 + 32) + 16))();

  return [v1 numberWithUnsignedInt:v2];
}

uint64_t (**sub_2338E8D24(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, &unk_2849360D0, &unk_233917D28);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2338E8D70(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = sub_2338E8D70;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = sub_2338E8D70;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    return &unk_2849360D0;
  }

  if (a4)
  {
    v6 = sub_2337BF190(a4, &unk_2849360D0);
  }

  else
  {
    v6 = a5 == &unk_233917D28;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338E8E38()
{
  if ((atomic_load_explicit(&qword_280C04F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C04F50))
  {
    operator new();
  }

  return qword_280C04F48;
}

void sub_2338E8EB0(_Unwind_Exception *a1)
{
  MEMORY[0x2383ABF10](v1, 0xA0C40E93CF5C4);
  __cxa_guard_abort(&qword_280C04F50);
  _Unwind_Resume(a1);
}

id sub_2338E8EE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2338E9364;
  v16 = sub_2338E9374;
  v17 = 0;
  v4 = sub_2338E937C(v3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2338E93C0;
  block[3] = &unk_2789F1068;
  v10 = &v12;
  v11 = a1;
  v9 = v3;
  v5 = v3;
  dispatch_sync(v4, block);

  v6 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v6;
}

id sub_2338E9010(void *a1)
{
  v1 = a1;
  v2 = sub_2338E8E38();
  v3 = sub_2338E9070(v2, v1);

  return v3;
}

id sub_2338E9070(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_2338E9364;
  v16 = sub_2338E9374;
  v17 = 0;
  v4 = sub_2338E937C(v3);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2338E9600;
  block[3] = &unk_2789F1068;
  v10 = &v12;
  v11 = a1;
  v9 = v3;
  v5 = v3;
  dispatch_sync(v4, block);

  v6 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v6;
}

void sub_2338E9198(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v3 = sub_2338E8E38();
  sub_2338E9200(v3, v4, a2);
}

void sub_2338E9200(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a2;
  if ([v6 isEqualToString:@"unsupported"])
  {
    if (qword_27DE3DE48 != -1)
    {
      sub_233900014();
    }

    v5 = qword_27DE3DE40;
  }

  else
  {
    v5 = sub_2338E8EE8(a1, v6);
  }

  if (v5)
  {
    sub_23386D780(v6, v5);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_2338E92D8()
{
  v2 = sub_23384AB9C(@"unsupported", @"camera");
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
  v1 = qword_27DE3DE40;
  qword_27DE3DE40 = v0;
}

uint64_t sub_2338E9364(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2338E937C(uint64_t a1)
{
  if ((atomic_load_explicit(byte_280C04F60, memory_order_acquire) & 1) == 0)
  {
    sub_233900028();
  }

  v2 = qword_280C04F58;

  return v2;
}

void sub_2338E93C0(void *a1)
{
  v2 = a1[6];
  v3 = sub_2338E94CC(v2, a1[4]);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    sub_2338E9550(v2, &v9);
    if (v9)
    {
      v6 = sub_2338EB648(v9, a1[4]);
      v7 = *(a1[5] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    [*(v2 + 16) setObject:*(*(a1[5] + 8) + 40) forKeyedSubscript:a1[4]];
    if (v10)
    {
      sub_2337239E8(v10);
    }
  }
}

void sub_2338E9474(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(*(v14 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  __cxa_end_catch();
}

id sub_2338E94CC(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 16) objectForKeyedSubscript:a2];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_2338E9550(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (!*a1)
  {
    v2 = sub_2338E970C(a1);
    sub_2338EB5EC(v2);
  }

  v3 = a1[1];
  *a2 = *a1;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2338E95DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338E9600(uint64_t *a1)
{
  v2 = a1[6];
  v3 = sub_2338E94CC(v2, a1[4]);
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(a1[5] + 8) + 40))
  {
    sub_2338E9550(v2, &v9);
    if (v9)
    {
      v6 = sub_2338EBEC0(v9, a1[4]);
      v7 = *(a1[5] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    [*(v2 + 16) setObject:*(*(a1[5] + 8) + 40) forKeyedSubscript:a1[4]];
    if (v10)
    {
      sub_2337239E8(v10);
    }
  }
}

void sub_2338E96B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(*(v14 + 40) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  __cxa_end_catch();
}

id sub_2338E970C(uint64_t a1)
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = sub_2338E9778(a1);
  v3 = [v1 fileURLWithPath:v2];

  return v3;
}

__CFString *sub_2338E9778(uint64_t a1)
{
  v1 = sub_23384AC88(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 bundleURL];
    v4 = [v3 path];
    v5 = [v4 mutableCopy];

    if (v5)
    {
      if ([v5 containsString:@"/RegressionTest.octest/Contents/Resources"])
      {
        [v5 replaceOccurrencesOfString:@"/RegressionTest.octest/Contents/Resources" withString:&stru_284938540 options:0 range:{0, objc_msgSend(v5, "length")}];
      }

      [v5 replaceOccurrencesOfString:@"RawCamera.bundle" withString:@"RawCameraSupport.bundle" options:0 range:{0, objc_msgSend(v5, "length")}];
      v6 = [MEMORY[0x277CCAA00] defaultManager];
      v7 = [v6 fileExistsAtPath:v5];

      if (v7)
      {
        v8 = v5;
      }

      else
      {
        v8 = @"/System/Library/CoreServices/RawCameraSupport.bundle";
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_2338E98B8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void *sub_2338E9900(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = [MEMORY[0x277CBEB38] dictionary];
  return a1;
}

void sub_2338E993C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338E9954(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = a1[2];

  return MEMORY[0x2821F9670](v6, sel_removeAllObjects);
}

id sub_2338E99AC(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = objc_autoreleasePoolPush();
  sub_2338E9550(a1, &v7);
  if (v7)
  {
    v5 = sub_2338EC2B4(v7, v2);
  }

  else
  {
    v5 = 0;
  }

  if (v8)
  {
    sub_2337239E8(v8);
  }

  objc_autoreleasePoolPop(v4);

  return v5;
}

void sub_2338E9A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CreateListOfSupportedCamerasAndVersions(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_2338E8E38();
  v4 = sub_2338E99AC(v3, a1);
  objc_autoreleasePoolPop(v2);
  return v4;
}

void sub_2338E9AB0(uint64_t a1)
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

void sub_2338E9C78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
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

void sub_2338E9CB0(uint64_t a1@<X0>, void **a2@<X8>)
{
  if ((*(*a1 + 176))(a1))
  {
    goto LABEL_9;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 160))(&v9, a1);
  v4 = v9;
  sub_23372A488(__p, "IFD0:DNGPrivate:SR2Private:SR2SubIFD:BlackLevels");
  v5 = (*(*v4 + 248))(v4, __p, a2, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    sub_2337239E8(v10);
  }

  if ((v5 & 1) == 0)
  {
    v6 = *a2;
    if (*a2)
    {
      a2[1] = v6;
      operator delete(v6);
    }

LABEL_9:
    sub_2338D50CC(a1, a2);
  }
}

void sub_2338E9DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17)
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

void sub_2338E9E10(uint64_t a1)
{
  v2 = (*(*a1 + 2192))(a1);
  (*(*a1 + 2200))(__p, a1);
  v6 = 0;
  v7 = v2;
  v5 = &unk_284917748;
  (*(*a1 + 160))(&v3, a1);
  (*(*v3 + 600))(v3, __p, &v5, 3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2338E9F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
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

uint64_t sub_2338E9F90(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_280C04F80, memory_order_acquire) & 1) == 0)
  {
    sub_233900084();
  }

  return byte_280C04F78;
}

id sub_2338E9FC8(uint64_t a1)
{
  if ((atomic_load_explicit(byte_280C04F90, memory_order_acquire) & 1) == 0)
  {
    sub_2339000E0();
  }

  v2 = qword_280C04F88;

  return v2;
}

id sub_2338EA00C(uint64_t a1)
{
  if (qword_280C04F68 != -1)
  {
    sub_23390013C();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_2338EAA18;
  v9 = sub_2338EAA28;
  v10 = 0;
  v1 = sub_2338E9FC8(a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2338EAA30;
  block[3] = &unk_2789EED30;
  block[4] = &v5;
  dispatch_sync(v1, block);

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_2338EA11C()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = dispatch_get_global_queue(0, 0);
  notify_register_dispatch("com.apple.MobileAsset.RawCamera.Camera.ma.cached-metadata-updated", &unk_280C04F70, v1, &unk_284936CD0);

  v2 = objc_alloc(MEMORY[0x277D289D8]);
  v3 = [v2 initWithType:qword_27DE37C70];
  v4 = [v3 queryMetaDataSync];
  v6 = v4;
  if (v4)
  {
    v7 = sub_2338C0458(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_233900150();
    }
  }

  else
  {
    v8 = [v3 results];
    v9 = qword_27DE3DE50;
    qword_27DE3DE50 = v8;
  }

  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v11 = [v3 lastFetchDate];
  [v10 timeIntervalSinceDate:v11];
  v13 = v12;

  if (v13 > 604800.0 || v6 == 2)
  {
    if (v6 == 2)
    {
      v16 = sub_2338C0458(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = 136446210;
        v19 = "GetMobileAssetCatalog_block_invoke";
        v17 = "%{public}s MobileAsset catalog not present. Initiating download";
LABEL_13:
        _os_log_impl(&dword_23371F000, v16, OS_LOG_TYPE_INFO, v17, &v18, 0xCu);
      }
    }

    else
    {
      v16 = sub_2338C0458(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v18 = 136446210;
        v19 = "GetMobileAssetCatalog_block_invoke";
        v17 = "%{public}s MobileAsset may have been updated. Initiating download";
        goto LABEL_13;
      }
    }

    [MEMORY[0x277D289C0] startCatalogDownload:qword_27DE37C70 then:&unk_284936CF0];
  }

  if ((atomic_load_explicit(byte_280C04FA0, memory_order_acquire) & 1) == 0)
  {
    sub_2339001CC();
  }

  if ((atomic_load_explicit(byte_280C04FB0, memory_order_acquire) & 1) == 0)
  {
    sub_233900214();
  }

  dispatch_source_set_timer(qword_280C04FA8, 0x2260FF9290000uLL, 0x2260FF9290000uLL, 0x3B9ACA00uLL);
  dispatch_source_set_event_handler(qword_280C04FA8, &unk_284936D10);
  dispatch_resume(qword_280C04FA8);
  objc_autoreleasePoolPop(v0);
}

void sub_2338EA410(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sub_2338C0458(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v16 = "GetMobileAssetCatalog_block_invoke_2";
    _os_log_impl(&dword_23371F000, v2, OS_LOG_TYPE_INFO, "%{public}s MobileAsset catalog was updated.", buf, 0xCu);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277D289D8]);
  v5 = [v4 initWithType:qword_27DE37C70];
  v6 = [v5 queryMetaDataSync];
  if (v6)
  {
    v8 = sub_2338C0458(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_233900150();
    }
  }

  else
  {
    v9 = sub_2338E9FC8(0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2338EA618;
    block[3] = &unk_2789F10B0;
    v14 = v5;
    dispatch_async(v9, block);

    v12 = sub_2338C0458(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v16 = "GetMobileAssetCatalog_block_invoke_2";
      _os_log_impl(&dword_23371F000, v12, OS_LOG_TYPE_INFO, "%{public}s Updated catalog", buf, 0xCu);
    }

    v8 = v14;
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_2338EA618(uint64_t a1)
{
  v1 = [*(a1 + 32) results];
  v2 = qword_27DE3DE50;
  qword_27DE3DE50 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

void sub_2338EA654(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v5 = sub_2338C0458(v3, v4);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_23390026C();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136446466;
    v8 = "GetMobileAssetCatalog_block_invoke";
    v9 = 1024;
    v10 = 0;
    _os_log_impl(&dword_23371F000, v6, OS_LOG_TYPE_INFO, "%{public}s MobileAsset catalog download successful (Err: %d)", &v7, 0x12u);
  }

  objc_autoreleasePoolPop(v3);
}

void sub_2338EA744()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D289D8]);
  v2 = [v1 initWithType:qword_27DE37C70];
  v3 = [v2 queryMetaDataSync];
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v5 = [v2 lastFetchDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (v7 > 604800.0 || v3 == 2)
  {
    if (v3 == 2)
    {
      v11 = sub_2338C0458(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136446210;
        v14 = "GetMobileAssetCatalog_block_invoke";
        v12 = "%{public}s MobileAsset catalog not present. Initiating download";
LABEL_11:
        _os_log_impl(&dword_23371F000, v11, OS_LOG_TYPE_INFO, v12, &v13, 0xCu);
      }
    }

    else
    {
      v11 = sub_2338C0458(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 136446210;
        v14 = "GetMobileAssetCatalog_block_invoke";
        v12 = "%{public}s MobileAsset may have been updated. Initiating download";
        goto LABEL_11;
      }
    }

    [MEMORY[0x277D289C0] startCatalogDownload:qword_27DE37C70 then:&unk_284936D30];
  }

  objc_autoreleasePoolPop(v0);
}

void sub_2338EA934(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v5 = sub_2338C0458(v3, v4);
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_23390026C();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 136446210;
    v8 = "GetMobileAssetCatalog_block_invoke";
    _os_log_impl(&dword_23371F000, v6, OS_LOG_TYPE_INFO, "%{public}s MobileAsset catalog download successful", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_2338EAA18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_2338EAA48(void *a1, signed int a2)
{
  v74 = *MEMORY[0x277D85DE8];
  v53 = a1;
  v2 = sub_2338EA00C(v53);
  v52 = v2;
  if (!v2)
  {
    v45 = 0;
    goto LABEL_46;
  }

  v3 = sub_23384AFB8(v2);
  v54 = sub_23384B074(v3);

  v58 = [v53 lowercaseString];
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v52;
  v4 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v4)
  {
    v57 = 0;
    v56 = 0;
    v5 = *v64;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v64 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v63 + 1) + 8 * i);
        v8 = [v7 attributes];
        v9 = [v8 objectForKeyedSubscript:@"FormatVersion"];

        if ([v9 intValue] >= 2)
        {
          v10 = [v7 attributes];
          v11 = [v10 objectForKeyedSubscript:@"cameraVersionInfo"];
          v12 = [v11 valueForKey:v58];

          if (v12)
          {
            v13 = [v12 objectForKeyedSubscript:@"cameraContentVersion"];
            v14 = [v13 intValue];

            v15 = [v12 objectForKeyedSubscript:@"minRawCameraVersion"];
            v16 = sub_23384B074(v15);

            if (v14 > a2 && v14 > v57 && v54 >= v16)
            {
              v17 = v7;

              v57 = v14;
              v56 = v17;
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v4);

    if (!v56)
    {
      v56 = 0;
      v45 = 0;
      goto LABEL_45;
    }

    if ([v56 state] == 1)
    {
      if ((atomic_load_explicit(&qword_27DE3DE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DE60))
      {
        qword_27DE3DE58 = objc_opt_new();
        __cxa_guard_release(&qword_27DE3DE60);
      }

      v18 = dispatch_time(0, 0);
      v19 = [qword_27DE3DE58 objectForKeyedSubscript:v53];
      v20 = [v19 unsignedLongLongValue];

      if (v18 > v20)
      {
        v21 = dispatch_semaphore_create(0);
        dispatch_time(0, 0);
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = sub_2338EB390;
        v60[3] = &unk_2789F10F8;
        v22 = v53;
        v61 = v22;
        v23 = v21;
        v62 = v23;
        [v56 startDownload:v60];
        v24 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v23, v24);
        [v56 refreshState];
        if ([v56 state] == 2)
        {
          dispatch_time(0, 0);
          v25 = [v56 assetProperty:@"cameraNames"];
          v26 = [v25 componentsJoinedByString:{@", "}];
          v27 = v26;
          if (v26)
          {
            v28 = v26;
          }

          else
          {
            v28 = v22;
          }

          v29 = v28;

          v30 = v29;
          AnalyticsSendEventLazy();
        }
      }
    }

    if ([v56 state] == 4)
    {
      v32 = sub_2338C0458(4, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v68 = "GetAssetForKey";
        _os_log_impl(&dword_23371F000, v32, OS_LOG_TYPE_INFO, "%{public}s Asset is in the Downloading state", buf, 0xCu);
      }

      v33 = [v56 refreshState];
      v34 = v33;
      v36 = sub_2338C0458(v33, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [v56 state];
        v38 = "WAS NOT";
        v68 = "GetAssetForKey";
        *buf = 136446722;
        if (v34)
        {
          v38 = "was";
        }

        v69 = 2080;
        v70 = v38;
        v71 = 2048;
        v72 = v37;
        _os_log_impl(&dword_23371F000, v36, OS_LOG_TYPE_INFO, "%{public}s After calling refreshState the asset %s updated and the current state is %ld", buf, 0x20u);
      }
    }

    if ([v56 state] == 2 || (v39 = objc_msgSend(v56, "state"), v39 == 3))
    {
      v41 = [v56 getLocalFileUrl];
      v42 = [v41 URLByAppendingPathComponent:v58];
      obj = [v42 URLByAppendingPathExtension:@"camera"];

      v43 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:obj];
      v45 = v43;
      if (v43)
      {
        v46 = sub_2338C0458(v43, v44);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = [v56 attributes];
          v48 = [v47 objectForKeyedSubscript:@"cameraNames"];
          v49 = [v48 componentsJoinedByString:{@", "}];
          *buf = 136446722;
          v68 = "GetAssetForKey";
          v69 = 2112;
          v70 = v58;
          v71 = 2112;
          v72 = v49;
          _os_log_impl(&dword_23371F000, v46, OS_LOG_TYPE_INFO, "%{public}s Found asset for %@ (%@)", buf, 0x20u);
        }
      }

      goto LABEL_43;
    }

    obj = sub_2338C0458(v39, v40);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_INFO))
    {
      v51 = [v56 state];
      *buf = 136446466;
      v68 = "GetAssetForKey";
      v69 = 2048;
      v70 = v51;
      _os_log_impl(&dword_23371F000, obj, OS_LOG_TYPE_INFO, "%{public}s Asset is not installed and has state %ld", buf, 0x16u);
    }
  }

  else
  {
    v56 = 0;
  }

  v45 = 0;
LABEL_43:

LABEL_45:
LABEL_46:

  return v45;
}

void sub_2338EB1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15)
{
  __cxa_guard_abort(&qword_27DE3DE60);

  _Unwind_Resume(a1);
}

void sub_2338EB390(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if (a2)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{dispatch_time(0, 3600000000000)}];
    [qword_27DE3DE58 setObject:v5 forKeyedSubscript:*(a1 + 32)];

    v8 = sub_2338C0458(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_2339002E8();
    }
  }

  else
  {
    v9 = [qword_27DE3DE58 removeObjectForKey:*(a1 + 32)];
    v8 = sub_2338C0458(v9, v10);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136446210;
      v12 = "GetAssetForKey_block_invoke";
      _os_log_impl(&dword_23371F000, v8, OS_LOG_TYPE_INFO, "%{public}s Download asset successful", &v11, 0xCu);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  objc_autoreleasePoolPop(v4);
}

id sub_2338EB4FC(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v6[0] = @"CameraName";
  v6[1] = @"DownloadTime";
  v7[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v1 / 0xF4240];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  return v4;
}

NSObject *sub_2338EB648(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v27 = v3;
  if (v3)
  {
    v5 = sub_2338EBA48(a1, v3, @"cam");
    v6 = [v5 valueForKeyPath:@"version.contentVersion"];
    v7 = [v6 intValue];

    v9 = sub_2338EBDE4(v8, v27, @"cam", v7);
    v10 = v9;
    if (v9)
    {
      v11 = v9;

      v5 = v11;
    }

    v26 = v10;
    v12 = [v5 objectForKeyedSubscript:@"alias"];
    if (v12)
    {
      v28 = a1;
      v13 = 0;
      do
      {
        if (v13 == 2)
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v5;
          v29 = sub_2338EB648(v28, v12);
          if (!v29)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            MEMORY[0x2383ABCE0](exception, "RawCameraException");
            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v5 = [v5 mutableCopy];
          [v5 removeObjectForKey:@"alias"];
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = v29;
          v12 = 0;
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v15)
          {
            v16 = *v32;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v32 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v31 + 1) + 8 * i);
                if ([v18 isEqualToString:@"alias"])
                {
                  [v14 objectForKeyedSubscript:v18];
                  v12 = v19 = v12;
                }

                else
                {
                  v20 = [v5 objectForKeyedSubscript:v18];
                  v21 = v20 == 0;

                  if (!v21)
                  {
                    continue;
                  }

                  v19 = [v14 objectForKeyedSubscript:v18];
                  [v5 setObject:v19 forKeyedSubscript:v18];
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
            }

            while (v15);
          }
        }

        ++v13;
      }

      while (v12);
    }

    v22 = v5;

    v23 = v22;
  }

  else
  {
    v22 = sub_2338C0458(0, v4);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_233900364();
    }

    v23 = 0;
  }

  return v23;
}

NSObject *sub_2338EBA48(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5)
  {
    v21 = sub_2338C0458(v6, v7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_23390065C();
    }

    goto LABEL_31;
  }

  if (!v6)
  {
    v21 = sub_2338C0458(0, v7);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_2339005DC();
    }

    goto LABEL_31;
  }

  v9 = [v5 lowercaseString];
  sub_2338EBF64(a1, &v29);
  v12 = v29;
  if (v29)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v9, v8];
    sub_23386CC6C(v12, v13, &v27);

    if (!v27)
    {
      v18 = sub_2338C0458(0, v14);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_2339004DC();
      }

      v21 = 0;
      v23 = 0;
      goto LABEL_25;
    }

    v15 = sub_23378972C(v27);
    v16 = *MEMORY[0x277CBECE8];
    v18 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], v15, *(v27 + 24), *MEMORY[0x277CBED00]);
    if (v18)
    {
      v19 = CFPropertyListCreateWithData(v16, v18, 0, 0, 0);
      v21 = v19;
      if (v19)
      {
        v22 = sub_2338C0458(v19, v20);
        v23 = 1;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v32 = "resourceFromArchive";
          v33 = 2112;
          v34 = v9;
          _os_log_impl(&dword_23371F000, v22, OS_LOG_TYPE_INFO, "%{public}s Loaded asset data for %@", buf, 0x16u);
        }

        goto LABEL_24;
      }

      v22 = sub_2338C0458(0, v20);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_2339003E4();
      }
    }

    else
    {
      v22 = sub_2338C0458(0, v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_233900460();
      }
    }

    v21 = 0;
    v23 = 0;
LABEL_24:

LABEL_25:
    if (v28)
    {
      sub_2337239E8(v28);
    }

    goto LABEL_27;
  }

  v24 = sub_2338C0458(v10, v11);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_23390055C();
  }

  v21 = 0;
  v23 = 0;
LABEL_27:
  if (v30)
  {
    sub_2337239E8(v30);
  }

  if (v23)
  {
    v21 = v21;
    v25 = v21;
    goto LABEL_32;
  }

LABEL_31:
  v25 = 0;
LABEL_32:

  return v25;
}

void sub_2338EBD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  if (a14)
  {
    sub_2337239E8(a14);
  }

  _Unwind_Resume(a1);
}

id sub_2338EBDE4(uint64_t a1, void *a2, uint64_t a3, signed int a4)
{
  v6 = a2;
  v8 = sub_2338E9F90(v6, v7);
  if ((v8 & 1) == 0)
  {
    if (v6)
    {
      if (a3)
      {
        v10 = sub_2338EAA48(v6, a4);
        goto LABEL_11;
      }

      v11 = sub_2338C0458(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_2339006DC();
      }
    }

    else
    {
      v11 = sub_2338C0458(v8, v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_23390075C();
      }
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

id sub_2338EBEC0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = sub_2338EBA48(a1, v4, @"ln");
  }

  else
  {
    v6 = sub_2338C0458(0, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_2339007DC();
    }

    v5 = 0;
  }

  return v5;
}

void sub_2338EBF64(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    sub_2338EC240(a1);
    objc_claimAutoreleasedReturnValue();
    v4 = MEMORY[0x277CBEBC0];
    sub_2338EC144(a1);
    v5 = [v4 fileURLWithPath:objc_claimAutoreleasedReturnValue()];
    sub_23386C20C(v5);
  }

  v6 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_2338EC0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

id sub_2338EC144(uint64_t a1)
{
  v1 = sub_2338EC1E4(a1);
  v2 = [v1 URLForResource:@"PlugIns" withExtension:@"assets"];

  if (v2)
  {
    v3 = [v2 path];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_2338EC1E4(uint64_t a1)
{
  v2 = *a1;
  if (!v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleWithURL:*(a1 + 8)];
    v4 = *a1;
    *a1 = v3;

    v2 = *a1;
  }

  return v2;
}

id sub_2338EC240(uint64_t a1)
{
  v1 = CFBundleCopyInfoDictionaryInDirectory(*(a1 + 8));
  v2 = v1;
  if (v1)
  {
    v3 = sub_233739A60(v1, @"CFBundleShortVersionString");
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_2338EC2B4(uint64_t a1, int a2)
{
  v108[2] = *MEMORY[0x277D85DE8];
  if (a2 != 1)
  {
    if (a2)
    {
      v82 = 0;
    }

    else
    {
      sub_2338EBF64(a1, &v101);
      if (v101)
      {
        v2 = sub_23386D030(v101);
        v79 = [MEMORY[0x277CBEB38] dictionary];
        v76 = [MEMORY[0x277CBEB18] array];
        for (i = 0; ; i = v100 + 1)
        {
          v100 = i;
          if (i >= [v2 count])
          {
            break;
          }

          v4 = sub_23386E0B8(v2, &v100);
          if ([v4 hasSuffix:@".cam"])
          {
            v5 = [v4 substringWithRange:{0, objc_msgSend(v4, "length") - 4}];
            v6 = sub_2338EB648(a1, v5);
            v7 = v6;
            if (v6)
            {
              v8 = sub_2338AE7EC(v6, @"rawImageClass", @"supportedMethods");
              v9 = sub_2338ED080(v7, @"version", @"cameraName");
              v10 = v9;
              if (v8 && v9)
              {
                v11 = [MEMORY[0x277CCAB68] string];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v11 appendString:v10];
                }

                else
                {
                  v13 = v10;
                  for (j = 0; ; j = v99 + 1)
                  {
                    v99 = j;
                    if (j >= [v13 count])
                    {
                      break;
                    }

                    if ([v11 length])
                    {
                      [v11 appendString:@"/"];
                    }

                    v15 = sub_23386E0B8(v13, &v99);
                    [v11 appendString:v15];
                  }
                }

                v16 = [MEMORY[0x277CBEB38] dictionary];
                [v16 setObject:v8 forKeyedSubscript:@"supportedMethods"];
                [v16 setObject:v4 forKeyedSubscript:@"id"];
                if (([v76 containsObject:v11] & 1) == 0)
                {
                  [v76 addObject:v11];
                }

                if (sub_233739ACC(v79, v11))
                {
                  v17 = sub_2338ED114(v79, v11);
                }

                else
                {
                  v17 = [MEMORY[0x277CBEB18] array];
                  [v79 setObject:v17 forKeyedSubscript:v11];
                }

                [v17 addObject:v16];
              }

              v12 = v8;
            }

            else
            {
              v12 = 0;
              v10 = 0;
            }
          }
        }

        v107[0] = @"keyArray";
        v107[1] = @"camDict";
        v108[0] = v76;
        v108[1] = v79;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:2];
        v82 = [v48 mutableCopy];
      }

      else
      {
        v82 = 0;
      }

      if (v102)
      {
        sub_2337239E8(v102);
      }
    }

    goto LABEL_95;
  }

  v82 = [MEMORY[0x277CBEB38] dictionary];
  sub_2338EBF64(a1, &v101);
  v19 = v101;
  if (!v101)
  {
    goto LABEL_66;
  }

  v20 = sub_23384AFB8(v18);
  v63 = sub_23384B074(v20);

  sub_23386D030(v19);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  obj = v96 = 0u;
  v68 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (!v68)
  {
    goto LABEL_65;
  }

  v67 = *v96;
  do
  {
    v77 = 0;
    do
    {
      if (*v96 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v95 + 1) + 8 * v77);
      v22 = [v21 pathExtension];
      v23 = [v22 isEqualToString:@"cam"];

      if (v23)
      {
        v66 = [v21 stringByDeletingPathExtension];
        v24 = sub_2338EBA48(a1, v66, @"cam");
        if (v24)
        {
          v74 = v24;
          v25 = [v24 valueForKeyPath:@"version.minRawCameraVersion"];
          v26 = sub_23384B074(v25);

          if (v63 < v26)
          {
            v70 = 0;
            v72 = 0;
            v27 = 0;
            goto LABEL_39;
          }

          v80 = [v74 valueForKeyPath:@"version.cameraName"];
          v28 = [v74 valueForKeyPath:@"alias"];
          v72 = v28;
          if (v28)
          {
            v29 = sub_2338EBA48(a1, v28, @"cam");

            v30 = v29;
          }

          else
          {
            v30 = v74;
          }

          v74 = v30;
          v31 = [v30 valueForKeyPath:@"version.showInSystemProfiler"];
          v32 = [v74 valueForKeyPath:@"rawImageClass.supportedMethods"];
          v33 = [MEMORY[0x277CCAC30] predicateWithBlock:&unk_284936D50];
          v70 = v31;
          v27 = [v32 filteredArrayUsingPredicate:v33];

          if (v74 && v27 && v80 && (!v31 || [v31 BOOLValue]))
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = [MEMORY[0x277CBEA60] arrayWithObject:v80];
            }

            else
            {
              v34 = v80;
            }

            v93 = 0u;
            v94 = 0u;
            v91 = 0u;
            v92 = 0u;
            v80 = v34;
            v35 = [v80 countByEnumeratingWithState:&v91 objects:v105 count:16];
            if (v35)
            {
              v36 = *v92;
              do
              {
                for (k = 0; k != v35; ++k)
                {
                  if (*v92 != v36)
                  {
                    objc_enumerationMutation(v80);
                  }

                  v38 = *(*(&v91 + 1) + 8 * k);
                  v39 = [v82 objectForKeyedSubscript:v38];
                  if (!v39)
                  {
                    v39 = [MEMORY[0x277CBEB18] array];
                  }

                  [v39 addObjectsFromArray:v27];
                  v40 = MEMORY[0x277CBEB18];
                  v41 = [MEMORY[0x277CBEB98] setWithArray:v39];
                  v42 = [v41 allObjects];
                  v43 = [v40 arrayWithArray:v42];

                  [v43 sortUsingSelector:sel_compare_];
                  [v82 setObject:v43 forKeyedSubscript:v38];
                }

                v35 = [v80 countByEnumeratingWithState:&v91 objects:v105 count:16];
              }

              while (v35);
            }
          }
        }

        else
        {
          v70 = 0;
          v72 = 0;
          v27 = 0;
          v74 = 0;
LABEL_39:
          v80 = 0;
        }
      }

      ++v77;
    }

    while (v77 != v68);
    v44 = [obj countByEnumeratingWithState:&v95 objects:v106 count:16];
    v68 = v44;
  }

  while (v44);
LABEL_65:

LABEL_66:
  if (v102)
  {
    sub_2337239E8(v102);
  }

  v45 = objc_alloc(MEMORY[0x277D289D8]);
  v69 = [v45 initWithType:qword_27DE37C70];
  v46 = [v69 queryMetaDataSync];
  if (v46)
  {
    v71 = sub_2338C0458(v46, v47);
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      sub_23390085C();
    }
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v71 = [v69 results];
    v49 = [v71 countByEnumeratingWithState:&v87 objects:v104 count:16];
    if (v49)
    {
      v73 = *v88;
      v75 = v49;
      do
      {
        for (m = 0; m != v75; m = m + 1)
        {
          if (*v88 != v73)
          {
            objc_enumerationMutation(v71);
          }

          v78 = [*(*(&v87 + 1) + 8 * m) attributes];
          v50 = [v78 objectForKeyedSubscript:@"showInSystemProfiler"];
          v51 = [v50 BOOLValue];

          if (v51)
          {
            v85 = 0u;
            v86 = 0u;
            v83 = 0u;
            v84 = 0u;
            v52 = [v78 objectForKeyedSubscript:@"cameraNames"];
            v53 = [v52 countByEnumeratingWithState:&v83 objects:v103 count:16];
            if (v53)
            {
              v54 = *v84;
              do
              {
                for (n = 0; n != v53; ++n)
                {
                  if (*v84 != v54)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v56 = *(*(&v83 + 1) + 8 * n);
                  v57 = [v82 objectForKeyedSubscript:v56];
                  if (!v57)
                  {
                    v57 = [MEMORY[0x277CBEB18] array];
                  }

                  [v57 addObjectsFromArray:MEMORY[0x277CBEBF8]];
                  v58 = MEMORY[0x277CBEB18];
                  v59 = [MEMORY[0x277CBEB98] setWithArray:v57];
                  v60 = [v59 allObjects];
                  v61 = [v58 arrayWithArray:v60];

                  [v61 sortUsingSelector:sel_compare_];
                  [v82 setObject:v61 forKeyedSubscript:v56];
                }

                v53 = [v52 countByEnumeratingWithState:&v83 objects:v103 count:16];
              }

              while (v53);
            }
          }
        }

        v75 = [v71 countByEnumeratingWithState:&v87 objects:v104 count:16];
      }

      while (v75);
    }
  }

LABEL_95:

  return v82;
}

void sub_2338ECE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56)
{
  if (a56)
  {
    sub_2337239E8(a56);
  }

  _Unwind_Resume(a1);
}

id sub_2338ED080(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_233739994(a1, a2, 0);
  v7 = [v6 objectForKeyedSubscript:v5];

  return v7;
}

void *sub_2338ED114(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKeyedSubscript:a2];
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

uint64_t sub_2338ED180(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasSuffix:@"p"])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isEqualToString:@"0"] ^ 1;
  }

  return v3;
}

void sub_2338ED298(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284936D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338ED2F8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  return a1;
}

void sub_2338EDACC(uint64_t a1)
{
  v5 = &unk_28490E658;
  (*(*a1 + 160))(&v3);
  v2 = 11;
  strcpy(v1, "CaptureInfo");
  (*(*v3 + 600))();
  if (v2 < 0)
  {
    operator delete(v1[0]);
  }

  if (v4)
  {
    sub_2337239E8(v4);
  }
}

void sub_2338EDBCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
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

uint64_t sub_2338EDBFC(uint64_t a1)
{
  (*(*a1 + 432))(a1);
  v3 = v2;
  v4 = (*(*a1 + 432))(a1);
  if ((v4 & 0x100000000) != 0)
  {
    v5 = -11;
  }

  else
  {
    v5 = -10;
  }

  v6 = v5 + HIDWORD(v4);
  v7 = (*(*a1 + 432))(a1);
  if (v6 * v3 >= 4001)
  {
    v7 += (v3 - 4000 / v6) / 2;
  }

  return v7 | 0x500000000;
}

void sub_2338EDD10(uint64_t a1)
{
  if (((*(*a1 + 176))(a1) & 1) == 0)
  {
    sub_2338EDF14(a1, &v8);
    sub_2338EF318(v8, &v6);
    sub_2338EE000(a1, &v8, &v6);
    sub_2338EE3A4(a1);
    v4 = sub_2338EE708(v2, v3, &v6);
    sub_2338EE77C(v4, v5, &v6);
    if (v7)
    {
      sub_2337239E8(v7);
    }

    if (v9)
    {
      sub_2337239E8(v9);
    }
  }
}

void sub_2338EDDC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338EDDEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (!*a1)
  {
    goto LABEL_14;
  }

  v5 = __dynamic_cast(v3, &unk_284903320, &unk_284937F70, 0);
  if (!v5)
  {
    v7 = __dynamic_cast(v3, &unk_284903320, &unk_284937C18, 0);
    if (v7)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_2338F5060(v7, a2);
      goto LABEL_10;
    }

LABEL_14:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_2338F665C(v5, a2);
LABEL_10:
  if (v6)
  {

    sub_2337239E8(v6);
  }
}

void sub_2338EDEF8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_2337239E8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338EDF14(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  (*(*a1 + 160))(&v4);
  sub_2338EDDEC(&v4, a2);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }
}

void sub_2338EDFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338EE000(uint64_t a1, uint64_t *a2, float **a3)
{
  if (sub_2338798F0(*a3))
  {
    v6 = *(*a2 + 172);
    v7 = *(*a2 + 144);
    v40 = sub_2337DE858(*a2);
    sub_233726998(&v38, &v40);
    v8 = v38;
    if (v38 >> 4 >= 0x271)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v40 = sub_2337DE858(*a2);
    sub_233726998(&v38, &v40 + 1);
    v9 = v38;
    if (v38 >> 4 >= 0x271)
    {
      __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0]();
      sub_2338F83F4();
    }

    v10 = *a3;
    v40 = &unk_28492CFA0;
    v11 = v10[16];
    v12 = v10[17];
    v41 = v11;
    v42 = v12;
    v13 = v10[18];
    v14 = v10[19];
    v43 = v13;
    v44 = v14;
    v15 = v10[20];
    v16 = v10[21];
    v45 = v15;
    v46 = v16;
    v17 = v10[22];
    v18 = v10[23];
    v47 = v17;
    v48 = v18;
    v19 = *(*a2 + 176);
    if (v6)
    {
      v20 = v11;
    }

    else
    {
      v20 = v12;
    }

    if (v6)
    {
      v21 = v13;
    }

    else
    {
      v21 = v14;
    }

    if (v6)
    {
      v22 = v15;
    }

    else
    {
      v22 = v16;
    }

    (*(*a1 + 384))(&v38, a1);
    v23 = v19;
    v24 = v21 + (v17 * (v23 - v18));
    if (v24 >= 0.0)
    {
      v25 = v7;
    }

    else
    {
      v25 = 0;
    }

    if (v24 >= 0.0)
    {
      v26 = v8;
    }

    else
    {
      v26 = v7;
    }

    if (v25 >= v8 || v26 > v8 || v25 >= v26)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v27 = 0.0;
    if (*(*a2 + 72) >= 3)
    {
      v27 = *(*a2 + 116);
    }

    if (v9)
    {
      v28 = 0;
      v29 = v38;
      do
      {
        v30 = sub_2337B0628(v29);
        v29 = v38;
        v32 = (v30 + 2 * (*(v38 + 56) * v28));
        if (v24 >= 0.0)
        {
          v36 = v26 - v7;
          if (v26 > v7)
          {
            do
            {
              LOWORD(v31) = *v32;
              v31 = fminf(fmaxf(((v20 + (v24 * (LODWORD(v31) - v27))) + ((v22 * (LODWORD(v31) - v27)) * (LODWORD(v31) - v27))) + LODWORD(v31), 0.0), 65535.0);
              *v32++ = llroundf(v31);
              --v36;
            }

            while (v36);
          }
        }

        else
        {
          v33 = v26;
          do
          {
            LOWORD(v31) = *v32;
            v34 = LODWORD(v31);
            v35 = (v20 + (v24 * (v34 - v27))) + ((v22 * (v34 - v27)) * (v34 - v27));
            v31 = fminf(fmaxf(v34 - ((v35 * v34) / fmaxf(v35 + v34, 0.001)), 0.0), 65535.0);
            *v32++ = llroundf(v31);
            --v33;
          }

          while (v33);
        }

        ++v28;
      }

      while (v28 != v9);
    }

    if (v39)
    {
      sub_2337239E8(v39);
    }
  }
}

void sub_2338EE3A4(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v30[0x4000] = *MEMORY[0x277D85DE8];
  if (sub_233879900(*v2) && (*(*v5 + 172) & 1) == 0)
  {
    (*(*v6 + 384))(&v28, v6);
    v30[0] = sub_2337DE858(*v5);
    sub_233726998(&__p, v30);
    v7 = __p;
    if (__p >> 4 >= 0x271)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](exception, "RawCameraException");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v30[0] = sub_2337DE858(*v5);
    sub_233726998(&__p, v30 + 1);
    v8 = __p;
    if (__p >> 4 >= 0x271)
    {
      v24 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383ABCE0](v24, "RawCameraException");
      __cxa_throw(v24, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v9 = 0.0;
    if (*(*v5 + 72) >= 3)
    {
      v9 = *(*v5 + 116);
    }

    v10 = *v3;
    v26 = 0;
    v27 = 0;
    __p = 0;
    sub_233729070(&__p, *(v10 + 24), *(v10 + 32), (*(v10 + 32) - *(v10 + 24)) >> 2);
    v11 = __p;
    v12 = v26 - __p;
    if (v26 == __p)
    {
      sub_2337306B0();
    }

    if ((v12 >> 2) <= 1)
    {
      sub_2337306B0();
    }

    if (v12 == 8)
    {
      sub_2337306B0();
    }

    if ((v12 >> 2) <= 3)
    {
      sub_2337306B0();
    }

    v13 = 0;
    v14 = *__p;
    v15 = *(__p + 1);
    v16 = *(__p + 2);
    v17 = *(__p + 3);
    do
    {
      *(v30 + v13) = llroundf(fminf(fmaxf((((v14 + (v15 * (v13 - v9))) + ((v16 * (v13 - v9)) * (v13 - v9))) + (((v13 - v9) * (v17 * (v13 - v9))) * (v13 - v9))) + v13, 0.0), 65535.0));
      ++v13;
    }

    while (v13 != 0x10000);
    if (v8)
    {
      v18 = 0;
      v19 = v28;
      do
      {
        v20 = sub_2337B0628(v19);
        v19 = v28;
        if (v7)
        {
          v21 = (v20 + 2 * (*(v28 + 56) * v18));
          v22 = v7;
          do
          {
            *v21 = *(v30 + *v21);
            ++v21;
            --v22;
          }

          while (v22);
        }

        ++v18;
      }

      while (v18 != v8);
      v11 = __p;
    }

    if (v11)
    {
      v26 = v11;
      operator delete(v11);
    }

    if (v29)
    {
      sub_2337239E8(v29);
    }
  }
}

void sub_2338EE69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_2337239E8(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2338EE708(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_233879914(*a3);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

BOOL sub_2338EE77C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_233879924(*a3);
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

id sub_2338EE7F0(uint64_t a1, void *a2)
{
  v2 = sub_2338D3C20(a1, a2);

  return v2;
}

void sub_2338EE81C(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_2338EE8D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338EE8C4);
}

void sub_2338EE8E0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_2337239E8(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338EE8F8(uint64_t *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 48))();
  LODWORD(v17[0]) = sub_233725414(*a2);
  LODWORD(v19[0]) = v4;
  LODWORD(v19[0]) = *sub_233725A80(v19, v17);
  sub_233754E8C(v20, a2, v19);
  v5 = sub_233725614(*a2);
  if (v5 != 1229539657 && v5 != 1296911693)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v5 == 1296911693)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  *a1 = v7;
  sub_233735A18(v19, a2, v7);
  v8 = sub_233725614(*a2);
  v18 = sub_233725614(*a2);
  if (v8 != 1382119235 && v8 != 1382119252)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v15, "RawCameraException");
    __cxa_throw(v15, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  sub_233723AE0(&v16, &v18);
  sub_233725F08(v17, a2, &v16, 0);
  v9 = sub_233725614(*a2);
  sub_233725614(*a2);
  if (v9 > 0x1FF)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v13, "RawCameraException");
    __cxa_throw(v13, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  for (; v9; --v9)
  {
    v10 = sub_233725614(*a2);
    sub_233725614(*a2);
    v16 = sub_233725614(*a2);
    v11 = sub_233725614(*a2);
    sub_2338EEBE4(a1, v10, &v16, v11, a2);
  }

  sub_233725FD4(v17);
  sub_233735A90(v19);
  return sub_233754F18(v20);
}

void sub_2338EEB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  __cxa_free_exception(v15);
  sub_233735A90(&a15);
  sub_233754F18(v16 - 56);
  _Unwind_Resume(a1);
}

uint64_t *sub_2338EEBE4(uint64_t *result, int a2, unsigned int *a3, int a4, uint64_t *a5)
{
  v7 = result;
  v45 = a4;
  if (a2 <= 522)
  {
    switch(a2)
    {
      case 256:
        if (a4 == 2)
        {
          v8 = 8;
        }

        else
        {
          v8 = 1;
        }

        *(result + 46) = v8;
        return result;
      case 259:
        *(result + 42) = *&a4;
        return result;
      case 261:
        *(result + 20) = *&a4;
        return result;
      case 263:
        v24 = result + 11;
        if (result[12] != result[11])
        {
          return result;
        }

        sub_233723AE0(&v41, &v45);
        sub_233725F08(v44, a5, &v41, 0);
        sub_23374B25C(v24, 3uLL);
        *&v41 = COERCE_FLOAT(sub_233725614(*a5));
        sub_2337F207C(v24, &v41);
        *&v41 = COERCE_FLOAT(sub_233725614(*a5));
        sub_2337F207C(v24, &v41);
        *&v41 = COERCE_FLOAT(sub_233725614(*a5));
        sub_2337F207C(v24, &v41);
        break;
      case 264:
        *(result + 2) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 265:
        *(result + 3) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 266:
        *(result + 4) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 267:
        *(result + 5) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 268:
        *(result + 6) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 269:
        *(result + 7) = *&a4;
        if (a4 <= 0)
        {
          __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383ABCE0]();
          sub_2338F83F4();
        }

        return result;
      case 270:
        *(result + 18) = *&a4;
        return result;
      case 271:
        LODWORD(v44[0]) = sub_233725414(*a5);
        LODWORD(v44[0]) = *sub_233723874(v44, &v45);
        result = sub_233751844(v44);
        v7[4] = result;
        *(v7 + 10) = *a3;
        return result;
      case 272:
        sub_233723AE0(&v41, &v45);
        sub_233725F08(v44, a5, &v41, 0);
        sub_233878ED4(&v41);
      case 274:
        v25 = *a5;
        LODWORD(v44[0]) = -4;
        (*(*v25 + 40))(v25, v44, 1);
        *(v7 + 56) = sub_2337255C0(*a5);
        result = sub_2337255C0(*a5);
        *(v7 + 57) = result;
        return result;
      default:
        return result;
    }

    return sub_233725FD4(v44);
  }

  if (a2 > 545)
  {
    if (a2 > 767)
    {
      if (a2 == 768)
      {
        *(result + 19) = *&a4;
        return result;
      }

      if (a2 == 769)
      {
        sub_233723AE0(&v41, &v45);
        sub_233725F08(v44, a5, &v41, 0);
        if (*a3 <= 0x95)
        {
          v41 = 0uLL;
          v42 = 0;
          sub_2337257E8(*a5, a3, &v41);
          sub_2338F8878(&v41);
        }

        return sub_233725FD4(v44);
      }
    }

    else
    {
      if (a2 == 546)
      {
        *(result + 36) = *&a4;
        return result;
      }

      if (a2 == 547)
      {
        sub_233723AE0(&v41, &v45);
        sub_233725F08(v44, a5, &v41, 0);
        v43 = 2;
        LODWORD(v41) = *a3;
        v9 = *sub_2337B21A0(&v41, &v43);
        sub_23374B668(v7 + 15, v9);
        for (; v9; LODWORD(v9) = v9 - 1)
        {
          v10 = sub_2337256DC(*a5);
          v12 = v7[16];
          v11 = v7[17];
          if (v12 >= v11)
          {
            v14 = v7[15];
            v15 = v12 - v14;
            v16 = (v12 - v14) >> 1;
            if (v16 <= -2)
            {
              sub_2337235BC();
            }

            v17 = v11 - v14;
            if (v17 <= v16 + 1)
            {
              v18 = v16 + 1;
            }

            else
            {
              v18 = v17;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v19 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              sub_2337262C8((v7 + 15), v19);
            }

            v20 = (v12 - v14) >> 1;
            v21 = (2 * v16);
            v22 = (2 * v16 - 2 * v20);
            *v21 = v10;
            v13 = v21 + 1;
            memcpy(v22, v14, v15);
            v23 = v7[15];
            v7[15] = v22;
            v7[16] = v13;
            v7[17] = 0;
            if (v23)
            {
              operator delete(v23);
            }
          }

          else
          {
            *v12 = v10;
            v13 = v12 + 2;
          }

          v7[16] = v13;
        }

        return sub_233725FD4(v44);
      }
    }
  }

  else if (a2 > 539)
  {
    if (a2 == 540)
    {
      sub_233723AE0(&v41, &v45);
      sub_233725F08(v44, a5, &v41, 0);
      v43 = 4;
      LODWORD(v41) = *a3;
      v26 = *sub_2337B21A0(&v41, &v43);
      sub_233754C14(v7 + 6, v26);
      for (; v26; LODWORD(v26) = v26 - 1)
      {
        v27 = sub_233725614(*a5);
        v29 = v7[7];
        v28 = v7[8];
        if (v29 >= v28)
        {
          v31 = v7[6];
          v32 = v29 - v31;
          v33 = (v29 - v31) >> 2;
          v34 = v33 + 1;
          if ((v33 + 1) >> 62)
          {
            sub_2337235BC();
          }

          v35 = v28 - v31;
          if (v35 >> 1 > v34)
          {
            v34 = v35 >> 1;
          }

          if (v35 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v36 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v36 = v34;
          }

          if (v36)
          {
            sub_2337235D4((v7 + 6), v36);
          }

          v37 = (v29 - v31) >> 2;
          v38 = (4 * v33);
          v39 = (4 * v33 - 4 * v37);
          *v38 = v27;
          v30 = v38 + 1;
          memcpy(v39, v31, v32);
          v40 = v7[6];
          v7[6] = v39;
          v7[7] = v30;
          v7[8] = 0;
          if (v40)
          {
            operator delete(v40);
          }
        }

        else
        {
          *v29 = v27;
          v30 = v29 + 4;
        }

        v7[7] = v30;
      }

      return sub_233725FD4(v44);
    }

    if (a2 == 541)
    {
      *(result + 29) = *&a4;
    }
  }

  else if (a2 == 523)
  {
    *(result + 172) = a4 != 0;
  }

  else if (a2 == 528)
  {
    *(result + 22) = *&a4;
  }

  return result;
}

uint64_t sub_2338EF318@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 152);
  if (!v2)
  {
    __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0]();
    sub_2338F83F4();
  }

  v3 = *(result + 160);
  *a2 = v2;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338EF3A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284937980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338EF408(void *a1)
{
  v2 = a1[20];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  return a1;
}

double sub_2338EF468(uint32x2_t *a1, unsigned int a2, unsigned int a3)
{
  sub_2338EF5E0(a1, a2);
  v7 = v6;
  if (a2)
  {
    v8 = a2 % 3 < 2;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[29].u32[0];
  if (a1[30].i32[0])
  {
    v10 = v8 | (2 * (((a2 - 1) / 3) & ~(((a2 - 1) / 3) >> 31)));
    if (a3 % v9)
    {
      v11 = dword_233917E10[v10];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 + v7;
    if (a3 % v9 == v9 - 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = dword_233917E28[6 * ((a1[26].i32[0] >> 1) & ~(-1 << a1[27].i32[0])) + v10];
    }

    return (v12 + v13);
  }

  return v7;
}

double sub_2338EF5E0(uint32x2_t *a1, int a2)
{
  v2 = a1[27].i32[0];
  v3 = vshr_n_u32(a1[26], 1uLL);
  if (v2)
  {
    v4 = v2 - (a2 + 2) / 3u;
    v5 = v2 - 1;
    if (v4 < v5)
    {
      v5 = v4;
    }

    v6 = ~v5;
    do
    {
      v3 = vsra_n_u32(vand_s8(v3, 0x100000001), v3, 1uLL);
    }

    while (!__CFADD__(v6++, 1));
  }

  return 0.0;
}

void sub_2338EF6A4(uint32x2_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v12 = a3;
  v13 = [v11 objectForKeyedSubscript:@"subband_headers"];
  v14 = [v11 objectForKeyedSubscript:@"dc_mode"];
  v15 = [v14 intValue];

  v16 = [v13 objectAtIndexedSubscript:a5];
  if (!v16)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(a6 + 48) = 0;
  *(a6 + 56) = 0;
  *(a6 + 64) = 0;
  v17 = sub_2338EF468(a1, a5, a4);
  v19 = v18;
  *(a6 + 32) = v17;
  *(a6 + 40) = v18;
  *a6 = sub_2338EF5E0(a1, a5);
  *(a6 + 8) = v20;
  *(a6 + 16) = v21;
  *(a6 + 24) = v22;
  sub_2337A916C((a6 + 48), v17 * v19);
  if (a5)
  {
    v23 = 0;
  }

  else
  {
    v23 = v15 == 1;
  }

  v24 = v23;
  v25 = [v16 objectForKeyedSubscript:@"stuffing_data_length"];
  [v25 unsignedIntValue];

  sub_2338F1EA8(v24, v17, v19, v12, (a6 + 48), 0);
  v28 = 0;
  v29 = 0;
  __p = 0;
  sub_233728FF4(&__p, *(a6 + 48), *(a6 + 56), (*(a6 + 56) - *(a6 + 48)) >> 1);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_2338EF88C(_Unwind_Exception *a1)
{
  v9 = *v6;
  if (*v6)
  {
    *(v5 + 56) = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void sub_2338EF8F8(uint32x2_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, __int128 *a6@<X8>)
{
  v10 = a2;
  v85 = a3;
  v11 = a4;
  v79 = a5;
  v80 = v11;
  v82 = v10;
  v83 = a1;
  LODWORD(a5) = a1[27].i32[0];
  v88 = [v10 objectForKeyedSubscript:@"subband_headers"];
  v12 = [v11 objectForKeyedSubscript:@"tile_index"];
  v81 = [v12 unsignedIntValue];
  v13 = (3 * a5 + 1);

  sub_2338F26E8(v104, v13);
  v86 = [MEMORY[0x277CBEB18] array];
  if (3 * a5 != -1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = [v88 objectAtIndexedSubscript:v14];
      v17 = [v16 objectForKeyedSubscript:@"subband_data_length"];
      v18 = [v17 unsignedIntValue];

      v19 = [v85 subdataWithRange:{v15, v18}];
      [v86 addObject:v19];

      v15 += v18;
      ++v14;
    }

    while (v13 != v14);
    v20 = 0;
    v21 = 48;
    do
    {
      v22 = [v86 objectAtIndexedSubscript:v20];
      sub_2338EF6A4(v83, v82, v22, v81, v20, &v99);
      v23 = v104[0] + v21;
      v24 = v101;
      v25 = v99;
      *(v23 - 32) = v100;
      *(v23 - 16) = v24;
      *(v23 - 48) = v25;
      v26 = *v23;
      if (*v23)
      {
        *(v23 + 8) = v26;
        operator delete(v26);
        *v23 = 0;
        *(v23 + 8) = 0;
        *(v23 + 16) = 0;
      }

      *v23 = v102;
      *(v23 + 16) = v103;
      v102 = 0uLL;
      v103 = 0;

      ++v20;
      v21 += 72;
    }

    while (v13 != v20);
  }

  v27 = [*&v83[25] objectForKeyedSubscript:@"version"];
  v28 = [v27 unsignedIntValue];

  if (v28 == 512)
  {
    v29 = [*&v83[25] objectForKeyedSubscript:@"tile_width"];
    v30 = [v29 unsignedIntValue];

    v31 = [*&v83[25] objectForKeyedSubscript:@"tile_height"];
    v32 = [v31 unsignedIntValue];

    if ((v30 & 0xF) != 0)
    {
      v33 = (v30 >> 4) + 1;
    }

    else
    {
      v33 = v30 >> 4;
    }

    if ((v32 & 3) != 0)
    {
      v34 = (v32 >> 2) + 1;
    }

    else
    {
      v34 = v32 >> 2;
    }

    v99 = 0uLL;
    *&v100 = 0;
    sub_2337A916C(&v99, v34 * v33);
    v35 = [v80 objectForKeyedSubscript:@"qp_stuffing_data_length"];
    [v35 unsignedIntValue];

    sub_2338F1EA8(1, v33, v34, v79, &v99, 1);
    if (v13)
    {
      v36 = 0;
      v37 = v34 - 1;
      do
      {
        v38 = v104[0] + 72 * v36;
        v39 = *(v38 + 32);
        v40 = *(v38 + 40);
        v41 = *(v38 + 48);
        if (v36 >= 7)
        {
          v42 = 1;
        }

        else
        {
          v42 = 2;
        }

        v87 = v36;
        if (v36 >= 4)
        {
          v43 = v42;
        }

        else
        {
          v43 = 4;
        }

        sub_2337560FC(v98, v40 * v39);
        if (v39)
        {
          v44 = 0;
          v45 = v87 < 7;
          if (v87 < 7)
          {
            v46 = 1;
          }

          else
          {
            v46 = 2;
          }

          if (v87 < 4)
          {
            v45 = 2;
            v46 = 0;
          }

          v47 = v99;
          v48 = v98[0];
          do
          {
            if (v40)
            {
              for (i = 0; i != v40; ++i)
              {
                v50 = 0;
                v51 = i << v45;
                v52 = v43;
                do
                {
                  if (v37 >= v51)
                  {
                    v53 = v51;
                  }

                  else
                  {
                    v53 = v37;
                  }

                  v50 += *(v47 + 2 * ((v44 >> v46) + v53 * v33));
                  ++v51;
                  --v52;
                }

                while (v52);
                v48[v44 + i * v39] = v50 >> v45;
              }
            }

            ++v44;
          }

          while (v44 != v39);
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"subband_%d", v87];

        v54 = [v88 objectAtIndexedSubscript:v87];
        v55 = [v54 objectForKeyedSubscript:@"mtx_a"];
        v56 = [v55 intValue];

        v84 = [v88 objectAtIndexedSubscript:v87];
        v57 = [v84 objectForKeyedSubscript:@"mtx_b"];
        v58 = [v57 intValue];

        if (v39)
        {
          v59 = 0;
          v60 = v98[0];
          do
          {
            if (v40)
            {
              v61 = 0;
              v62 = v40;
              do
              {
                v63 = v58 + ((dword_233917EE8[*&v60[v61]] * v56) >> 3);
                if (v63 >= 1474560)
                {
                  v63 = 1474560;
                }

                if (v63 <= 1)
                {
                  LOWORD(v63) = 1;
                }

                *(v41 + v61) *= v63;
                v61 += 2 * v39;
                --v62;
              }

              while (v62);
            }

            ++v59;
            v60 += 2;
            v41 += 2;
          }

          while (v59 != v39);
        }

        v64 = v104[0] + 72 * v87;
        v66 = *(v64 + 16);
        v65 = *(v64 + 32);
        v92 = *v64;
        v93 = v66;
        v94 = v65;
        v96 = 0;
        v97 = 0;
        __p = 0;
        sub_233728FF4(&__p, *(v64 + 48), *(v64 + 56), (*(v64 + 56) - *(v64 + 48)) >> 1);
        if (__p)
        {
          v96 = __p;
          operator delete(__p);
        }

        if (v98[0])
        {
          v98[1] = v98[0];
          operator delete(v98[0]);
        }

        v36 = v87 + 1;
      }

      while (v87 + 1 != v13);
    }

    if (v99)
    {
      *(&v99 + 1) = v99;
      operator delete(v99);
    }
  }

  else if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      v68 = [v88 objectAtIndexedSubscript:j];
      v69 = [v68 objectForKeyedSubscript:@"ini_qp"];
      v70 = [v69 intValue];

      v71 = v104[0];
      if ((v70 - 10) <= 0x75)
      {
        v72 = v104[0] + 72 * j;
        v73 = (*(v72 + 40) * *(v72 + 32));
        if (v73 >= 1)
        {
          v74 = dword_233917EE8[v70];
          v75 = *(v72 + 48);
          do
          {
            *v75++ *= v74;
            --v73;
          }

          while (v73);
        }
      }

      v90 = 0;
      v91 = 0;
      v89 = 0;
      sub_233728FF4(&v89, *(v71 + 72 * j + 48), *(v71 + 72 * j + 56), (*(v71 + 72 * j + 56) - *(v71 + 72 * j + 48)) >> 1);
      if (v89)
      {
        v90 = v89;
        operator delete(v89);
      }
    }
  }

  v76 = v104[0];
  v77 = [v82 objectForKeyedSubscript:@"plane_index"];
  sub_2338F011C(v83, v76, v81, [v77 unsignedIntValue], a6);

  *&v99 = v104;
  sub_2338F2840(&v99);
}

void sub_2338EFFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, void *a22)
{
  v25 = *(v23 - 184);
  if (v25)
  {
    *(v23 - 176) = v25;
    operator delete(v25);
  }

  *(v23 - 184) = v23 - 112;
  sub_2338F2840((v23 - 184));

  _Unwind_Resume(a1);
}

void sub_2338F011C(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v8 = a2[1];
  *a5 = *a2;
  a5[1] = v8;
  a5[2] = a2[2];
  a5[3] = 0uLL;
  *(a5 + 8) = 0;
  v24 = a5 + 3;
  sub_233728FF4(a5 + 6, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 1);
  if (a1[54])
  {
    v9 = 0;
    v10 = 3;
    do
    {
      v11 = a5[1];
      v97 = *a5;
      v98 = v11;
      v99 = a5[2];
      v101 = 0;
      v102 = 0;
      v100 = 0;
      sub_233728FF4(&v100, *(a5 + 6), *(a5 + 7), (*(a5 + 7) - *(a5 + 6)) >> 1);
      [MEMORY[0x277CCACA8] stringWithFormat:@"tile_%d_plane_%d_level_%d_canon_subband_LL", a3, a4, v9, v24];

      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      v12 = a2 + 72 * v10 - 144;
      v13 = *(v12 + 1);
      v91 = *v12;
      v92 = v13;
      v93 = *(v12 + 2);
      v95 = 0;
      v96 = 0;
      v94 = 0;
      sub_233728FF4(&v94, *(v12 + 6), *(v12 + 7), (*(v12 + 7) - *(v12 + 6)) >> 1);
      [MEMORY[0x277CCACA8] stringWithFormat:@"tile_%d_plane_%d_level_%d_canon_subband_HL", a3, a4, v9];

      if (v94)
      {
        v95 = v94;
        operator delete(v94);
      }

      v14 = a2 + 72 * v10 - 72;
      v15 = *(v14 + 1);
      v85 = *v14;
      v86 = v15;
      v87 = *(v14 + 2);
      v89 = 0;
      v90 = 0;
      __p = 0;
      sub_233728FF4(&__p, *(v14 + 6), *(v14 + 7), (*(v14 + 7) - *(v14 + 6)) >> 1);
      [MEMORY[0x277CCACA8] stringWithFormat:@"tile_%d_plane_%d_level_%d_canon_subband_LH", a3, a4, v9];

      if (__p)
      {
        v89 = __p;
        operator delete(__p);
      }

      v16 = a2 + 72 * v10;
      v17 = *(v16 + 1);
      v79 = *v16;
      v80 = v17;
      v81 = *(v16 + 2);
      v83 = 0;
      v84 = 0;
      v82 = 0;
      sub_233728FF4(&v82, *(v16 + 6), *(v16 + 7), (*(v16 + 7) - *(v16 + 6)) >> 1);
      [MEMORY[0x277CCACA8] stringWithFormat:@"tile_%d_plane_%d_level_%d_canon_subband_HH", a3, a4, v9];

      if (v82)
      {
        v83 = v82;
        operator delete(v82);
      }

      v18 = a5[1];
      v70[0] = *a5;
      v70[1] = v18;
      v70[2] = a5[2];
      v72 = 0;
      v73 = 0;
      v71 = 0;
      sub_233728FF4(&v71, *(a5 + 6), *(a5 + 7), (*(a5 + 7) - *(a5 + 6)) >> 1);
      v19 = *(v12 + 1);
      v66[0] = *v12;
      v66[1] = v19;
      v66[2] = *(v12 + 2);
      v68 = 0;
      v69 = 0;
      v67 = 0;
      sub_233728FF4(&v67, *(v12 + 6), *(v12 + 7), (*(v12 + 7) - *(v12 + 6)) >> 1);
      sub_2338F08E4(a1, v70, v66, 1, a3, v9, &v74);
      if (v67)
      {
        v68 = v67;
        operator delete(v67);
      }

      if (v71)
      {
        v72 = v71;
        operator delete(v71);
      }

      v20 = *(v14 + 1);
      v57[0] = *v14;
      v57[1] = v20;
      v57[2] = *(v14 + 2);
      v59 = 0;
      v60 = 0;
      v58 = 0;
      sub_233728FF4(&v58, *(v14 + 6), *(v14 + 7), (*(v14 + 7) - *(v14 + 6)) >> 1);
      v21 = *(v16 + 1);
      v53[0] = *v16;
      v53[1] = v21;
      v53[2] = *(v16 + 2);
      v55 = 0;
      v56 = 0;
      v54 = 0;
      sub_233728FF4(&v54, *(v16 + 6), *(v16 + 7), (*(v16 + 7) - *(v16 + 6)) >> 1);
      sub_2338F08E4(a1, v57, v53, 1, a3, v9, &v61);
      if (v54)
      {
        v55 = v54;
        operator delete(v54);
      }

      if (v58)
      {
        v59 = v58;
        operator delete(v58);
      }

      v46[0] = v74;
      v46[1] = v75;
      v46[2] = v76;
      v48 = 0;
      v49 = 0;
      v47 = 0;
      sub_233728FF4(&v47, v77, v78, (v78 - v77) >> 1);
      v42[0] = v61;
      v42[1] = v62;
      v42[2] = v63;
      v44 = 0;
      v45 = 0;
      v43 = 0;
      sub_233728FF4(&v43, v64, v65, (v65 - v64) >> 1);
      sub_2338F08E4(a1, v46, v42, 0, a3, v9, v50);
      v22 = v50[1];
      *a5 = v50[0];
      a5[1] = v22;
      a5[2] = v50[2];
      v23 = *(a5 + 6);
      if (v23)
      {
        *(a5 + 7) = v23;
        operator delete(v23);
      }

      a5[3] = v51;
      *(a5 + 8) = v52;
      v52 = 0;
      v51 = 0uLL;
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      v36 = v74;
      v37 = v75;
      v38 = v76;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      sub_233728FF4(&v39, v77, v78, (v78 - v77) >> 1);
      [MEMORY[0x277CCACA8] stringWithFormat:@"tile_%d_plane_%d_level_%d_canon_outTop", a3, a4, v9];

      if (v39)
      {
        v40 = v39;
        operator delete(v39);
      }

      v30 = v61;
      v31 = v62;
      v32 = v63;
      v34 = 0;
      v35 = 0;
      v33 = 0;
      sub_233728FF4(&v33, v64, v65, (v65 - v64) >> 1);
      [MEMORY[0x277CCACA8] stringWithFormat:@"tile_%d_plane_%d_level_%d_canon_outBottom", a3, a4, v9];

      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      v28 = 0;
      v29 = 0;
      v27 = 0;
      sub_233728FF4(&v27, *(a5 + 6), *(a5 + 7), (*(a5 + 7) - *(a5 + 6)) >> 1);
      [MEMORY[0x277CCACA8] stringWithFormat:@"tile_%d_plane_%d_level_%d_canon_out", a3, a4, v9];

      if (v27)
      {
        v28 = v27;
        operator delete(v27);
      }

      if (v64)
      {
        v65 = v64;
        operator delete(v64);
      }

      if (v77)
      {
        v78 = v77;
        operator delete(v77);
      }

      ++v9;
      v10 += 3;
    }

    while (v9 < a1[54]);
  }
}

void sub_2338F0768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  v55 = STACK[0x328];
  if (STACK[0x328])
  {
    STACK[0x330] = v55;
    operator delete(v55);
  }

  v56 = STACK[0x408];
  if (STACK[0x408])
  {
    STACK[0x410] = v56;
    operator delete(v56);
  }

  v57 = *a12;
  if (*a12)
  {
    *(v53 + 56) = v57;
    operator delete(v57);
  }

  _Unwind_Resume(a1);
}

void sub_2338F08E4(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16) + v10;
  if (a4)
  {
    v13 = 0;
    v12 += *(a3 + 16);
    v14 = *a2;
  }

  else
  {
    v13 = *(a3 + 24);
    v14 = *(a2 + 8);
  }

  v15 = *(a2 + 24);
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0;
  *a7 = v10;
  *(a7 + 8) = v11;
  *(a7 + 16) = (v12 - v10);
  *(a7 + 24) = (v15 + v13);
  *(a7 + 32) = *(a7 + 16);
  if (!a4)
  {
    LOBYTE(v12) = v13 + v11 + v15;
  }

  if (v14)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v12)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  v18 = a1[58];
  v19 = a5 % v18;
  v20 = v18 - 1;
  v21 = a1[54];
  v22 = ~(-1 << v21);
  if (a4)
  {
    if (a1[60])
    {
      v23 = a1[52];
      if (v19)
      {
        v24 = *&dword_233917E10[2 * a6];
      }

      else
      {
        v24 = 0;
      }

      if (v19 == v20)
      {
LABEL_25:
        v25 = 0;
        v26 = 0;
        goto LABEL_26;
      }

      goto LABEL_22;
    }
  }

  else if (a1[61])
  {
    v23 = a1[53];
    if (v18 <= a5)
    {
      v24 = *&dword_233917E10[2 * a6];
    }

    else
    {
      v24 = 0;
    }

    if (a5 / v18 == a1[59] - 1)
    {
      goto LABEL_25;
    }

LABEL_22:
    v27 = &dword_233917E28[6 * (v22 & (v23 >> 1))];
    v26 = v27[2 * a6];
    v25 = v27[(2 * a6) | 1];
    goto LABEL_26;
  }

  v25 = 0;
  v26 = 0;
  v24 = 0;
LABEL_26:
  v98 = v24;
  if (a1[60] && a6 + 1 < v21)
  {
    v28 = 0.0;
    v29 = 2 * (a6 + 1);
    v30 = 0.0;
    if (v19)
    {
      LODWORD(v30) = dword_233917E10[v29];
      v30 = *&v30;
    }

    if (v19 != v20)
    {
      LODWORD(v28) = dword_233917E28[6 * (v22 & (a1[52] >> 1)) + v29];
      v28 = *&v28;
    }

    *(a7 + 32) = v28 + v30 + *(a7 + 32);
  }

  sub_2337A916C((a7 + 48), *(a7 + 40) * *(a7 + 32));
  v31 = *(a7 + 48);
  v32 = (HIDWORD(v98) + v25);
  if (a4)
  {
    if (*(a3 + 32) - *(a3 + 16) != v32 || *(a2 + 32) - *(a2 + 16) != (v98 + v26))
    {
      goto LABEL_98;
    }
  }

  else if (*(a3 + 40) - *(a3 + 24) != v32 || *(a2 + 40) - *(a2 + 24) != (v98 + v26))
  {
LABEL_98:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v33 = 40;
  if (a4)
  {
    v33 = 32;
  }

  v34 = *(a7 + v33);
  v96 = v16;
  if (v16 <= v98 + HIDWORD(v98))
  {
    v35 = v98 + HIDWORD(v98);
  }

  else
  {
    v35 = v16;
  }

  v36 = v26 + v25;
  if (v17 > v26 + v25)
  {
    v36 = v17;
  }

  v37 = v35 + v34 + v36;
  v91 = [MEMORY[0x277CBEB28] dataWithLength:2 * v37];
  v38 = v91;
  v39 = [v91 mutableBytes];
  v95 = [MEMORY[0x277CBEB28] dataWithLength:2 * v34];
  v40 = [v95 mutableBytes];
  v41 = v16;
  if (v16 < v98 + HIDWORD(v98) || v98 || (v14 & 1) != 0)
  {
    v89 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v89, "RawCameraException");
    __cxa_throw(v89, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v42 = *(a7 + 32);
  v43 = *(a7 + 40);
  if (!a4)
  {
    v43 = *(a7 + 32);
  }

  v44 = v43;
  v45 = v95;
  if (v44)
  {
    v46 = 0;
    v47 = *(a2 + 32);
    v48 = *(a3 + 32);
    if (a4)
    {
      v49 = 1;
    }

    else
    {
      v49 = *(a2 + 32);
    }

    if (a4)
    {
      v50 = 1;
    }

    else
    {
      v50 = *(a3 + 32);
    }

    v51 = 40;
    if (a4)
    {
      v51 = 32;
    }

    v52 = *(a3 + v51);
    v94 = *(a2 + 48);
    v53 = *(a3 + 48);
    v54 = v34 >> 1;
    v55 = (v54 + 1);
    v93 = *(a2 + 32);
    v92 = v53;
    do
    {
      v56 = v47;
      v57 = v47;
      v58 = v48;
      if ((a4 & 1) == 0)
      {
        v56 = *(a2 + 40);
        v57 = 1;
        v58 = 1;
      }

      v59 = (v53 + 2 * (v58 * v46));
      *v39 = *v59;
      v60 = v55;
      v61 = v40;
      v62 = v41;
      if (v37 >= 2)
      {
        v63 = v55;
        v64 = v48;
        v65 = v44;
        v66 = 0;
        v67 = (v94 + 2 * (v57 * v46));
        v68 = -v34;
        v69 = 1;
        v70 = HIDWORD(v98);
        do
        {
          v71 = v66 >= v56;
          v72 = v69 & 1;
          if ((v69 & 1) == 0)
          {
            v71 = v70 >= v52;
          }

          v73 = &v59[v70 * v50];
          v74 = v66 + v72;
          if (v69)
          {
            v73 = &v67[v66 * v49];
          }

          v75 = v72 == 0;
          if (v69)
          {
            v76 = (v56 + ~(v68 >> 1)) * v49;
          }

          else
          {
            v76 = (v52 - 2 - (v68 >> 1)) * v50;
          }

          if (v75)
          {
            v77 = v59;
          }

          else
          {
            v77 = v67;
          }

          v78 = &v77[v76];
          if (!v71)
          {
            v78 = v73;
            v70 += !(v69 & 1);
            v66 = v74;
          }

          v39[v69++] = *v78;
          ++v68;
        }

        while (v69 < v37);
        v55 = v63;
        v60 = v63;
        v61 = v40;
        v41 = v96;
        v62 = v96;
        v45 = v95;
        v44 = v65;
        v48 = v64;
        v53 = v92;
        v54 = v34 >> 1;
        v47 = v93;
      }

      do
      {
        v79 = v39[v62 - 1] + v39[v62 + 1];
        v80 = v79 + 2;
        v81 = v79 + 5;
        if (v80 >= 0)
        {
          v81 = v80;
        }

        *v61 = v39[v62] - (v81 >> 2);
        v61 += 2;
        v62 += 2;
        --v60;
      }

      while (v60);
      v82 = v54;
      v84 = v39 + 2;
      v83 = (v40 + 4);
      if (v34 >= 2)
      {
        do
        {
          v85 = *v84;
          v84 += 2;
          *(v83 - 1) = v85 + (*v83 + *(v83 - 2)) / 2;
          v83 += 2;
          --v82;
        }

        while (v82);
      }

      if (v34)
      {
        for (i = 0; i != v34; ++i)
        {
          if (a4)
          {
            v87 = v46;
          }

          else
          {
            v87 = i;
          }

          if (a4)
          {
            v88 = i;
          }

          else
          {
            v88 = v46;
          }

          *(v31 + 2 * (v88 + v87 * v42)) = *(v40 + 2 * i);
        }
      }

      ++v46;
    }

    while (v46 != v44);
  }
}

void sub_2338F0FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15)
{
  v17 = *a14;
  if (*a14)
  {
    *(v15 + 56) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_2338F1074(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CCanonCR3Unpacker", &unk_233945DBE, buf, 2u);
  }

  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = sub_2338F1BB8;
  v121[3] = &unk_2789EE800;
  v121[4] = a1;
  v88 = MEMORY[0x2383AC810](v121);
  if (*(a1 + 224) != 4 || *(a1 + 188) >= 0x11u)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (*(a1 + 48) != *(a1 + 212))
  {
    v87 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](v87, "RawCameraException");
    __cxa_throw(v87, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = *(a1 + 44);
  v101 = (a1 + 24);
  *buf = (*(**(a1 + 24) + 48))(*(a1 + 24));
  v91 = sub_233751844(buf);
  v98 = [*(a1 + 200) objectForKeyedSubscript:@"tile_headers"];
  if (*(a1 + 228))
  {
    v5 = 0;
    v90 = 2 * (v4 + 1);
    v96 = 2 * v4;
    v89 = 2 * v4;
    do
    {
      v100 = v5;
      v6 = [v98 objectAtIndexedSubscript:?];
      v97 = [v6 objectForKeyedSubscript:@"plane_headers"];

      *buf = 0;
      v115 = buf;
      v116 = 0x4812000000;
      v117 = sub_2338F1C40;
      v118 = sub_2338F1C64;
      v119 = "";
      sub_2338F26E8(v120, *(a1 + 224));
      v113 = v91;
      if (v100)
      {
        v7 = [v98 objectAtIndexedSubscript:v100 - 1];
        v8 = [v7 objectForKeyedSubscript:@"tile_data_length"];
        v9 = [v8 unsignedIntValue];
        v113 += v9;
      }

      v10 = [*(a1 + 200) objectForKeyedSubscript:@"version"];
      v11 = [v10 unsignedIntValue];

      if (v11 == 512)
      {
        v12 = [v98 objectAtIndexedSubscript:v100];
        v13 = [v12 objectForKeyedSubscript:@"tile_qpinfo_flag"];
        v14 = [v13 BOOLValue];

        if (v14)
        {
          v15 = [v98 objectAtIndexedSubscript:v100];
          v16 = [v15 objectForKeyedSubscript:@"qp_data_length"];
          v17 = [v16 unsignedIntValue];

          v18 = [v98 objectAtIndexedSubscript:v100];
          v19 = [v18 objectForKeyedSubscript:@"qp_stuffing_data_length"];
          LODWORD(v16) = [v19 unsignedIntValue];

          sub_233723AE0(&v111, &v113);
          sub_233725F08(v112, v101, &v111, 0);
          v20 = [MEMORY[0x277CBEB28] dataWithLength:v16 + v17];
          v21 = *v101;
          v99 = v20;
          sub_233725540(v21, [v99 mutableBytes], objc_msgSend(v99, "length"));
          sub_233725FD4(v112);
        }

        else
        {
          v99 = 0;
        }

        v22 = [v98 objectAtIndexedSubscript:v100];
        v23 = [v22 objectForKeyedSubscript:@"qp_data_length"];
        v24 = [v23 unsignedIntValue];
        v113 += v24;

        v25 = [v98 objectAtIndexedSubscript:v100];
        v26 = [v25 objectForKeyedSubscript:@"qp_stuffing_data_length"];
        v27 = [v26 unsignedIntValue];
        v113 += v27;
      }

      else
      {
        v99 = 0;
      }

      v28 = [MEMORY[0x277CBEB18] array];
      if (*(a1 + 224))
      {
        v29 = 0;
        do
        {
          sub_233723AE0(&v111, &v113);
          sub_233725F08(v112, v101, &v111, 0);
          v30 = [v97 objectAtIndexedSubscript:v29];
          v31 = [v30 objectForKeyedSubscript:@"plane_data_length"];
          v32 = [v31 unsignedIntValue];

          v33 = [MEMORY[0x277CBEB28] dataWithLength:v32];
          sub_233725540(*v101, [v33 mutableBytes], objc_msgSend(v33, "length"));
          [v28 addObject:v33];
          v113 += v32;

          sub_233725FD4(v112);
          ++v29;
        }

        while (v29 < *(a1 + 224));
      }

      v34 = dispatch_group_create();
      v92 = (*(*a1 + 192))(a1);
      v35 = v34;
      if (*(a1 + 224))
      {
        v36 = 0;
        v37 = MEMORY[0x277D85DD0];
        do
        {
          block[0] = v37;
          block[1] = 3221225472;
          block[2] = sub_2338F1C90;
          block[3] = &unk_2789F1168;
          v107 = buf;
          v108 = a1;
          v109 = v36;
          v103 = v97;
          v104 = v28;
          v105 = v98;
          v110 = v100;
          v106 = v99;
          dispatch_group_async(v34, v92, block);

          ++v36;
        }

        while (v36 < *(a1 + 224));
      }

      dispatch_group_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
      v38 = sub_2337ADCC4(a1);
      v39 = *(a1 + 212);
      if (v39)
      {
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = *(v115 + 6);
        v44 = *(v43 + 48);
        v45 = *(v43 + 120);
        v46 = *(v43 + 192);
        v47 = *(v43 + 264);
        v48 = *(v43 + 16);
        v49 = *(a1 + 208);
        v50 = v38 + 2 * (v49 * v100);
        v95 = v50 + v90;
        v93 = v50 + 2;
        v94 = v50 + v89;
        do
        {
          if (v49)
          {
            v51 = 0;
            v52 = v94 + 2 * v40;
            v53 = (v93 + 2 * v40);
            v55 = *(a1 + 248);
            v54 = *(a1 + 252);
            v56 = 1 << (v54 - 1);
            v57 = ~(-1 << v54);
            v58 = v41;
            do
            {
              v59 = *(v45 + 2 * v58);
              v60 = *(v46 + 2 * v58);
              v61 = *(v47 + 2 * v58);
              v62 = v56 + *(v44 + 2 * v58);
              if (v62 >= v57)
              {
                v63 = v57;
              }

              else
              {
                v63 = v56 + *(v44 + 2 * v58);
              }

              if (v55)
              {
                v64 = v63 << 10;
                if (v62 < 0)
                {
                  v64 = 0;
                }

                v65 = -168 * v59 - 585 * v61 + v64;
                if (v65 < 0)
                {
                  v66 = -((512 - v65) >> 10);
                }

                else
                {
                  v66 = (v65 + 512) >> 10;
                }

                v76 = v64 + 1510 * v61;
                v77 = 2 * v66;
                v78 = v60 + 2 * v66;
                v79 = v77 - v60;
                v80 = v64 + 1927 * v59;
                v81 = (v76 + 512) >> 10;
                if (v76 < 0)
                {
                  v81 = 0;
                }

                if (v78 >= 0)
                {
                  v82 = (v78 + 1) >> 1;
                }

                else
                {
                  v82 = 0;
                }

                if (v79 >= 0)
                {
                  v83 = (v79 + 1) >> 1;
                }

                else
                {
                  v83 = 0;
                }

                if (v80 >= 0)
                {
                  v84 = (v80 + 512) >> 10;
                }

                else
                {
                  v84 = 0;
                }

                if (v81 >= v57)
                {
                  LOWORD(v81) = v57;
                }

                if (v82 >= v57)
                {
                  LOWORD(v82) = v57;
                }

                if (v83 >= v57)
                {
                  v85 = v57;
                }

                else
                {
                  v85 = v83;
                }

                *(v53 - 1) = v81;
                if (v84 >= v57)
                {
                  v75 = v57;
                }

                else
                {
                  v75 = v84;
                }

                *v53 = v82;
                *(v52 + 2 * v51) = v85;
                v35 = v34;
              }

              else
              {
                if (v62 >= 0)
                {
                  v67 = v63;
                }

                else
                {
                  v67 = 0;
                }

                *(v53 - 1) = v67;
                v68 = v56 + v59;
                if (v68 >= v57)
                {
                  v69 = v57;
                }

                else
                {
                  v69 = v68;
                }

                if (v68 >= 0)
                {
                  v70 = v69;
                }

                else
                {
                  v70 = 0;
                }

                *v53 = v70;
                v71 = v56 + v60;
                if (v71 >= v57)
                {
                  v72 = v57;
                }

                else
                {
                  v72 = v71;
                }

                if (v71 >= 0)
                {
                  v73 = v72;
                }

                else
                {
                  v73 = 0;
                }

                *(v52 + 2 * v51) = v73;
                if (v56 + v61 >= v57)
                {
                  v74 = v57;
                }

                else
                {
                  v74 = v56 + v61;
                }

                if (v56 + v61 >= 0)
                {
                  v75 = v74;
                }

                else
                {
                  v75 = 0;
                }
              }

              *(v95 + 2 * v40 + 2 * v51) = v75;
              v51 += 2;
              ++v58;
              v53 += 2;
            }

            while (v51 < v49);
          }

          v42 += 2;
          v41 += v48;
          v40 += v96;
        }

        while (v42 < v39);
      }

      _Block_object_dispose(buf, 8);
      v112[0] = v120;
      sub_2338F2840(v112);

      v5 = v100 + 1;
    }

    while (v100 + 1 < *(a1 + 228));
  }

  v88[2](v88);
}

void sub_2338F1BB8(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CCanonCR3Unpacker", &unk_233945DBE, v5, 2u);
  }
}

__n128 sub_2338F1C40(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_2338F1C90(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 80)];
  v4 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 80)];
  v5 = [*(a1 + 48) objectAtIndexedSubscript:*(a1 + 84)];
  sub_2338EF8F8(v2, v3, v4, v5, *(a1 + 56), v10);
  v6 = *(*(*(a1 + 64) + 8) + 48) + 72 * *(a1 + 80);
  v7 = v10[0];
  v8 = v10[2];
  *(v6 + 16) = v10[1];
  *(v6 + 32) = v8;
  *v6 = v7;
  v9 = *(v6 + 48);
  if (v9)
  {
    *(v6 + 56) = v9;
    operator delete(v9);
    *(v6 + 48) = 0;
    *(v6 + 56) = 0;
    *(v6 + 64) = 0;
  }

  *(v6 + 48) = v11;
  *(v6 + 64) = v12;
  v11 = 0uLL;
  v12 = 0;
}

void sub_2338F1D94(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2338F1D7CLL);
}

void *sub_2338F1DCC(uint64_t a1)
{
  *a1 = &unk_2849379D0;
  v2 = *(a1 + 272);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return sub_233723A54(a1);
}

void sub_2338F1E30(uint64_t a1)
{
  *a1 = &unk_2849379D0;
  v2 = *(a1 + 272);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  sub_233723A54(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338F1EA8(int a1, unsigned int a2, int a3, void *a4, uint64_t *a5, int a6)
{
  v9 = a4;
  v58 = v9;
  v10 = [v58 bytes];
  v11 = [v9 length];
  v12 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v76 = v11;
  v77 = bswap32(*v10);
  v78 = v10;
  if ((a1 & 1) == 0)
  {
    v12 = malloc_type_calloc(a2, 4uLL, 0x100004052888210uLL);
  }

  v64 = v12;
  v67 = 0;
  v65 = 0;
  v68 = 0;
  v13 = 0;
  v14 = 0;
  v71 = a2 - 1;
  v72 = 0;
  if (a6)
  {
    v15 = 7;
  }

  else
  {
    v15 = 15;
  }

  v70 = a3 * a2;
  if (a6)
  {
    v16 = 24;
  }

  else
  {
    v16 = 42;
  }

  if (a6)
  {
    v17 = 8;
  }

  else
  {
    v17 = 21;
  }

  v60 = v17;
  v63 = v16;
  v61 = v15;
  v62 = v16 - 1;
  do
  {
    v18 = sub_2337BD6C0(&v73, 1);
    if (v72 >= v70 || !v18)
    {
      break;
    }

    v20 = v14 == 0;
    v21 = v14 == v71;
    if (a1)
    {
      if (!v13)
      {
        goto LABEL_26;
      }

      if (!v14)
      {
        goto LABEL_28;
      }

      v22 = *a5;
      v23 = *(*a5 + 2 * (v14 + v13 * a2 - 1));
      v24 = v14 + (v13 - 1) * a2;
      v25 = *(*a5 + 2 * (v24 - 1));
      v26 = *(*a5 + 2 * v24);
    }

    else
    {
      if (!v13)
      {
LABEL_26:
        v27 = 0;
        v25 = 0;
        v26 = 0;
        if (v14)
        {
          v23 = *(*a5 + 2 * (v14 - 1));
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_31;
      }

      if (!v14)
      {
LABEL_28:
        v28 = (v13 - 1) * a2;
        v25 = *(*a5 + 2 * v28);
        v27 = *(*a5 + 2 * (v28 + 1));
        v26 = v25;
        v23 = v25;
        goto LABEL_31;
      }

      v22 = *a5;
      v23 = *(*a5 + 2 * (v14 + v13 * a2 - 1));
      v24 = v14 + (v13 - 1) * a2;
      v26 = *(*a5 + 2 * v24);
      v25 = *(*a5 + 2 * (v24 - 1));
    }

    if (v14 == v71)
    {
      v20 = 0;
      LOWORD(v27) = 0;
      v21 = 1;
      v14 = a2 - 1;
      goto LABEL_88;
    }

    v27 = *(v22 + 2 * (v24 + 1));
LABEL_31:
    if (v14 != v71 && (a6 & 1) == 0)
    {
      if (!a1)
      {
        if (v23 | v26)
        {
          v21 = 0;
          goto LABEL_88;
        }

        if (v27)
        {
          v21 = 0;
          LOWORD(v26) = 0;
          LOWORD(v23) = 0;
          goto LABEL_88;
        }

LABEL_40:
        v59 = v27;
        v29 = dword_23391817C[v67];
        if (!sub_2337BD5E8(&v73))
        {
          goto LABEL_68;
        }

        v30 = 0;
        v31 = a2 - v14;
        v32 = 1 << v29;
        while (sub_2337BD5E8(&v73))
        {
          v30 += v32;
          if (v30 < v31)
          {
            if (v67 <= 30)
            {
              v32 = 1 << dword_23391817C[++v67];
            }

            if (v30 != a2 - v14 - 1)
            {
              continue;
            }
          }

          v33 = a2 - v14;
          goto LABEL_52;
        }

        v34 = v67;
        if (v67 >= 4)
        {
          v30 += sub_2337BD4C4(&v73, dword_23391817C[v67]);
          v34 = v67;
        }

        v67 = v34 - (v34 > 0);
        v33 = v30 + 1;
LABEL_52:
        if (v33 <= 0)
        {
LABEL_68:
          v21 = 0;
          v68 = 1;
          LOWORD(v27) = v59;
          v20 = v14 == 0;
          goto LABEL_88;
        }

        if (v31 < v33)
        {
          v33 = a2 - v14;
        }

        if (v31)
        {
          v35 = *a5;
          if (v33 <= 1)
          {
            v36 = 1;
          }

          else
          {
            v36 = v33;
          }

          v37 = v14;
          do
          {
            *(v35 + 2 * (v13 * a2 + v37)) = v23;
            if ((a1 & 1) == 0)
            {
              v64[v37] = 0;
            }

            ++v37;
            --v36;
          }

          while (v36);
        }

        v14 += v33;
        v72 += v33;
        v21 = v14 == v71;
        if (a1)
        {
          if (v13)
          {
            if (!v14)
            {
              v42 = (v13 - 1) * a2;
              v25 = *(*a5 + 2 * v42);
              LOWORD(v27) = *(*a5 + 2 * (v42 + 1));
              v68 = 1;
              v20 = 1;
              LOWORD(v26) = v25;
              LOWORD(v23) = v25;
              goto LABEL_88;
            }

            LOWORD(v23) = *(*a5 + 2 * (v14 + v13 * a2 - 1));
            v38 = v14 + (v13 - 1) * a2;
            v25 = *(*a5 + 2 * (v38 - 1));
            LOWORD(v26) = *(*a5 + 2 * v38);
            if (v14 == v71)
            {
              v20 = 0;
              LOWORD(v27) = 0;
              v68 = 1;
              v14 = a2 - 1;
              v21 = 1;
              goto LABEL_88;
            }

            v20 = 0;
            v21 = 0;
            LOWORD(v27) = *(*a5 + 2 * (v38 + 1));
            goto LABEL_83;
          }

          if (v14)
          {
            v20 = 0;
            LOWORD(v27) = 0;
            v25 = 0;
            goto LABEL_77;
          }

          LOWORD(v27) = 0;
          v25 = 0;
          goto LABEL_86;
        }

        if (v13)
        {
          v39 = (v13 - 1) * a2;
          if (v14)
          {
            v40 = v14 + v39;
            v41 = *a5;
            if (v14 == v71)
            {
              LOWORD(v27) = 0;
            }

            else
            {
              LOWORD(v27) = *(v41 + 2 * (v40 + 1));
            }

            v20 = 0;
            LOWORD(v26) = *(v41 + 2 * v40);
            LOWORD(v23) = *(v41 + 2 * (v14 + v13 * a2 - 1));
            goto LABEL_83;
          }

          LOWORD(v23) = 0;
          LOWORD(v26) = *(*a5 + 2 * v39);
          LOWORD(v27) = *(*a5 + 2 * (v39 + 1));
        }

        else
        {
          if (v14)
          {
            v20 = 0;
            LOWORD(v27) = 0;
LABEL_77:
            LOWORD(v26) = 0;
            LOWORD(v23) = *(*a5 + 2 * (v14 - 1));
LABEL_83:
            v68 = 1;
            goto LABEL_88;
          }

          LOWORD(v27) = 0;
LABEL_86:
          LOWORD(v26) = 0;
          LOWORD(v23) = 0;
        }

        v68 = 1;
        v20 = 1;
        goto LABEL_88;
      }

      v21 = 0;
      if (v23 == v26 && v26 == v27)
      {
        goto LABEL_40;
      }
    }

LABEL_88:
    if (v14 < a2)
    {
      v43 = v25;
      v44 = v27;
      v45 = v26;
      if (v23 <= v26)
      {
        v46 = v26;
      }

      else
      {
        v46 = v23;
      }

      if (v23 >= v26)
      {
        v47 = v26;
      }

      else
      {
        v47 = v23;
      }

      if (a1)
      {
        if (v43 >= v46)
        {
          v46 = v47;
        }

        else if (v43 > v47)
        {
          v46 = v26 - v43 + v23;
        }

        if (v68)
        {
          v26 = v26;
        }

        else
        {
          v26 = v46;
        }
      }

      else
      {
        v26 = 0;
      }

      v48 = sub_2337BD638(&v73, v63);
      v49 = v48;
      if (v48 >= v62)
      {
        if (v48 != v62)
        {
          break;
        }

        v49 = sub_2337BD4C4(&v73, v60);
      }

      else if (v65)
      {
        v49 = sub_2337BD4C4(&v73, v65) | (v48 << v65);
      }

      if ((v49 & 0x80000000) != 0)
      {
        break;
      }

      if (v49 >= 0x20)
      {
        if (v49)
        {
          v50 = -((v49 + 1) >> 1);
        }

        else
        {
          v50 = v49 >> 1;
        }

        if ((a1 & 1) == 0)
        {
          goto LABEL_117;
        }

LABEL_122:
        v51 = v65;
      }

      else
      {
        v50 = dword_2339180FC[v49 & 0x1F];
        if (a1)
        {
          goto LABEL_122;
        }

LABEL_117:
        if ((v68 ^ 1))
        {
          goto LABEL_122;
        }

        v51 = v65;
        if ((a6 & 1) == 0)
        {
          if (v49)
          {
            v50 = (v49 + 1) >> 1;
          }

          else
          {
            v50 = -((v49 + 2) >> 1);
          }
        }
      }

      v52 = v50 + v26;
      if (a6)
      {
        if (v20 && v13 == 0)
        {
          v52 += 4;
        }

        if (v52 >= 127)
        {
          v52 = 127;
        }

        v52 &= ~(v52 >> 31);
      }

      if (v13 && ((v21 | a1 ^ 1) & 1) == 0)
      {
        v53 = v44 - v45;
        if (v53 < 0)
        {
          v53 = v45 - v44;
        }

        v49 = v53 + (v49 >> 1);
      }

      if (v49 >> v51 <= 5)
      {
        if (v49 >> v51 <= 2)
        {
          if (v49 >= 1 << v51 >> 1)
          {
            v54 = 0;
          }

          else
          {
            v54 = -1;
          }
        }

        else
        {
          v54 = 1;
        }
      }

      else
      {
        v54 = 2;
      }

      v55 = v51 + v54;
      if (v13)
      {
        v56 = a1;
      }

      else
      {
        v56 = 1;
      }

      if (((v56 | v21) & 1) == 0 && v64[v14 + 1] - v55 > 1)
      {
        ++v55;
      }

      v57 = v61;
      if (v55 <= v61)
      {
        v57 = v55 & ~(v55 >> 31);
      }

      if (v52 <= -32768)
      {
        v52 = -32768;
      }

      if (v52 >= 0x7FFF)
      {
        LOWORD(v52) = 0x7FFF;
      }

      *(*a5 + 2 * (v14 + v13 * a2)) = v52;
      if ((a1 & 1) == 0)
      {
        v64[v14] = v57;
      }

      v65 = v57;
      v68 = 0;
      ++v14;
      ++v72;
    }

    if (v14 == a2)
    {
      if ((byte_27DE3DEF8 & 0x40) != 0 && a6)
      {
        sub_2337BD4B8(&v73);
      }

      v68 = 0;
      v14 = 0;
      ++v13;
    }
  }

  while (v72 != v70);
  sub_2337BD4B8(&v73);
  if (v64)
  {
    free(v64);
  }

  if (v74)
  {
    sub_2337239E8(v74);
  }
}

void sub_2338F26A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_2337239E8(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2338F26E8(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_2338F2794(a1, a2);
  }

  return a1;
}

void sub_2338F2794(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_2338F27E4(a1, a2);
  }

  sub_2337235BC();
}

void sub_2338F27E4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_2337236AC();
}

void sub_2338F2840(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2338F2894(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2338F2894(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

CFTypeRef sub_2338F28E4()
{
  if ((atomic_load_explicit(&qword_27DE3DE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DE70))
  {
    qword_27DE3DE68 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
    __cxa_guard_release(&qword_27DE3DE70);
  }

  CGColorSpaceRetain(qword_27DE3DE68);
  v0 = qword_27DE3DE68;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F297C()
{
  if ((atomic_load_explicit(&qword_27DE3DE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DE80))
  {
    qword_27DE3DE78 = CGColorSpaceCreateCalibratedGray(dbl_233918200, 0, 1.0);
    __cxa_guard_release(&qword_27DE3DE80);
  }

  CGColorSpaceRetain(qword_27DE3DE78);
  v0 = qword_27DE3DE78;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2A18()
{
  if ((atomic_load_explicit(&qword_27DE3DE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DE90))
  {
    qword_27DE3DE88 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], byte_233918218, 476, *MEMORY[0x277CBED00]);
    __cxa_guard_release(&qword_27DE3DE90);
  }

  if ((atomic_load_explicit(&qword_27DE3DEA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEA0))
  {
    qword_27DE3DE98 = CGColorSpaceCreateWithICCData(qword_27DE3DE88);
    __cxa_guard_release(&qword_27DE3DEA0);
  }

  CGColorSpaceRetain(qword_27DE3DE98);
  v0 = qword_27DE3DE98;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2B1C()
{
  if ((atomic_load_explicit(&qword_27DE3DEB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEB0))
  {
    qword_27DE3DEA8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF410]);
    __cxa_guard_release(&qword_27DE3DEB0);
  }

  CGColorSpaceRetain(qword_27DE3DEA8);
  v0 = qword_27DE3DEA8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2BB4()
{
  if ((atomic_load_explicit(&qword_27DE3DEC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEC0))
  {
    qword_27DE3DEB8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3D0]);
    __cxa_guard_release(&qword_27DE3DEC0);
  }

  qword_27DE3DEB8 = CGColorSpaceCreateExtendedLinearized(qword_27DE3DEB8);
  CGColorSpaceRetain(qword_27DE3DEB8);
  v0 = qword_27DE3DEB8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2C54()
{
  if ((atomic_load_explicit(&qword_27DE3DED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DED0))
  {
    qword_27DE3DEC8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
    __cxa_guard_release(&qword_27DE3DED0);
  }

  CGColorSpaceRetain(qword_27DE3DEC8);
  v0 = qword_27DE3DEC8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2CEC()
{
  if ((atomic_load_explicit(&qword_280C04FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C04FC0))
  {
    qword_280C04FB8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3D0]);
    __cxa_guard_release(&qword_280C04FC0);
  }

  CGColorSpaceRetain(qword_280C04FB8);
  v0 = qword_280C04FB8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2D84()
{
  if ((atomic_load_explicit(&qword_280C04FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C04FD0))
  {
    qword_280C04FC8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
    __cxa_guard_release(&qword_280C04FD0);
  }

  CGColorSpaceRetain(qword_280C04FC8);
  v0 = qword_280C04FC8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2E1C()
{
  if ((atomic_load_explicit(&qword_27DE3DEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEE0))
  {
    qword_27DE3DED8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF480]);
    __cxa_guard_release(&qword_27DE3DEE0);
  }

  CGColorSpaceRetain(qword_27DE3DED8);
  v0 = qword_27DE3DED8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2EB4()
{
  if ((atomic_load_explicit(&qword_27DE3DEF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE3DEF0))
  {
    qword_27DE3DEE8 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF478]);
    __cxa_guard_release(&qword_27DE3DEF0);
  }

  CGColorSpaceRetain(qword_27DE3DEE8);
  v0 = qword_27DE3DEE8;

  return CFAutorelease(v0);
}

CFTypeRef sub_2338F2F4C(void *a1)
{
  v1 = a1;
  v2 = CGColorSpaceCreateWithName(v1);
  if (v2)
  {
    v3 = CFAutorelease(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_2338F2FA0(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, int a9)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = sub_2338F4DD0(a1, a9);
  *v17 = &unk_284937AC0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  *v19 = a2;
  *&v19[1] = a3;
  *&v19[2] = a4;
  *&v19[3] = a5;
  *&v19[4] = a6;
  sub_233755258((v17 + 16), v19, &v20, 5uLL);
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  return a1;
}

void sub_2338F3098(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F30B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = sub_2338F4DD0(a1, a2);
  *v5 = &unk_284937AC0;
  *(v5 + 16) = 0u;
  v6 = (v5 + 16);
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v7 = sub_23372574C(*a3);
  v8 = sub_23372574C(*a3);
  v9 = sub_23372574C(*a3);
  v10 = sub_23372574C(*a3);
  v11 = sub_23372574C(*a3);
  v12 = sub_23372574C(*a3);
  v13 = sub_23372574C(*a3);
  *v15 = v7;
  *&v15[1] = v8;
  *&v15[2] = v9;
  *&v15[3] = v10;
  *&v15[4] = v11;
  sub_233755258(v6, v15, &v16, 5uLL);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  return a1;
}

void sub_2338F31EC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

RAWOpcodeFixVignetteRadial *sub_2338F3228(uint64_t a1)
{
  v17[5] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v16[0] = @"kr0";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:**(a1 + 16)];
  v17[0] = v3;
  v16[1] = @"k1";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 16) + 8)];
  v17[1] = v4;
  v16[2] = @"k2";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 16) + 16)];
  v17[2] = v5;
  v16[3] = @"k3";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 16) + 24)];
  v17[3] = v6;
  v16[4] = @"k4";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(*(a1 + 16) + 32)];
  v17[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
  [v2 setObject:v8 forKeyedSubscript:@"Coefficients"];

  v9 = *(a1 + 48);
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v15[0] = v10;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  [v2 setObject:v12 forKeyedSubscript:@"NormalizedCenter"];

  v13 = [[RAWOpcodeFixVignetteRadial alloc] initWithArguments:v2];

  return v13;
}

void *sub_2338F34F4(void *a1)
{
  *a1 = &unk_284937AC0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2338F3544(void *a1)
{
  *a1 = &unk_284937AC0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2383ABF10);
}

void sub_2338F37DC(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWCropFilter", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338F441C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338F4438(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWGainMap", &unk_233945DBE, v5, 2u);
  }
}

void sub_2338F45C8(os_signpost_id_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  if (a1 + 1 >= 2 && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, a1, "CPacked14SwappedUnpacker", &unk_233945DBE, buf, 2u);
  }

  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_2338F4D48;
  v77[3] = &unk_2789EE800;
  v77[4] = a1;
  v67 = MEMORY[0x2383AC810](v77);
  v4 = *(a1 + 44);
  v5 = (*(*a1 + 40))(a1);
  v6 = *(a1 + 48);
  v64 = (a1 + 200);
  v7 = *(a1 + 200) != 0;
  v8 = (*(*a1 + 152))(a1);
  v9 = (v6 * v5) >> v7;
  v10 = (v4 + 9) / 0xA;
  v11 = 16 * v10 * v9;
  v12 = 8 * v10;
  if (v11 == v8)
  {
    v13 = v12;
  }

  else
  {
    v13 = (14 * v4) >> 3;
  }

  if (v11 == v8)
  {
    v14 = 8;
  }

  else
  {
    v14 = 7;
  }

  v15 = *(a1 + 188);
  if (v13 * v9 > (*(*a1 + 152))(a1))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x2383ABCE0](exception, "RawCameraException");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v73 = *(a1 + 192);
  v74 = a1;
  v72 = v9;
  if (v73 == 2)
  {
    v16 = v67;
    v75 = ((*(*a1 + 152))(a1) >> 1) - v13 * (v9 >> 1);
    sub_233723AE0(buf, &v75);
    v68 = *buf;
    if (!*v64)
    {
LABEL_44:
      v45 = 0;
      v46 = 0;
      v47 = v4 & 0xFFFFFFFC;
      do
      {
        v48 = sub_2337ADCC4(v74);
        v70 = v45;
        if (v45 < v72)
        {
          v49 = (v48 + 2 * v4 * v45);
          v50 = v46;
          do
          {
            v51 = 2 * v4 - v13;
            (*(**(v74 + 24) + 32))(*(v74 + 24), &v49[v51], v13);
            if (v45)
            {
              v52 = 0;
            }

            else
            {
              v52 = v15;
            }

            if (v45)
            {
              v46 = v50;
            }

            else
            {
              v46 = v15;
            }

            if (v47)
            {
              v53 = 0;
              v54 = &v49[v51 + 3 + v50];
              do
              {
                v55 = *(v54 - 2);
                v56 = *v54;
                v57 = v54[2];
                v58 = *(v54 - 3) | ((v55 & 0x3F) << 8);
                v59 = v54[3];
                v60 = (4 * *(v54 - 1)) & 0xC3FF | ((v56 & 0xF) << 10) | (v55 >> 6);
                v61 = (16 * v54[1]) & 0xCFFF | ((v57 & 3) << 12) | (v56 >> 4);
                *v49 = v58;
                *(v49 + 1) = v60;
                *(v49 + 2) = v61;
                *(v49 + 3) = (v57 >> 2) | (v59 << 6);
                v49 += 8;
                v53 += 4;
                v54 += v14;
              }

              while (v53 < v47);
            }

            v13 += v52;
            v49 += 2 * (v73 - 1) * v4;
            LODWORD(v45) = v45 + v73;
            v50 = v46;
          }

          while (v45 < v72);
        }

        v16 = v67;
        if (v68 && !v70)
        {
          v62 = *(v74 + 24);
          *buf = v68;
          (*(*v62 + 40))(v62, buf, 1);
        }

        v45 = v70 + 1;
      }

      while (v70 + 1 != v73);
      goto LABEL_61;
    }
  }

  else
  {
    v16 = v67;
    if (!*v64)
    {
      if (!v73)
      {
        goto LABEL_61;
      }

      v68 = 0;
      goto LABEL_44;
    }

    v68 = 0;
  }

  v17 = 0;
  v18 = 0;
  v71 = 2 * v4;
  v19 = 1;
  do
  {
    v65 = v19;
    v20 = v74;
    if (v17)
    {
      v21 = *(v74 + 24);
      sub_233723B40(buf, v64);
      (*(*v21 + 40))(v21, buf, 0);
      v16 = v67;
    }

    if (v73)
    {
      v22 = 0;
      v66 = v18 * v73 * v4;
      v23 = 0;
      do
      {
        v24 = sub_2337ADCC4(v20);
        v69 = v23;
        if (v23 < v72)
        {
          v25 = (v24 + 2 * v4 * v23 + 2 * v66);
          do
          {
            (*(**(v74 + 24) + 32))(*(v74 + 24), &v25[v71 - v13], v13);
            v26 = &v25[v71 - v13 + v22];
            if (v23)
            {
              v27 = 0;
            }

            else
            {
              v27 = v15;
            }

            if (!v23)
            {
              v22 = v15;
            }

            if (v4 == v4 % 0xA)
            {
              v28 = 0;
            }

            else
            {
              v28 = 0;
              do
              {
                v29 = v26[1];
                v30 = *v26 | ((v29 & 0xF) << 8);
                LOWORD(v29) = (v29 >> 4) | (16 * v26[2]);
                v31 = v26[4];
                v32 = v26[3] | ((v31 & 0xF) << 8);
                LOWORD(v31) = (v31 >> 4) | (16 * v26[5]);
                *v25 = v30;
                *(v25 + 1) = v29;
                v33 = v26[7];
                v34 = v26[6] | ((v33 & 0xF) << 8);
                LOWORD(v33) = (v33 >> 4) | (16 * v26[8]);
                *(v25 + 2) = v32;
                *(v25 + 3) = v31;
                v35 = v26[10];
                v36 = v26[9] | ((v35 & 0xF) << 8);
                v37 = (v35 >> 4) | (16 * v26[11]);
                *(v25 + 4) = v34;
                *(v25 + 5) = v33;
                v38 = v26[13];
                v39 = v26[12] | ((v38 & 0xF) << 8);
                v40 = (v38 >> 4) | (16 * v26[14]);
                *(v25 + 6) = v36;
                *(v25 + 7) = v37;
                *(v25 + 8) = v39;
                *(v25 + 9) = v40;
                v26 += v14;
                v25 += 20;
                v28 += 10;
              }

              while (v28 < 10 * (v4 / 0xA));
            }

            while (v28 < v4)
            {
              v41 = v26[1];
              v42 = *v26 | ((v41 & 0xF) << 8);
              v43 = (v41 >> 4) | (16 * v26[2]);
              *v25 = v42;
              *(v25 + 1) = v43;
              v26 += 3;
              v25 += 4;
              v28 += 2;
            }

            v13 += v27;
            v25 += 2 * (2 * v73 - 1) * v4;
            LODWORD(v23) = v23 + v73;
          }

          while (v23 < v72);
        }

        v16 = v67;
        v20 = v74;
        if (v68 && !v69)
        {
          v44 = *(v74 + 24);
          *buf = v68;
          (*(*v44 + 40))(v44, buf, 1);
        }

        v23 = v69 + 1;
      }

      while (v69 + 1 != v73);
    }

    v19 = 0;
    v17 = 1;
    v18 = 1;
  }

  while ((v65 & 1) != 0);
LABEL_61:
  v16[2](v16);
}

void sub_2338F4D48(uint64_t a1)
{
  v2 = sub_23378E038(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "CPacked14SwappedUnpacker", &unk_233945DBE, v5, 2u);
  }
}

uint64_t sub_2338F4DD0(uint64_t result, int a2)
{
  *result = &unk_284937BF8;
  *(result + 8) = a2;
  return result;
}

uint64_t *sub_2338F5060@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = result[63];
  if (!v4)
  {
    sub_2337338AC(result, &v7);
    LODWORD(v6) = 0;
    sub_233725F08(v8, &v7, &v6, 0);
    if (*(&v7 + 1))
    {
      sub_2337239E8(*(&v7 + 1));
    }

    sub_2337338AC(v2, &v6);
    sub_2338EE81C(&v7);
  }

  v5 = result[64];
  *a2 = v4;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338F5180(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a8)
  {
    sub_2337239E8(a8);
  }

  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

void sub_2338F55FC(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_2338F5B00(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338F5B1C(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWLensCorrectionDNG", &unk_233945DBE, v5, 2u);
  }
}

float64_t sub_2338F5BA4(uint64_t a1, float64_t a2, float64_t a3)
{
  v4 = *(*(a1 + 32) + 88);
  v5 = *(*(a1 + 32) + 96);
  v6 = [MEMORY[0x277CBF788] vectorWithX:*(a1 + 48) Y:*(a1 + 52)];
  [v4 X];
  v8 = v7;
  [v4 Y];
  v10 = v9;
  [v4 Z];
  v12 = v11;
  [v4 W];
  v14 = v13;
  [v5 X];
  v38 = v15;
  [v5 Y];
  v37 = v16;
  [v6 X];
  v36 = v17;
  [v6 Y];
  v18.f64[0] = v37;
  v18.f64[1] = v38;
  v19 = vcvt_f32_f64(v18);
  *v18.f64 = v14;
  v20 = v12;
  v21 = v10;
  v22 = v8;
  v23.f64[1] = v36;
  *&v23.f64[0] = vcvt_f32_f64(v23);
  v24 = *(a1 + 40);
  *&v24 = v24;
  _Q7.f64[0] = a3;
  _Q7.f64[1] = a2;
  *&_Q7.f64[0] = vdiv_f32(vsub_f32(vcvt_f32_f64(_Q7), *&v23.f64[0]), vdup_lane_s32(*&v24, 0));
  _S17 = HIDWORD(_Q7.f64[0]);
  __asm { FMLA            S16, S17, V7.S[1] }

  *&v18.f64[0] = vmul_n_f32(*&_Q7.f64[0], (((_S16 * v21) + v22) + (v20 * (_S16 * _S16))) + (*v18.f64 * (_S16 * (_S16 * _S16))));
  v32 = vcvtq_f64_f32(*&_Q7.f64[0]);
  v33 = vaddq_f64(v32, v32);
  v34 = vcvtq_f64_f32(v19);
  v41 = vcvtq_f64_f32(vadd_f32(vmul_n_f32(vadd_f32(*&v18.f64[0], vcvt_f32_f64(vmlaq_n_f64(vmulq_f64(vmlaq_f64(vdupq_lane_s64(COERCE__INT64(_S16), 0), v32, v33), vextq_s8(v34, v34, 8uLL)), v34, vmulq_laneq_f64(v32, v33, 1).f64[0]))), *&v24), *&v23.f64[0]));

  return v41.f64[1];
}

double sub_2338F5D84(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v29 = a3 + a5;
  v7 = *MEMORY[0x277CBF398];
  v6 = *(MEMORY[0x277CBF398] + 8);
  v9 = *(MEMORY[0x277CBF398] + 16);
  v8 = *(MEMORY[0x277CBF398] + 24);
  v28 = a2 + a4;
  v10 = 0.0;
  v11 = 0.0;
  do
  {
    r1_12 = v10;
    v44.origin.x = (*(*(a1 + 32) + 16))(a2 + a4 * v11, a3);
    v44.origin.y = v12;
    v44.size.width = 0.0;
    v44.size.height = 0.0;
    v36.origin.x = v7;
    v36.origin.y = v6;
    v36.size.width = v9;
    v36.size.height = v8;
    v37 = CGRectUnion(v36, v44);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    v45.origin.x = (*(*(a1 + 32) + 16))(a2 + a4 * (1.0 - v11), v29);
    v45.origin.y = v17;
    v45.size.width = 0.0;
    v45.size.height = 0.0;
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectUnion(v38, v45);
    r1 = v39.origin.x;
    v18 = v39.origin.y;
    v19 = v39.size.width;
    v20 = v39.size.height;
    v46.origin.x = (*(*(a1 + 32) + 16))(a2, a3 + a5 * (1.0 - v11));
    v46.origin.y = v21;
    v46.size.width = 0.0;
    v46.size.height = 0.0;
    v40.origin.x = r1;
    v40.origin.y = v18;
    v40.size.width = v19;
    v40.size.height = v20;
    v41 = CGRectUnion(v40, v46);
    v22 = v41.origin.x;
    v23 = v41.origin.y;
    v24 = v41.size.width;
    v25 = v41.size.height;
    v47.origin.x = (*(*(a1 + 32) + 16))(v28, a3 + a5 * v11);
    v47.origin.y = v26;
    v47.size.width = 0.0;
    v47.size.height = 0.0;
    v42.origin.x = v22;
    v42.origin.y = v23;
    v42.size.width = v24;
    v42.size.height = v25;
    v43 = CGRectUnion(v42, v47);
    v7 = v43.origin.x;
    v6 = v43.origin.y;
    v9 = v43.size.width;
    v8 = v43.size.height;
    v10 = r1_12 + 0.125;
    v11 = (r1_12 + 0.125);
  }

  while (v11 < 0.99999);
  return v7;
}

void *sub_2338F6024(size_t a1, size_t a2)
{
  v2 = malloc_type_calloc(a1, a2, 0x3EABCC12uLL);
  if (!v2)
  {
    sub_2338F605C();
  }

  return v2;
}

void *sub_2338F6084(size_t a1)
{
  v1 = malloc_type_malloc(a1, 0xB569D1EEuLL);
  if (!v1)
  {
    sub_2338F605C();
  }

  return v1;
}

void *sub_2338F60BC(size_t a1)
{
  v1 = malloc_type_valloc(a1, 0x105E89C7uLL);
  if (!v1)
  {
    sub_2338F605C();
  }

  return v1;
}

uint64_t sub_2338F60FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x2383AB420](a1, a2, 3072040773, a3);
  if (!v3)
  {
    sub_2338F605C();
  }

  return v3;
}

id sub_2338F613C()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3720];
  v11 = *MEMORY[0x277CD3700];
  v12 = v0;
  v19[0] = MEMORY[0x277CBEC28];
  v19[1] = @"com.phaseone.raw-image";
  v1 = *MEMORY[0x277CD3718];
  v13 = *MEMORY[0x277CD36E0];
  v19[2] = @".iiq.";
  v19[3] = &unk_2849588E8;
  v19[4] = &unk_284958900;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{sub_233900AE0, v11, v12, v13, v1, *MEMORY[0x277CD3708], *MEMORY[0x277CD3710]}];
  v19[5] = v2;
  v14 = *MEMORY[0x277CD36C8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2338F6434];
  v19[6] = v3;
  v15 = *MEMORY[0x277CD36E8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2338F6440];
  v19[7] = v4;
  v16 = *MEMORY[0x277CD36D0];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_23378BC54];
  v19[8] = v5;
  v17 = *MEMORY[0x277CD36F0];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2338F644C];
  v19[9] = v6;
  v18 = *MEMORY[0x277CD36F8];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:sub_2338F6458];
  v19[10] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v11 count:11];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];

  return v9;
}

void sub_2338F6464(void x0_0, uint64_t a1, char a2, void *a3, void *a4)
{
  a3;
  a4;
  sub_2338F7138();
}

void sub_2338F6500(uint64_t *a1)
{
  sub_23374B9D8(a1);
  v2 = (*(*a1 + 400))(a1);
  if (v2)
  {
    v8 = v2;
    v3 = sub_2337854A4(v2, *MEMORY[0x277CD3490], 0);
    v4 = *MEMORY[0x277CD34B8];
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD34B8]];

    if (!v5)
    {
      v6 = MEMORY[0x277CCABB0];
      sub_2338F665C(a1, &v9);
      v7 = [v6 numberWithUnsignedShort:*(v9 + 184)];
      [v3 setObject:v7 forKeyedSubscript:v4];

      if (v10)
      {
        sub_2337239E8(v10);
      }
    }

    v2 = v8;
  }
}

void sub_2338F6614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, uint64_t a11, std::__shared_weak_count *a12)
{
  v14 = v13;

  if (a12)
  {
    sub_2337239E8(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_2338F665C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = result[149];
  if (!v4)
  {
    sub_2337338AC(result, &v7);
    sub_2337268D8(&v6, v2 + 148);
    sub_233725F08(v8, &v7, &v6, 0);
    if (*(&v7 + 1))
    {
      sub_2337239E8(*(&v7 + 1));
    }

    sub_2337338AC(v2, &v6);
    sub_2338EE81C(&v7);
  }

  v5 = result[150];
  *a2 = v4;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_2338F6784(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (a8)
  {
    sub_2337239E8(a8);
  }

  sub_233725FD4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2338F67D8(uint64_t a1)
{
  sub_2337338AC(a1, &v3);
  *(a1 + 1184) = (*(*v3 + 48))(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return 1;
}

void sub_2338F6848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6860(uint64_t *a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF2E8(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F68A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F68C0(uint64_t *a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF2F0(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6920(uint64_t *a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_233731020(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6980(uint64_t *a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2337DE858(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F69C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F69E0(uint64_t *a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF2F8(v3);
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6A48(uint64_t *a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF304();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338F6AA8(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  (*(*a1 + 392))(__p);
  if ((v18 & 0x80000000) == 0)
  {
    if (v18 == 11)
    {
      v10 = __p;
      goto LABEL_6;
    }

LABEL_10:
    sub_233733E44(a1, a2, a3, a4, a5);
    goto LABEL_11;
  }

  if (__p[1] != 11)
  {
    goto LABEL_10;
  }

  v10 = __p[0];
LABEL_6:
  v11 = *v10;
  v12 = *(v10 + 3);
  if (v11 != 0x4965727574706143 || v12 != 0x6F666E4965727574)
  {
    goto LABEL_10;
  }

  sub_2338F665C(a1, &v15);
  v14 = v15;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  sub_2337236E0(a5, *(v14 + 88), *(v14 + 96), (*(v14 + 96) - *(v14 + 88)) >> 3);
  if (v16)
  {
    sub_2337239E8(v16);
  }

LABEL_11:
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2338F6BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    sub_2337239E8(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2338F6C14(uint64_t *a1)
{
  sub_2338F665C(a1, &v3);
  v1 = sub_2338EF310();
  if (v4)
  {
    sub_2337239E8(v4);
  }

  return v1;
}

void sub_2338F6C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_2337239E8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338F6C74(uint64_t *a1)
{
  sub_2338F665C(a1, &v7);
  sub_2337338AC(a1, &v5);
  (*(*a1 + 424))(a1);
  sub_233841054(&v7, &v6);
}

void sub_2338F6DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_2337239E8(a16);
  }

  _Unwind_Resume(exception_object);
}

double sub_2338F6E18(uint64_t a1, uint64_t a2, int a3)
{
  (*(*a1 + 392))(__p);
  v6 = sub_233735E3C(a1 + 288, __p);
  v7 = v6;
  if (a1 + 296 == v6)
  {
    v8 = -1.0;
  }

  else
  {
    v8 = *(v6 + 56);
  }

  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 296 == v7 || v8 <= 0.0)
  {
    if (a3)
    {
      (*(*a1 + 392))(__p, a1, a2);
      v9 = sub_233735E3C(a1 + 312, __p);
      if (a1 + 320 == v9)
      {
        v10 = 0.0;
      }

      else
      {
        v10 = *(v9 + 56);
      }

      v12 = v10 > -100.0 && a1 + 320 != v9;
      if (v16 < 0)
      {
        operator delete(__p[0]);
        if (v12)
        {
          return sub_23373341C(v10);
        }
      }

      else if (v12)
      {
        return sub_23373341C(v10);
      }
    }

    return sub_233733290(a1, a2, a3);
  }

  return v8;
}

void sub_2338F6F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338F6FAC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_23372A488(&__p, "iq");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_23372A488(&__p, "phaseone");
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_2337355A8(a1, &__p);
  sub_233735478(a2, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2338F7060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_233735AD4(&__p);
  _Unwind_Resume(a1);
}

void sub_2338F70A4(void *a1)
{
  sub_2338F70DC(a1);

  JUMPOUT(0x2383ABF10);
}

uint64_t sub_2338F70DC(void *a1)
{
  *a1 = &unk_284937C60;
  v2 = a1[150];
  if (v2)
  {
    sub_2337239E8(v2);
  }

  return sub_2337557B4(a1);
}

uint64_t sub_2338F71DC(uint64_t a1, void *a2, char *a3, void **a4, void **a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284937F98;
  sub_23374B844(a1 + 24, a2, *a3, *a4, *a5);
  *(a1 + 24) = &unk_284937C60;
  *(a1 + 1208) = -1;
  *(a1 + 1216) = 0u;
  return a1;
}

void sub_2338F7290(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284937F98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383ABF10);
}

void sub_2338F730C(uint64_t a1)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  v2 = (a1 + 64);
  v5 = (v4 - v3) >> 3;
  sub_233730758(v38, v5);
  v6 = *v2;
  if (v4 != v3)
  {
    v7 = *(a1 + 40);
    v8 = v38[0];
    if (v5 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = (v4 - v3) >> 3;
    }

    v10 = *v2;
    do
    {
      v11 = *v7++;
      v12 = v11;
      v13 = *v10++;
      *v8++ = v12 * 100.0 / (v13 + 100.0);
      --v9;
    }

    while (v9);
  }

  v14 = v5 - 1;
  if (*(v6 + 8 * (v5 - 1)) <= 0.0)
  {
    v17 = vcvtd_n_f64_s32(*(a1 + 12), 2uLL);
    v18 = hypot(v17, vcvtd_n_f64_s32(*(a1 + 8), 1uLL));
    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v15 = v17 / v18;
    if (v20 != v19)
    {
      v21 = v20 - v19;
      v20 = *(a1 + 40);
      do
      {
        v22 = v21 >> 1;
        v23 = &v20[v21 >> 1];
        v25 = *v23;
        v24 = v23 + 1;
        v21 += ~(v21 >> 1);
        if (v15 < v25)
        {
          v21 = v22;
        }

        else
        {
          v20 = v24;
        }
      }

      while (v21);
    }

    v26 = v20 - v19;
    if (v26 >= v14)
    {
      v26 = v5 - 1;
    }

    v27 = 8 * v26 - 8;
    v28 = (v15 - *(v19 + v27)) / (v19[v26] - *(v19 + v27));
    v16 = v28 * *(v38[0] + v26) + (1.0 - v28) * *(v38[0] + v27);
  }

  else
  {
    v15 = *(*(a1 + 40) + 8 * v14);
    v16 = *(v38[0] + v14);
  }

  v29 = v15 / v16;
  sub_233730758(&__p, (v4 - v3) >> 3);
  if (v4 != v3)
  {
    v30 = 0;
    v31 = v38[0];
    v32 = __p;
    if (v5 <= 1)
    {
      v33 = 1;
    }

    else
    {
      v33 = (v4 - v3) >> 3;
    }

    do
    {
      v34 = v31[v30];
      v35 = 1.0 / v29;
      if (v34 != 0.0)
      {
        v35 = *(*(a1 + 40) + 8 * v30) / (v29 * v34);
      }

      v32[v30++] = v35;
    }

    while (v33 != v30);
  }

  if (v2 != &__p)
  {
    sub_23373176C(v2, __p, v37, (v37 - __p) >> 3);
  }

  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }

  if (v38[0])
  {
    v38[1] = v38[0];
    operator delete(v38[0]);
  }
}

void sub_2338F7514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_2338F7548(uint64_t a1)
{
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  sub_233730758(v54, (v2 - v3) >> 3);
  v4 = *(a1 + 64);
  if (v2 != v3)
  {
    v5 = *(a1 + 40);
    v6 = v54[0];
    if (((v2 - v3) >> 3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = (v2 - v3) >> 3;
    }

    v8 = *(a1 + 64);
    do
    {
      v9 = *v5++;
      v10 = v9;
      v11 = *v8++;
      *v6++ = v10 * 100.0 / (v11 + 100.0);
      --v7;
    }

    while (v7);
  }

  v12 = (*(a1 + 72) - v4) >> 3;
  __p = 0;
  sub_233731694(v53, v12, &__p);
  v13 = (*(a1 + 72) - *(a1 + 64)) >> 3;
  v50 = 0;
  sub_233731694(&__p, v13, &v50);
  v14 = hypot(vcvtd_n_f64_s32(*(a1 + 12), 1uLL), vcvtd_n_f64_s32(*(a1 + 8), 1uLL));
  v15 = hypot(vcvtd_n_f64_s32(*(a1 + 20), 1uLL), vcvtd_n_f64_s32(*(a1 + 16), 1uLL));
  v17 = *(a1 + 64);
  v16 = *(a1 + 72);
  v18 = (v16 - v17) >> 3;
  if (v16 != v17)
  {
    v19 = __p;
    v20 = *(a1 + 40);
    v21 = v53[0];
    if (v18 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = (v16 - v17) >> 3;
    }

    v23 = *(a1 + 64);
    do
    {
      v24 = *v23++;
      *v19++ = 100.0 / (v24 + 100.0);
      v25 = *v20++;
      *v21++ = v25;
      --v22;
    }

    while (v22);
  }

  if (*(v16 - 8) > 0.0 && v16 != v17)
  {
    v27 = __p;
    v26 = v52;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    do
    {
      *v27 = *v27 / *(v26 - 1);
      ++v27;
      --v18;
    }

    while (v18);
  }

  v28 = [Curve alloc];
  v29 = v14;
  v30 = *(a1 + 72) - *(a1 + 64);
  v31 = v29;
  v32 = [(Curve *)v28 initWithCount:v30 >> 3 domainMin:__p domainMax:*v53[0] * v29 values:*(v53[0] + v30 - 8) * v29];
  v33 = [Curve alloc];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_2338F794C;
  v48[3] = &unk_2789EEFC0;
  v34 = v32;
  v49 = v34;
  v35 = [(Curve *)v33 initWithBlock:v48 domainMin:0.0 domainMax:v31];
  v36 = [Curve alloc];
  v43 = MEMORY[0x277D85DD0];
  v44 = 3221225472;
  v45 = sub_2338F79C0;
  v46 = &unk_2789EEFC0;
  v38 = v35;
  v47 = v38;
  v37 = v15;
  v39 = v37;
  v40 = [(Curve *)v36 initWithBlock:&v43 domainMin:0.0 domainMax:v39];
  if (*(a1 + 72) != *(a1 + 64))
  {
    v41 = 0;
    do
    {
      v42 = [(Curve *)v40 function:v43];
      *(*(a1 + 64) + 8 * v41) = v42[2](*(*(a1 + 40) + 8 * v41) * v39);

      ++v41;
    }

    while (v41 < (*(a1 + 72) - *(a1 + 64)) >> 3);
  }

  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }

  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }

  if (v54[0])
  {
    v54[1] = v54[0];
    operator delete(v54[0]);
  }
}

void sub_2338F78B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  if (a26)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

double sub_2338F794C(uint64_t a1, double a2)
{
  v2 = a2;
  if (a2 >= 0.00001)
  {
    v3 = [*(a1 + 32) function];
    v2 = v3[2](v2) * v2;
  }

  return v2;
}

double sub_2338F79C0(uint64_t a1, double a2)
{
  v3 = 1.0;
  if (a2 >= 0.00001)
  {
    v4 = [*(a1 + 32) inverse];
    v3 = v4[2](a2) / a2;
  }

  return v3;
}

void sub_2338F7A3C(void *a1)
{
  sub_2338F7A74(a1);

  JUMPOUT(0x2383ABF10);
}

void *sub_2338F7A74(void *a1)
{
  *a1 = &unk_284937FE8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    a1[6] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_2338F8154(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_233721B78(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2338F8170(uint64_t a1)
{
  v2 = sub_23378E104(a1);
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_23371F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "RAWEdgeSharpen", &unk_233945DBE, v5, 2u);
  }
}

BOOL sub_2338F8294(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  bzero(v6, 0xCCuLL);
  v2 = sub_233721A74(a1, **(a1 + 232), **(a1 + 256));
  JxlDecoderCreate();
  JxlDecoderSubscribeEvents();
  if (JxlDecoderSetInput() || JxlDecoderProcessInput() != 64 || JxlDecoderGetBasicInfo())
  {
    goto LABEL_10;
  }

  if (v7)
  {
    v3 = 1;
    goto LABEL_9;
  }

  if (JxlDecoderProcessInput() != 256 || (ColorAsEncodedProfile = JxlDecoderGetColorAsEncodedProfile(), v3 = ColorAsEncodedProfile == 0, !ColorAsEncodedProfile) && JxlDecoderSetPreferredColorProfile())
  {
LABEL_10:
    v3 = 0;
  }

LABEL_9:
  JxlDecoderDestroy();
  free(v2);
  return v3;
}

void sub_2338F8444(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2337239E8(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_2338F8494()
{
  if (__cxa_guard_acquire(byte_280C04DA0))
  {
    qword_280C04DA8 = 0;
    unk_280C04DB0 = 0;

    __cxa_guard_release(byte_280C04DA0);
  }
}

void sub_2338F84FC(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWLocalToneMap outputImage]";
  v3 = 2080;
  v4 = "[RAWLocalToneMap outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338F858C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  *a3 = 1;
}

void sub_2338F85D0(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  *a3 = 2;
}

void sub_2338F8614(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWVignetteTable outputImage]";
  v3 = 2080;
  v4 = "[RAWVignetteTable outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338F86A4()
{
  v6 = 136446466;
  sub_2337463C0();
  sub_2337463D4(&dword_23371F000, v0, v1, "%{public}s Caught exception in %s", v2, v3, v4, v5, v6);
}

void sub_2338F871C()
{
  v6 = 136446466;
  sub_2337463C0();
  sub_2337463D4(&dword_23371F000, v0, v1, "%{public}s Caught exception in %s", v2, v3, v4, v5, v6);
}

void sub_2338F8794()
{
  v6 = 136446466;
  sub_2337463C0();
  sub_2337463D4(&dword_23371F000, v0, v1, "%{public}s Caught exception in %s", v2, v3, v4, v5, v6);
}

void sub_2338F880C(uint64_t a1, uint64_t a2, void *__p)
{
  if (__p)
  {
    *(a2 + 8) = __p;
    operator delete(__p);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }
}

void sub_2338F884C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void sub_2338F8878(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_2338F88A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 2);
  if (v3 == 4 || v3 == 13)
  {
    return (*(*a2 + 720))(a2, a3, result);
  }

  return result;
}

uint64_t sub_2338F892C(uint64_t a1, uint64_t a2)
{
  sub_2337582E4();
  v4 = (*(v3 + 56))();
  if (*(a2 + 2) == 5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  if (*(a2 + 4) == 1)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void sub_2338F8988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2337582E4();
  if (((*(v6 + 56))() & 1) == 0 && *(a2 + 2) == 1)
  {
    v8 = *(a2 + 4);
    v7 = *(a2 + 8);

    sub_233800478(a1, a3, v7, v8);
  }
}

uint64_t sub_2338F8A14()
{
  sub_2337582E4();
  if ((*(v0 + 56))())
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    sub_2337582F0();
    if (v3)
    {
      v4 = v2 == 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = !v4;
    v1 = v5 << 31 >> 31;
  }

  return v1 & 1;
}

uint64_t sub_2338F8A78(_WORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a1 + 264))(a1, a3);
  if (result == 0xFFFF)
  {
    result = sub_233751308(a4);
    a1[508] = result;
  }

  return result;
}

void sub_2338F8ADC()
{
  *off_281947F30() = 1;
  v0 = objc_autoreleasePoolPush();
  v1 = off_281947F18();
  _tlv_atexit(sub_233758308, v1);

  objc_autoreleasePoolPop(v0);
}

void sub_2338F8BCC(char *a1, uint64_t a2, void **a3)
{
  if (*a1 < 0)
  {
    operator delete(*a3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }
}

void sub_2338F8C0C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = a3 + 1;
  v9 = a3 + 2;
  sscanf(v7, "%d.%d.%d", a3, a3 + 1, a3 + 2);
  v10 = 1000000 * *a3;
  if (v10 == v10)
  {
    v11 = 1000 * *v8;
    if (v11 == v11)
    {
      v12 = __OFADD__(v10, v11);
      v13 = v10 + v11;
      if (!v12)
      {
        v12 = __OFADD__(v13, *v9);
        v14 = v13 + *v9;
        if (!v12)
        {
          *(a4 + 1252) = v14;
        }
      }
    }
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t *sub_2338F8CCC(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return sub_233725FD4(a2);
}

uint64_t *sub_2338F8D30(uint64_t a1, uint64_t a2, __int16 a3, uint64_t *a4)
{
  v7 = *(a1 + 8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  if (a3 == 76)
  {
    v8 = 6;
  }

  else
  {
    v8 = 1;
  }

  if (a3 == 82)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  *(a2 + 1228) = v9;
  return sub_233725FD4(a4);
}

uint64_t sub_2338F8D94(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1224) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338F8DB4(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 56))(a1);
  if ((result & 1) == 0 && *(a2 + 2) == 3)
  {
    v6 = 0;
    sub_233726998(&v5, &v6);
    result = sub_23374B704(a2, &v5);
    *(a1 + 1348) = result;
    *(a1 + 1350) = 1;
  }

  return result;
}

uint64_t sub_2338F8E3C(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1292) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338F8E5C(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1284) = *(result + 8) == 1;
  }

  return result;
}

void sub_2338F8E84(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[148];
  if (v6)
  {
    a1[149] = v6;
    operator delete(v6);
    a1[148] = 0;
    a1[149] = 0;
    a1[150] = 0;
  }

  *(a1 + 74) = *a3;
  a1[150] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 8);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

void sub_2338F8EF4(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *a2;
  if (*(a2 + 8) - *a2 == 8)
  {
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2] - v7 + 1;
    v10 = v6[3] - v8 + 1;
    a3[308] = v7;
    a3[309] = v8;
    a3[310] = v9;
    a3[311] = v10;
    a3[304] += v7;
    a3[305] += v8;
    a3[306] = v9;
    a3[307] = v10;
LABEL_5:
    *(a2 + 8) = v6;
    operator delete(v6);
    return;
  }

  if (v6)
  {
    goto LABEL_5;
  }
}

void sub_2338F8F94(uint64_t a1, void **a2, void *a3)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v5 = *a2;
  if (*a2)
  {
    *a3 = v5;
    operator delete(v5);
  }
}

uint64_t sub_2338F8FD8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    v3 = *(result + 8);
    *(a2 + 1228) = v3;
    *(a2 + 1212) = v3;
  }

  return result;
}

uint64_t sub_2338F8FFC(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    v3 = *(result + 8);
    *(a2 + 1224) = v3;
    *(a2 + 1208) = v3;
  }

  return result;
}

BOOL sub_2338F9020(unsigned __int8 *a1, unint64_t a2, unsigned __int16 *a3)
{
  if (a2 >= 4)
  {
    v3 = *a1;
    if (v3 == 77)
    {
      if (a1[1] == 77)
      {
        v5 = *a3;
        if (a1[2] == v5 >> 8)
        {
          return a1[3] == v5;
        }
      }
    }

    else if (v3 == 73 && a1[1] == 73 && __PAIR64__(a1[3], a1[2]) == __PAIR64__(HIBYTE(*a3), *a3))
    {
      return 1;
    }
  }

  return 0;
}

void sub_2338F910C(uint64_t a1)
{
  v2 = sub_23376A688(a1);
  if (v2)
  {
    *(v3 + 8) = v2;
    operator delete(v2);
  }

  v4 = *(v1 + 8);
  if (v4)
  {
    sub_2337239E8(v4);
  }
}

uint64_t sub_2338F9144(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 7 && *(result + 4) == 4)
  {
    v11 = v2;
    v12 = v3;
    v6 = result;
    v7 = 0;
    v9 = 0;
    do
    {
      sub_233726998(&v10, &v9);
      result = sub_233754BB0(v6, &v10);
      v7 = (result - 48) | (v7 << 8);
      v8 = v9++;
    }

    while (v8 < 3);
    *(a2 + 1180) = v7;
  }

  return result;
}

uint64_t sub_2338F91D0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1184) = result;
  }

  return result;
}

uint64_t sub_2338F9210(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1186) = result;
  }

  return result;
}

uint64_t sub_2338F9250(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1188) = result;
  }

  return result;
}

uint64_t sub_2338F9290(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1190) = result;
  }

  return result;
}

uint64_t sub_2338F92D0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1192) = result;
  }

  return result;
}

uint64_t sub_2338F9310(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1194) = result;
  }

  return result;
}

uint64_t sub_2338F9350(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1228) = result;
  }

  return result;
}

uint64_t sub_2338F9390(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1266) = result;
    *(a2 + 1268) = 1;
  }

  return result;
}

uint64_t sub_2338F93D8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1338) = result;
    *(a2 + 1340) = 1;
  }

  return result;
}

uint64_t sub_2338F9420(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1346) = result;
    *(a2 + 1348) = 1;
  }

  return result;
}

uint64_t sub_2338F9468(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1350) = result;
    *(a2 + 1352) = 1;
  }

  return result;
}

uint64_t sub_2338F94B0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1204) = *(result + 8);
    *(a2 + 1208) = 1;
  }

  return result;
}

uint64_t sub_2338F94D8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1358) = result;
    *(a2 + 1360) = 1;
  }

  return result;
}

uint64_t sub_2338F9520(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1362) = result;
    *(a2 + 1364) = 1;
  }

  return result;
}

uint64_t *sub_2338F9568(uint64_t *result, uint64_t a2)
{
  if (*(result + 1) == 7)
  {
    v2 = *(result + 1);
    v3 = *(result + 2);
    *(a2 + 1196) = v3;
    *(a2 + 1200) = v2;
    return sub_233767154(a2, v3, v2);
  }

  return result;
}

uint64_t sub_2338F9590(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1212) = result;
    *(a2 + 1216) = 1;
  }

  return result;
}

uint64_t sub_2338F95D8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1220) = result;
    *(a2 + 1224) = 1;
  }

  return result;
}

uint64_t sub_2338F9620(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1440) = result;
    *(a2 + 1442) = 1;
  }

  return result;
}

uint64_t sub_2338F9668(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1444) = result;
    *(a2 + 1446) = 1;
  }

  return result;
}

uint64_t sub_2338F96B0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1448) = result;
    *(a2 + 1450) = 1;
  }

  return result;
}

uint64_t sub_2338F96F8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1452) = result;
    *(a2 + 1454) = 1;
  }

  return result;
}

uint64_t sub_2338F9740(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1456) = result;
    *(a2 + 1458) = 1;
  }

  return result;
}

uint64_t sub_2338F9788(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1528) = result;
    *(a2 + 1530) = 1;
  }

  return result;
}

uint64_t sub_2338F97D0(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1532) = result;
    *(a2 + 1534) = 1;
  }

  return result;
}

void sub_2338F9818(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_23376A680(v2, a1);
  }
}

uint64_t sub_2338F985C(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  if ((*a3 | 8) == 0x140B)
  {
    v10 = v3;
    v11 = v4;
    if (a3[1] == 3 && *(a3 + 1) == 1)
    {
      v7 = result;
      v8 = 0;
      sub_233726998(&v9, &v8);
      result = sub_23374B704(a3, &v9);
      *(v7 + 1440) = result;
    }
  }

  return result;
}

unsigned int *sub_2338F9908(unsigned int *result, unsigned int **a2, uint64_t a3)
{
  v3 = *result;
  if (v3 > 1)
  {
    return fwrite("eFujiCD_RawDataOffset: Array index out of bounds\n", 0x31uLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  *(a3 + 8 * v3) = **a2;
  return result;
}

uint64_t sub_2338F9A38(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1256) = *(result + 8);
  }

  return result;
}

id sub_2338F9A58(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 144);
    if (v3 || (CGImagePluginGetProperties(), v4 = objc_claimAutoreleasedReturnValue(), v5 = *(a1 + 144), *(a1 + 144) = v4, v5, (v3 = *(a1 + 144)) != 0))
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_2338F9AC0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return MEMORY[0x282122B10]();
  }

  return result;
}

void sub_2338F9AD4(id *a1, id *a2, void *a3)
{
  v5 = a3[16];
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = a3[13];
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = a3[10];
  if (v7)
  {
    sub_2337239E8(v7);
  }

  v8 = a3[4];
  if (v8)
  {
    sub_2337239E8(v8);
  }

  v9 = a3[2];
  if (v9)
  {

    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_2338F9B5C()
{
  if (__cxa_guard_acquire(byte_280C04DC0))
  {
    qword_280C04DB8[0] = dispatch_queue_create("Provider_Queue_Sync", 0);

    __cxa_guard_release(byte_280C04DC0);
  }
}

void sub_2338F9BB8()
{
  if (__cxa_guard_acquire(byte_280C04DC8))
  {
    qword_280C04DD0 = dispatch_queue_create("Provider_Queue_1", 0);
    qword_280C04DD8 = dispatch_queue_create("Provider_Queue_2", 0);
    qword_280C04DE0 = dispatch_queue_create("Provider_Queue_3", 0);
    qword_280C04DE8 = dispatch_queue_create("Provider_Queue_4", 0);

    __cxa_guard_release(byte_280C04DC8);
  }
}

void sub_2338F9C58(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  nullsub_6();
  v5 = *a3;
  switch(v5)
  {
    case 224:
      if (a3[1] == 3)
      {
        sub_233786484(a1, a3);
        v7 = *(a1 + 1184);
        v8 = *(a1 + 1192);
        if (v7 == v8)
        {
          v9 = *(a1 + 1200);
          if (v7 >= v9)
          {
            v10 = v9 - v7;
            v11 = v10 >> 1;
            if ((v10 >> 1) <= 1)
            {
              v11 = 1;
            }

            if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v12 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v12 = v11;
            }

            sub_2337235D4(a1 + 1184, v12);
          }

          *v8 = *(a1 + 1210);
          *(a1 + 1192) = v8 + 1;
        }
      }

      break;
    case 16:
      if (a3[1] == 4 && *(a3 + 1) == 1)
      {
        *(a1 + 1180) = *(a3 + 2);
      }

      break;
    case 147:
      if (((*(*a1 + 56))(a1) & 1) == 0 && a3[1] == 3)
      {

        sub_2337862B8(a1, a3);
      }

      break;
    default:
      if (v5 == 1 && a3[1] == 3)
      {

        sub_233786158(a1, a3);
      }

      break;
  }
}

void sub_2338F9ED0(uint64_t a1, unsigned int *a2, uint64_t a3, int a4)
{
  v7 = *(a1 + 8);
  if (v7)
  {
    sub_2337239E8(v7);
  }

  v8 = sub_233751844(a2);
  sub_233788044(a3, v8, a4, 1u);
}

void sub_2338F9F28()
{
  if (__cxa_guard_acquire(byte_280C04DF8))
  {
    v0 = os_log_create("com.apple.rawcamera", "parse");
    v1 = sub_23378E148(v0, &qword_280C04DF0);

    __cxa_guard_release(v1);
  }
}

void sub_2338F9F84()
{
  if (__cxa_guard_acquire(byte_280C04E08))
  {
    v0 = os_log_create("com.apple.rawcamera", "unpack");
    v1 = sub_23378E148(v0, &qword_280C04E00);

    __cxa_guard_release(v1);
  }
}

void sub_2338F9FE0()
{
  if (__cxa_guard_acquire(byte_280C04E18))
  {
    v0 = os_log_create("com.apple.rawcamera", "plugin");
    v1 = sub_23378E148(v0, &qword_280C04E10);

    __cxa_guard_release(v1);
  }
}

void sub_2338FA03C()
{
  if (__cxa_guard_acquire(byte_280C04E28))
  {
    v0 = os_log_create("com.apple.rawcamera", "render");
    v1 = sub_23378E148(v0, &qword_280C04E20);

    __cxa_guard_release(v1);
  }
}

void sub_2338FA098()
{
  if (__cxa_guard_acquire(byte_280C04E38))
  {
    v0 = os_log_create("com.apple.rawcamera", "cifilter");
    v1 = sub_23378E148(v0, &qword_280C04E30);

    __cxa_guard_release(v1);
  }
}

uint64_t **sub_2338FA0F4(uint64_t **result, uint64_t ***a2, unsigned __int16 *a3)
{
  if (*a3 == 34866)
  {
    if (a3[1] == 4)
    {
      v9[1] = v3;
      v9[2] = v4;
      v6 = *(a3 + 2);
      v9[0] = a2;
      v5 = sub_2337577E4(result + 24, a2, &unk_233905F1C, v9, &v8);
      return sub_23375538C(v5 + 7, &v6, v7, 1uLL);
    }
  }

  else
  {

    return sub_233752384(result, a2, a3);
  }

  return result;
}

void sub_2338FA17C(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  nullsub_6();
  v5 = *a3;
  if (v5 == 45057)
  {
    if (a3[1] == 3 && *(a3 + 1) == 1)
    {
      v8 = 0;
      sub_233726998(&v9, &v8);
      *(a1 + 1264) = sub_23374B704(a3, &v9);
    }
  }

  else if (v5 == 8201 && a3[1] == 3 && *(a3 + 1) == 1)
  {
    v8 = 0;
    sub_233726998(&v9, &v8);
    *(a1 + 1268) = sub_23374B704(a3, &v9);
  }
}

uint64_t sub_2338FA234(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1372) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA254(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1368) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA274(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1336) = result;
  }

  return result;
}

uint64_t sub_2338FA2B4(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1304) = result;
  }

  return result;
}

uint64_t sub_2338FA2F4(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    result = sub_233751308(result);
    *(a2 + 1272) = result;
  }

  return result;
}

uint64_t sub_2338FA334(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 2) == 3) & ~(*(*a1 + 56))(a1);
  if (*(a2 + 4) == 1)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338FA398(_BYTE *a1, unint64_t a2, void *a3)
{
  if (a2 >= 4 && *a1 == 73 && a1[1] == 73 && a1[2] == 42 && !a1[3])
  {
    return sub_23378E728(@"com.sony.raw-image", a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2338FA3E4(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1224) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA404(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1216) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA424(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1208) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FA444(uint64_t result, int a2, uint64_t a3)
{
  v3 = a2 + ((result - a2) & ~((result - a2) >> 31));
  if (v3 == result)
  {
    v4 = result;
  }

  else
  {
    v4 = result + 1;
  }

  v5 = (v3 - v4) / 0x168u;
  if (v3 != result)
  {
    ++v5;
  }

  v6 = result + 360 * v5;
  if ((v6 - a2) >= 0x167)
  {
    v7 = 359;
  }

  else
  {
    v7 = v6 - a2;
  }

  v8 = (v6 - a2 - v7 + 359) % 0x168u - (359 - v7);
  if (v8)
  {
    switch(v8)
    {
      case 0x10Eu:
        v9 = 8;
        break;
      case 0xB4u:
        v9 = 3;
        break;
      case 0x5Au:
        v9 = 6;
        break;
      default:
        return result;
    }
  }

  else
  {
    v9 = 1;
  }

  *(a3 + 1182) = v9;
  return result;
}

uint64_t sub_2338FA4DC()
{
  sub_2337AA77C();
  result = (*(v3 + 56))();
  if ((result & 1) == 0 && *(v1 + 2) == 7)
  {
    result = sub_233754AA0(v2, "IFD0");
    if (result & 1) != 0 || (result = sub_233754AA0(v2, "IFD0:SUBIFD0"), (result))
    {
      v5 = *(v0 + 1988);
      v6 = *(v1 + 8);
      *(v0 + 1976) = *v1;
      *(v0 + 1984) = v6;
      if ((v5 & 1) == 0)
      {
        *(v0 + 1988) = 1;
      }
    }
  }

  return result;
}

uint64_t sub_2338FA578()
{
  sub_2337AA77C();
  result = (*(v3 + 56))();
  if ((result & 1) == 0 && *(v1 + 2) == 7)
  {
    result = sub_233754AA0(v2, "IFD0");
    if (result & 1) != 0 || (result = sub_233754AA0(v2, "IFD0:SUBIFD0"), (result))
    {
      v5 = *(v0 + 1972);
      v6 = *(v1 + 8);
      *(v0 + 1960) = *v1;
      *(v0 + 1968) = v6;
      if ((v5 & 1) == 0)
      {
        *(v0 + 1972) = 1;
      }
    }
  }

  return result;
}

void sub_2338FA614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 + 520 == a1 || *(a1 + 56) != 0;
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  v7 = *(a3 + 2) != 3 || v6;
  if ((v7 & 1) == 0 && *(a3 + 4) == 1)
  {
    *(a2 + 1236) = sub_233751308(a3);
  }
}

void sub_2338FA69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    sub_2337239E8(v5);
  }

  v6 = *a2;
  if (*(a2 + 8) - *a2 == 16)
  {
    *(a3 + 1272) = *v6;
    *(a3 + 1280) = v6[1];
LABEL_5:
    *(a2 + 8) = v6;
    operator delete(v6);
    return;
  }

  if (v6)
  {
    goto LABEL_5;
  }
}

BOOL sub_2338FA6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 + 520 == a1)
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    return 1;
  }

  v3 = *(a1 + 56);
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    return v3 != 0;
  }

  operator delete(*a3);
  return v3 != 0;
}

void sub_2338FA764(_WORD **a1, char a2, uint64_t a3)
{
  v4 = *a1;
  if ((a2 & 1) == 0 || v4 == a1[1])
  {
    if (!v4)
    {
      return;
    }
  }

  else
  {
    *(a3 + 1240) = *v4;
  }

  a1[1] = v4;
  operator delete(v4);
}

void sub_2338FA7AC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v5 = *MEMORY[0x277D85DE8];
  v3 = sub_2338C0490(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&dword_23371F000, v3, OS_LOG_TYPE_INFO, "Unhandled TIFF Tag by AdobeDNGImageParser %d", v4, 8u);
  }
}

BOOL sub_2338FA854(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = !sub_23379FDD4(a2, (a1 + 1184));
  if (*(a3 + 2) != 1)
  {
    v4 = 1;
  }

  return *(a3 + 4) != 4 || v4;
}

void sub_2338FA8A4(void **a1, void **a2, uint64_t a3)
{
  v5 = *a1;
  if (v5)
  {
    *(a3 + 264) = v5;
    operator delete(v5);
  }

  v6 = *a2;
  if (*a2)
  {
    *(a3 + 240) = v6;

    operator delete(v6);
  }
}

uint64_t sub_2338FA900(uint64_t *a1)
{
  (*(*a1 + 440))(a1);
  result = a1[150];
  if (result)
  {
    v3 = sub_2337DB88C(result);
    v4 = sub_2337DB894(a1[150]);
    sub_2337DB944(a1[150]);
    sub_2337DB94C(a1[150]);
    return v3 | (v4 << 32);
  }

  return result;
}

_WORD *sub_2338FA9B0(void *a1)
{
  (*(*a1 + 440))(a1);
  result = a1[150];
  if (result)
  {
    return sub_2337DB838(result);
  }

  return result;
}

void sub_2338FAA0C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 1200);
  if (v2)
  {
    if (*a2)
    {
      sub_2338FBCF8(v2, a2);
    }
  }
}

void sub_2338FAA24(const void **a1, uint64_t a2, uint64_t a3)
{
  sub_23372A488(__p, "IFD0");
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = v15;
  v9 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v7 != v8)
  {
    v12 = 1;
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v6 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if ((v15 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  v12 = memcmp(v10, v11, v7) != 0;
  if (v9 < 0)
  {
LABEL_16:
    operator delete(__p[0]);
  }

LABEL_17:
  if (!v12)
  {
    v13 = *(a2 + 4);
    *(a3 + 1184) = *(a2 + 8);
    *(a3 + 1192) = v13;
    *(a3 + 1216) = 0;
  }
}

void sub_2338FAB20()
{
  if (__cxa_guard_acquire(byte_280C04E48))
  {
    qword_280C04E40 = dispatch_queue_create("Unpacker I/O Queue", 0);

    __cxa_guard_release(byte_280C04E48);
  }
}

void sub_2338FAB7C()
{
  if (__cxa_guard_acquire(byte_280C04E58))
  {
    qword_280C04E50 = dispatch_queue_create("Unpacker Decompress Queue", MEMORY[0x277D85CD8]);

    __cxa_guard_release(byte_280C04E58);
  }
}

uint64_t sub_2338FABDC(uint64_t a1, unsigned int *a2, char a3, unsigned int a4, unsigned int a5, double a6)
{
  result = sub_23378972C(*(a1 + 24));
  v14 = *a2;
  v13 = a2[1];
  if (v13 % 2 == (a3 & 2))
  {
    v15 = a2[1];
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v14 % 2 == (a3 & 1))
  {
    v16 = *a2;
  }

  else
  {
    v16 = v14 + 1;
  }

  v17 = a2[3] + v13;
  v18 = 0.0;
  if (v15 < v17)
  {
    v19 = 0;
    v20 = result + *(a1 + 40);
    v21 = a2[2] + v14;
    do
    {
      if (v16 < v21)
      {
        v22 = v16;
        do
        {
          v23 = *(v20 + 2 * *(a1 + 56) * v15 + 2 * v22);
          result = v23 >= a4;
          v24 = v23 <= a5;
          v19 += result & v24;
          if ((result & v24) != 0)
          {
            v18 = v18 + (v23 - a6) * (v23 - a6);
          }

          v22 += 2;
        }

        while (v22 < v21);
      }

      v15 += 2;
    }

    while (v15 < v17);
  }

  return result;
}

void sub_2338FAD28(uint64_t a1, unsigned int *a2, char a3, double *a4, double a5)
{
  if ((a5 < 0.0 || ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&a5 - 1) > 0xFFFFFFFFFFFFELL)
  {
    v15 = 0.0;
  }

  else
  {
    v12 = sub_2337B1140(a1, a2, 1u, 0xFFFFu, a3 & 1, a5);
    v13 = llround(fmax(floor(a5 + v12 * -5.0), 0.0));
    if ((v13 & 0xFFFE) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = sub_2337B1140(a1, a2, v14, vcvtpd_s64_f64(a5 + v12 * 5.0), a3 & 1, a5);
    if ((*&v15 <= -1 || ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&v15 - 1) >= 0xFFFFFFFFFFFFFLL)
    {
      v15 = 0.0;
    }
  }

  *a4 = v15;
}

unint64_t sub_2338FAE30(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 568);
  v4 = *(a3 + 64);
  v5 = *(a3 + 20);
  v6 = *(a3 + 18);
  v7 = *(a3 + 24);
  v8 = *(a3 + 40);
  v9 = v4 + 2 * *(result + 544);
  v10 = v9 - 8;
  v11 = v9 - 2;
  if (v7 >= v8 - 40 || v4 >= v10)
  {
    v82 = *(a3 + 64);
  }

  else
  {
    result = *(a3 + 64);
    do
    {
      v13 = v6 - 16;
      if (v6 >= 16)
      {
        v14 = *v7;
        v15 = v5 << 16;
        if (v14 == 255)
        {
          v16 = 3;
        }

        else
        {
          v16 = 2;
        }

        if (v14 == 255)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v18 = v7[v17];
        v7 += v16;
        v19 = v15 | (v14 << 8);
        if (v18 == 255)
        {
          ++v7;
        }

        v5 = v19 | v18;
        v6 = v13;
      }

      v20 = *(v3 + 2 * ((v5 << v6) >> 23));
      v21 = ((v20 >> 10) & 0x1F) + v6;
      if (v20 > 0x8000)
      {
        LOWORD(v20) = v20;
      }

      else
      {
        if ((v20 & 0x8000) != 0)
        {
          v20 = *(v3 + 2 * (((v5 << v6) >> 16) & 0x3FF));
          v21 += (v20 >> 10) & 0x1F;
        }

        v22 = v20 & 0x1F;
        if ((v20 & 0x1F) != 0)
        {
          v23 = v21 - 16;
          if (v21 >= 16)
          {
            v24 = *v7;
            v25 = v5 << 16;
            if (v24 == 255)
            {
              v26 = 3;
            }

            else
            {
              v26 = 2;
            }

            if (v24 == 255)
            {
              v27 = 2;
            }

            else
            {
              v27 = 1;
            }

            v28 = v7[v27];
            v7 += v26;
            v29 = v25 | (v24 << 8);
            if (v28 == 255)
            {
              ++v7;
            }

            v5 = v29 | v28;
            v21 = v23;
          }

          v20 = ((v5 << v21) >> -v22) - ((((v5 << v21) >> 31) - 1) >> -v22);
          v21 += v22;
        }

        else
        {
          LOWORD(v20) = (v20 << 8) & 0x8000;
        }
      }

      *result = v20;
      v30 = v21 - 16;
      if (v21 >= 16)
      {
        v31 = *v7;
        v32 = v5 << 16;
        if (v31 == 255)
        {
          v33 = 3;
        }

        else
        {
          v33 = 2;
        }

        if (v31 == 255)
        {
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }

        v35 = v7[v34];
        v7 += v33;
        v36 = v32 | (v31 << 8);
        if (v35 == 255)
        {
          ++v7;
        }

        v5 = v36 | v35;
        v21 = v30;
      }

      v37 = v5 << v21;
      v38 = *(v3 + 2 * ((v5 << v21) >> 23));
      v39 = ((v38 >> 10) & 0x1F) + v21;
      if (v38 > 0x8000)
      {
        LOWORD(v38) = v38;
      }

      else
      {
        if ((v38 & 0x8000) != 0)
        {
          v38 = *(v3 + 2 * (HIWORD(v37) & 0x3FF));
          v39 += (v38 >> 10) & 0x1F;
        }

        v40 = v38 & 0x1F;
        if ((v38 & 0x1F) != 0)
        {
          v41 = v39 - 16;
          if (v39 >= 16)
          {
            v42 = *v7;
            v43 = v5 << 16;
            if (v42 == 255)
            {
              v44 = 3;
            }

            else
            {
              v44 = 2;
            }

            if (v42 == 255)
            {
              v45 = 2;
            }

            else
            {
              v45 = 1;
            }

            v46 = v7[v45];
            v7 += v44;
            v47 = v43 | (v42 << 8);
            if (v46 == 255)
            {
              ++v7;
            }

            v5 = v47 | v46;
            v39 = v41;
          }

          v38 = ((v5 << v39) >> -v40) - ((((v5 << v39) >> 31) - 1) >> -v40);
          v39 += v40;
        }

        else
        {
          LOWORD(v38) = (v38 << 8) & 0x8000;
        }
      }

      *(result + 2) = v38;
      v48 = v39 - 16;
      if (v39 >= 16)
      {
        v49 = *v7;
        v50 = v5 << 16;
        if (v49 == 255)
        {
          v51 = 3;
        }

        else
        {
          v51 = 2;
        }

        if (v49 == 255)
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }

        v53 = v7[v52];
        v7 += v51;
        v54 = v50 | (v49 << 8);
        if (v53 == 255)
        {
          ++v7;
        }

        v5 = v54 | v53;
        v39 = v48;
      }

      v55 = v5 << v39;
      v56 = *(v3 + 2 * ((v5 << v39) >> 23));
      v57 = ((v56 >> 10) & 0x1F) + v39;
      if (v56 > 0x8000)
      {
        LOWORD(v56) = v56;
      }

      else
      {
        if ((v56 & 0x8000) != 0)
        {
          v56 = *(v3 + 2 * (HIWORD(v55) & 0x3FF));
          v57 += (v56 >> 10) & 0x1F;
        }

        v58 = v56 & 0x1F;
        if ((v56 & 0x1F) != 0)
        {
          v59 = v57 - 16;
          if (v57 >= 16)
          {
            v60 = *v7;
            v61 = v5 << 16;
            if (v60 == 255)
            {
              v62 = 3;
            }

            else
            {
              v62 = 2;
            }

            if (v60 == 255)
            {
              v63 = 2;
            }

            else
            {
              v63 = 1;
            }

            v64 = v7[v63];
            v7 += v62;
            v65 = v61 | (v60 << 8);
            if (v64 == 255)
            {
              ++v7;
            }

            v5 = v65 | v64;
            v57 = v59;
          }

          v56 = ((v5 << v57) >> -v58) - ((((v5 << v57) >> 31) - 1) >> -v58);
          v57 += v58;
        }

        else
        {
          LOWORD(v56) = (v56 << 8) & 0x8000;
        }
      }

      *(result + 4) = v56;
      v66 = v57 - 16;
      if (v57 >= 16)
      {
        v67 = *v7;
        v68 = v5 << 16;
        if (v67 == 255)
        {
          v69 = 3;
        }

        else
        {
          v69 = 2;
        }

        if (v67 == 255)
        {
          v70 = 2;
        }

        else
        {
          v70 = 1;
        }

        v71 = v7[v70];
        v7 += v69;
        v72 = v68 | (v67 << 8);
        if (v71 == 255)
        {
          ++v7;
        }

        v5 = v72 | v71;
        v57 = v66;
      }

      v73 = *(v3 + 2 * ((v5 << v57) >> 23));
      v6 = ((v73 >> 10) & 0x1F) + v57;
      if (v73 > 0x8000)
      {
        LOWORD(v73) = v73;
      }

      else
      {
        if ((v73 & 0x8000) != 0)
        {
          v73 = *(v3 + 2 * (((v5 << v57) >> 16) & 0x3FF));
          v6 += (v73 >> 10) & 0x1F;
        }

        v74 = v73 & 0x1F;
        if ((v73 & 0x1F) != 0)
        {
          v75 = v6 - 16;
          if (v6 >= 16)
          {
            v76 = *v7;
            v77 = v5 << 16;
            if (v76 == 255)
            {
              v78 = 3;
            }

            else
            {
              v78 = 2;
            }

            if (v76 == 255)
            {
              v79 = 2;
            }

            else
            {
              v79 = 1;
            }

            v80 = v7[v79];
            v7 += v78;
            v81 = v77 | (v76 << 8);
            if (v80 == 255)
            {
              ++v7;
            }

            v5 = v81 | v80;
            v6 = v75;
          }

          v73 = ((v5 << v6) >> -v74) - ((((v5 << v6) >> 31) - 1) >> -v74);
          v6 += v74;
        }

        else
        {
          LOWORD(v73) = (v73 << 8) & 0x8000;
        }
      }

      v82 = (result + 8);
      *(result + 6) = v73;
      v83 = v7 >= v8 - 40 || v82 >= v10;
      result += 8;
    }

    while (!v83);
  }

  *(a3 + 48) = 0;
  if (v7 > v8 || v82 >= v11)
  {
    v107 = 0;
    goto LABEL_187;
  }

  while (1)
  {
    if (v6 < 16)
    {
      goto LABEL_140;
    }

    if (v7 >= v8)
    {
      v85 = 0;
    }

    else
    {
      v86 = *v7++;
      v85 = v86;
    }

    if (v7 >= v8)
    {
      v87 = 0;
    }

    else
    {
      v88 = *v7++;
      v87 = v88;
    }

    if (v85 != 255)
    {
      goto LABEL_133;
    }

    if (v7 < v8)
    {
      v89 = *v7++;
      v87 = v89;
LABEL_133:
      v90 = v85 << 8;
      if (v7 >= v8)
      {
        result = v7;
      }

      else
      {
        result = (v7 + 1);
      }

      if (v87 == 255)
      {
        v87 = 255;
        v7 = result;
      }

      goto LABEL_139;
    }

    v87 = 0;
    v90 = 65280;
LABEL_139:
    v5 = (v90 + (v5 << 16)) | v87;
    v6 -= 16;
LABEL_140:
    v91 = *(v3 + 2 * ((v5 << v6) >> 23));
    v92 = ((v91 >> 10) & 0x1F) + v6;
    if (v91 > 0x8000)
    {
      LOWORD(v91) = v91;
      goto LABEL_164;
    }

    if ((v91 & 0x8000) != 0)
    {
      v91 = *(v3 + 2 * (((v5 << v6) >> 16) & 0x3FF));
      v92 += (v91 >> 10) & 0x1F;
    }

    v93 = v91 & 0x1F;
    if ((v91 & 0x1F) == 0)
    {
      LOWORD(v91) = (v91 << 8) & 0x8000;
      goto LABEL_164;
    }

    v94 = v92 - 16;
    if (v92 >= 16)
    {
      if (v7 >= v8)
      {
        v95 = 0;
      }

      else
      {
        v96 = *v7++;
        v95 = v96;
      }

      if (v7 >= v8)
      {
        v97 = 0;
      }

      else
      {
        v98 = *v7++;
        v97 = v98;
      }

      if (v95 != 255)
      {
        goto LABEL_156;
      }

      if (v7 >= v8)
      {
        v97 = 0;
        v100 = 65280;
      }

      else
      {
        v99 = *v7++;
        v97 = v99;
LABEL_156:
        v100 = v95 << 8;
        if (v7 >= v8)
        {
          v101 = v7;
        }

        else
        {
          v101 = v7 + 1;
        }

        if (v97 == 255)
        {
          v97 = 255;
          v7 = v101;
        }
      }

      v5 = (v100 + (v5 << 16)) | v97;
      v92 = v94;
    }

    result = -v93;
    v91 = ((v5 << v92) >> -v93) - ((((v5 << v92) >> 31) - 1) >> -v93);
    v92 += v93;
LABEL_164:
    *v82 = v91;
    v82 += 2;
    if (v7 >= v8 || v92 < 8)
    {
      v6 = v92;
    }

    else
    {
      do
      {
        v103 = *v7++;
        v5 = v103 | (v5 << 8);
        if (v103 == 255 && v7 < v8)
        {
          ++v7;
        }

        v6 = v92 - 8;
        v105 = v92 < 0x10 || v7 >= v8;
        v92 -= 8;
      }

      while (!v105);
    }

    if (v7 == v8)
    {
      v106 = *(a3 + 34);
      if (v6 >= v106)
      {
        break;
      }
    }

    v107 = 0;
    if (v7 > v8 || v82 >= v11)
    {
      goto LABEL_187;
    }
  }

  v107 = v6 == v106;
LABEL_187:
  *(a3 + 72) = &v82[-v4] >> 1;
  *(a3 + 52) = v5;
  *(a3 + 50) = v6;
  *(a3 + 56) = v7;
  *(a3 + 48) = v107 & *(a3 + 32);
  *(a3 + 49) = *(a3 + 33);
  return result;
}

uint64_t sub_2338FB424(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 12);
  v4 = result + 568;
  v5 = *(a3 + 64);
  v6 = *(a3 + 20);
  v7 = *(a3 + 18);
  v8 = *(a3 + 24);
  v9 = *(a3 + 40);
  v10 = v5 + 2 * *(result + 544);
  v11 = v10 - 4;
  v12 = v10 - 2;
  if (v8 >= v9 - 24 || v5 >= v11)
  {
    v51 = *(a3 + 64);
  }

  else
  {
    v14 = *(v4 + 8 * (v3 & 1));
    result = *(v4 + 8 * !(v3 & 1));
    v15 = *(a3 + 64);
    do
    {
      v16 = v7 - 16;
      if (v7 >= 16)
      {
        v17 = *v8;
        v18 = v6 << 16;
        if (v17 == 255)
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        if (v17 == 255)
        {
          v20 = 2;
        }

        else
        {
          v20 = 1;
        }

        v21 = v8[v20];
        v8 += v19;
        v22 = v18 | (v17 << 8);
        if (v21 == 255)
        {
          ++v8;
        }

        v6 = v22 | v21;
        v7 = v16;
      }

      v23 = v6 << v7;
      v24 = *(v14 + 2 * ((v6 << v7) >> 23));
      v25 = ((v24 >> 10) & 0x1F) + v7;
      if (v24 > 0x8000)
      {
        LOWORD(v24) = v24;
      }

      else
      {
        if ((v24 & 0x8000) != 0)
        {
          v24 = *(v14 + 2 * (HIWORD(v23) & 0x3FF));
          v25 += (v24 >> 10) & 0x1F;
        }

        v26 = v24 & 0x1F;
        if ((v24 & 0x1F) != 0)
        {
          v27 = v25 - 16;
          if (v25 >= 16)
          {
            v28 = *v8;
            v29 = v6 << 16;
            if (v28 == 255)
            {
              v30 = 3;
            }

            else
            {
              v30 = 2;
            }

            if (v28 == 255)
            {
              v31 = 2;
            }

            else
            {
              v31 = 1;
            }

            v32 = v8[v31];
            v8 += v30;
            v33 = v29 | (v28 << 8);
            if (v32 == 255)
            {
              ++v8;
            }

            v6 = v33 | v32;
            v25 = v27;
          }

          v24 = ((v6 << v25) >> -v26) - ((((v6 << v25) >> 31) - 1) >> -v26);
          v25 += v26;
        }

        else
        {
          LOWORD(v24) = (v24 << 8) & 0x8000;
        }
      }

      *v15 = v24;
      v34 = v25 - 16;
      if (v25 >= 16)
      {
        v35 = *v8;
        v36 = v6 << 16;
        if (v35 == 255)
        {
          v37 = 3;
        }

        else
        {
          v37 = 2;
        }

        if (v35 == 255)
        {
          v38 = 2;
        }

        else
        {
          v38 = 1;
        }

        v39 = v8[v38];
        v8 += v37;
        v40 = v36 | (v35 << 8);
        if (v39 == 255)
        {
          ++v8;
        }

        v6 = v40 | v39;
        v25 = v34;
      }

      v41 = v6 << v25;
      v42 = *(result + 2 * ((v6 << v25) >> 23));
      v7 = ((v42 >> 10) & 0x1F) + v25;
      if (v42 > 0x8000)
      {
        LOWORD(v42) = v42;
      }

      else
      {
        if ((v42 & 0x8000) != 0)
        {
          v42 = *(result + 2 * (HIWORD(v41) & 0x3FF));
          v7 += (v42 >> 10) & 0x1F;
        }

        v43 = v42 & 0x1F;
        if ((v42 & 0x1F) != 0)
        {
          v44 = v7 - 16;
          if (v7 >= 16)
          {
            v45 = *v8;
            v46 = v6 << 16;
            if (v45 == 255)
            {
              v47 = 3;
            }

            else
            {
              v47 = 2;
            }

            if (v45 == 255)
            {
              v48 = 2;
            }

            else
            {
              v48 = 1;
            }

            v49 = v8[v48];
            v8 += v47;
            v50 = v46 | (v45 << 8);
            if (v49 == 255)
            {
              ++v8;
            }

            v6 = v50 | v49;
            v7 = v44;
          }

          v42 = ((v6 << v7) >> -v43) - ((((v6 << v7) >> 31) - 1) >> -v43);
          v7 += v43;
        }

        else
        {
          LOWORD(v42) = (v42 << 8) & 0x8000;
        }
      }

      v51 = v15 + 2;
      v15[1] = v42;
      v52 = v8 >= v9 - 24 || v51 >= v11;
      v15 += 2;
    }

    while (!v52);
  }

  *(a3 + 48) = 0;
  if (v8 > v9 || v51 >= v12)
  {
    v72 = 0;
  }

  else
  {
    while (1)
    {
      if (v7 >= 16)
      {
        v54 = *v8;
        v55 = v6 << 16;
        if (v54 == 255)
        {
          v56 = 3;
        }

        else
        {
          v56 = 2;
        }

        if (v54 == 255)
        {
          v57 = 2;
        }

        else
        {
          v57 = 1;
        }

        v58 = v8[v57];
        v8 += v56;
        v59 = v55 | (v54 << 8);
        if (v58 == 255)
        {
          ++v8;
        }

        v6 = v59 | v58;
        v7 -= 16;
      }

      result = *(v4 + 8 * (v3 & 1));
      v60 = *(result + 2 * ((v6 << v7) >> 23));
      v61 = ((v60 >> 10) & 0x1F) + v7;
      if (v60 > 0x8000)
      {
        LOWORD(v60) = v60;
      }

      else
      {
        if ((v60 & 0x8000) != 0)
        {
          v60 = *(result + 2 * (((v6 << v7) >> 16) & 0x3FF));
          v61 += (v60 >> 10) & 0x1F;
        }

        result = v60 & 0x1F;
        if ((v60 & 0x1F) != 0)
        {
          v62 = v61 - 16;
          if (v61 >= 16)
          {
            v63 = *v8;
            v64 = v6 << 16;
            if (v63 == 255)
            {
              v65 = 3;
            }

            else
            {
              v65 = 2;
            }

            if (v63 == 255)
            {
              v66 = 2;
            }

            else
            {
              v66 = 1;
            }

            v67 = v8[v66];
            v8 += v65;
            v68 = v64 | (v63 << 8);
            if (v67 == 255)
            {
              ++v8;
            }

            v6 = v68 | v67;
            v61 = v62;
          }

          v60 = ((v6 << v61) >> -result) - ((((v6 << v61) >> 31) - 1) >> -result);
          v61 += result;
        }

        else
        {
          result = v60 << 8;
          LOWORD(v60) = (v60 << 8) & 0x8000;
        }
      }

      *v51++ = v60;
      if (v61 < 8)
      {
        v7 = v61;
      }

      else
      {
        do
        {
          v69 = *v8;
          v6 = v69 | (v6 << 8);
          if (v69 == 255)
          {
            result = 2;
          }

          else
          {
            result = 1;
          }

          v8 += result;
          v7 = v61 - 8;
          v70 = v61 > 0xF;
          v61 -= 8;
        }

        while (v70);
      }

      if (v8 == v9)
      {
        v71 = *(a3 + 34);
        if (v7 >= v71)
        {
          break;
        }
      }

      v72 = 0;
      LOBYTE(v3) = v3 + 1;
      if (v8 > v9 || v51 >= v12)
      {
        goto LABEL_110;
      }
    }

    v72 = v7 == v71;
  }

LABEL_110:
  *(a3 + 72) = (v51 - v5) >> 1;
  *(a3 + 52) = v6;
  *(a3 + 50) = v7;
  *(a3 + 56) = v8;
  *(a3 + 48) = v72 & *(a3 + 32);
  *(a3 + 49) = *(a3 + 33);
  return result;
}

void sub_2338FB7FC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[150];
  if (v6)
  {
    a1[151] = v6;
    operator delete(v6);
    a1[150] = 0;
    a1[151] = 0;
    a1[152] = 0;
  }

  *(a1 + 75) = *a3;
  a1[152] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v7 = *(a2 + 8);
  if (v7)
  {
    sub_2337239E8(v7);
  }
}

double sub_2338FB86C(double *a1, uint64_t a2)
{
  if (((*(*a1 + 56))(a1) & 1) == 0 && *(a2 + 2) == 3 && *(a2 + 4) == 1)
  {
    v13 = 0;
    v6 = sub_233726998(&v12, &v13);
    v8 = sub_2337B7D44(v6, v7);
    if (v8)
    {
      v9 = v8 == 5000 || v8 == 6000;
      v10 = 21.0;
      if (v9)
      {
        v11 = 3800;
      }

      else
      {
        v10 = 0.0;
        v11 = v8;
      }

      return sub_23381946C(a1 + 148, v11, v10);
    }
  }

  return result;
}

uint64_t sub_2338FB91C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    v10 = sub_2337B7D20(result, a2, a3, a4, a5, a6, a7, a8, v12, v13, HIDWORD(v13));
    result = sub_2337B7D44(v10, v11);
    *(v8 + 1230) = result;
  }

  return result;
}

uint64_t sub_2338FB964(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    v10 = sub_2337B7D20(result, a2, a3, a4, a5, a6, a7, a8, v12, v13, HIDWORD(v13));
    result = sub_2337B7D44(v10, v11);
    *(v8 + 1228) = result;
  }

  return result;
}

uint64_t sub_2338FB9AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    v10 = sub_2337B7D20(result, a2, a3, a4, a5, a6, a7, a8, v12, v13, HIDWORD(v13));
    result = sub_2337B7D44(v10, v11);
    *(v8 + 1224) = result;
  }

  return result;
}

uint64_t sub_2338FB9F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(result + 2) == 3 && *(result + 4) == 1)
  {
    v10 = sub_2337B7D20(result, a2, a3, a4, a5, a6, a7, a8, v12, v13, HIDWORD(v13));
    result = sub_2337B7D44(v10, v11);
    *(v8 + 1226) = result;
  }

  return result;
}

void sub_2338FBA3C(std::__shared_weak_count **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

uint64_t sub_2338FBAA0(uint64_t result, int a2)
{
  if ((a2 - 3) >= 0xFFFFFFFE)
  {
    *(result + 192) = a2;
  }

  return result;
}

void sub_2338FBAB4()
{
  if (__cxa_guard_acquire(byte_280C04E68))
  {
    byte_280C04E60 = 1;
    byte_280C04E64 = 1;

    __cxa_guard_release(byte_280C04E68);
  }
}

double sub_2338FBB08(uint64_t a1, uint64_t a2, double *a3)
{
  v5 = (*(*a1 + 1136))(a1);
  result = (*(*a1 + 848))(a1) * v5;
  *a3 = result;
  return result;
}

__n128 sub_2338FBB98(void *a1, __n128 *a2)
{
  v5 = a1 + 15;
  v4 = a1[15];
  if (v4)
  {
    a1[16] = v4;
    operator delete(v4);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  result = *a2;
  *(a1 + 15) = *a2;
  a1[17] = a2[1].n128_u64[0];
  return result;
}

void sub_2338FBBF0()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2337463C0();
  _os_log_error_impl(&dword_23371F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", v1, 0x16u);
}

void sub_2338FBC74()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2337463C0();
  _os_log_error_impl(&dword_23371F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", v1, 0x16u);
}

void sub_2338FBCF8(uint64_t a1, uint64_t *a2)
{
  if (getenv("RAWCAMERA_OVERRIDE_STITCHING"))
  {
    sub_2337DC0B0();

    __asm { BRAA            X1, X16 }
  }

  v7 = *a2;
  if (*(*a2 + 48) == *(a1 + 108) && *(v7 + 52) == *(a1 + 106))
  {
    v8 = sub_2337B0628(v7);
    v16 = v8;
    v17 = *(a1 + 200);
    if (v17 == 3)
    {
      v32 = *(a1 + 208);
      if (v32 == 2)
      {
        if (*(a1 + 108))
        {
          sub_2337DC088();
          do
          {
            sub_2337DC024(v64, v65, v66, v67, v68, v69, v70, v71, v76, v2, v78, v79);
            sub_2337DC05C();
            if (v25)
            {
              sub_2337DBFA0();
              do
              {
                sub_2337DBFEC();
                sub_2337DC040();
                sub_2337DC014();
                *(v73 + 2 * v72) = v74;
                sub_2337DC014();
                sub_2337DC074(v75);
              }

              while (!v25);
            }

            sub_2337DBFD8();
          }

          while (!v25);
        }
      }

      else if (v32 == 1)
      {
        if (*(a1 + 108))
        {
          sub_2337DC088();
          do
          {
            sub_2337DC024(v52, v53, v54, v55, v56, v57, v58, v59, v76, v2, v78, v79);
            sub_2337DC05C();
            if (v25)
            {
              sub_2337DBFA0();
              do
              {
                sub_2337DBFEC();
                sub_2337DC040();
                sub_2337DC014();
                *(v61 + 2 * v60) = v62;
                sub_2337DC014();
                sub_2337DC074(v63);
              }

              while (!v25);
            }

            sub_2337DBFD8();
          }

          while (!v25);
        }
      }

      else if (!*(a1 + 208) && *(a1 + 108))
      {
        v33 = *(a1 + 216) * 0.5;
        v34 = *(a1 + 106);
        do
        {
          v77 = 2;
          v79 = v34;
          sub_2337DBED0(&v79, &v77);
          if (*(a1 + 106) >= 2u)
          {
            sub_2337DBFA0();
            v39 = v16 + v37 + 2 * v38;
            do
            {
              v40 = *(v36 + 2 * v35);
              v42 = (sub_2337DBF74(v40, *(v39 + 2 * v35), v40 - v33, v40 * v40 * 0.000000238418579) + 0.5);
              if (v42 >= 0xFFFF)
              {
                v42 = 0xFFFF;
              }

              *(v36 + 2 * v41) = v42 & ~(v42 >> 31);
              v47 = (v44 * v46 + v45 * v43 + 0.5);
              if (v47 >= 0xFFFF)
              {
                v47 = 0xFFFF;
              }

              *(v39 + 2 * v41) = v47 & ~(v47 >> 31);
              v35 = v41 + 1;
            }

            while (v35 < *(a1 + 106) >> 1);
          }

          sub_2337DBFD8();
        }

        while (!v25);
      }
    }

    else if (v17 == 2)
    {
      v26 = *(a1 + 208);
      if (v26 == 2)
      {
        if (*(a1 + 108))
        {
          do
          {
            sub_2337DC024(v8, v9, v10, v11, v12, v13, v14, v15, v76, 2, v78, v79);
            sub_2337DC05C();
            if (v25)
            {
              sub_2337DBF48();
              do
              {
                sub_2337DBFB4();
                sub_2337DC068();
                sub_2337DBF34();
                *v50 = v51;
                sub_2337DBF34();
                sub_2337DBF5C();
              }

              while (!v25);
            }

            sub_2337DBFC8();
          }

          while (!v25);
        }
      }

      else if (v26 == 1)
      {
        if (*(a1 + 108))
        {
          do
          {
            sub_2337DC024(v8, v9, v10, v11, v12, v13, v14, v15, v76, 2, v78, v79);
            sub_2337DC05C();
            if (v25)
            {
              sub_2337DBF48();
              do
              {
                sub_2337DBFB4();
                sub_2337DC068();
                sub_2337DBF34();
                *v48 = v49;
                sub_2337DBF34();
                sub_2337DBF5C();
              }

              while (!v25);
            }

            sub_2337DBFC8();
          }

          while (!v25);
        }
      }

      else if (!*(a1 + 208) && *(a1 + 108))
      {
        v27 = *(a1 + 216) * 0.5;
        do
        {
          sub_2337DC024(v8, v9, v10, v11, v12, v13, v14, v15, v76, 2, v78, v79);
          sub_2337DC05C();
          if (v25)
          {
            sub_2337DBF48();
            do
            {
              v28 = sub_2337DBFB4();
              sub_2337DBF74(v28, v29, v28 - v27, v28 * v28 * 0.000000238418579);
              sub_2337DC068();
              sub_2337DBF34();
              *v30 = v31;
              sub_2337DBF34();
              sub_2337DBF5C();
            }

            while (!v25);
          }

          sub_2337DBFC8();
        }

        while (!v25);
      }
    }

    else if (v17 == 1 && *(a1 + 108))
    {
      v18 = *(a1 + 106);
      do
      {
        v77 = 2;
        v79 = v18;
        sub_2337DBED0(&v79, &v77);
        if (*(a1 + 106) >= 2u)
        {
          sub_2337DBF48();
          do
          {
            sub_2337DC068();
            sub_2337DC09C();
            *v19 = v20;
            sub_2337DC09C();
            *(v22 + 2 * v21) = v23;
          }

          while (v24 + 1 < (*(a1 + 106) >> 1));
        }

        sub_2337DBFC8();
      }

      while (!v25);
    }
  }

  sub_2337DC0B0();
}

uint64_t sub_2338FC300(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1184) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FC320(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1180) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FC3F0(uint64_t result, unsigned int a2)
{
  if (a2 <= 2)
  {
    *(result + 188) = a2;
  }

  return result;
}

void sub_2338FC400()
{
  if (__cxa_guard_acquire(byte_280C04E80))
  {
    byte_280C04E78 = getenv("RAWCAMERA_SIMPLELENSCORRECTION_LOGGING") != 0;
    __cxa_guard_release(byte_280C04E80);
  }
}

void sub_2338FC448(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWSimpleLensCorrectionFilter outputImage]";
  v3 = 2080;
  v4 = "[RAWSimpleLensCorrectionFilter outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FC578(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    sub_2338103E8();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  __cxa_end_catch();
}

void sub_2338FC640(uint64_t a1)
{
  (*(*a1 + 16))(a1);
  sub_2338103E8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_2338FC70C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  if (a4 && a5)
  {
    *&v27 = a4;
    *(&v27 + 1) = a5;
    atomic_store(0, &v28);
    *(&v28 + 1) = sub_2338F6084(16 * a2);
    atomic_store(0, &v29);
    DWORD1(v29) = a2;
  }

  bzero(v22, 0xB0uLL);
  v24 = a1;
  v25 = a2;
  v26 = &v27;
  v8 = sub_2338F6084(16 * a2);
  v22[0] = v8;
  if (!v8)
  {
    return;
  }

  v9 = a2 - 1;
  if (a2 >= 1)
  {
    if (a2 == 1)
    {
      v12 = 0;
    }

    else
    {
      v10 = 0;
      v11 = a2 & 0x7FFFFFFE;
      v12 = v9 - v11;
      v13 = &v8[16 * v9];
      do
      {
        *v13 = a3;
        *(v13 - 2) = a3;
        *(v13 + 2) = v10;
        *(v13 - 2) = v10 + 1;
        v10 += 2;
        v13 -= 32;
      }

      while (v11 != v10);
      if (v11 == a2)
      {
        goto LABEL_13;
      }
    }

    v14 = v12 + 1;
    v15 = ~v12 + a2;
    v16 = &v8[16 * v12 + 8];
    do
    {
      *(v16 - 1) = a3;
      *v16 = v15;
      v16 -= 4;
      ++v15;
      --v14;
    }

    while (v14);
  }

LABEL_13:
  atomic_store(a2, &v23);
  dispatch_apply_f(a2, 0, v22, sub_233818D54);
  v17 = v26;
  if (atomic_load(v26 + 8))
  {
    while (1)
    {
      v19 = atomic_load(v17 + 2);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      atomic_compare_exchange_strong(v17 + 2, &v20, *v19);
      if (v20 == v19)
      {
        if (!v19[1])
        {
          break;
        }

        (*(v17 + 1))(a3);
      }
    }

    v21 = *(v17 + 3);
    if (v21)
    {
      j__free_3(v21);
    }
  }

  j__free_3(v22[0]);
}

double sub_2338FC8E8(uint64_t a1, uint64_t a2)
{
  result = 0.3457;
  *a1 = xmmword_233908960;
  v3 = *a2;
  if (*(a2 + 8) - *a2 == 24)
  {
    result = *v3;
    v4 = *v3 + v3[1] + v3[2];
    if (v4 > 0.0)
    {
      *a1 = result / v4;
      result = v3[1] / v4;
      *(a1 + 8) = result;
    }
  }

  return result;
}

void sub_2338FC938(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    *(a2 + 16) = v5;
    operator delete(v5);
  }
}

void sub_2338FC97C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

double sub_2338FC9A8(uint64_t a1, double *a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 8);
  if (v8)
  {
    *(a1 + 16) = v8;
    operator delete(v8);
  }

  result = *a2;
  v10 = *a3;
  *a4 = *a2;
  a4[1] = v10;
  return result;
}

void sub_2338FC9F8(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWGamutMap outputImage]";
  v3 = 2080;
  v4 = "[RAWGamutMap outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

uint64_t sub_2338FCA88(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v5 = result;
  v6 = *(result + 336);
  if (v6 <= 7)
  {
    result = sub_23381D4B4(result, 8);
    v6 = *(v5 + 336);
  }

  v7 = *(v5 + 328);
  v8 = v6 - 8;
  v9 = *(a2 + 4 * (v7 >> (v6 - 8)) + 1192);
  if (v9)
  {
    *(v5 + 336) = v6 - v9;
    v10 = *(a2 + 4 * (v7 >> (v6 - 8)) + 2216);
  }

  else
  {
    v11 = (v7 >> (v6 - 8));
    *(v5 + 336) = v8;
    if (v11 <= *(a2 + 1116))
    {
      v14 = 8;
    }

    else
    {
      v12 = 280;
      do
      {
        if (!v8)
        {
          result = sub_23381D4B4(v5, 1);
          v8 = *(v5 + 336);
          v7 = *(v5 + 328);
        }

        *(v5 + 336) = --v8;
        v11 = (v7 >> v8) & 1 | (2 * v11);
        v13 = *(a2 + 4 * v12++);
      }

      while (v11 > v13);
      if ((v12 - 273) > 0xF)
      {
        v10 = 0;
        goto LABEL_14;
      }

      v14 = v12 - 272;
    }

    v10 = *(a2 + v11 + *(a2 + 2 * v14 + 1156) - *(a2 + 2 * v14 + 1048) + 17);
  }

LABEL_14:
  *a3 = v10;
  return result;
}

uint64_t sub_2338FCBC8(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    *(a2 + 1212) = *(result + 8);
  }

  return result;
}

uint64_t sub_2338FCC14(uint64_t result, _DWORD *a2, uint64_t a3)
{
  if ((*(result + 208) & 1) == 0)
  {
    return sub_233840B90(result, *(result + 288) * *a2, *(a3 + 8));
  }

  return result;
}

void sub_2338FCC34(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *a1;
  if (a2)
  {
    *(a3 + 1280) = *v4;
    v5 = v4[3];
    v6 = v4[4];
    *(a3 + 1284) = 0;
    *(a3 + 1292) = v5;
    *(a3 + 1296) = v6;
  }

  else if (!v4)
  {
    return;
  }

  *(a1 + 8) = v4;
  operator delete(v4);
}

void sub_2338FCC88(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v3 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v3;
    operator delete(v3);
  }
}

CGColorSpaceRef sub_2338FCCC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1584);
  if (v4)
  {
    CFRelease(v4);
  }

  v9 = 0;
  sub_233726998(&v8, &v9);
  v5 = sub_23374B704(a2, &v8);
  if (v5 == 2)
  {
    v6 = sub_2338F2CEC();
  }

  else if (v5 == 4)
  {
    v6 = sub_2338F2EB4();
  }

  else
  {
    v6 = sub_2338F2C54();
  }

  result = CGColorSpaceRetain(v6);
  *(a1 + 1584) = result;
  return result;
}

uint64_t sub_2338FCD48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 2) == 4 && *(result + 4) == 1)
  {
    return (*(*a2 + 720))(a2, a3, result);
  }

  return result;
}

uint64_t sub_2338FCD9C()
{
  sub_23384AB88();
  result = (*(v2 + 56))();
  if ((result & 1) == 0 && *(v1 + 4) == 1)
  {
    result = sub_233751308(v1);
    *(v0 + 1332) = result;
  }

  return result;
}

uint64_t sub_2338FCDF4()
{
  sub_23384AB88();
  result = (*(v2 + 56))();
  if ((result & 1) == 0)
  {
    *(v0 + 1268) = *(v1 + 8);
  }

  return result;
}

uint64_t *sub_2338FCE3C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return sub_233725FD4(a2);
}

uint64_t sub_2338FCE74(uint64_t result, uint64_t a2)
{
  if (*(result + 2) == 1 && *(result + 4) == 1)
  {
    v9 = v2;
    v10 = v3;
    v6 = result;
    v8 = 0;
    sub_233726998(&v7, &v8);
    result = sub_233754BB0(v6, &v7);
    if (result == 1)
    {
      *(a2 + 1348) = 1;
    }
  }

  return result;
}

void sub_2338FCF0C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "DNGJPEGXLBayerUnpacker: deinterleaving would cause OOB access, maxSrcIndex=%llu, bufferSize=%llu", &v3, 0x16u);
}

void sub_2338FCF94(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = (*(*a1 + 16))(a1);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_23371F000, a2, OS_LOG_TYPE_ERROR, "DNGJPEGXLBayerUnpacker: SafeInt overflow in deinterleaving: %s", &v4, 0xCu);
}

void sub_2338FD040(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 80);
  v5 = *(a1 + 84);
  v6 = (*(*a2 + 16))(a2);
  v7[0] = 67109634;
  v7[1] = v4;
  v8 = 1024;
  v9 = v5;
  v10 = 2080;
  v11 = v6;
  _os_log_error_impl(&dword_23371F000, a3, OS_LOG_TYPE_ERROR, "DNGJPEGXLBayerUnpacker: unpackTile failed for tile at (%u, %u): %s", v7, 0x18u);
}

void sub_2338FD114(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_233857B14(a1, v1);
  }
}

void sub_2338FD13C(void *a1, uint64_t a2, uint64_t a3, double **a4)
{
  if (a1)
  {
    operator delete(a1);
  }

  v6 = *a4;
  v7 = a4[1];
  if (*a4 != v7)
  {
    v8 = (a3 + 12);
    v9 = *a4;
    do
    {
      v10 = *v9++;
      v11 = v10;
      *v8 = v11;
      v8 += 4;
    }

    while (v9 != v7);
  }

  if (v6)
  {
    operator delete(v6);
  }
}

void sub_2338FD1AC()
{
  if (__cxa_guard_acquire(byte_280C04EC0))
  {
    byte_280C04EB8 = getenv("RAWCAMERA_ENABLE_INFO_OVERLAY") != 0;

    __cxa_guard_release(byte_280C04EC0);
  }
}

uint64_t *sub_2338FD208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_2337239E8(v6);
  }

  v7 = *a3;
  if (*a3)
  {
    *(a3 + 8) = v7;
    operator delete(v7);
  }

  return sub_233725FD4(a4);
}

void sub_2338FD250()
{
  if (__cxa_guard_acquire(byte_280C04D98))
  {
    byte_27DE37C58 = getenv("RAWCAMERA_ENABLE_PRELIMINARY_SUPPORT") != 0;

    __cxa_guard_release(byte_280C04D98);
  }
}

void sub_2338FD2B4()
{
  if (__cxa_guard_acquire(byte_280C04EE0))
  {
    qword_280C04ED8 = dispatch_queue_create("CoreAnalytics Logging", 0);

    __cxa_guard_release(byte_280C04EE0);
  }
}

void sub_2338FD324()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2337463C0();
  _os_log_error_impl(&dword_23371F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", v1, 0x16u);
}

void sub_2338FD3A8()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2337463C0();
  _os_log_error_impl(&dword_23371F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", v1, 0x16u);
}

void sub_2338FD42C(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWLinearSpacePlaceholder outputImage]";
  v3 = 2080;
  v4 = "[RAWLinearSpacePlaceholder outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD4BC()
{
  v6 = 136446466;
  sub_2337463C0();
  sub_2337463D4(&dword_23371F000, v0, v1, "%{public}s Caught exception in %s", v2, v3, v4, v5, v6);
}

void sub_2338FD534()
{
  v6 = 136446466;
  sub_2337463C0();
  sub_2337463D4(&dword_23371F000, v0, v1, "%{public}s Caught exception in %s", v2, v3, v4, v5, v6);
}

void sub_2338FD5AC()
{
  v6 = 136446466;
  sub_2337463C0();
  sub_2337463D4(&dword_23371F000, v0, v1, "%{public}s Caught exception in %s", v2, v3, v4, v5, v6);
}

void sub_2338FD624(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWHueMagnet outputImage]";
  v3 = 2080;
  v4 = "[RAWHueMagnet outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD6B4(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWReduceNoise outputImage]";
  v3 = 2080;
  v4 = "[RAWReduceNoise outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD744(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWTemperatureAdjust outputImage]";
  v3 = 2080;
  v4 = "[RAWTemperatureAdjust outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD7D4(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWAdjustExposureAndBias outputImage]";
  v3 = 2080;
  v4 = "[RAWAdjustExposureAndBias outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD864(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWVignetteRadial outputImage]";
  v3 = 2080;
  v4 = "[RAWVignetteRadial outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD8F4(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWConvert outputImage]";
  v3 = 2080;
  v4 = "[RAWConvert outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2338FD984(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWDefringeFilter outputImage]";
  v3 = 2080;
  v4 = "[RAWDefringeFilter outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void *sub_2338FDA14(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (result)
  {
    result = __dynamic_cast(result, &unk_28492EBB0, &unk_2849312A8, 0);
    if (result)
    {
      if (a7)
      {
        v10 = *(a4 + 4);
        if ((v10 - 1000001) >= 0xFFF0BDC0)
        {
          LODWORD(v11) = *(a4 + 8);
          v12 = bswap32(v11);
          if (a6)
          {
            v11 = v12;
          }

          else
          {
            v11 = v11;
          }

          result[19] = v11;
          result[20] = v10;
        }
      }
    }
  }

  return result;
}

double sub_2338FDAC4(uint64_t a1, double result, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(a5 + 4) >= 4u)
  {
    v24 = 0u;
    v25 = 0u;
    LODWORD(v10) = *(a5 + 8);
    v11 = bswap32(v10);
    v10 = a7 ? v11 : v10;
    if (sub_2338A9730(a1, &v24, 32, a6, v10) == 32)
    {
      if (a7)
      {
        v16 = *(a5 + 4);
        if (v16)
        {
          v17 = &v24;
          do
          {
            *v17 = bswap32(*v17);
            ++v17;
            --v16;
          }

          while (v16);
        }
      }

      LODWORD(v12) = DWORD1(v24);
      LODWORD(result) = v24;
      *&v18 = v12;
      v19 = *&result / *&v18;
      LODWORD(v13) = HIDWORD(v24);
      LODWORD(v18) = DWORD2(v24);
      *&v20 = v13;
      v21 = v18 / *&v20;
      LODWORD(v14) = DWORD1(v25);
      LODWORD(v20) = v25;
      *&v22 = v14;
      v23 = v20 / *&v22;
      LODWORD(v15) = HIDWORD(v25);
      LODWORD(v22) = DWORD2(v25);
      sub_2338ACBFC(a1, v19, v21, v23, v22 / v15);
    }
  }

  return result;
}

void sub_2338FDBD8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = *(a4 + 2);
  if (v11 > 0x6F)
  {
    v12 = 0;
    v14 = 1;
  }

  else
  {
    v12 = qword_233916070[*(a4 + 2)];
    v13 = v11 == 3 || v11 == 8;
    v14 = !v13;
  }

  v15 = v12 * *(a4 + 4);
  if (v15 <= 0x28)
  {
    sub_2338B23D8();
    if (v15 < 5)
    {
      if ((v14 | a6 ^ 1))
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    v17 = *(a4 + 8);
    v18 = bswap32(v17);
    if (a6)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    v20 = sub_2338A9730(a1, v23, v15, a5, v19);
    v21 = a6 ^ 1;
    if (v20 != v15)
    {
      v21 = 1;
    }

    if (((v21 | v14) & 1) == 0)
    {
      v16 = *(a4 + 4);
LABEL_18:
      if (v16)
      {
        do
        {
          sub_2338B23B8();
        }

        while (!v13 & v22);
      }
    }
  }

LABEL_20:
}

void sub_2338FDD20()
{
  sub_2338B23E8();
  v35[5] = *MEMORY[0x277D85DE8];
  v5 = v4;
  v6 = *(v2 + 2);
  if (v6 > 0x6F)
  {
    v7 = 0;
    v9 = 1;
  }

  else
  {
    v7 = qword_233916070[*(v2 + 2)];
    v8 = v6 == 3 || v6 == 8;
    v9 = !v8;
  }

  v10 = v7 * *(v2 + 4);
  if (v10 <= 0x28)
  {
    sub_2338B23D8();
    v18 = *(v2 + 8);
    if (v10 < 5)
    {
      LODWORD(v35[0]) = *(v2 + 8);
    }

    else
    {
      v19 = bswap32(v18);
      if (v3)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      if (sub_2338B2420(v11, v12, v13, v14, v20, v15, v16, v17, v35[0]) != v10)
      {
        goto LABEL_26;
      }
    }

    if (((v9 | v3 ^ 1) & 1) == 0 && *(v2 + 4))
    {
      do
      {
        sub_2338B23B8();
      }

      while (!v8 & v21);
    }

    v22 = sub_2338A9B94(v1);
    v23 = sub_2338A9BFC(v0);
    v24 = sub_2338A9B78(v0);
    v25 = sub_2338AE880(v22, v23, v24);

    if (v10)
    {
      v26 = v25;
    }

    else
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      sub_2338A9B94(v1);
      objc_claimAutoreleasedReturnValue();
      v27 = sub_2338B2400();
      v28 = sub_2338A9BFC(v27);
      sub_2338A9B78(v0);
      objc_claimAutoreleasedReturnValue();
      v29 = sub_2338B240C();
      v32 = sub_2338AD358(v29, v30, v31);

      v33 = 0;
      v34 = 0;
      do
      {
        [MEMORY[0x277CCABB0] numberWithInt:{*(v35 + v33), v35[0]}];
        objc_claimAutoreleasedReturnValue();
        [sub_2338B2400() addObject:v1];

        v33 = ++v34;
      }

      while (v10 > v34);
    }
  }

LABEL_26:
}

void sub_2338FDF90()
{
  sub_2338B23E8();
  v30[5] = *MEMORY[0x277D85DE8];
  v5 = v4;
  v6 = *(v2 + 2);
  if (v6 > 0x6F)
  {
    v7 = 0;
    v9 = 1;
  }

  else
  {
    v7 = qword_233916070[*(v2 + 2)];
    v8 = v6 == 3 || v6 == 8;
    v9 = !v8;
  }

  v10 = v7 * *(v2 + 4);
  if (v10 <= 0x28)
  {
    sub_2338B23D8();
    v18 = *(v2 + 8);
    if (v10 >= 5)
    {
      v19 = bswap32(v18);
      if (v3)
      {
        v20 = v19;
      }

      else
      {
        v20 = v18;
      }

      if (sub_2338B2420(v11, v12, v13, v14, v20, v15, v16, v17, v30[0]) != v10)
      {
        goto LABEL_22;
      }
    }

    else
    {
      LODWORD(v30[0]) = *(v2 + 8);
    }

    if (((v9 | v3 ^ 1) & 1) == 0 && *(v2 + 4))
    {
      do
      {
        sub_2338B23B8();
      }

      while (!v8 & v21);
    }

    if (v10 >= 5)
    {
      sub_2338A9B94(v1);
      objc_claimAutoreleasedReturnValue();
      v22 = sub_2338B2400();
      v23 = sub_2338A9BFC(v22);
      sub_2338A9B78(v0);
      objc_claimAutoreleasedReturnValue();
      v24 = sub_2338B240C();
      v27 = sub_2338AD358(v24, v25, v26);

      v28 = 4;
      v29 = 4;
      do
      {
        [MEMORY[0x277CCABB0] numberWithInt:{*(v30 + v28), v30[0]}];
        objc_claimAutoreleasedReturnValue();
        [sub_2338B2400() addObject:v1];

        v28 = ++v29;
      }

      while (v10 > v29);
    }
  }

LABEL_22:
}

uint64_t sub_2338FE234(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
    v2 = *a1;
    if (v2 == 77)
    {
      if (a1[1] == 77 && !a1[2] && a1[3] == 42 && a1[8] == 186 && a1[9] == 176 && a1[10] == 172 && a1[11] == 187)
      {
        return 1;
      }
    }

    else if (v2 == 73 && a1[1] == 73 && a1[2] == 42 && !a1[3] && a1[8] == 67 && a1[9] == 82 && a1[10] == 2 && !a1[11])
    {
      return 1;
    }
  }

  return 0;
}

void sub_2338FE300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = *(a4 + 4);
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

  v12 = *(a4 + 2);
  if (v12 > 0x6F)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_2339165C0[v12];
  }

  v31 = 0;
  v14 = v13 * v8;
  v30 = 0;
  sub_2338B8334(a1);
  sub_2338BB998();
  v18 = v18 || v15 == -2147483255;
  if (!v18)
  {
    if (v14 < 6)
    {
      return;
    }

    v15 = sub_2338BBA90(v15, &v31, v16, v17, v11 + 4);
    if (v15 == 2)
    {
      sub_2338BB9F0();
      LOWORD(v31) = v26;
      v26 = (v26 & 0x8000u) == 0 ? v26 : -v26;
      if (v26 <= 0xF)
      {
        v27 = sub_2338A9B94(a1);
        v28 = sub_2338A9BFC(a3);
        v29 = [MEMORY[0x277CCABB0] numberWithInt:v31];
        sub_2337830C4(v27, v28, *MEMORY[0x277CD3150], v29);
      }
    }
  }

  if (v14 < 0x16)
  {
    if (v14 < 8)
    {
      return;
    }
  }

  else
  {
    v15 = sub_2338BBA90(v15, &v31 + 2, v16, v17, v11 + 20);
    if (v15 == 2)
    {
      sub_2338BB9F0();
      HIWORD(v31) = v19;
      v20 = sub_2338A9B94(a1);
      v21 = [MEMORY[0x277CCABB0] numberWithInt:HIWORD(v31)];
      sub_2337830C4(v20, @"{PictStyleNormalized}", @"PictureStyle", v21);
    }
  }

  if (sub_2338BBA90(v15, &v30, v16, v17, v11 + 6) == 2)
  {
    sub_2338BB9F0();
    v30 = v22;
    v23 = sub_2338A9B94(a1);
    v24 = sub_2338A9BFC(a3);
    v25 = [MEMORY[0x277CCABB0] numberWithInt:v30];
    sub_2337830C4(v23, v24, @"SharpnessFreq", v25);
  }
}

void sub_2338FE594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v118 = *MEMORY[0x277D85DE8];
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

  v12 = *(a4 + 2);
  if (v12 > 0x6F)
  {
    v13 = 0;
  }

  else
  {
    v13 = qword_2339165C0[v12];
  }

  v14 = *(a4 + 4);
  v115 = 0;
  v116 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  if (sub_2338B8334(a1) == -2147483647)
  {
    v106 = 0;
    v95 = 0;
    sub_2338BB9E4();
    v6 = 65;
    v16 = 66;
    sub_2338BB9D8();
    v17 = 75;
LABEL_45:
    sub_2338BBAC0();
    sub_2338BBA04();
    sub_2338BB944();
    v100 = 1;
    v101 = v26;
LABEL_48:
    v96 = 0xFFFFFFFFLL;
    v23 = 1;
    goto LABEL_49;
  }

  sub_2338BB998();
  if (v15)
  {
    sub_2338BB974();
    v103 = 0;
    sub_2338BBA34();
    v93 = 87;
    v24 = 85;
    goto LABEL_37;
  }

  sub_2338BB998();
  if (!v15)
  {
    sub_2338BB998();
    if (v15)
    {
      goto LABEL_27;
    }

    sub_2338BB998();
    if (v15)
    {
      sub_2338BB974();
      sub_2338BBA34();
      v18 = 2355;
      goto LABEL_39;
    }

    sub_2338BB998();
    if (v15)
    {
LABEL_27:
      v100 = 0;
      v95 = 0;
      sub_2338BB9E4();
      v99 = 110;
      v98 = 111;
      v97 = 115;
      v16 = 114;
      sub_2338BB9D8();
      v17 = 108;
      goto LABEL_47;
    }

    sub_2338BB998();
    if (v15)
    {
      sub_2338BB974();
      sub_2338BBA34();
      v18 = 2347;
      goto LABEL_39;
    }

    sub_2338BB998();
    if (v15)
    {
      v92 = 0;
      v100 = 0;
      v101 = 0;
      v106 = 0;
      sub_2338BB9E4();
      v96 = 23;
      v91 = 208;
      sub_2338BB9D8();
      v17 = 108;
      sub_2338BBAC0();
      v16 = 0xFFFFFFFFLL;
      sub_2338BB944();
      sub_2338BBA74();
LABEL_49:
      v105 = v23;
      v94 = 0xFFFFFFFFLL;
      v93 = 0xFFFFFFFFLL;
      goto LABEL_50;
    }

    sub_2338BB998();
    if (!v15)
    {
      sub_2338BB998();
      if (v15)
      {
        goto LABEL_32;
      }

      sub_2338BB998();
      if (!v15)
      {
        sub_2338BB998();
        if (v15)
        {
LABEL_35:
          sub_2338BB974();
          v103 = 0;
          sub_2338BBA34();
          v93 = 86;
          v24 = 84;
LABEL_37:
          v94 = v24;
          v96 = 25;
          v17 = 0xFFFFFFFFLL;
          sub_2338BB9D8();
LABEL_42:
          sub_2338BBA04();
          goto LABEL_43;
        }

        sub_2338BB998();
        if (v15)
        {
          sub_2338BB960();
          v93 = 82;
          sub_2338BB9A4();
          v17 = 171;
          goto LABEL_41;
        }

        sub_2338BB998();
        if (!v15)
        {
          sub_2338BB998();
          if (!v15)
          {
            sub_2338BB998();
            if (!v15)
            {
              sub_2338BB998();
              if (!v15)
              {
                sub_2338BB998();
                if (!v15)
                {
                  return;
                }

                v106 = 0;
                v95 = 0;
                sub_2338BB9E4();
                v6 = 71;
                v16 = 72;
                sub_2338BB9D8();
                v17 = 81;
                goto LABEL_45;
              }

              goto LABEL_35;
            }

            sub_2338BB960();
            v93 = 86;
            sub_2338BB9A4();
            v17 = 176;
LABEL_41:
            sub_2338BBAC0();
            goto LABEL_42;
          }

LABEL_32:
          sub_2338BB960();
          v93 = 82;
          sub_2338BB9A4();
          v17 = 167;
          goto LABEL_41;
        }

        sub_2338BB974();
        sub_2338BBA34();
        v18 = 2359;
LABEL_39:
        sub_2338BBA40();
        v17 = 0xFFFFFFFFLL;
        sub_2338BB9D8();
        sub_2338BBA04();
        v16 = 0xFFFFFFFFLL;
        sub_2338BB944();
        sub_2338BBA74();
        v103 = v25;
        goto LABEL_51;
      }

      v100 = 0;
      v95 = 0;
      sub_2338BB9E4();
      v99 = 118;
      v98 = 119;
      v97 = 117;
      v16 = 116;
      sub_2338BB9D8();
      v17 = 115;
LABEL_47:
      sub_2338BBAC0();
      sub_2338BBA04();
      v101 = 1;
      v106 = 1;
      v6 = 0xFFFFFFFFLL;
      goto LABEL_48;
    }
  }

  v90 = 0;
  sub_2338BB960();
  sub_2338BBA40();
  v91 = 0xFFFFFFFFLL;
  v89 = 374;
  v17 = 134;
  v92 = 1;
LABEL_43:
  v16 = 0xFFFFFFFFLL;
  sub_2338BB944();
  sub_2338BBA74();
LABEL_50:
  v18 = 0xFFFFFFFFLL;
LABEL_51:
  v27 = v13 * v14;
  if (v13 * v14 >= (v22 + 2))
  {
    v19 = sub_2338A9730(a1, &v115, 2, a5, v22 + v11);
    if (v19 == 2)
    {
      sub_2338BB984();
      if (v15)
      {
        v28 = v29;
      }

      LOWORD(v115) = v28;
      if ((v28 - 1) <= 0xFFFDu)
      {
        v30 = sub_2338A9B94(a1);
        v14 = [MEMORY[0x277CCABB0] numberWithInt:v115];
        sub_2338BBA5C(v14, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F68]);

        if ((v103 & 1) == 0)
        {
          goto LABEL_63;
        }

LABEL_60:
        v19 = sub_2338A9730(a1, v117, 64, a5, v18 + v11);
        if (v19 <= 0x40)
        {
          v117[v19] = 0;
          v19 = sub_2338A9524(a1, v117);
          if ((v19 & 1) == 0)
          {
            v31 = sub_2338A9B94(a1);
            v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v117];
            sub_2338BBA5C(v14, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F78]);
          }
        }

        goto LABEL_63;
      }
    }
  }

  if (v103)
  {
    goto LABEL_60;
  }

LABEL_63:
  v117[0] = 0;
  v32 = v102;
  if (v27 <= v17)
  {
    v32 = 0;
  }

  if (v32 == 1)
  {
    v19 = sub_2338BB9BC(v19, v117, v20, v21, v17 + v11);
    if (v19 == 1)
    {
      v33 = sub_2338A9B94(a1);
      v14 = [MEMORY[0x277CCABB0] numberWithInt:v117[0]];
      sub_2338BBA5C(v14, @"{PictStyleNormalized}", @"PictureStyle");
    }
  }

  v111 = 0;
  v34 = v101;
  if (v27 <= v16)
  {
    v34 = 0;
  }

  if (v34 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v111, v20, v21, v16 + v11);
    if (v19 == 1)
    {
      v35 = v111;
      if (v111 < 0)
      {
        v35 = -v111;
      }

      if (v35 <= 0xF)
      {
        v36 = sub_2338A9B94(a1);
        [MEMORY[0x277CCABB0] numberWithInt:v111];
        objc_claimAutoreleasedReturnValue();
        sub_2338BBA84();
        sub_2338BBA5C(v37, v38, *MEMORY[0x277CD3150]);
      }
    }
  }

  v110 = 0;
  v39 = v100;
  if (v27 <= v6)
  {
    v39 = 0;
  }

  if (v39 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v110, v20, v21, v6 + v11);
    if (v19 == 1)
    {
      v40 = sub_2338A9B94(a1);
      [MEMORY[0x277CCABB0] numberWithInt:v110];
      objc_claimAutoreleasedReturnValue();
      sub_2338BBA84();
      sub_2338BBA5C(v41, v42, @"SharpnessFreq");
    }
  }

  v109 = 0;
  v43 = v106;
  if (v27 <= v99)
  {
    v43 = 0;
  }

  if (v43 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v109, v20, v21, v99 + v11);
    if (v19 == 1)
    {
      v44 = v109;
      if (v109 < 0)
      {
        v44 = -v109;
      }

      if (v44 <= 0xF)
      {
        v45 = sub_2338A9B94(a1);
        [MEMORY[0x277CCABB0] numberWithInt:v109];
        objc_claimAutoreleasedReturnValue();
        sub_2338BBA84();
        sub_2338BBA5C(v46, v47, *MEMORY[0x277CD3128]);
      }
    }
  }

  v108 = 0;
  v48 = v106;
  if (v27 <= v98)
  {
    v48 = 0;
  }

  if (v48 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v108, v20, v21, v98 + v11);
    if (v19 == 1)
    {
      v49 = sub_2338A9B94(a1);
      [MEMORY[0x277CCABB0] numberWithInt:v108];
      objc_claimAutoreleasedReturnValue();
      sub_2338BBA84();
      sub_2338BBA5C(v50, v51, @"ColorTone");
    }
  }

  v107 = 0;
  v52 = v106;
  if (v27 <= v97)
  {
    v52 = 0;
  }

  if (v52 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v107, v20, v21, v97 + v11);
    if (v19 == 1)
    {
      v53 = sub_2338A9B94(a1);
      [MEMORY[0x277CCABB0] numberWithInt:v107];
      objc_claimAutoreleasedReturnValue();
      sub_2338BBA84();
      sub_2338BBA5C(v54, v55, *MEMORY[0x277CD3018]);
    }
  }

  v56 = v95;
  if (v27 <= v96)
  {
    v56 = 0;
  }

  v57 = MEMORY[0x277CD33B8];
  if (v56 == 1)
  {
    v19 = sub_2338BB9BC(v19, &v114, v20, v21, v96 + v11);
    if (v19 == 1)
    {
      v58 = sub_2338A9B94(a1);
      v59 = [MEMORY[0x277CCABB0] numberWithInt:v114 - 128];
      sub_2338BBA5C(v59, *v57, @"CameraTemperatur");
    }
  }

  v60 = v105;
  if (v27 < v94 + 2)
  {
    v60 = 1;
  }

  if ((v60 & 1) == 0)
  {
    v19 = sub_2338BBA14(v19, &v113);
    if (v19 == 2)
    {
      sub_2338BB984();
      if (v15)
      {
        v61 = v62;
      }

      v113 = v61;
      v63 = sub_2338A9B94(a1);
      LOWORD(v64) = v113;
      *&v65 = sub_2338BBAAC(v64);
      v67 = [v66 numberWithFloat:v65];
      sub_2338BBA5C(v67, *v57, @"FocusDistanceUpper");
    }
  }

  v68 = v105;
  if (v27 < v93 + 2)
  {
    v68 = 1;
  }

  if ((v68 & 1) == 0)
  {
    v19 = sub_2338BBA14(v19, &v112);
    if (v19 == 2)
    {
      sub_2338BB984();
      if (v15)
      {
        v69 = v70;
      }

      v112 = v69;
      v71 = sub_2338A9B94(a1);
      LOWORD(v72) = v112;
      *&v73 = sub_2338BBAAC(v72);
      v75 = [v74 numberWithFloat:v73];
      sub_2338BBA5C(v75, *v57, @"FocusDistanceLower");
    }
  }

  v76 = v92;
  if (v27 < v91 + 2)
  {
    v76 = 1;
  }

  if ((v76 & 1) != 0 || sub_2338BBA14(v19, &v115 + 2) != 2)
  {
    v77 = 0;
  }

  else
  {
    sub_2338BB984();
    if (!v15)
    {
      LOWORD(v77) = v78;
    }

    v77 = v77;
    v116 = v77;
  }

  v79 = v90;
  if (v27 < v89 + 4)
  {
    v79 = 1;
  }

  if ((v79 & 1) == 0)
  {
    v80 = sub_2338A9730(a1, &v116, 4, a5, v89 + v11);
    v77 = v116;
    if (v80 == 4)
    {
      v81 = bswap32(v116);
      if (a6)
      {
        v77 = v81;
      }

      v116 = v77;
    }
  }

  if (v77 >= 2)
  {
    v82 = sub_2338A9B94(a1);
    v83 = *MEMORY[0x277CD2F50];
    v84 = *MEMORY[0x277CD2F60];
    v85 = sub_2338AE900(v82, *MEMORY[0x277CD2F50], *MEMORY[0x277CD2F60]);

    v86 = v116;
    if (v116 > v85)
    {
      v87 = sub_2338A9B94(a1);
      v88 = [MEMORY[0x277CCABB0] numberWithInt:v86];
      sub_2337830C4(v87, v83, v84, v88);
    }
  }
}

void sub_2338FF1E4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v62 = a2;
  v10 = *(a4 + 4);
  v11 = *(a4 + 2);
  if (v11 > 0x6F)
  {
    v12 = 0;
  }

  else
  {
    v12 = qword_2339165C0[v11];
  }

  if ((v12 * v10) > 0x4000)
  {
    goto LABEL_90;
  }

  sub_233726154(&v70, v12 * v10);
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

  v16 = sub_2338A9730(a1, v70, v71 - v70, a5, v15);
  v17 = v70;
  if (v16 == v71 - v70)
  {
    v18 = sub_2338B8334(a1);
    if (v16 >= 8)
    {
      v19 = *v70;
      v20 = 88;
      if ((v19 | 0x40) == 0xFF)
      {
        v21 = 0;
        goto LABEL_11;
      }

      if (v19 >= 0x91)
      {
        v28 = 0;
      }

      else
      {
        v28 = 130;
      }

      if (v19 >= 0x91)
      {
        LODWORD(v20) = 88;
      }

      else
      {
        LODWORD(v20) = 69;
      }

      if (v19 >= 0x82)
      {
        v29 = v28;
      }

      else
      {
        v29 = 95;
      }

      if (v19 < 0x82)
      {
        LODWORD(v20) = 68;
      }

      if (v19 >= 0x5F)
      {
        v30 = v29;
      }

      else
      {
        v30 = 62;
      }

      if (v19 < 0x5F)
      {
        LODWORD(v20) = 67;
      }

      if (v19 >= 0x3E)
      {
        v31 = v30;
      }

      else
      {
        v31 = 31;
      }

      if (v19 < 0x3E)
      {
        LODWORD(v20) = 66;
      }

      if (v19 >= 0x1F)
      {
        v21 = v31;
      }

      else
      {
        v21 = 2;
      }

      if (v19 >= 0x1F)
      {
        v20 = v20;
      }

      else
      {
        v20 = 65;
      }

      if (v21 <= v19)
      {
LABEL_11:
        v60 = v18;
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c%.2d", v20, (v19 - v21) >> 1];
        v23 = v22;
        v24 = 0;
        for (i = 0; ; ++i)
        {
          v26 = sub_2338B9DE0(v22, i);

          if (!v26)
          {
            break;
          }

          v27 = [v26 substringWithRange:{0, 3}];
          if (!sub_2338BA75C(v23, v27, 0))
          {
            if ((i & 0x40) != 0)
            {
              v32 = 0;
            }

            else
            {
              v32 = 1 << i;
            }

            if ((i & 0x40) != 0)
            {
              v33 = 1 << i;
            }

            else
            {
              v33 = 0;
            }

            sub_2338B11B8(a1, v32, v33, 0);

            break;
          }

          v24 = v26;
        }

        v61 = a1;
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v37 = 0;
        while (sub_2338B9D7C(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", v36))
        {
          v38 = sub_2338B9D7C(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", v36 + 6);
          v39 = sub_2338B9D7C(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", v36 + 9);
          v40 = sub_2338B9D7C(@"A01 = 1 04  A02 = 1 08  A03 = 1 10  A04 = 1 20  A05 = 1 40  A06 = 1 80  A07 = 2 01  B01 = 2 08  B02 = 2 10  B03 = 2 20  B04 = 2 40  B05 = 2 80  B06 = 3 01  B07 = 3 02  B08 = 3 04  B09 = 3 08  B10 = 3 10  C01 = 3 20  C02 = 3 40  C03 = 3 80  C04 = 4 01  C05 = 4 02  C06 = 4 04  C07 = 4 08  C08 = 4 10  C09 = 4 20  C10 = 4 40  C11 = 4 80  D01 = 5 01  D02 = 5 02  D03 = 5 04  D04 = 5 08  D05 = 5 10  D06 = 5 20  D07 = 5 40  D08 = 5 80  D09 = 6 01  D10 = 6 02  E01 = 6 10  E02 = 6 20  E03 = 6 40  E04 = 6 80  E05 = 7 01  E06 = 7 02  E07 = 7 04  ", v36 + 8);
          v41 = (v38 - 48);
          if (v41 < v16 && ((v39 + 16 * v40 + 208) & v70[v41]) != 0)
          {
            v42 = 1 << v37;
            if ((v37 & 0x40) != 0)
            {
              v43 = 0;
            }

            else
            {
              v43 = 1 << v37;
            }

            if ((v37 & 0x40) == 0)
            {
              v42 = 0;
            }

            v35 |= v42;
            v34 |= v43;
          }

          v36 += 12;
          ++v37;
        }

        sub_2338B1254(v61, v34, v35, 0);
        v44 = sub_2338AC594(v61, 0, 0, sub_2338BA7E8);
        v45 = 0;
        v69[0] = 0;
        v69[1] = 0;
        LODWORD(v68) = 0;
        while (1)
        {
          v46 = sub_2338B9DE0(v44, v45);
          v47 = sub_2338B9BF8(v46, v60, v46, v69, &v68);

          if (!v47)
          {
            break;
          }

          v45 = (v45 + 1);
        }

        __p = 0;
        v66 = 0;
        v67 = 0;
        v64 = 0;
        if (v45)
        {
          v48 = 0;
          do
          {
            v63 = 0uLL;
            v49 = sub_2338B9DE0(v44, v48);
            v50 = sub_2338B9BF8(v49, v60, v49, &v63, &v64);

            v51 = v48;
            if (v50)
            {
              v52 = v66;
              if (v66 >= v67)
              {
                v54 = (v66 - __p) >> 4;
                v55 = v54 + 1;
                if ((v54 + 1) >> 60)
                {
                  sub_2337235BC();
                }

                v56 = v67 - __p;
                if ((v67 - __p) >> 3 > v55)
                {
                  v55 = v56 >> 3;
                }

                if (v56 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v57 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v57 = v55;
                }

                if (v57)
                {
                  sub_23377FC40(&__p, v57);
                }

                v58 = (16 * v54);
                *v58 = v63;
                v53 = 16 * v54 + 16;
                v59 = (16 * v54 - (v66 - __p));
                memcpy(v58 - (v66 - __p), __p, v66 - __p);
                v44 = __p;
                __p = v59;
                v66 = v53;
                v67 = 0;
                if (v44)
                {
                  operator delete(v44);
                }
              }

              else
              {
                *v66 = v63;
                v53 = (v52 + 16);
              }

              v66 = v53;
              v51 = v45;
            }

            v48 = (v48 + 1);
            v45 = v51;
          }

          while (v48 < v51);
          if (v51)
          {
            sub_2338B1160(v61, &__p, 0);
            sub_2338B1194(v61, &v64, 0);
          }
        }

        if (__p)
        {
          v66 = __p;
          operator delete(__p);
        }
      }
    }

    v17 = v70;
  }

  if (v17)
  {
    v71 = v17;
    operator delete(v17);
  }

LABEL_90:
}

void sub_2338FF6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  v24 = *(v22 - 104);
  if (v24)
  {
    *(v22 - 96) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2338FF798(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 < 4)
  {
    goto LABEL_19;
  }

  v6 = *a1;
  if (v6 == 77)
  {
    if (a1[1] != 77)
    {
      goto LABEL_19;
    }

    if (a1[2])
    {
      goto LABEL_19;
    }

    if (a1[3] != 42)
    {
      goto LABEL_19;
    }

    v10 = bswap32(*(a1 + 1));
    v8 = (v10 + 2);
    if (v8 > a2)
    {
      goto LABEL_19;
    }

    v7 = (v10 + 1);
    v9 = 1;
    v11 = v10;
  }

  else
  {
    if (v6 != 73)
    {
      goto LABEL_19;
    }

    if (a1[1] != 73)
    {
      goto LABEL_19;
    }

    if (a1[2] != 42)
    {
      goto LABEL_19;
    }

    if (a1[3])
    {
      goto LABEL_19;
    }

    v7 = *(a1 + 1);
    v8 = (v7 + 2);
    if (v8 > a2)
    {
      goto LABEL_19;
    }

    v9 = 0;
    v10 = (v7 + 1);
    v11 = *(a1 + 1);
  }

  v12 = a1[v7] | (a1[v10] << 8);
  if ((v8 + 12 * v12) <= a2 && v12 != 0)
  {
    v16 = &a1[v11 + 3];
    while (1)
    {
      if (v9)
      {
        if (*(v16 - 1) != 134)
        {
          goto LABEL_27;
        }

        v17 = *v16;
      }

      else
      {
        if (*v16 != 134)
        {
          goto LABEL_27;
        }

        v17 = *(v16 - 1);
      }

      if (v17 == 6)
      {
        v14 = 1;
        goto LABEL_20;
      }

LABEL_27:
      v14 = 0;
      --v12;
      v16 += 12;
      if (!v12)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v14 = 0;
LABEL_20:

  return v14;
}

void sub_2338FF8E0()
{
  if (__cxa_guard_acquire(byte_280C04EF0))
  {
    v0 = os_log_create("com.apple.rawcamera", "general");
    v1 = sub_23378E148(v0, &qword_280C04EE8);

    __cxa_guard_release(v1);
  }
}

void sub_2338FF93C()
{
  if (__cxa_guard_acquire(byte_280C04F00))
  {
    v0 = os_log_create("com.apple.rawcamera", "mobileasset");
    v1 = sub_23378E148(v0, &qword_280C04EF8);

    __cxa_guard_release(v1);
  }
}

void sub_2338FF998()
{
  if (__cxa_guard_acquire(byte_280C04F10))
  {
    v0 = os_log_create("com.apple.rawcamera", "render");
    v1 = sub_23378E148(v0, &qword_280C04F08);

    __cxa_guard_release(v1);
  }
}

void sub_2338FF9F4()
{
  if (__cxa_guard_acquire(byte_280C04F30))
  {
    v0 = os_log_create("com.apple.rawcamera", "compile");
    v1 = sub_23378E148(v0, &qword_280C04F28);

    __cxa_guard_release(v1);
  }
}

uint64_t *sub_2338FFA78(int a1, unsigned int *a2, uint64_t *a3, BOOL *a4)
{
  v4 = a1 == 4 && bswap32(*a2) == 5067341;
  *a4 = v4;
  return sub_233725FD4(a3);
}

uint64_t sub_2338FFABC(uint64_t a1, int a2, uint64_t a3)
{
  result = a3;
  if ((a3 + 3) <= 6)
  {
    if (a2 - 2) <= 9 && ((0x2CFu >> (a2 - 2)))
    {
      return sub_2338C7F4C(a3 + 3);
    }

    else
    {
      return (a3 + 3);
    }
  }

  return result;
}

uint64_t sub_2338FFAF8(uint64_t a1, int a2, uint64_t a3)
{
  result = a3;
  if ((a3 + 3) <= 6)
  {
    if (a2 - 2) <= 7 && ((0xCFu >> (a2 - 2)))
    {
      return sub_2338C7F4C(a3 + 3);
    }

    else
    {
      return (a3 + 3);
    }
  }

  return result;
}

uint64_t sub_2338FFB34(uint64_t a1, _DWORD *a2, unint64_t a3, unsigned int a4, unsigned __int8 a5)
{
  if (a3 < 0xC)
  {
    return 0;
  }

  v18 = v5;
  v19 = v6;
  v10 = a2 + 1;
  *v16 = *a2;
  v17 = 0;
  result = atoi(v16);
  if (result >= 0xC9)
  {
    if (a4)
    {
      v12 = byte_2339173E8[a5];
      v13 = byte_2339173E8[((BYTE2(a4) ^ BYTE1(a4) ^ a4) ^ HIBYTE(a4)) + 256];
      v14 = a3 - 4;
      v15 = 96;
      do
      {
        v13 += v15 * v12;
        ++v15;
        *v10 ^= v13;
        v10 = (v10 + 1);
        --v14;
      }

      while (v14);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2338FFBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 4);
  v7 = *(a4 + 2);
  if (v7 > 0x6F)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_233917600[v7];
  }

  v9 = v8 * v6;
  if ((v8 * v6) <= 0x63)
  {
    sub_2338C7F58();
    if (sub_2338A9730(a1, v16, v9, v10, v11) == v9)
    {
      v16[v9] = 0;
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v16];
      v12 = sub_2338C3068(v15, off_2789F04C8, &v15);
      v13 = sub_2338A9B78(a3);
      v14 = v15;
      sub_2338AD018(a1, @"{PictureStyle}", v13, v15, v12, v12);

      if (v12 == 11)
      {
        sub_2338ACF60(a1, @"Monochrome", 1);
      }
    }
  }
}

double sub_2338FFD80(uint64_t a1, double result, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v27 = *MEMORY[0x277D85DE8];
  if (*(a5 + 4) >= 4u)
  {
    v25 = 0u;
    v26 = 0u;
    sub_2338C7F58();
    if (sub_2338A9730(v10, &v25, 32, v11, v12) == 32)
    {
      if (a7)
      {
        v17 = *(a5 + 4);
        if (v17)
        {
          v18 = &v25;
          do
          {
            *v18 = bswap32(*v18);
            ++v18;
            --v17;
          }

          while (v17);
        }
      }

      LODWORD(v13) = DWORD1(v25);
      LODWORD(result) = v25;
      *&v19 = v13;
      v20 = *&result / *&v19;
      LODWORD(v14) = HIDWORD(v25);
      LODWORD(v19) = DWORD2(v25);
      *&v21 = v14;
      v22 = v19 / *&v21;
      LODWORD(v15) = DWORD1(v26);
      LODWORD(v21) = v26;
      *&v23 = v15;
      v24 = v21 / *&v23;
      LODWORD(v16) = HIDWORD(v26);
      LODWORD(v23) = DWORD2(v26);
      sub_2338ACBFC(a1, v20, v22, v24, v23 / v16);
    }
  }

  return result;
}

BOOL sub_2338FFE88(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    v2 = *a1;
    if (v2 != 77)
    {
      return v2 == 73 && a1[1] == 73 && (a1[2] == 82 && a1[3] == 79 || a1[2] == 82 && a1[3] == 83);
    }

    if (a1[1] == 77 && a1[2] == 79 && a1[3] == 82)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2338FFF18(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    v2 = *a1;
    if (v2 == 77)
    {
      if (a1[1] == 77 && !a1[2] && a1[3] == 85)
      {
        return 1;
      }
    }

    else if (v2 == 73 && a1[1] == 73 && a1[2] == 85 && !a1[3])
    {
      return 1;
    }
  }

  return 0;
}

uint64_t *sub_2338FFF88(int a1, unsigned __int8 *a2, uint64_t *a3, char *a4)
{
  if (a1 != 4)
  {
    goto LABEL_15;
  }

  v4 = *a2;
  if (v4 == 77)
  {
    v5 = a2[1] == 77 && a2[2] == 0;
    if (!v5 || a2[3] != 85)
    {
      goto LABEL_15;
    }
  }

  else if (v4 != 73 || a2[1] != 73 || a2[2] != 85 || a2[3])
  {
LABEL_15:
    v6 = 0;
    goto LABEL_16;
  }

  v6 = 1;
LABEL_16:
  *a4 = v6;
  return sub_233725FD4(a3);
}

void sub_233900028()
{
  if (__cxa_guard_acquire(byte_280C04F60))
  {
    qword_280C04F58 = dispatch_queue_create("RawCameraSupport Queue", 0);

    __cxa_guard_release(byte_280C04F60);
  }
}

void sub_233900084()
{
  if (__cxa_guard_acquire(byte_280C04F80))
  {
    byte_280C04F78 = getenv("RAWCAMERA_USE_RAWCAMERASUPPORT") != 0;

    __cxa_guard_release(byte_280C04F80);
  }
}

void sub_2339000E0()
{
  if (__cxa_guard_acquire(byte_280C04F90))
  {
    qword_280C04F88 = dispatch_queue_create("RawCamera_Catalog_Access_Queue", 0);

    __cxa_guard_release(byte_280C04F90);
  }
}

void sub_233900150()
{
  sub_2338ED34C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2339001CC()
{
  if (__cxa_guard_acquire(byte_280C04FA0))
  {
    qword_280C04F98 = dispatch_queue_create("RawCamera_Update_MobileAsset_Catalog", 0);
    __cxa_guard_release(byte_280C04FA0);
  }
}

void sub_233900214()
{
  if (__cxa_guard_acquire(byte_280C04FB0))
  {
    qword_280C04FA8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, qword_280C04F98);
    __cxa_guard_release(byte_280C04FB0);
  }
}

void sub_23390026C()
{
  sub_2338ED34C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2339002E8()
{
  sub_2338ED34C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2339003E4()
{
  sub_2338ED36C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_233900460()
{
  sub_2338ED36C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_2339004DC()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  sub_2338ED36C();
  _os_log_debug_impl(&dword_23371F000, v0, OS_LOG_TYPE_DEBUG, "%{public}s No preinstalled asset available for %@", v1, 0x16u);
}

void sub_23390085C()
{
  sub_2338ED34C();
  sub_2338ED360();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_2339008D8(_DWORD *a1)
{
  if (!a1[10])
  {
    sub_23373C93C(a1);
    if (a1[10] == 1)
    {

      sub_2338EDD10(a1);
    }
  }
}

void sub_233900930(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWCropFilter outputImage]";
  v3 = 2080;
  v4 = "[RAWCropFilter outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_2339009C0(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWGainMap outputImage]";
  v3 = 2080;
  v4 = "[RAWGainMap outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

void sub_233900A50(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWLensCorrectionDNG outputImage]";
  v3 = 2080;
  v4 = "[RAWLensCorrectionDNG outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

BOOL sub_233900AE0(unsigned __int8 *a1, unint64_t a2)
{
  if (a2 < 0x10)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v7 = 42;
  result = sub_2338F9020(a1, a2, &v7);
  if (result)
  {
    v6 = *a1;
    if (v6 == 73)
    {
      if (a1[8] != 73 || a1[9] != 73 || a1[10] != 73 || a1[11] != 73 || a1[13] != 119 || a1[14] != 97 || a1[15] != 82)
      {
        return 0;
      }
    }

    else if (v6 != 77 || a1[8] != 77 || a1[9] != 77 || a1[10] != 77 || a1[11] != 77 || a1[12] != 82 || a1[13] != 97 || a1[14] != 119)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

void sub_233900BFC(os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = 136446466;
  v2 = "[RAWEdgeSharpen outputImage]";
  v3 = 2080;
  v4 = "[RAWEdgeSharpen outputImage]";
  _os_log_error_impl(&dword_23371F000, log, OS_LOG_TYPE_ERROR, "%{public}s Caught exception in %s", &v1, 0x16u);
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}