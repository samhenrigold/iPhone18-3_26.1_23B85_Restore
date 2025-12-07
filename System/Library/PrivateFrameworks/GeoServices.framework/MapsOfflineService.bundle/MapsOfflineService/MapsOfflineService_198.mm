uint64_t sub_BD0250(uint64_t a1)
{
  v2 = a1 + 40;
  v3 = *(a1 + 64);
  if (v3 != v2)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(a1 + 32);
    if (v4 != a1 + 8)
    {
      goto LABEL_5;
    }

LABEL_9:
    (*(*v4 + 32))(v4);
    return a1;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 32);
  if (v4 == a1 + 8)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  return a1;
}

uint64_t **sub_BD034C(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2;
  v5 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = sub_AAD8(&v25, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_43;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_43:
    operator new();
  }

  v14 = *(v3 + 23);
  if (v14 >= 0)
  {
    v15 = *(v3 + 23);
  }

  else
  {
    v15 = v3[1];
  }

  if (v14 < 0)
  {
    v3 = *v3;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v13[1];
      if (v20 == v8)
      {
        v21 = *(v13 + 39);
        v22 = v21;
        if (v21 < 0)
        {
          v21 = v13[3];
        }

        if (v21 == v15)
        {
          v23 = v22 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v23, v3, v15))
          {
            return v13;
          }
        }
      }

      else if ((v20 & (*&v9 - 1)) != v11)
      {
        goto LABEL_43;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v9)
    {
      v16 %= *&v9;
    }

    if (v16 != v11)
    {
      goto LABEL_43;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_43;
    }
  }

  v17 = *(v13 + 39);
  v18 = v17;
  if (v17 < 0)
  {
    v17 = v13[3];
  }

  if (v17 != v15)
  {
    goto LABEL_20;
  }

  v19 = v18 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v19, v3, v15))
  {
    goto LABEL_20;
  }

  return v13;
}

void sub_BD0750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_BD0764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_BD077C(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = *(v2 + 23);
    if (v13 >= 0)
    {
      v14 = *(v2 + 23);
    }

    else
    {
      v14 = v2[1];
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

__n128 sub_BD09A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_26714D0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_BD09F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic18GaussianMembershipE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic18GaussianMembershipE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic18GaussianMembershipE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic18GaussianMembershipE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_BD0A68(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_BD0CEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

__n128 sub_BD0D74(uint64_t a1, uint64_t a2)
{
  *a2 = off_2671560;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_BD0DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic21ExponentialLeakWeightE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic21ExponentialLeakWeightE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic21ExponentialLeakWeightE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic21ExponentialLeakWeightE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

double sub_BD0EE8(uint64_t a1, double *a2)
{
  result = 0.0;
  if (*a2 == 0.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_BD0F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic19SingletonMembershipE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic19SingletonMembershipE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic19SingletonMembershipE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic19SingletonMembershipE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD0FE8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671660;
  a2[1] = v2;
  return result;
}

uint64_t sub_BD101C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N3msl6common11fuzzy_logic14ConstantWeightE")
  {
    return a1 + 8;
  }

  if (((v2 & "N3msl6common11fuzzy_logic14ConstantWeightE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N3msl6common11fuzzy_logic14ConstantWeightE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N3msl6common11fuzzy_logic14ConstantWeightE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD1094(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_BD1120(void **a1, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_BD1200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BD1214(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BD1214(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    while (1)
    {
      *(a1 + 16) = v3 - 72;
      v4 = *(v3 - 8);
      if (v4 == v3 - 32)
      {
        (*(*v4 + 32))(v4);
        v5 = *(v3 - 40);
        if (v5 != v3 - 64)
        {
          goto LABEL_10;
        }

LABEL_3:
        (*(*v5 + 32))(v5);
        v3 = *(a1 + 16);
        if (v3 == v2)
        {
          break;
        }
      }

      else
      {
        if (v4)
        {
          (*(*v4 + 40))(v4);
        }

        v5 = *(v3 - 40);
        if (v5 == v3 - 64)
        {
          goto LABEL_3;
        }

LABEL_10:
        if (v5)
        {
          (*(*v5 + 40))(v5);
        }

        v3 = *(a1 + 16);
        if (v3 == v2)
        {
          break;
        }
      }
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_BD1348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return;
  }

  v6 = a2;
  v7 = 0;
  v8 = a2;
  do
  {
    v10 = a4 + v7;
    v11 = v6 + v7;
    *(a4 + v7) = *(v6 + v7);
    v12 = a4 + v7 + 8;
    v13 = *(v6 + v7 + 32);
    if (!v13)
    {
      v14 = (v10 + 32);
      goto LABEL_10;
    }

    if (v11 + 8 != v13)
    {
      v14 = (v8 + 32);
      *(v10 + 32) = v13;
LABEL_10:
      *v14 = 0;
      goto LABEL_12;
    }

    *(v10 + 32) = v12;
    (*(**(v11 + 32) + 24))(*(v11 + 32));
LABEL_12:
    v15 = a4 + v7;
    v16 = v6 + v7;
    v17 = *(v6 + v7 + 64);
    if (!v17)
    {
      v9 = (v15 + 64);
LABEL_4:
      *v9 = 0;
      goto LABEL_5;
    }

    if (v16 + 40 != v17)
    {
      v9 = (v8 + 64);
      *(v15 + 64) = v17;
      goto LABEL_4;
    }

    *(v15 + 64) = v15 + 40;
    (*(**(v16 + 64) + 24))(*(v16 + 64));
LABEL_5:
    v8 += 72;
    v7 += 72;
  }

  while (v6 + v7 != a3);
  if (v6 != a3)
  {
    v18 = v6 + 40;
    do
    {
      v19 = *(v6 + 64);
      if (v6 + 40 == v19)
      {
        (*(*v19 + 32))(v19, v12);
        v20 = *(v6 + 32);
        if (v6 + 8 != v20)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v19)
        {
          (*(*v19 + 40))(v19, v12);
        }

        v20 = *(v6 + 32);
        if (v6 + 8 != v20)
        {
LABEL_26:
          if (v20)
          {
            (*(*v20 + 40))(v20, v12);
          }

          goto LABEL_19;
        }
      }

      (*(*v20 + 32))(v20);
LABEL_19:
      v6 += 72;
      v18 += 72;
    }

    while (v6 != a3);
  }
}

uint64_t sub_BD1574(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v5 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  v16 = v6;
  v17 = v6;
  *v6 = *a2;
  v8 = (a2 + 32);
  v7 = *(a2 + 32);
  if (!v7)
  {
    v8 = (v6 + 32);
    goto LABEL_14;
  }

  if (v7 != a2 + 8)
  {
    *(v6 + 32) = v7;
LABEL_14:
    *v8 = 0;
    goto LABEL_16;
  }

  *(v6 + 32) = v6 + 8;
  (*(*v7 + 24))(v7);
LABEL_16:
  v10 = (a2 + 64);
  v9 = *(a2 + 64);
  if (!v9)
  {
    v10 = (v6 + 64);
    goto LABEL_20;
  }

  if (v9 != a2 + 40)
  {
    *(v6 + 64) = v9;
LABEL_20:
    *v10 = 0;
    goto LABEL_22;
  }

  *(v6 + 64) = v6 + 40;
  (*(*v9 + 24))(v9);
LABEL_22:
  v11 = v6 + 72;
  v12 = a1[1];
  v13 = v6 + *a1 - v12;
  sub_BD1348(a1, *a1, v12, v16 + *a1 - v12);
  v14 = *a1;
  *a1 = v13;
  a1[1] = v17 + 72;
  a1[2] = 0;
  if (v14)
  {
    operator delete(v14);
  }

  return v11;
}

void sub_BD1768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BD1214(va);
  _Unwind_Resume(a1);
}

void sub_BD1D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p)
{
  v15 = v13;
  while (1)
  {
    v16 = *(v15 - 9);
    v15 -= 4;
    if (v16 < 0)
    {
      operator delete(*v15);
    }

    if (v15 == &__p)
    {
      _Unwind_Resume(a1);
    }
  }
}

void sub_BD1F4C(uint64_t a1, void *a2)
{
  v9 = 19;
  strcpy(__p, "probability_percent");
  v4 = sub_353010(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 16;
  strcpy(__p, "max_num_journeys");
  v6 = sub_63FDC(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  operator new();
}

void sub_BD2090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD20B8(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if ((sub_585D8((a2 + 32)) & 1) == 0)
  {
    if (!sub_7E7E4(1u))
    {
      return;
    }

    sub_19594F8(&v34);
    sub_4A5C(&v34, "Attempted to run journey shuffling component on a request with no valid session id", 82);
    if ((v44 & 0x10) != 0)
    {
      v11 = v43;
      if (v43 < v40)
      {
        v43 = v40;
        v11 = v40;
      }

      v12 = v39;
      v10 = v11 - v39;
      if (v11 - v39 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v10 = 0;
        v47 = 0;
LABEL_19:
        *(&__dst + v10) = 0;
        sub_7E854(&__dst, 1u);
        if (v47 < 0)
        {
          operator delete(__dst);
        }

        if (v42 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v36);
        std::ostream::~ostream();
        std::ios::~ios();
        return;
      }

      v12 = v37;
      v10 = v38 - v37;
      if ((v38 - v37) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_52:
        sub_3244();
      }
    }

    if (v10 >= 0x17)
    {
      operator new();
    }

    v47 = v10;
    if (v10)
    {
      memmove(&__dst, v12, v10);
    }

    goto LABEL_19;
  }

  v6 = (sub_588E0(a2 + 32) + 0x388152A534) ^ 0xDEADBEEFLL;
  v7 = (sub_588D8(a2 + 32) + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v8 = (0x2127599BF4325C37 * (v7 ^ (v7 >> 23))) ^ ((0x2127599BF4325C37 * (v7 ^ (v7 >> 23))) >> 47);
  if (v8 % 0x3F1 < vcvtad_u64_f64((1009 * *a1) / 100.0))
  {
    v9 = *(a3 + 16) - *(a3 + 8);
    if (v9)
    {
      if (!((0x14C1BACF914C1BADLL * (v9 >> 3)) >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    if (*(a1 + 16) == 1)
    {
      v13 = 0x14C1BACF914C1BADLL * ((*(a3 + 16) - *(a3 + 8)) >> 3);
    }

    else
    {
      v14 = *(a3 + 8);
      v15 = *(a3 + 16);
      v16 = v14;
      if (v14 != v15)
      {
        while (*(v16 + 13) != 1)
        {
          v16 += 296;
          if (v16 == v15)
          {
            v16 = *(a3 + 16);
            break;
          }
        }
      }

      v13 = sub_485218(0x14C1BACF914C1BADLL * ((v16 - v14) >> 3));
    }

    v17 = *(a1 + 1);
    if (v17 >= v13)
    {
      v17 = v13;
    }

    v18 = 8 * v17;
    v34 = v8;
    for (i = 1; i != 312; ++i)
    {
      v8 = i + 0x5851F42D4C957F2DLL * (v8 ^ (v8 >> 62));
      *(&v34 + i) = v8;
    }

    v45 = 0;
    if (v17 >= 2)
    {
      __dst = xmmword_2297C00;
      v20 = v18 - 8;
      if (v18 != 8)
      {
        v21 = v17 - 1;
        v22 = 0;
        v23 = 0;
        do
        {
          v48[0] = 0;
          v48[1] = v21;
          v24 = sub_BD26CC(&__dst, &v34, v48);
          if (v24)
          {
            v25 = *v23;
            *v23 = *(v22 + 8 * v24);
            *(v22 + 8 * v24) = v25;
          }

          ++v23;
          --v21;
          v22 += 8;
        }

        while (v23 < v20);
      }
    }

    sub_31F64((a3 + 216), 0, 0, 0);
    v26 = *(a3 + 8);
    v27 = *(a3 + 16) - v26;
    if (v27 >= 296)
    {
      v28 = 0;
      v29 = 0x14C1BACF914C1BADLL * (v27 >> 3);
      do
      {
        v30 = (8 * v28);
        v31 = *(8 * v28);
        v32 = v28;
        if (v28 != v31)
        {
          v32 = v28;
          do
          {
            v33 = v32;
            v32 = v31;
            sub_BCCD18(v26 + 296 * v33, (v26 + 296 * v31));
            *(8 * v33) = v33;
            v30 = (8 * v32);
            v31 = *(8 * v32);
          }

          while (v28 != v31);
        }

        *v30 = v32;
        ++v28;
      }

      while (v29 != v28);
      operator delete(0);
    }
  }
}

void sub_BD2664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 105) < 0)
  {
    operator delete(*(v3 - 128));
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_BD26A8(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

unint64_t sub_BD26CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  result = a3[1];
  if (result != *a3)
  {
    v5 = 0xB5026F5AA96619E9;
    v6 = result - *a3 + 1;
    if (result - *a3 == -1)
    {
      v18 = *(a2 + 2496);
      v19 = (v18 + 1) % 0x138uLL;
      if ((*(a2 + 8 * v19) & 1) == 0)
      {
        v5 = 0;
      }

      v20 = v5 ^ *(a2 + 8 * ((v18 + 156) % 0x138uLL)) ^ ((*(a2 + 8 * v19) & 0x7FFFFFFELL | *(a2 + 8 * v18) & 0xFFFFFFFF80000000) >> 1);
      *(a2 + 8 * v18) = v20;
      *(a2 + 2496) = v19;
      v21 = (((v20 >> 29) & 0x555555555 ^ v20) << 17) & 0x71D67FFFEDA60000 ^ (v20 >> 29) & 0x555555555 ^ v20;
      return (v21 << 37) & 0xFFF7EEE000000000 ^ v21 ^ (((v21 << 37) & 0xFFF7EEE000000000 ^ v21) >> 43);
    }

    else
    {
      v7 = __clz(v6);
      v8 = 63;
      if (((v6 << v7) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = 64;
      }

      v9 = v8 - v7;
      v10 = v9 >> 6;
      if ((v9 & 0x3F) != 0)
      {
        ++v10;
      }

      if (v10 <= v9)
      {
        v11 = 0xFFFFFFFFFFFFFFFFLL >> -(v9 / v10);
      }

      else
      {
        v11 = 0;
      }

      v12 = *(a2 + 2496);
      do
      {
        v13 = v12;
        v12 = (v12 + 1) % 0x138;
        if (*(a2 + 8 * v12))
        {
          v14 = 0xB5026F5AA96619E9;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14 ^ *(a2 + 8 * ((v13 + 156) % 0x138)) ^ ((*(a2 + 8 * v12) & 0x7FFFFFFELL | *(a2 + 8 * v13) & 0xFFFFFFFF80000000) >> 1);
        *(a2 + 8 * v13) = v15;
        v16 = (((v15 >> 29) & 0x555555555 ^ v15) << 17) & 0x71D67FFFEDA60000 ^ (v15 >> 29) & 0x555555555 ^ v15;
        v17 = ((v16 << 37) & 0xFFF7EEE000000000 ^ v16 ^ (((v16 << 37) & 0xFFF7EEE000000000 ^ v16) >> 43)) & v11;
      }

      while (v17 >= v6);
      *(a2 + 2496) = v12;
      return v17 + v4;
    }
  }

  return result;
}

void *sub_BD287C(int *a1, uint64_t a2)
{
  sub_BD2B50(a2, a1, v4);
  sub_BD2968((a2 + 8), v4);
  result = v5;
  if (v5 == v4)
  {
    return (*(*v5 + 32))(v5);
  }

  if (v5)
  {
    return (*(*v5 + 40))();
  }

  return result;
}

void sub_BD2950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BD2CA0(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_BD2968(__int128 **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v12 = v11;
      (*(*v4 + 24))(v4, v11);
    }

    else
    {
      v12 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v3 - v2 < 1)
  {
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0x14C1BACF914C1BADLL * ((v3 - v2) >> 3);
    while (1)
    {
      v6 = operator new(296 * v5, &std::nothrow);
      if (v6)
      {
        break;
      }

      v7 = v5 >> 1;
      v8 = v5 > 1;
      v5 >>= 1;
      if (!v8)
      {
        v9 = 0;
        v5 = v7;
        goto LABEL_13;
      }
    }

    v9 = v6;
  }

LABEL_13:
  sub_BD2F40(v2, v3, v11, 0x14C1BACF914C1BADLL * ((v3 - v2) >> 3), v9, v5);
  if (v9)
  {
    operator delete(v9);
  }

  result = v12;
  if (v12 == v11)
  {
    return (*(*v12 + 32))(v12);
  }

  if (v12)
  {
    return (*(*v12 + 40))();
  }

  return result;
}

void sub_BD2B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BD2B50@<X0>(uint64_t result@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if (*a2 > 2)
  {
    switch(v3)
    {
      case 3:
        *a3 = off_2671880;
        a3[3] = a3;
        break;
      case 4:
        *a3 = off_2671900;
        a3[1] = result;
        a3[3] = a3;
        break;
      case 5:
        *a3 = off_2671980;
        a3[1] = result;
        a3[3] = a3;
        break;
      default:
        goto LABEL_14;
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      if (v3 == 2)
      {
        *a3 = off_2671800;
        a3[3] = a3;
        return result;
      }

LABEL_14:
      exception = __cxa_allocate_exception(0x40uLL);
      v5 = sub_2D390(exception, "Ordering comparator was not handled properly", 0x2CuLL);
    }

    *a3 = off_2671780;
    a3[3] = a3;
  }

  else
  {
    *a3 = off_26716F0;
    a3[3] = a3;
  }

  return result;
}

uint64_t sub_BD2CA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_BD2D2C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 2)
  {
    switch(result)
    {
      case 3:
        operator new();
      case 4:
        operator new();
      case 5:
        operator new();
    }
  }

  else
  {
    switch(result)
    {
      case 0:
        a2[23] = 19;
        strcpy(a2, "order_main_by_score");
        return result;
      case 1:
        operator new();
      case 2:
        a2[23] = 18;
        strcpy(a2, "order_main_by_risk");
        return result;
    }
  }

  a2[23] = 7;
  strcpy(a2, "unknown");
  return result;
}

void sub_BD2F40(__int128 *a1, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      v8 = (a2 - 296);
      if ((*(*v7 + 48))(v7, a2 - 296, a1))
      {

        sub_BCCD18(a1, v8);
      }
    }

    else if (a4 <= 0)
    {

      sub_BD3170(a1, a2, a3);
    }

    else
    {
      v10 = a4 >> 1;
      v11 = (a1 + 296 * (a4 >> 1));
      if (a4 <= a6)
      {
        sub_BD34C8(a1, (a1 + 296 * (a4 >> 1)), a3, a4 >> 1, a5);
        v19 = a4 - v10;
        v20 = (a5 + 296 * v10);
        sub_BD34C8(v11, a2, a3, v19, v20);
        v21 = a4;
        sub_BD3B18(a5, v20, v20, (a5 + 296 * a4), a1, a3);
        if (a5)
        {
          sub_BD4C2C(&v21, a5);
        }
      }

      else
      {
        sub_BD2F40(a1, a1 + 296 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v16 = a4 - v10;
        sub_BD2F40(v11, a2, a3, v16, a5, a6);

        sub_BD3C24(a1, v11, a2, a3, v10, v16, a5, a6);
      }
    }
  }
}

void sub_BD3154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_BD4C2C(va, v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD3170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1 + 296;
    if (a1 + 296 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = *(a3 + 24);
        if (!v9)
        {
          sub_2B7420();
        }

        v10 = v5;
        if ((*(*v9 + 48))(v9, v5, v8))
        {
          v11 = *v10;
          v12 = *(v10 + 32);
          v37[1] = *(v10 + 16);
          v37[2] = v12;
          v37[0] = v11;
          v13 = *(v10 + 48);
          v14 = *(v10 + 64);
          v15 = *(v10 + 80);
          v38 = *(v10 + 96);
          v37[4] = v14;
          v37[5] = v15;
          v37[3] = v13;
          v16 = *(v8 + 400);
          v41 = *(v8 + 424);
          v40 = *(v8 + 408);
          *(v8 + 416) = 0u;
          *(v8 + 408) = 0;
          v17 = *(v8 + 432);
          v39 = v16;
          v42 = v17;
          v18 = *(v8 + 440);
          v19 = *(v8 + 472);
          v44 = *(v8 + 456);
          v45 = v19;
          v43 = v18;
          v46 = *(v8 + 488);
          v47 = *(v8 + 496);
          v48 = *(v8 + 512);
          *(v8 + 496) = 0u;
          *(v8 + 512) = 0;
          *v49 = *(v8 + 520);
          v50 = *(v8 + 536);
          *(v8 + 520) = 0u;
          *(v8 + 536) = 0;
          v51 = *(v8 + 544);
          v52 = *(v8 + 560);
          *(v8 + 544) = 0u;
          *(v8 + 560) = 0;
          *__p = *(v8 + 568);
          v54 = *(v8 + 584);
          *(v8 + 568) = 0;
          *(v8 + 576) = 0;
          v20 = v7;
          *(v8 + 584) = 0;
          while (1)
          {
            sub_BA9EF8(v4 + v20 + 296, (v4 + v20));
            if (!v20)
            {
              break;
            }

            v21 = *(a3 + 24);
            if (!v21)
            {
              sub_2B7420();
            }

            v22 = (*(*v21 + 48))(v21, v37, v4 + v20 - 296);
            v20 -= 296;
            if ((v22 & 1) == 0)
            {
              sub_BA9EF8(v4 + v20 + 296, v37);
              v23 = __p[0];
              if (!__p[0])
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }
          }

          sub_BA9EF8(v4, v37);
          v23 = __p[0];
          if (!__p[0])
          {
            goto LABEL_15;
          }

LABEL_14:
          __p[1] = v23;
          operator delete(v23);
LABEL_15:
          if (v51)
          {
            *(&v51 + 1) = v51;
            operator delete(v51);
          }

          if (v49[0])
          {
            v49[1] = v49[0];
            operator delete(v49[0]);
          }

          v24 = v47;
          if (v47)
          {
            v25 = *(&v47 + 1);
            v26 = v47;
            if (*(&v47 + 1) != v47)
            {
              v36 = v7;
              do
              {
                v28 = *(v25 - 40);
                if (v28)
                {
                  *(v25 - 32) = v28;
                  operator delete(v28);
                }

                v29 = (v25 - 72);
                v30 = *(v25 - 72);
                if (v30)
                {
                  v31 = *(v25 - 64);
                  v27 = *(v25 - 72);
                  if (v31 != v30)
                  {
                    do
                    {
                      v32 = v31 - 168;
                      v33 = *(v31 - 8);
                      if (v33 != -1)
                      {
                        (off_26716D0[v33])(v55, v31 - 168);
                      }

                      *(v31 - 8) = -1;
                      v31 -= 168;
                    }

                    while (v32 != v30);
                    v27 = *v29;
                  }

                  *(v25 - 64) = v30;
                  operator delete(v27);
                }

                v25 -= 72;
              }

              while (v29 != v24);
              v26 = v47;
              v4 = a1;
              v3 = a2;
              v7 = v36;
            }

            *(&v47 + 1) = v24;
            operator delete(v26);
          }

          if (SHIBYTE(v41) < 0)
          {
            operator delete(v40);
          }
        }

        v5 = v10 + 296;
        v7 += 296;
        v8 = v10;
      }

      while (v10 + 296 != v3);
    }
  }
}

void sub_BD349C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_A7847C(va);
  _Unwind_Resume(a1);
}

void sub_BD34B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_A7847C(va);
  _Unwind_Resume(a1);
}

void sub_BD34C8(uint64_t result, __int128 *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v15 = *(a3 + 24);
      if (!v15)
      {
        sub_2B7420();
      }

      v17 = a2 - 296;
      v18 = (*(*v15 + 48))(v15, a2 - 296, result);
      v19 = (a5 + 520);
      if (v18)
      {
        v20 = *v17;
        v21 = *(v17 + 2);
        *(a5 + 16) = *(v17 + 1);
        *(a5 + 32) = v21;
        *a5 = v20;
        v22 = *(v17 + 3);
        v23 = *(v17 + 4);
        v24 = *(v17 + 5);
        *(a5 + 96) = *(v17 + 12);
        *(a5 + 64) = v23;
        *(a5 + 80) = v24;
        *(a5 + 48) = v22;
        *(a5 + 104) = *(a2 - 48);
        v25 = *(a2 - 184);
        *(a5 + 128) = *(a2 - 21);
        *(a5 + 112) = v25;
        *(a2 - 11) = 0u;
        *(a2 - 23) = 0;
        *(a5 + 136) = *(a2 - 40);
        v26 = *(a2 - 152);
        v27 = *(a2 - 120);
        *(a5 + 160) = *(a2 - 136);
        *(a5 + 176) = v27;
        *(a5 + 144) = v26;
        *(a5 + 192) = *(a2 - 13);
        *(a5 + 200) = 0;
        *(a5 + 208) = 0u;
        *(a5 + 200) = *(a2 - 6);
        *(a5 + 216) = *(a2 - 10);
        *(a2 - 10) = 0;
        *(a2 - 6) = 0u;
        *(a5 + 240) = 0;
        *(a5 + 224) = 0u;
        *(a5 + 224) = *(a2 - 72);
        *(a5 + 240) = *(a2 - 7);
        *(a2 - 7) = 0;
        *(a2 - 72) = 0u;
        *(a5 + 264) = 0;
        *(a5 + 248) = 0u;
        *(a5 + 248) = *(a2 - 3);
        *(a5 + 264) = *(a2 - 4);
        *(a2 - 4) = 0;
        *(a2 - 3) = 0u;
        *(a5 + 288) = 0;
        *(a5 + 272) = 0u;
        *(a5 + 272) = *(a2 - 24);
        *(a5 + 288) = *(a2 - 1);
        *(a2 - 1) = 0;
        *(a2 - 24) = 0u;
        v28 = *result;
        v29 = *(result + 32);
        *(a5 + 312) = *(result + 16);
        *(a5 + 328) = v29;
        *(a5 + 296) = v28;
        v30 = *(result + 48);
        v31 = *(result + 64);
        v32 = *(result + 80);
        *(a5 + 392) = *(result + 96);
        *(a5 + 360) = v31;
        *(a5 + 376) = v32;
        *(a5 + 344) = v30;
        *(a5 + 400) = *(result + 104);
        v33 = *(result + 112);
        *(a5 + 424) = *(result + 128);
        *(a5 + 408) = v33;
        *(result + 120) = 0u;
        *(result + 112) = 0;
        *(a5 + 432) = *(result + 136);
        v34 = *(result + 144);
        v35 = *(result + 176);
        *(a5 + 456) = *(result + 160);
        *(a5 + 472) = v35;
        *(a5 + 440) = v34;
        *(a5 + 488) = *(result + 192);
        *(a5 + 496) = 0;
        *(a5 + 504) = 0u;
        *(a5 + 496) = *(result + 200);
        *(a5 + 512) = *(result + 216);
        *(result + 216) = 0;
        *(result + 200) = 0u;
        *(a5 + 536) = 0;
        *v19 = 0u;
        *v19 = *(result + 224);
        *(a5 + 536) = *(result + 240);
        *(result + 240) = 0;
        *(result + 224) = 0u;
        *(a5 + 560) = 0;
        *(a5 + 544) = 0u;
        *(a5 + 544) = *(result + 248);
        *(a5 + 560) = *(result + 264);
        *(result + 248) = 0;
        *(result + 256) = 0;
        *(result + 264) = 0;
        v36 = (result + 272);
        *(a5 + 568) = 0;
        *(a5 + 576) = 0;
        *(a5 + 584) = 0;
        *(a5 + 568) = *(result + 272);
        v37 = (result + 288);
      }

      else
      {
        v43 = *result;
        v44 = *(result + 32);
        *(a5 + 16) = *(result + 16);
        *(a5 + 32) = v44;
        *a5 = v43;
        v45 = *(result + 48);
        v46 = *(result + 64);
        v47 = *(result + 80);
        *(a5 + 96) = *(result + 96);
        *(a5 + 64) = v46;
        *(a5 + 80) = v47;
        *(a5 + 48) = v45;
        *(a5 + 104) = *(result + 104);
        v48 = *(result + 112);
        *(a5 + 128) = *(result + 128);
        *(a5 + 112) = v48;
        *(result + 120) = 0u;
        *(result + 112) = 0;
        *(a5 + 136) = *(result + 136);
        v49 = *(result + 144);
        v50 = *(result + 176);
        *(a5 + 160) = *(result + 160);
        *(a5 + 176) = v50;
        *(a5 + 144) = v49;
        *(a5 + 192) = *(result + 192);
        *(a5 + 200) = 0;
        *(a5 + 208) = 0u;
        *(a5 + 200) = *(result + 200);
        *(a5 + 216) = *(result + 216);
        *(result + 216) = 0;
        *(result + 200) = 0u;
        *(a5 + 240) = 0;
        *(a5 + 224) = 0u;
        *(a5 + 224) = *(result + 224);
        *(a5 + 240) = *(result + 240);
        *(result + 240) = 0;
        *(result + 224) = 0u;
        *(a5 + 264) = 0;
        *(a5 + 248) = 0u;
        *(a5 + 248) = *(result + 248);
        *(a5 + 264) = *(result + 264);
        *(result + 264) = 0;
        *(result + 248) = 0u;
        *(a5 + 288) = 0;
        *(a5 + 272) = 0u;
        *(a5 + 272) = *(result + 272);
        *(a5 + 288) = *(result + 288);
        *(result + 288) = 0;
        *(result + 272) = 0u;
        v51 = *v17;
        v52 = *(v17 + 2);
        *(a5 + 312) = *(v17 + 1);
        *(a5 + 328) = v52;
        *(a5 + 296) = v51;
        v53 = *(v17 + 3);
        v54 = *(v17 + 4);
        v55 = *(v17 + 5);
        *(a5 + 392) = *(v17 + 12);
        *(a5 + 360) = v54;
        *(a5 + 376) = v55;
        *(a5 + 344) = v53;
        *(a5 + 400) = *(a2 - 48);
        v56 = *(a2 - 184);
        *(a5 + 424) = *(a2 - 21);
        *(a5 + 408) = v56;
        *(a2 - 11) = 0u;
        *(a2 - 23) = 0;
        *(a5 + 432) = *(a2 - 40);
        v57 = *(a2 - 152);
        v58 = *(a2 - 120);
        *(a5 + 456) = *(a2 - 136);
        *(a5 + 472) = v58;
        *(a5 + 440) = v57;
        *(a5 + 488) = *(a2 - 13);
        *(a5 + 496) = 0;
        *(a5 + 504) = 0u;
        *(a5 + 496) = *(a2 - 6);
        *(a5 + 512) = *(a2 - 10);
        *(a2 - 10) = 0;
        *(a2 - 6) = 0u;
        *(a5 + 536) = 0;
        *v19 = 0u;
        *v19 = *(a2 - 72);
        *(a5 + 536) = *(a2 - 7);
        *(a2 - 7) = 0;
        *(a2 - 72) = 0u;
        *(a5 + 560) = 0;
        *(a5 + 544) = 0u;
        *(a5 + 544) = *(a2 - 3);
        *(a5 + 560) = *(a2 - 4);
        *(a2 - 6) = 0;
        *(a2 - 5) = 0;
        *(a2 - 4) = 0;
        *(a5 + 568) = 0;
        *(a5 + 576) = 0;
        *(a5 + 584) = 0;
        v59 = *(a2 - 24);
        v36 = a2 - 3;
        *(a5 + 568) = v59;
        v37 = v36 + 2;
      }

      *(a5 + 584) = *v37;
      *v36 = 0;
      v36[1] = 0;
      v36[2] = 0;
    }

    else if (a4 == 1)
    {
      v7 = *result;
      v8 = *(result + 32);
      *(a5 + 16) = *(result + 16);
      *(a5 + 32) = v8;
      *a5 = v7;
      v9 = *(result + 48);
      v10 = *(result + 64);
      v11 = *(result + 80);
      *(a5 + 96) = *(result + 96);
      *(a5 + 64) = v10;
      *(a5 + 80) = v11;
      *(a5 + 48) = v9;
      *(a5 + 104) = *(result + 104);
      v12 = *(result + 112);
      *(a5 + 128) = *(result + 128);
      *(a5 + 112) = v12;
      *(result + 120) = 0;
      *(result + 128) = 0;
      *(result + 112) = 0;
      *(a5 + 136) = *(result + 136);
      v13 = *(result + 144);
      v14 = *(result + 176);
      *(a5 + 160) = *(result + 160);
      *(a5 + 176) = v14;
      *(a5 + 144) = v13;
      *(a5 + 192) = *(result + 192);
      *(a5 + 208) = 0;
      *(a5 + 216) = 0;
      *(a5 + 200) = 0;
      *(a5 + 200) = *(result + 200);
      *(a5 + 216) = *(result + 216);
      *(result + 200) = 0;
      *(result + 208) = 0;
      *(result + 216) = 0;
      *(a5 + 224) = 0;
      *(a5 + 232) = 0;
      *(a5 + 240) = 0;
      *(a5 + 224) = *(result + 224);
      *(a5 + 240) = *(result + 240);
      *(result + 224) = 0;
      *(result + 232) = 0;
      *(result + 240) = 0;
      *(a5 + 248) = 0;
      *(a5 + 256) = 0;
      *(a5 + 264) = 0;
      *(a5 + 248) = *(result + 248);
      *(a5 + 264) = *(result + 264);
      *(result + 248) = 0;
      *(result + 256) = 0;
      *(result + 264) = 0;
      *(a5 + 272) = 0;
      *(a5 + 280) = 0;
      *(a5 + 288) = 0;
      *(a5 + 272) = *(result + 272);
      *(a5 + 288) = *(result + 288);
      *(result + 272) = 0;
      *(result + 280) = 0;
      *(result + 288) = 0;
    }

    else if (a4 > 8)
    {
      v38 = a4 >> 1;
      v39 = 296 * (a4 >> 1);
      sub_BD2F40(result, v39 + result, a3, v38, a5, v38);
      sub_BD2F40(v39 + result, a2, a3, a4 - v38, a5 + v39, a4 - v38);

      sub_BD4744(result, (v39 + result), (v39 + result), a2, a5, a3);
    }

    else
    {

      sub_BD42E8(result, a2, a5, a3);
    }
  }
}

void sub_BD3AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_BD4C2C(va, v9);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_BD3B18(__int128 *result, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  if (result == a2)
  {
LABEL_10:
    while (a3 != a4)
    {
      result = sub_BA9EF8(a5, a3);
      a3 = (a3 + 296);
      a5 += 296;
    }
  }

  else
  {
    v11 = result;
    while (a3 != a4)
    {
      v12 = *(a6 + 24);
      if (!v12)
      {
        sub_2B7420();
      }

      if ((*(*v12 + 48))(v12, a3, v11))
      {
        result = sub_BA9EF8(a5, a3);
        a3 = (a3 + 296);
        a5 += 296;
        if (v11 == a2)
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_BA9EF8(a5, v11);
        v11 = (v11 + 296);
        a5 += 296;
        if (v11 == a2)
        {
          goto LABEL_10;
        }
      }
    }

    while (v11 != a2)
    {
      result = sub_BA9EF8(a5, v11);
      v11 = (v11 + 296);
      a5 += 296;
    }
  }

  return result;
}

void sub_BD3C24(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  v45 = a6;
  if (a6)
  {
    while (1)
    {
      if (v45 <= a8 || a5 <= a8)
      {
        sub_BD4CCC(a1, a2, a3, a4, a5, v45, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      v11 = 0;
      v12 = -a5;
      while (1)
      {
        v13 = *(a4 + 24);
        if (!v13)
        {
          sub_2B7420();
        }

        v14 = a4;
        v15 = a1;
        if ((*(*v13 + 48))(v13, a2, v11 + a1))
        {
          break;
        }

        v11 = (v11 + 296);
        v16 = __CFADD__(v12++, 1);
        a4 = v14;
        a1 = v15;
        if (v16)
        {
          return;
        }
      }

      v17 = -v12;
      v18 = v15;
      v19 = v45;
      if (-v12 >= v45)
      {
        v20 = a2;
        if (v12 == -1)
        {
          sub_BCCD18(v11 + v15, a2);
          return;
        }

        v27 = *(v14 + 24);
        if (v27)
        {
          if (v27 == v14)
          {
            v47 = v46;
            (*(*v27 + 24))(v27, v46);
          }

          else
          {
            v47 = (*(*v27 + 16))(v27);
          }

          v18 = v15;
          v20 = a2;
        }

        else
        {
          v47 = 0;
        }

        v25 = v17 / 2;
        v22 = (v11 + v18 + 296 * (v17 / 2));
        v21 = v20;
        if (v20 != a3)
        {
          v39 = v17 / 2;
          v28 = 0x14C1BACF914C1BADLL * ((a3 - v20) >> 3);
          v21 = v20;
          do
          {
            if (!v47)
            {
              sub_2B7420();
            }

            v29 = v21 + 296 * (v28 >> 1);
            v30 = (*(*v47 + 48))(v47, v29, v22);
            if (v30)
            {
              v28 += ~(v28 >> 1);
            }

            else
            {
              v28 >>= 1;
            }

            if (v30)
            {
              v21 = (v29 + 296);
            }
          }

          while (v28);
          v25 = v39;
        }

        if (v47 == v46)
        {
          (*(*v47 + 32))(v47);
        }

        else if (v47)
        {
          (*(*v47 + 40))();
        }

        v41 = 0x14C1BACF914C1BADLL * ((v21 - v20) >> 3);
        v19 = v45;
        v26 = v21;
        if (v20 != v22)
        {
LABEL_44:
          v26 = v22;
          if (v20 != v21)
          {
            sub_BCCD18(v22, v20);
            v26 = (v22 + 296);
            v31 = (v20 + 296);
            for (i = v25; v31 != v21; v31 = (v31 + 296))
            {
              if (v26 == v20)
              {
                v20 = v31;
              }

              sub_BCCD18(v26, v31);
              v26 = (v26 + 296);
            }

            if (v26 != v20)
            {
              v32 = v20;
              v33 = v26;
              v34 = v32;
              while (1)
              {
                sub_BCCD18(v33, v34);
                v34 = (v34 + 296);
                v35 = v33 + 296 == v32;
                if (v34 == v21)
                {
                  if ((v33 + 296) == v32)
                  {
                    break;
                  }

                  v34 = (v32 + 296);
                  v33 += 592;
                  while (1)
                  {
                    sub_BCCD18(v33 - 296, v32);
                    v35 = v33 == v32;
                    if (v34 != v21)
                    {
                      break;
                    }

                    v36 = v33 == v32;
                    v33 += 296;
                    if (v36)
                    {
                      goto LABEL_61;
                    }
                  }
                }

                else
                {
                  v33 += 296;
                }

                if (v35)
                {
                  v32 = v34;
                }
              }
            }

LABEL_61:
            v19 = v45;
            v25 = i;
          }
        }
      }

      else
      {
        v20 = a2;
        v41 = v45 / 2;
        v21 = (a2 + 296 * (v45 / 2));
        v22 = a2;
        if ((a2 - v15) != v11)
        {
          v23 = 0x14C1BACF914C1BADLL * ((a2 - v15 - v11) >> 3);
          v22 = (v11 + v15);
          do
          {
            v24 = *(v14 + 24);
            if (!v24)
            {
              sub_2B7420();
            }

            if ((*(*v24 + 48))(v24, v21, v22 + 296 * (v23 >> 1)))
            {
              v23 >>= 1;
            }

            else
            {
              v22 = (v22 + 296 * (v23 >> 1) + 296);
              v23 += ~(v23 >> 1);
            }
          }

          while (v23);
          v19 = v45;
          v18 = v15;
          v20 = a2;
        }

        v25 = 0x14C1BACF914C1BADLL * ((v22 - v18 - v11) >> 3);
        v26 = v21;
        if (v20 != v22)
        {
          goto LABEL_44;
        }
      }

      a5 = -v12 - v25;
      v37 = v19 - v41;
      if (v25 + v41 >= v19 - (v25 + v41) - v12)
      {
        v38 = v25;
        sub_BD3C24(v26, v21, a3, v14, a5, v19 - v41, a7, a8);
        a2 = v22;
        a1 = (v11 + v15);
        a5 = v38;
        a3 = v26;
        v45 = v41;
        a4 = v14;
        if (!v41)
        {
          return;
        }
      }

      else
      {
        sub_BD3C24(v11 + v15, v22, v26, v14, v25, v41, a7, a8);
        a1 = v26;
        a2 = v21;
        v45 = v37;
        a4 = v14;
        if (!v37)
        {
          return;
        }
      }
    }
  }
}

void sub_BD41BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_BD2CA0(va);
  _Unwind_Resume(a1);
}

void sub_BD41D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_BD2CA0(va);
  _Unwind_Resume(a1);
}

void ***sub_BD41E8(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v6 = *(v3 - 5);
        if (v6)
        {
          *(v3 - 4) = v6;
          operator delete(v6);
        }

        v7 = v3 - 9;
        v8 = *(v3 - 9);
        if (v8)
        {
          v9 = *(v3 - 8);
          v5 = *(v3 - 9);
          if (v9 != v8)
          {
            do
            {
              v10 = v9 - 168;
              v11 = *(v9 - 2);
              if (v11 != -1)
              {
                (off_26716D0[v11])(&v13, v9 - 168);
              }

              *(v9 - 2) = -1;
              v9 -= 168;
            }

            while (v10 != v8);
            v5 = *v7;
          }

          *(v3 - 8) = v8;
          operator delete(v5);
        }

        v3 -= 9;
      }

      while (v7 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

__int128 *sub_BD42E8(__int128 *result, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (result != a2)
  {
    v6 = result;
    v7 = *result;
    v8 = result[2];
    *(a3 + 16) = result[1];
    *(a3 + 32) = v8;
    *a3 = v7;
    v9 = result[3];
    v10 = result[4];
    v11 = result[5];
    *(a3 + 96) = *(result + 12);
    *(a3 + 64) = v10;
    *(a3 + 80) = v11;
    *(a3 + 48) = v9;
    *(a3 + 104) = *(result + 26);
    v12 = result[7];
    *(a3 + 128) = *(result + 16);
    *(a3 + 112) = v12;
    *(result + 15) = 0;
    *(result + 16) = 0;
    *(result + 14) = 0;
    *(a3 + 136) = *(result + 34);
    v13 = result[9];
    v14 = result[11];
    *(a3 + 160) = result[10];
    *(a3 + 176) = v14;
    *(a3 + 144) = v13;
    *(a3 + 192) = *(result + 24);
    *(a3 + 208) = 0;
    *(a3 + 216) = 0;
    *(a3 + 200) = 0;
    *(a3 + 200) = *(result + 200);
    *(a3 + 216) = *(result + 27);
    *(result + 25) = 0;
    *(result + 26) = 0;
    *(result + 27) = 0;
    *(a3 + 224) = 0;
    *(a3 + 232) = 0;
    *(a3 + 240) = 0;
    *(a3 + 224) = result[14];
    *(a3 + 240) = *(result + 30);
    *(result + 28) = 0;
    *(result + 29) = 0;
    *(result + 30) = 0;
    *(a3 + 248) = 0;
    *(a3 + 256) = 0;
    *(a3 + 264) = 0;
    *(a3 + 248) = *(result + 248);
    *(a3 + 264) = *(result + 33);
    *(result + 31) = 0;
    *(result + 32) = 0;
    *(result + 33) = 0;
    *(a3 + 272) = 0;
    *(a3 + 280) = 0;
    *(a3 + 288) = 0;
    *(a3 + 272) = result[17];
    *(a3 + 288) = *(result + 36);
    *(result + 34) = 0;
    *(result + 35) = 0;
    *(result + 36) = 0;
    v40 = 1;
    v15 = result + 296;
    if ((result + 296) != a2)
    {
      v17 = 0;
      v18 = a3;
      do
      {
        while (1)
        {
          v27 = *(a4 + 24);
          if (!v27)
          {
LABEL_16:
            sub_2B7420();
          }

          v28 = v15;
          result = (*(*v27 + 48))(v27, v15, v18);
          v29 = (v18 + 296);
          v30 = (v18 + 408);
          v31 = (v18 + 440);
          if (result)
          {
            break;
          }

          v19 = *v28;
          v20 = *(v28 + 32);
          *(v18 + 312) = *(v28 + 16);
          *(v18 + 328) = v20;
          *v29 = v19;
          v21 = *(v28 + 48);
          v22 = *(v28 + 64);
          v23 = *(v28 + 80);
          *(v18 + 392) = *(v28 + 96);
          *(v18 + 360) = v22;
          *(v18 + 376) = v23;
          *(v18 + 344) = v21;
          *(v18 + 400) = *(v6 + 400);
          v24 = *(v6 + 408);
          *(v18 + 424) = *(v6 + 424);
          *v30 = v24;
          *(v6 + 416) = 0u;
          *(v6 + 408) = 0;
          *(v18 + 432) = *(v6 + 432);
          v25 = *(v6 + 440);
          v26 = *(v6 + 472);
          *(v18 + 456) = *(v6 + 456);
          *(v18 + 472) = v26;
          *v31 = v25;
          *(v18 + 488) = *(v6 + 488);
          *(v18 + 496) = 0;
          *(v18 + 504) = 0u;
          *(v18 + 496) = *(v6 + 496);
          *(v18 + 512) = *(v6 + 512);
          *(v6 + 512) = 0;
          *(v6 + 496) = 0u;
          *(v18 + 536) = 0;
          *(v18 + 520) = 0u;
          *(v18 + 520) = *(v6 + 520);
          *(v18 + 528) = *(v6 + 528);
          *(v6 + 536) = 0;
          *(v6 + 520) = 0u;
          *(v18 + 560) = 0;
          *(v18 + 544) = 0u;
          *(v18 + 544) = *(v6 + 544);
          *(v18 + 560) = *(v6 + 560);
          *(v6 + 560) = 0;
          *(v6 + 544) = 0u;
          *(v18 + 584) = 0;
          *(v18 + 568) = 0u;
          *(v18 + 568) = *(v6 + 568);
          *(v18 + 576) = *(v6 + 576);
          *(v6 + 584) = 0;
          *(v6 + 568) = 0u;
          ++v40;
          v15 = v28 + 296;
          v17 += 296;
          v18 += 296;
          v6 = v28;
          if ((v28 + 296) == a2)
          {
            return result;
          }
        }

        v32 = *(v18 + 80);
        *(v18 + 360) = *(v18 + 64);
        *(v18 + 376) = v32;
        *(v18 + 392) = *(v18 + 96);
        v33 = *(v18 + 16);
        *v29 = *v18;
        *(v18 + 312) = v33;
        v34 = *(v18 + 48);
        *(v18 + 328) = *(v18 + 32);
        *(v18 + 344) = v34;
        *(v18 + 400) = *(v18 + 104);
        v35 = *(v18 + 112);
        *(v18 + 424) = *(v18 + 128);
        *v30 = v35;
        *(v18 + 120) = 0;
        *(v18 + 128) = 0;
        *(v18 + 112) = 0;
        *(v18 + 432) = *(v18 + 136);
        v36 = *(v18 + 176);
        *(v18 + 456) = *(v18 + 160);
        *(v18 + 472) = v36;
        *v31 = *(v18 + 144);
        *(v18 + 488) = *(v18 + 192);
        *(v18 + 496) = *(v18 + 200);
        *(v18 + 512) = *(v18 + 216);
        *(v18 + 200) = 0;
        *(v18 + 208) = 0;
        *(v18 + 520) = *(v18 + 224);
        *(v18 + 536) = *(v18 + 240);
        *(v18 + 216) = 0;
        *(v18 + 224) = 0;
        *(v18 + 232) = 0;
        *(v18 + 240) = 0;
        *(v18 + 544) = *(v18 + 248);
        *(v18 + 560) = *(v18 + 264);
        *(v18 + 248) = 0;
        *(v18 + 256) = 0;
        *(v18 + 568) = *(v18 + 272);
        *(v18 + 584) = *(v18 + 288);
        *(v18 + 264) = 0;
        *(v18 + 272) = 0;
        *(v18 + 280) = 0;
        *(v18 + 288) = 0;
        v37 = a3;
        ++v40;
        if (v18 != a3)
        {
          v38 = v17;
          while (1)
          {
            v39 = *(a4 + 24);
            if (!v39)
            {
              goto LABEL_16;
            }

            if (!(*(*v39 + 48))(v39, v28, a3 + v38 - 296))
            {
              break;
            }

            sub_BA9EF8(a3 + v38, (a3 + v38 - 296));
            v38 -= 296;
            if (!v38)
            {
              v37 = a3;
              goto LABEL_14;
            }
          }

          v37 = a3 + v38;
        }

LABEL_14:
        result = sub_BA9EF8(v37, v28);
        v15 = v28 + 296;
        v17 += 296;
        v18 += 296;
        v6 = v28;
      }

      while ((v28 + 296) != a2);
    }
  }

  return result;
}

void sub_BD4720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_BD4C2C(va, v9);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_BD4744(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v54 = 0;
  if (a1 == a2)
  {
LABEL_15:
    while (a3 != a4)
    {
      v46 = *a3;
      v47 = a3[2];
      *(a5 + 16) = a3[1];
      *(a5 + 32) = v47;
      *a5 = v46;
      v48 = a3[3];
      v49 = a3[4];
      v50 = a3[5];
      *(a5 + 96) = *(a3 + 12);
      *(a5 + 64) = v49;
      *(a5 + 80) = v50;
      *(a5 + 48) = v48;
      *(a5 + 104) = *(a3 + 26);
      v51 = a3[7];
      *(a5 + 128) = *(a3 + 16);
      *(a5 + 112) = v51;
      *(a3 + 15) = 0;
      *(a3 + 16) = 0;
      *(a3 + 14) = 0;
      *(a5 + 136) = *(a3 + 34);
      v52 = a3[9];
      v53 = a3[11];
      *(a5 + 160) = a3[10];
      *(a5 + 176) = v53;
      *(a5 + 144) = v52;
      *(a5 + 192) = *(a3 + 24);
      *(a5 + 208) = 0;
      *(a5 + 216) = 0;
      *(a5 + 200) = 0;
      *(a5 + 200) = *(a3 + 200);
      *(a5 + 216) = *(a3 + 27);
      *(a3 + 25) = 0;
      *(a3 + 26) = 0;
      *(a3 + 27) = 0;
      *(a5 + 224) = 0;
      *(a5 + 232) = 0;
      *(a5 + 240) = 0;
      *(a5 + 224) = a3[14];
      *(a5 + 240) = *(a3 + 30);
      *(a3 + 28) = 0;
      *(a3 + 29) = 0;
      *(a3 + 30) = 0;
      *(a5 + 248) = 0;
      *(a5 + 256) = 0;
      *(a5 + 264) = 0;
      *(a5 + 248) = *(a3 + 248);
      *(a5 + 264) = *(a3 + 33);
      *(a3 + 31) = 0;
      *(a3 + 32) = 0;
      *(a3 + 33) = 0;
      *(a5 + 272) = 0;
      *(a5 + 280) = 0;
      *(a5 + 288) = 0;
      result = a3[17];
      *(a5 + 272) = result;
      *(a5 + 288) = *(a3 + 36);
      *(a3 + 34) = 0;
      *(a3 + 35) = 0;
      *(a3 + 36) = 0;
      a3 = (a3 + 296);
      a5 += 296;
    }
  }

  else
  {
    v11 = a1;
    v12 = 0;
    while (a3 != a4)
    {
      v22 = *(a6 + 24);
      if (!v22)
      {
        sub_2B7420();
      }

      v23 = (*(*v22 + 48))(v22, a3, v11);
      v24 = a5 + v12;
      v25 = a5 + v12;
      if (v23)
      {
        v26 = *a3;
        v27 = a3[2];
        *(v24 + 16) = a3[1];
        *(v24 + 32) = v27;
        *v24 = v26;
        v28 = a3[3];
        v29 = a3[4];
        v30 = a3[5];
        *(v24 + 96) = *(a3 + 12);
        *(v24 + 64) = v29;
        *(v24 + 80) = v30;
        *(v24 + 48) = v28;
        *(v25 + 104) = *(a3 + 26);
        v31 = a3[7];
        *(v25 + 128) = *(a3 + 16);
        *(v25 + 112) = v31;
        *(a3 + 15) = 0;
        *(a3 + 16) = 0;
        *(a3 + 14) = 0;
        *(v25 + 136) = *(a3 + 34);
        v32 = a3[9];
        v33 = a3[11];
        *(v25 + 160) = a3[10];
        *(v25 + 176) = v33;
        *(v25 + 144) = v32;
        *(v25 + 192) = *(a3 + 24);
        *(v25 + 208) = 0;
        *(v25 + 216) = 0;
        *(v25 + 200) = 0;
        *(v25 + 200) = *(a3 + 200);
        *(v25 + 216) = *(a3 + 27);
        *(a3 + 25) = 0;
        *(a3 + 26) = 0;
        *(a3 + 27) = 0;
        *(v25 + 224) = 0;
        *(v25 + 232) = 0;
        *(v25 + 240) = 0;
        *(v25 + 224) = a3[14];
        *(v25 + 240) = *(a3 + 30);
        *(a3 + 28) = 0;
        *(a3 + 29) = 0;
        *(a3 + 30) = 0;
        *(v25 + 248) = 0;
        *(v25 + 256) = 0;
        *(v25 + 264) = 0;
        *(v25 + 248) = *(a3 + 248);
        *(v25 + 264) = *(a3 + 33);
        *(a3 + 31) = 0;
        *(a3 + 32) = 0;
        *(a3 + 33) = 0;
        *(v25 + 272) = 0;
        *(v25 + 280) = 0;
        *(v25 + 288) = 0;
        result = a3[17];
        *(v25 + 272) = result;
        *(v25 + 288) = *(a3 + 36);
        *(a3 + 34) = 0;
        *(a3 + 35) = 0;
        *(a3 + 36) = 0;
        a3 = (a3 + 296);
      }

      else
      {
        v13 = *v11;
        v14 = v11[2];
        *(v24 + 16) = v11[1];
        *(v24 + 32) = v14;
        *v24 = v13;
        v15 = v11[3];
        v16 = v11[4];
        v17 = v11[5];
        *(v24 + 96) = *(v11 + 12);
        *(v24 + 64) = v16;
        *(v24 + 80) = v17;
        *(v24 + 48) = v15;
        *(v25 + 104) = *(v11 + 26);
        v18 = v11[7];
        *(v25 + 128) = *(v11 + 16);
        *(v25 + 112) = v18;
        *(v11 + 15) = 0;
        *(v11 + 16) = 0;
        *(v11 + 14) = 0;
        *(v25 + 136) = *(v11 + 34);
        v19 = v11[9];
        v20 = v11[11];
        *(v25 + 160) = v11[10];
        *(v25 + 176) = v20;
        *(v25 + 144) = v19;
        *(v25 + 192) = *(v11 + 24);
        *(v25 + 208) = 0;
        *(v25 + 216) = 0;
        *(v25 + 200) = 0;
        *(v25 + 200) = *(v11 + 200);
        *(v25 + 216) = *(v11 + 27);
        *(v11 + 25) = 0;
        *(v11 + 26) = 0;
        *(v11 + 27) = 0;
        *(v25 + 224) = 0;
        *(v25 + 232) = 0;
        *(v25 + 240) = 0;
        *(v25 + 224) = v11[14];
        *(v25 + 240) = *(v11 + 30);
        *(v11 + 28) = 0;
        *(v11 + 29) = 0;
        *(v11 + 30) = 0;
        *(v25 + 248) = 0;
        *(v25 + 256) = 0;
        *(v25 + 264) = 0;
        *(v25 + 248) = *(v11 + 248);
        *(v25 + 264) = *(v11 + 33);
        *(v11 + 31) = 0;
        *(v11 + 32) = 0;
        *(v11 + 33) = 0;
        *(v25 + 272) = 0;
        *(v25 + 280) = 0;
        *(v25 + 288) = 0;
        result = v11[17];
        *(v25 + 272) = result;
        *(v25 + 288) = *(v11 + 36);
        *(v11 + 34) = 0;
        *(v11 + 35) = 0;
        *(v11 + 36) = 0;
        v11 = (v11 + 296);
      }

      ++v54;
      v12 += 296;
      if (v11 == a2)
      {
        a5 += v12;
        goto LABEL_15;
      }
    }

    if (v11 != a2)
    {
      v34 = 0;
      do
      {
        v35 = v11 + v34;
        v36 = a5 + v12 + v34;
        v37 = *(v11 + v34);
        v38 = *(v11 + v34 + 32);
        *(v36 + 16) = *(v11 + v34 + 16);
        *(v36 + 32) = v38;
        *v36 = v37;
        v39 = *(v11 + v34 + 48);
        v40 = *(v11 + v34 + 64);
        v41 = *(v11 + v34 + 80);
        *(v36 + 96) = *(v11 + v34 + 96);
        *(v36 + 64) = v40;
        *(v36 + 80) = v41;
        *(v36 + 48) = v39;
        v42 = a5 + v34 + v12;
        *(v42 + 104) = *(v11 + v34 + 104);
        v43 = *(v11 + v34 + 112);
        *(v42 + 128) = *(v11 + v34 + 128);
        *(v42 + 112) = v43;
        *(v35 + 15) = 0;
        *(v35 + 16) = 0;
        *(v35 + 14) = 0;
        *(v42 + 136) = *(v11 + v34 + 136);
        v44 = *(v11 + v34 + 144);
        v45 = *(v11 + v34 + 176);
        *(v36 + 160) = *(v11 + v34 + 160);
        *(v36 + 176) = v45;
        *(v36 + 144) = v44;
        *&v44 = *(v11 + v34 + 192);
        *(v42 + 208) = 0;
        *(v42 + 216) = 0;
        *(v42 + 192) = v44;
        *(v42 + 200) = 0;
        *(v42 + 200) = *(v11 + v34 + 200);
        *(v42 + 216) = *(v11 + v34 + 216);
        *(v35 + 25) = 0;
        *(v35 + 26) = 0;
        *(v35 + 27) = 0;
        *(v42 + 224) = 0;
        *(v42 + 232) = 0;
        *(v42 + 240) = 0;
        *(v42 + 224) = *(v11 + v34 + 224);
        *(v42 + 240) = *(v11 + v34 + 240);
        *(v35 + 28) = 0;
        *(v35 + 29) = 0;
        *(v35 + 30) = 0;
        *(v42 + 248) = 0;
        *(v42 + 256) = 0;
        *(v42 + 264) = 0;
        *(v42 + 248) = *(v11 + v34 + 248);
        *(v42 + 264) = *(v11 + v34 + 264);
        *(v35 + 31) = 0;
        *(v35 + 32) = 0;
        *(v35 + 33) = 0;
        *(v42 + 272) = 0;
        *(v42 + 280) = 0;
        *(v42 + 288) = 0;
        result = *(v11 + v34 + 272);
        *(v42 + 272) = result;
        *(v42 + 288) = *(v11 + v34 + 288);
        *(v35 + 34) = 0;
        *(v35 + 35) = 0;
        *(v35 + 36) = 0;
        v34 += 296;
      }

      while (v35 + 296 != a2);
    }
  }

  return result;
}

void sub_BD4C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_BD4C2C(va, v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD4C2C(unint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = 0;
    v4 = a2 + 200;
    do
    {
      v5 = *(v4 + 72);
      if (v5)
      {
        *(v4 + 80) = v5;
        operator delete(v5);
      }

      v6 = *(v4 + 48);
      if (v6)
      {
        *(v4 + 56) = v6;
        operator delete(v6);
      }

      v7 = *(v4 + 24);
      if (v7)
      {
        *(v4 + 32) = v7;
        operator delete(v7);
      }

      sub_BD41E8(v4);
      if (*(v4 - 65) < 0)
      {
        operator delete(*(v4 - 88));
      }

      ++v3;
      v4 += 296;
    }

    while (v3 < *a1);
  }
}

void sub_BD4CCC(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7)
{
  v10 = a2;
  v11 = a1;
  if (a5 > a6)
  {
    if (a2 != a3)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = a7 + v12;
        v15 = a2 + v12;
        v16 = *(a2 + v12);
        v17 = *(a2 + v12 + 32);
        *(v14 + 1) = *(a2 + v12 + 16);
        *(v14 + 2) = v17;
        *v14 = v16;
        v18 = *(a2 + v12 + 48);
        v19 = *(a2 + v12 + 64);
        v20 = *(a2 + v12 + 80);
        *(v14 + 12) = *(a2 + v12 + 96);
        *(v14 + 4) = v19;
        *(v14 + 5) = v20;
        *(v14 + 3) = v18;
        *(v14 + 26) = *(a2 + v12 + 104);
        v21 = *(a2 + v12 + 112);
        *(v14 + 16) = *(a2 + v12 + 128);
        *(v14 + 7) = v21;
        *(v15 + 15) = 0;
        *(v15 + 16) = 0;
        *(v15 + 14) = 0;
        *(v14 + 34) = *(a2 + v12 + 136);
        v22 = *(a2 + v12 + 144);
        v23 = *(a2 + v12 + 176);
        *(v14 + 10) = *(a2 + v12 + 160);
        *(v14 + 11) = v23;
        *(v14 + 9) = v22;
        *&v22 = *(a2 + v12 + 192);
        *(v14 + 26) = 0;
        *(v14 + 27) = 0;
        *(v14 + 25) = 0;
        *(v14 + 24) = v22;
        *(v14 + 200) = *(a2 + v12 + 200);
        *(v14 + 27) = *(a2 + v12 + 216);
        *(v15 + 25) = 0;
        *(v15 + 26) = 0;
        *(v15 + 27) = 0;
        *(v14 + 28) = 0;
        *(v14 + 29) = 0;
        *(v14 + 30) = 0;
        *(v14 + 14) = *(a2 + v12 + 224);
        *(v14 + 30) = *(a2 + v12 + 240);
        *(v15 + 28) = 0;
        *(v15 + 29) = 0;
        *(v15 + 30) = 0;
        *(v14 + 31) = 0;
        *(v14 + 32) = 0;
        *(v14 + 33) = 0;
        *(v14 + 248) = *(a2 + v12 + 248);
        *(v14 + 33) = *(a2 + v12 + 264);
        *(v15 + 31) = 0;
        *(v15 + 32) = 0;
        *(v15 + 33) = 0;
        *(v14 + 34) = 0;
        *(v14 + 35) = 0;
        *(v14 + 36) = 0;
        *(v14 + 17) = *(a2 + v12 + 272);
        *(v14 + 36) = *(a2 + v12 + 288);
        *(v15 + 34) = 0;
        *(v15 + 35) = 0;
        *(v15 + 36) = 0;
        ++v13;
        v12 += 296;
      }

      while (v15 + 296 != a3);
      v46 = v13;
      v24 = a3 - 296;
      v25 = (a7 + v12);
      while (v10 != v11)
      {
        v26 = *(a4 + 24);
        if (!v26)
        {
          sub_2B7420();
        }

        v27 = (*(*v26 + 48))(v26, v25 - 296, v10 - 296);
        if (v27)
        {
          v28 = (v10 - 296);
        }

        else
        {
          v28 = (v25 - 296);
        }

        if (v27)
        {
          v10 = (v10 - 296);
        }

        else
        {
          v25 = (v25 - 296);
        }

        sub_BA9EF8(v24, v28);
        v24 -= 296;
        if (v25 == a7)
        {
          goto LABEL_32;
        }
      }

      while (v25 != a7)
      {
        v25 = (v25 - 296);
        sub_BA9EF8(v24, v25);
        v24 -= 296;
      }

      goto LABEL_32;
    }

LABEL_20:
    v46 = 0;
    goto LABEL_32;
  }

  if (a1 == a2)
  {
    goto LABEL_20;
  }

  v29 = 0;
  v30 = 0;
  do
  {
    v31 = a7 + v29;
    v32 = a1 + v29;
    v33 = *(a1 + v29);
    v34 = *(a1 + v29 + 32);
    *(v31 + 1) = *(a1 + v29 + 16);
    *(v31 + 2) = v34;
    *v31 = v33;
    v35 = *(a1 + v29 + 48);
    v36 = *(a1 + v29 + 64);
    v37 = *(a1 + v29 + 80);
    *(v31 + 12) = *(a1 + v29 + 96);
    *(v31 + 4) = v36;
    *(v31 + 5) = v37;
    *(v31 + 3) = v35;
    *(v31 + 26) = *(a1 + v29 + 104);
    v38 = *(a1 + v29 + 112);
    *(v31 + 16) = *(a1 + v29 + 128);
    *(v31 + 7) = v38;
    *(v32 + 15) = 0;
    *(v32 + 16) = 0;
    *(v32 + 14) = 0;
    *(v31 + 34) = *(a1 + v29 + 136);
    v39 = *(a1 + v29 + 144);
    v40 = *(a1 + v29 + 176);
    *(v31 + 10) = *(a1 + v29 + 160);
    *(v31 + 11) = v40;
    *(v31 + 9) = v39;
    *&v39 = *(a1 + v29 + 192);
    *(v31 + 26) = 0;
    *(v31 + 27) = 0;
    *(v31 + 25) = 0;
    *(v31 + 24) = v39;
    *(v31 + 200) = *(a1 + v29 + 200);
    *(v31 + 27) = *(a1 + v29 + 216);
    *(v32 + 25) = 0;
    *(v32 + 26) = 0;
    *(v32 + 27) = 0;
    *(v31 + 28) = 0;
    *(v31 + 29) = 0;
    *(v31 + 30) = 0;
    *(v31 + 14) = *(a1 + v29 + 224);
    *(v31 + 30) = *(a1 + v29 + 240);
    *(v32 + 28) = 0;
    *(v32 + 29) = 0;
    *(v32 + 30) = 0;
    *(v31 + 31) = 0;
    *(v31 + 32) = 0;
    *(v31 + 33) = 0;
    *(v31 + 248) = *(a1 + v29 + 248);
    *(v31 + 33) = *(a1 + v29 + 264);
    *(v32 + 31) = 0;
    *(v32 + 32) = 0;
    *(v32 + 33) = 0;
    *(v31 + 34) = 0;
    *(v31 + 35) = 0;
    *(v31 + 36) = 0;
    *(v31 + 17) = *(a1 + v29 + 272);
    *(v31 + 36) = *(a1 + v29 + 288);
    *(v32 + 34) = 0;
    *(v32 + 35) = 0;
    *(v32 + 36) = 0;
    ++v30;
    v29 += 296;
  }

  while (v32 + 296 != a2);
  v46 = v30;
  v41 = (a7 + v29);
  v42 = a7 + v29 - 296;
  v43 = a7;
  while (v10 != a3)
  {
    v44 = *(a4 + 24);
    if (!v44)
    {
      sub_2B7420();
    }

    if ((*(*v44 + 48))(v44, v10, v43))
    {
      sub_BA9EF8(v11, v10);
      v10 = (v10 + 296);
      v11 += 296;
      if (v41 == v43)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_BA9EF8(v11, v43);
      v43 = (v43 + 296);
      v11 += 296;
      if (v41 == v43)
      {
        goto LABEL_32;
      }
    }
  }

  do
  {
    sub_BA9EF8(v11, v43);
    v11 += 296;
    v45 = v42 == v43;
    v43 = (v43 + 296);
  }

  while (!v45);
LABEL_32:
  if (a7)
  {
    sub_BD4C2C(&v46, a7);
  }
}

void sub_BD50BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unint64_t a10)
{
  if (v10)
  {
    sub_BD4C2C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BD5194(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD52C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL sub_BD53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 13) | *(a3 + 13))
  {
    return 0;
  }

  return *(a3 + 2) > 1u && *(a2 + 2) < 2u;
}

uint64_t sub_BD53F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD550C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD55F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671900;
  a2[1] = v2;
  return result;
}

BOOL sub_BD5620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 13) != 1 || *(a3 + 13) != 1)
  {
    return 0;
  }

  if (*(*(a1 + 8) + 184))
  {
    return *(a2 + 4 * (*(a2 + 36) != 0x7FFFFFFF) + 32) > *(a3 + 4 * (*(a3 + 36) != 0x7FFFFFFF) + 32);
  }

  return *(a2 + 4 * (*(a2 + 24) != 0x7FFFFFFF) + 20) < *(a3 + 4 * (*(a3 + 24) != 0x7FFFFFFF) + 20);
}

uint64_t sub_BD56B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_4")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_4" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_4"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_4" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BD57A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671980;
  a2[1] = v2;
  return result;
}

BOOL sub_BD57CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 15) != 1 || *(a3 + 15) != 1)
  {
    return 0;
  }

  if (*(*(a1 + 8) + 184))
  {
    return *(a2 + 4 * (*(a2 + 36) != 0x7FFFFFFF) + 32) > *(a3 + 4 * (*(a3 + 36) != 0x7FFFFFFF) + 32);
  }

  return *(a2 + 4 * (*(a2 + 24) != 0x7FFFFFFF) + 20) < *(a3 + 4 * (*(a3 + 24) != 0x7FFFFFFF) + 20);
}

uint64_t sub_BD5868(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_5")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_5" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_5"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning21JourneyStableOrdering23get_comparator_functionERKNS1_11SpaResponseERKNS2_12comparator_tEE3$_5" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *sub_BD58E0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 != v4)
  {
    v7 = result;
    do
    {
      v8 = *(a3 + 24);
      if (!v8)
      {
        sub_2B7420();
      }

      result = (*(*v8 + 48))(v8, v3);
      if (!result)
      {
        goto LABEL_4;
      }

      if (*(a2 + 184) != 1)
      {
        if (*(a2 + 184))
        {
          goto LABEL_4;
        }

        sub_A82F14(*v7, v3);
      }

      result = sub_A83B68(*v7, v3);
LABEL_4:
      v3 += 296;
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t sub_BD5998(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_A57920((*(a1 + 48) + 4136), *(a2 + 32));
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!v6[2])
  {
    v8 = 0;
    if (v7 >= 9)
    {
      goto LABEL_19;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v5 + v6[2] + *(v5 + v6[2]);
  if (v7 < 9)
  {
    goto LABEL_6;
  }

LABEL_19:
  v22 = v6[4];
  if (!v22)
  {
    goto LABEL_6;
  }

  v9 = (v5 + v22 + *(v5 + v22));
LABEL_7:
  v10 = *&v8[8 * *(sub_A571D4(v9, v4) + 14) + 4];
  v29 = __ROR8__(v10, 32);
  v11 = sub_92FC60(*(*(a1 + 48) + 4056) + 24, v10, 0, "line");
  v12 = (v11 - *v11);
  if (*v12 < 0x25u)
  {
    if (*(a1 + 32))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = v12[18];
    if (v13)
    {
      LOBYTE(v13) = *(v11 + v13);
    }

    if ((*(a1 + 32) >> v13))
    {
LABEL_11:
      v27 = sub_A56F04((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 52), *(a2 + 40));
      v28 = v14;
      v26 = sub_BD5C90((*(a1 + 48) + 4184), &v27);
      v25 = sub_BD5DA0((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 52));
      v24 = sub_BD5F34((*(a1 + 48) + 4136), *(a2 + 32), *(a2 + 52));
      v15 = *(a2 + 32);
      v16 = *(a2 + 52);
      v17 = sub_A57920((*(a1 + 48) + 4136), v15);
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v23 = __ROR8__(*sub_A571D4(v20, v16), 32);
      operator new();
    }
  }

  return 0x7FFFFFFF7FFFFFFFLL;
}

void sub_BD5C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BD5C90(void *a1, unsigned int *a2)
{
  v3 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v4 = v3;
  v5 = &v3[-*v3];
  if (*v5 >= 5u && (v6 = *(v5 + 2)) != 0)
  {
    v7 = &v3[v6 + *&v3[v6]];
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_BCA9F8(v7, *a2);
  v9 = (v4 - *v4);
  if (*v9 < 0xDu)
  {
    v10 = 0;
    v11 = (v8 - *v8);
    if (*v11 < 0x15u)
    {
LABEL_13:
      v13 = -1;
      goto LABEL_14;
    }
  }

  else
  {
    v10 = v9[6];
    if (v10)
    {
      v10 = (v10 + v4 + *(v10 + v4));
    }

    v11 = (v8 - *v8);
    if (*v11 < 0x15u)
    {
      goto LABEL_13;
    }
  }

  v12 = v11[10];
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v8 + v12);
LABEL_14:
  v14 = sub_A56DB8(v10, a2[2] + v13);
  return ((*(v14 + 2) + 1) << 16) | (*(v14 + 3) << 24) | *v14;
}

uint64_t sub_BD5DA0(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  v6 = sub_A57920(a1, a2);
  v7 = (v6 - *v6);
  if (*v7 < 7u)
  {
    goto LABEL_20;
  }

  v8 = v7[3];
  if (v8)
  {
    if (*(v6 + v8 + *(v6 + v8)))
    {
      v9 = a3;
      v10 = sub_A57920(a1, a2);
      v11 = (v10 - *v10);
      if (*v11 >= 9u && (v12 = v11[4]) != 0)
      {
        v13 = (v10 + v12 + *(v10 + v12));
      }

      else
      {
        v13 = 0;
      }

      v14 = *(sub_A571D4(v13, a3) + 6);
      v15 = sub_A56F04(a1, a2, v9, 0);
      v16 = sub_3A231C(*a1 + 24, __ROR8__(v15, 32), 0);
      v17 = &v16[-*v16];
      if (*v17 >= 5u && (v18 = *(v17 + 2)) != 0)
      {
        v19 = &v16[v18 + *&v16[v18]];
      }

      else
      {
        v19 = 0;
      }

      v20 = sub_BCA9F8(v19, v15);
      v21 = (v20 - *v20);
      v22 = *v21;
      if (v22 >= 0x25)
      {
        if (v21[18])
        {
          v23 = sub_BCAB48((v20 + v21[18] + *(v20 + v21[18])), v14);
          if (v23 == -1)
          {
            goto LABEL_20;
          }

          return v23 | (HIDWORD(v15) << 32);
        }

LABEL_17:
        v24 = v21[7];
        if (!v24)
        {
          goto LABEL_20;
        }

        v23 = *(v20 + v24);
        if (v23 == -1)
        {
          goto LABEL_20;
        }

        return v23 | (HIDWORD(v15) << 32);
      }

      if (v22 >= 0xF)
      {
        goto LABEL_17;
      }
    }

LABEL_20:
    v8 = 0;
  }

  return (v8 << 32) | 0xFFFFFFFFLL;
}

uint64_t sub_BD5F34(uint64_t *a1, unint64_t a2, unsigned int a3)
{
  v6 = sub_A57920(a1, a2);
  v7 = (v6 - *v6);
  if (*v7 < 7u)
  {
    goto LABEL_20;
  }

  v8 = v7[3];
  if (v8)
  {
    if (*(v6 + v8 + *(v6 + v8)))
    {
      v9 = a3;
      v10 = sub_A57920(a1, a2);
      v11 = (v10 - *v10);
      if (*v11 >= 9u && (v12 = v11[4]) != 0)
      {
        v13 = (v10 + v12 + *(v10 + v12));
      }

      else
      {
        v13 = 0;
      }

      v14 = *(sub_A571D4(v13, a3) + 6);
      v15 = sub_A56F04(a1, a2, v9, 0);
      v16 = sub_3A231C(*a1 + 24, __ROR8__(v15, 32), 0);
      v17 = &v16[-*v16];
      if (*v17 >= 5u && (v18 = *(v17 + 2)) != 0)
      {
        v19 = &v16[v18 + *&v16[v18]];
      }

      else
      {
        v19 = 0;
      }

      v20 = sub_BCA9F8(v19, v15);
      v21 = (v20 - *v20);
      v22 = *v21;
      if (v22 >= 0x27)
      {
        if (v21[19])
        {
          v23 = sub_BCAB48((v20 + v21[19] + *(v20 + v21[19])), v14);
          if (v23 == -1)
          {
            goto LABEL_20;
          }

          return v23 | (HIDWORD(v15) << 32);
        }

LABEL_17:
        v24 = v21[8];
        if (!v24)
        {
          goto LABEL_20;
        }

        v23 = *(v20 + v24);
        if (v23 == -1)
        {
          goto LABEL_20;
        }

        return v23 | (HIDWORD(v15) << 32);
      }

      if (v22 >= 0x11)
      {
        goto LABEL_17;
      }
    }

LABEL_20:
    v8 = 0;
  }

  return (v8 << 32) | 0xFFFFFFFFLL;
}

uint64_t sub_BD60C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_A57920((*(a1 + 48) + 4136), *(a2 + 28));
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!v6[2])
  {
    v8 = 0;
    if (v7 >= 9)
    {
      goto LABEL_19;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v5 + v6[2] + *(v5 + v6[2]);
  if (v7 < 9)
  {
    goto LABEL_6;
  }

LABEL_19:
  v22 = v6[4];
  if (!v22)
  {
    goto LABEL_6;
  }

  v9 = (v5 + v22 + *(v5 + v22));
LABEL_7:
  v10 = *&v8[8 * *(sub_A571D4(v9, v4) + 14) + 4];
  v29 = __ROR8__(v10, 32);
  v11 = sub_92FC60(*(*(a1 + 48) + 4056) + 24, v10, 0, "line");
  v12 = (v11 - *v11);
  if (*v12 < 0x25u)
  {
    if (*(a1 + 32))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = v12[18];
    if (v13)
    {
      LOBYTE(v13) = *(v11 + v13);
    }

    if ((*(a1 + 32) >> v13))
    {
LABEL_11:
      v27 = sub_A56F04((*(a1 + 48) + 4136), *(a2 + 28), *(a2 + 48), *(a2 + 36));
      v28 = v14;
      v26 = sub_BD5C90((*(a1 + 48) + 4184), &v27);
      v25 = sub_BD5DA0((*(a1 + 48) + 4136), *(a2 + 28), *(a2 + 48));
      v24 = sub_BD5F34((*(a1 + 48) + 4136), *(a2 + 28), *(a2 + 48));
      v15 = *(a2 + 28);
      v16 = *(a2 + 48);
      v17 = sub_A57920((*(a1 + 48) + 4136), v15);
      v18 = (v17 - *v17);
      if (*v18 >= 9u && (v19 = v18[4]) != 0)
      {
        v20 = (v17 + v19 + *(v17 + v19));
      }

      else
      {
        v20 = 0;
      }

      v23 = __ROR8__(*sub_A571D4(v20, v16), 32);
      operator new();
    }
  }

  return 0x7FFFFFFF7FFFFFFFLL;
}

void sub_BD6390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_BD63C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  if (v4)
  {
    if (v4 == a3)
    {
      *(a1 + 24) = a1;
      (*(**(a3 + 24) + 24))(*(a3 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v4 + 16))(v4, a2);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  *(a1 + 32) = 0;
  operator new();
}

void sub_BD6584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_A31E68(v14);
    _Unwind_Resume(a1);
  }

  sub_A31E68(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_BD65F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  v3 = *(a2 + 56);
  if (v2 != v3)
  {
    v4 = result;
    v5 = v2 + 124;
    do
    {
      result = sub_BD60C8(v4, v5);
      *(v5 + 88) = result;
      v6 = v5 + 124;
      v5 += 248;
    }

    while (v6 != v3);
  }

  return result;
}

uint64_t sub_BD6650(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 24);
      if (!v5)
      {
        sub_2B7420();
      }

      result = (*(*v5 + 48))(v5, v2);
      if (result)
      {
        v6 = *(v2 + 200);
        v7 = *(v2 + 208);
        while (v6 != v7)
        {
          if (!*(v6 + 24))
          {
            v9 = *v6;
            v10 = *(v6 + 8);
            if (*v6 != v10)
            {
              do
              {
                if (*(v9 + 160))
                {
LABEL_36:
                  sub_5AF20();
                }

                result = sub_BD5998(v4, v9);
                *(v9 + 148) = result;
                v9 += 168;
              }

              while (v9 != v10);
              v9 = *v6;
              v10 = *(v6 + 8);
            }

            v19 = 0x7FFFFFFF;
            v20 = 0x7FFFFFFF;
            if (v9 == v10)
            {
              v8 = 0x7FFFFFFF7FFFFFFFLL;
            }

            else
            {
              v11 = (v9 + 148);
              LODWORD(v12) = 0x7FFFFFFF;
              LODWORD(v13) = 0x7FFFFFFF;
              do
              {
                if (v11[3])
                {
                  goto LABEL_36;
                }

                v15 = v11;
                if (v12 != 0x7FFFFFFF)
                {
                  if (*v11 >= v12)
                  {
                    v16 = &v20;
                  }

                  else
                  {
                    v16 = v11;
                  }

                  if (*v11 == 0x7FFFFFFF)
                  {
                    v15 = &v20;
                  }

                  else
                  {
                    v15 = v16;
                  }
                }

                v17 = v11 + 1;
                if (v13 != 0x7FFFFFFF)
                {
                  if (v13 >= *v17)
                  {
                    v18 = &v19;
                  }

                  else
                  {
                    v18 = v11 + 1;
                  }

                  if (*v17 == 0x7FFFFFFF)
                  {
                    v17 = &v19;
                  }

                  else
                  {
                    v17 = v18;
                  }
                }

                v12 = *v15;
                v13 = *v17;
                v19 = *v17;
                v20 = v12;
                v14 = v11 + 5;
                v11 += 42;
              }

              while (v14 != v10);
              v8 = v12 | (v13 << 32);
            }

            *(v6 + 60) = v8;
          }

          v6 += 72;
        }
      }

      v2 += 296;
    }

    while (v2 != v3);
  }

  return result;
}

unint64_t sub_BD67E0(uint64_t a1, unsigned int *a2, unint64_t a3, int a4, signed int a5)
{
  v10 = sub_A57920((*(a1 + 48) + 4136), a3);
  v11 = (v10 - *v10);
  if (*v11 < 0x13u || (v12 = v11[9]) == 0 || (*(v10 + v12) & 1) == 0)
  {
    v13 = *(a1 + 48);
    v53 = a5;
    v54 = -NAN;
    v14 = sub_BD6B10((v13 + 4136), a3, a4, &v53);
    v55 = v14;
    v15 = *a2;
    v16 = v14;
    if (*a2 != 0x7FFFFFFF)
    {
      if (v14 == 0x7FFFFFFF)
      {
        v18 = a2[1];
        v17 = a2 + 1;
        if (v18 == 0x7FFFFFFF)
        {
          v19 = &v55;
        }

        else
        {
          v19 = v17;
        }

        v16 = v15;
LABEL_20:
        v24 = *v19;
        return v16 | (v24 << 32);
      }

      v16 = v55;
      if (v14 >= v15)
      {
        v16 = *a2;
      }
    }

    v22 = a2[1];
    v21 = a2 + 1;
    v20 = v22;
    if (v22 >= v14)
    {
      v23 = v21;
    }

    else
    {
      v23 = &v55;
    }

    if (v14 == 0x7FFFFFFF)
    {
      v23 = v21;
    }

    if (v20 == 0x7FFFFFFF)
    {
      v19 = &v55;
    }

    else
    {
      v19 = v23;
    }

    goto LABEL_20;
  }

  v26 = sub_A5706C((*(a1 + 48) + 4136), a3);
  v27 = v26;
  v28 = &v26[-*v26];
  if (*v28 < 5u)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(v28 + 2);
    if (v29)
    {
      v29 += &v26[*&v26[v29]];
    }
  }

  v30 = 4 * a3;
  v31 = (v29 + v30 + 4 + *(v29 + v30 + 4));
  v32 = (v31 - *v31);
  if (*v32 >= 7u && (v33 = v32[3]) != 0)
  {
    v34 = (v31 + v33 + *(v31 + v33));
  }

  else
  {
    v34 = 0;
  }

  v35 = sub_A7AC40(v34, a5);
  v36 = (v27 - *v27);
  if (*v36 < 7u)
  {
    v37 = 0;
  }

  else
  {
    v37 = v36[3];
    if (v37)
    {
      v37 = (v37 + v27 + *(v37 + v27));
    }
  }

  v38 = sub_A7AEE0(v37, v35[1] + a4)[1];
  v39 = sub_A5706C((*(a1 + 48) + 4136), a3);
  v40 = &v39[-*v39];
  if (*v40 < 5u)
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + 2);
    if (v41)
    {
      v41 += &v39[*&v39[v41]];
    }
  }

  v42 = (v41 + v30 + 4 + *(v41 + v30 + 4));
  v43 = (v42 - *v42);
  if (*v43 >= 7u && (v44 = v43[3]) != 0)
  {
    v45 = (v42 + v44 + *(v42 + v44));
  }

  else
  {
    v45 = 0;
  }

  v46 = *(sub_A7AC40(v45, a5) + 8);
  v47 = sub_A7AB44((*(a1 + 48) + 4136), a3, a5, 0) + v38;
  v53 = v47;
  v48 = sub_A7AA48((*(a1 + 48) + 4136), a3, a5, v46 - 1) + v38;
  v55 = v48;
  if (*a2 == 0x7FFFFFFF)
  {
    v49 = &v53;
  }

  else
  {
    v49 = a2;
    if (v47 != 0x7FFFFFFF)
    {
      v49 = &v53;
      if (v47 >= *a2)
      {
        v49 = a2;
      }
    }
  }

  v16 = *v49;
  v52 = a2[1];
  v51 = a2 + 1;
  v50 = v52;
  if (v52 == 0x7FFFFFFF)
  {
    v51 = &v55;
  }

  else if (v48 != 0x7FFFFFFF && v50 < v48)
  {
    v51 = &v55;
  }

  v24 = *v51;
  return v16 | (v24 << 32);
}

uint64_t sub_BD6B10(uint64_t *a1, unint64_t a2, int a3, unsigned int *a4)
{
  v6 = a2;
  v7 = sub_A5706C(a1, a2);
  v8 = v7;
  v9 = &v7[-*v7];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v7[*&v7[v10]];
    }
  }

  v11 = (v10 + 4 * v6 + 4 + *(v10 + 4 * v6 + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
  }

  else
  {
    v14 = 0;
  }

  v15 = sub_A7AC40(v14, *a4);
  if (a4[1] == -1)
  {
    v16 = v15;
  }

  else
  {
    v16 = a4 + 2;
  }

  v17 = *v16;
  v18 = (v8 - *v8);
  if (*v18 < 7u)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18[3];
    if (v19)
    {
      v19 = (v19 + v8 + *(v19 + v8));
    }
  }

  return sub_A7AEE0(v19, v15[1] + a3)[1] + v17;
}

uint64_t sub_BD6C1C@<X0>(void *a1@<X0>, unint64_t **a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      sub_A7905C(v47, a1, *v4, 0, 0, 0);
LABEL_5:
      v7 = v50;
LABEL_6:
      v8 = v51;
      while (v7 < v8)
      {
        v9 = __ROR8__(*v7, 32);
        v11 = a3[1];
        v10 = a3[2];
        if (v11 >= v10)
        {
          v13 = *a3;
          v14 = v11 - *a3;
          v15 = (v14 >> 3) + 1;
          if (v15 >> 61)
          {
            sub_1794();
          }

          v16 = v10 - v13;
          if (v16 >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            if (!(v17 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v18 = (8 * (v14 >> 3));
          *v18 = v9;
          v12 = v18 + 1;
          memcpy(0, v13, v14);
          *a3 = 0;
          a3[2] = 0;
          if (v13)
          {
            operator delete(v13);
          }
        }

        else
        {
          *v11 = v9;
          v12 = v11 + 8;
        }

        a3[1] = v12;
        v8 = v51;
        v7 = v50 + 2;
        v50 = v7;
        if (v7 == v51)
        {
          v19 = v48 + 2;
          v48 = v19;
          if (v19 >= v49)
          {
            break;
          }

          while (1)
          {
            v7 = *v19;
            v8 = v19[1];
            if (*v19 != v8)
            {
              break;
            }

            v19 += 2;
            v48 = v19;
            if (v19 >= v49)
            {
              goto LABEL_3;
            }
          }

          v50 = *v19;
          v51 = v8;
          if (v7 < v8)
          {
            goto LABEL_32;
          }
        }

        else if (v7 < v51)
        {
          while (1)
          {
LABEL_32:
            if ((v53 & 1) == 0)
            {
              v20 = v47[0];
              v21 = *v7;
              v22 = *(v47[0] + 4136);
              if (sub_68312C(v22 + 3896))
              {
                if (*(v22 + 3944))
                {
                  if ((atomic_load_explicit(&qword_27339C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27339C8))
                  {
                    v42 = sub_A57824(-85.0, 0.0);
                    sub_58168(v42 >> 17, v42 >> 49);
                    dword_27339C0 = v43 | 0x40000000;
                    __cxa_guard_release(&qword_27339C8);
                  }

                  v23 = __ROR8__(v21, 32);
                  v24 = *(v20 + 4136);
                  if (dword_27339C0 == HIDWORD(v23))
                  {
                    if (!sub_68312C(v24 + 3896) || !*(v24 + 3944))
                    {
                      exception = __cxa_allocate_exception(0x40uLL);
                      v46 = sub_2D390(exception, "Encountered reference to invalid journey planner incident data.", 0x3FuLL);
                    }
                  }

                  else
                  {
                    v27 = *(v24 + 3944);
                    v28 = v27[1];
                    if (v28)
                    {
                      v29 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v23 ^ (v23 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v23 ^ (v23 >> 33))) >> 33));
                      v30 = v29 ^ (v29 >> 33);
                      v31 = vcnt_s8(v28);
                      v31.i16[0] = vaddlv_u8(v31);
                      if (v31.u32[0] > 1uLL)
                      {
                        v32 = v30;
                        if (v30 >= *&v28)
                        {
                          v32 = v30 % *&v28;
                        }
                      }

                      else
                      {
                        v32 = (*&v28 - 1) & v30;
                      }

                      v33 = *(*v27 + 8 * v32);
                      if (v33)
                      {
                        v34 = *v33;
                        if (v34)
                        {
                          if (v31.u32[0] < 2uLL)
                          {
                            v35 = *&v28 - 1;
                            while (1)
                            {
                              v39 = v34[1];
                              if (v30 == v39)
                              {
                                if (*(v34 + 5) == HIDWORD(v23) && *(v34 + 4) == v23)
                                {
                                  goto LABEL_30;
                                }
                              }

                              else if ((v39 & v35) != v32)
                              {
                                goto LABEL_72;
                              }

                              v34 = *v34;
                              if (!v34)
                              {
                                goto LABEL_72;
                              }
                            }
                          }

                          do
                          {
                            v37 = v34[1];
                            if (v30 == v37)
                            {
                              if (*(v34 + 5) == HIDWORD(v23) && *(v34 + 4) == v23)
                              {
                                goto LABEL_30;
                              }
                            }

                            else
                            {
                              if (v37 >= *&v28)
                              {
                                v37 %= *&v28;
                              }

                              if (v37 != v32)
                              {
                                break;
                              }
                            }

                            v34 = *v34;
                          }

                          while (v34);
                        }
                      }
                    }
                  }
                }
              }
            }

LABEL_72:
            if (v52 == 1)
            {
              goto LABEL_5;
            }

            v40 = sub_C9E544(v47[0] + 3896);
            v7 = v50;
            if (v40 >= *(v50 + 14))
            {
              if (v52)
              {
                goto LABEL_6;
              }

              v41 = sub_585D8((v47[0] + 3896));
              v7 = v50;
              if ((v41 & 1) != 0 || (*(v50 + 15) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

LABEL_30:
            v7 = v50 + 2;
            v50 = v7;
            if (v7 == v51)
            {
              v25 = v48 + 2;
              v48 = v25;
              if (v25 >= v49)
              {
                goto LABEL_6;
              }

              while (1)
              {
                v7 = *v25;
                v26 = v25[1];
                if (*v25 != v26)
                {
                  break;
                }

                v25 += 2;
                v48 = v25;
                if (v25 >= v49)
                {
                  goto LABEL_3;
                }
              }

              v50 = *v25;
              v51 = v26;
              if (v7 >= v26)
              {
                goto LABEL_6;
              }
            }

            else if (v7 >= v51)
            {
              goto LABEL_6;
            }
          }
        }
      }

LABEL_3:
      ++v4;
    }

    while (v4 != v5);
  }

  return sub_BD70E0(a3);
}

void sub_BD709C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27339C8);
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_BD70E0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  result = sub_BD71E4(v2, v3, &v18, v5, 1);
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_22:
    if (v8 != v7)
    {
      a1[1] = v8;
    }
  }

  else
  {
    v9 = (v8 + 8);
    while (v9 != v7)
    {
      LODWORD(v11) = *v9;
      v10 = v9[1];
      v13 = *(v9 - 2);
      v12 = *(v9 - 1);
      v9 += 2;
      if (v12 == v10 && v13 == v11)
      {
        v15 = v9 - 4;
        if (v9 != v7)
        {
          do
          {
            v16 = v11;
            v11 = *v9;
            if (v15[1] != HIDWORD(*v9) || v16 != v11)
            {
              *(v15 + 1) = v11;
              v15 += 2;
            }

            v9 += 2;
          }

          while (v9 != v7);
          v7 = a1[1];
        }

        v8 = (v15 + 2);
        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t sub_BD71E4(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v128 = *v10;
        v129 = *(a2 - 1);
        v130 = HIDWORD(*v10);
        v131 = v129 == v130;
        v132 = v129 < v130;
        if (v131)
        {
          v132 = *(a2 - 2) < *v10;
        }

        if (!v132)
        {
          return result;
        }

LABEL_167:
        *v10 = *(a2 - 1);
LABEL_168:
        *(a2 - 1) = v128;
        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return sub_BD7C30(v10, (v10 + 8), (v10 + 16), a2 - 2);
    }

    if (v11 == 5)
    {
      result = sub_BD7C30(v10, (v10 + 8), (v10 + 16), (v10 + 24));
      v116 = *(v10 + 24);
      v117 = *(a2 - 1);
      v131 = v117 == HIDWORD(v116);
      v118 = v117 < HIDWORD(v116);
      if (v131)
      {
        v118 = *(a2 - 2) < v116;
      }

      if (v118)
      {
        *(v10 + 24) = *(a2 - 1);
        *(a2 - 1) = v116;
        v119 = *(v10 + 16);
        v120 = *(v10 + 28);
        v131 = v120 == HIDWORD(v119);
        v121 = v120 < HIDWORD(v119);
        if (v131)
        {
          v121 = *(v10 + 24) < v119;
        }

        if (v121)
        {
          v122 = *(v10 + 24);
          *(v10 + 16) = v122;
          *(v10 + 24) = v119;
          v123 = *(v10 + 8);
          v124 = HIDWORD(v122);
          v125 = v122 < v123;
          if (HIDWORD(v122) != HIDWORD(v123))
          {
            v125 = HIDWORD(v122) < HIDWORD(v123);
          }

          if (v125)
          {
            *(v10 + 8) = v122;
            *(v10 + 16) = v123;
            v126 = *v10;
            v131 = v124 == HIDWORD(*v10);
            v127 = v124 < HIDWORD(*v10);
            if (v131)
            {
              v127 = v122 < *v10;
            }

            if (v127)
            {
              *v10 = v122;
              *(v10 + 8) = v126;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v140 = (v10 + 8);
      v142 = v10 == a2 || v140 == a2;
      if (a5)
      {
        if (!v142)
        {
          v143 = 0;
          v144 = v10;
          do
          {
            v146 = *v144;
            v148 = *(v144 + 8);
            v147 = *(v144 + 12);
            v144 = v140;
            v149 = v148 < v146;
            v150 = v147 < HIDWORD(v146);
            if (v147 == HIDWORD(v146))
            {
              v150 = v149;
            }

            if (v150)
            {
              v151 = *v144;
              v152 = HIDWORD(*v144);
              v153 = v143;
              do
              {
                *(v10 + v153 + 8) = v146;
                if (!v153)
                {
                  v145 = v10;
                  goto LABEL_182;
                }

                v146 = *(v10 + v153 - 8);
                v154 = v151 < v146;
                if (v152 != HIDWORD(v146))
                {
                  v154 = v152 < HIDWORD(v146);
                }

                v153 -= 8;
              }

              while (v154);
              v145 = (v10 + v153 + 8);
LABEL_182:
              *v145 = v151;
            }

            v140 = (v144 + 8);
            v143 += 8;
          }

          while ((v144 + 8) != a2);
        }
      }

      else if (!v142)
      {
        do
        {
          v159 = *v9;
          v161 = *(v9 + 8);
          v160 = *(v9 + 12);
          v9 = v140;
          v162 = v161 < v159;
          v131 = v160 == HIDWORD(v159);
          v163 = v160 < HIDWORD(v159);
          if (v131)
          {
            v163 = v162;
          }

          if (v163)
          {
            v164 = *v140;
            v165 = HIDWORD(*v140);
            do
            {
              *v140 = v159;
              v159 = *(v140 - 2);
              v166 = v164 < v159;
              if (v165 != HIDWORD(v159))
              {
                v166 = v165 < HIDWORD(v159);
              }

              --v140;
            }

            while (v166);
            *v140 = v164;
          }

          v140 = (v9 + 8);
        }

        while ((v9 + 8) != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_BD82D0(v10, a2, a2);
      }

      return result;
    }

    v12 = v10 + 8 * (v11 >> 1);
    v14 = *(a2 - 2);
    v13 = *(a2 - 1);
    if (v11 >= 0x81)
    {
      v15 = *v10;
      v16 = *(v12 + 4);
      v17 = HIDWORD(*v10);
      v18 = *v12 < *v10;
      v131 = v16 == v17;
      v19 = v16 < v17;
      if (!v131)
      {
        v18 = v19;
      }

      v20 = *v12;
      v21 = HIDWORD(*v12);
      v22 = v14 < *v12;
      v131 = v13 == v21;
      v23 = v13 < v21;
      if (v131)
      {
        v23 = v22;
      }

      if (v18)
      {
        if (v23)
        {
          *v10 = *(a2 - 1);
          goto LABEL_42;
        }

        *v10 = v20;
        *v12 = v15;
        v43 = *(a2 - 1);
        v131 = v43 == v17;
        v44 = v43 < v17;
        if (v131)
        {
          v44 = *(a2 - 2) < v15;
        }

        if (v44)
        {
          *v12 = *(a2 - 1);
LABEL_42:
          *(a2 - 1) = v15;
        }
      }

      else if (v23)
      {
        *v12 = *(a2 - 1);
        *(a2 - 1) = v20;
        v33 = *v10;
        v34 = *(v12 + 4);
        v35 = HIDWORD(*v10);
        v131 = v34 == v35;
        v36 = v34 < v35;
        if (v131)
        {
          v36 = *v12 < *v10;
        }

        if (v36)
        {
          *v10 = *v12;
          *v12 = v33;
        }
      }

      v45 = (v12 - 8);
      v46 = *(v12 - 8);
      v47 = *(v10 + 8);
      v48 = *(v12 - 4);
      v49 = *(v12 - 8) < v47;
      v131 = v48 == HIDWORD(v47);
      v50 = v48 < HIDWORD(v47);
      if (!v131)
      {
        v49 = v50;
      }

      v51 = *(a2 - 3);
      v131 = v51 == HIDWORD(v46);
      v52 = v51 < HIDWORD(v46);
      if (v131)
      {
        v52 = *(a2 - 4) < v46;
      }

      if (v49)
      {
        if (v52)
        {
          *(v10 + 8) = *(a2 - 2);
          goto LABEL_66;
        }

        *(v10 + 8) = v46;
        *v45 = v47;
        v58 = *(a2 - 3);
        v131 = v58 == HIDWORD(v47);
        v59 = v58 < HIDWORD(v47);
        if (v131)
        {
          v59 = *(a2 - 4) < v47;
        }

        if (v59)
        {
          *v45 = *(a2 - 2);
LABEL_66:
          *(a2 - 2) = v47;
        }
      }

      else if (v52)
      {
        *v45 = *(a2 - 2);
        *(a2 - 2) = v46;
        v53 = *(v10 + 8);
        v54 = *(v12 - 4);
        v131 = v54 == HIDWORD(v53);
        v55 = v54 < HIDWORD(v53);
        if (v131)
        {
          v55 = *v45 < v53;
        }

        if (v55)
        {
          *(v10 + 8) = *v45;
          *v45 = v53;
        }
      }

      v60 = (v12 + 8);
      v61 = *(v12 + 8);
      v62 = *(v10 + 16);
      v63 = *(v12 + 12);
      v64 = *(v12 + 8) < v62;
      v131 = v63 == HIDWORD(v62);
      v65 = v63 < HIDWORD(v62);
      if (!v131)
      {
        v64 = v65;
      }

      v66 = *(a2 - 5);
      v131 = v66 == HIDWORD(v61);
      v67 = v66 < HIDWORD(v61);
      if (v131)
      {
        v67 = *(a2 - 6) < v61;
      }

      if (v64)
      {
        if (v67)
        {
          *(v10 + 16) = *(a2 - 3);
          goto LABEL_83;
        }

        *(v10 + 16) = v61;
        *v60 = v62;
        v71 = *(a2 - 5);
        v131 = v71 == HIDWORD(v62);
        v72 = v71 < HIDWORD(v62);
        if (v131)
        {
          v72 = *(a2 - 6) < v62;
        }

        if (v72)
        {
          *v60 = *(a2 - 3);
LABEL_83:
          *(a2 - 3) = v62;
        }
      }

      else if (v67)
      {
        *v60 = *(a2 - 3);
        *(a2 - 3) = v61;
        v68 = *(v10 + 16);
        v69 = *(v12 + 12);
        v131 = v69 == HIDWORD(v68);
        v70 = v69 < HIDWORD(v68);
        if (v131)
        {
          v70 = *v60 < v68;
        }

        if (v70)
        {
          *(v10 + 16) = *v60;
          *v60 = v68;
        }
      }

      v73 = *v45;
      v74 = *(v12 + 4);
      v75 = HIDWORD(*v45);
      v131 = v74 == v75;
      v76 = v74 < v75;
      if (v131)
      {
        v77 = *v12 < *v45;
      }

      else
      {
        v77 = v76;
      }

      v78 = *v12;
      v80 = *v60;
      v79 = *(v12 + 12);
      v81 = HIDWORD(*v12);
      v131 = v79 == v81;
      v82 = v79 < v81;
      if (v131)
      {
        v82 = *v60 < *v12;
      }

      if (v77)
      {
        if (v82)
        {
          *v45 = *v60;
          goto LABEL_101;
        }

        *v45 = v78;
        *v12 = v73;
        v85 = v80 < v73;
        if (v79 != v75)
        {
          v85 = v79 < v75;
        }

        if (v85)
        {
          v78 = *v60;
          *v12 = *v60;
LABEL_101:
          *v60 = v73;
        }

        else
        {
          v78 = v73;
        }
      }

      else if (v82)
      {
        v83 = *v60;
        *v12 = *v60;
        *v60 = v78;
        v84 = HIDWORD(v83) < v75;
        if (HIDWORD(v83) == v75)
        {
          v84 = v83 < v73;
        }

        if (v84)
        {
          *v45 = v83;
          v60 = v12;
          v78 = v73;
          goto LABEL_101;
        }

        v78 = v83;
      }

      v86 = *v10;
      *v10 = v78;
      *v12 = v86;
      --a4;
      v41 = *v10;
      v42 = HIDWORD(*v10);
      if (a5)
      {
        goto LABEL_106;
      }

      goto LABEL_103;
    }

    v24 = *v12;
    v25 = *(v10 + 4);
    v26 = HIDWORD(*v12);
    v27 = *v10 < *v12;
    v131 = v25 == v26;
    v28 = v25 < v26;
    if (!v131)
    {
      v27 = v28;
    }

    v29 = *v10;
    v30 = HIDWORD(*v10);
    v31 = v14 < *v10;
    v131 = v13 == v30;
    v32 = v13 < v30;
    if (v131)
    {
      v32 = v31;
    }

    if (v27)
    {
      if (v32)
      {
        *v12 = *(a2 - 1);
LABEL_59:
        *(a2 - 1) = v24;
        goto LABEL_60;
      }

      *v12 = v29;
      *v10 = v24;
      v56 = *(a2 - 1);
      v131 = v56 == v26;
      v57 = v56 < v26;
      if (v131)
      {
        v57 = *(a2 - 2) < v24;
      }

      if (v57)
      {
        *v10 = *(a2 - 1);
        goto LABEL_59;
      }
    }

    else if (v32)
    {
      *v10 = *(a2 - 1);
      *(a2 - 1) = v29;
      v37 = *v12;
      v38 = *(v10 + 4);
      v39 = HIDWORD(*v12);
      v131 = v38 == v39;
      v40 = v38 < v39;
      if (v131)
      {
        v40 = *v10 < *v12;
      }

      if (v40)
      {
        *v12 = *v10;
        *v10 = v37;
        --a4;
        v41 = v37;
        v42 = HIDWORD(v37);
        if (a5)
        {
          goto LABEL_106;
        }

        goto LABEL_103;
      }
    }

LABEL_60:
    --a4;
    v41 = *v10;
    v42 = HIDWORD(*v10);
    if (a5)
    {
      goto LABEL_106;
    }

LABEL_103:
    v87 = *(v10 - 4);
    v131 = v87 == v42;
    v88 = v87 < v42;
    if (v131)
    {
      v88 = *(v10 - 8) < v41;
    }

    if (v88)
    {
LABEL_106:
      v89 = 0;
      do
      {
        v90 = *(v10 + v89 + 12);
        v91 = *(v10 + v89 + 8) < v41;
        v131 = v90 == v42;
        v92 = v90 < v42;
        if (!v131)
        {
          v91 = v92;
        }

        v89 += 8;
      }

      while (v91);
      v93 = v10 + v89;
      v94 = a2;
      if (v89 == 8)
      {
        v94 = a2;
        do
        {
          if (v93 >= v94)
          {
            break;
          }

          v99 = *(v94 - 2);
          v100 = *(v94-- - 1);
          v101 = v99 < v41;
          v131 = v100 == v42;
          v102 = v100 < v42;
          if (!v131)
          {
            v101 = v102;
          }
        }

        while (!v101);
      }

      else
      {
        do
        {
          v95 = *(v94 - 2);
          v96 = *(v94-- - 1);
          v97 = v95 < v41;
          v131 = v96 == v42;
          v98 = v96 < v42;
          if (!v131)
          {
            v97 = v98;
          }
        }

        while (!v97);
      }

      if (v93 >= v94)
      {
        v114 = (v93 - 8);
        if (v93 - 8 == v10)
        {
          goto LABEL_134;
        }

LABEL_133:
        *v10 = *v114;
        goto LABEL_134;
      }

      v103 = v93;
      v104 = v94;
      do
      {
        v105 = *v103;
        *v103 = *v104;
        *v104 = v105;
        do
        {
          v106 = *(v103 + 8);
          v107 = *(v103 + 12);
          v103 += 8;
          v108 = v106 < v41;
          v131 = v107 == v42;
          v109 = v107 < v42;
          if (!v131)
          {
            v108 = v109;
          }
        }

        while (v108);
        do
        {
          v110 = *(v104 - 2);
          v111 = *(v104-- - 1);
          v112 = v110 < v41;
          v131 = v111 == v42;
          v113 = v111 < v42;
          if (!v131)
          {
            v112 = v113;
          }
        }

        while (!v112);
      }

      while (v103 < v104);
      v114 = (v103 - 8);
      if (v103 - 8 != v10)
      {
        goto LABEL_133;
      }

LABEL_134:
      *v114 = v41;
      if (v93 < v94)
      {
        goto LABEL_137;
      }

      v115 = sub_BD7EC0(v10, v114);
      v10 = (v114 + 1);
      result = sub_BD7EC0((v114 + 1), a2);
      if (result)
      {
        a2 = v114;
        if (!v115)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v115)
      {
LABEL_137:
        result = sub_BD71E4(v9, v114, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v114 + 1);
      }
    }

    else
    {
      result = sub_BD7DA4(v10, a2);
      v10 = result;
      a5 = 0;
    }
  }

  v128 = *v10;
  v133 = *(v10 + 12);
  v134 = HIDWORD(*v10);
  v131 = v133 == v134;
  v135 = v133 < v134;
  if (v131)
  {
    v136 = *(v10 + 8) < *v10;
  }

  else
  {
    v136 = v135;
  }

  v137 = *(v10 + 8);
  v138 = *(a2 - 1);
  v131 = v138 == HIDWORD(v137);
  v139 = v138 < HIDWORD(v137);
  if (v131)
  {
    v139 = *(a2 - 2) < v137;
  }

  if (v136)
  {
    if (v139)
    {
      goto LABEL_167;
    }

    *v10 = v137;
    *(v10 + 8) = v128;
    v167 = *(a2 - 1);
    v131 = v167 == v134;
    v168 = v167 < v134;
    if (v131)
    {
      v168 = *(a2 - 2) < v128;
    }

    if (v168)
    {
      *(v10 + 8) = *(a2 - 1);
      goto LABEL_168;
    }
  }

  else if (v139)
  {
    *(v10 + 8) = *(a2 - 1);
    *(a2 - 1) = v137;
    v155 = *v10;
    v156 = *(v10 + 12);
    v157 = HIDWORD(*v10);
    v131 = v156 == v157;
    v158 = v156 < v157;
    if (v131)
    {
      v158 = *(v10 + 8) < *v10;
    }

    if (v158)
    {
      *v10 = *(v10 + 8);
      *(v10 + 8) = v155;
    }
  }

  return result;
}

uint64_t *sub_BD7C30(uint64_t *result, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *result;
  v5 = a2[1];
  v6 = HIDWORD(*result);
  v7 = v5 == v6;
  v8 = v5 < v6;
  if (v7)
  {
    v9 = *a2 < *result;
  }

  else
  {
    v9 = v8;
  }

  v10 = *a2;
  v11 = a3[1];
  v12 = HIDWORD(*a2);
  v7 = v11 == v12;
  v13 = v11 < v12;
  if (v7)
  {
    v13 = *a3 < *a2;
  }

  if (v9)
  {
    if (v13)
    {
      *result = *a3;
LABEL_19:
      *a3 = v4;
      goto LABEL_20;
    }

    *result = v10;
    *a2 = v4;
    v18 = a3[1];
    v7 = v18 == v6;
    v19 = v18 < v6;
    if (v7)
    {
      v20 = *a3 < v4;
    }

    else
    {
      v20 = v19;
    }

    v10 = *a3;
    if (v20)
    {
      *a2 = v10;
      goto LABEL_19;
    }
  }

  else
  {
    v4 = *a3;
    if (!v13)
    {
LABEL_20:
      v10 = v4;
      goto LABEL_21;
    }

    *a2 = v4;
    *a3 = v10;
    v14 = *result;
    v15 = a2[1];
    v16 = HIDWORD(*result);
    v7 = v15 == v16;
    v17 = v15 < v16;
    if (v7)
    {
      v17 = *a2 < *result;
    }

    if (v17)
    {
      *result = *a2;
      *a2 = v14;
      v10 = *a3;
    }
  }

LABEL_21:
  v21 = a4[1];
  v7 = v21 == HIDWORD(v10);
  v22 = v21 < HIDWORD(v10);
  if (v7)
  {
    v22 = *a4 < v10;
  }

  if (v22)
  {
    *a3 = *a4;
    *a4 = v10;
    v23 = *a2;
    v24 = a3[1];
    v25 = HIDWORD(*a2);
    v7 = v24 == v25;
    v26 = v24 < v25;
    if (v7)
    {
      v26 = *a3 < *a2;
    }

    if (v26)
    {
      *a2 = *a3;
      *a3 = v23;
      v27 = *result;
      v28 = a2[1];
      v29 = HIDWORD(*result);
      v7 = v28 == v29;
      v30 = v28 < v29;
      if (v7)
      {
        v30 = *a2 < *result;
      }

      if (v30)
      {
        *result = *a2;
        *a2 = v27;
      }
    }
  }

  return result;
}

uint64_t *sub_BD7DA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  v4 = *(a2 - 1);
  v5 = *a1 < v4;
  v6 = v3 == HIDWORD(v4);
  v7 = v3 < HIDWORD(v4);
  if (v6)
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = a1;
    do
    {
      v9 = v8[1];
      ++v8;
      v10 = v2 < v9;
      v11 = v3 < HIDWORD(v9);
      if (v3 == HIDWORD(v9))
      {
        v11 = v10;
      }
    }

    while (!v11);
  }

  else
  {
    v12 = a1 + 1;
    do
    {
      v8 = v12;
      if (v12 >= a2)
      {
        break;
      }

      ++v12;
      v13 = v3 < HIDWORD(*v8);
      if (v3 == HIDWORD(*v8))
      {
        v13 = v2 < *v8;
      }
    }

    while (!v13);
  }

  if (v8 < a2)
  {
    do
    {
      v14 = *--a2;
      v15 = v2 < v14;
      v16 = v3 < HIDWORD(v14);
      if (v3 == HIDWORD(v14))
      {
        v16 = v15;
      }
    }

    while (v16);
  }

  if (v8 < a2)
  {
    v17 = *v8;
    v18 = *a2;
    do
    {
      *v8 = v18;
      *a2 = v17;
      do
      {
        v19 = v8[1];
        ++v8;
        v17 = v19;
        v20 = v2 < v19;
        v21 = v3 < HIDWORD(v19);
        if (v3 != HIDWORD(v19))
        {
          v20 = v21;
        }
      }

      while (!v20);
      do
      {
        v22 = *--a2;
        v18 = v22;
        v23 = v2 < v22;
        v24 = v3 < HIDWORD(v22);
        if (v3 != HIDWORD(v22))
        {
          v23 = v24;
        }
      }

      while (v23);
    }

    while (v8 < a2);
  }

  if (v8 - 1 != a1)
  {
    *a1 = *(v8 - 1);
  }

  *(v8 - 1) = v2;
  return v8;
}

BOOL sub_BD7EC0(uint64_t a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = *a1;
        v23 = *(a1 + 12);
        v24 = HIDWORD(*a1);
        v6 = v23 == v24;
        v25 = v23 < v24;
        if (v6)
        {
          v26 = *(a1 + 8) < *a1;
        }

        else
        {
          v26 = v25;
        }

        v27 = *(a1 + 8);
        v28 = *(a2 - 1);
        v6 = v28 == HIDWORD(v27);
        v29 = v28 < HIDWORD(v27);
        if (v6)
        {
          v29 = *(a2 - 2) < v27;
        }

        if (!v26)
        {
          if (v29)
          {
            *(a1 + 8) = *(a2 - 1);
            *(a2 - 1) = v27;
            v42 = *a1;
            v43 = *(a1 + 12);
            v44 = HIDWORD(*a1);
            v6 = v43 == v44;
            v45 = v43 < v44;
            if (v6)
            {
              v45 = *(a1 + 8) < *a1;
            }

            if (v45)
            {
              *a1 = *(a1 + 8);
              *(a1 + 8) = v42;
              return 1;
            }
          }

          return 1;
        }

        if (!v29)
        {
          *a1 = v27;
          *(a1 + 8) = v3;
          v48 = *(a2 - 1);
          v6 = v48 == v24;
          v49 = v48 < v24;
          if (v6)
          {
            v49 = *(a2 - 2) < v3;
          }

          if (v49)
          {
            *(a1 + 8) = *(a2 - 1);
            *(a2 - 1) = v3;
            return 1;
          }

          return 1;
        }

        goto LABEL_31;
      case 4:
        sub_BD7C30(a1, (a1 + 8), (a1 + 16), a2 - 2);
        return 1;
      case 5:
        sub_BD7C30(a1, (a1 + 8), (a1 + 16), (a1 + 24));
        v10 = *(a1 + 24);
        v11 = *(a2 - 1);
        v6 = v11 == HIDWORD(v10);
        v12 = v11 < HIDWORD(v10);
        if (v6)
        {
          v12 = *(a2 - 2) < v10;
        }

        if (v12)
        {
          *(a1 + 24) = *(a2 - 1);
          *(a2 - 1) = v10;
          v13 = *(a1 + 16);
          v14 = *(a1 + 28);
          v6 = v14 == HIDWORD(v13);
          v15 = v14 < HIDWORD(v13);
          if (v6)
          {
            v15 = *(a1 + 24) < v13;
          }

          if (v15)
          {
            v16 = *(a1 + 24);
            *(a1 + 16) = v16;
            *(a1 + 24) = v13;
            v17 = *(a1 + 8);
            v18 = HIDWORD(v16);
            v19 = v16 < v17;
            if (HIDWORD(v16) != HIDWORD(v17))
            {
              v19 = HIDWORD(v16) < HIDWORD(v17);
            }

            if (v19)
            {
              *(a1 + 8) = v16;
              *(a1 + 16) = v17;
              v20 = *a1;
              v6 = v18 == HIDWORD(*a1);
              v21 = v18 < HIDWORD(*a1);
              if (v6)
              {
                v21 = v16 < *a1;
              }

              if (v21)
              {
                *a1 = v16;
                *(a1 + 8) = v20;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v3 = *a1;
      v4 = *(a2 - 1);
      v5 = HIDWORD(*a1);
      v6 = v4 == v5;
      v7 = v4 < v5;
      if (v6)
      {
        v7 = *(a2 - 2) < *a1;
      }

      if (!v7)
      {
        return 1;
      }

LABEL_31:
      *a1 = *(a2 - 1);
      *(a2 - 1) = v3;
      return 1;
    }
  }

  v30 = (a1 + 16);
  v31 = *(a1 + 16);
  v32 = (a1 + 8);
  v33 = *a1;
  v34 = *(a1 + 12);
  v35 = HIDWORD(*a1);
  v6 = v34 == v35;
  v36 = v34 < v35;
  if (v6)
  {
    v37 = *(a1 + 8) < *a1;
  }

  else
  {
    v37 = v36;
  }

  v38 = *v32;
  v39 = *(a1 + 20);
  v40 = HIDWORD(*v32);
  v6 = v39 == v40;
  v41 = v39 < v40;
  if (v6)
  {
    v41 = v31 < *v32;
  }

  if (v37)
  {
    if (v41)
    {
      *a1 = *(a1 + 16);
LABEL_59:
      v32 = (a1 + 16);
      goto LABEL_60;
    }

    *a1 = v38;
    *(a1 + 8) = v33;
    v50 = v31 < v33;
    v6 = v39 == v35;
    v51 = v39 < v35;
    if (v6)
    {
      v51 = v50;
    }

    if (v51)
    {
      *v32 = *v30;
      goto LABEL_59;
    }
  }

  else if (v41)
  {
    v46 = *v30;
    *v32 = *v30;
    *v30 = v38;
    v6 = HIDWORD(v46) == v35;
    v47 = HIDWORD(v46) < v35;
    if (v6)
    {
      v47 = v46 < v33;
    }

    if (v47)
    {
      *a1 = v46;
LABEL_60:
      *v32 = v33;
    }
  }

  v52 = a1 + 24;
  if ((a1 + 24) == a2)
  {
    return 1;
  }

  v53 = 0;
  for (i = 24; ; i += 8)
  {
    v55 = *v30;
    v56 = *(v52 + 4);
    v6 = v56 == HIDWORD(v55);
    v57 = v56 < HIDWORD(v55);
    if (v6)
    {
      v57 = *v52 < v55;
    }

    if (v57)
    {
      break;
    }

LABEL_74:
    v30 = v52;
    v52 += 8;
    if (v52 == a2)
    {
      return 1;
    }
  }

  v58 = *v52;
  v59 = HIDWORD(*v52);
  v60 = i;
  do
  {
    *(a1 + v60) = v55;
    v61 = v60 - 8;
    if (v60 == 8)
    {
      *a1 = v58;
      if (++v53 != 8)
      {
        goto LABEL_74;
      }

      return v52 + 8 == a2;
    }

    v55 = *(a1 + v60 - 16);
    v62 = v59 < HIDWORD(v55);
    if (v59 == HIDWORD(v55))
    {
      v62 = v58 < v55;
    }

    v60 -= 8;
  }

  while (v62);
  *(a1 + v61) = v58;
  if (++v53 != 8)
  {
    goto LABEL_74;
  }

  return v52 + 8 == a2;
}

uint64_t *sub_BD82D0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v3 = a2 - a1;
    if (v3 >= 2)
    {
      v4 = (v3 - 2) >> 1;
      v5 = v4;
      do
      {
        if (v4 >= v5)
        {
          v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
          v8 = &a1[v7];
          if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 < v3)
          {
            v9 = v8[1];
            v10 = *(v8 + 1);
            v11 = HIDWORD(v9);
            v12 = *v8 < v9;
            v44 = v10 == v11;
            v13 = v10 < v11;
            if (!v44)
            {
              v12 = v13;
            }

            if (v12)
            {
              ++v8;
              v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }
          }

          v14 = &a1[v5];
          v15 = *v14;
          v16 = *(v8 + 1);
          v17 = HIDWORD(*v14);
          v44 = v16 == v17;
          v18 = v16 < v17;
          if (v44)
          {
            v18 = *v8 < *v14;
          }

          if (!v18)
          {
            do
            {
              v22 = v14;
              v14 = v8;
              *v22 = *v8;
              if (v4 < v7)
              {
                break;
              }

              v23 = (2 * v7) | 1;
              v8 = &a1[v23];
              v24 = 2 * v7 + 2;
              if (v24 < v3)
              {
                v25 = v8[1];
                v26 = *(v8 + 1);
                v27 = HIDWORD(v25);
                v28 = *v8 < v25;
                v44 = v26 == v27;
                v29 = v26 < v27;
                if (!v44)
                {
                  v28 = v29;
                }

                if (v28)
                {
                  ++v8;
                  v23 = v24;
                }
              }

              v19 = *(v8 + 1);
              v20 = *v8 < v15;
              v44 = v19 == v17;
              v21 = v19 < v17;
              if (!v44)
              {
                v20 = v21;
              }

              v7 = v23;
            }

            while (!v20);
            *v14 = v15;
          }
        }

        v6 = v5-- <= 0;
      }

      while (!v6);
    }

    v30 = a2;
    if (a2 != a3)
    {
      if (v3 >= 2)
      {
        v30 = a2;
        do
        {
          v35 = *(v30 + 1);
          v36 = HIDWORD(*a1);
          v44 = v35 == v36;
          v37 = v35 < v36;
          if (v44)
          {
            v37 = *v30 < *a1;
          }

          if (v37)
          {
            v38 = *v30;
            *v30 = *a1;
            *a1 = v38;
            if (a2 - a1 == 16)
            {
              v39 = a1 + 1;
              v40 = 1;
            }

            else
            {
              v41 = *(a1 + 5);
              v42 = *(a1 + 3);
              v44 = v42 == v41;
              v43 = v42 < v41;
              if (v44)
              {
                v43 = *(a1 + 2) < *(a1 + 4);
              }

              v44 = !v43;
              if (v43)
              {
                v39 = a1 + 2;
              }

              else
              {
                v39 = a1 + 1;
              }

              if (v44)
              {
                v40 = 1;
              }

              else
              {
                v40 = 2;
              }
            }

            v45 = *(v39 + 1);
            v44 = v45 == HIDWORD(v38);
            v46 = v45 < HIDWORD(v38);
            if (v44)
            {
              v46 = *v39 < v38;
            }

            if (!v46)
            {
              v47 = a1;
              do
              {
                v51 = v47;
                v47 = v39;
                *v51 = *v39;
                if (((v3 - 2) >> 1) < v40)
                {
                  break;
                }

                v52 = (2 * v40) | 1;
                v39 = &a1[v52];
                v53 = 2 * v40 + 2;
                if (v53 < v3)
                {
                  v54 = v39[1];
                  v55 = *(v39 + 1);
                  v56 = HIDWORD(v54);
                  v57 = *v39 < v54;
                  v44 = v55 == v56;
                  v58 = v55 < v56;
                  if (!v44)
                  {
                    v57 = v58;
                  }

                  if (v57)
                  {
                    ++v39;
                    v52 = v53;
                  }
                }

                v48 = *(v39 + 1);
                v49 = *v39 < v38;
                v44 = v48 == HIDWORD(v38);
                v50 = v48 < HIDWORD(v38);
                if (!v44)
                {
                  v49 = v50;
                }

                v40 = v52;
              }

              while (!v49);
              *v47 = v38;
            }
          }

          ++v30;
        }

        while (v30 != a3);
      }

      else
      {
        v31 = *a1;
        v30 = a2;
        do
        {
          v32 = *(v30 + 1);
          v44 = v32 == HIDWORD(v31);
          v33 = v32 < HIDWORD(v31);
          if (v44)
          {
            v33 = *v30 < v31;
          }

          if (v33)
          {
            v34 = *v30;
            *v30 = v31;
            *a1 = v34;
            v31 = v34;
          }

          ++v30;
        }

        while (v30 != a3);
      }
    }

    if (v3 < 2)
    {
      return v30;
    }

    while (1)
    {
      v60 = 0;
      v61 = *a1;
      v62 = (v3 - 2) >> 1;
      v63 = a1;
      do
      {
        while (1)
        {
          v70 = &v63[v60];
          v69 = v70 + 1;
          v71 = (2 * v60) | 1;
          v60 = 2 * v60 + 2;
          if (v60 < v3)
          {
            break;
          }

          v60 = v71;
          *v63 = *v69;
          v63 = v70 + 1;
          if (v71 > v62)
          {
            goto LABEL_78;
          }
        }

        v65 = v70[2];
        v64 = v70 + 2;
        v66 = *(v64 - 1);
        v67 = *(v64 - 2) < v65;
        v44 = v66 == HIDWORD(v65);
        v68 = v66 < HIDWORD(v65);
        if (!v44)
        {
          v67 = v68;
        }

        if (v67)
        {
          v69 = v64;
        }

        else
        {
          v60 = v71;
        }

        *v63 = *v69;
        v63 = v69;
      }

      while (v60 <= v62);
LABEL_78:
      if (v69 != --a2)
      {
        *v69 = *a2;
        *a2 = v61;
        v72 = (v69 - a1 + 8) >> 3;
        v6 = v72 < 2;
        v73 = v72 - 2;
        if (v6)
        {
          goto LABEL_68;
        }

        v74 = v73 >> 1;
        v75 = &a1[v73 >> 1];
        v61 = *v69;
        v76 = *(v75 + 1);
        v77 = HIDWORD(*v69);
        v44 = v76 == v77;
        v78 = v76 < v77;
        if (v44)
        {
          v78 = *v75 < *v69;
        }

        if (!v78)
        {
          goto LABEL_68;
        }

        do
        {
          v79 = v69;
          v69 = v75;
          *v79 = *v75;
          if (!v74)
          {
            break;
          }

          v74 = (v74 - 1) >> 1;
          v75 = &a1[v74];
          v80 = *(v75 + 1);
          v44 = v80 == v77;
          v81 = v80 < v77;
          if (v44)
          {
            v81 = *v75 < v61;
          }
        }

        while (v81);
      }

      *v69 = v61;
LABEL_68:
      v6 = v3-- <= 2;
      if (v6)
      {
        return v30;
      }
    }
  }

  return a3;
}

unint64_t sub_BD8728(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v82 = a2;
  v5 = *a1;
  v80 = 0x7FFFFFFF;
  v81 = 0x7FFFFFFF;
  sub_A79708(v71, *(v5 + 48), a3, 0, 0, 0);
  v6 = **(a1 + 8);
  v83[0] = &v84;
  v83[1] = 1;
  v84 = v6;
  sub_BD8E68(v71, v83, &v69);
  v7 = v69;
  v8 = v70;
  if (v69 != v70)
  {
    while (1)
    {
      v9 = *v7;
      v10 = sub_A57920((*(v5 + 48) + 4136), a3);
      v11 = (v10 - *v10);
      v12 = *v11;
      if (v12 < 5)
      {
        v13 = 0;
        goto LABEL_9;
      }

      if (v11[2])
      {
        v13 = v10 + v11[2] + *(v10 + v11[2]);
        if (v12 < 9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = 0;
        if (v12 < 9)
        {
          goto LABEL_9;
        }
      }

      v65 = v11[4];
      if (v65)
      {
        v14 = (v10 + v65 + *(v10 + v65));
        goto LABEL_10;
      }

LABEL_9:
      v14 = 0;
LABEL_10:
      if (**(a1 + 16) == __ROR8__(*&v13[8 * *(sub_A571D4(v14, v9) + 14) + 4], 32) && **(a1 + 24) == sub_BD5DA0((*(v5 + 48) + 4136), a3, v9) && **(a1 + 32) == sub_BD5F34((*(v5 + 48) + 4136), a3, v9))
      {
        v15 = v73;
        v74 = v73;
        v16 = v73;
        do
        {
          if (v16 >= v75)
          {
            break;
          }

          v17 = v76;
          if (!v76)
          {
            break;
          }

          v18 = sub_585D8((v71[0] + 3896));
          v19 = 0xAAAAAAAAAAAAAAABLL * (v16 - v15);
          v20 = *v17;
          if (v19 < v20)
          {
            break;
          }

          v21 = *(v17 + 1);
          if (*(v17 + 2) + v20 - v21 <= v19)
          {
            break;
          }

          v22 = *(v21 + (v19 - v20));
          if ((v22 & 1) == 0)
          {
            break;
          }

          if (((v22 >> 1) & 1 & ~v18) != 0)
          {
            break;
          }

          v15 = v73;
          v16 = v74 + 3;
          v74 = v16;
        }

        while (v16 >= v73);
        v24 = v73;
        v23 = v74;
        if (v74 >= v73 && v74 < v75)
        {
          if (v77 == 1)
          {
            v78 = 0;
            v26 = (v72 + *(v72 - *v72 + 8));
            v79 = *(&v26[3 * (v74[2] >> 8) + 2] + *v26) + *v74;
          }

          do
          {
            v28 = sub_A5706C((*(v5 + 48) + 4136), a3);
            v29 = v28;
            v30 = &v28[-*v28];
            if (*v30 < 5u)
            {
              v31 = 0;
            }

            else
            {
              v31 = *(v30 + 2);
              if (v31)
              {
                v31 += &v28[*&v28[v31]];
              }
            }

            v32 = (v31 + 4 * a3 + 4 + *(v31 + 4 * a3 + 4));
            v33 = (v32 - *v32);
            if (*v33 >= 9u && (v34 = v33[4]) != 0)
            {
              v35 = (v32 + v34 + *(v32 + v34));
            }

            else
            {
              v35 = 0;
            }

            v36 = sub_A571D4(v35, v9);
            v37 = (v29 - *v29);
            if (*v37 < 0xBu)
            {
              v38 = 0;
              v39 = (v32 - *v32);
              if (*v39 < 0x11u)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v38 = v37[5];
              if (v38)
              {
                v38 = (v38 + v29 + *(v38 + v29));
              }

              v39 = (v32 - *v32);
              if (*v39 < 0x11u)
              {
LABEL_46:
                LODWORD(v40) = 0;
                goto LABEL_47;
              }
            }

            v40 = v39[8];
            if (v39[8])
            {
              LODWORD(v40) = *(v32 + v40);
            }

LABEL_47:
            v41 = sub_A57320(v38, v40 + *(v32 + v39[2] + *(v32 + v39[2])) * -1431655765 * ((v23 - v24) >> 2) + *(v36 + 14));
            if (v41)
            {
              v42 = __ROR8__(*v41, 32);
              v43 = v41[2];
            }

            else
            {
              v43 = 0;
              v42 = 0xFFFFFFFFLL;
            }

            v44 = sub_3A231C(*(*(v5 + 48) + 4184) + 24, __ROR8__(v42, 32), 0);
            v45 = v44;
            v46 = &v44[-*v44];
            if (*v46 >= 5u && (v47 = *(v46 + 2)) != 0)
            {
              v48 = &v44[v47 + *&v44[v47]];
            }

            else
            {
              v48 = 0;
            }

            v49 = sub_BCA9F8(v48, v42);
            v50 = (v45 - *v45);
            if (*v50 < 0xDu)
            {
              v51 = 0;
              v52 = (v49 - *v49);
              if (*v52 < 0x15u)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v51 = v50[6];
              if (v51)
              {
                v51 = (v51 + v45 + *(v51 + v45));
              }

              v52 = (v49 - *v49);
              if (*v52 < 0x15u)
              {
                goto LABEL_62;
              }
            }

            v53 = v52[10];
            if (v53)
            {
              v54 = *(v49 + v53);
              goto LABEL_63;
            }

LABEL_62:
            v54 = -1;
LABEL_63:
            v55 = sub_A56DB8(v51, v54 + v43);
            v56 = *(a1 + 40);
            if (*v55 == *v56 && *(v56 + 2) == (*(v55 + 2) + 1) && *(v55 + 3) == *(v56 + 3))
            {
              v82 = sub_BD67E0(v5, &v82, a3, v9, -1431655765 * ((v74 - v73) >> 2));
            }

            v24 = v73;
            v23 = v74 + 3;
            v74 = v23;
            if (v23 >= v73)
            {
              do
              {
                if (v23 >= v75)
                {
                  break;
                }

                v57 = v76;
                if (!v76)
                {
                  break;
                }

                v58 = sub_585D8((v71[0] + 3896));
                v59 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 2);
                v60 = *v57;
                if (v59 < v60)
                {
                  break;
                }

                v61 = *(v57 + 1);
                if (*(v57 + 2) + v60 - v61 <= v59)
                {
                  break;
                }

                v62 = *(v61 + (v59 - v60));
                if ((v62 & 1) == 0)
                {
                  break;
                }

                if (((v62 >> 1) & 1 & ~v58) != 0)
                {
                  break;
                }

                v24 = v73;
                v23 = v74 + 3;
                v74 = v23;
              }

              while (v23 >= v73);
              v24 = v73;
              v23 = v74;
            }

            if (v77 == 1)
            {
              v78 = 0;
              if (v23 >= v24 && v23 < v75)
              {
                v64 = (v72 + *(v72 - *v72 + 8));
                v79 = *(&v64[3 * (v23[2] >> 8) + 2] + *v64) + *v23;
              }
            }
          }

          while (v23 >= v24 && v23 < v75);
        }
      }

      v7 += 2;
      if (v7 == v8)
      {
        v7 = v69;
        break;
      }
    }
  }

  if (v7)
  {
    v70 = v7;
    operator delete(v7);
  }

  v66 = &v81;
  if (v82 != 0x7FFFFFFF)
  {
    if (v81 >= v82)
    {
      v66 = &v82;
    }

    if (v81 == 0x7FFFFFFF)
    {
      v66 = &v82;
    }
  }

  v67 = &v80;
  if (HIDWORD(v82) != 0x7FFFFFFF)
  {
    if (SHIDWORD(v82) >= v80)
    {
      v67 = &v82 + 1;
    }

    if (v80 == 0x7FFFFFFF)
    {
      v67 = &v82 + 1;
    }
  }

  return *v66 | (*v67 << 32);
}

void sub_BD8E24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_BD8E68(void *a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = a1[5];
  v6 = (v5 - 16);
  a1[4] = v5 - 16;
  if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v6 >= a1[3])
  {
    do
    {
      if (v6 >= a1[5])
      {
        break;
      }

      v7 = __ROR8__(*v6, 32);
      if (HIDWORD(v7) == 1 && (v7 + 3) < 2)
      {
        break;
      }

      v9 = sub_2D5204(**(*a1 + 4120));
      v6 = a1[4];
      if (v9)
      {
        break;
      }

      v6 -= 2;
      a1[4] = v6;
    }

    while (v6 >= a1[3]);
    v5 = a1[5];
  }

  v10 = a1[3];
  if (v6 >= v10 && v6 < v5)
  {
    v12 = 0;
    do
    {
      if (v12)
      {
        v13 = *(a2 + 8);
        if (v13)
        {
          v14 = __ROR8__(*v6, 32);
          v15 = *a2;
          v16 = 8 * v13;
          while (v14 != *v15)
          {
            ++v15;
            v16 -= 8;
            if (!v16)
            {
              goto LABEL_47;
            }
          }

          if ((*(v6 + 15) & 2) != 0)
          {
            v17 = a1[6];
            v18 = 0;
            if (v17)
            {
              v19 = *(v17 + 4 * ((v6 - v10) >> 4));
              v18 = 0;
              while ((*(v18 + 8) & v19) != 0)
              {
                v18 += 16;
                if (v18 == v12)
                {
                  goto LABEL_47;
                }
              }
            }

            if (v18 != v12)
            {
              v20 = (v6 - v10) >> 4;
              v21 = a3;
              v23 = a3[1];
              v22 = a3[2];
              if (v23 >= v22)
              {
                v25 = *a3;
                v26 = v23 - *a3;
                v27 = v26 >> 3;
                v28 = (v26 >> 3) + 1;
                if (v28 >> 61)
                {
                  sub_1794();
                }

                v29 = v22 - v25;
                if (v29 >> 2 > v28)
                {
                  v28 = v29 >> 2;
                }

                if (v29 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v30 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v30 = v28;
                }

                if (v30)
                {
                  if (!(v30 >> 61))
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v31 = (8 * v27);
                *v31 = v20;
                v31[1] = *v18;
                v24 = 8 * v27 + 8;
                memcpy(0, v25, v26);
                v21 = a3;
                *a3 = 0;
                a3[2] = 0;
                if (v25)
                {
                  operator delete(v25);
                  v21 = a3;
                }
              }

              else
              {
                *v23 = v20;
                *(v23 + 1) = *v18;
                v24 = (v23 + 8);
              }

              v21[1] = v24;
              v6 = a1[4];
            }
          }
        }

LABEL_47:
        if (*(v6 + 15))
        {
          v32 = a1[6];
          if (v32)
          {
            v33 = ~*(v32 + 4 * ((v6 - a1[3]) >> 4));
            v34 = 0;
            while ((*(v34 + 8) & v33) != 0)
            {
              v34 += 16;
              if (v34 == v12)
              {
                goto LABEL_56;
              }
            }
          }

          else
          {
            v35 = 0;
            while (*(v35 + 8))
            {
              v35 += 16;
              if (v35 == v12)
              {
                goto LABEL_56;
              }
            }
          }
        }
      }

      else if (*(v6 + 15))
      {
LABEL_56:
        v36 = (v6 - a1[3]) >> 4;
        v37 = a1[6];
        if (v37)
        {
          v38 = *(v37 + 4 * v36);
        }

        else
        {
          v38 = 0;
        }

        v39 = v12;
        v40 = v12 >> 4;
        if (((v12 >> 4) + 1) >> 60)
        {
          sub_1794();
        }

        if (v12 >> 4 != -1)
        {
          if (!(((v12 >> 4) + 1) >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v41 = 16 * v40;
        *v41 = v36;
        *(v41 + 8) = v38;
        v12 = 16 * v40 + 16;
        memcpy(0, 0, v39);
      }

      v10 = a1[3];
      v6 = (a1[4] - 16);
      a1[4] = v6;
      if (*(*a1 + 16) == 1 && (a1[1] & 1) == 0 && v6 >= v10 && v6 < a1[5])
      {
        do
        {
          v43 = __ROR8__(*v6, 32);
          if (HIDWORD(v43) == 1 && (v43 + 3) < 2)
          {
            break;
          }

          v45 = sub_2D5204(**(*a1 + 4120));
          v10 = a1[3];
          v6 = a1[4];
          if (v45)
          {
            break;
          }

          v6 -= 2;
          a1[4] = v6;
        }

        while (v6 >= v10 && v6 < a1[5]);
      }
    }

    while (v6 >= v10 && v6 < a1[5]);
  }
}

void sub_BD92FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    operator delete(v12);
    v14 = *a12;
    if (!*a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = *a12;
    if (!*a12)
    {
      goto LABEL_3;
    }
  }

  *(a12 + 8) = v14;
  operator delete(v14);
  _Unwind_Resume(exception_object);
}

unint64_t sub_BD9364(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v82 = a2;
  v5 = *a1;
  v80 = 0x7FFFFFFF;
  v81 = 0x7FFFFFFF;
  sub_A79708(v71, *(v5 + 48), a3, 0, 0, 0);
  v6 = **(a1 + 8);
  v83[0] = &v84;
  v83[1] = 1;
  v84 = v6;
  sub_BD8E68(v71, v83, &v69);
  v7 = v69;
  v8 = v70;
  if (v69 != v70)
  {
    while (1)
    {
      v9 = *v7;
      v10 = sub_A57920((*(v5 + 48) + 4136), a3);
      v11 = (v10 - *v10);
      v12 = *v11;
      if (v12 < 5)
      {
        v13 = 0;
        goto LABEL_9;
      }

      if (v11[2])
      {
        v13 = v10 + v11[2] + *(v10 + v11[2]);
        if (v12 < 9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v13 = 0;
        if (v12 < 9)
        {
          goto LABEL_9;
        }
      }

      v65 = v11[4];
      if (v65)
      {
        v14 = (v10 + v65 + *(v10 + v65));
        goto LABEL_10;
      }

LABEL_9:
      v14 = 0;
LABEL_10:
      if (**(a1 + 16) == __ROR8__(*&v13[8 * *(sub_A571D4(v14, v9) + 14) + 4], 32) && **(a1 + 24) == sub_BD5DA0((*(v5 + 48) + 4136), a3, v9) && **(a1 + 32) == sub_BD5F34((*(v5 + 48) + 4136), a3, v9))
      {
        v15 = v73;
        v74 = v73;
        v16 = v73;
        do
        {
          if (v16 >= v75)
          {
            break;
          }

          v17 = v76;
          if (!v76)
          {
            break;
          }

          v18 = sub_585D8((v71[0] + 3896));
          v19 = 0xAAAAAAAAAAAAAAABLL * (v16 - v15);
          v20 = *v17;
          if (v19 < v20)
          {
            break;
          }

          v21 = *(v17 + 1);
          if (*(v17 + 2) + v20 - v21 <= v19)
          {
            break;
          }

          v22 = *(v21 + (v19 - v20));
          if ((v22 & 1) == 0)
          {
            break;
          }

          if (((v22 >> 1) & 1 & ~v18) != 0)
          {
            break;
          }

          v15 = v73;
          v16 = v74 + 3;
          v74 = v16;
        }

        while (v16 >= v73);
        v24 = v73;
        v23 = v74;
        if (v74 >= v73 && v74 < v75)
        {
          if (v77 == 1)
          {
            v78 = 0;
            v26 = (v72 + *(v72 - *v72 + 8));
            v79 = *(&v26[3 * (v74[2] >> 8) + 2] + *v26) + *v74;
          }

          do
          {
            v28 = sub_A5706C((*(v5 + 48) + 4136), a3);
            v29 = v28;
            v30 = &v28[-*v28];
            if (*v30 < 5u)
            {
              v31 = 0;
            }

            else
            {
              v31 = *(v30 + 2);
              if (v31)
              {
                v31 += &v28[*&v28[v31]];
              }
            }

            v32 = (v31 + 4 * a3 + 4 + *(v31 + 4 * a3 + 4));
            v33 = (v32 - *v32);
            if (*v33 >= 9u && (v34 = v33[4]) != 0)
            {
              v35 = (v32 + v34 + *(v32 + v34));
            }

            else
            {
              v35 = 0;
            }

            v36 = sub_A571D4(v35, v9);
            v37 = (v29 - *v29);
            if (*v37 < 0xBu)
            {
              v38 = 0;
              v39 = (v32 - *v32);
              if (*v39 < 0x11u)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v38 = v37[5];
              if (v38)
              {
                v38 = (v38 + v29 + *(v38 + v29));
              }

              v39 = (v32 - *v32);
              if (*v39 < 0x11u)
              {
LABEL_46:
                LODWORD(v40) = 0;
                goto LABEL_47;
              }
            }

            v40 = v39[8];
            if (v39[8])
            {
              LODWORD(v40) = *(v32 + v40);
            }

LABEL_47:
            v41 = sub_A57320(v38, v40 + *(v32 + v39[2] + *(v32 + v39[2])) * -1431655765 * ((v23 - v24) >> 2) + *(v36 + 14));
            if (v41)
            {
              v42 = __ROR8__(*v41, 32);
              v43 = v41[2];
            }

            else
            {
              v43 = 0;
              v42 = 0xFFFFFFFFLL;
            }

            v44 = sub_3A231C(*(*(v5 + 48) + 4184) + 24, __ROR8__(v42, 32), 0);
            v45 = v44;
            v46 = &v44[-*v44];
            if (*v46 >= 5u && (v47 = *(v46 + 2)) != 0)
            {
              v48 = &v44[v47 + *&v44[v47]];
            }

            else
            {
              v48 = 0;
            }

            v49 = sub_BCA9F8(v48, v42);
            v50 = (v45 - *v45);
            if (*v50 < 0xDu)
            {
              v51 = 0;
              v52 = (v49 - *v49);
              if (*v52 < 0x15u)
              {
                goto LABEL_62;
              }
            }

            else
            {
              v51 = v50[6];
              if (v51)
              {
                v51 = (v51 + v45 + *(v51 + v45));
              }

              v52 = (v49 - *v49);
              if (*v52 < 0x15u)
              {
                goto LABEL_62;
              }
            }

            v53 = v52[10];
            if (v53)
            {
              v54 = *(v49 + v53);
              goto LABEL_63;
            }

LABEL_62:
            v54 = -1;
LABEL_63:
            v55 = sub_A56DB8(v51, v54 + v43);
            v56 = *(a1 + 40);
            if (*v55 == *v56 && *(v56 + 2) == (*(v55 + 2) + 1) && *(v55 + 3) == *(v56 + 3))
            {
              v82 = sub_BD67E0(v5, &v82, a3, v9, -1431655765 * ((v74 - v73) >> 2));
            }

            v24 = v73;
            v23 = v74 + 3;
            v74 = v23;
            if (v23 >= v73)
            {
              do
              {
                if (v23 >= v75)
                {
                  break;
                }

                v57 = v76;
                if (!v76)
                {
                  break;
                }

                v58 = sub_585D8((v71[0] + 3896));
                v59 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v24) >> 2);
                v60 = *v57;
                if (v59 < v60)
                {
                  break;
                }

                v61 = *(v57 + 1);
                if (*(v57 + 2) + v60 - v61 <= v59)
                {
                  break;
                }

                v62 = *(v61 + (v59 - v60));
                if ((v62 & 1) == 0)
                {
                  break;
                }

                if (((v62 >> 1) & 1 & ~v58) != 0)
                {
                  break;
                }

                v24 = v73;
                v23 = v74 + 3;
                v74 = v23;
              }

              while (v23 >= v73);
              v24 = v73;
              v23 = v74;
            }

            if (v77 == 1)
            {
              v78 = 0;
              if (v23 >= v24 && v23 < v75)
              {
                v64 = (v72 + *(v72 - *v72 + 8));
                v79 = *(&v64[3 * (v23[2] >> 8) + 2] + *v64) + *v23;
              }
            }
          }

          while (v23 >= v24 && v23 < v75);
        }
      }

      v7 += 2;
      if (v7 == v8)
      {
        v7 = v69;
        break;
      }
    }
  }

  if (v7)
  {
    v70 = v7;
    operator delete(v7);
  }

  v66 = &v81;
  if (v82 != 0x7FFFFFFF)
  {
    if (v81 >= v82)
    {
      v66 = &v82;
    }

    if (v81 == 0x7FFFFFFF)
    {
      v66 = &v82;
    }
  }

  v67 = &v80;
  if (HIDWORD(v82) != 0x7FFFFFFF)
  {
    if (SHIDWORD(v82) >= v80)
    {
      v67 = &v82 + 1;
    }

    if (v80 == 0x7FFFFFFF)
    {
      v67 = &v82 + 1;
    }
  }

  return *v66 | (*v67 << 32);
}

void sub_BD9A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void *sub_BD9AA4(void *a1, uint64_t a2)
{
  sub_C9E54C(*a1 + 3896, 2);

  return sub_BD9AF0(a1, a2);
}

void *sub_BD9AF0(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (v2 != v3)
  {
    v4 = result;
    do
    {
      v5 = *(v2 + 200);
      v6 = *(v2 + 208);
      while (v5 != v6)
      {
        if (!*(v5 + 24))
        {
          v7 = *v5;
          v8 = *(v5 + 8);
          while (v7 != v8)
          {
            if (*(v7 + 160))
            {
              sub_5AF20();
            }

            result = sub_BD9BE0(v4, v7);
            v9 = *(v7 + 64);
            for (i = *(v7 + 72); v9 != i; v9 += 60)
            {
              result = sub_BD9D50(v4, v9);
            }

            v11 = *(v7 + 88);
            for (j = *(v7 + 96); v11 != j; v11 += 60)
            {
              result = sub_BD9D50(v4, v11);
            }

            v7 += 168;
          }
        }

        v5 += 72;
      }

      v2 += 296;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_BD9BE0(void *result, uint64_t a2)
{
  if (*(a2 + 44) == -1)
  {
    v26 = v2;
    v27 = v3;
    v5 = result;
    v24 = sub_A56F04((*result + 4136), *(a2 + 32), *(a2 + 52), *(a2 + 40));
    v25 = v6;
    v7 = *(a2 + 52);
    v8 = sub_A57920((*v5 + 4136), *(a2 + 32));
    v9 = (v8 - *v8);
    if (*v9 >= 9u && (v10 = v9[4]) != 0)
    {
      v11 = (v8 + v10 + *(v8 + v10));
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_A571D4(v11, v7);
    *(a2 + 8) = sub_A56700((*v5 + 4184), &v24, *(v12 + 6), 0x7FFFFFFF);
    *(a2 + 16) = v13;
    v22 = sub_A56F04((*v5 + 4136), *(a2 + 32), *(a2 + 56), *(a2 + 40));
    v23 = v14;
    v15 = *(a2 + 56);
    v16 = sub_A57920((*v5 + 4136), *(a2 + 32));
    v17 = (v16 - *v16);
    if (*v17 >= 9u && (v18 = v17[4]) != 0)
    {
      v19 = (v16 + v18 + *(v16 + v18));
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_A571D4(v19, v15);
    result = sub_A56A5C((*v5 + 4184), &v22, *(v20 + 6), 0x7FFFFFFF);
    *(a2 + 20) = result;
    *(a2 + 28) = v21;
  }

  return result;
}

void *sub_BD9D50(void *result, uint64_t a2)
{
  if (*(a2 + 40) == -1)
  {
    v26 = v2;
    v27 = v3;
    v5 = result;
    v24 = sub_A56F04((*result + 4136), *(a2 + 28), *(a2 + 48), *(a2 + 36));
    v25 = v6;
    v7 = *(a2 + 48);
    v8 = sub_A57920((*v5 + 4136), *(a2 + 28));
    v9 = (v8 - *v8);
    if (*v9 >= 9u && (v10 = v9[4]) != 0)
    {
      v11 = (v8 + v10 + *(v8 + v10));
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_A571D4(v11, v7);
    *(a2 + 4) = sub_A56700((*v5 + 4184), &v24, *(v12 + 6), 0x7FFFFFFF);
    *(a2 + 12) = v13;
    v22 = sub_A56F04((*v5 + 4136), *(a2 + 28), *(a2 + 52), *(a2 + 36));
    v23 = v14;
    v15 = *(a2 + 52);
    v16 = sub_A57920((*v5 + 4136), *(a2 + 28));
    v17 = (v16 - *v16);
    if (*v17 >= 9u && (v18 = v17[4]) != 0)
    {
      v19 = (v16 + v18 + *(v16 + v18));
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_A571D4(v19, v15);
    result = sub_A56A5C((*v5 + 4184), &v22, *(v20 + 6), 0x7FFFFFFF);
    *(a2 + 16) = result;
    *(a2 + 24) = v21;
  }

  return result;
}

void sub_BD9EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  for (i = *(a2 + 56); v2 != i; v2 += 248)
  {
    v4 = *(v2 + 96);
    if (v4 != *(v2 + 104))
    {
      v5 = *(v2 + 120);
      if (v5 == -1)
      {
        v5 = 0;
      }

      v6 = (v4 + 60 * v5);
      v8 = v6[1];
      v7 = v6[2];
      v9 = *(v6 + 41);
      *(v2 + 124) = *v6;
      *(v2 + 165) = v9;
      *(v2 + 156) = v7;
      *(v2 + 140) = v8;
    }
  }
}

void sub_BD9F20(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_BDA12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BDA150(int ***a1)
{
  v1 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (a1[1] == (dword_8 + 1) && **a1 == 0x4554534547475553 && *(*a1 + 8) == 68)
    {
      return 0;
    }

    if (a1[1] != (dword_4 + 2))
    {
      goto LABEL_21;
    }

    v2 = *a1;
  }

  else
  {
    v2 = a1;
    if (v1 != 6)
    {
      if (v1 != 9)
      {
        goto LABEL_50;
      }

      if (*a1 != 0x4554534547475553 || *(a1 + 8) != 68)
      {
        goto LABEL_50;
      }

      return 0;
    }
  }

  v6 = *v2;
  v7 = *(v2 + 2);
  if (v6 == 1414748499 && v7 == 19781)
  {
    return 1;
  }

LABEL_21:
  v9 = a1[1];
  if ((v1 & 0x80) != 0 && v9 == (&dword_1C + 1))
  {
    if (**a1 != 0x4C5F4D4554535953 || (*a1)[1] != 0x44455A494C41434FLL || (*a1)[2] != 0x5449534E4152545FLL || *(*a1 + 21) != 0x455059545F544953)
    {
      goto LABEL_50;
    }

    return 2;
  }

  else
  {
    if ((v1 & 0x80) == 0 || v9 != (dword_18 + 3) || (**a1 == 0x434F4C5F454E494CLL ? (v13 = (*a1)[1] == 0x545F44455A494C41) : (v13 = 0), v13 ? (v14 = (*a1)[2] == 0x545F5449534E4152) : (v14 = 0), v14 ? (v15 = *(*a1 + 19) == 0x455059545F544953) : (v15 = 0), !v15))
    {
LABEL_50:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(&v21, " provided", &v20);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v21;
      }

      else
      {
        v17 = v21.__r_.__value_.__r.__words[0];
      }

      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v21.__r_.__value_.__l.__size_;
      }

      v19 = sub_2D390(exception, v17, size);
    }

    return 3;
  }
}

void sub_BDA3C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BDA41C(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (*(a1 + 23) < 0)
  {
    if (*(a1 + 8) == 7 && **a1 == 1413567571 && *(*a1 + 3) == 1313818964)
    {
      return 0;
    }

    if (*(a1 + 8) == 4 && **a1 == 1280065864)
    {
      return 1;
    }

    if (*(a1 + 8) != 4)
    {
      goto LABEL_22;
    }

    v5 = *a1;
  }

  else
  {
    if (v1 != 4)
    {
      if (v1 != 7)
      {
        goto LABEL_37;
      }

      if (*a1 != 1413567571 || *(a1 + 3) != 1313818964)
      {
        goto LABEL_37;
      }

      return 0;
    }

    v5 = a1;
    if (*a1 == 1280065864)
    {
      return 1;
    }
  }

  if (*v5 == 1347376211)
  {
    return 2;
  }

LABEL_22:
  if ((v1 & 0x80) == 0 || *(a1 + 8) != 27 || (**a1 == 0x434F4C5F454E494CLL ? (v6 = *(*a1 + 8) == 0x545F44455A494C41) : (v6 = 0), v6 ? (v7 = *(*a1 + 16) == 0x545F5449534E4152) : (v7 = 0), v7 ? (v8 = *(*a1 + 19) == 0x455059545F544953) : (v8 = 0), !v8))
  {
LABEL_37:
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    sub_30F54(&v14, " provided", &v13);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v12 = sub_2D390(exception, v10, size);
  }

  return 3;
}

void sub_BDA648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_BDA6D0(void *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      if ((*result >> *(v2 + 104)))
      {
        v6 = *(v2 + 80);
        v7 = *(v2 + 88);
        while (v6 != v7)
        {
          if ((result[1] >> *(v6 + 104)))
          {
            sub_BDA768(result, a2, v6);
          }

          v6 += 112;
        }
      }

      v2 += 112;
    }

    while (v2 != v3);
  }
}

void sub_BDA768(uint64_t a1, void *a2, uint64_t a3)
{
  *__p = 0u;
  *v31 = 0u;
  v32 = 1065353216;
  v7 = *(a3 + 80);
  v8 = *(a3 + 88);
  v6 = a3 + 80;
  if (v7 == v8)
  {
    goto LABEL_13;
  }

  do
  {
    v9 = sub_BDA9B0(a1, a2, __p, *v7);
    v10 = a2[3];
    sub_37E4FC((v10 + 160 * v9 + 72), *(v10 + 160 * v9 + 80), *(v10 + 160 * *v7 + 72), *(v10 + 160 * *v7 + 80), (*(v10 + 160 * *v7 + 80) - *(v10 + 160 * *v7 + 72)) >> 4);
    v7 += 4;
  }

  while (v7 != v8);
  v11 = v31[0];
  if (!v31[0])
  {
LABEL_13:
    *(a3 + 88) = *(a3 + 80);
  }

  else
  {
    v12 = v31[0];
    do
    {
      v18 = a2[3];
      v19 = v18 + 160 * *(v12 + 8);
      v21 = v12[5];
      v20 = v12[6];
      *(v19 + 156) = *(v18 + 160 * *v21 + 156);
      if (v21 == v20)
      {
        v13 = 0;
      }

      else
      {
        v22 = v21 + 1;
        do
        {
          v13 = *(v18 + 160 * *(v22 - 1) + 157);
          if (v13)
          {
            break;
          }
        }

        while (v22++ != v20);
      }

      *(v19 + 157) = v13;
      v14 = a2[6] + 248 * **(v19 + 72);
      v15 = *(v14 + 140);
      v16 = *(v14 + 156);
      v17 = *(v14 + 124);
      *(v19 + 137) = *(v14 + 165);
      *(v19 + 112) = v15;
      *(v19 + 128) = v16;
      *(v19 + 96) = v17;
      v12 = *v12;
    }

    while (v12);
    *(a3 + 88) = *(a3 + 80);
    v34 = v6;
    do
    {
      v33 = *(v11 + 8);
      sub_BDAF80(&v34, &v33);
      v11 = *v11;
    }

    while (v11);
  }

  if (*(a1 + 16) == 1)
  {
    v25 = *(a3 + 80);
    for (i = *(a3 + 88); v25 != i; v25 += 4)
    {
      sub_BDAD60(a1, a2, a2[3] + 160 * *v25);
    }
  }

  v26 = v31[0];
  if (v31[0])
  {
    do
    {
      v28 = *v26;
      v29 = v26[5];
      if (v29)
      {
        v26[6] = v29;
        operator delete(v29);
      }

      operator delete(v26);
      v26 = v28;
    }

    while (v28);
  }

  v27 = __p[0];
  __p[0] = 0;
  if (v27)
  {
    operator delete(v27);
  }
}

uint64_t sub_BDA9B0(uint64_t a1, void *a2, void *a3, unsigned int a4)
{
  v7 = a2 + 3;
  v42 = sub_BDAC30(a1, a2[3] + 160 * a4);
  v43 = v8;
  *&v33 = &v42;
  v9 = sub_BDB2F0(a3, &v42, &unk_229EB70, &v33);
  v10 = v9;
  v12 = v9[6];
  v11 = v9[7];
  if (v12 >= v11)
  {
    v14 = v9[5];
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 2;
    v17 = v16 + 1;
    if ((v16 + 1) >> 62)
    {
      sub_1794();
    }

    v18 = v11 - v14;
    if (v18 >> 1 > v17)
    {
      v17 = v18 >> 1;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v19 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v17;
    }

    if (v19)
    {
      if (!(v19 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v20 = (v12 - v14) >> 2;
    v21 = (4 * v16);
    v22 = (4 * v16 - 4 * v20);
    *v21 = a4;
    v13 = v21 + 1;
    memcpy(v22, v14, v15);
    v10[5] = v22;
    v10[6] = v13;
    v10[7] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v12 = a4;
    v13 = v12 + 4;
  }

  v10[6] = v13;
  result = *(v10 + 8);
  if (result == -1)
  {
    *(v10 + 8) = sub_2FEF94(0xCCCCCCCCCCCCCCCDLL * ((a2[4] - a2[3]) >> 5));
    *(&v40 + 1) = 0xFFFFFFFF00000000;
    *v41 = 0;
    *&v41[24] = 0x10000000001;
    *__p = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *(&v33 + 4) = 0x8000000080000000;
    *&v39 = 0x8000000080000000;
    *(&v39 + 1) = 0x7FFFFFFFLL;
    *&v40 = 0x8000000080000000;
    *&v41[4] = xmmword_2266560;
    *&v41[20] = -1;
    v24 = a2[4];
    if (v24 >= a2[5])
    {
      v31 = sub_BDB0AC(v7, &v33);
      v32 = __p[1];
      a2[4] = v31;
      if (v32)
      {
        *&v38 = v32;
        operator delete(v32);
      }
    }

    else
    {
      *v24 = v33;
      v25 = v34;
      v26 = v36;
      v27 = __p[0];
      *(v24 + 32) = v35;
      *(v24 + 48) = v26;
      *(v24 + 16) = v25;
      *(v24 + 64) = v27;
      *(v24 + 72) = 0;
      *(v24 + 80) = 0;
      *(v24 + 88) = 0;
      v28 = v39;
      v29 = v40;
      v30 = *v41;
      *(v24 + 142) = *&v41[14];
      *(v24 + 112) = v29;
      *(v24 + 128) = v30;
      *(v24 + 96) = v28;
      a2[4] = v24 + 160;
    }

    return *(v10 + 8);
  }

  return result;
}

void sub_BDAC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_BDAC30(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 144);
  v5 = sub_A57920((*(a1 + 24) + 4136), *(a2 + 124));
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (v6[2])
  {
    v8 = v5 + v6[2] + *(v5 + v6[2]);
    if (v7 < 9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (v7 < 9)
    {
      goto LABEL_6;
    }
  }

  v17 = v6[4];
  if (v17)
  {
    v9 = (v5 + v17 + *(v5 + v17));
    goto LABEL_7;
  }

LABEL_6:
  v9 = 0;
LABEL_7:
  v10 = sub_A571D4(v9, v4);
  v11 = __ROR8__(*&v8[8 * *(v10 + 14) + 4], 32);
  v12 = sub_92FC60(*(*(a1 + 24) + 4056) + 24, *&v8[8 * *(v10 + 14) + 4], 0, "line");
  v13 = (v12 - *v12);
  if (*v13 >= 7u && (v14 = v13[3]) != 0)
  {
    v15 = *(v12 + v14 + 4) | (*(v12 + v14) << 32);
  }

  else
  {
    v15 = 0xFFFFFFFFLL;
  }

  if (*(a2 + 156) != 1)
  {
    v15 = 0xFFFFFFFFLL;
  }

  if (*(a2 + 156))
  {
    return v15;
  }

  else
  {
    return v11;
  }
}

void sub_BDAD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = a1;
  v4 = *(a3 + 72);
  v5 = *(a3 + 80);
  v6 = 126 - 2 * __clz((v5 - v4) >> 4);
  v20[0] = a2;
  v20[1] = a1;
  v28 = &v21;
  v29 = v20;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  sub_BDB72C(v4, v5, &v28, v7, 1);
  v8 = *(a3 + 72);
  v9 = *(a3 + 80);
  if (v8 == v9)
  {
    v9 = *(a3 + 72);
  }

  else
  {
    for (i = v8 + 4; i != v9; i += 4)
    {
      sub_BDCB7C(&v28, *(v21 + 48), v22, *(i - 4));
      sub_BDCB7C(&v23, *(v21 + 48), v22, *i);
      if (v28 == v23)
      {
        v11 = BYTE4(v29);
        v12 = v25;
        if (BYTE4(v29) == v25 && BYTE4(v29))
        {
          v11 = v29;
          v12 = v24;
        }

        if (v11 == v12)
        {
          v13 = v31;
          v14 = v27;
          if (v31 == v27 && v31)
          {
            v13 = v30;
            v14 = v26;
          }

          if (v13 == v14)
          {
            v15 = i - 4;
            if (i - 4 != v9)
            {
              while (1)
              {
                i += 4;
                if (i == v9)
                {
                  break;
                }

                sub_BDCB7C(&v28, *(v21 + 48), v22, *v15);
                sub_BDCB7C(&v23, *(v21 + 48), v22, *i);
                if (v28 == v23)
                {
                  v16 = BYTE4(v29);
                  v17 = v25;
                  if (BYTE4(v29) == v25 && BYTE4(v29))
                  {
                    v16 = v29;
                    v17 = v24;
                  }

                  if (v16 == v17)
                  {
                    v18 = v31;
                    v19 = v27;
                    if (v31 == v27 && v31)
                    {
                      v18 = v30;
                      v19 = v26;
                    }

                    if (v18 == v19)
                    {
                      continue;
                    }
                  }
                }

                *(v15 + 1) = *i;
                v15 += 4;
              }

              v9 = v15 + 4;
            }

            break;
          }
        }
      }
    }
  }

  if (v9 != *(a3 + 80))
  {
    *(a3 + 80) = v9;
  }
}

uint64_t *sub_BDAF80(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t sub_BDB0AC(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v5 = 0x199999999999999;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x199999999999999)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = *(a2 + 48);
  v7 = 32 * ((a1[1] - *a1) >> 5);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v6;
  *(v7 + 64) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v9 = *(a2 + 96);
  v10 = *(a2 + 112);
  v11 = *(a2 + 128);
  *(v7 + 142) = *(a2 + 142);
  *(v7 + 112) = v10;
  *(v7 + 128) = v11;
  *(v7 + 96) = v9;
  v12 = 160 * v2 + 160;
  v13 = *a1;
  v14 = a1[1];
  v15 = v7 + *a1 - v14;
  if (*a1 != v14)
  {
    v16 = *a1;
    v17 = v7 + *a1 - v14;
    do
    {
      *v17 = *v16;
      v18 = *(v16 + 1);
      v19 = *(v16 + 2);
      v20 = *(v16 + 3);
      *(v17 + 64) = v16[8];
      *(v17 + 32) = v19;
      *(v17 + 48) = v20;
      *(v17 + 16) = v18;
      *(v17 + 80) = 0;
      *(v17 + 88) = 0;
      *(v17 + 72) = *(v16 + 9);
      *(v17 + 88) = v16[11];
      v16[9] = 0;
      v16[10] = 0;
      v16[11] = 0;
      v21 = *(v16 + 6);
      v22 = *(v16 + 7);
      v23 = *(v16 + 8);
      *(v17 + 142) = *(v16 + 142);
      *(v17 + 112) = v22;
      *(v17 + 128) = v23;
      *(v17 + 96) = v21;
      v16 += 20;
      v17 += 160;
    }

    while (v16 != v14);
    do
    {
      v24 = v13[9];
      if (v24)
      {
        v13[10] = v24;
        operator delete(v24);
      }

      v13 += 20;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v12;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v12;
}

uint64_t sub_BDB284(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        v2[6] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

uint64_t *sub_BDB2F0(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v6 = (((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v5 ^ (v5 >> 33))) >> 33)) + 0x388152A534) ^ 0xDEADBEEF;
  v7 = *(a2 + 8);
  v8 = (v7 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_37;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = (v7 + (v6 << 6) + (v6 >> 2) + 2654435769u) ^ v6;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = v8 & (*&v9 - 1);
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_37:
    operator new();
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v17 = v13[1];
      if (v17 == v8)
      {
        if (*(v13 + 5) == HIDWORD(v4) && *(v13 + 4) == v4 && *(v13 + 24) == v7)
        {
          return v13;
        }
      }

      else if ((v17 & (*&v9 - 1)) != v11)
      {
        goto LABEL_37;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_37;
      }
    }
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v14 >= *&v9)
    {
      v14 %= *&v9;
    }

    if (v14 != v11)
    {
      goto LABEL_37;
    }

LABEL_12:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_37;
    }
  }

  if (*(v13 + 5) != HIDWORD(v4) || *(v13 + 4) != v4 || *(v13 + 24) != v7)
  {
    goto LABEL_12;
  }

  return v13;
}

void sub_BDB6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BDB6C4(va);
  _Unwind_Resume(a1);
}

void **sub_BDB6C4(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[5];
      if (v4)
      {
        v2[6] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void sub_BDB72C(unsigned int *result, unsigned int *a2, void *a3, uint64_t a4, char a5)
{
  while (2)
  {
    v10 = a2 - 4;
    v90 = a2 - 12;
    v91 = a2 - 8;
    v11 = result;
    v92 = a2;
    while (1)
    {
      while (1)
      {
        result = v11;
        v12 = (a2 - v11) >> 4;
        v13 = v12 - 2;
        if (v12 > 2)
        {
          switch(v12)
          {
            case 3uLL:
              v49 = sub_BDC3A0(a3, v11 + 4, v11);
              v50 = sub_BDC3A0(a3, v10, v11 + 4);
              if (v49)
              {
                if (v50)
                {
                  goto LABEL_112;
                }

                v89 = *(v11 + 1);
                v94 = *v11;
                *v11 = v89;
                *(v11 + 1) = v94;
                if (!sub_BDC3A0(a3, v10, v11 + 4))
                {
                  return;
                }

                v51 = *(v11 + 1);
                v94 = v51;
                *(v11 + 1) = *v10;
LABEL_113:
                *v10 = v51;
                return;
              }

              if (!v50)
              {
                return;
              }

              v94 = *(v11 + 1);
              v83 = v94;
              *(v11 + 1) = *v10;
              *v10 = v83;
LABEL_168:
              if (sub_BDC3A0(a3, v11 + 4, v11))
              {
                v84 = *(v11 + 1);
                v94 = *v11;
                *v11 = v84;
                *(v11 + 1) = v94;
              }

              return;
            case 4uLL:

              sub_BDC6D4(v11, v11 + 4, v11 + 8, v10, a3);
              return;
            case 5uLL:
              sub_BDC6D4(v11, v11 + 4, v11 + 8, v11 + 12, a3);
              if (!sub_BDC3A0(a3, v10, v11 + 12))
              {
                return;
              }

              v94 = *(v11 + 3);
              v45 = v94;
              *(v11 + 3) = *v10;
              *v10 = v45;
              if (!sub_BDC3A0(a3, v11 + 12, v11 + 8))
              {
                return;
              }

              v46 = *(v11 + 2);
              *(v11 + 2) = *(v11 + 3);
              *(v11 + 3) = v46;
              if (!sub_BDC3A0(a3, v11 + 8, v11 + 4))
              {
                return;
              }

              v47 = *(v11 + 1);
              *(v11 + 1) = *(v11 + 2);
              *(v11 + 2) = v47;
              goto LABEL_168;
          }
        }

        else
        {
          if (v12 < 2)
          {
            return;
          }

          if (v12 == 2)
          {
            if (!sub_BDC3A0(a3, v10, v11))
            {
              return;
            }

LABEL_112:
            v94 = *v11;
            *v11 = *v10;
            v51 = v94;
            goto LABEL_113;
          }
        }

        if (v12 <= 23)
        {
          v52 = v11 + 4;
          v53 = v11 == a2 || v52 == a2;
          v54 = v53;
          if (a5)
          {
            if ((v54 & 1) == 0)
            {
              v55 = 0;
              v56 = v11;
              do
              {
                v58 = v56;
                v56 = v52;
                if (sub_BDC3A0(a3, v52, v58))
                {
                  v94 = *v56;
                  v59 = v55;
                  do
                  {
                    *(v11 + v59 + 16) = *(v11 + v59);
                    if (!v59)
                    {
                      v57 = v11;
                      goto LABEL_127;
                    }

                    v59 -= 16;
                  }

                  while (sub_BDC3A0(a3, &v94, (v11 + v59)));
                  v57 = (v11 + v59 + 16);
LABEL_127:
                  *v57 = v94;
                }

                v52 = v56 + 4;
                v55 += 16;
              }

              while (v56 + 4 != a2);
            }
          }

          else if ((v54 & 1) == 0)
          {
            v85 = v11 - 4;
            do
            {
              v86 = result;
              result = v52;
              if (sub_BDC3A0(a3, v52, v86))
              {
                v94 = *result;
                v87 = v85;
                do
                {
                  *(v87 + 2) = *(v87 + 1);
                  v88 = sub_BDC3A0(a3, &v94, v87);
                  v87 -= 4;
                }

                while (v88);
                *(v87 + 2) = v94;
              }

              v52 = result + 4;
              v85 += 4;
            }

            while (result + 4 != a2);
          }

          return;
        }

        if (!a4)
        {
          if (v11 != a2)
          {
            v60 = v13 >> 1;
            v61 = v13 >> 1;
            do
            {
              v62 = v61;
              if (v60 >= v61)
              {
                v63 = (2 * v61) | 1;
                v64 = &result[4 * v63];
                if (2 * v61 + 2 < v12 && sub_BDC3A0(a3, &result[4 * v63], v64 + 4))
                {
                  v64 += 4;
                  v63 = 2 * v62 + 2;
                }

                v65 = &result[4 * v62];
                if (!sub_BDC3A0(a3, v64, v65))
                {
                  v94 = *v65;
                  do
                  {
                    v66 = v64;
                    *v65 = *v64;
                    if (v60 < v63)
                    {
                      break;
                    }

                    v67 = (2 * v63) | 1;
                    v64 = &result[4 * v67];
                    v68 = 2 * v63 + 2;
                    if (v68 < v12 && sub_BDC3A0(a3, &result[4 * v67], v64 + 4))
                    {
                      v64 += 4;
                      v67 = v68;
                    }

                    v65 = v66;
                    v63 = v67;
                  }

                  while (!sub_BDC3A0(a3, v64, &v94));
                  *v66 = v94;
                }
              }

              v61 = v62 - 1;
            }

            while (v62);
            v69 = v92;
            do
            {
              v71 = 0;
              v93 = *result;
              v72 = result;
              do
              {
                v73 = &v72[4 * v71];
                v74 = v73 + 4;
                v75 = (2 * v71) | 1;
                v76 = 2 * v71 + 2;
                if (v76 < v12)
                {
                  v77 = v73 + 8;
                  if (sub_BDC3A0(a3, v73 + 4, v73 + 8))
                  {
                    v74 = v77;
                    v75 = v76;
                  }
                }

                *v72 = *v74;
                v72 = v74;
                v71 = v75;
              }

              while (v75 <= ((v12 - 2) >> 1));
              if (v74 == --v69)
              {
                *v74 = v93;
              }

              else
              {
                *v74 = *v69;
                *v69 = v93;
                v78 = (v74 - result + 16) >> 4;
                v70 = v78 < 2;
                v79 = v78 - 2;
                if (!v70)
                {
                  v80 = v79 >> 1;
                  v81 = &result[4 * (v79 >> 1)];
                  if (sub_BDC3A0(a3, v81, v74))
                  {
                    v94 = *v74;
                    do
                    {
                      v82 = v81;
                      *v74 = *v81;
                      if (!v80)
                      {
                        break;
                      }

                      v80 = (v80 - 1) >> 1;
                      v81 = &result[4 * v80];
                      v74 = v82;
                    }

                    while (sub_BDC3A0(a3, v81, &v94));
                    *v82 = v94;
                  }
                }
              }

              v70 = v12-- <= 2;
            }

            while (!v70);
          }

          return;
        }

        v14 = &v11[4 * (v12 >> 1)];
        if (v12 >= 0x81)
        {
          break;
        }

        v17 = sub_BDC3A0(a3, result, &result[4 * (v12 >> 1)]);
        v18 = sub_BDC3A0(a3, v10, result);
        if (v17)
        {
          if (v18)
          {
            v94 = *v14;
            *v14 = *v10;
          }

          else
          {
            v94 = *v14;
            *v14 = *result;
            *result = v94;
            if (!sub_BDC3A0(a3, v10, result))
            {
              goto LABEL_37;
            }

            v94 = *result;
            *result = *v10;
          }

          *v10 = v94;
LABEL_37:
          --a4;
          if (a5)
          {
            goto LABEL_62;
          }

          goto LABEL_61;
        }

        if (!v18)
        {
          goto LABEL_37;
        }

        v94 = *result;
        *result = *v10;
        *v10 = v94;
        if (!sub_BDC3A0(a3, result, &result[4 * (v12 >> 1)]))
        {
          goto LABEL_37;
        }

        v94 = *v14;
        *v14 = *result;
        *result = v94;
        --a4;
        if (a5)
        {
          goto LABEL_62;
        }

LABEL_61:
        if (sub_BDC3A0(a3, result - 4, result))
        {
          goto LABEL_62;
        }

        v93 = *result;
        if (sub_BDC3A0(a3, &v93, v10))
        {
          v11 = result;
          a2 = v92;
          do
          {
            v11 += 4;
          }

          while (!sub_BDC3A0(a3, &v93, v11));
        }

        else
        {
          v41 = result + 4;
          a2 = v92;
          do
          {
            v11 = v41;
            if (v41 >= v92)
            {
              break;
            }

            v42 = sub_BDC3A0(a3, &v93, v41);
            v41 = v11 + 4;
          }

          while (!v42);
        }

        v43 = a2;
        if (v11 < a2)
        {
          v43 = a2;
          do
          {
            v43 -= 4;
          }

          while (sub_BDC3A0(a3, &v93, v43));
        }

        while (v11 < v43)
        {
          v94 = *v11;
          *v11 = *v43;
          *v43 = v94;
          do
          {
            v11 += 4;
          }

          while (!sub_BDC3A0(a3, &v93, v11));
          do
          {
            v43 -= 4;
          }

          while (sub_BDC3A0(a3, &v93, v43));
        }

        v44 = v11 - 4;
        if (v11 - 4 != result)
        {
          *result = *v44;
        }

        a5 = 0;
        *v44 = v93;
      }

      v15 = sub_BDC3A0(a3, &result[4 * (v12 >> 1)], result);
      v16 = sub_BDC3A0(a3, v10, &result[4 * (v12 >> 1)]);
      if (v15)
      {
        if (v16)
        {
          v94 = *result;
          *result = *v10;
        }

        else
        {
          v94 = *result;
          *result = *v14;
          *v14 = v94;
          if (!sub_BDC3A0(a3, v10, &result[4 * (v12 >> 1)]))
          {
            goto LABEL_28;
          }

          v94 = *v14;
          *v14 = *v10;
        }

        *v10 = v94;
      }

      else if (v16)
      {
        v94 = *v14;
        *v14 = *v10;
        *v10 = v94;
        if (sub_BDC3A0(a3, &result[4 * (v12 >> 1)], result))
        {
          v94 = *result;
          *result = *v14;
          *v14 = v94;
        }
      }

LABEL_28:
      v19 = v14 - 4;
      v20 = sub_BDC3A0(a3, v14 - 4, result + 4);
      v21 = sub_BDC3A0(a3, v91, v14 - 4);
      if (v20)
      {
        if (v21)
        {
          v22 = *(result + 1);
          v94 = v22;
          v23 = v91;
          *(result + 1) = *v91;
        }

        else
        {
          v94 = *(result + 1);
          v25 = v94;
          *(result + 1) = *v19;
          *v19 = v25;
          if (!sub_BDC3A0(a3, v91, v14 - 4))
          {
            goto LABEL_42;
          }

          v94 = *v19;
          v23 = v91;
          *v19 = *v91;
          v22 = v94;
        }

        *v23 = v22;
      }

      else if (v21)
      {
        v94 = *v19;
        *v19 = *v91;
        *v91 = v94;
        if (sub_BDC3A0(a3, v14 - 4, result + 4))
        {
          v94 = *(result + 1);
          v24 = v94;
          *(result + 1) = *v19;
          *v19 = v24;
        }
      }

LABEL_42:
      v26 = sub_BDC3A0(a3, v14 + 4, result + 8);
      v27 = sub_BDC3A0(a3, v90, v14 + 4);
      if (v26)
      {
        if (v27)
        {
          v28 = *(result + 2);
          v94 = v28;
          v29 = v90;
          *(result + 2) = *v90;
        }

        else
        {
          v94 = *(result + 2);
          v31 = v94;
          *(result + 2) = *(v14 + 1);
          *(v14 + 1) = v31;
          if (!sub_BDC3A0(a3, v90, v14 + 4))
          {
            goto LABEL_51;
          }

          v94 = *(v14 + 1);
          v29 = v90;
          *(v14 + 1) = *v90;
          v28 = v94;
        }

        *v29 = v28;
      }

      else if (v27)
      {
        v94 = *(v14 + 1);
        *(v14 + 1) = *v90;
        *v90 = v94;
        if (sub_BDC3A0(a3, v14 + 4, result + 8))
        {
          v94 = *(result + 2);
          v30 = v94;
          *(result + 2) = *(v14 + 1);
          *(v14 + 1) = v30;
        }
      }

LABEL_51:
      v32 = sub_BDC3A0(a3, v14, v14 - 4);
      v33 = sub_BDC3A0(a3, v14 + 4, v14);
      if (v32)
      {
        if (v33)
        {
          v94 = *v19;
          *v19 = *(v14 + 1);
        }

        else
        {
          v94 = *v19;
          *v19 = *v14;
          *v14 = v94;
          if (!sub_BDC3A0(a3, v14 + 4, v14))
          {
            goto LABEL_60;
          }

          v94 = *v14;
          *v14 = *(v14 + 1);
        }

        *(v14 + 1) = v94;
      }

      else if (v33)
      {
        v94 = *v14;
        *v14 = *(v14 + 1);
        *(v14 + 1) = v94;
        if (sub_BDC3A0(a3, v14, v14 - 4))
        {
          v94 = *v19;
          *v19 = *v14;
          *v14 = v94;
        }
      }

LABEL_60:
      v94 = *result;
      *result = *v14;
      *v14 = v94;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v34 = 0;
      v93 = *result;
      do
      {
        v34 += 4;
      }

      while (sub_BDC3A0(a3, &result[v34], &v93));
      v35 = &result[v34];
      v36 = v92;
      v53 = v34 == 4;
      a2 = v92;
      if (v53)
      {
        v36 = v92;
        do
        {
          if (v35 >= v36)
          {
            break;
          }

          v36 -= 4;
        }

        while (!sub_BDC3A0(a3, v36, &v93));
      }

      else
      {
        do
        {
          v36 -= 4;
        }

        while (!sub_BDC3A0(a3, v36, &v93));
      }

      if (v35 >= v36)
      {
        v39 = v35 - 4;
        if (v35 - 4 == result)
        {
          goto LABEL_80;
        }

LABEL_79:
        *result = *v39;
        goto LABEL_80;
      }

      v37 = v35;
      v38 = v36;
      do
      {
        v94 = *v37;
        *v37 = *v38;
        *v38 = v94;
        do
        {
          v37 += 4;
        }

        while (sub_BDC3A0(a3, v37, &v93));
        do
        {
          v38 -= 4;
        }

        while (!sub_BDC3A0(a3, v38, &v93));
      }

      while (v37 < v38);
      v39 = v37 - 4;
      if (v39 != result)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v39 = v93;
      if (v35 < v36)
      {
        goto LABEL_83;
      }

      v40 = sub_BDC830(result, v39, a3);
      v11 = v39 + 4;
      if (sub_BDC830(v39 + 4, v92, a3))
      {
        break;
      }

      if (!v40)
      {
LABEL_83:
        sub_BDB72C(result, v39, a3, a4, a5 & 1);
        a5 = 0;
        v11 = v39 + 4;
      }
    }

    a2 = v39;
    if (!v40)
    {
      continue;
    }

    break;
  }
}

BOOL sub_BDC3A0(void *a1, unsigned int *a2, unsigned int *a3)
{
  sub_BDCB7C(&v57, *(**a1 + 48), *(*a1 + 8), *a2);
  v6 = a1[1];
  v7 = v6[1];
  v8 = *(*v6 + 48) + 248 * *a2;
  v9 = *(v8 + 172);
  v10 = sub_A57920((*(v7 + 24) + 4136), *(v8 + 152));
  v11 = (v10 - *v10);
  if (*v11 >= 9u && (v12 = v11[4]) != 0)
  {
    v13 = (v10 + v12 + *(v10 + v12));
  }

  else
  {
    v13 = 0;
  }

  v14 = __ROR8__(*sub_A571D4(v13, v9), 32);
  v53 = 0x1FFFFFFFELL;
  v54 = v14;
  if (sub_A5436C(*(v7 + 32), &v53))
  {
    v15 = sub_A5436C(*(v7 + 32), &v53);
    if (!v15)
    {
      goto LABEL_61;
    }

    v16 = *(v15 + 8);
    v17 = 0x7FFFFFFF;
    if (v16 != 0x7FFFFFFF)
    {
      v18 = *(v15 + 9);
      if (v18 != 0x7FFFFFFF)
      {
        v19 = *(v15 + 10);
        v20 = v18 + v16 + v19;
        if (v19 == 0x7FFFFFFF)
        {
          v17 = 0x7FFFFFFF;
        }

        else
        {
          v17 = v20;
        }
      }
    }
  }

  else
  {
    v17 = 2147483646;
  }

  v21 = v57;
  v22 = v58;
  v23 = v59;
  v24 = v60;
  v25 = v61;
  sub_BDCB7C(&v53, *(**a1 + 48), *(*a1 + 8), *a3);
  v26 = a1[1];
  v27 = v26[1];
  v28 = *(*v26 + 48) + 248 * *a3;
  v29 = *(v28 + 172);
  v30 = sub_A57920((*(v27 + 24) + 4136), *(v28 + 152));
  v31 = (v30 - *v30);
  if (*v31 >= 9u && (v32 = v31[4]) != 0)
  {
    v33 = (v30 + v32 + *(v30 + v32));
  }

  else
  {
    v33 = 0;
  }

  v34 = __ROR8__(*sub_A571D4(v33, v29), 32);
  v62[0] = 0x1FFFFFFFELL;
  v62[1] = v34;
  if (!sub_A5436C(*(v27 + 32), v62))
  {
    v37 = 2147483646;
    goto LABEL_24;
  }

  v35 = sub_A5436C(*(v27 + 32), v62);
  if (!v35)
  {
LABEL_61:
    sub_49EC("unordered_map::at: key not found");
  }

  v36 = *(v35 + 8);
  v37 = 0x7FFFFFFF;
  if (v36 != 0x7FFFFFFF)
  {
    v38 = *(v35 + 9);
    if (v38 != 0x7FFFFFFF)
    {
      v39 = *(v35 + 10);
      if (v39 != 0x7FFFFFFF)
      {
        v37 = v38 + v36 + v39;
      }
    }
  }

LABEL_24:
  v40 = HIDWORD(v21);
  v41 = HIDWORD(v53);
  v42 = v21 < v53;
  if (HIDWORD(v21) != HIDWORD(v53))
  {
    v42 = HIDWORD(v21) < HIDWORD(v53);
  }

  if (v42)
  {
    v43 = 255;
    return v43 > 0x7F;
  }

  if (v40 == v41)
  {
    v44 = v53 < v21;
  }

  else
  {
    v44 = v41 < v40;
  }

  if (v44)
  {
    v43 = 1;
    return v43 > 0x7F;
  }

  if ((v23 & 1) != 0 && (v54 & 0x100000000) != 0)
  {
    if (v22 < v54)
    {
      v45 = -1;
    }

    else
    {
      v45 = 1;
    }

    if (v22 != v54)
    {
LABEL_39:
      v46 = v45;
      goto LABEL_51;
    }
  }

  else
  {
    v47 = (v23 & 1) == 0;
    if ((v47 & BYTE4(v54)) != 0)
    {
      v45 = -1;
    }

    else
    {
      v45 = 1;
    }

    if (v47 == (v47 & BYTE4(v54)))
    {
      goto LABEL_39;
    }
  }

  if (v25 & 1) != 0 && (v56)
  {
    if (v24 < v55)
    {
      v48 = -1;
    }

    else
    {
      v48 = 1;
    }

    if (v24 != v55)
    {
LABEL_50:
      v46 = v48;
LABEL_51:
      v49 = v46 < 0;
      v43 = 255;
      if (!v49)
      {
        v43 = 1;
      }

      return v43 > 0x7F;
    }
  }

  else
  {
    v50 = (v25 & 1) == 0;
    if ((v50 & v56) != 0)
    {
      v48 = -1;
    }

    else
    {
      v48 = 1;
    }

    if (v50 == (v50 & v56))
    {
      goto LABEL_50;
    }
  }

  v51 = v17 < v37;
  v43 = 255;
  if (!v51)
  {
    v43 = 0;
  }

  return v43 > 0x7F;
}