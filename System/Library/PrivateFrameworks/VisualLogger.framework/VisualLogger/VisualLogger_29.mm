uint64_t sub_27137B9E0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_27137BA10(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000027188D37DLL)
  {
    if (((v2 & 0x800000027188D37DLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000027188D37DLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000027188D37DLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_27137BA80(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137BAF4(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137BB84(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_27137BB98(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137BC0C(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137BC9C(uint64_t a1)
{
  v2 = MEMORY[0x2743BED80]();
  *(a1 + 8) = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  *(a1 + 16) = std::locale::use_facet(a1, MEMORY[0x277D826A0]);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return a1;
}

void sub_27137BDD4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 6);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_27137BE2C(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137BEA0(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137BF30(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) != 1)
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
    return result;
  }

  if (*(a2 + 16) == *(a2 + 8) && (*(a2 + 88) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  *a2 = -993;
  *(a2 + 80) = 0;
  return result;
}

void *sub_27137BF98(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137C00C(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137C09C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    *(a2 + 80) = *(result + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

std::locale *sub_27137C0F0(std::locale *a1)
{
  a1->__locale_ = &unk_288107088;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137C17C(std::locale *a1)
{
  a1->__locale_ = &unk_288107088;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137C228(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    goto LABEL_19;
  }

  v4 = *(a2 + 16);
  if (v4 != v3)
  {
    if (v4 == v2)
    {
      v5 = *(a2 + 88);
      if ((v5 & 0x80) == 0)
      {
        if ((v5 & 4) == 0)
        {
          v6 = *v4;
          if (v6 == 95)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        goto LABEL_19;
      }
    }

    v7 = *(v4 - 1);
    v8 = *v4;
    if (v7 == 95 || (v7 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v7) & 0x500) != 0)
    {
      v9 = 1;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v9 = 0;
      if (v8 == 95)
      {
        goto LABEL_24;
      }
    }

    if ((v8 & 0x80) != 0 || (*(*(*(result + 24) + 16) + 4 * v8) & 0x500) == 0)
    {
      if (*(result + 40) == (v9 != 0))
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }

LABEL_24:
    if (*(result + 40) != (v9 != 1))
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  if ((*(a2 + 88) & 8) == 0)
  {
    v6 = *(v4 - 1);
    if (v6 == 95)
    {
      goto LABEL_17;
    }

LABEL_15:
    if ((v6 & 0x80) == 0 && (*(*(*(result + 24) + 16) + 4 * v6) & 0x500) != 0)
    {
LABEL_17:
      if (*(result + 40) != 1)
      {
        goto LABEL_27;
      }

LABEL_20:
      *a2 = -993;
      *(a2 + 80) = 0;
      return result;
    }
  }

LABEL_19:
  if (!*(result + 40))
  {
    goto LABEL_20;
  }

LABEL_27:
  v10 = *(result + 8);
  *a2 = -994;
  *(a2 + 80) = v10;
  return result;
}

std::locale *sub_27137C37C(std::locale *a1)
{
  a1->__locale_ = &unk_288107178;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_27137C454(std::locale *a1)
{
  a1->__locale_ = &unk_288107178;
  locale = a1[8].__locale_;
  if (locale && !atomic_fetch_add(&locale->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (locale->__on_zero_shared)(locale);
    std::__shared_weak_count::__release_weak(locale);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  v3 = a1[1].__locale_;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743BF050);
}

void sub_27137C54C(uint64_t a1, uint64_t a2)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0uLL;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  __p = 0;
  v18 = 0;
  v4 = (*(a1 + 44) + 1);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v19 = 0;
  *&v20 = v5;
  *(&v20 + 1) = v5;
  v21 = 0;
  sub_27137CB94(&__p, v4, &v20);
  v22 = v6;
  v23 = v6;
  v24 = 0;
  v25 = v20;
  v26 = v21;
  v28 = v6;
  v27 = 1;
  v7 = *(a2 + 16);
  if (v7 == *(a2 + 8))
  {
    v8 = *(a2 + 92);
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 84) == sub_27137C6D4(a1 + 16, v7, *(a2 + 24), &__p, *(a2 + 88) & 0xFBF | 0x40u, v8))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
    v9 = __p;
    goto LABEL_10;
  }

  *a2 = -994;
  *(a2 + 80) = *(a1 + 8);
  v9 = __p;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v18 - __p) >> 3);
  if (v10 < 2)
  {
LABEL_10:
    if (!v9)
    {
      return;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 80);
  v12 = *(a2 + 32);
  v13 = 2;
  v14 = 1;
  do
  {
    v15 = &v9[24 * v14];
    v16 = v12 + 24 * v11;
    *v16 = *v15;
    *(v16 + 16) = v15[16];
    v14 = v13;
    ++v11;
    ++v13;
  }

  while (v10 > v14);
LABEL_11:
  v18 = v9;
  operator delete(v9);
}

void sub_27137C6B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27137C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0;
  }

  *&v50 = a3;
  *(&v50 + 1) = a3;
  v51 = 0;
  *v47 = 0;
  memset(&v47[8], 0, 48);
  *__p = 0u;
  memset(v49, 0, 21);
  v53 = sub_27137CF08(&v52, v47);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v47[32])
  {
    *&v47[40] = *&v47[32];
    operator delete(*&v47[32]);
  }

  v13 = v53;
  *(v53 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_27137D234(v13 - 8, v15 - v16, &v50);
    v13 = v53;
  }

  v18 = *(v13 - 5);
  v19 = *(a1 + 32);
  v20 = (*(v13 - 4) - v18) >> 4;
  if (v19 <= v20)
  {
    if (v19 < v20)
    {
      *(v13 - 4) = v18 + 16 * v19;
    }
  }

  else
  {
    sub_27137D400(v13 - 40, v19 - v20);
    v13 = v53;
  }

  *(v13 - 2) = v6;
  *(v13 - 2) = a5;
  v21 = 1;
  *(v13 - 4) = a6;
  while (1)
  {
    if ((v21 & 0xFFF) == 0 && (v21 >> 12) >= a3 - a2)
    {
      sub_27137CDD4();
    }

    v23 = (v13 - 6);
    v24 = *(v13 - 2);
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v25 = *v23;
    if (*v23 > -994)
    {
      if (v25 != -993)
      {
        if (v25 == -992)
        {
          sub_27137D554(v47, v13 - 6);
          (*(**(v13 - 2) + 24))(*(v13 - 2), 1, v13 - 6);
          (*(*v49[1] + 24))(v49[1], 0, v47);
          v30 = v53;
          if (v53 >= v54)
          {
            v53 = sub_27137CF08(&v52, v47);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v31 = *&v47[16];
            *v53 = *v47;
            v30[1] = v31;
            *(v30 + 6) = 0;
            *(v30 + 7) = 0;
            *(v30 + 4) = 0;
            *(v30 + 5) = 0;
            v30[2] = *&v47[32];
            *(v30 + 6) = *&v47[48];
            *&v47[32] = 0;
            *&v47[40] = 0;
            *(v30 + 8) = 0;
            *(v30 + 9) = 0;
            *(v30 + 56) = *__p;
            *(v30 + 9) = v49[0];
            *&v47[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v49[0] = 0;
            v32 = v49[1];
            *(v30 + 85) = *(&v49[1] + 5);
            *(v30 + 10) = v32;
            v53 = v30 + 6;
          }

          if (*&v47[32])
          {
            *&v47[40] = *&v47[32];
            operator delete(*&v47[32]);
          }
        }

        else if (v25 != -991)
        {
          goto LABEL_60;
        }

        goto LABEL_17;
      }

      goto LABEL_32;
    }

    if ((v25 + 995) >= 2)
    {
      break;
    }

LABEL_17:
    v22 = v52;
    v13 = v53;
    ++v21;
    if (v52 == v53)
    {
      v17 = 0;
      if (!v52)
      {
        return v17;
      }

      goto LABEL_44;
    }
  }

  if (v25 != -1000)
  {
LABEL_60:
    sub_27137CE2C();
  }

  v26 = *(v13 - 10);
  if ((a5 & 0x20) != 0 && v26 == a2 || (a5 & 0x1000) != 0 && v26 != a3)
  {
LABEL_32:
    v27 = v53;
    v28 = *(v53 - 5);
    if (v28)
    {
      *(v53 - 4) = v28;
      operator delete(v28);
    }

    v29 = *(v27 - 8);
    if (v29)
    {
      *(v27 - 7) = v29;
      operator delete(v29);
    }

    v53 = v27 - 6;
    goto LABEL_17;
  }

  v38 = *a4;
  *v38 = a2;
  *(v38 + 8) = v26;
  *(v38 + 16) = 1;
  v39 = *(v13 - 8);
  v40 = *(v13 - 7) - v39;
  if (v40)
  {
    v41 = 0xAAAAAAAAAAAAAAABLL * (v40 >> 3);
    v42 = (v39 + 16);
    v43 = 1;
    do
    {
      v44 = v38 + 24 * v43;
      *v44 = *(v42 - 1);
      v45 = *v42;
      v42 += 24;
      *(v44 + 16) = v45;
    }

    while (v41 > v43++);
  }

  v17 = 1;
  v22 = v52;
  if (v52)
  {
LABEL_44:
    v33 = v53;
    v34 = v22;
    if (v53 != v22)
    {
      do
      {
        v35 = *(v33 - 5);
        if (v35)
        {
          *(v33 - 4) = v35;
          operator delete(v35);
        }

        v36 = *(v33 - 8);
        if (v36)
        {
          *(v33 - 7) = v36;
          operator delete(v36);
        }

        v33 -= 6;
      }

      while (v33 != v22);
      v34 = v52;
    }

    v53 = v22;
    operator delete(v34);
  }

  return v17;
}

void sub_27137CB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27137CD90(&a9);
  sub_27137CE84((v9 - 104));
  _Unwind_Resume(a1);
}

char *sub_27137CB94(void **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) < a2)
  {
    if (v6)
    {
      a1[1] = v6;
      operator delete(v6);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
      v9 = 2 * v8;
      if (2 * v8 <= a2)
      {
        v9 = a2;
      }

      if (v8 >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      if (v10 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_27137CD78();
  }

  v11 = a1[1];
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v6) >> 3);
  if (v12 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v6) >> 3);
  }

  if (v13)
  {
    v14 = *a3;
    v15 = a3[1];
    v16 = v13;
    v17 = *(a3 + 16);
    if (v13 == 1)
    {
      goto LABEL_29;
    }

    result = &v6[24 * (v13 & 0xFFFFFFFFFFFFFFFELL)];
    v16 = v13 & 1;
    v18 = v6 + 24;
    v19 = v13 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v18 - 3) = v14;
      *(v18 - 2) = v15;
      *v18 = v14;
      *(v18 + 1) = v15;
      *(v18 - 8) = v17;
      v18[16] = v17;
      v18 += 48;
      v19 -= 2;
    }

    while (v19);
    if (v13 != (v13 & 0xFFFFFFFFFFFFFFFELL))
    {
LABEL_29:
      do
      {
        *result = v14;
        *(result + 1) = v15;
        result[16] = v17;
        result += 24;
        --v16;
      }

      while (v16);
    }
  }

  if (a2 <= v12)
  {
    a1[1] = &v6[24 * a2];
  }

  else
  {
    v20 = v11 + 24 * (a2 - v12);
    v21 = 24 * a2 - 24 * v12;
    do
    {
      v22 = *a3;
      *(v11 + 16) = a3[2];
      *v11 = v22;
      v11 += 24;
      v21 -= 24;
    }

    while (v21);
    a1[1] = v20;
  }

  return result;
}

void *sub_27137CD90(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_27137CDD4()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 12);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137CE2C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 16);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

char **sub_27137CE84(char **a1)
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
        v5 = *(v3 - 5);
        if (v5)
        {
          *(v3 - 4) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 96;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_27137CF08(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_27137CD78();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v6 = 96 * v2;
  __p = 0;
  v17 = v6;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(v6 + 56) = *(a2 + 56);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(v6 + 85) = *(a2 + 85);
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  v18 = 96 * v2 + 96;
  v19 = 0;
  sub_27137D094(a1, &__p);
  v10 = a1[1];
  v11 = v17;
  while (1)
  {
    v12 = v18;
    if (v18 == v11)
    {
      break;
    }

    v18 -= 96;
    v13 = *(v12 - 40);
    if (v13)
    {
      *(v12 - 32) = v13;
      operator delete(v13);
    }

    v14 = *(v12 - 64);
    if (v14)
    {
      *(v12 - 56) = v14;
      operator delete(v14);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_27137D080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27137D1BC(va);
  _Unwind_Resume(a1);
}

void sub_27137D094(void *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *(v7 + 1);
      *v8 = *v7;
      *(v8 + 16) = v9;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 32) = 0;
      *(v8 + 32) = *(v7 + 2);
      *(v8 + 48) = v7[6];
      v7[4] = 0;
      v7[5] = 0;
      v7[6] = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      *(v8 + 72) = 0;
      *(v8 + 56) = *(v7 + 7);
      *(v8 + 72) = v7[9];
      v7[7] = 0;
      v7[8] = 0;
      v7[9] = 0;
      v10 = v7[10];
      *(v8 + 85) = *(v7 + 85);
      *(v8 + 80) = v10;
      v7 += 12;
      v8 += 96;
    }

    while (v7 != v5);
    do
    {
      v11 = v4[7];
      if (v11)
      {
        v4[8] = v11;
        operator delete(v11);
      }

      v12 = v4[4];
      if (v12)
      {
        v4[5] = v12;
        operator delete(v12);
      }

      v4 += 12;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_27137D1BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    v4 = *(i - 40);
    if (v4)
    {
      *(i - 32) = v4;
      operator delete(v4);
    }

    v5 = *(i - 64);
    if (v5)
    {
      *(i - 56) = v5;
      operator delete(v5);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_27137D234(void **a1, unint64_t a2, __int128 *a3)
{
  v3 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      do
      {
        v11 = *a3;
        *(v3 + 16) = *(a3 + 2);
        *v3 = v11;
        v3 += 24;
        v10 -= 24;
      }

      while (v10);
      v3 = v9;
    }

    a1[1] = v3;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_27137CD78();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_2711270EC();
    }

    v12 = 24 * a2;
    v13 = 24 * v5;
    do
    {
      v14 = *a3;
      *(v13 + 16) = *(a3 + 2);
      *v13 = v14;
      v13 += 24;
      v12 -= 24;
    }

    while (v12);
    v15 = *a1;
    v16 = a1[1];
    v17 = *a1 + 24 * v5 - v16;
    if (v16 != *a1)
    {
      v18 = *a1 + 24 * v5 - v16;
      do
      {
        v19 = *v15;
        *(v18 + 16) = v15[2];
        *v18 = v19;
        v18 += 24;
        v15 += 3;
      }

      while (v15 != v16);
      v15 = *a1;
    }

    *a1 = v17;
    a1[1] = (24 * v5 + 24 * a2);
    a1[2] = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_27137D400(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_27137CD78();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    bzero(v11, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_27137D554(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *(a1 + 32) = 0;
  *a1 = v2;
  *(a1 + 16) = v3;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a2 + 4);
  v4 = *(a2 + 5);
  if (v4 != v5)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_27137CD78();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *(a2 + 7);
  v6 = *(a2 + 8);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_27137CD78();
  }

  v8 = *(a2 + 10);
  *(a1 + 85) = *(a2 + 85);
  *(a1 + 80) = v8;
  return a1;
}

void sub_27137D748(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 64) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_27137D77C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 11);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_27137D7D4(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137D848(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

void sub_27137D8D8()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 3);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137D930(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_27137DAA8(_Unwind_Exception *a1)
{
  std::locale::~locale(v1 + 2);
  v1->__locale_ = &unk_288107028;
  locale = v1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  MEMORY[0x2743BF050](v1, v2);
  _Unwind_Resume(a1);
}

void sub_27137DB14()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 4);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137DB6C(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if ((v2 & 1) == 0)
  {
    if ((v2 & 8) == 0)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

std::locale *sub_27137DCA4(std::locale *a1)
{
  a1->__locale_ = &unk_288106F68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137DD30(std::locale *a1)
{
  a1->__locale_ = &unk_288106F68;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137DDDC(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == *(a2 + 24) || (v4 = result, result = (*(**(result + 24) + 40))(*(result + 24), *v3), *(v4 + 40) != result))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    ++*(a2 + 16);
    *(a2 + 80) = *(v4 + 8);
  }

  return result;
}

std::locale *sub_27137DE7C(std::locale *a1)
{
  a1->__locale_ = &unk_288106ED8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137DF08(std::locale *a1)
{
  a1->__locale_ = &unk_288106ED8;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137DFB4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 40))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

void *sub_27137DFFC(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137E070(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137E100(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || *v2 != *(result + 16))
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

std::locale *sub_27137E148(std::locale *a1)
{
  a1->__locale_ = &unk_288107058;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137E1D4(std::locale *a1)
{
  a1->__locale_ = &unk_288107058;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137E280(uint64_t result, uint64_t a2)
{
  v3 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v3 + 16) != 1 || (v4 = *(v3 + 8) - *v3, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  v6 = result;
  if (v4 >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*v3 + v7));
      result = (*(**(v6 + 24) + 40))(*(v6 + 24), *(*(a2 + 16) + v7));
      if (v8 != result)
      {
        goto LABEL_3;
      }

      if (v4 == ++v7)
      {
        v5 = *(a2 + 16);
        break;
      }
    }
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(v6 + 8);
  return result;
}

std::locale *sub_27137E3B0(std::locale *a1)
{
  a1->__locale_ = &unk_288106F98;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  return a1;
}

void sub_27137E43C(std::locale *a1)
{
  a1->__locale_ = &unk_288106F98;
  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  locale = a1[1].__locale_;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137E4E8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32) + 24 * (*(result + 40) - 1);
  if (*(v2 + 16) != 1 || (v3 = *v2, v4 = *(v2 + 8) - *v2, v5 = *(a2 + 16), *(a2 + 24) - v5 < v4))
  {
LABEL_3:
    *a2 = -993;
    *(a2 + 80) = 0;
    return result;
  }

  if (v4 >= 1)
  {
    v6 = v4;
    v7 = *(a2 + 16);
    do
    {
      v9 = *v3++;
      v8 = v9;
      v10 = *v7++;
      if (v8 != v10)
      {
        goto LABEL_3;
      }
    }

    while (--v6);
  }

  *a2 = -994;
  *(a2 + 16) = v5 + v4;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_27137E574(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_27137E5E8(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27137E678(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 32);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - v3) >> 3) < v2)
  {
    sub_27137DB14();
  }

  v4 = v3 + 24 * (v2 - 1);
  if (*(v4 + 16) == 1 && (v6 = v4, v5 = *v4, v7 = *(v6 + 8) - v5, v8 = *(a2 + 16), *(a2 + 24) - v8 >= v7) && (v9 = result, v10 = a2, result = memcmp(v5, *(a2 + 16), v7), a2 = v10, !result))
  {
    *v10 = -994;
    *(v10 + 16) = v8 + v7;
    *(v10 + 80) = *(v9 + 8);
  }

  else
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  return result;
}

void sub_27137E74C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 169) != 1)
  {
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    if (v7 < v6)
    {
      *v7 = a2;
      *(a1 + 48) = v7 + 1;
      return;
    }

    v8 = *(a1 + 40);
    v13 = (v7 - v8);
    v14 = v7 - v8 + 1;
    if (v14 >= 0)
    {
      v15 = v6 - v8;
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        operator new();
      }

      v19 = v7 - v8;
      *v13 = a2;
      v18 = v13 + 1;
      memcpy(0, v8, v19);
      *(a1 + 40) = 0;
      *(a1 + 48) = v13 + 1;
      *(a1 + 56) = 0;
      if (v8)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_271135560();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 48) = v5 + 1;
    return;
  }

  v8 = *(a1 + 40);
  v9 = (v5 - v8);
  v10 = v5 - v8 + 1;
  if (v10 < 0)
  {
    goto LABEL_26;
  }

  v11 = v4 - v8;
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    operator new();
  }

  v17 = v5 - v8;
  *v9 = v3;
  v18 = v9 + 1;
  memcpy(0, v8, v17);
  *(a1 + 40) = 0;
  *(a1 + 48) = v9 + 1;
  *(a1 + 56) = 0;
  if (v8)
  {
LABEL_23:
    operator delete(v8);
    *(a1 + 48) = v18;
    return;
  }

LABEL_25:
  *(a1 + 48) = v18;
}

uint64_t sub_27137E968(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_288106F38;
  *(a1 + 8) = a3;
  std::locale::locale((a1 + 16), a2);
  *(a1 + 24) = *(a2 + 8);
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = a4;
  *(a1 + 169) = a5;
  *(a1 + 170) = a6;
  std::locale::locale(&v13, (a1 + 16));
  std::locale::name(&v14, &v13);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    v11 = v14.__r_.__value_.__l.__size_ != 1 || *v14.__r_.__value_.__l.__data_ != 67;
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  else
  {
    v11 = SHIBYTE(v14.__r_.__value_.__r.__words[2]) != 1 || v14.__r_.__value_.__s.__data_[0] != 67;
  }

  std::locale::~locale(&v13);
  *(a1 + 171) = v11;
  return a1;
}

void sub_27137EAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  sub_27137F4D0((v9 + 136));
  v14 = *(v9 + 112);
  if (v14)
  {
    *(v9 + 120) = v14;
    operator delete(v14);
    sub_27137F544(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
LABEL_3:
      v16 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    sub_27137F544(v11);
    v15 = *(v9 + 64);
    if (!v15)
    {
      goto LABEL_3;
    }
  }

  *(v9 + 72) = v15;
  operator delete(v15);
  v16 = *v12;
  if (!*v12)
  {
LABEL_4:
    std::locale::~locale((v9 + 16));
    *v9 = v10;
    v17 = *(v9 + 8);
    if (!v17)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v9 + 48) = v16;
  operator delete(v16);
  std::locale::~locale((v9 + 16));
  *v9 = v10;
  v17 = *(v9 + 8);
  if (!v17)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  (*(*v17 + 8))(v17);
  _Unwind_Resume(a1);
}

void sub_27137EB6C(std::locale *a1)
{
  sub_27137F638(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27137EBA4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (v4 == v5)
  {
    v23 = 0;
    v24 = *(a1 + 168);
    goto LABEL_59;
  }

  if (*(a1 + 171) != 1 || v4 + 1 == v5)
  {
    goto LABEL_34;
  }

  LOBYTE(v114) = *v4;
  v6 = v4[1];
  HIBYTE(v114) = v4[1];
  if (*(a1 + 169) == 1)
  {
    LOBYTE(v114) = (*(**(a1 + 24) + 40))(*(a1 + 24));
    HIBYTE(v114) = (*(**(a1 + 24) + 40))(*(a1 + 24), v6);
  }

  sub_27137F7B4(a1 + 16, &v114, &__p, &__p);
  if (v117 < 0)
  {
    v25 = v116;
    operator delete(__p);
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_34:
    v24 = 0;
    v23 = 1;
    goto LABEL_35;
  }

  if (!v117)
  {
    goto LABEL_34;
  }

LABEL_8:
  v7 = *(a1 + 112);
  v8 = *(a1 + 120) - v7;
  if (v8)
  {
    v9 = v8 >> 1;
    if ((v8 >> 1) <= 1)
    {
      v9 = 1;
    }

    v10 = (v7 + 1);
    while (v114 != *(v10 - 1) || HIBYTE(v114) != *v10)
    {
      v10 += 2;
      if (!--v9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_225;
  }

LABEL_17:
  if (*(a1 + 170) != 1 || *(a1 + 88) == *(a1 + 96))
  {
LABEL_179:
    if (*(a1 + 136) == *(a1 + 144))
    {
      v86 = 0;
      goto LABEL_207;
    }

    sub_27137FA70(a1 + 16, &v114, &__p, &__p);
    v87 = *(a1 + 136);
    v88 = v117;
    v89 = *(a1 + 144) - v87;
    if (v89)
    {
      v90 = v2;
      v91 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      if (v117 >= 0)
      {
        v92 = v117;
      }

      else
      {
        v92 = v116;
      }

      if (v117 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v91 <= 1)
      {
        v94 = 1;
      }

      else
      {
        v94 = 0xAAAAAAAAAAAAAAABLL * (v89 >> 3);
      }

      v95 = 1;
      v96 = 1;
      do
      {
        v97 = *(v87 + 23);
        v98 = v97;
        if ((v97 & 0x80u) != 0)
        {
          v97 = *(v87 + 8);
        }

        if (v92 == v97)
        {
          v99 = v98 >= 0 ? v87 : *v87;
          if (!memcmp(p_p, v99, v92))
          {
            v86 = 1;
            v70 = 5;
            v2 = v90;
            if ((v88 & 0x80) == 0)
            {
              goto LABEL_204;
            }

            goto LABEL_203;
          }
        }

        v96 = v95++ < v91;
        v87 += 24;
        --v94;
      }

      while (v94);
      v70 = 0;
      v86 = 0;
      v2 = v90;
      if ((v88 & 0x80) == 0)
      {
        goto LABEL_204;
      }
    }

    else
    {
      v96 = 0;
      v70 = 0;
      v86 = 0;
      if ((v117 & 0x80) == 0)
      {
LABEL_204:
        if (v96)
        {
          goto LABEL_205;
        }

LABEL_207:
        if (v114 < 0)
        {
          v103 = *(a1 + 164);
        }

        else
        {
          v100 = *(a1 + 160);
          v101 = *(*(a1 + 24) + 16);
          v102 = *(v101 + 4 * v114);
          if (((v102 & v100) != 0 || v114 == 95 && (v100 & 0x80) != 0) && (SHIBYTE(v114) & 0x8000000000000000) == 0 && ((*(v101 + 4 * SHIBYTE(v114)) & v100) != 0 || (v100 & 0x80) != 0 && SHIBYTE(v114) == 95))
          {
            goto LABEL_225;
          }

          v103 = *(a1 + 164);
          if ((v103 & v102) != 0 || v114 == 95 && (v103 & 0x80) != 0)
          {
LABEL_224:
            v24 = v86;
LABEL_226:
            v23 = 2;
            goto LABEL_59;
          }
        }

        if ((SHIBYTE(v114) & 0x8000000000000000) == 0)
        {
          if ((*(*(*(a1 + 24) + 16) + 4 * SHIBYTE(v114)) & v103) == 0)
          {
            v24 = 1;
            if (SHIBYTE(v114) != 95 || (v103 & 0x80) == 0)
            {
              goto LABEL_226;
            }
          }

          goto LABEL_224;
        }

LABEL_225:
        v24 = 1;
        goto LABEL_226;
      }
    }

LABEL_203:
    operator delete(__p);
    goto LABEL_204;
  }

  v117 = 2;
  LOWORD(__p) = v114;
  BYTE2(__p) = 0;
  (*(**(a1 + 32) + 32))(&v111);
  if (v117 < 0)
  {
    operator delete(__p);
  }

  v12 = *(a1 + 88);
  v13 = v113;
  v14 = *(a1 + 96) - v12;
  if (!v14)
  {
    v22 = 0;
    v70 = 0;
    goto LABEL_175;
  }

  v106 = v2;
  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  if (v113 >= 0)
  {
    v16 = &v111;
  }

  else
  {
    v16 = v111;
  }

  v17 = v113;
  if (v113 >= 0)
  {
    v18 = v113;
  }

  else
  {
    v18 = v112;
  }

  if (v15 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 4);
  }

  v20 = (v12 + 47);
  v21 = 1;
  v22 = 1;
  do
  {
    v60 = *(v20 - 24);
    if (v60 >= 0)
    {
      v61 = (v20 - 47);
    }

    else
    {
      v61 = *(v20 - 47);
    }

    if (v60 >= 0)
    {
      v62 = *(v20 - 24);
    }

    else
    {
      v62 = *(v20 - 39);
    }

    if (v18 >= v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v18;
    }

    v64 = memcmp(v61, v16, v63);
    if (v64)
    {
      if ((v64 & 0x80000000) == 0)
      {
        goto LABEL_109;
      }
    }

    else if (v62 > v18)
    {
      goto LABEL_109;
    }

    v65 = *v20;
    if (v65 >= 0)
    {
      v66 = (v20 - 23);
    }

    else
    {
      v66 = *(v20 - 23);
    }

    if (v65 >= 0)
    {
      v67 = *v20;
    }

    else
    {
      v67 = *(v20 - 15);
    }

    if (v67 >= v18)
    {
      v68 = v18;
    }

    else
    {
      v68 = v67;
    }

    v69 = memcmp(v16, v66, v68);
    if (v69)
    {
      if (v69 < 0)
      {
LABEL_134:
        v70 = 5;
        goto LABEL_173;
      }
    }

    else if (v18 <= v67)
    {
      goto LABEL_134;
    }

LABEL_109:
    v22 = v21++ < v15;
    v20 += 48;
    --v19;
  }

  while (v19);
  v70 = 0;
LABEL_173:
  v2 = v106;
  v13 = v17;
LABEL_175:
  if (v13 < 0)
  {
    operator delete(v111);
  }

  if (!v22)
  {
    goto LABEL_179;
  }

  v86 = 1;
LABEL_205:
  v23 = 2;
  v24 = v86;
  if (v70)
  {
    goto LABEL_59;
  }

LABEL_35:
  v26 = **(v2 + 16);
  LOBYTE(v114) = **(v2 + 16);
  if (*(a1 + 169) == 1)
  {
    LODWORD(v26) = (*(**(a1 + 24) + 40))(*(a1 + 24), v26);
    LOBYTE(v114) = v26;
  }

  v27 = *(a1 + 40);
  v28 = *(a1 + 48) - v27;
  if (v28)
  {
    if (v28 <= 1)
    {
      v28 = 1;
    }

    do
    {
      v29 = *v27++;
      if (v29 == v26)
      {
        goto LABEL_58;
      }

      --v28;
    }

    while (v28);
  }

  v30 = *(a1 + 164);
  if (v30 || *(a1 + 64) != *(a1 + 72))
  {
    if ((v26 & 0x80000000) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v30) == 0)
    {
      v32 = (v30 >> 7) & 1;
      v31 = v26 == 95 ? v32 : 0;
    }

    else
    {
      v31 = 1;
    }

    v33 = *(a1 + 72);
    v34 = memchr(*(a1 + 64), v26, v33 - *(a1 + 64));
    v35 = !v34 || v34 == v33;
    v36 = !v35;
    if ((v31 & 1) == 0 && !v36)
    {
      goto LABEL_58;
    }
  }

  v39 = *(a1 + 88);
  v40 = *(a1 + 96);
  if (v39 == v40)
  {
    goto LABEL_139;
  }

  v109 = v24;
  if (*(a1 + 170) == 1)
  {
    v117 = 1;
    LOWORD(__p) = v26;
    (*(**(a1 + 32) + 32))(&v111);
    if (v117 < 0)
    {
      operator delete(__p);
    }

    v39 = *(a1 + 88);
    v41 = v113;
    v42 = *(a1 + 96) - v39;
    if (!v42)
    {
LABEL_68:
      v43 = 0;
      if ((v41 & 0x80) != 0)
      {
        goto LABEL_137;
      }

      goto LABEL_138;
    }
  }

  else
  {
    v41 = 1;
    v113 = 1;
    LOWORD(v111) = v26;
    v42 = v40 - v39;
    if (!v42)
    {
      goto LABEL_68;
    }
  }

  v105 = v23;
  v107 = v2;
  v44 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  v104 = v41;
  if ((v41 & 0x80u) == 0)
  {
    v45 = &v111;
  }

  else
  {
    v45 = v111;
  }

  if ((v41 & 0x80u) == 0)
  {
    v46 = v41;
  }

  else
  {
    v46 = v112;
  }

  if (v44 <= 1)
  {
    v47 = 1;
  }

  else
  {
    v47 = 0xAAAAAAAAAAAAAAABLL * (v42 >> 4);
  }

  v48 = (v39 + 47);
  v49 = 1;
  v43 = 1;
  while (2)
  {
    v50 = *(v48 - 24);
    if (v50 >= 0)
    {
      v51 = (v48 - 47);
    }

    else
    {
      v51 = *(v48 - 47);
    }

    if (v50 >= 0)
    {
      v52 = *(v48 - 24);
    }

    else
    {
      v52 = *(v48 - 39);
    }

    if (v46 >= v52)
    {
      v53 = v52;
    }

    else
    {
      v53 = v46;
    }

    v54 = memcmp(v51, v45, v53);
    if (v54)
    {
      if (v54 < 0)
      {
        goto LABEL_96;
      }
    }

    else if (v52 <= v46)
    {
LABEL_96:
      v55 = *v48;
      if (v55 >= 0)
      {
        v56 = (v48 - 23);
      }

      else
      {
        v56 = *(v48 - 23);
      }

      if (v55 >= 0)
      {
        v57 = *v48;
      }

      else
      {
        v57 = *(v48 - 15);
      }

      if (v57 >= v46)
      {
        v58 = v46;
      }

      else
      {
        v58 = v57;
      }

      v59 = memcmp(v45, v56, v58);
      if (v59)
      {
        if (v59 < 0)
        {
LABEL_107:
          v24 = 1;
          v2 = v107;
          goto LABEL_136;
        }
      }

      else if (v46 <= v57)
      {
        goto LABEL_107;
      }
    }

    v43 = v49++ < v44;
    v48 += 48;
    if (--v47)
    {
      continue;
    }

    break;
  }

  v2 = v107;
  v24 = v109;
LABEL_136:
  v23 = v105;
  if (v104 < 0)
  {
LABEL_137:
    operator delete(v111);
  }

LABEL_138:
  if (!v43)
  {
LABEL_139:
    if (*(a1 + 136) != *(a1 + 144))
    {
      v71 = v23;
      v72 = &__p;
      sub_27137FA70(a1 + 16, &v114, &v114 + 1, &__p);
      v73 = *(a1 + 136);
      v74 = v117;
      v75 = *(a1 + 144) - v73;
      if (v75)
      {
        v110 = v24;
        v108 = v2;
        v76 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        if (v117 >= 0)
        {
          v77 = v117;
        }

        else
        {
          v77 = v116;
        }

        if (v117 < 0)
        {
          v72 = __p;
        }

        if (v76 <= 1)
        {
          v78 = 1;
        }

        else
        {
          v78 = 0xAAAAAAAAAAAAAAABLL * (v75 >> 3);
        }

        v79 = 1;
        v80 = 1;
        do
        {
          v81 = *(v73 + 23);
          v82 = v81;
          if ((v81 & 0x80u) != 0)
          {
            v81 = *(v73 + 8);
          }

          if (v77 == v81)
          {
            v83 = v82 >= 0 ? v73 : *v73;
            if (!memcmp(v72, v83, v77))
            {
              v24 = 1;
              v2 = v108;
              if ((v74 & 0x80) == 0)
              {
                goto LABEL_162;
              }

              goto LABEL_161;
            }
          }

          v80 = v79++ < v76;
          v73 += 24;
          --v78;
        }

        while (v78);
        v2 = v108;
        v24 = v110;
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_162;
        }

LABEL_161:
        operator delete(__p);
      }

      else
      {
        v80 = 0;
        if (v117 < 0)
        {
          goto LABEL_161;
        }
      }

LABEL_162:
      if (v80)
      {
        v23 = v71;
        goto LABEL_59;
      }

      LOBYTE(v26) = v114;
      v23 = v71;
    }

    v84 = *(a1 + 160);
    if ((v26 & 0x80) != 0 || (*(*(*(a1 + 24) + 16) + 4 * v26) & v84) == 0)
    {
      v85 = (v84 >> 7) & 1;
      if (v26 != 95)
      {
        LOBYTE(v85) = 0;
      }

      v24 |= v85;
      goto LABEL_59;
    }

LABEL_58:
    v24 = 1;
  }

LABEL_59:
  if (*(a1 + 168) == (v24 & 1))
  {
    v37 = 0;
    v38 = -993;
  }

  else
  {
    *(v2 + 16) += v23;
    v37 = *(a1 + 8);
    v38 = -995;
  }

  *v2 = v38;
  *(v2 + 80) = v37;
}

void sub_27137F4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ***sub_27137F4D0(void ***a1)
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
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void ***sub_27137F544(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_11:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
LABEL_9:
          operator delete(*v5);
        }
      }

      else
      {
        v5 = v3 - 6;
        if (*(v3 - 25) < 0)
        {
          goto LABEL_9;
        }
      }

      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_11;
      }
    }
  }

  return a1;
}

uint64_t sub_27137F5DC(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

std::locale *sub_27137F638(std::locale *a1)
{
  a1->__locale_ = &unk_288106F38;
  locale = a1[17].__locale_;
  if (locale)
  {
    v3 = a1[18].__locale_;
    v4 = a1[17].__locale_;
    if (v3 != locale)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != locale);
      v4 = a1[17].__locale_;
    }

    a1[18].__locale_ = locale;
    operator delete(v4);
  }

  v6 = a1[14].__locale_;
  if (v6)
  {
    a1[15].__locale_ = v6;
    operator delete(v6);
  }

  v7 = a1[11].__locale_;
  if (v7)
  {
    v8 = a1[12].__locale_;
    v9 = a1[11].__locale_;
    if (v8 == v7)
    {
LABEL_21:
      a1[12].__locale_ = v7;
      operator delete(v9);
      goto LABEL_22;
    }

    while (1)
    {
      if (*(v8 - 1) < 0)
      {
        operator delete(*(v8 - 3));
        v10 = (v8 - 48);
        if (*(v8 - 25) < 0)
        {
LABEL_19:
          operator delete(*v10);
        }
      }

      else
      {
        v10 = (v8 - 48);
        if (*(v8 - 25) < 0)
        {
          goto LABEL_19;
        }
      }

      v8 = v10;
      if (v10 == v7)
      {
        v9 = a1[11].__locale_;
        goto LABEL_21;
      }
    }
  }

LABEL_22:
  v11 = a1[8].__locale_;
  if (v11)
  {
    a1[9].__locale_ = v11;
    operator delete(v11);
  }

  v12 = a1[5].__locale_;
  if (v12)
  {
    a1[6].__locale_ = v12;
    operator delete(v12);
  }

  std::locale::~locale(a1 + 2);
  a1->__locale_ = &unk_288107028;
  v13 = a1[1].__locale_;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return a1;
}

void sub_27137F7B4(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  HIBYTE(v16) = a3 - a2;
  if (a3 != a2)
  {
    memcpy(&__dst, a2, v5);
  }

  *(&__dst + v5) = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  if (SHIBYTE(v16) < 0)
  {
    if (!*(&__dst + 1))
    {
      goto LABEL_15;
    }

    p_dst = __dst;
  }

  else
  {
    if (!HIBYTE(v16))
    {
      return;
    }

    p_dst = &__dst;
  }

  std::__get_collation_name(&v14, p_dst);
  *a4 = *&v14.__r_.__value_.__l.__data_;
  v8 = v14.__r_.__value_.__r.__words[2];
  *(a4 + 16) = *(&v14.__r_.__value_.__l + 2);
  v9 = HIBYTE(v8);
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9)
  {
    goto LABEL_15;
  }

  if ((SHIBYTE(v16) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(v16) >= 3)
    {
      return;
    }

    goto LABEL_22;
  }

  if (*(&__dst + 1) < 3uLL)
  {
LABEL_22:
    (*(**(a1 + 16) + 32))(&v14);
    if (*(a4 + 23) < 0)
    {
      operator delete(*a4);
    }

    *a4 = v14;
    if (*(a4 + 23) < 0)
    {
      v11 = *(a4 + 8);
      if (v11 == 1 || v11 == 12)
      {
        if (&__dst != a4)
        {
          if (v16 >= 0)
          {
            v12 = &__dst;
          }

          else
          {
            v12 = __dst;
          }

          if (v16 >= 0)
          {
            v13 = HIBYTE(v16);
          }

          else
          {
            v13 = *(&__dst + 1);
          }

          sub_2711289F8(a4, v12, v13);
        }
      }

      else
      {
        **a4 = 0;
        *(a4 + 8) = 0;
      }
    }

    else
    {
      v10 = *(a4 + 23);
      if (v10 == 1 || v10 == 12)
      {
        if (&__dst != a4)
        {
          if (SHIBYTE(v16) < 0)
          {
            sub_271128928(a4, __dst, *(&__dst + 1));
          }

          else
          {
            *a4 = __dst;
            *(a4 + 16) = v16;
          }
        }
      }

      else
      {
        *a4 = 0;
        *(a4 + 23) = 0;
      }
    }
  }

LABEL_15:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }
}

void sub_27137FA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_27137FA70(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memcpy(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v8, v8 + v7);
  v9 = *(a4 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9 == 1)
  {
    goto LABEL_23;
  }

  if (v9 != 12)
  {
    if (v10 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v11[11] = v11[3];
  if (v13 < 0)
  {
    goto LABEL_26;
  }
}

void sub_27137FC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27137FC30()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 5);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27137FC88(uint64_t a1, char *a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  if (*(a1 + 170) != 1)
  {
    v11 = a2[23];
    if (v11 < 0)
    {
      if (*(a2 + 1) != 1)
      {
        goto LABEL_73;
      }
    }

    else if (v11 != 1)
    {
      goto LABEL_73;
    }

    v29 = a3[23];
    if (v29 < 0)
    {
      v29 = *(a3 + 1);
    }

    if (v29 != 1)
    {
LABEL_73:
      sub_271380894();
    }

    if (*(a1 + 169) != 1)
    {
LABEL_63:
      *v39 = *v4;
      v40 = *(v4 + 2);
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *v4 = 0;
      *__p = *v3;
      v42 = *(v3 + 2);
      *v3 = 0;
      *(v3 + 1) = 0;
      *(v3 + 2) = 0;
      sub_2713805B0((a1 + 88), v39);
      if (SHIBYTE(v42) < 0)
      {
        operator delete(__p[0]);
        if (SHIBYTE(v40) < 0)
        {
          goto LABEL_67;
        }
      }

      else if (SHIBYTE(v40) < 0)
      {
        goto LABEL_67;
      }

      return;
    }

    v30 = a2;
    if ((v11 & 0x80000000) != 0)
    {
      v30 = *a2;
    }

    v31 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v30);
    if (v4[23] < 0)
    {
      **v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
        goto LABEL_60;
      }
    }

    else
    {
      *v4 = v31;
      v32 = v3;
      if ((v3[23] & 0x80000000) == 0)
      {
LABEL_60:
        v33 = (*(**(a1 + 24) + 40))(*(a1 + 24), *v32);
        v34 = v3;
        if (v3[23] < 0)
        {
          v34 = *v3;
        }

        *v34 = v33;
        goto LABEL_63;
      }
    }

    v32 = *v3;
    goto LABEL_60;
  }

  if (*(a1 + 169))
  {
    for (i = 0; ; ++i)
    {
      v7 = v4[23];
      if ((v7 & 0x8000000000000000) != 0)
      {
        if (i >= *(v4 + 1))
        {
LABEL_25:
          for (j = 0; ; ++j)
          {
            v17 = v3[23];
            if ((v17 & 0x8000000000000000) != 0)
            {
              if (j >= *(v3 + 1))
              {
                goto LABEL_44;
              }
            }

            else if (j >= v17)
            {
              goto LABEL_44;
            }

            v18 = v3;
            if ((v17 & 0x80000000) != 0)
            {
              v18 = *v3;
            }

            v19 = (*(**(a1 + 24) + 40))(*(a1 + 24), v18[j]);
            v20 = v3;
            if (v3[23] < 0)
            {
              v20 = *v3;
            }

            v20[j] = v19;
          }
        }
      }

      else if (i >= v7)
      {
        goto LABEL_25;
      }

      v8 = v4;
      if ((v7 & 0x80000000) != 0)
      {
        v8 = *v4;
      }

      v9 = (*(**(a1 + 24) + 40))(*(a1 + 24), v8[i]);
      v10 = v4;
      if (v4[23] < 0)
      {
        v10 = *v4;
      }

      v10[i] = v9;
    }
  }

  for (k = 0; ; ++k)
  {
    v14 = a2[23];
    if ((v14 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (k >= v14)
    {
      goto LABEL_35;
    }

LABEL_23:
    v13 = a2;
    if ((v14 & 0x80000000) != 0)
    {
      v13 = *a2;
      v15 = *a2;
    }

    else
    {
      v15 = a2;
    }

    v15[k] = v13[k];
  }

  if (k < *(a2 + 1))
  {
    goto LABEL_23;
  }

LABEL_35:
  for (m = 0; ; ++m)
  {
    v23 = a3[23];
    if ((v23 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (m >= v23)
    {
      goto LABEL_44;
    }

LABEL_42:
    v22 = a3;
    if ((v23 & 0x80000000) != 0)
    {
      v22 = *a3;
      v24 = *a3;
    }

    else
    {
      v24 = a3;
    }

    v24[m] = v22[m];
  }

  if (m < *(a3 + 1))
  {
    goto LABEL_42;
  }

LABEL_44:
  v25 = v4[23];
  if (v25 < 0)
  {
    v26 = v4;
    v4 = *v4;
    v25 = *(v26 + 1);
  }

  sub_271380738(a1 + 16, v4, &v4[v25]);
  v27 = v3[23];
  if (v27 < 0)
  {
    v28 = v3;
    v3 = *v3;
    v27 = *(v28 + 1);
  }

  sub_271380738(a1 + 16, v3, &v3[v27]);
  *v39 = *v37;
  v40 = v38;
  *__p = *v35;
  v42 = v36;
  sub_2713805B0((a1 + 88), v39);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      return;
    }

LABEL_67:
    operator delete(v39[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v40) < 0)
  {
    goto LABEL_67;
  }
}

void sub_2713800D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_27137F5DC(va);
  _Unwind_Resume(a1);
}

void sub_2713800E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  sub_27137F5DC(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_271380124()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 1);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_27138017C(uint64_t a1@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v13 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  v7 = v13;
  if ((v13 & 0x80u) == 0)
  {
    v8 = __dst;
  }

  else
  {
    v8 = __dst[0];
  }

  if ((v13 & 0x80u) != 0)
  {
    v7 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v8, v8 + v7);
  v9 = *(a4 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a4 + 8);
  }

  if (v9 == 1)
  {
    goto LABEL_23;
  }

  if (v9 != 12)
  {
    if (v10 < 0)
    {
      **a4 = 0;
      *(a4 + 8) = 0;
      if ((v13 & 0x80000000) == 0)
      {
        return;
      }

LABEL_26:
      operator delete(__dst[0]);
      return;
    }

    *a4 = 0;
    *(a4 + 23) = 0;
LABEL_23:
    if ((v13 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  v11[11] = v11[3];
  if (v13 < 0)
  {
    goto LABEL_26;
  }
}

void sub_271380320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_27138033C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 2);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_271380394(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 169) != 1)
  {
    v7 = *(a1 + 72);
    v6 = *(a1 + 80);
    if (v7 < v6)
    {
      *v7 = a2;
      *(a1 + 72) = v7 + 1;
      return;
    }

    v8 = *(a1 + 64);
    v13 = (v7 - v8);
    v14 = v7 - v8 + 1;
    if (v14 >= 0)
    {
      v15 = v6 - v8;
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        operator new();
      }

      v19 = v7 - v8;
      *v13 = a2;
      v18 = v13 + 1;
      memcpy(0, v8, v19);
      *(a1 + 64) = 0;
      *(a1 + 72) = v13 + 1;
      *(a1 + 80) = 0;
      if (v8)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

LABEL_26:
    sub_271135560();
  }

  v3 = (*(**(a1 + 24) + 40))(*(a1 + 24), a2);
  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v5 < v4)
  {
    *v5 = v3;
    *(a1 + 72) = v5 + 1;
    return;
  }

  v8 = *(a1 + 64);
  v9 = (v5 - v8);
  v10 = v5 - v8 + 1;
  if (v10 < 0)
  {
    goto LABEL_26;
  }

  v11 = v4 - v8;
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    operator new();
  }

  v17 = v5 - v8;
  *v9 = v3;
  v18 = v9 + 1;
  memcpy(0, v8, v17);
  *(a1 + 64) = 0;
  *(a1 + 72) = v9 + 1;
  *(a1 + 80) = 0;
  if (v8)
  {
LABEL_23:
    operator delete(v8);
    *(a1 + 72) = v18;
    return;
  }

LABEL_25:
  *(a1 + 72) = v18;
}

void sub_2713805B0(void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    v7 = v3 + 48;
LABEL_3:
    a1[1] = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
  v9 = v8 + 1;
  if (v8 + 1 > 0x555555555555555)
  {
    sub_27137CD78();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x2AAAAAAAAAAAAAALL)
  {
    v11 = 0x555555555555555;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x555555555555555)
    {
      operator new();
    }

    sub_2711270EC();
  }

  v12 = 48 * v8;
  *v12 = *a2;
  *(v12 + 16) = *(a2 + 2);
  *a2 = 0uLL;
  v13 = *(a2 + 24);
  a2[1] = 0uLL;
  *(v12 + 40) = *(a2 + 5);
  a2[2] = 0uLL;
  v7 = (48 * v8 + 48);
  v14 = *a1;
  v15 = a1[1] - *a1;
  *(v12 + 24) = v13;
  v16 = (v12 - v15);
  memcpy((v12 - v15), v14, v15);
  *a1 = v16;
  a1[1] = v7;
  a1[2] = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  a1[1] = v7;
}

void sub_271380738(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v3 = a3 - a2;
  if ((a3 - a2) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v3 > 0x16)
  {
    operator new();
  }

  v8 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v3);
  }

  *(__dst + v3) = 0;
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __dst;
  }

  else
  {
    v6 = __dst[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __dst[1];
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_271380878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271380894()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 9);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_2713808EC(uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 1;
  if (v7 >> 1 <= -2)
  {
    sub_27137CD78();
  }

  v9 = v3 - v6;
  if (v9 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFFELL)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2711270EC();
  }

  *(2 * v8) = *a2;
  v5 = 2 * v8 + 2;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void *sub_2713809FC(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_271380A70(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271380B00(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_271380B30(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_271380BA4(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271380C34(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_271380DFC()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 8);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void sub_271380E54()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 7);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_271380EAC(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_271380F60(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271381034(uint64_t result, uint64_t a2)
{
  v2 = (*(a2 + 56) + 16 * *(result + 40));
  if (*a2 != -991)
  {
    *v2 = 0;
    if (!*(result + 32))
    {
      *a2 = -994;
      goto LABEL_28;
    }

    if (*(result + 24))
    {
      *a2 = -994;
      *(a2 + 80) = *(result + 8);
      v2[1] = *(a2 + 16);
      v18 = *(result + 44);
      v19 = *(result + 48);
      if (v18 == v19)
      {
        return result;
      }

      v20 = (v19 - 1);
      v21 = (v18 - 1);
      v22 = *(a2 + 24);
      v23 = *(a2 + 32);
      v24 = v20 - v21;
      if ((v20 - v21) >= 2)
      {
        v25 = (v24 & 0xFFFFFFFFFFFFFFFELL) + v21;
        v26 = v23 + 24 * v21 + 24;
        v27 = v24 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          *(v26 - 24) = v22;
          *(v26 - 16) = v22;
          *v26 = v22;
          *(v26 + 8) = v22;
          *(v26 - 8) = 0;
          *(v26 + 16) = 0;
          v26 += 48;
          v27 -= 2;
        }

        while (v27);
        if (v24 == (v24 & 0xFFFFFFFFFFFFFFFELL))
        {
          return result;
        }
      }

      else
      {
        v25 = v21;
      }

      v28 = v20 - v25;
      v29 = (v23 + 24 * v25 + 16);
      do
      {
        *(v29 - 2) = v22;
        *(v29 - 1) = v22;
        *v29 = 0;
        v29 += 24;
        --v28;
      }

      while (v28);
      return result;
    }

LABEL_26:
    *a2 = -992;
    return result;
  }

  v3 = *v2 + 1;
  *v2 = v3;
  v4 = *(result + 24);
  v5 = *(result + 32);
  v6 = v3 < v5;
  if (v3 < v5 && v3 >= v4)
  {
    v6 = v3 < v5 && v2[1] != *(a2 + 16);
  }

  if (v6 && v3 >= v4)
  {
    goto LABEL_26;
  }

  *a2 = -994;
  if (!v6)
  {
LABEL_28:
    *(a2 + 80) = *(result + 16);
    return result;
  }

  *(a2 + 80) = *(result + 8);
  v2[1] = *(a2 + 16);
  v10 = *(result + 44);
  v11 = *(result + 48);
  if (v10 == v11)
  {
    return result;
  }

  v12 = (v11 - 1);
  v13 = (v10 - 1);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = v12 - v13;
  if ((v12 - v13) < 2)
  {
    v17 = v13;
LABEL_39:
    v32 = v12 - v17;
    v33 = (v15 + 24 * v17 + 16);
    do
    {
      *(v33 - 2) = v14;
      *(v33 - 1) = v14;
      *v33 = 0;
      v33 += 24;
      --v32;
    }

    while (v32);
    return result;
  }

  v17 = (v16 & 0xFFFFFFFFFFFFFFFELL) + v13;
  v30 = v15 + 24 * v13 + 24;
  v31 = v16 & 0xFFFFFFFFFFFFFFFELL;
  do
  {
    *(v30 - 24) = v14;
    *(v30 - 16) = v14;
    *v30 = v14;
    *(v30 + 8) = v14;
    *(v30 - 8) = 0;
    *(v30 + 16) = 0;
    v30 += 48;
    v31 -= 2;
  }

  while (v31);
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFELL))
  {
    goto LABEL_39;
  }

  return result;
}

uint64_t sub_27138120C(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    *(a3 + 80) = *(result + 16);
    return result;
  }

  *(a3 + 80) = *(result + 8);
  v3 = *(result + 44);
  *(*(a3 + 56) + 16 * *(result + 40) + 8) = *(a3 + 16);
  v4 = *(result + 48);
  if (v3 != v4)
  {
    v5 = (v4 - 1);
    v6 = (v3 - 1);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v9 = v5 - v6;
    if ((v5 - v6) < 2)
    {
      v10 = v6;
LABEL_9:
      v13 = v5 - v10;
      v14 = (v8 + 24 * v10 + 16);
      do
      {
        *(v14 - 2) = v7;
        *(v14 - 1) = v7;
        *v14 = 0;
        v14 += 24;
        --v13;
      }

      while (v13);
      return result;
    }

    v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + v6;
    v11 = v8 + 24 * v6 + 24;
    v12 = v9 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 24) = v7;
      *(v11 - 16) = v7;
      *v11 = v7;
      *(v11 + 8) = v7;
      *(v11 - 8) = 0;
      *(v11 + 16) = 0;
      v11 += 48;
      v12 -= 2;
    }

    while (v12);
    if (v9 != (v9 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_2713812D4(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_271381388(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271381474(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

void *sub_271381488(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_27138153C(void *a1)
{
  *a1 = &unk_288106FF8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *a1 = &unk_288107028;
  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_27138161C(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

uint64_t sub_271381658(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

void sub_27138166C()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x2743BE550](exception, 15);
  __cxa_throw(exception, MEMORY[0x277D82700], MEMORY[0x277D82628]);
}

void *sub_2713816C4(void *result)
{
  *result = &unk_288107028;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void sub_271381738(void *a1)
{
  *a1 = &unk_288107028;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713817C8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) || !*v2)
  {
    *a2 = -993;
    *(a2 + 80) = 0;
  }

  else
  {
    *a2 = -995;
    *(a2 + 16) = v2 + 1;
    *(a2 + 80) = *(result + 8);
  }

  return result;
}

uint64_t sub_271381808(uint64_t a1, unsigned __int8 a2)
{
  if (((a2 & 0xF8) == 0x30 || (a2 & 0xFE) == 0x38) && a2 - 49 <= 8)
  {
    if (a2 - 48 <= *(a1 + 28))
    {
      sub_27137DB6C(a1, a2 - 48);
    }

    sub_27137DB14();
  }

  return 0;
}

uint64_t sub_27138186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  *(a4 + 24) = a3;
  v11 = (a4 + 24);
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  sub_27137CB94(a4, (v10 + 1), (a4 + 24));
  *(a4 + 48) = a2;
  *(a4 + 56) = a2;
  *(a4 + 64) = 0;
  *(a4 + 72) = *v11;
  *(a4 + 88) = *(a4 + 40);
  if ((v9 & 0x800) == 0)
  {
    *(a4 + 104) = a2;
  }

  *(a4 + 96) = 1;
  if ((*(a1 + 24) & 0x1F0) == 0)
  {
    if (sub_27137C6D4(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  if (*(a1 + 28))
  {
    if (sub_271382478(a1, a2, a3, a4, v9, (v9 & 0x800) == 0))
    {
      goto LABEL_28;
    }

LABEL_13:
    if (a2 != a3 && (v9 & 0x40) == 0)
    {
      for (i = a2 + 1; i != a3; ++i)
      {
        sub_27137CB94(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
        if ((*(a1 + 24) & 0x1F0) != 0)
        {
          if (*(a1 + 28))
          {
            if (sub_271382478(a1, i, a3, a4, v9 | 0x80, 0))
            {
              goto LABEL_28;
            }
          }

          else if (sub_271381B78(a1, i, a3, a4, v9 | 0x80, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_27137C6D4(a1, i, a3, a4, v9 | 0x80, 0))
        {
          goto LABEL_28;
        }

        sub_27137CB94(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      }

      sub_27137CB94(a4, 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 8) - *a4) >> 3), v11);
      if ((*(a1 + 24) & 0x1F0) != 0)
      {
        if (*(a1 + 28))
        {
          if (sub_271382478(a1, i, a3, a4, v9 | 0x80, 0))
          {
            goto LABEL_28;
          }
        }

        else if (sub_271381B78(a1, i, a3, a4, v9 | 0x80, 0))
        {
          goto LABEL_28;
        }
      }

      else if (sub_27137C6D4(a1, i, a3, a4, v9 | 0x80, 0))
      {
        goto LABEL_28;
      }
    }

    result = 0;
    *(a4 + 8) = *a4;
    return result;
  }

  if ((sub_271381B78(a1, a2, a3, a4, v9, (v9 & 0x800) == 0) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_28:
  if (*(a4 + 8) == *a4)
  {
    v13 = v11;
  }

  else
  {
    v13 = *a4;
  }

  v14 = *v13;
  *(a4 + 56) = *v13;
  *(a4 + 64) = *(a4 + 48) != v14;
  v15 = v13[1];
  *(a4 + 72) = v15;
  *(a4 + 88) = v15 != *(a4 + 80);
  return 1;
}

uint64_t sub_271381B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v82 = 0u;
  v83 = 0u;
  v81 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
    goto LABEL_93;
  }

  *v78 = 0;
  memset(&v78[8], 0, 48);
  *__p = 0uLL;
  memset(v80, 0, 21);
  sub_271382BE0(&v81);
  v12 = *(*(&v81 + 1) + 8 * ((v83.i64[0] + v83.i64[1]) / 0x2AuLL)) + 96 * ((v83.i64[0] + v83.i64[1]) % 0x2AuLL);
  v13 = *&v78[16];
  *v12 = *v78;
  *(v12 + 16) = v13;
  *(v12 + 40) = 0;
  *(v12 + 48) = 0;
  *(v12 + 32) = 0;
  memset(&v78[32], 0, 24);
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  __p[0] = 0;
  __p[1] = 0;
  v80[0] = 0;
  v14 = v80[1];
  *(v12 + 85) = *(&v80[1] + 5);
  *(v12 + 80) = v14;
  v16 = v83.i64[1];
  v15 = v83.i64[0];
  v17 = ++v83.i64[1];
  v18 = *(&v81 + 1);
  v19 = *(a1 + 32);
  v20 = *(*(&v81 + 1) + 8 * ((v83.i64[0] + v16) / 0x2AuLL)) + 96 * ((v83.i64[0] + v16) % 0x2AuLL);
  *v20 = 0;
  *(v20 + 8) = a2;
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  v21 = *(v20 + 56);
  v22 = (*(v20 + 64) - v21) >> 4;
  v74 = a4;
  if (v19 <= v22)
  {
    if (v19 < v22)
    {
      *(v20 + 64) = v21 + 16 * v19;
    }
  }

  else
  {
    sub_27137D400(v20 + 56, v19 - v22);
    v17 = v83.i64[1];
    v15 = v83.i64[0];
    v18 = *(&v81 + 1);
  }

  v76 = 0;
  v23 = 0;
  v24 = 0;
  v25 = *(v18 + 8 * ((v15 + v17 - 1) / 0x2AuLL)) + 96 * ((v15 + v17 - 1) % 0x2AuLL);
  *(v25 + 80) = v6;
  *(v25 + 92) = a6;
  v75 = a3;
  v26 = a3 - a2;
  *(v25 + 88) = a5;
  do
  {
    if ((++v23 & 0xFFF) == 0 && (v23 >> 12) >= v26)
    {
      sub_27137CDD4();
    }

    v28 = *(*(&v81 + 1) + 8 * ((v17 + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v17 + v83.i64[0] - 1) % 0x2AuLL);
    v29 = *(v28 + 80);
    if (v29)
    {
      (*(*v29 + 16))(v29, v28);
    }

    v30 = *v28;
    if (*v28 <= -995)
    {
      if (v30 != -1000)
      {
        if (v30 == -999)
        {
          goto LABEL_9;
        }

        if (v30 != -995)
        {
LABEL_107:
          sub_27137CE2C();
        }

        v31 = v83.i64[0];
        if (!v83.i64[0])
        {
          sub_2713832C4(&v81);
          v31 = v83.i64[0];
        }

        v32 = (*(&v81 + 1) + 8 * (v31 / 0x2A));
        v33 = *v32 + 96 * (v31 % 0x2A);
        if (v82 == *(&v81 + 1))
        {
          v33 = 0;
        }

        if (v33 == *v32)
        {
          v33 = *(v32 - 1) + 4032;
        }

        v34 = *(v28 + 16);
        *(v33 - 96) = *v28;
        *(v33 - 80) = v34;
        *(v33 - 56) = 0;
        *(v33 - 48) = 0;
        *(v33 - 64) = 0;
        *(v33 - 64) = *(v28 + 32);
        *(v33 - 48) = *(v28 + 48);
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 0;
        *(v33 - 40) = 0;
        *(v33 - 32) = 0;
        *(v33 - 24) = 0;
        *(v33 - 40) = *(v28 + 56);
        *(v33 - 24) = *(v28 + 72);
        *(v28 + 56) = 0;
        *(v28 + 64) = 0;
        *(v28 + 72) = 0;
        v35 = *(v28 + 80);
        *(v33 - 11) = *(v28 + 85);
        *(v33 - 16) = v35;
        v36 = vdupq_laneq_s64(v83, 1);
        v83 = vaddq_s64(v83, xmmword_27188D260);
        v36.i64[0] = vaddq_s64(v36, v83).u64[0];
        v37 = (*(*(&v81 + 1) + 8 * (v36.i64[0] / 0x2AuLL)) + 96 * (v36.i64[0] % 0x2AuLL));
        v38 = v37[7];
        if (!v38)
        {
          goto LABEL_39;
        }

LABEL_38:
        v37[8] = v38;
        operator delete(v38);
LABEL_39:
        v40 = v37[4];
        if (v40)
        {
          v37[5] = v40;
          operator delete(v40);
        }

        v41 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
        v42 = v83;
        --v83.i64[1];
        if (v82 == *(&v81 + 1))
        {
          v41 = 0;
        }

        if ((v41 - (v42.i64[1] + v42.i64[0]) + 1) >= 0x54)
        {
          operator delete(*(v82 - 8));
          *&v82 = v82 - 8;
        }

        goto LABEL_9;
      }

      v39 = *(v28 + 16);
      if ((a5 & 0x20) != 0 && v39 == a2 || (a5 & 0x1000) != 0 && v39 != v75)
      {
        goto LABEL_37;
      }

      v49 = v39 - *(v28 + 8);
      if (v24 <= v49)
      {
        v50 = v49;
      }

      else
      {
        v50 = v24;
      }

      if (v76)
      {
        v24 = v50;
      }

      else
      {
        v24 = v49;
      }

      if (v24 == v26)
      {
        v51 = *(&v81 + 1);
        v52 = v82;
        if (v82 == *(&v81 + 1))
        {
          v83.i64[1] = 0;
          v64 = 0;
        }

        else
        {
          v53 = (*(&v81 + 1) + 8 * (v83.i64[0] / 0x2AuLL));
          v54 = (*v53 + 96 * (v83.i64[0] % 0x2AuLL));
          v55 = *(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0]) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0]) % 0x2AuLL);
          if (v54 != v55)
          {
            do
            {
              v56 = v54[7];
              if (v56)
              {
                v54[8] = v56;
                operator delete(v56);
              }

              v57 = v54[4];
              if (v57)
              {
                v54[5] = v57;
                operator delete(v57);
              }

              v54 += 12;
              if ((v54 - *v53) == 4032)
              {
                v58 = v53[1];
                ++v53;
                v54 = v58;
              }
            }

            while (v54 != v55);
            v51 = *(&v81 + 1);
            v52 = v82;
          }

          v83.i64[1] = 0;
          v64 = (v52 - v51) >> 3;
          if (v64 >= 3)
          {
            do
            {
              operator delete(*v51);
              v51 = (*(&v81 + 1) + 8);
              *(&v81 + 1) = v51;
              v64 = (v82 - v51) >> 3;
            }

            while (v64 > 2);
          }
        }

        if (v64 == 1)
        {
          v65 = 21;
LABEL_88:
          v83.i64[0] = v65;
        }

        else if (v64 == 2)
        {
          v65 = 42;
          goto LABEL_88;
        }

        v76 = 1;
        v24 = v26;
        goto LABEL_9;
      }

      v59 = (*(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0] - 1) % 0x2AuLL));
      v60 = v59[7];
      if (v60)
      {
        v59[8] = v60;
        operator delete(v60);
      }

      v61 = v59[4];
      if (v61)
      {
        v59[5] = v61;
        operator delete(v61);
      }

      v62 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
      v63 = v83;
      --v83.i64[1];
      if (v82 == *(&v81 + 1))
      {
        v62 = 0;
      }

      if ((v62 - (v63.i64[1] + v63.i64[0]) + 1) >= 0x54)
      {
        operator delete(*(v82 - 8));
        *&v82 = v82 - 8;
      }

      v76 = 1;
    }

    else
    {
      if (v30 <= -993)
      {
        if (v30 == -994)
        {
          goto LABEL_9;
        }

        if (v30 != -993)
        {
          goto LABEL_107;
        }

LABEL_37:
        v37 = (*(*(&v81 + 1) + 8 * ((v83.i64[1] + v83.i64[0] - 1) / 0x2AuLL)) + 96 * ((v83.i64[1] + v83.i64[0] - 1) % 0x2AuLL));
        v38 = v37[7];
        if (v38)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v30 == -992)
      {
        sub_27137D554(v78, v28);
        (*(**(v28 + 80) + 24))(*(v28 + 80), 1, v28);
        (*(*v80[1] + 24))(v80[1], 0, v78);
        v43 = *(&v81 + 1);
        if (v82 == *(&v81 + 1))
        {
          v44 = 0;
        }

        else
        {
          v44 = 42 * ((v82 - *(&v81 + 1)) >> 3) - 1;
        }

        v45 = v83.i64[1] + v83.i64[0];
        if (v44 == v83.i64[1] + v83.i64[0])
        {
          sub_271382BE0(&v81);
          v43 = *(&v81 + 1);
          v45 = v83.i64[1] + v83.i64[0];
        }

        v46 = *(v43 + 8 * (v45 / 0x2A)) + 96 * (v45 % 0x2A);
        v47 = *&v78[16];
        *v46 = *v78;
        *(v46 + 16) = v47;
        *(v46 + 40) = 0;
        *(v46 + 48) = 0;
        *(v46 + 32) = 0;
        *(v46 + 32) = *&v78[32];
        *(v46 + 48) = *&v78[48];
        memset(&v78[32], 0, 24);
        *(v46 + 56) = 0;
        *(v46 + 64) = 0;
        *(v46 + 72) = 0;
        *(v46 + 56) = *__p;
        *(v46 + 72) = v80[0];
        __p[0] = 0;
        __p[1] = 0;
        v80[0] = 0;
        v48 = v80[1];
        *(v46 + 85) = *(&v80[1] + 5);
        *(v46 + 80) = v48;
        ++v83.i64[1];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (*&v78[32])
        {
          *&v78[40] = *&v78[32];
          operator delete(*&v78[32]);
        }
      }

      else if (v30 != -991)
      {
        goto LABEL_107;
      }
    }

LABEL_9:
    v17 = v83.i64[1];
  }

  while (v83.i64[1]);
  if (v76)
  {
    v66 = *v74;
    *v66 = a2;
    *(v66 + 8) = a2 + v24;
    v67 = 1;
    *(v66 + 16) = 1;
    v68 = *(&v81 + 1);
    v69 = v82;
    v83.i64[1] = 0;
    v70 = (v82 - *(&v81 + 1)) >> 3;
    if (v70 < 3)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

LABEL_93:
  v67 = 0;
  v68 = *(&v81 + 1);
  v69 = v82;
  v83.i64[1] = 0;
  v70 = (v82 - *(&v81 + 1)) >> 3;
  if (v70 < 3)
  {
    goto LABEL_95;
  }

  do
  {
LABEL_94:
    operator delete(*v68);
    v69 = v82;
    v68 = (*(&v81 + 1) + 8);
    *(&v81 + 1) = v68;
    v70 = (v82 - v68) >> 3;
  }

  while (v70 > 2);
LABEL_95:
  if (v70 == 1)
  {
    v71 = 21;
LABEL_99:
    v83.i64[0] = v71;
  }

  else if (v70 == 2)
  {
    v71 = 42;
    goto LABEL_99;
  }

  if (v68 != v69)
  {
    do
    {
      v72 = *v68++;
      operator delete(v72);
    }

    while (v68 != v69);
    if (v82 != *(&v81 + 1))
    {
      *&v82 = v82 + ((*(&v81 + 1) - v82 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (v81)
  {
    operator delete(v81);
  }

  return v67;
}

void sub_271382408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_27137CD90(va);
  sub_2713836BC((v16 - 144));
  _Unwind_Resume(a1);
}

uint64_t sub_271382478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v69 = 0;
  v70 = 0;
  v71 = 0;
  *v66 = 0;
  memset(&v66[8], 0, 32);
  v67 = 0u;
  memset(v68, 0, 37);
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_69:
    v50 = 0;
    v51 = v68[0];
    if (!v68[0])
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  *&v64 = a3;
  *(&v64 + 1) = a3;
  v65 = 0;
  *v61 = 0;
  memset(&v61[8], 0, 48);
  *__p = 0uLL;
  memset(v63, 0, 21);
  v70 = sub_27137CF08(&v69, v61);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (*&v61[32])
  {
    *&v61[40] = *&v61[32];
    operator delete(*&v61[32]);
  }

  v13 = v70;
  *(v70 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  v14 = *(v13 - 8);
  v15 = *(a1 + 28);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - v14) >> 3);
  if (v15 <= v16)
  {
    if (v15 < v16)
    {
      *(v13 - 7) = v14 + 24 * v15;
    }
  }

  else
  {
    sub_27137D234(v13 - 8, v15 - v16, &v64);
    v13 = v70;
  }

  v17 = *(v13 - 5);
  v18 = *(a1 + 32);
  v19 = (*(v13 - 4) - v17) >> 4;
  v58 = a4;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(v13 - 4) = v17 + 16 * v18;
    }
  }

  else
  {
    sub_27137D400(v13 - 40, v18 - v19);
    v13 = v70;
  }

  v20 = 0;
  v60 = 0;
  v21 = 0;
  *(v13 - 2) = v6;
  v59 = a3;
  v22 = a3 - a2;
  *(v13 - 2) = a5;
  *(v13 - 4) = a6;
  do
  {
    v23 = (++v21 & 0xFFF) != 0 || (v21 >> 12) < v22;
    if (!v23)
    {
      sub_27137CDD4();
    }

    v25 = v13 - 1;
    v24 = *(v13 - 2);
    v26 = v13 - 6;
    if (v24)
    {
      (*(*v24 + 16))(v24, v13 - 6);
    }

    v27 = *v26;
    if (*v26 <= -994)
    {
      if ((v27 + 995) < 2)
      {
        goto LABEL_16;
      }

      if (v27 != -1000)
      {
LABEL_84:
        sub_27137CE2C();
      }

      v28 = *(v13 - 10);
      if ((a5 & 0x20) != 0 && v28 == a2 || (a5 & 0x1000) != 0 && v28 != v59)
      {
LABEL_34:
        v29 = v70;
        v30 = *(v70 - 5);
        if (v30)
        {
          *(v70 - 4) = v30;
          operator delete(v30);
        }

        v31 = *(v29 - 8);
        if (v31)
        {
          *(v29 - 7) = v31;
          operator delete(v31);
        }

        v70 = v29 - 6;
        goto LABEL_16;
      }

      v35 = v28 - *(v13 - 11);
      if ((v60 & (v20 >= v35)) == 0)
      {
        v36 = *v26;
        *&v66[16] = *(v13 - 5);
        *v66 = v36;
        if (v66 != v26)
        {
          sub_271383734(&v66[32], *(v13 - 8), *(v13 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v13 - 7) - *(v13 - 8)) >> 3));
          sub_27138394C(v68, *(v13 - 5), *(v13 - 4), (*(v13 - 4) - *(v13 - 5)) >> 4);
        }

        v37 = *v25;
        *(&v68[3] + 5) = *(v13 - 11);
        v68[3] = v37;
        v20 = v35;
      }

      v38 = v70;
      if (v20 == v22)
      {
        v39 = v69;
        while (v38 != v39)
        {
          v40 = *(v38 - 5);
          if (v40)
          {
            *(v38 - 4) = v40;
            operator delete(v40);
          }

          v41 = *(v38 - 8);
          if (v41)
          {
            *(v38 - 7) = v41;
            operator delete(v41);
          }

          v38 -= 6;
        }

        v70 = v39;
        v60 = 1;
        v20 = v22;
      }

      else
      {
        v42 = *(v70 - 5);
        if (v42)
        {
          *(v70 - 4) = v42;
          operator delete(v42);
        }

        v43 = *(v38 - 8);
        if (v43)
        {
          *(v38 - 7) = v43;
          operator delete(v43);
        }

        v70 = v38 - 6;
        v60 = 1;
      }
    }

    else
    {
      switch(v27)
      {
        case -993:
          goto LABEL_34;
        case -992:
          sub_27137D554(v61, v13 - 6);
          (*(**v25 + 24))(*v25, 1, v13 - 6);
          (*(*v63[1] + 24))(v63[1], 0, v61);
          v32 = v70;
          if (v70 >= v71)
          {
            v70 = sub_27137CF08(&v69, v61);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }
          }

          else
          {
            v33 = *&v61[16];
            *v70 = *v61;
            v32[1] = v33;
            *(v32 + 6) = 0;
            *(v32 + 7) = 0;
            *(v32 + 4) = 0;
            *(v32 + 5) = 0;
            v32[2] = *&v61[32];
            *(v32 + 6) = *&v61[48];
            *&v61[32] = 0;
            *&v61[40] = 0;
            *(v32 + 8) = 0;
            *(v32 + 9) = 0;
            *(v32 + 56) = *__p;
            *(v32 + 9) = v63[0];
            *&v61[48] = 0;
            __p[0] = 0;
            __p[1] = 0;
            v63[0] = 0;
            v34 = v63[1];
            *(v32 + 85) = *(&v63[1] + 5);
            *(v32 + 10) = v34;
            v70 = v32 + 6;
          }

          if (*&v61[32])
          {
            *&v61[40] = *&v61[32];
            operator delete(*&v61[32]);
          }

          break;
        case -991:
          break;
        default:
          goto LABEL_84;
      }
    }

LABEL_16:
    v13 = v70;
  }

  while (v69 != v70);
  if ((v60 & 1) == 0)
  {
    goto LABEL_69;
  }

  v44 = *v58;
  *v44 = a2;
  *(v44 + 8) = a2 + v20;
  *(v44 + 16) = 1;
  if (v67 != *&v66[32])
  {
    v45 = 0xAAAAAAAAAAAAAAABLL * ((v67 - *&v66[32]) >> 3);
    v46 = (*&v66[32] + 16);
    v47 = 1;
    do
    {
      v48 = v44 + 24 * v47;
      *v48 = *(v46 - 1);
      v49 = *v46;
      v46 += 24;
      *(v48 + 16) = v49;
      v23 = v45 > v47++;
    }

    while (v23);
  }

  v50 = 1;
  v51 = v68[0];
  if (v68[0])
  {
LABEL_70:
    v68[1] = v51;
    operator delete(v51);
  }

LABEL_71:
  if (*&v66[32])
  {
    *&v67 = *&v66[32];
    operator delete(*&v66[32]);
  }

  v52 = v69;
  if (v69)
  {
    v53 = v70;
    v54 = v69;
    if (v70 != v69)
    {
      do
      {
        v55 = *(v53 - 5);
        if (v55)
        {
          *(v53 - 4) = v55;
          operator delete(v55);
        }

        v56 = *(v53 - 8);
        if (v56)
        {
          *(v53 - 7) = v56;
          operator delete(v56);
        }

        v53 -= 6;
      }

      while (v53 != v52);
      v54 = v69;
    }

    v70 = v52;
    operator delete(v54);
  }

  return v50;
}

void sub_271382A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_27137CD90(&a27);
  sub_27137CE84((v27 - 120));
  _Unwind_Resume(a1);
}

void sub_271382A80(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 / 0x2A];
    v6 = *v5 + 96 * (v4 % 0x2A);
    v7 = v2[(a1[5] + v4) / 0x2A] + 96 * ((a1[5] + v4) % 0x2A);
    if (v6 != v7)
    {
      do
      {
        v8 = *(v6 + 7);
        if (v8)
        {
          *(v6 + 8) = v8;
          operator delete(v8);
        }

        v9 = *(v6 + 4);
        if (v9)
        {
          *(v6 + 5) = v9;
          operator delete(v9);
        }

        v6 += 96;
        if (v6 - *v5 == 4032)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
        }
      }

      while (v6 != v7);
      v2 = a1[1];
      v3 = a1[2];
    }

    a1[5] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v12 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v11 = (v12 - v2) >> 3;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v13 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      return;
    }

    v13 = 42;
  }

  a1[4] = v13;
}

void sub_271382BE0(void **a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v6 = a1[2];
    v5 = a1[3];
    v7 = v5 - *a1;
    if (v6 - a1[1] < v7)
    {
      if (v5 != v6)
      {
        operator new();
      }

      operator new();
    }

    v8 = v7 >> 2;
    if (v5 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  sub_271382FA0(a1, &v10);
}

void sub_271382F48(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_271382FA0(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      v11 = &v4[-*a1] >> 2;
      if (v4 == *a1)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  a1[2] = (v4 + 8);
}

void sub_27138312C(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_2711270EC();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = (v5 - 8);
}

void sub_2713832C4(const void **a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v1) >> 3) - 1;
  }

  v5 = a1[4];
  if ((v4 - (a1[5] + v5)) < 0x2A)
  {
    v6 = a1[3];
    v7 = *a1;
    v8 = v6 - *a1;
    if (v3 < v8)
    {
      if (v1 != v7)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_2711270EC();
  }

  a1[4] = (v5 + 42);
  v10 = *(v2 - 8);
  a1[2] = (v2 - 8);
  sub_27138312C(a1, &v10);
}

void sub_271383680(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void **sub_2713836BC(void **a1)
{
  sub_271382A80(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_271383734(char **a1, char *a2, char *a3, unint64_t a4)
{
  v4 = a2;
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }
    }

    sub_27137CD78();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v4 != a3)
    {
      *result = *v4;
      result[16] = v4[16];
      v4 += 24;
      result += 24;
    }

    a1[1] = result;
  }

  else
  {
    if (v12 != result)
    {
      v13 = &a2[v12 - result];
      do
      {
        *result = *v4;
        result[16] = v4[16];
        v4 += 24;
        result += 24;
      }

      while (v4 != v13);
      v4 = v13;
    }

    if (v4 == a3)
    {
      a1[1] = v12;
    }

    else
    {
      v14 = v12;
      do
      {
        v15 = *v4;
        *(v12 + 2) = *(v4 + 2);
        *v12 = v15;
        v12 += 24;
        v4 += 24;
        v14 += 24;
      }

      while (v4 != a3);
      a1[1] = v14;
    }
  }

  return result;
}

char *sub_27138394C(char **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a2;
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v30 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v10 = 0xFFFFFFFFFFFFFFFLL;
      if (!v30)
      {
        v10 = v9;
      }

      if (!(v10 >> 60))
      {
        operator new();
      }
    }

    sub_27137CD78();
  }

  v11 = a1[1];
  if (a4 > (v11 - result) >> 4)
  {
    if (v11 == result)
    {
      goto LABEL_17;
    }

    v12 = v11 - result - 16;
    if (v12 < 0xF0 || ((v26 = v12 & 0xFFFFFFFFFFFFFFF0 | 8, v27 = &result[v26], v28 = a2 + v26, v29 = (v12 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < a2 + v29) ? (v30 = a2 + 1 >= &result[v29]) : (v30 = 1), v30 ? (v31 = 0) : (v31 = 1), v27 > a2 ? (v32 = result >= v28) : (v32 = 1), !v32 || (v31 & 1) != 0))
    {
      v13 = result;
      v14 = a2;
    }

    else
    {
      v33 = (v12 >> 4) + 1;
      v34 = 2 * (v33 & 0x1FFFFFFFFFFFFFFCLL);
      v13 = &result[v34 * 8];
      v14 = &a2[v34];
      v35 = (a2 + 4);
      v36 = result + 32;
      v37 = v33 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v39 = *(v35 - 2);
        v38 = *(v35 - 1);
        v41 = *v35;
        v40 = v35[1];
        v35 += 4;
        *(v36 - 2) = v39;
        *(v36 - 1) = v38;
        *v36 = v41;
        *(v36 + 1) = v40;
        v36 += 64;
        v37 -= 4;
      }

      while (v37);
      if (v33 == (v33 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_16;
      }
    }

    do
    {
      v15 = *v14;
      v16 = v14[1];
      v14 += 2;
      *v13 = v15;
      *(v13 + 1) = v16;
      v13 += 16;
    }

    while (v14 != (a2 + v11 - result));
LABEL_16:
    v4 = (a2 + v11 - result);
LABEL_17:
    if (v4 != a3)
    {
      v17 = a3 - v4 - 16;
      if (v17 < 0xF0 || ((v42 = v17 & 0xFFFFFFFFFFFFFFF0 | 8, v43 = &v11[v42], v44 = v4 + v42, v45 = (v17 & 0xFFFFFFFFFFFFFFF0) + 16, v11 + 8 < v4 + v45) ? (v46 = v4 + 1 >= &v11[v45]) : (v46 = 1), v46 ? (v47 = 0) : (v47 = 1), v4 < v43 ? (v48 = v11 >= v44) : (v48 = 1), !v48 || (v47 & 1) != 0))
      {
        v18 = v4;
        v19 = v11;
      }

      else
      {
        v49 = (v17 >> 4) + 1;
        v50 = 2 * (v49 & 0x1FFFFFFFFFFFFFFCLL);
        v18 = &v4[v50];
        v19 = &v11[v50 * 8];
        v51 = v11 + 32;
        v52 = (v4 + 4);
        v53 = v49 & 0x1FFFFFFFFFFFFFFCLL;
        do
        {
          v55 = *(v52 - 2);
          v54 = *(v52 - 1);
          v57 = *v52;
          v56 = v52[1];
          v52 += 4;
          *(v51 - 2) = v55;
          *(v51 - 1) = v54;
          *v51 = v57;
          v51[1] = v56;
          v51 += 4;
          v53 -= 4;
        }

        while (v53);
        if (v49 == (v49 & 0x1FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_21;
        }
      }

      do
      {
        v20 = *v18;
        v21 = v18[1];
        v18 += 2;
        *v19 = v20;
        *(v19 + 1) = v21;
        v19 += 16;
      }

      while (v18 != a3);
LABEL_21:
      a1[1] = v19;
      return result;
    }

    goto LABEL_28;
  }

  if (a2 == a3)
  {
    a1[1] = result;
    return result;
  }

  v22 = a3 - a2 - 16;
  if (v22 < 0xF0 || ((v58 = v22 & 0xFFFFFFFFFFFFFFF0 | 8, v59 = &result[v58], v60 = a2 + v58, v61 = (v22 & 0xFFFFFFFFFFFFFFF0) + 16, result + 8 < a2 + v61) ? (v62 = a2 + 1 >= &result[v61]) : (v62 = 1), v62 ? (v63 = 0) : (v63 = 1), v59 > a2 ? (v64 = result >= v60) : (v64 = 1), !v64 || (v63 & 1) != 0))
  {
    v11 = result;
    v23 = a2;
  }

  else
  {
    v65 = (v22 >> 4) + 1;
    v66 = 2 * (v65 & 0x1FFFFFFFFFFFFFFCLL);
    v11 = &result[v66 * 8];
    v23 = &a2[v66];
    v67 = (a2 + 4);
    v68 = result + 32;
    v69 = v65 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v71 = *(v67 - 2);
      v70 = *(v67 - 1);
      v73 = *v67;
      v72 = v67[1];
      v67 += 4;
      *(v68 - 2) = v71;
      *(v68 - 1) = v70;
      *v68 = v73;
      *(v68 + 1) = v72;
      v68 += 64;
      v69 -= 4;
    }

    while (v69);
    if (v65 == (v65 & 0x1FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_28;
    }
  }

  do
  {
    v24 = *v23;
    v25 = v23[1];
    v23 += 2;
    *v11 = v24;
    *(v11 + 1) = v25;
    v11 += 16;
  }

  while (v23 != a3);
LABEL_28:
  a1[1] = v11;
  return result;
}

void sub_271383CEC(uint64_t *a1)
{
  std::mutex::lock((a1 + 3));
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v4 = *(*(*v2 + 8) + 8);
      (*(*v4 + 24))(v4);
      v2 += 8;
    }

    while (v2 != v3);
  }

  std::mutex::unlock((a1 + 3));
}

void sub_271383D8C(void *a1, int a2)
{
  v4 = sub_271121384(a1, 0) + 16;
  if (a2)
  {
    operator new();
  }

  *a1 = &unk_288116B40;
  a1[2] = &unk_288116B70;
  a1[3] = 0;
  a1[4] = 0;
  v5 = a1 + 4;
  a1[5] = 0;
  if (a2)
  {
    std::mutex::lock(&stru_2808786F8);
    if (!qword_28087B7C8 || (v6 = std::__shared_weak_count::lock(qword_28087B7C8)) == 0 || (v7 = qword_28087B7C0, v8 = v6, !qword_28087B7C0))
    {
      operator new();
    }

    std::mutex::unlock(&stru_2808786F8);
    v9 = a1[5];
    a1[4] = v7;
    a1[5] = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *v5;
    v11 = (*v5 + 24);
    std::mutex::lock(v11);
    v13 = *(v10 + 8);
    v12 = *(v10 + 16);
    if (v13 >= v12)
    {
      v15 = *v10;
      v16 = v13 - *v10;
      v17 = (v16 >> 3) + 1;
      if (v17 >> 61)
      {
        sub_271135560();
      }

      v18 = v12 - v15;
      if (v18 >> 2 > v17)
      {
        v17 = v18 >> 2;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v19 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        if (!(v19 >> 61))
        {
          operator new();
        }

        sub_2711270EC();
      }

      v20 = (8 * (v16 >> 3));
      *v20 = v4;
      v14 = v20 + 1;
      memcpy(0, v15, v16);
      *v10 = 0;
      *(v10 + 8) = v14;
      *(v10 + 16) = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v13 = v4;
      v14 = v13 + 1;
    }

    *(v10 + 8) = v14;
    std::mutex::unlock(v11);
  }
}

void sub_27138434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::mutex::unlock(&stru_2808797F8);
  std::mutex::~mutex(v8);
  v11 = *v5;
  if (*v5)
  {
    v7[1].__shared_owners_ = v11;
    operator delete(v11);
  }

  std::__shared_weak_count::~__shared_weak_count(v7);
  operator delete(v12);
  sub_27112F828(va);
  std::mutex::unlock(&stru_2808786F8);
  sub_27112F828(v6);
  sub_27137B3EC(v9);
  nullsub_1();
  _Unwind_Resume(a1);
}

void sub_2713844E8(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::mutex::lock((v2 + 24));
    v4 = *v2;
    v3 = *(v2 + 8);
    if (*v2 != v3)
    {
      v5 = a1 + 2;
      while (*v4 != v5)
      {
        if (++v4 == v3)
        {
          goto LABEL_15;
        }
      }

      if (v4 != v3)
      {
        for (i = v4 + 1; i != v3; ++i)
        {
          if (*i != v5)
          {
            *v4++ = *i;
          }
        }
      }
    }

    if (v4 != v3)
    {
      *(v2 + 8) = v4;
    }

LABEL_15:
    std::mutex::unlock((v2 + 24));
  }

  v7 = a1[5];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[3];
  a1[2] = &unk_288116B20;
  a1[3] = 0;
  if (v8)
  {
    *v8 = &unk_2881166A0;
    v9 = v8[1];
    if (v9)
    {
      v8[1] = 0;
      (*(*v9 + 8))(v9);
      v10 = v8[1];
      v8[1] = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    MEMORY[0x2743BF050](v8, 0xA1C40BD48D6D6);
  }

  nullsub_1();
}

void sub_2713846D8(void *a1)
{
  sub_2713844E8(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271384710(uint64_t a1)
{
  sub_2713844E8((a1 - 16));

  JUMPOUT(0x2743BF050);
}

void *sub_27138475C(void *a1)
{
  *a1 = &unk_2881166A0;
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  return a1;
}

void sub_2713847FC(void *a1)
{
  *a1 = &unk_2881166A0;
  v2 = a1[1];
  if (v2)
  {
    a1[1] = 0;
    (*(*v2 + 8))(v2);
    v3 = a1[1];
    a1[1] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  JUMPOUT(0x2743BF050);
}

void **sub_2713848BC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_271385B10(v3 - 4);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_271384918(uint64_t a1)
{
  __lk.__m_ = (a1 + 40);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    sub_271127178(__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *__p = *(a1 + 16);
    v28 = *(a1 + 32);
  }

  sub_2718088F0(__p, 0);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  while (1)
  {
    v2 = atomic_load((a1 + 156));
    v3 = *(a1 + 144);
    if (v2)
    {
      if (!v3)
      {
        if (__lk.__owns_)
        {
          std::mutex::unlock(__lk.__m_);
        }

        return;
      }

LABEL_14:
      *(a1 + 157) = 1;
      goto LABEL_19;
    }

    if (v3)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v4 = atomic_load((a1 + 156));
      if (v4)
      {
        break;
      }

      std::condition_variable::wait((a1 + 160), &__lk);
      if (*(a1 + 144))
      {
        goto LABEL_14;
      }
    }

    v5 = *(a1 + 144);
    *(a1 + 157) = 1;
    if (v5)
    {
      break;
    }

LABEL_7:
    *(a1 + 157) = 0;
    std::condition_variable::notify_all((a1 + 256));
  }

  while (1)
  {
LABEL_19:
    v6 = *(a1 + 104) + 32 * *(a1 + 128);
    LOBYTE(v23) = 0;
    v24 = 0;
    if (*(v6 + 8) == 1)
    {
      v7 = *v6;
      *v6 = 0;
      v23 = v7;
      v24 = 1;
    }

    LOBYTE(v25.__state_) = 0;
    v26 = 0;
    if (*(v6 + 24) == 1)
    {
      v25.__state_ = *(v6 + 16);
      *(v6 + 16) = 0;
      v26 = 1;
    }

    v30 = 0u;
    v31 = 0u;
    sub_271385C10(v6, &v30);
    if (BYTE8(v31) == 1)
    {
      MEMORY[0x2743BEE30](&v31);
    }

    if (BYTE8(v30) == 1)
    {
      v8 = v30;
      *&v30 = 0;
      if (v8)
      {
        v9 = *(v8 + 32);
        if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
          v10 = *(v8 + 16);
          if (v10)
          {
LABEL_30:
            if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v10->__on_zero_shared)(v10);
              std::__shared_weak_count::__release_weak(v10);
            }
          }
        }

        else
        {
          v10 = *(v8 + 16);
          if (v10)
          {
            goto LABEL_30;
          }
        }

        MEMORY[0x2743BF050](v8, 0x10F0C40B62ED6C6);
      }
    }

    v11 = (*(a1 + 112) - *(a1 + 104)) >> 5;
    v12 = *(a1 + 128) + 1;
    if (v12 < v11)
    {
      v11 = 0;
    }

    *(a1 + 128) = v12 - v11;
    --*(a1 + 144);
    std::condition_variable::notify_all((a1 + 208));
    if (!__lk.__owns_)
    {
      break;
    }

    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    if (v24 != 1)
    {
      goto LABEL_64;
    }

    if (v23)
    {
      if ((atomic_load_explicit(&qword_2808777D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808777D0))
      {
        sub_27112FBC0(&qword_2808777B0);
        __cxa_guard_release(&qword_2808777D0);
      }

      if (byte_2808777C7 >= 0)
      {
        v13 = &qword_2808777B0;
      }

      else
      {
        v13 = qword_2808777B0;
      }

      if (byte_2808777C7 >= 0)
      {
        v14 = byte_2808777C7;
      }

      else
      {
        v14 = unk_2808777B8;
      }

      object = os_log_create(v13, *(v23 + 40));
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      v34 = v14;
      if (v14)
      {
        memmove(&v33, v13, v14);
      }

      *(&v33 + v14) = 0;
      v35 = 1;
      v15 = *(v23 + 48);
      if (v15 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_271120DA8();
      }

      v16 = *(v23 + 40);
      if (v15 >= 0x17)
      {
        operator new();
      }

      v37 = *(v23 + 48);
      if (v15)
      {
        memmove(&v36, v16, v15);
        *(&v36 + v15) = 0;
        v38 = 1;
        v17 = object;
        if (v37 < 0)
        {
          goto LABEL_77;
        }
      }

      else
      {
        LOBYTE(v36) = 0;
        v38 = 1;
        v17 = object;
        if ((v37 & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

LABEL_77:
        operator delete(v36);
      }

LABEL_56:
      if (v35 == 1 && v34 < 0)
      {
        operator delete(v33);
      }

      if (v17)
      {
        os_release(v17);
      }

      os_log_pack_send();
    }

    if (v26 == 1)
    {
      std::promise<void>::set_value(&v25);
    }

LABEL_64:
    if (!__lk.__m_)
    {
      v21 = 1;
      v22 = "unique_lock::lock: references null mutex";
      goto LABEL_90;
    }

    if (__lk.__owns_)
    {
      v21 = 11;
      v22 = "unique_lock::lock: already locked";
      goto LABEL_90;
    }

    std::mutex::lock(__lk.__m_);
    __lk.__owns_ = 1;
    if (v26 == 1)
    {
      MEMORY[0x2743BEE30](&v25);
    }

    if (v24 == 1)
    {
      v18 = v23;
      v23 = 0;
      if (v18)
      {
        v19 = *(v18 + 32);
        if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
          v20 = *(v18 + 16);
          if (v20)
          {
            goto LABEL_73;
          }
        }

        else
        {
          v20 = *(v18 + 16);
          if (v20)
          {
LABEL_73:
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v20->__on_zero_shared)(v20);
              std::__shared_weak_count::__release_weak(v20);
            }
          }
        }

        MEMORY[0x2743BF050](v18, 0x10F0C40B62ED6C6);
      }
    }

    if (!*(a1 + 144))
    {
      goto LABEL_7;
    }
  }

  v21 = 1;
  v22 = "unique_lock::unlock: not locked";
LABEL_90:
  std::__throw_system_error(v21, v22);
  __break(1u);
}

void sub_271384FC0(uint64_t a1)
{
  sub_271385E90(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271384FF8(uint64_t a1)
{
  result = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

void sub_271385014(uint64_t a1)
{
  v2.__m_ = (a1 + 40);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  while ((*(a1 + 157) & 1) != 0 || *(a1 + 144))
  {
    std::condition_variable::wait((a1 + 256), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void sub_271385084(uint64_t a1, uint64_t *a2)
{
  __lk.__m_ = (a1 + 40);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  if (*(a1 + 144) == (*(a1 + 112) - *(a1 + 104)) >> 5)
  {
    sub_27138600C(a1, &__lk);
  }

  std::promise<void>::promise(&v13);
  std::promise<void>::get_future(&v13);
  v4 = (*(a1 + 104) + 32 * *(a1 + 136));
  state = v13.__state_;
  v13.__state_ = 0;
  v16 = 1;
  v6 = *a2;
  *a2 = 0;
  v17 = v6;
  v18 = 1;
  v19 = state;
  v15 = 0;
  v20 = 1;
  sub_271385C10(v4, &v17);
  sub_271385B10(&v17);
  MEMORY[0x2743BEE30](&v15);
  v7 = (*(a1 + 112) - *(a1 + 104)) >> 5;
  v8 = *(a1 + 144);
  v9 = *(a1 + 136) + 1;
  if (v9 >= v7)
  {
    v10 = (*(a1 + 112) - *(a1 + 104)) >> 5;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 136) = v9 - v10;
  if (v8 == v7)
  {
    v11 = *(a1 + 128) + 1;
    if (v11 < v7)
    {
      v7 = 0;
    }

    *(a1 + 128) = v11 - v7;
  }

  else
  {
    *(a1 + 144) = v8 + 1;
  }

  std::condition_variable::notify_all((a1 + 160));
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::__assoc_sub_state::wait(v12);
    std::future<void>::~future(&v12);
    MEMORY[0x2743BEE30](&v13);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

void sub_2713851F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_27138523C(uint64_t a1, uint64_t *a2)
{
  v13.__m_ = (a1 + 40);
  v13.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 104);
  if (*(a1 + 144) == (*(a1 + 112) - v4) >> 5)
  {
    sub_27138600C(a1, &v13);
    v4 = *(a1 + 104);
  }

  v5 = *a2;
  v6 = (v4 + 32 * *(a1 + 136));
  *a2 = 0;
  v14 = v5;
  v15 = 1;
  v16 = 0;
  v17 = 0;
  sub_271385C10(v6, &v14);
  sub_271385B10(&v14);
  v7 = *(a1 + 144);
  v8 = *(a1 + 112);
  v9 = (v8 - *(a1 + 104)) >> 5;
  v10 = *(a1 + 136) + 1;
  if (v10 >= v9)
  {
    v11 = (v8 - *(a1 + 104)) >> 5;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 136) = v10 - v11;
  if (v7 != v9)
  {
    *(a1 + 144) = v7 + 1;
    std::condition_variable::notify_all((a1 + 160));
    if (!v13.__owns_)
    {
      return;
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 128) + 1;
  if (v12 < v7)
  {
    v7 = 0;
  }

  *(a1 + 128) = v12 - v7;
  std::condition_variable::notify_all((a1 + 160));
  if (v13.__owns_)
  {
LABEL_12:
    std::mutex::unlock(v13.__m_);
  }
}

void sub_271385358(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_271385378(uint64_t a1, uint64_t *a2)
{
  v12.__m_ = (a1 + 40);
  v12.__owns_ = 1;
  std::mutex::lock((a1 + 40));
  v4 = *(a1 + 104);
  if (*(a1 + 144) == (*(a1 + 112) - v4) >> 5)
  {
    sub_27138600C(a1, &v12);
    v4 = *(a1 + 104);
  }

  v5 = (v4 + 32 * *(a1 + 136));
  v6 = *a2;
  v13 = a2[1];
  v14 = 1;
  v15 = v6;
  *a2 = 0;
  a2[1] = 0;
  v16 = 1;
  sub_271385C10(v5, &v13);
  sub_271385B10(&v13);
  v7 = (*(a1 + 112) - *(a1 + 104)) >> 5;
  v8 = *(a1 + 144);
  v9 = *(a1 + 136) + 1;
  if (v9 >= v7)
  {
    v10 = (*(a1 + 112) - *(a1 + 104)) >> 5;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 136) = v9 - v10;
  if (v8 != v7)
  {
    *(a1 + 144) = v8 + 1;
    std::condition_variable::notify_all((a1 + 160));
    if (!v12.__owns_)
    {
      return;
    }

    goto LABEL_12;
  }

  v11 = *(a1 + 128) + 1;
  if (v11 < v7)
  {
    v7 = 0;
  }

  *(a1 + 128) = v11 - v7;
  std::condition_variable::notify_all((a1 + 160));
  if (v12.__owns_)
  {
LABEL_12:
    std::mutex::unlock(v12.__m_);
  }
}

void sub_271385494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_2713854BC(uint64_t a1)
{
  sub_271385E90(a1 - 8);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2713854F8(uint64_t a1)
{
  result = a1 + 8;
  if (*(a1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

void sub_271385514(uint64_t a1)
{
  v2.__m_ = (a1 + 32);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  while ((*(a1 + 149) & 1) != 0 || *(a1 + 136))
  {
    std::condition_variable::wait((a1 + 248), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void sub_271385584(uint64_t a1, uint64_t *a2)
{
  __lk.__m_ = (a1 + 32);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  if (*(a1 + 136) == (*(a1 + 104) - *(a1 + 96)) >> 5)
  {
    sub_27138600C(a1 - 8, &__lk);
  }

  std::promise<void>::promise(&v13);
  std::promise<void>::get_future(&v13);
  v4 = (*(a1 + 96) + 32 * *(a1 + 128));
  state = v13.__state_;
  v13.__state_ = 0;
  v16 = 1;
  v6 = *a2;
  *a2 = 0;
  v17 = v6;
  v18 = 1;
  v19 = state;
  v15 = 0;
  v20 = 1;
  sub_271385C10(v4, &v17);
  sub_271385B10(&v17);
  MEMORY[0x2743BEE30](&v15);
  v7 = (*(a1 + 104) - *(a1 + 96)) >> 5;
  v8 = *(a1 + 136);
  v9 = *(a1 + 128) + 1;
  if (v9 >= v7)
  {
    v10 = (*(a1 + 104) - *(a1 + 96)) >> 5;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 128) = v9 - v10;
  if (v8 == v7)
  {
    v11 = *(a1 + 120) + 1;
    if (v11 < v7)
    {
      v7 = 0;
    }

    *(a1 + 120) = v11 - v7;
  }

  else
  {
    *(a1 + 136) = v8 + 1;
  }

  std::condition_variable::notify_all((a1 + 152));
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
    __lk.__owns_ = 0;
    std::__assoc_sub_state::wait(v12);
    std::future<void>::~future(&v12);
    MEMORY[0x2743BEE30](&v13);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

void sub_2713856F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_27138573C(uint64_t a1, uint64_t *a2)
{
  v13.__m_ = (a1 + 32);
  v13.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  v4 = *(a1 + 96);
  if (*(a1 + 136) == (*(a1 + 104) - v4) >> 5)
  {
    sub_27138600C(a1 - 8, &v13);
    v4 = *(a1 + 96);
  }

  v5 = *a2;
  v6 = (v4 + 32 * *(a1 + 128));
  *a2 = 0;
  v14 = v5;
  v15 = 1;
  v16 = 0;
  v17 = 0;
  sub_271385C10(v6, &v14);
  sub_271385B10(&v14);
  v7 = *(a1 + 136);
  v8 = *(a1 + 104);
  v9 = (v8 - *(a1 + 96)) >> 5;
  v10 = *(a1 + 128) + 1;
  if (v10 >= v9)
  {
    v11 = (v8 - *(a1 + 96)) >> 5;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 128) = v10 - v11;
  if (v7 != v9)
  {
    *(a1 + 136) = v7 + 1;
    std::condition_variable::notify_all((a1 + 152));
    if (!v13.__owns_)
    {
      return;
    }

    goto LABEL_12;
  }

  v12 = *(a1 + 120) + 1;
  if (v12 < v7)
  {
    v7 = 0;
  }

  *(a1 + 120) = v12 - v7;
  std::condition_variable::notify_all((a1 + 152));
  if (v13.__owns_)
  {
LABEL_12:
    std::mutex::unlock(v13.__m_);
  }
}

void sub_271385858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_271385878(uint64_t a1, uint64_t *a2)
{
  v12.__m_ = (a1 + 32);
  v12.__owns_ = 1;
  std::mutex::lock((a1 + 32));
  v4 = *(a1 + 96);
  if (*(a1 + 136) == (*(a1 + 104) - v4) >> 5)
  {
    sub_27138600C(a1 - 8, &v12);
    v4 = *(a1 + 96);
  }

  v5 = (v4 + 32 * *(a1 + 128));
  v6 = *a2;
  v13 = a2[1];
  v14 = 1;
  v15 = v6;
  *a2 = 0;
  a2[1] = 0;
  v16 = 1;
  sub_271385C10(v5, &v13);
  sub_271385B10(&v13);
  v7 = (*(a1 + 104) - *(a1 + 96)) >> 5;
  v8 = *(a1 + 136);
  v9 = *(a1 + 128) + 1;
  if (v9 >= v7)
  {
    v10 = (*(a1 + 104) - *(a1 + 96)) >> 5;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 128) = v9 - v10;
  if (v8 != v7)
  {
    *(a1 + 136) = v8 + 1;
    std::condition_variable::notify_all((a1 + 152));
    if (!v12.__owns_)
    {
      return;
    }

    goto LABEL_12;
  }

  v11 = *(a1 + 120) + 1;
  if (v11 < v7)
  {
    v7 = 0;
  }

  *(a1 + 120) = v11 - v7;
  std::condition_variable::notify_all((a1 + 152));
  if (v12.__owns_)
  {
LABEL_12:
    std::mutex::unlock(v12.__m_);
  }
}

void sub_271385994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2713859B4(uint64_t a1)
{
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  (*(a1 + 8))(*(a1 + 16));
  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    v5 = MEMORY[0x2743BE900]();
    MEMORY[0x2743BF050](v5, 0x20C4093837F09);
  }

  MEMORY[0x2743BF050](a1, 0xA0C40A8488062);
  return 0;
}

void sub_271385A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271385A50(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_271385A50(uint64_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      v4 = MEMORY[0x2743BE900]();
      MEMORY[0x2743BF050](v4, 0x20C4093837F09);
    }

    MEMORY[0x2743BF050](v1, 0xA0C40A8488062);
    return v2;
  }

  return result;
}

void *sub_271385ABC(void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x2743BE900]();
    MEMORY[0x2743BF050](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

uint64_t *sub_271385B10(uint64_t *a1)
{
  if (*(a1 + 24) == 1)
  {
    MEMORY[0x2743BEE30](a1 + 2);
  }

  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      v3 = *(v2 + 32);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = *(v2 + 16);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      MEMORY[0x2743BF050](v2, 0x10F0C40B62ED6C6);
    }
  }

  return a1;
}

uint64_t *sub_271385C10(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    if (!*(a1 + 8))
    {
      v14 = *a2;
      *a2 = 0;
      *a1 = v14;
      *(a1 + 8) = 1;
      v8 = *(a1 + 24);
      if (v8 == *(a2 + 24))
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }

    v9 = *a1;
    *a1 = 0;
    if (v9)
    {
      v10 = *(v9 + 32);
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }

      v11 = *(v9 + 16);
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      MEMORY[0x2743BF050](v9, 0x10F0C40B62ED6C6);
    }

    *(a1 + 8) = 0;
LABEL_22:
    v8 = *(a1 + 24);
    if (v8 == *(a2 + 24))
    {
      goto LABEL_23;
    }

LABEL_27:
    if (v8)
    {
      MEMORY[0x2743BEE30](a1 + 2);
      *(a1 + 24) = 0;
    }

    else
    {
      a1[2] = a2[2];
      a2[2] = 0;
      *(a1 + 24) = 1;
    }

    return a1;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_22;
  }

  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = *(v5 + 32);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(v5 + 16);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  MEMORY[0x2743BF050](v5, 0x10F0C40B62ED6C6);
  v8 = *(a1 + 24);
  if (v8 != *(a2 + 24))
  {
    goto LABEL_27;
  }

LABEL_23:
  if (v8)
  {
    v12 = a2[2];
    a2[2] = 0;
    v15 = a1[2];
    a1[2] = v12;
    MEMORY[0x2743BEE30](&v15);
  }

  return a1;
}

uint64_t sub_271385E90(uint64_t a1)
{
  *a1 = &unk_288116580;
  *(a1 + 8) = &unk_2881165C8;
  v2 = (a1 + 40);
  std::mutex::lock((a1 + 40));
  atomic_store(1u, (a1 + 156));
  std::condition_variable::notify_all((a1 + 160));
  std::mutex::unlock(v2);
  v7.__m_ = v2;
  v7.__owns_ = 1;
  std::mutex::lock(v2);
  while ((*(a1 + 157) & 1) != 0 || *(a1 + 144))
  {
    std::condition_variable::wait((a1 + 256), &v7);
  }

  if (v7.__owns_)
  {
    std::mutex::unlock(v7.__m_);
  }

  std::thread::join((a1 + 304));
  if (*(a1 + 312) == 1)
  {
    std::thread::~thread((a1 + 304));
  }

  std::condition_variable::~condition_variable((a1 + 256));
  std::condition_variable::~condition_variable((a1 + 208));
  std::condition_variable::~condition_variable((a1 + 160));
  v3 = *(a1 + 104);
  if (v3)
  {
    v4 = *(a1 + 112);
    v5 = *(a1 + 104);
    if (v4 != v3)
    {
      do
      {
        v4 = sub_271385B10(v4 - 4);
      }

      while (v4 != v3);
      v5 = *(a1 + 104);
    }

    *(a1 + 112) = v3;
    operator delete(v5);
  }

  std::mutex::~mutex(v2);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_27138600C(uint64_t a1, std::unique_lock<std::mutex> *__lk)
{
  v3 = *(a1 + 152);
  switch(v3)
  {
    case 2:
      v17 = 0u;
      v18 = 0u;
      sub_271385C10((*(a1 + 104) + 32 * *(a1 + 128)), &v17);
      sub_271385B10(&v17);
      v8 = (*(a1 + 112) - *(a1 + 104)) >> 5;
      v9 = *(a1 + 128) + 1;
      if (v9 < v8)
      {
        v8 = 0;
      }

      *(a1 + 128) = v9 - v8;
      --*(a1 + 144);
      break;
    case 1:
      while (*(a1 + 144) == (*(a1 + 112) - *(a1 + 104)) >> 5)
      {
        std::condition_variable::wait((a1 + 208), __lk);
      }

      break;
    case 0:
      v5 = *(a1 + 104);
      v4 = *(a1 + 112);
      *&v18 = 0;
      v17 = 0uLL;
      v21 = &v17;
      v22 = 0;
      v6 = v4 - v5;
      if (v6)
      {
        if (!((v6 >> 4) >> 59))
        {
          operator new();
        }

        sub_271135560();
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      v19 = 0;
      v20 = 0;
      *(&v18 + 1) = 0;
      v13 = *(a1 + 104);
      if (v13)
      {
        v14 = *(a1 + 112);
        v15 = v13;
        if (v14 != v13)
        {
          do
          {
            v14 = sub_271385B10(v14 - 4);
          }

          while (v14 != v13);
          v15 = *(a1 + 104);
        }

        *(a1 + 112) = v13;
        operator delete(v15);
        v11 = *(&v17 + 1);
        v12 = v17;
        v6 = v19;
        v10 = v20;
      }

      *(a1 + 104) = v12;
      *(a1 + 112) = v11;
      v16 = *(&v18 + 1);
      *(a1 + 120) = v18;
      *(a1 + 128) = v16;
      *(a1 + 136) = v6;
      *(a1 + 144) = v10;
      break;
  }
}

void sub_27138630C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271386320(va);
  _Unwind_Resume(a1);
}

void ***sub_271386320(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_271385B10(v4 - 4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void sub_2713863B8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106E38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27138640C(uint64_t a1)
{
  std::mutex::lock(&stru_2808797F8);
  v3 = qword_28087C408;
  v2 = qword_28087C410;
  if (qword_28087C408 != qword_28087C410)
  {
    while (*v3 != sub_271383CEC)
    {
      v3 += 2;
      if (v3 == qword_28087C410)
      {
        goto LABEL_14;
      }
    }

    if (v3 != qword_28087C410)
    {
      v4 = v3 + 2;
      if (v3 + 2 != qword_28087C410)
      {
        do
        {
          if (*v4 != sub_271383CEC)
          {
            *v3 = *v4;
            v3 += 2;
          }

          ++v4;
        }

        while (v4 != v2);
        v2 = qword_28087C410;
      }
    }
  }

  if (v3 != v2)
  {
    qword_28087C410 = v3;
  }

LABEL_14:
  std::mutex::unlock(&stru_2808797F8);
  std::mutex::~mutex((a1 + 48));
  v5 = *(a1 + 24);
  if (v5)
  {
    *(a1 + 32) = v5;

    operator delete(v5);
  }
}

void sub_2713865E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  MEMORY[0x2743BF050](v19, v18, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t sub_271386624(uint64_t a1, uint64_t a2)
{
  v17[0] = a1;
  v17[1] = a2;
  v16[0] = &unk_288131218;
  v16[1] = v17;
  sub_27184A384(v16, v5);
  if ((v15 & 1) == 0)
  {
    if (*(a1 + 88) != 1)
    {
      goto LABEL_5;
    }

    v3 = *(a1 + 80);
    if (!v3)
    {
      sub_27112AFFC();
    }

    (*(*v3 + 48))(v3, v5);
    if ((v15 & 1) == 0)
    {
LABEL_5:
      if (v14 == 1)
      {
        if (v13 == 1)
        {
          if (v12 < 0)
          {
            operator delete(__p);
          }

          if (v10 < 0)
          {
            operator delete(v9);
          }
        }

        if (v8 == 1 && v7 < 0)
        {
          operator delete(v6);
        }
      }
    }
  }

  return a1;
}

void sub_271386740(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = &unk_28810AC10;
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v10 = v9;
      v4 = a3;
      (*(*v3 + 24))(v3, v9);
      a3 = v4;
    }

    else
    {
      v10 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v6[0] = 0;
  v8 = 0;
  if (*(a3 + 32) == 1)
  {
    v5 = *(a3 + 24);
    if (v5)
    {
      if (v5 == a3)
      {
        v7 = v6;
        (*(*v5 + 24))(v5, v6);
      }

      else
      {
        v7 = *(a3 + 24);
        *(a3 + 24) = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v8 = 1;
  }

  operator new();
}

void sub_271386D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_271386DB4(void *result)
{
  *result = &unk_28810AC10;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_271386E48(void *a1)
{
  *a1 = &unk_28810AC10;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_271386F1C(uint64_t a1)
{
  *a1 = &unk_28810AC48;
  std::mutex::~mutex((a1 + 104));
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 88) != 1)
  {
LABEL_7:
    v4 = *(a1 + 48);
    if (v4 != a1 + 24)
    {
      goto LABEL_8;
    }

LABEL_14:
    (*(*v4 + 32))(v4);
    v5 = *(a1 + 16);
    if (!v5)
    {
      return a1;
    }

    goto LABEL_11;
  }

  v3 = *(a1 + 80);
  if (v3 != a1 + 56)
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    goto LABEL_7;
  }

  (*(*v3 + 32))(v3);
  v4 = *(a1 + 48);
  if (v4 == a1 + 24)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v4)
  {
    (*(*v4 + 40))(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
LABEL_11:
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_27138707C(uint64_t a1)
{
  *a1 = &unk_28810AC48;
  std::mutex::~mutex((a1 + 104));
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 88) == 1)
  {
    v3 = *(a1 + 80);
    if (v3 == a1 + 56)
    {
      (*(*v3 + 32))(v3);
      v4 = *(a1 + 48);
      if (v4 != a1 + 24)
      {
LABEL_8:
        if (v4)
        {
          (*(*v4 + 40))(v4);
        }

        v5 = *(a1 + 16);
        if (v5)
        {
          goto LABEL_11;
        }

        goto LABEL_12;
      }

LABEL_16:
      (*(*v4 + 32))(v4);
      v5 = *(a1 + 16);
      if (v5)
      {
LABEL_11:
        std::__shared_weak_count::__release_weak(v5);
      }

LABEL_12:

      JUMPOUT(0x2743BF050);
    }

    if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 != a1 + 24)
  {
    goto LABEL_8;
  }

  goto LABEL_16;
}

uint64_t sub_27138721C(uint64_t a1)
{
  v2 = *(**(a1 + 8) + 48);
  if (!v2)
  {
    sub_27112AFFC();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_271387290(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_271389224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61)
{
  __cxa_guard_abort(&qword_28087B7E0);
  sub_27112F828(&a51);
  _Unwind_Resume(a1);
}

void sub_2713893AC()
{
  MEMORY[0x28223BE20]();
  __token[23] = 12;
  strcpy(__token, "/dev/urandom");
  std::random_device::random_device(&v1, __token);
  if ((__token[23] & 0x80000000) != 0)
  {
    operator delete(*__token);
  }

  for (i = 0; i != 2496; i += 4)
  {
    *&v4[i] = MEMORY[0x2743BE880](&v1);
  }

  memcpy(__dst, v4, sizeof(__dst));
  sub_271393544(__dst);
}

void sub_27138950C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device argC, std::random_device a11, int _14, std::random_device a12, int a15, int a13, char a14)
{
  sub_271816C9C(&STACK[0x9D8]);
  std::random_device::~random_device(&argC);
  _Unwind_Resume(a1);
}

void sub_271389540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_271389570(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27112F6CC(v8, a2);
    v16 = 1;
  }

  sub_271390244(&v17, v3, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_27138975C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v48 = *MEMORY[0x277D85DE8];
  v17 = 9;
  LOBYTE(v18) = 0;
  v28 = 0;
  LOBYTE(v15) = 0;
  v16[16] = 0;
  *&v16[24] = 0;
  v14 = 1;
  while (1)
  {
    if (*(a2 + 896) == 2)
    {
      sub_2714F8630((a2 + 904), &v33);
      v15 = v33;
      *v16 = v34;
      if (v16[16])
      {
        goto LABEL_9;
      }

LABEL_8:
      v16[16] = 1;
      goto LABEL_9;
    }

    LOBYTE(v15) = 0;
    *(&v15 + 1) = 0;
    *v16 = 0;
    v16[8] = 1;
    if ((v16[16] & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_9:
    if (*(a2 + 440) != 1)
    {
      goto LABEL_19;
    }

    v29 = v15;
    v30 = *v16;
    v31 = 1;
    v32 = 1;
    sub_27152A6FC(a2 + 152, &v29, &v33);
    if (v44)
    {
      goto LABEL_19;
    }

    sub_27138A894(&v17, &v33);
    v14 = 0;
    if ((v44 & 1) != 0 || v43 != 1)
    {
      goto LABEL_19;
    }

    if (v42 != 1)
    {
LABEL_16:
      if (v36 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
      if ((SHIBYTE(v38) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    operator delete(v37);
    if (v36 != 1)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

LABEL_19:
    if (*(a2 + 144) != 1)
    {
      goto LABEL_29;
    }

    *&v29 = a2;
    *(&v29 + 1) = &v15;
    *&v30 = &v17;
    *(&v30 + 1) = &v14;
    v45[0] = &unk_288116808;
    v45[1] = &v29;
    sub_27184A384(v45, &v33);
    if (v44)
    {
      goto LABEL_29;
    }

    sub_27138A894(&v17, &v33);
    if ((v44 & 1) != 0 || v43 != 1)
    {
      goto LABEL_29;
    }

    if (v42 == 1)
    {
      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40);
        if (SHIBYTE(v38) < 0)
        {
LABEL_37:
          operator delete(v37);
          if (v36 != 1)
          {
            goto LABEL_29;
          }

          goto LABEL_27;
        }
      }

      else if (SHIBYTE(v38) < 0)
      {
        goto LABEL_37;
      }
    }

    if (v36 != 1)
    {
      goto LABEL_29;
    }

LABEL_27:
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

LABEL_29:
    if (v15 != 1)
    {
      break;
    }

    v46[0] = &unk_288107838;
    v46[1] = a2;
    v47 = v46;
    v7 = sub_2714F87F8(a2 + 904, v46, a3, v4);
    if (v47 == v46)
    {
      (*(*v47 + 32))(v47);
    }

    else if (v47)
    {
      (*(*v47 + 40))(v47);
    }

    *&v16[24] = v7 ^ 1;
    v14 = v7;
    if ((v7 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  v14 = 0;
LABEL_40:
  if (v28)
  {
    if (*(a2 + 112) == 1)
    {
      v8 = *(a2 + 104);
      if (!v8)
      {
        sub_27112AFFC();
      }

      (*(*v8 + 48))(v8, &v18);
    }

    v33 = v18;
    LOBYTE(v34) = 0;
    v43 = 0;
    if (v27 == 1)
    {
      sub_27112F6CC(&v34, &v19);
      v43 = 1;
      *a1 = v33;
      *(a1 + 16) = 0;
      *(a1 + 40) = 0;
      v9 = v36;
      if (v36 == 1)
      {
        *(a1 + 16) = v34;
        *(a1 + 32) = v35;
        v35 = 0;
        v34 = 0uLL;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        v10 = a1 + 48;
        *(a1 + 104) = 0;
        if (v42)
        {
          goto LABEL_52;
        }

LABEL_47:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (v9)
        {
LABEL_53:
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34);
          }
        }
      }

      else
      {
        *(a1 + 48) = 0;
        v10 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_47;
        }

LABEL_52:
        v12 = v39;
        *(v10 + 16) = v38;
        *v10 = v37;
        v38 = 0;
        v37 = 0uLL;
        *(a1 + 72) = v12;
        *(a1 + 80) = v40;
        *(a1 + 96) = v41;
        v40 = 0uLL;
        v41 = 0;
        *(a1 + 104) = 1;
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (v9)
        {
          goto LABEL_53;
        }
      }
    }

    else
    {
      *a1 = v18;
      *(a1 + 16) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
    }

    if ((v28 & 1) != 0 && v27 == 1)
    {
      if (v26 == 1)
      {
        if (v25 < 0)
        {
          operator delete(v24);
        }

        if (v23 < 0)
        {
          operator delete(__p);
        }
      }

      if (v21 == 1 && v20 < 0)
      {
        operator delete(v19);
      }
    }
  }

  else
  {
    v11 = *v16;
    *a1 = v15;
    *(a1 + 16) = v11;
    *(a1 + 28) = *&v16[12];
    *(a1 + 120) = 1;
  }
}

void sub_271389C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27112D66C(v17 + 16);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_271389CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_271389CBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  sub_27112E024(va);
  sub_27138AE34(&a18);
  _Unwind_Resume(a1);
}

void sub_271389CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_271389CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27139272C(v17 - 136);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

void sub_271389D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_27138AE34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_271389D20(uint64_t result)
{
  if (*(result + 120))
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_288108EC0;
    __cxa_throw(exception, &unk_28811C2D8, std::exception::~exception);
  }

  return result;
}

uint64_t sub_271389D78(uint64_t a1)
{
  *a1 = &unk_28810A778;
  *(a1 + 8) = &unk_28810A7E0;
  v2 = a1 + 16;
  *(a1 + 16) = &unk_28810A818;
  v3 = *(a1 + 1176);
  *(a1 + 1168) = 0u;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = *(a1 + 1120);
    v5 = v4[4];
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *(a1 + 1120);
    v5 = v4[4];
    if (v5)
    {
LABEL_4:
      std::mutex::lock(v5);
      v7 = v4[5];
      v6 = v4[6];
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::mutex::unlock(v5);
      goto LABEL_10;
    }
  }

  v7 = v4[5];
  v6 = v4[6];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_10:
  sub_271501250(v7, v2);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (*(a1 + 144) != 1)
    {
      goto LABEL_17;
    }
  }

  else if (*(a1 + 144) != 1)
  {
    goto LABEL_17;
  }

  v8 = *(a1 + 136);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  *(a1 + 144) = 0;
LABEL_17:
  if (*(a1 + 440) == 1)
  {
    sub_27152A9FC(a1 + 152, 2, &v21);
    if ((v31 & 1) == 0 && v30 == 1)
    {
      if (v29 == 1)
      {
        if (v28 < 0)
        {
          operator delete(__p);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }
    }
  }

  v9 = *(a1 + 1176);
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(a1 + 1160) != 1)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (*(a1 + 1160) == 1)
  {
LABEL_31:
    sub_27137803C(a1 + 1144);
  }

LABEL_32:
  v10 = *(a1 + 1120);
  *(a1 + 1120) = 0;
  if (v10)
  {
    sub_27138F798(v10);
  }

  if (*(a1 + 1104) == 1)
  {
    std::condition_variable::~condition_variable((a1 + 1056));
    v11 = *(a1 + 1032);
    if (v11)
    {
      *(a1 + 1040) = v11;
      operator delete(v11);
    }

    std::mutex::~mutex((a1 + 968));
  }

  std::condition_variable::~condition_variable((a1 + 848));
  std::mutex::~mutex((a1 + 784));
  if (*(a1 + 720) != 1)
  {
LABEL_42:
    if (*(a1 + 680) != 1)
    {
      goto LABEL_43;
    }

    goto LABEL_51;
  }

  v12 = *(a1 + 712);
  if (v12 != a1 + 688)
  {
    if (v12)
    {
      (*(*v12 + 40))(v12);
    }

    goto LABEL_42;
  }

  (*(*v12 + 32))(v12);
  if (*(a1 + 680) != 1)
  {
LABEL_43:
    if (*(a1 + 440) != 1)
    {
      goto LABEL_44;
    }

    goto LABEL_52;
  }

LABEL_51:
  sub_2711B039C(a1 + 448);
  if (*(a1 + 440) != 1)
  {
LABEL_44:
    if (*(a1 + 144) != 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

LABEL_52:
  v13 = *(a1 + 432);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(a1 + 416);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(a1 + 400);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  sub_2711B039C(a1 + 160);
  if (*(a1 + 144) == 1)
  {
LABEL_60:
    v16 = *(a1 + 136);
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }

LABEL_63:
  if (*(a1 + 112) == 1)
  {
    v17 = *(a1 + 104);
    if (v17 == a1 + 80)
    {
      (*(*v17 + 32))(v17);
      if (*(a1 + 72) != 1)
      {
        goto LABEL_74;
      }

      goto LABEL_68;
    }

    if (v17)
    {
      (*(*v17 + 40))(v17);
    }
  }

  if (*(a1 + 72) != 1)
  {
    goto LABEL_74;
  }

LABEL_68:
  v18 = *(a1 + 64);
  if (v18 == a1 + 40)
  {
    (*(*v18 + 32))(v18);
  }

  else if (v18)
  {
    (*(*v18 + 40))(v18);
  }

LABEL_74:
  v19 = *(a1 + 32);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  return a1;
}

void sub_27138A310(uint64_t a1)
{
  sub_271389D78(a1);

  JUMPOUT(0x2743BF050);
}

void sub_27138A348(uint64_t a1)
{
  sub_271389D78(a1 - 8);

  JUMPOUT(0x2743BF050);
}

void sub_27138A384(uint64_t a1)
{
  sub_271389D78(a1 - 16);

  JUMPOUT(0x2743BF050);
}

void sub_27138A3D0(uint64_t a1@<X0>, const void ****a2@<X1>, uint64_t a3@<X8>)
{
  v10 = 9;
  LOBYTE(v11) = 0;
  v21 = 0;
  if (*(a1 + 440) == 1)
  {
    sub_27152A3FC(a1 + 152, a2, &v25);
    if ((v36 & 1) == 0)
    {
      sub_27138A894(&v10, &v25);
      if ((v36 & 1) == 0 && v35 == 1)
      {
        if (v34 == 1)
        {
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }
        }

        if (v28 == 1 && SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }
      }
    }
  }

  if (*(a1 + 720) == 1)
  {
    v22 = a1;
    v23 = a2;
    v24 = &v10;
    v37 = &unk_288116858;
    v38 = &v22;
    sub_27184A384(&v37, &v25);
    if ((v36 & 1) == 0)
    {
      sub_27138A894(&v10, &v25);
      if ((v36 & 1) == 0 && v35 == 1)
      {
        if (v34 == 1)
        {
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }
        }

        if (v28 == 1 && SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }
      }
    }
  }

  if (*(a1 + 144) == 1)
  {
    v22 = a1;
    v23 = a2;
    v24 = &v10;
    v37 = &unk_288116830;
    v38 = &v22;
    sub_27184A384(&v37, &v25);
    if ((v36 & 1) == 0)
    {
      sub_27138A894(&v10, &v25);
      if ((v36 & 1) == 0 && v35 == 1)
      {
        if (v34 == 1)
        {
          if (SHIBYTE(v33) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }
        }

        if (v28 == 1 && SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }
      }
    }
  }

  if (v21 != 1)
  {
    *(a3 + 120) = 1;
    return;
  }

  if (*(a1 + 112) == 1)
  {
    v6 = *(a1 + 104);
    if (!v6)
    {
      sub_27112AFFC();
    }

    (*(*v6 + 48))(v6, &v11);
  }

  v25 = v11;
  LOBYTE(v26) = 0;
  v35 = 0;
  if (v20 == 1)
  {
    sub_27112F6CC(&v26, &v12);
    v35 = 1;
    *a3 = v25;
    *(a3 + 16) = 0;
    *(a3 + 40) = 0;
    v7 = v28;
    if (v28 == 1)
    {
      *(a3 + 16) = v26;
      *(a3 + 32) = v27;
      v27 = 0;
      v26 = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v8 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v34 & 1) == 0)
      {
LABEL_44:
        *(a3 + 112) = 1;
        *(a3 + 120) = 0;
        if (!v7)
        {
          goto LABEL_53;
        }

LABEL_51:
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }

        goto LABEL_53;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v8 = a3 + 48;
      *(a3 + 104) = 0;
      if ((v34 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v9 = v31;
    *(v8 + 16) = v30;
    *v8 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    *(a3 + 72) = v9;
    *(a3 + 80) = *__p;
    *(a3 + 96) = v33;
    v30 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (v7)
    {
      goto LABEL_51;
    }
  }

  else
  {
    *a3 = v11;
    *(a3 + 16) = 0;
    *(a3 + 112) = 0;
    *(a3 + 120) = 0;
  }

LABEL_53:
  if ((v21 & 1) != 0 && v20 == 1)
  {
    if (v19 == 1)
    {
      if (v18 < 0)
      {
        operator delete(v17);
      }

      if (v16 < 0)
      {
        operator delete(v15);
      }
    }

    if (v14 == 1 && v13 < 0)
    {
      operator delete(v12);
    }
  }
}

void sub_27138A804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_27138AE34(&a9);
  _Unwind_Resume(a1);
}

void sub_27138A820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_27112E024(va);
  sub_27138AE34(&a9);
  _Unwind_Resume(a1);
}

void sub_27138A894(unsigned int *a1, uint64_t a2)
{
  if (a1[32])
  {
    goto LABEL_30;
  }

  v4 = *a1;
  LOBYTE(v16) = 0;
  v24 = 0;
  sub_271390244(&v25, v4, &v16);
  if ((a1[32] & 1) == 0)
  {
    *(a1 + 2) = v25;
    *(a1 + 24) = 0;
    *(a1 + 120) = 0;
    if (v35 != 1)
    {
      *(a1 + 128) = 1;
      goto LABEL_21;
    }

    *(a1 + 48) = 0;
    if (v28 == 1)
    {
      *(a1 + 6) = v26;
      *(a1 + 5) = v27;
      v27 = 0;
      v26 = 0uLL;
      *(a1 + 48) = 1;
      *(a1 + 56) = 0;
      v5 = a1 + 14;
      *(a1 + 112) = 0;
      v6 = v34;
      if (v34 != 1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      *(a1 + 56) = 0;
      v5 = a1 + 14;
      *(a1 + 112) = 0;
      v6 = v34;
      if (v34 != 1)
      {
LABEL_9:
        *(a1 + 120) = 1;
        *(a1 + 128) = 1;
        if (!v6)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

    v7 = v31;
    *(v5 + 2) = v30;
    *v5 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    *(a1 + 10) = v7;
    *(a1 + 22) = *__p;
    *(a1 + 13) = v33;
    v30 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    *(a1 + 112) = 1;
    *(a1 + 120) = 1;
    *(a1 + 128) = 1;
    if (!v6)
    {
LABEL_18:
      if (v28 == 1 && SHIBYTE(v27) < 0)
      {
        operator delete(v26);
      }

      goto LABEL_21;
    }

LABEL_14:
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    goto LABEL_18;
  }

  sub_27112F274((a1 + 2), &v25);
  if (v35)
  {
    if ((v34 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

LABEL_21:
  if (v24 == 1)
  {
    if (v23 == 1)
    {
      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }
    }

    if (v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }
  }

LABEL_30:
  if (*(a2 + 8) != *(a1 + 2) || *a2 != a1[2])
  {
    sub_271847E00(a2, &v15);
    sub_271849064(a1 + 1, &v15.__r_.__value_.__l.__data_, &v25);
    if (a1[32])
    {
      sub_27112F274((a1 + 2), &v25);
      if ((v35 & 1) == 0)
      {
        goto LABEL_57;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_54;
      }

LABEL_52:
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        if ((SHIBYTE(v30) & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

LABEL_61:
        operator delete(v29[0]);
        if (v28 == 1)
        {
LABEL_55:
          if (SHIBYTE(v27) < 0)
          {
            operator delete(v26);
          }
        }

LABEL_57:
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }

        return;
      }

      operator delete(__p[0]);
      if (SHIBYTE(v30) < 0)
      {
        goto LABEL_61;
      }

LABEL_54:
      if (v28 == 1)
      {
        goto LABEL_55;
      }

      goto LABEL_57;
    }

    *(a1 + 2) = v25;
    *(a1 + 24) = 0;
    *(a1 + 120) = 0;
    if (v35 != 1)
    {
      *(a1 + 128) = 1;
      goto LABEL_57;
    }

    *(a1 + 48) = 0;
    if (v28 == 1)
    {
      *(a1 + 6) = v26;
      *(a1 + 5) = v27;
      v27 = 0;
      v26 = 0uLL;
      *(a1 + 48) = 1;
      *(a1 + 56) = 0;
      v9 = a1 + 14;
      *(a1 + 112) = 0;
      v10 = v34;
      if (v34 != 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      *(a1 + 56) = 0;
      v9 = a1 + 14;
      *(a1 + 112) = 0;
      v10 = v34;
      if (v34 != 1)
      {
LABEL_47:
        *(a1 + 120) = 1;
        *(a1 + 128) = 1;
        if (!v10)
        {
          goto LABEL_54;
        }

        goto LABEL_52;
      }
    }

    v11 = v31;
    *(v9 + 2) = v30;
    *v9 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    *(a1 + 10) = v11;
    *(a1 + 22) = *__p;
    *(a1 + 13) = v33;
    v30 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    *(a1 + 112) = 1;
    *(a1 + 120) = 1;
    *(a1 + 128) = 1;
    if (!v10)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (*(a2 + 112))
  {
    v8 = (a2 + 16);
  }

  else
  {
    v8 = &unk_2718BB850;
  }

  if (*(v8 + 24) == 1)
  {
    sub_271849064(a1 + 1, v8, &v25);
    if (a1[32])
    {
      sub_27112F274((a1 + 2), &v25);
      if ((v35 & 1) == 0)
      {
        return;
      }

      if ((v34 & 1) == 0)
      {
        goto LABEL_75;
      }

      goto LABEL_71;
    }

    *(a1 + 2) = v25;
    *(a1 + 24) = 0;
    *(a1 + 120) = 0;
    if (v35 != 1)
    {
      *(a1 + 128) = 1;
      return;
    }

    *(a1 + 48) = 0;
    if (v28 == 1)
    {
      *(a1 + 6) = v26;
      *(a1 + 5) = v27;
      v27 = 0;
      v26 = 0uLL;
      *(a1 + 48) = 1;
      *(a1 + 56) = 0;
      v12 = a1 + 14;
      *(a1 + 112) = 0;
      v13 = v34;
      if (v34 != 1)
      {
        goto LABEL_66;
      }
    }

    else
    {
      *(a1 + 56) = 0;
      v12 = a1 + 14;
      *(a1 + 112) = 0;
      v13 = v34;
      if (v34 != 1)
      {
LABEL_66:
        *(a1 + 120) = 1;
        *(a1 + 128) = 1;
        if (!v13)
        {
LABEL_75:
          if (v28 == 1 && SHIBYTE(v27) < 0)
          {
            operator delete(v26);
          }

          return;
        }

LABEL_71:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(v29[0]);
        }

        goto LABEL_75;
      }
    }

    v14 = v31;
    *(v12 + 2) = v30;
    *v12 = *v29;
    v29[0] = 0;
    v29[1] = 0;
    *(a1 + 10) = v14;
    *(a1 + 22) = *__p;
    *(a1 + 13) = v33;
    v30 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    *(a1 + 112) = 1;
    *(a1 + 120) = 1;
    *(a1 + 128) = 1;
    if (!v13)
    {
      goto LABEL_75;
    }

    goto LABEL_71;
  }
}

void sub_27138AE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_27138AE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27138AE34(uint64_t result)
{
  if (*(result + 128) == 1 && *(result + 120) == 1)
  {
    if (*(result + 112) == 1)
    {
      if (*(result + 111) < 0)
      {
        v1 = result;
        operator delete(*(result + 88));
        result = v1;
      }

      if (*(result + 79) < 0)
      {
        v2 = result;
        operator delete(*(result + 56));
        result = v2;
      }
    }

    if (*(result + 48) == 1 && *(result + 47) < 0)
    {
      v3 = result;
      operator delete(*(result + 24));
      return v3;
    }
  }

  return result;
}

void sub_27138AED8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 896))
  {
    if ((*(a1 + 1104) & 1) == 0)
    {
      *a2 = 0;
      *(a2 + 32) = 0;
      goto LABEL_11;
    }

    sub_27138975C(&v21, a1, 0, 0);
    if (v32)
    {
      v3 = __p;
      *a2 = v21;
      *(a2 + 16) = v3;
      *(a2 + 32) = v23;
LABEL_11:
      *(a2 + 120) = 1;
      return;
    }

    v10 = v21;
    LOBYTE(v11) = 0;
    v20 = 0;
    if (v31 == 1)
    {
      sub_27112F6CC(&v11, &__p);
      v20 = 1;
      *a2 = v10;
      *(a2 + 16) = 0;
      *(a2 + 40) = 0;
      v6 = v13;
      if (v13 == 1)
      {
        *(a2 + 16) = v11;
        *(a2 + 32) = v12;
        v12 = 0;
        v11 = 0uLL;
        *(a2 + 40) = 1;
        *(a2 + 48) = 0;
        v7 = a2 + 48;
        *(a2 + 104) = 0;
        if ((v19 & 1) == 0)
        {
LABEL_17:
          *(a2 + 112) = 1;
          *(a2 + 120) = 0;
          if (!v6)
          {
            goto LABEL_37;
          }

LABEL_35:
          if (SHIBYTE(v12) < 0)
          {
            operator delete(v11);
          }

          goto LABEL_37;
        }
      }

      else
      {
        *(a2 + 48) = 0;
        v7 = a2 + 48;
        *(a2 + 104) = 0;
        if ((v19 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v9 = v16;
      *(v7 + 16) = v15;
      *v7 = v14;
      v14 = 0uLL;
      *(a2 + 72) = v9;
      *(a2 + 80) = v17;
      *(a2 + 96) = v18;
      v15 = 0;
      v17 = 0uLL;
      v18 = 0;
      *(a2 + 104) = 1;
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (v6)
      {
        goto LABEL_35;
      }
    }

    else
    {
      *a2 = v21;
      *(a2 + 16) = 0;
      *(a2 + 112) = 0;
      *(a2 + 120) = 0;
    }

LABEL_37:
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(__p);
      }
    }

    return;
  }

  LOBYTE(v33) = 0;
  v41 = 0;
  sub_271389570(11, &v33, &v21);
  *a2 = v21;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v31 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_23;
  }

  *(a2 + 40) = 0;
  v4 = v24;
  if (v24 != 1)
  {
    *(a2 + 48) = 0;
    v5 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v30 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_20:
    v8 = v27;
    *(v5 + 16) = v26;
    *v5 = v25;
    v25 = 0uLL;
    *(a2 + 72) = v8;
    *(a2 + 80) = v28;
    *(a2 + 96) = v29;
    v26 = 0;
    v28 = 0uLL;
    v29 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v4)
    {
      goto LABEL_23;
    }

LABEL_21:
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_23;
  }

  *(a2 + 16) = __p;
  *(a2 + 32) = v23;
  v23 = 0;
  __p = 0uLL;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v5 = a2 + 48;
  *(a2 + 104) = 0;
  if (v30)
  {
    goto LABEL_20;
  }

LABEL_8:
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (v4)
  {
    goto LABEL_21;
  }

LABEL_23:
  if (v41 == 1)
  {
    if (v40 == 1)
    {
      if (v39 < 0)
      {
        operator delete(v38);
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }
    }

    if (v35 == 1 && v34 < 0)
    {
      operator delete(v33);
    }
  }
}