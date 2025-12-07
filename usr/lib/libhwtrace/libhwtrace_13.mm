void sub_298B906F0(uint64_t a1, unsigned int a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = 16;
  if (v4 == *a1)
  {
    v6 = 20;
  }

  v7 = *(a1 + v6);
  v8 = 8 * a2;
  v9 = malloc_type_malloc(v8, 0x3C0F72FBuLL);
  if (!v9 && (a2 || (v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    sub_298B86A40("Allocation failed");
  }

  *(a1 + 8) = v9;
  *(a1 + 16) = a2;
  memset(v9, 255, v8);
  if (v7)
  {
    v10 = v4;
    do
    {
      v13 = *v10;
      if (*v10 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = *(a1 + 16) - 1;
        v15 = *(a1 + 8);
        v16 = v14 & ((v13 >> 4) ^ (v13 >> 9));
        v12 = (v15 + 8 * v16);
        v17 = *v12;
        if (*v12 == -1)
        {
          v11 = 0;
LABEL_9:
          if (v11)
          {
            v12 = v11;
          }
        }

        else
        {
          v11 = 0;
          v18 = 1;
          while (v17 != v13)
          {
            if (v11)
            {
              v19 = 0;
            }

            else
            {
              v19 = v17 == -2;
            }

            if (v19)
            {
              v11 = v12;
            }

            v20 = v16 + v18++;
            v16 = v20 & v14;
            v12 = (v15 + 8 * (v20 & v14));
            v17 = *v12;
            if (*v12 == -1)
            {
              goto LABEL_9;
            }
          }
        }

        *v12 = v13;
      }

      ++v10;
    }

    while (v10 != &v4[v7]);
  }

  if (v4 != v5)
  {
    free(v4);
  }

  *(a1 + 20) = (*(a1 + 20) - *(a1 + 24));
}

void *sub_298B90848(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (HIDWORD(a3))
  {
    sub_298B90D10(a3);
  }

  v6 = *(a1 + 12);
  if (v6 == -1)
  {
    sub_298B90DC8(0xFFFFFFFFuLL);
  }

  v10 = 2 * v6;
  v11 = v6 < 0;
  v12 = 0xFFFFFFFFLL;
  if (!v11)
  {
    v12 = v10 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) < a3)
  {
    v12 = a3;
  }

  *a5 = v12;
  v13 = v12 * a4;
  result = malloc_type_malloc(v12 * a4, 0x3C0F72FBuLL);
  if (!result && (v13 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    sub_298B86A40("Allocation failed");
  }

  if (result == a2)
  {
    v15 = *a5;

    return sub_298B909A8(a1, result, a4, v15, 0);
  }

  return result;
}

void *sub_298B90950(size_t a1)
{
  result = malloc_type_malloc(a1, 0x3C0F72FBuLL);
  if (!result && (a1 || (result = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    sub_298B86A40("Allocation failed");
  }

  return result;
}

void *sub_298B909A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a4 * a3;
  v9 = malloc_type_malloc(a4 * a3, 0x3C0F72FBuLL);
  if (!v9 && (v8 || (v9 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL)) == 0))
  {
    sub_298B86A40("Allocation failed");
  }

  v10 = v9;
  if (a5)
  {
    memcpy(v9, a2, a5 * a3);
  }

  free(a2);
  return v10;
}

void *sub_298B90A44(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  if (HIDWORD(a3))
  {
    sub_298B90D10(a3);
  }

  v5 = *(a1 + 12);
  if (v5 == -1)
  {
    sub_298B90DC8(0xFFFFFFFFuLL);
  }

  v8 = 2 * v5;
  v9 = v5 < 0;
  v10 = 0xFFFFFFFFLL;
  if (!v9)
  {
    v10 = v8 + 1;
  }

  if (((2 * *(a1 + 12)) | 1uLL) >= a3)
  {
    v11 = v10;
  }

  else
  {
    v11 = a3;
  }

  v12 = *a1;
  v13 = v11 * a4;
  if (*a1 != a2)
  {
    result = malloc_type_realloc(v12, v11 * a4, 0xF4063A16uLL);
    v15 = result;
    if (result)
    {
      goto LABEL_10;
    }

    if (!v13)
    {
      result = sub_298B90950(1uLL);
      v15 = result;
LABEL_10:
      if (v15 == a2)
      {
        result = sub_298B909A8(a1, v15, a4, v11, *(a1 + 8));
        v15 = result;
      }

      goto LABEL_16;
    }

LABEL_21:
    sub_298B86A40("Allocation failed");
  }

  v16 = malloc_type_malloc(v11 * a4, 0x3C0F72FBuLL);
  if (!v16)
  {
    if (v13)
    {
      goto LABEL_21;
    }

    v16 = malloc_type_malloc(1uLL, 0x3C0F72FBuLL);
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  v15 = v16;
  if (v16 == a2)
  {
    v15 = sub_298B909A8(a1, v16, a4, v11, 0);
  }

  result = memcpy(v15, *a1, *(a1 + 8) * a4);
LABEL_16:
  *a1 = v15;
  *(a1 + 12) = v11;
  return result;
}

void *sub_298B90BA4(void *a1, size_t a2)
{
  result = malloc_type_realloc(a1, a2, 0xF4063A16uLL);
  if (!result)
  {
    if (a2)
    {
      sub_298B86A40("Allocation failed");
    }

    return sub_298B90950(1uLL);
  }

  return result;
}

void sub_298B90C08(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4 == -1)
  {
    sub_298B90DC8(0xFFFFFFFFFFFFFFFFLL);
  }

  if (((2 * v4) | 1uLL) > a3)
  {
    v8 = 2 * v4 + 1;
  }

  else
  {
    v8 = a3;
  }

  v9 = *a1;
  v10 = v8 * a4;
  if (v9 == a2)
  {
    v13 = sub_298B90950(v8 * a4);
    if (v13 == a2)
    {
      v14 = sub_298B90950(v10);
      free(v13);
      v13 = v14;
    }

    memcpy(v13, *a1, *(a1 + 8) * a4);
  }

  else
  {
    v11 = sub_298B90BA4(v9, v8 * a4);
    v12 = v11;
    if (v11 == a2)
    {
      v15 = *(a1 + 8);
      v16 = sub_298B90950(v10);
      v13 = v16;
      if (v15)
      {
        memcpy(v16, v12, v15 * a4);
      }

      free(v12);
    }

    else
    {
      v13 = v11;
    }
  }

  *a1 = v13;
  *(a1 + 16) = v8;
}

void sub_298B90D10(unint64_t a1)
{
  std::to_string(&v4, a1);
  sub_298B90EB4(&v5, "SmallVector unable to grow. Requested capacity (", &v4);
  sub_298B90E1C(&v6, &v5, ") is larger than maximum value for size type (");
  std::to_string(&v3, 0xFFFFFFFFuLL);
  sub_298B90E60(&v6, &v3, &v1);
  sub_298B90E1C(&v7, &v1, ")");
  std::string::~string(&v1);
  std::string::~string(&v3);
  std::string::~string(&v6);
  std::string::~string(&v5);
  std::string::~string(&v4);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = &v7;
  sub_298B868DC(&v1, 1);
}

void sub_298B90DC8(unint64_t a1)
{
  std::to_string(&v1, a1);
  sub_298B90EB4(v3, "SmallVector capacity unable to grow. Already at maximum size ", &v1);
  std::string::~string(&v1);
  v2 = 260;
  v1.__r_.__value_.__r.__words[0] = v3;
  sub_298B868DC(&v1, 1);
}

__n128 sub_298B90E1C(std::string *a1, std::string *this, std::string::value_type *__s)
{
  v4 = std::string::append(this, __s);
  result = *v4;
  *a1 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_298B90E60@<Q0>(std::string *a1@<X0>, const std::string::value_type *a2@<X1>, std::string *a3@<X8>)
{
  v4 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::string::append(a1, a2, v5);
  result = *v6;
  *a3 = *v6->n128_u8;
  v6->n128_u64[0] = 0;
  v6->n128_u64[1] = 0;
  v6[1].n128_u64[0] = 0;
  return result;
}

__n128 sub_298B90EB4@<Q0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>, std::string *this@<X1>)
{
  v4 = std::string::insert(this, 0, __s);
  result = *v4;
  *a1 = *v4->n128_u8;
  v4->n128_u64[0] = 0;
  v4->n128_u64[1] = 0;
  v4[1].n128_u64[0] = 0;
  return result;
}

double sub_298B90EFC(uint64_t a1)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_298B90F10(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v2 + 8))(v2);
  }

  v4 = (a1 + 24);
  sub_298B64B64(&v4);
  v4 = a1;
  sub_298B93398(&v4);
  return a1;
}

unint64_t sub_298B90F9C(uint64_t *a1, unint64_t a2, int a3)
{
  v3 = *a1;
  if (!a3)
  {
    v4 = -1431655765 * ((a1[1] - v3) >> 3);
    if (v4)
    {
      a3 = 1;
      v5 = *a1;
      while (*(*v5 + 8) > a2 || *(*v5 + 16) < a2)
      {
        ++a3;
        v5 += 24;
        if (!--v4)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      a3 = 0;
    }
  }

  v6 = (v3 + 24 * (a3 - 1));
  v7 = *(*v6 + 8);
  v8 = *(*v6 + 16) - v7;
  if (v8 <= 0xFF)
  {
    v10 = v6[1];
    if (!v10)
    {
      operator new();
    }

    v11 = a2 - v7;
    v12 = *v10;
    v13 = v10[1];
    v14 = v13 - *v10;
    if (v13 == *v10)
    {
      LODWORD(v12) = 0;
    }

    else
    {
      v15 = *v10;
      do
      {
        v16 = v14 >> 1;
        v17 = &v15[v14 >> 1];
        v19 = *v17;
        v18 = v17 + 1;
        v14 += ~(v14 >> 1);
        if (v19 < (a2 - v7))
        {
          v15 = v18;
        }

        else
        {
          v14 = v16;
        }
      }

      while (v14);
      LODWORD(v12) = v15 - v12;
    }
  }

  else if (v8 >> 16)
  {
    v9 = v6[1];
    if (HIDWORD(v8))
    {
      if (!v9)
      {
        operator new();
      }

      v11 = a2 - v7;
      v27 = v9[1];
      if (v27 != *v9)
      {
        v28 = (v27 - *v9) >> 3;
        v27 = *v9;
        do
        {
          v29 = v28 >> 1;
          v30 = &v27[v28 >> 1];
          v32 = *v30;
          v31 = v30 + 1;
          v28 += ~(v28 >> 1);
          if (v32 < v11)
          {
            v27 = v31;
          }

          else
          {
            v28 = v29;
          }
        }

        while (v28);
      }

      v12 = (v27 - *v9) >> 3;
    }

    else
    {
      if (!v9)
      {
        operator new();
      }

      v11 = a2 - v7;
      v33 = v9[1];
      if (v33 != *v9)
      {
        v34 = (v33 - *v9) >> 2;
        v33 = *v9;
        do
        {
          v35 = v34 >> 1;
          v36 = &v33[v34 >> 1];
          v38 = *v36;
          v37 = v36 + 1;
          v34 += ~(v34 >> 1);
          if (v38 < v11)
          {
            v33 = v37;
          }

          else
          {
            v34 = v35;
          }
        }

        while (v34);
      }

      v12 = (v33 - *v9) >> 2;
    }
  }

  else
  {
    v20 = v6[1];
    if (!v20)
    {
      operator new();
    }

    v21 = v20[1];
    v11 = a2 - v7;
    if (v21 != *v20)
    {
      v22 = v21 - *v20;
      v21 = *v20;
      do
      {
        v23 = v22 >> 1;
        v24 = &v21[v22 >> 1];
        v26 = *v24;
        v25 = v24 + 1;
        v22 += ~(v22 >> 1);
        if (v26 < (a2 - v7))
        {
          v21 = v25;
        }

        else
        {
          v22 = v23;
        }
      }

      while (v22);
    }

    v12 = (v21 - *v20) >> 1;
  }

  v44[0] = 9216;
  memset(&v44[1], 0, 24);
  v39 = v7 - 1;
  for (i = v11; i; --i)
  {
    v41 = i - 1;
    v42 = *(v44 + ((*(v39 + i) >> 3) & 0x18)) >> *(v39 + i);
    if (v42)
    {
      return (v12 + 1) | ((v11 - v41) << 32);
    }
  }

  v41 = -1;
  return (v12 + 1) | ((v11 - v41) << 32);
}

uint64_t *sub_298B91554(uint64_t *result, unint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = result;
    v6 = -1431655765 * ((result[1] - *result) >> 3);
    if (v6)
    {
      v7 = 1;
      v8 = *result;
      while (*(*v8 + 8) > a2 || *(*v8 + 16) < a2)
      {
        ++v7;
        v8 += 24;
        if (!--v6)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v7 = 0;
    }

    sub_298B91554(result, *(*result + 24 * (v7 - 1) + 16), a3);
    v9 = a3[4];
    if (a3[3] - v9 > 0xDuLL)
    {
      qmemcpy(v9, "Included from ", 14);
      a3[4] += 14;
    }

    else
    {
      sub_298B9BCEC(a3, "Included from ", 0xEuLL);
    }

    v10 = *(*v5 + 24 * (v7 - 1));
    v12 = (*(*v10 + 16))(v10);
    v13 = v11;
    v14 = a3[4];
    if (v11 <= a3[3] - v14)
    {
      if (v11)
      {
        memcpy(v14, v12, v11);
        v14 = (a3[4] + v13);
        a3[4] = v14;
      }
    }

    else
    {
      sub_298B9BCEC(a3, v12, v11);
      v14 = a3[4];
    }

    if (a3[3] == v14)
    {
      sub_298B9BCEC(a3, ":", 1uLL);
    }

    else
    {
      *v14 = 58;
      ++a3[4];
    }

    v15 = sub_298B90F9C(v5, a2, v7);
    result = sub_298B8FC48(a3, v15, 0, 0, 0);
    v16 = a3[4];
    if (a3[3] - v16 > 1uLL)
    {
      *v16 = 2618;
      a3[4] += 2;
    }

    else
    {

      return sub_298B9BCEC(a3, ":\n", 2uLL);
    }
  }

  return result;
}

void sub_298B9178C(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, char *a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v83[4] = *MEMORY[0x29EDCA608];
  v81 = v83;
  v82 = 0x400000000;
  if (a2)
  {
    v13 = -1431655765 * ((a1[1] - *a1) >> 3);
    v73 = a4;
    if (v13)
    {
      v14 = 1;
      v15 = *a1;
      while (*(*v15 + 8) > a2 || *(*v15 + 16) < a2)
      {
        ++v14;
        v15 += 24;
        if (!--v13)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v14 = 0;
    }

    v16 = *(*a1 + 24 * (v14 - 1));
    __src = (*(*v16 + 16))(v16);
    v18 = v17;
    v19 = v16[1];
    v20 = a2;
    while (v20 != v19)
    {
      v22 = *--v20;
      v21 = v22;
      v23 = v22 == 13 || v21 == 10;
      if (v23)
      {
        v19 = (v20 + 1);
        break;
      }
    }

    v24 = v16[2];
    v25 = a2;
    if (v24 != a2)
    {
      while (1)
      {
        v26 = *v25;
        if (v26 == 10 || v26 == 13)
        {
          break;
        }

        if (++v25 == v24)
        {
          v25 = v24;
          break;
        }
      }
    }

    __len = v25 - v19;
    if (a6)
    {
      v28 = &a5[2 * a6];
      do
      {
        v30 = *a5;
        v29 = a5[1];
        if (*a5)
        {
          v31 = v30 > v25;
        }

        else
        {
          v31 = 1;
        }

        if (!v31 && v29 >= v19)
        {
          if (v30 >= v19)
          {
            v33 = *a5;
          }

          else
          {
            v33 = v19;
          }

          if (v29 <= v25)
          {
            v34 = a5[1];
          }

          else
          {
            v34 = v25;
          }

          v35 = v82;
          if (v82 >= HIDWORD(v82))
          {
            sub_298B90A44(&v81, v83, v82 + 1, 8);
            v35 = v82;
          }

          *(v81 + v35) = (v33 - v19) | ((v34 - v19) << 32);
          LODWORD(v82) = v82 + 1;
        }

        a5 += 2;
      }

      while (a5 != v28);
    }

    v36 = a1;
    v37 = sub_298B90F9C(a1, a2, v14);
    v38 = v37;
    v39 = HIDWORD(v37) - 1;
    a4 = v73;
  }

  else
  {
    __len = 0;
    v19 = 0;
    v38 = 0;
    v39 = -1;
    v18 = 9;
    __src = "<unknown>";
    v36 = a1;
  }

  sub_298B996A4(a4, __p);
  if (v79 >= 0)
  {
    v40 = __p;
  }

  else
  {
    v40 = __p[0];
  }

  if (v79 >= 0)
  {
    v41 = v79;
  }

  else
  {
    v41 = __p[1];
  }

  v42 = v82;
  *a9 = v36;
  *(a9 + 8) = a2;
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_100;
  }

  v74 = v42;
  if (v18 >= 0x17)
  {
    operator new();
  }

  v43 = (a9 + 16);
  *(a9 + 39) = v18;
  if (v18)
  {
    memmove(v43, __src, v18);
  }

  *(v43 + v18) = 0;
  *(a9 + 40) = v38;
  *(a9 + 44) = v39;
  *(a9 + 48) = a3;
  if (v41 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_100;
  }

  if (v41 >= 0x17)
  {
    operator new();
  }

  v44 = (a9 + 56);
  *(a9 + 79) = v41;
  if (v41)
  {
    memmove(v44, v40, v41);
  }

  *(v44 + v41) = 0;
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_100:
    sub_298ADDDA0();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v45 = (a9 + 80);
  *(a9 + 103) = __len;
  if (__len)
  {
    memmove(v45, v19, __len);
  }

  *(v45 + __len) = 0;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 120) = 0;
  if (v74)
  {
    operator new();
  }

  *(a9 + 128) = a9 + 144;
  *(a9 + 136) = 0x400000000;
  v46 = (40 * a8) >> 3;
  v47 = -858993459 * v46;
  if (0xCCCCCCCCCCCCCCCDLL * v46 < 5)
  {
    v57 = 0;
    v58 = 0;
    v48 = (a9 + 144);
    if (!a8)
    {
      goto LABEL_92;
    }
  }

  else
  {
    v80 = 0;
    v48 = sub_298B90848(a9 + 128, (a9 + 144), 0xCCCCCCCCCCCCCCCDLL * v46, 40, &v80);
    v49 = *(a9 + 128);
    v50 = *(a9 + 136);
    if (v50)
    {
      v51 = &v49[40 * v50];
      v52 = v48;
      do
      {
        *v52 = *v49;
        v53 = *(v49 + 1);
        v52[4] = *(v49 + 4);
        *(v52 + 1) = v53;
        *(v49 + 3) = 0;
        *(v49 + 4) = 0;
        *(v49 + 2) = 0;
        v52 += 5;
        v49 += 40;
      }

      while (v49 != v51);
      v49 = *(a9 + 128);
      v54 = *(a9 + 136);
      if (v54)
      {
        v55 = &v49[40 * v54 - 24];
        v56 = -40 * v54;
        do
        {
          if (*(v55 + 23) < 0)
          {
            operator delete(*v55);
          }

          v55 -= 40;
          v56 += 40;
        }

        while (v56);
        v49 = *(a9 + 128);
      }
    }

    v59 = v80;
    if (v49 != (a9 + 144))
    {
      free(v49);
    }

    *(a9 + 128) = v48;
    *(a9 + 140) = v59;
    v57 = *(a9 + 136);
    v58 = v57;
    if (!a8)
    {
      goto LABEL_92;
    }
  }

  v60 = (a7 + 40 * a8);
  v61 = &v48[5 * v57 + 2];
  v62 = (a7 + 16);
  do
  {
    while (1)
    {
      *(v61 - 16) = *(v62 - 1);
      if ((*(v62 + 23) & 0x80000000) == 0)
      {
        break;
      }

      sub_298AFE11C(v61, *v62, *(v62 + 1));
      v63 = v62 - 1;
      v61 += 40;
      v62 = (v62 + 40);
      if ((v63 + 40) == v60)
      {
        goto LABEL_91;
      }
    }

    v64 = *v62;
    *(v61 + 16) = *(v62 + 2);
    *v61 = v64;
    v61 += 40;
    v65 = v62 - 1;
    v62 = (v62 + 40);
  }

  while ((v65 + 40) != v60);
LABEL_91:
  v58 = *(a9 + 136);
  v48 = *(a9 + 128);
LABEL_92:
  v66 = v58 + v47;
  v23 = v66 == 0;
  *(a9 + 136) = v66;
  v67 = &v48[5 * v66];
  v68 = 126 - 2 * __clz(v66);
  if (v23)
  {
    v69 = 0;
  }

  else
  {
    v69 = v68;
  }

  sub_298B934A4(v48, v67, v69, 1);
  if (v79 < 0)
  {
    operator delete(__p[0]);
  }

  if (v81 != v83)
  {
    free(v81);
  }
}

void sub_298B91DD4(uint64_t a1, char *__s, void *a3, int a4, int a5)
{
  if (a4 && off_2A1A99568(a3))
  {
    (*(*a3 + 24))(a3, 16, 1, 0);
  }

  if (!__s || !*__s)
  {
LABEL_12:
    v12 = (a1 + 16);
    v13 = *(a1 + 39);
    v126 = a1;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v10 = strlen(__s);
  v11 = a3[4];
  if (v10 <= a3[3] - v11)
  {
    if (v10)
    {
      memcpy(v11, __s, v10);
      v11 = (a3[4] + v10);
      a3[4] = v11;
    }
  }

  else
  {
    sub_298B9BCEC(a3, __s, v10);
    v11 = a3[4];
  }

  if (a3[3] - v11 <= 1uLL)
  {
    sub_298B9BCEC(a3, ": ", 2uLL);
    goto LABEL_12;
  }

  *v11 = 8250;
  a3[4] += 2;
  v12 = (a1 + 16);
  v13 = *(a1 + 39);
  v126 = a1;
  if ((v13 & 0x8000000000000000) == 0)
  {
LABEL_13:
    if (!v13)
    {
      goto LABEL_64;
    }

    if (v13 != 1 || *v12 != 45)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_18:
  v14 = *(a1 + 24);
  if (!v14)
  {
    goto LABEL_64;
  }

  if (v14 != 1 || **v12 != 45)
  {
LABEL_24:
    if ((v13 & 0x80000000) == 0)
    {
      v16 = v12;
    }

    else
    {
      v16 = *(a1 + 16);
    }

    if ((v13 & 0x80000000) == 0)
    {
      v17 = v13;
    }

    else
    {
      v17 = *(a1 + 24);
    }

    sub_298B9BCEC(a3, v16, v17);
    if (*(a1 + 40) != -1)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_21:
  v15 = a3[4];
  if (a3[3] - v15 <= 6uLL)
  {
    sub_298B9BCEC(a3, "<stdin>", 7uLL);
    if (*(a1 + 40) == -1)
    {
      goto LABEL_62;
    }

LABEL_31:
    v18 = a3[4];
    if (v18 >= a3[3])
    {
      v19 = a3[2];
      if (!v19)
      {
        a1 = v126;
        while (*(a3 + 14))
        {
          sub_298B9AE98(a3);
          v21 = a3[4];
          if (v21 < a3[3])
          {
            a1 = v126;
            a3[4] = v21 + 1;
            *v21 = 58;
            v20 = *(v126 + 40);
            if ((v20 & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_45;
          }

          v19 = a3[2];
          if (v19)
          {
            goto LABEL_33;
          }
        }

        LOBYTE(v130[0]) = 58;
        sub_298B9BB84(a3);
        a1 = v126;
        v20 = *(v126 + 40);
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_45;
      }

LABEL_33:
      a3[4] = v19;
      sub_298B9BB84(a3);
      v18 = a3[4];
    }

    a3[4] = v18 + 1;
    *v18 = 58;
    v20 = *(a1 + 40);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_35:
      sub_298B8FC48(a3, v20, 0, 0, 0);
      if (*(a1 + 44) == -1)
      {
        goto LABEL_62;
      }

LABEL_46:
      v22 = a3[4];
      if (v22 >= a3[3])
      {
        v23 = a3[2];
        if (!v23)
        {
          a1 = v126;
          while (*(a3 + 14))
          {
            sub_298B9AE98(a3);
            v22 = a3[4];
            if (v22 < a3[3])
            {
              a1 = v126;
              goto LABEL_49;
            }

            v23 = a3[2];
            if (v23)
            {
              goto LABEL_48;
            }
          }

          LOBYTE(v130[0]) = 58;
          sub_298B9BB84(a3);
          a1 = v126;
          v24 = *(v126 + 44);
          if (v24 >= -1)
          {
            goto LABEL_50;
          }

          goto LABEL_60;
        }

LABEL_48:
        a3[4] = v23;
        sub_298B9BB84(a3);
        v22 = a3[4];
      }

LABEL_49:
      a3[4] = v22 + 1;
      *v22 = 58;
      v24 = *(a1 + 44);
      if (v24 >= -1)
      {
LABEL_50:
        v25 = v24 + 1;
        v26 = a3;
        v27 = 0;
LABEL_61:
        sub_298B8FC48(v26, v25, 0, 0, v27);
        goto LABEL_62;
      }

LABEL_60:
      v25 = ~v24;
      v26 = a3;
      v27 = 1;
      goto LABEL_61;
    }

LABEL_45:
    sub_298B8FC48(a3, -v20, 0, 0, 1);
    if (*(a1 + 44) == -1)
    {
      goto LABEL_62;
    }

    goto LABEL_46;
  }

  *(v15 + 3) = 1047423332;
  *v15 = 1685353276;
  a3[4] += 7;
  if (*(a1 + 40) != -1)
  {
    goto LABEL_31;
  }

LABEL_62:
  v28 = a3[4];
  if (a3[3] - v28 <= 1uLL)
  {
    sub_298B9BCEC(a3, ": ", 2uLL);
LABEL_64:
    if (!a4)
    {
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  *v28 = 8250;
  a3[4] += 2;
  if (!a4)
  {
    goto LABEL_69;
  }

LABEL_67:
  if (off_2A1A99568(a3))
  {
    (*(*a3 + 32))(a3);
  }

LABEL_69:
  if (!a5)
  {
    goto LABEL_87;
  }

  v29 = *(a1 + 48);
  if (v29 <= 1)
  {
    if (!v29)
    {
      if (a4 && off_2A1A99568(a3))
      {
        (*(*a3 + 24))(a3, 1, 1, 0);
      }

      v32 = a3[4];
      if (a3[3] - v32 > 6uLL)
      {
        qmemcpy(v32, "error: ", 7);
        a3[4] += 7;
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        sub_298B9BCEC(a3, "error: ", 7uLL);
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_108;
    }

    if (v29 == 1)
    {
      if (a4 && off_2A1A99568(a3))
      {
        (*(*a3 + 24))(a3, 5, 1, 0);
      }

      v30 = a3[4];
      if (a3[3] - v30 > 8uLL)
      {
        qmemcpy(v30, "warning: ", 9);
        a3[4] += 9;
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        sub_298B9BCEC(a3, "warning: ", 9uLL);
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_108;
    }

LABEL_87:
    if ((a4 & 1) == 0)
    {
      goto LABEL_112;
    }

    goto LABEL_110;
  }

  if (v29 != 2)
  {
    if (v29 == 3)
    {
      if (a4 && off_2A1A99568(a3))
      {
        (*(*a3 + 24))(a3, 0, 1, 0);
      }

      v31 = a3[4];
      if (a3[3] - v31 > 5uLL)
      {
        qmemcpy(v31, "note: ", 6);
        a3[4] += 6;
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      else
      {
        sub_298B9BCEC(a3, "note: ", 6uLL);
        if (!a4)
        {
          goto LABEL_112;
        }
      }

      goto LABEL_108;
    }

    goto LABEL_87;
  }

  if (a4 && off_2A1A99568(a3))
  {
    (*(*a3 + 24))(a3, 4, 1, 0);
  }

  v33 = a3[4];
  if (a3[3] - v33 > 7uLL)
  {
    *v33 = 0x203A6B72616D6572;
    a3[4] += 8;
    if (!a4)
    {
      goto LABEL_112;
    }
  }

  else
  {
    sub_298B9BCEC(a3, "remark: ", 8uLL);
    if (!a4)
    {
      goto LABEL_112;
    }
  }

LABEL_108:
  if (off_2A1A99568(a3))
  {
    (*(*a3 + 32))(a3);
  }

LABEL_110:
  if (off_2A1A99568(a3))
  {
    (*(*a3 + 24))(a3, 16, 1, 0);
  }

LABEL_112:
  v34 = *(a1 + 79);
  if (v34 >= 0)
  {
    v35 = (a1 + 56);
  }

  else
  {
    v35 = *(a1 + 56);
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 79);
  }

  else
  {
    v36 = *(a1 + 64);
  }

  sub_298B9BCEC(a3, v35, v36);
  v37 = a3[4];
  if (v37 >= a3[3])
  {
    while (1)
    {
      v38 = a3[2];
      if (v38)
      {
        a3[4] = v38;
        sub_298B9BB84(a3);
        v39 = a3[4];
        a3[4] = v39 + 1;
        *v39 = 10;
        if (!a4)
        {
          goto LABEL_127;
        }

        goto LABEL_125;
      }

      if (!*(a3 + 14))
      {
        break;
      }

      sub_298B9AE98(a3);
      v37 = a3[4];
      if (v37 < a3[3])
      {
        goto LABEL_119;
      }
    }

    LOBYTE(v130[0]) = 10;
    sub_298B9BB84(a3);
    if (a4)
    {
      goto LABEL_125;
    }
  }

  else
  {
LABEL_119:
    a3[4] = v37 + 1;
    *v37 = 10;
    if (a4)
    {
LABEL_125:
      if (off_2A1A99568(a3))
      {
        (*(*a3 + 32))(a3);
      }
    }
  }

LABEL_127:
  if (*(a1 + 40) == -1 || *(a1 + 44) == -1)
  {
    return;
  }

  v40 = *(a1 + 103);
  if (v40 >= 0)
  {
    v41 = a1 + 80;
  }

  else
  {
    v41 = *(a1 + 80);
  }

  v127 = (a1 + 80);
  if (v40 >= 0)
  {
    v42 = *(a1 + 103);
  }

  else
  {
    v42 = *(a1 + 88);
  }

  if (v42)
  {
    for (i = 0; i != v42; ++i)
    {
      if (*(v41 + i) < 0)
      {
        sub_298B93178(a3, v41, v42);
        return;
      }
    }

    v44 = v42 + 1;
    if (v42 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_298ADDDA0();
    }

    if (v44 >= 0x17)
    {
      operator new();
    }

    *(&__b.__r_.__value_.__s + 23) = v42 + 1;
    if (v42 == -1)
    {
      v45 = a4;
      goto LABEL_147;
    }
  }

  else
  {
    v44 = 1;
    *(&__b.__r_.__value_.__s + 23) = 1;
  }

  v45 = a4;
  memset(&__b, 32, v44);
LABEL_147:
  __b.__r_.__value_.__s.__data_[v44] = 0;
  v46 = *(a1 + 104);
  for (j = *(a1 + 112); v46 != j; v46 += 2)
  {
    size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v49 = *v46;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __b.__r_.__value_.__l.__size_;
    }

    if (size >= v46[1])
    {
      size = v46[1];
    }

    if ((size - v49) >= 1)
    {
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__r_.__value_.__r.__words[0];
      }

      memset(p_b + v49, 126, size - v49);
    }
  }

  memset(&v128, 0, sizeof(v128));
  v51 = *(a1 + 136);
  v52 = *(a1 + 103);
  if (v52 < 0)
  {
    v52 = *(a1 + 88);
  }

  v53 = v45;
  v54 = *(a1 + 44);
  if (v51)
  {
    v123 = v42;
    v124 = v45;
    v55 = 0;
    v56 = *(a1 + 128);
    v57 = *(a1 + 8) - v54;
    v58 = v57 + v52;
    v59 = &v56[5 * v51];
    v125 = v59;
    do
    {
      v60 = v56[2];
      v61 = *(v56 + 39);
      v62 = v61;
      v63 = v56[3];
      memset(&v130[1], 0, 24);
      v130[0] = 9728;
      if ((v61 & 0x80u) == 0)
      {
        v64 = (v56 + 2);
      }

      else
      {
        v64 = v60;
      }

      if ((v61 & 0x80u) == 0)
      {
        v65 = v61;
      }

      else
      {
        v65 = v63;
      }

      if (!v65)
      {
        goto LABEL_177;
      }

      v66 = 0;
      while (((*(v130 + ((*(v64 + v66) >> 3) & 0x18)) >> *(v64 + v66)) & 1) == 0)
      {
        if (v65 == ++v66)
        {
          goto LABEL_177;
        }
      }

      if (v66 == -1)
      {
LABEL_177:
        v67 = *v56;
        v68 = v56[1];
        if (v58 >= *v56 && v68 >= v57)
        {
          if (v67 >= v57)
          {
            v70 = (v67 - v57);
          }

          else
          {
            v70 = 0;
          }

          if (v55 > v70)
          {
            v71 = (v55 + 1);
          }

          else
          {
            v71 = v70;
          }

          v55 = (v71 + v65);
          v72 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
          if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v72 = v128.__r_.__value_.__l.__size_;
          }

          if (v72 < v55)
          {
            std::string::resize(&v128, v55, 32);
            v61 = *(v56 + 39);
            v63 = v56[3];
            v62 = *(v56 + 39);
          }

          if (v62 >= 0)
          {
            v73 = v61;
          }

          else
          {
            v73 = v63;
          }

          if (v73)
          {
            v74 = &v128;
            if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v74 = v128.__r_.__value_.__r.__words[0];
            }

            if (v62 >= 0)
            {
              v75 = v56 + 2;
            }

            else
            {
              v75 = v56[2];
            }

            memmove(v74 + v71, v75, v73);
          }

          if (v58 <= v68)
          {
            v76 = v58;
          }

          else
          {
            v76 = v68;
          }

          v77 = (v76 - v57) - v70;
          if (v77 >= 1)
          {
            v78 = &__b;
            if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v78 = __b.__r_.__value_.__r.__words[0];
            }

            memset(v78 + v70, 126, v77);
          }

          v59 = v125;
          a1 = v126;
        }
      }

      v56 += 5;
    }

    while (v56 != v59);
    LODWORD(v54) = *(a1 + 44);
    v53 = v124;
    v42 = v123;
  }

  if (v42 >= v54)
  {
    v81 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v81 = __b.__r_.__value_.__r.__words[0];
    }

    v80 = v81 + v54;
  }

  else
  {
    v79 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v79 = __b.__r_.__value_.__r.__words[0];
    }

    v80 = v79 + v42;
  }

  *v80 = 94;
  v82 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  v83 = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v82 = __b.__r_.__value_.__l.__size_;
    v83 = __b.__r_.__value_.__r.__words[0];
  }

  v84 = &v83[-1].__r_.__value_.__r.__words[2] + 7;
  while (v82)
  {
    v85 = v84[v82--];
    if (v85 != 32)
    {
      v86 = v82 + 1;
      goto LABEL_224;
    }
  }

  v86 = 0;
LABEL_224:
  std::string::erase(&__b, v86, 0xFFFFFFFFFFFFFFFFLL);
  v87 = *(a1 + 103);
  if (v87 >= 0)
  {
    v88 = v127;
  }

  else
  {
    v88 = *(a1 + 80);
  }

  if (v87 >= 0)
  {
    v89 = *(a1 + 103);
  }

  else
  {
    v89 = *(a1 + 88);
  }

  sub_298B93178(a3, v88, v89);
  if (v53 && off_2A1A99568(a3))
  {
    (*(*a3 + 24))(a3, 2, 1, 0);
  }

  v90 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v90 = __b.__r_.__value_.__r.__words[1];
  }

  v91 = v90;
  if (v90)
  {
    v92 = 0;
    v93 = 0;
    do
    {
      v96 = *(a1 + 103);
      if ((v96 & 0x8000000000000000) != 0)
      {
        if (*(a1 + 88) <= v92)
        {
          goto LABEL_253;
        }
      }

      else if (v96 <= v92)
      {
        goto LABEL_253;
      }

      if ((v96 & 0x80000000) != 0)
      {
        if (*(*v127 + v92) == 9)
        {
          goto LABEL_259;
        }
      }

      else if (*(v127 + v92) == 9)
      {
        do
        {
LABEL_259:
          while (1)
          {
            v100 = (__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__b : __b.__r_.__value_.__r.__words[0];
            v101 = v100->__r_.__value_.__s.__data_[v92];
            v99 = a3[4];
            if (v99 >= a3[3])
            {
              break;
            }

LABEL_258:
            a3[4] = v99 + 1;
            *v99 = v101;
            if ((++v93 & 7) == 0)
            {
              goto LABEL_244;
            }
          }

          while (1)
          {
            v102 = a3[2];
            if (v102)
            {
              a3[4] = v102;
              sub_298B9BB84(a3);
              v99 = a3[4];
              goto LABEL_258;
            }

            if (!*(a3 + 14))
            {
              break;
            }

            sub_298B9AE98(a3);
            v99 = a3[4];
            if (v99 < a3[3])
            {
              goto LABEL_258;
            }
          }

          LOBYTE(v130[0]) = v101;
          sub_298B9BB84(a3);
          ++v93;
        }

        while ((v93 & 7) != 0);
        goto LABEL_244;
      }

LABEL_253:
      if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v97 = &__b;
      }

      else
      {
        v97 = __b.__r_.__value_.__r.__words[0];
      }

      v98 = v97->__r_.__value_.__s.__data_[v92];
      while (1)
      {
        v94 = a3[4];
        if (v94 < a3[3])
        {
          goto LABEL_242;
        }

        v95 = a3[2];
        if (v95)
        {
          a3[4] = v95;
          sub_298B9BB84(a3);
          v94 = a3[4];
LABEL_242:
          a3[4] = v94 + 1;
          *v94 = v98;
          goto LABEL_243;
        }

        if (!*(a3 + 14))
        {
          break;
        }

        sub_298B9AE98(a3);
      }

      LOBYTE(v130[0]) = v98;
      sub_298B9BB84(a3);
LABEL_243:
      ++v93;
LABEL_244:
      ++v92;
    }

    while (v92 != v91);
  }

  v103 = a3[4];
  if (v103 >= a3[3])
  {
    v104 = a3[2];
    if (!v104)
    {
      a1 = v126;
      while (*(a3 + 14))
      {
        sub_298B9AE98(a3);
        v120 = a3[4];
        if (v120 < a3[3])
        {
          a1 = v126;
          a3[4] = v120 + 1;
          *v120 = 10;
          if (v53)
          {
            goto LABEL_274;
          }

          goto LABEL_276;
        }

        v104 = a3[2];
        if (v104)
        {
          goto LABEL_272;
        }
      }

      LOBYTE(v130[0]) = 10;
      sub_298B9BB84(a3);
      a1 = v126;
      if (v53)
      {
        goto LABEL_274;
      }

      goto LABEL_276;
    }

LABEL_272:
    a3[4] = v104;
    sub_298B9BB84(a3);
    v103 = a3[4];
  }

  a3[4] = v103 + 1;
  *v103 = 10;
  if (v53)
  {
LABEL_274:
    if (off_2A1A99568(a3))
    {
      (*(*a3 + 32))(a3);
    }
  }

LABEL_276:
  v105 = SHIBYTE(v128.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v105 = v128.__r_.__value_.__l.__size_;
    if (!v128.__r_.__value_.__l.__size_)
    {
      goto LABEL_335;
    }
  }

  else if (!*(&v128.__r_.__value_.__s + 23))
  {
    goto LABEL_336;
  }

  v106 = 0;
  v107 = 0;
  do
  {
    v110 = *(a1 + 103);
    if ((v110 & 0x8000000000000000) != 0)
    {
      if (v107 >= *(a1 + 88))
      {
LABEL_295:
        v111 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
        v112 = v128.__r_.__value_.__r.__words[0];
LABEL_296:
        if (v111 >= 0)
        {
          v113 = &v128;
        }

        else
        {
          v113 = v112;
        }

        v114 = v113->__r_.__value_.__s.__data_[v107];
        while (1)
        {
          v108 = a3[4];
          if (v108 < a3[3])
          {
            goto LABEL_286;
          }

          v109 = a3[2];
          if (v109)
          {
            a3[4] = v109;
            sub_298B9BB84(a3);
            v108 = a3[4];
LABEL_286:
            a3[4] = v108 + 1;
            *v108 = v114;
            goto LABEL_287;
          }

          if (!*(a3 + 14))
          {
            break;
          }

          sub_298B9AE98(a3);
        }

        LOBYTE(v130[0]) = v114;
        sub_298B9BB84(a3);
LABEL_287:
        ++v106;
        goto LABEL_288;
      }
    }

    else if (v107 >= v110)
    {
      goto LABEL_295;
    }

    if ((v110 & 0x80000000) != 0)
    {
      v111 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
      v112 = v128.__r_.__value_.__r.__words[0];
      if (*(*v127 + v107) != 9)
      {
        goto LABEL_296;
      }
    }

    else
    {
      v111 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
      v112 = v128.__r_.__value_.__r.__words[0];
      if (*(v127 + v107) != 9)
      {
        goto LABEL_296;
      }
    }

    do
    {
      if (v111 >= 0)
      {
        v115 = &v128;
      }

      else
      {
        v115 = v112;
      }

      v116 = v115->__r_.__value_.__s.__data_[v107];
      v117 = a3[4];
      if (v117 < a3[3])
      {
LABEL_310:
        a3[4] = v117 + 1;
        *v117 = v116;
      }

      else
      {
        while (1)
        {
          v118 = a3[2];
          if (v118)
          {
            a3[4] = v118;
            sub_298B9BB84(a3);
            v117 = a3[4];
            goto LABEL_310;
          }

          if (!*(a3 + 14))
          {
            break;
          }

          sub_298B9AE98(a3);
          v117 = a3[4];
          if (v117 < a3[3])
          {
            goto LABEL_310;
          }
        }

        LOBYTE(v130[0]) = v116;
        sub_298B9BB84(a3);
      }

      v111 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
      v112 = v128.__r_.__value_.__r.__words[0];
      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v119 = &v128;
      }

      else
      {
        v119 = v128.__r_.__value_.__r.__words[0];
      }

      if (v119->__r_.__value_.__s.__data_[v107] != 32)
      {
        ++v107;
      }

      ++v106;
    }

    while ((v106 & 7) != 0 && v107 != v105);
LABEL_288:
    ++v107;
  }

  while (v107 < v105);
  while (1)
  {
    v121 = a3[4];
    if (v121 < a3[3])
    {
      break;
    }

    v122 = a3[2];
    if (v122)
    {
      a3[4] = v122;
      sub_298B9BB84(a3);
      v121 = a3[4];
      break;
    }

    if (!*(a3 + 14))
    {
      LOBYTE(v130[0]) = 10;
      sub_298B9BB84(a3);
      goto LABEL_335;
    }

    sub_298B9AE98(a3);
  }

  a3[4] = v121 + 1;
  *v121 = 10;
LABEL_335:
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_337:
      operator delete(__b.__r_.__value_.__l.__data_);
    }
  }

  else
  {
LABEL_336:
    if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_337;
    }
  }
}

void sub_298B92F74(uint64_t *a1, void *a2, unsigned __int8 *a3, int a4, char *a5, unint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v33[20] = *MEMORY[0x29EDCA608];
  sub_298B9178C(a1, a3, a4, a5, a6, a7, a9, a10, v21);
  v13 = a1[6];
  if (v13)
  {
    v13(v21, a1[7]);
    v14 = v31;
    v15 = v32;
    if (!v32)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v22)
  {
    v16 = -1431655765 * ((a1[1] - *a1) >> 3);
    if (v16)
    {
      v17 = 0;
      v18 = *a1;
      while (*(*v18 + 8) > v22 || *(*v18 + 16) < v22)
      {
        ++v17;
        v18 += 24;
        if (v16 == v17)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v17 = 0xFFFFFFFFLL;
    }

    sub_298B91554(a1, *(*a1 + 24 * v17 + 16), a2);
  }

  sub_298B91DD4(v21, 0, a2, a11, 1);
  v14 = v31;
  v15 = v32;
  if (v32)
  {
LABEL_14:
    v19 = &v14[5 * v15 - 3];
    v20 = -40 * v15;
    do
    {
      if (*(v19 + 23) < 0)
      {
        operator delete(*v19);
      }

      v19 -= 40;
      v20 += 40;
    }

    while (v20);
    v14 = v31;
  }

LABEL_19:
  if (v14 != v33)
  {
    free(v14);
  }

  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
    if ((v26 & 0x80000000) == 0)
    {
LABEL_25:
      if ((v24 & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(v23);
      return;
    }
  }

  else if ((v26 & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v25);
  if (v24 < 0)
  {
    goto LABEL_29;
  }
}

void *sub_298B93178(void *result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  if (!a3)
  {
    goto LABEL_38;
  }

  v6 = 0;
  v7 = 0;
LABEL_4:
  v8 = v6;
  if (a3 > v6)
  {
    v9 = memchr((a2 + v6), 9, a3 - v6);
    v10 = &v9[-a2];
    if (v9 && v10 + 1 != 0)
    {
      if (v10 <= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = &v9[-a2];
      }

      if (v12 >= a3)
      {
        v12 = a3;
      }

      v13 = v12 - v8;
      result = v4[4];
      if (v12 - v8 <= v4[3] - result)
      {
        if (v12 != v8)
        {
          v14 = v12 - v8;
          result = memcpy(result, (a2 + v8), v13);
          v4[4] += v14;
        }
      }

      else
      {
        result = sub_298B9BCEC(v4, (a2 + v8), v13);
      }

      v7 = v7 - v8 + v10;
      while (1)
      {
        while (1)
        {
          v15 = v4[4];
          if (v15 >= v4[3])
          {
            break;
          }

LABEL_22:
          v4[4] = v15 + 1;
          *v15 = 32;
          if ((++v7 & 7) == 0)
          {
            goto LABEL_3;
          }
        }

        v16 = v4[2];
        if (v16)
        {
          v4[4] = v16;
          result = sub_298B9BB84(v4);
          v15 = v4[4];
          goto LABEL_22;
        }

        if (*(v4 + 14))
        {
          result = sub_298B9AE98(v4);
        }

        else
        {
          result = sub_298B9BB84(v4);
          if ((++v7 & 7) == 0)
          {
LABEL_3:
            v6 = v10 + 1;
            if (v10 + 1 == a3)
            {
              goto LABEL_38;
            }

            goto LABEL_4;
          }
        }
      }
    }
  }

  if (a3 >= v8)
  {
    v17 = v8;
  }

  else
  {
    v17 = a3;
  }

  v18 = a3 - v17;
  result = v4[4];
  if (a3 - v17 <= v4[3] - result)
  {
    if (a3 > v8)
    {
      v19 = (a2 + v17);
      v20 = a3 - v17;
      result = memcpy(result, v19, v18);
      v4[4] += v20;
    }
  }

  else
  {
    result = sub_298B9BCEC(v4, (a2 + v17), v18);
  }

  while (1)
  {
LABEL_38:
    v22 = v4[4];
    if (v22 < v4[3])
    {
      goto LABEL_41;
    }

    v21 = v4[2];
    if (v21)
    {
      v4[4] = v21;
      result = sub_298B9BB84(v4);
      v22 = v4[4];
LABEL_41:
      v4[4] = v22 + 1;
      *v22 = 10;
      return result;
    }

    if (!*(v4 + 14))
    {
      return sub_298B9BB84(v4);
    }

    result = sub_298B9AE98(v4);
  }
}

void sub_298B93398(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_298B933EC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_298B933EC(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  if (v3 != *result)
  {
    do
    {
      v4 = *(v3 - 2);
      if (v4)
      {
        v5 = *v4;
        if (*v4)
        {
          *(v4 + 8) = v5;
          operator delete(v5);
        }

        MEMORY[0x29C2945F0](v4, 0x10C402FEFCB83);
        *(v3 - 2) = 0;
      }

      v6 = *(v3 - 3);
      v3 -= 3;
      result = v6;
      *v3 = 0;
      if (v6)
      {
        result = (*(*result + 8))(result);
      }
    }

    while (v3 != v2);
  }

  v1[1] = v2;
  return result;
}

void sub_298B934A4(uint64_t *a1, uint64_t *a2, char *a3, char a4)
{
  v437 = *MEMORY[0x29EDCA608];
LABEL_2:
  v7 = (a2 - 5);
  v407 = (a2 - 15);
  v409 = (a2 - 10);
  v405 = (a2 - 3);
  j = a1;
  v418 = a2;
  v411 = (a2 - 5);
  while (1)
  {
    a1 = j;
    v9 = a2 - j;
    v10 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - j) >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          sub_298B94EDC(a1, a1 + 5, v7);
          return;
        case 4:

          sub_298B95484(a1, (a1 + 5), a1 + 5, v7);
          return;
        case 5:

          sub_298B957D0(a1, (a1 + 5), a1 + 5, (a1 + 15), v7);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v169 = (a2 - 5);
        v168 = *(a2 - 5);
        v170 = v168 >= *a1;
        if (v168 == *a1 && (v171 = *(a2 - 4), v172 = a1[1], v170 = v171 >= v172, v171 == v172))
        {
          v395 = *(a1 + 39);
          v396 = *(a2 - 1);
          if (v396 >= 0)
          {
            v397 = *(a2 - 1);
          }

          else
          {
            v397 = *(a2 - 2);
          }

          if (v396 >= 0)
          {
            v398 = (a2 - 3);
          }

          else
          {
            v398 = *(a2 - 3);
          }

          if (v395 >= 0)
          {
            v399 = *(a1 + 39);
          }

          else
          {
            v399 = a1[3];
          }

          if (v395 >= 0)
          {
            v400 = a1 + 2;
          }

          else
          {
            v400 = a1[2];
          }

          if (v399 >= v397)
          {
            v401 = v397;
          }

          else
          {
            v401 = v399;
          }

          v402 = memcmp(v398, v400, v401);
          v403 = v397 < v399;
          if (v402)
          {
            v403 = v402 < 0;
          }

          if (v403)
          {
LABEL_316:
            v428 = *a1;
            v173 = a1[2];
            *&v436 = a1[3];
            *(&v436 + 7) = *(a1 + 31);
            v174 = *(a1 + 39);
            a1[3] = 0;
            a1[4] = 0;
            a1[2] = 0;
            *a1 = *v169;
            v175 = *(a2 - 3);
            a1[4] = *(a2 - 1);
            *(a1 + 1) = v175;
            *v169 = v428;
            *(a2 - 3) = v173;
            v176 = v436;
            *(a2 - 9) = *(&v436 + 7);
            *(a2 - 2) = v176;
            *(a2 - 1) = v174;
          }
        }

        else if (!v170)
        {
          goto LABEL_316;
        }

        return;
      }
    }

    if (v9 <= 959)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v180 = (v10 - 2) >> 1;
      v181 = v180;
      while (1)
      {
        v184 = v181;
        if (v180 < v181)
        {
          goto LABEL_331;
        }

        v185 = (2 * v181) | 1;
        v182 = &a1[5 * v185];
        v186 = 2 * v181 + 2;
        if (v186 < v10)
        {
          v187 = v182[5];
          v188 = *v182 >= v187;
          if (*v182 == v187 && (v189 = v182[1], v190 = v182[6], v188 = v189 >= v190, v189 == v190))
          {
            v236 = *(v182 + 79);
            v237 = *(v182 + 39);
            if (v237 >= 0)
            {
              v238 = v182 + 2;
            }

            else
            {
              v238 = v182[2];
            }

            v421 = v184;
            if (v237 >= 0)
            {
              v239 = *(v182 + 39);
            }

            else
            {
              v239 = v182[3];
            }

            if (v236 >= 0)
            {
              v240 = *(v182 + 79);
            }

            else
            {
              v240 = v182[8];
            }

            if (v236 >= 0)
            {
              v241 = v182 + 7;
            }

            else
            {
              v241 = v182[7];
            }

            if (v240 >= v239)
            {
              v242 = v239;
            }

            else
            {
              v242 = v240;
            }

            v243 = memcmp(v238, v241, v242);
            v180 = (v10 - 2) >> 1;
            v184 = v421;
            v244 = v239 < v240;
            if (v243)
            {
              v244 = v243 < 0;
            }

            if (!v244)
            {
              goto LABEL_338;
            }
          }

          else if (v188)
          {
            goto LABEL_338;
          }

          v182 += 5;
          v185 = v186;
        }

LABEL_338:
        v191 = &a1[5 * v184];
        v192 = *v182 >= *v191;
        if (*v182 == *v191 && (v193 = v182[1], v194 = v191[1], v192 = v193 >= v194, v193 == v194))
        {
          v226 = *(v191 + 39);
          v227 = *(v182 + 39);
          if (v227 >= 0)
          {
            v228 = *(v182 + 39);
          }

          else
          {
            v228 = v182[3];
          }

          if (v227 >= 0)
          {
            v229 = v182 + 2;
          }

          else
          {
            v229 = v182[2];
          }

          v230 = v184;
          if (v226 >= 0)
          {
            v231 = *(v191 + 39);
          }

          else
          {
            v231 = v191[3];
          }

          if (v226 >= 0)
          {
            v232 = v191 + 2;
          }

          else
          {
            v232 = v191[2];
          }

          if (v231 >= v228)
          {
            v233 = v228;
          }

          else
          {
            v233 = v231;
          }

          v234 = memcmp(v229, v232, v233);
          v180 = (v10 - 2) >> 1;
          v184 = v230;
          v235 = v228 < v231;
          if (v234)
          {
            v235 = v234 < 0;
          }

          if (v235)
          {
            goto LABEL_331;
          }
        }

        else if (!v192)
        {
          goto LABEL_331;
        }

        v420 = v184;
        v429 = *v191;
        v195 = *(v191 + 1);
        v434 = v191[4];
        v433 = v195;
        v191[3] = 0;
        v191[4] = 0;
        v191[2] = 0;
        v197 = *(&v429 + 1);
        v196 = v429;
        *v191 = *v182;
        v198 = v182 + 2;
        v199 = *(v182 + 1);
        v191[4] = v182[4];
        *(v191 + 1) = v199;
        *(v182 + 39) = 0;
        *(v182 + 16) = 0;
        if (v180 >= v185)
        {
          if (v434 >= 0)
          {
            v200 = HIBYTE(v434);
          }

          else
          {
            v200 = *(&v433 + 1);
          }

          if (v434 >= 0)
          {
            v201 = &v433;
          }

          else
          {
            v201 = v433;
          }

          v406 = v201;
          v408 = v200;
          while (1)
          {
            v204 = v182;
            v205 = 2 * v185;
            v185 = (2 * v185) | 1;
            v182 = &a1[5 * v185];
            v206 = v205 + 2;
            if (v205 + 2 >= v10)
            {
              goto LABEL_351;
            }

            v207 = v182[5];
            v208 = *v182 >= v207;
            if (*v182 != v207)
            {
              break;
            }

            v209 = v182[1];
            v210 = v182[6];
            v208 = v209 >= v210;
            if (v209 != v210)
            {
              break;
            }

            v218 = *(v182 + 79);
            v219 = *(v182 + 39);
            if ((v219 & 0x80u) == 0)
            {
              v220 = v182 + 2;
            }

            else
            {
              v220 = v182[2];
            }

            if ((v219 & 0x80u) != 0)
            {
              v219 = v182[3];
            }

            if (v218 >= 0)
            {
              v221 = *(v182 + 79);
            }

            else
            {
              v221 = v182[8];
            }

            if (v218 >= 0)
            {
              v222 = v182 + 7;
            }

            else
            {
              v222 = v182[7];
            }

            v404 = v219;
            if (v221 >= v219)
            {
              v223 = v219;
            }

            else
            {
              v223 = v221;
            }

            v224 = memcmp(v220, v222, v223);
            v197 = *(&v429 + 1);
            v196 = v429;
            v180 = (v10 - 2) >> 1;
            v26 = v404 >= v221;
            a2 = v418;
            v225 = !v26;
            if (v224)
            {
              v225 = v224 < 0;
            }

            if (v225)
            {
              goto LABEL_350;
            }

LABEL_351:
            v202 = *v182 >= v196;
            if (*v182 == v196 && (v211 = v182[1], v202 = v211 >= v197, v211 == v197))
            {
              v212 = *(v182 + 39);
              if (v212 >= 0)
              {
                v213 = *(v182 + 39);
              }

              else
              {
                v213 = v182[3];
              }

              if (v212 >= 0)
              {
                v214 = v182 + 2;
              }

              else
              {
                v214 = v182[2];
              }

              if (v408 >= v213)
              {
                v215 = v213;
              }

              else
              {
                v215 = v408;
              }

              v216 = memcmp(v214, v406, v215);
              v197 = *(&v429 + 1);
              v196 = v429;
              v180 = (v10 - 2) >> 1;
              v217 = v213 < v408;
              if (v216)
              {
                v217 = v216 < 0;
              }

              if (v217)
              {
LABEL_329:
                v182 = v204;
                goto LABEL_330;
              }
            }

            else if (!v202)
            {
              goto LABEL_329;
            }

            *v204 = *v182;
            v198 = v182 + 2;
            v203 = *(v182 + 1);
            v204[4] = v182[4];
            *(v204 + 1) = v203;
            *(v182 + 39) = 0;
            *(v182 + 16) = 0;
            if (v180 < v185)
            {
              goto LABEL_330;
            }
          }

          if (v208)
          {
            goto LABEL_351;
          }

LABEL_350:
          v182 += 5;
          v185 = v206;
          goto LABEL_351;
        }

LABEL_330:
        *v182 = v429;
        v183 = v433;
        v198[2] = v434;
        *v198 = v183;
        v184 = v420;
LABEL_331:
        v181 = v184 - 1;
        if (!v184)
        {
          v245 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 3);
          while (1)
          {
            v248 = 0;
            v436 = *a1;
            v413 = a1[2];
            __s2a = a2;
            v435[0] = a1[3];
            *(v435 + 7) = *(a1 + 31);
            v422 = *(a1 + 39);
            a1[3] = 0;
            a1[4] = 0;
            v249 = a1;
            a1[2] = 0;
            do
            {
              v251 = v249;
              v252 = (v249 + 40 * v248);
              v249 = (v252 + 5);
              v253 = 2 * v248;
              v248 = (2 * v248) | 1;
              v254 = v253 + 2;
              if (v253 + 2 < v245)
              {
                v256 = v252 + 10;
                v255 = v252[10];
                v257 = v252[5];
                v258 = v257 >= v255;
                if (v257 == v255 && (v259 = v252[6], v260 = v252[11], v258 = v259 >= v260, v259 == v260))
                {
                  v263 = v252[7];
                  v261 = v252 + 7;
                  v262 = v263;
                  v264 = *(v261 + 63);
                  v265 = *(v261 + 23);
                  if (v265 >= 0)
                  {
                    v266 = *(v261 + 23);
                  }

                  else
                  {
                    v266 = v261[1];
                  }

                  if (v265 >= 0)
                  {
                    v267 = v261;
                  }

                  else
                  {
                    v267 = v262;
                  }

                  if (v264 >= 0)
                  {
                    v268 = *(v261 + 63);
                  }

                  else
                  {
                    v268 = v261[6];
                  }

                  if (v264 >= 0)
                  {
                    v269 = v261 + 5;
                  }

                  else
                  {
                    v269 = v261[5];
                  }

                  if (v268 >= v266)
                  {
                    v270 = v266;
                  }

                  else
                  {
                    v270 = v268;
                  }

                  v271 = memcmp(v267, v269, v270);
                  v272 = v266 < v268;
                  if (v271)
                  {
                    v272 = v271 < 0;
                  }

                  if (v272)
                  {
LABEL_438:
                    v249 = v256;
                    v248 = v254;
                  }
                }

                else if (!v258)
                {
                  goto LABEL_438;
                }
              }

              *v251 = *v249;
              v250 = *(v249 + 16);
              *(v251 + 32) = *(v249 + 32);
              *(v251 + 16) = v250;
              *(v249 + 39) = 0;
              *(v249 + 16) = 0;
            }

            while (v248 <= (v245 - 2) / 2);
            v273 = (__s2a - 5);
            v419 = (__s2a - 5);
            if (v249 == __s2a - 5)
            {
              *v249 = v436;
              v246 = v435[0];
              *(v249 + 16) = v413;
              *(v249 + 24) = v246;
              *(v249 + 31) = *(v435 + 7);
              *(v249 + 39) = v422;
            }

            else
            {
              v274 = (v249 + 16);
              *v249 = *v273;
              v275 = *(__s2a - 3);
              *(v249 + 32) = *(__s2a - 1);
              *(v249 + 16) = v275;
              *v273 = v436;
              *(__s2a - 3) = v413;
              v276 = v435[0];
              *(__s2a - 9) = *(v435 + 7);
              *(__s2a - 2) = v276;
              *(__s2a - 1) = v422;
              v277 = v249 - a1 + 40;
              if (v277 >= 41)
              {
                v278 = -2 - 0x3333333333333333 * (v277 >> 3);
                v279 = v278 >> 1;
                v280 = &a1[5 * (v278 >> 1)];
                v281 = *v280 >= *v249;
                if (*v280 == *v249 && (v282 = v280[1], v283 = *(v249 + 8), v281 = v282 >= v283, v282 == v283))
                {
                  v302 = *(v249 + 39);
                  v303 = *(v280 + 39);
                  if (v303 >= 0)
                  {
                    v304 = *(v280 + 39);
                  }

                  else
                  {
                    v304 = v280[3];
                  }

                  if (v303 >= 0)
                  {
                    v305 = v280 + 2;
                  }

                  else
                  {
                    v305 = v280[2];
                  }

                  if (v302 >= 0)
                  {
                    v306 = *(v249 + 39);
                  }

                  else
                  {
                    v306 = *(v249 + 24);
                  }

                  if (v302 >= 0)
                  {
                    v307 = (v249 + 16);
                  }

                  else
                  {
                    v307 = *(v249 + 16);
                  }

                  if (v306 >= v304)
                  {
                    v308 = v304;
                  }

                  else
                  {
                    v308 = v306;
                  }

                  v309 = memcmp(v305, v307, v308);
                  v310 = v304 < v306;
                  if (v309)
                  {
                    v310 = v309 < 0;
                  }

                  if (v310)
                  {
LABEL_470:
                    v430 = *v249;
                    v284 = *(v249 + 32);
                    v433 = *v274;
                    v434 = v284;
                    *(v249 + 24) = 0;
                    *(v249 + 32) = 0;
                    *v274 = 0;
                    v285 = *(&v430 + 1);
                    v286 = HIBYTE(v434);
                    if (v434 < 0)
                    {
                      v286 = *(&v433 + 1);
                    }

                    v423 = v286;
                    if (v434 >= 0)
                    {
                      v287 = &v433;
                    }

                    else
                    {
                      v287 = v433;
                    }

                    __s2b = v287;
                    *v249 = *v280;
                    v288 = v280 + 2;
                    v289 = *(v280 + 1);
                    *(v249 + 32) = v280[4];
                    *v274 = v289;
                    *(v280 + 39) = 0;
                    *(v280 + 16) = 0;
                    if (v278 >= 2)
                    {
                      do
                      {
                        v291 = v280;
                        v292 = v279 - 1;
                        v279 = (v279 - 1) >> 1;
                        v280 = &a1[5 * v279];
                        v293 = *v280 >= v430;
                        if (*v280 == v430 && (v294 = v280[1], v293 = v294 >= v285, v294 == v285))
                        {
                          v295 = *(v280 + 39);
                          if (v295 >= 0)
                          {
                            v296 = *(v280 + 39);
                          }

                          else
                          {
                            v296 = v280[3];
                          }

                          if (v295 >= 0)
                          {
                            v297 = v280 + 2;
                          }

                          else
                          {
                            v297 = v280[2];
                          }

                          if (v423 >= v296)
                          {
                            v298 = v296;
                          }

                          else
                          {
                            v298 = v423;
                          }

                          v299 = memcmp(v297, __s2b, v298);
                          v285 = *(&v430 + 1);
                          v300 = v296 < v423;
                          if (v299)
                          {
                            v300 = v299 < 0;
                          }

                          if (!v300)
                          {
LABEL_493:
                            v280 = v291;
                            break;
                          }
                        }

                        else if (v293)
                        {
                          goto LABEL_493;
                        }

                        *v291 = *v280;
                        v288 = v280 + 2;
                        v290 = *(v280 + 1);
                        v291[4] = v280[4];
                        *(v291 + 1) = v290;
                        *(v280 + 39) = 0;
                        *(v280 + 16) = 0;
                      }

                      while (v292 > 1);
                    }

                    *v280 = v430;
                    v301 = v433;
                    v288[2] = v434;
                    *v288 = v301;
                  }
                }

                else if (!v281)
                {
                  goto LABEL_470;
                }
              }
            }

            v247 = v245-- <= 2;
            a2 = v419;
            if (v247)
            {
              return;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = &a1[5 * (v10 >> 1)];
    if (v9 < 0x1401)
    {
      sub_298B94EDC(v12, a1, v7);
      __s2 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_18:
      v20 = 0;
      v426 = *a1;
      v21 = a1[4];
      v22 = *a1;
      v433 = *(a1 + 1);
      v434 = v21;
      a1[3] = 0;
      a1[4] = 0;
      a1[2] = 0;
      if (v434 >= 0)
      {
        v23 = HIBYTE(v434);
      }

      else
      {
        v23 = *(&v433 + 1);
      }

      if (v434 >= 0)
      {
        v24 = &v433;
      }

      else
      {
        v24 = v433;
      }

      while (1)
      {
        v25 = a1[v20 + 5];
        v26 = v25 >= v22;
        if (v25 == v22)
        {
          v27 = a1[v20 + 6];
          v26 = v27 >= *(&v426 + 1);
          if (v27 == *(&v426 + 1))
          {
            break;
          }
        }

        if (v26)
        {
          goto LABEL_40;
        }

LABEL_25:
        v20 += 5;
      }

      v28 = SHIBYTE(a1[v20 + 9]);
      if (v28 >= 0)
      {
        v29 = HIBYTE(a1[v20 + 9]);
      }

      else
      {
        v29 = a1[v20 + 8];
      }

      if (v28 >= 0)
      {
        v30 = &a1[v20 + 7];
      }

      else
      {
        v30 = a1[v20 + 7];
      }

      if (v23 >= v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = v23;
      }

      v32 = memcmp(v30, v24, v31);
      v33 = v29 < v23;
      if (v32)
      {
        v33 = v32 < 0;
      }

      if (v33)
      {
        goto LABEL_25;
      }

LABEL_40:
      v34 = &a1[v20 + 5];
      i = v7;
      if (v20 * 8)
      {
        while (1)
        {
          v36 = *i >= v22;
          if (*i == v22 && (v37 = *(i + 8), v36 = v37 >= *(&v426 + 1), v37 == *(&v426 + 1)))
          {
            v38 = *(i + 39);
            if (v38 >= 0)
            {
              v39 = *(i + 39);
            }

            else
            {
              v39 = *(i + 24);
            }

            if (v38 >= 0)
            {
              v40 = (i + 16);
            }

            else
            {
              v40 = *(i + 16);
            }

            if (v23 >= v39)
            {
              v41 = v39;
            }

            else
            {
              v41 = v23;
            }

            v42 = memcmp(v40, v24, v41);
            v43 = v39 < v23;
            if (v42)
            {
              v43 = v42 < 0;
            }

            if (v43)
            {
              goto LABEL_60;
            }
          }

          else if (!v36)
          {
            goto LABEL_60;
          }

          i -= 40;
        }
      }

      i = v418;
      if (v34 < v418)
      {
        for (i = v7; ; i -= 40)
        {
          if (*i == v22)
          {
            v70 = *(i + 8);
            if (v70 == *(&v426 + 1))
            {
              v71 = *(i + 39);
              if (v71 >= 0)
              {
                v72 = *(i + 39);
              }

              else
              {
                v72 = *(i + 24);
              }

              if (v71 >= 0)
              {
                v73 = (i + 16);
              }

              else
              {
                v73 = *(i + 16);
              }

              if (v23 >= v72)
              {
                v74 = v72;
              }

              else
              {
                v74 = v23;
              }

              v75 = memcmp(v73, v24, v74);
              v76 = v72 >= v23;
              if (v75)
              {
                v76 = v75 >= 0;
              }

              if (v34 >= i || !v76)
              {
                break;
              }
            }

            else if (v34 >= i || v70 < *(&v426 + 1))
            {
              break;
            }
          }

          else if (*i < v22 || v34 >= i)
          {
            break;
          }
        }
      }

LABEL_60:
      j = v34;
      if (v34 < i)
      {
        v44 = i;
        do
        {
          v436 = *j;
          v45 = *(j + 16);
          v435[0] = *(j + 24);
          *(v435 + 7) = *(j + 31);
          v46 = *(j + 39);
          *(j + 24) = 0;
          *(j + 32) = 0;
          *(j + 16) = 0;
          *j = *v44;
          v47 = *(v44 + 16);
          *(j + 32) = *(v44 + 32);
          *(j + 16) = v47;
          *v44 = v436;
          *(v44 + 31) = *(v435 + 7);
          v48 = v435[0];
          *(v44 + 16) = v45;
          *(v44 + 24) = v48;
          *(v44 + 39) = v46;
          if (v434 >= 0)
          {
            v49 = HIBYTE(v434);
          }

          else
          {
            v49 = *(&v433 + 1);
          }

          if (v434 >= 0)
          {
            v50 = &v433;
          }

          else
          {
            v50 = v433;
          }

          do
          {
            while (1)
            {
              while (1)
              {
                v51 = *(j + 40);
                j += 40;
                v52 = v51 >= v426;
                if (v51 == v426)
                {
                  break;
                }

                if (v52)
                {
                  goto LABEL_89;
                }
              }

              v53 = *(j + 8);
              if (v53 == *(&v426 + 1))
              {
                break;
              }

              if (v53 >= *(&v426 + 1))
              {
                goto LABEL_89;
              }
            }

            v54 = *(j + 39);
            if (v54 >= 0)
            {
              v55 = *(j + 39);
            }

            else
            {
              v55 = *(j + 24);
            }

            if (v54 >= 0)
            {
              v56 = (j + 16);
            }

            else
            {
              v56 = *(j + 16);
            }

            if (v49 >= v55)
            {
              v57 = v55;
            }

            else
            {
              v57 = v49;
            }

            v58 = memcmp(v56, v50, v57);
            v59 = v55 < v49;
            if (v58)
            {
              v59 = v58 < 0;
            }
          }

          while (v59);
          do
          {
            while (1)
            {
LABEL_89:
              while (1)
              {
                v60 = *(v44 - 40);
                v44 -= 40;
                v61 = v60 >= v426;
                if (v60 == v426)
                {
                  break;
                }

                if (!v61)
                {
                  goto LABEL_62;
                }
              }

              v62 = *(v44 + 8);
              if (v62 == *(&v426 + 1))
              {
                break;
              }

              if (v62 < *(&v426 + 1))
              {
                goto LABEL_62;
              }
            }

            v63 = *(v44 + 39);
            if (v63 >= 0)
            {
              v64 = *(v44 + 39);
            }

            else
            {
              v64 = *(v44 + 24);
            }

            if (v63 >= 0)
            {
              v65 = (v44 + 16);
            }

            else
            {
              v65 = *(v44 + 16);
            }

            if (v49 >= v64)
            {
              v66 = v64;
            }

            else
            {
              v66 = v49;
            }

            v67 = memcmp(v65, v50, v66);
            v68 = v64 < v49;
            if (v67)
            {
              v68 = v67 < 0;
            }
          }

          while (!v68);
LABEL_62:
          ;
        }

        while (j < v44);
      }

      v77 = (j - 40);
      if ((j - 40) == a1)
      {
        v80 = *(j - 1);
        *a1 = v426;
        v78 = j - 24;
        a3 = __s2;
        a2 = v418;
        v7 = v411;
        if (v80 < 0)
        {
          operator delete(*v78);
        }
      }

      else
      {
        *a1 = *v77;
        a3 = __s2;
        a2 = v418;
        v7 = v411;
        if (*(a1 + 39) < 0)
        {
          operator delete(a1[2]);
        }

        v78 = j - 24;
        v79 = *(j - 24);
        a1[4] = *(j - 8);
        *(a1 + 1) = v79;
        *(j - 1) = 0;
        *(j - 24) = 0;
        *v77 = v426;
      }

      v81 = v433;
      *(v78 + 16) = v434;
      *v78 = v81;
      if (v34 < i)
      {
LABEL_139:
        sub_298B934A4(a1, j - 40, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v82 = sub_298B95C14(a1, j - 40);
        if (sub_298B95C14(j, a2))
        {
          a2 = (j - 40);
          if (v82)
          {
            return;
          }

          goto LABEL_2;
        }

        if (!v82)
        {
          goto LABEL_139;
        }
      }
    }

    else
    {
      sub_298B94EDC(a1, v12, v7);
      v13 = 5 * v11;
      sub_298B94EDC((a1 + 5), &a1[v13 - 5], v409);
      sub_298B94EDC((a1 + 10), &a1[v13 + 5], v407);
      sub_298B94EDC(&a1[v13 - 5], v12, &a1[v13 + 5]);
      v425 = *a1;
      *(&v436 + 7) = *(a1 + 31);
      v14 = a1[2];
      *&v436 = a1[3];
      v15 = *(a1 + 39);
      a1[3] = 0;
      a1[4] = 0;
      a1[2] = 0;
      v16 = *(v12 + 32);
      v17 = *(v12 + 16);
      *a1 = *v12;
      *(a1 + 1) = v17;
      a1[4] = v16;
      *v12 = v425;
      *(v12 + 16) = v14;
      v18 = v436;
      *(v12 + 31) = *(&v436 + 7);
      *(v12 + 24) = v18;
      *(v12 + 39) = v15;
      __s2 = a3 - 1;
      if (a4)
      {
        goto LABEL_18;
      }

LABEL_16:
      v19 = *(a1 - 5);
      if (v19 == *a1)
      {
        v83 = *(a1 - 4);
        v84 = a1[1];
        if (v83 == v84)
        {
          v89 = *(a1 + 39);
          v90 = *(a1 - 1);
          if (v90 >= 0)
          {
            v91 = a1 - 3;
          }

          else
          {
            v91 = *(a1 - 3);
          }

          if (v90 >= 0)
          {
            v92 = *(a1 - 1);
          }

          else
          {
            v92 = *(a1 - 2);
          }

          if (v89 >= 0)
          {
            v93 = *(a1 + 39);
          }

          else
          {
            v93 = a1[3];
          }

          if (v89 >= 0)
          {
            v94 = a1 + 2;
          }

          else
          {
            v94 = a1[2];
          }

          if (v93 >= v92)
          {
            v95 = v92;
          }

          else
          {
            v95 = v93;
          }

          v96 = memcmp(v91, v94, v95);
          v97 = v92 < v93;
          if (v96)
          {
            v97 = v96 < 0;
          }

          if (v97)
          {
            goto LABEL_18;
          }
        }

        else if (v83 < v84)
        {
          goto LABEL_18;
        }
      }

      else if (v19 < *a1)
      {
        goto LABEL_18;
      }

      v427 = *a1;
      v85 = a1[4];
      v86 = *a1;
      v433 = *(a1 + 1);
      v434 = v85;
      a1[3] = 0;
      a1[4] = 0;
      a1[2] = 0;
      v87 = *v7;
      if (v86 == *v7)
      {
        v88 = *(&v427 + 1);
        v98 = *(a2 - 4);
        if (*(&v427 + 1) == v98)
        {
          v109 = *(a2 - 1);
          if (v434 >= 0)
          {
            v110 = HIBYTE(v434);
          }

          else
          {
            v110 = *(&v433 + 1);
          }

          if (v434 >= 0)
          {
            v111 = &v433;
          }

          else
          {
            v111 = v433;
          }

          if (v109 >= 0)
          {
            v112 = *(a2 - 1);
          }

          else
          {
            v112 = *(a2 - 2);
          }

          if (v109 >= 0)
          {
            v113 = v405;
          }

          else
          {
            v113 = *(a2 - 3);
          }

          if (v112 >= v110)
          {
            v114 = v110;
          }

          else
          {
            v114 = v112;
          }

          v115 = memcmp(v111, v113, v114);
          v7 = v411;
          v116 = v110 < v112;
          if (v115)
          {
            v116 = v115 < 0;
          }

          if (v116)
          {
            goto LABEL_166;
          }
        }

        else if (*(&v427 + 1) < v98)
        {
          goto LABEL_166;
        }
      }

      else if (v86 < *v7)
      {
        v88 = *(&v427 + 1);
LABEL_166:
        if (v434 >= 0)
        {
          v99 = HIBYTE(v434);
        }

        else
        {
          v99 = *(&v433 + 1);
        }

        if (v434 >= 0)
        {
          v100 = &v433;
        }

        else
        {
          v100 = v433;
        }

        for (j = (a1 + 5); ; j += 40)
        {
          v101 = v86 >= *j;
          if (v86 == *j && (v102 = *(j + 8), v101 = v88 >= v102, v88 == v102))
          {
            v103 = *(j + 39);
            if (v103 >= 0)
            {
              v104 = *(j + 39);
            }

            else
            {
              v104 = *(j + 24);
            }

            if (v103 >= 0)
            {
              v105 = (j + 16);
            }

            else
            {
              v105 = *(j + 16);
            }

            if (v104 >= v99)
            {
              v106 = v99;
            }

            else
            {
              v106 = v104;
            }

            v107 = memcmp(v100, v105, v106);
            v7 = v411;
            v108 = v99 < v104;
            if (v107)
            {
              v108 = v107 < 0;
            }

            if (v108)
            {
              goto LABEL_233;
            }
          }

          else if (!v101)
          {
            goto LABEL_233;
          }
        }
      }

      j = (a1 + 5);
      if (a1 + 5 < a2)
      {
        if (v434 >= 0)
        {
          v117 = HIBYTE(v434);
        }

        else
        {
          v117 = *(&v433 + 1);
        }

        if (v434 >= 0)
        {
          v118 = &v433;
        }

        else
        {
          v118 = v433;
        }

        do
        {
          v119 = v86 >= *j;
          if (v86 == *j && (v120 = *(j + 8), v119 = *(&v427 + 1) >= v120, *(&v427 + 1) == v120))
          {
            v121 = *(j + 39);
            if (v121 >= 0)
            {
              v122 = *(j + 39);
            }

            else
            {
              v122 = *(j + 24);
            }

            if (v121 >= 0)
            {
              v123 = (j + 16);
            }

            else
            {
              v123 = *(j + 16);
            }

            if (v122 >= v117)
            {
              v124 = v117;
            }

            else
            {
              v124 = v122;
            }

            v125 = memcmp(v118, v123, v124);
            v7 = v411;
            v126 = v117 < v122;
            if (v125)
            {
              v126 = v125 < 0;
            }

            if (v126)
            {
              break;
            }
          }

          else if (!v119)
          {
            break;
          }

          j += 40;
        }

        while (j < v418);
      }

LABEL_233:
      k = v418;
      if (j < v418)
      {
        if (v434 >= 0)
        {
          v128 = HIBYTE(v434);
        }

        else
        {
          v128 = *(&v433 + 1);
        }

        if (v434 >= 0)
        {
          v129 = &v433;
        }

        else
        {
          v129 = v433;
        }

        for (k = v7; ; k -= 40)
        {
          v131 = v86 >= v87;
          if (v86 == v87 && (v132 = *(k + 8), v131 = *(&v427 + 1) >= v132, *(&v427 + 1) == v132))
          {
            v133 = *(k + 39);
            if (v133 >= 0)
            {
              v134 = *(k + 39);
            }

            else
            {
              v134 = *(k + 24);
            }

            if (v133 >= 0)
            {
              v135 = (k + 16);
            }

            else
            {
              v135 = *(k + 16);
            }

            if (v134 >= v128)
            {
              v136 = v128;
            }

            else
            {
              v136 = v134;
            }

            v137 = memcmp(v129, v135, v136);
            v138 = v128 < v134;
            if (v137)
            {
              v138 = v137 < 0;
            }

            if (!v138)
            {
              break;
            }
          }

          else if (v131)
          {
            break;
          }

          v130 = *(k - 40);
          v87 = v130;
        }
      }

LABEL_300:
      while (j < k)
      {
        v436 = *j;
        v139 = *(j + 16);
        v435[0] = *(j + 24);
        *(v435 + 7) = *(j + 31);
        v140 = *(j + 39);
        *(j + 24) = 0;
        *(j + 32) = 0;
        *(j + 16) = 0;
        *j = *k;
        v141 = *(k + 16);
        *(j + 32) = *(k + 32);
        *(j + 16) = v141;
        *k = v436;
        *(k + 31) = *(v435 + 7);
        v142 = v435[0];
        *(k + 16) = v139;
        *(k + 24) = v142;
        *(k + 39) = v140;
        if (v434 >= 0)
        {
          v143 = HIBYTE(v434);
        }

        else
        {
          v143 = *(&v433 + 1);
        }

        if (v434 >= 0)
        {
          v144 = &v433;
        }

        else
        {
          v144 = v433;
        }

        do
        {
          while (1)
          {
            while (1)
            {
              v145 = *(j + 40);
              j += 40;
              v146 = v427 >= v145;
              if (v427 == v145)
              {
                break;
              }

              if (!v146)
              {
                goto LABEL_284;
              }
            }

            v147 = *(j + 8);
            if (*(&v427 + 1) == v147)
            {
              break;
            }

            if (*(&v427 + 1) < v147)
            {
              goto LABEL_284;
            }
          }

          v148 = *(j + 39);
          if (v148 >= 0)
          {
            v149 = *(j + 39);
          }

          else
          {
            v149 = *(j + 24);
          }

          if (v148 >= 0)
          {
            v150 = (j + 16);
          }

          else
          {
            v150 = *(j + 16);
          }

          if (v149 >= v143)
          {
            v151 = v143;
          }

          else
          {
            v151 = v149;
          }

          v152 = memcmp(v144, v150, v151);
          v153 = v143 < v149;
          if (v152)
          {
            v153 = v152 < 0;
          }
        }

        while (!v153);
        do
        {
          while (1)
          {
LABEL_284:
            while (1)
            {
              v154 = *(k - 40);
              k -= 40;
              v155 = v427 >= v154;
              if (v427 == v154)
              {
                break;
              }

              if (v155)
              {
                goto LABEL_300;
              }
            }

            v156 = *(k + 8);
            if (*(&v427 + 1) == v156)
            {
              break;
            }

            if (*(&v427 + 1) >= v156)
            {
              goto LABEL_300;
            }
          }

          v157 = *(k + 39);
          if (v157 >= 0)
          {
            v158 = *(k + 39);
          }

          else
          {
            v158 = *(k + 24);
          }

          if (v157 >= 0)
          {
            v159 = (k + 16);
          }

          else
          {
            v159 = *(k + 16);
          }

          if (v158 >= v143)
          {
            v160 = v143;
          }

          else
          {
            v160 = v158;
          }

          v161 = memcmp(v144, v159, v160);
          v162 = v143 < v158;
          if (v161)
          {
            v162 = v161 < 0;
          }
        }

        while (v162);
      }

      v163 = (j - 40);
      if ((j - 40) == a1)
      {
        v166 = *(j - 1);
        *v163 = v427;
        v164 = j - 24;
        a3 = __s2;
        a2 = v418;
        v7 = v411;
        if (v166 < 0)
        {
          operator delete(*v164);
        }
      }

      else
      {
        *a1 = *v163;
        a3 = __s2;
        a2 = v418;
        v7 = v411;
        if (*(a1 + 39) < 0)
        {
          operator delete(a1[2]);
        }

        v164 = j - 24;
        v165 = *(j - 24);
        a1[4] = *(j - 8);
        *(a1 + 1) = v165;
        *(j - 1) = 0;
        *(j - 24) = 0;
        *v163 = v427;
      }

      a4 = 0;
      v167 = v433;
      *(v164 + 16) = v434;
      *v164 = v167;
    }
  }

  if (a4)
  {
    if (a1 == a2)
    {
      return;
    }

    v177 = (a1 + 5);
    if (a1 + 5 == a2)
    {
      return;
    }

    v178 = 0;
    v179 = a1;
LABEL_588:
    v353 = v179;
    v179 = v177;
    v355 = *(v353 + 40);
    v356 = v355 >= *v353;
    if (v355 == *v353 && (v357 = *(v353 + 48), v358 = *(v353 + 8), v356 = v357 >= v358, v357 == v358))
    {
      v380 = *(v353 + 39);
      v381 = *(v353 + 79);
      if (v381 >= 0)
      {
        v382 = (v353 + 56);
      }

      else
      {
        v382 = *(v353 + 56);
      }

      if (v381 >= 0)
      {
        v383 = *(v353 + 79);
      }

      else
      {
        v383 = *(v353 + 64);
      }

      if (v380 >= 0)
      {
        v384 = *(v353 + 39);
      }

      else
      {
        v384 = *(v353 + 24);
      }

      if (v380 >= 0)
      {
        v385 = (v353 + 16);
      }

      else
      {
        v385 = *(v353 + 16);
      }

      if (v384 >= v383)
      {
        v386 = v383;
      }

      else
      {
        v386 = v384;
      }

      v387 = memcmp(v382, v385, v386);
      v388 = v383 < v384;
      if (v387)
      {
        v388 = v387 < 0;
      }

      if (!v388)
      {
        goto LABEL_587;
      }
    }

    else if (v356)
    {
      goto LABEL_587;
    }

    v432 = *v179;
    v434 = *(v353 + 72);
    v433 = *(v353 + 56);
    *(v353 + 64) = 0;
    *(v353 + 72) = 0;
    *(v353 + 56) = 0;
    v359 = *(&v432 + 1);
    v360 = HIBYTE(v434);
    if (v434 < 0)
    {
      v360 = *(&v433 + 1);
    }

    v424 = v360;
    if (v434 >= 0)
    {
      v361 = &v433;
    }

    else
    {
      v361 = v433;
    }

    __s2c = v361;
    v362 = *(v179 + 39);
    *v179 = *v353;
    if (v362 < 0)
    {
      operator delete(*(v179 + 16));
    }

    v352 = v353 + 16;
    *(v179 + 16) = *(v353 + 16);
    *(v179 + 32) = *(v353 + 32);
    *(v353 + 39) = 0;
    *(v353 + 16) = 0;
    if (v353 == a1)
    {
      goto LABEL_585;
    }

    v364 = (v353 - 40);
    v363 = *(v353 - 40);
    v365 = v432 >= v363;
    if (v432 == v363 && (v366 = *(v353 - 32), v365 = *(&v432 + 1) >= v366, *(&v432 + 1) == v366))
    {
      v389 = *(v353 - 1);
      v390 = v389;
      if ((v389 & 0x80u) != 0)
      {
        v389 = *(v353 - 16);
      }

      if (v390 >= 0)
      {
        v391 = (v353 - 24);
      }

      else
      {
        v391 = *(v353 - 24);
      }

      v410 = v389;
      if (v389 >= v424)
      {
        v392 = v424;
      }

      else
      {
        v392 = v389;
      }

      v393 = memcmp(__s2c, v391, v392);
      a2 = v418;
      v394 = v424 < v410;
      if (v393)
      {
        v394 = v393 < 0;
      }

      if (!v394)
      {
        goto LABEL_586;
      }
    }

    else if (v365)
    {
      goto LABEL_586;
    }

    *v353 = *v364;
    v367 = (v353 - 24);
    *v352 = *(v353 - 24);
    *(v353 + 32) = *(v353 - 8);
    *(v353 - 1) = 0;
    *(v353 - 24) = 0;
    if (v364 == a1)
    {
      v352 = v353 - 24;
LABEL_585:
      v353 = a1;
      goto LABEL_586;
    }

    v368 = v178;
    while (1)
    {
      v370 = *(a1 + v368 - 80);
      v371 = v432 >= v370;
      if (v432 == v370 && (v372 = *(a1 + v368 - 72), v371 = v359 >= v372, v359 == v372))
      {
        v373 = a1 + v368;
        v374 = *(a1 + v368 - 41);
        if (v374 >= 0)
        {
          v375 = *(a1 + v368 - 41);
        }

        else
        {
          v375 = *(a1 + v368 - 56);
        }

        if (v374 >= 0)
        {
          v376 = a1 + v368 - 64;
        }

        else
        {
          v376 = *(a1 + v368 - 64);
        }

        if (v375 >= v424)
        {
          v377 = v424;
        }

        else
        {
          v377 = v375;
        }

        v378 = memcmp(__s2c, v376, v377);
        v26 = v424 >= v375;
        v359 = *(&v432 + 1);
        v379 = !v26;
        if (v378)
        {
          v379 = v378 < 0;
        }

        if (!v379)
        {
          v352 = v373 - 24;
          v353 = v373 - 40;
          goto LABEL_657;
        }
      }

      else if (v371)
      {
        v352 = v367;
        v353 = v364;
LABEL_657:
        a2 = v418;
LABEL_586:
        *v353 = v432;
        v354 = v433;
        *(v352 + 16) = v434;
        *v352 = v354;
LABEL_587:
        v177 = v179 + 40;
        v178 += 40;
        if ((v179 + 40) == a2)
        {
          return;
        }

        goto LABEL_588;
      }

      v367 = (v364 - 3);
      v364 -= 5;
      *(a1 + v368 - 40) = *(a1 + v368 - 80);
      v369 = a1 + v368;
      *(v369 - 24) = *(a1 + v368 - 64);
      *(v369 - 8) = *(a1 + v368 - 48);
      *(v369 - 41) = 0;
      *(v369 - 64) = 0;
      v368 -= 40;
      a2 = v418;
      if (v368 == 40)
      {
        v352 = (a1 + 2);
        goto LABEL_585;
      }
    }
  }

  if (a1 != a2)
  {
    v311 = (a1 + 5);
    if (a1 + 5 != a2)
    {
      v312 = a1 + 2;
      do
      {
        v314 = a1;
        a1 = v311;
        v316 = *(v314 + 40);
        v317 = v316 >= *v314;
        if (v316 == *v314 && (v318 = *(v314 + 48), v319 = *(v314 + 8), v317 = v318 >= v319, v318 == v319))
        {
          v337 = *(v314 + 39);
          v338 = *(v314 + 79);
          if (v338 >= 0)
          {
            v339 = (v314 + 56);
          }

          else
          {
            v339 = *(v314 + 56);
          }

          if (v338 >= 0)
          {
            v340 = *(v314 + 79);
          }

          else
          {
            v340 = *(v314 + 64);
          }

          if (v337 >= 0)
          {
            v341 = *(v314 + 39);
          }

          else
          {
            v341 = *(v314 + 24);
          }

          if (v337 >= 0)
          {
            v342 = (v314 + 16);
          }

          else
          {
            v342 = *(v314 + 16);
          }

          if (v341 >= v340)
          {
            v343 = v340;
          }

          else
          {
            v343 = v341;
          }

          v344 = memcmp(v339, v342, v343);
          v345 = v340 < v341;
          if (v344)
          {
            v345 = v344 < 0;
          }

          if (!v345)
          {
            goto LABEL_519;
          }
        }

        else if (v317)
        {
          goto LABEL_519;
        }

        v431 = *a1;
        v434 = *(v314 + 72);
        v433 = *(v314 + 56);
        *(v314 + 64) = 0;
        *(v314 + 72) = 0;
        *(v314 + 56) = 0;
        if (v434 >= 0)
        {
          v320 = HIBYTE(v434);
        }

        else
        {
          v320 = *(&v433 + 1);
        }

        if (v434 >= 0)
        {
          v321 = &v433;
        }

        else
        {
          v321 = v433;
        }

        v322 = *(a1 + 39);
        *a1 = *v314;
        if (v322 < 0)
        {
          operator delete(a1[2]);
        }

        v313 = v314 + 16;
        *(a1 + 1) = *(v314 + 16);
        a1[4] = *(v314 + 32);
        *(v314 + 39) = 0;
        *(v314 + 16) = 0;
        v323 = *(v314 - 40);
        v324 = v431 >= v323;
        if (v431 == v323 && (v325 = *(v314 - 32), v324 = *(&v431 + 1) >= v325, *(&v431 + 1) == v325))
        {
          v346 = *(v314 - 1);
          if (v346 >= 0)
          {
            v347 = *(v314 - 1);
          }

          else
          {
            v347 = *(v314 - 16);
          }

          if (v346 >= 0)
          {
            v348 = (v314 - 24);
          }

          else
          {
            v348 = *(v314 - 24);
          }

          if (v347 >= v320)
          {
            v349 = v320;
          }

          else
          {
            v349 = v347;
          }

          v350 = memcmp(v321, v348, v349);
          v351 = v320 < v347;
          if (v350)
          {
            v351 = v350 < 0;
          }

          if (v351)
          {
LABEL_534:
            for (m = v312; ; m -= 5)
            {
              v327 = *(m - 5);
              *(m - 1) = *(m - 7);
              *m = v327;
              m[2] = *(m - 3);
              *(m - 17) = 0;
              *(m - 40) = 0;
              v328 = *(m - 12);
              v329 = v431 >= v328;
              if (v431 == v328 && (v330 = *(m - 11), v329 = *(&v431 + 1) >= v330, *(&v431 + 1) == v330))
              {
                v331 = *(m - 57);
                if (v331 >= 0)
                {
                  v332 = *(m - 57);
                }

                else
                {
                  v332 = *(m - 9);
                }

                if (v331 >= 0)
                {
                  v333 = m - 10;
                }

                else
                {
                  v333 = *(m - 10);
                }

                if (v332 >= v320)
                {
                  v334 = v320;
                }

                else
                {
                  v334 = v332;
                }

                v335 = memcmp(v321, v333, v334);
                v336 = v320 < v332;
                if (v335)
                {
                  v336 = v335 < 0;
                }

                if (!v336)
                {
LABEL_517:
                  v313 = (m - 5);
                  v314 = (m - 7);
                  break;
                }
              }

              else if (v329)
              {
                goto LABEL_517;
              }
            }
          }
        }

        else if (!v324)
        {
          goto LABEL_534;
        }

        *v314 = v431;
        v315 = v433;
        *(v313 + 16) = v434;
        *v313 = v315;
        a2 = v418;
LABEL_519:
        v311 = (a1 + 5);
        v312 += 5;
      }

      while (a1 + 5 != a2);
    }
  }
}

uint64_t sub_298B94EDC(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 == *result)
  {
    v7 = a2[1];
    v8 = *(result + 8);
    if (v7 == v8)
    {
      v35 = (result + 16);
      v36 = *(result + 39);
      v37 = a2 + 2;
      v38 = *(a2 + 39);
      if (v38 >= 0)
      {
        v39 = *(a2 + 39);
      }

      else
      {
        v39 = a2[3];
      }

      if (v38 < 0)
      {
        v37 = a2[2];
      }

      if (v36 >= 0)
      {
        v40 = *(result + 39);
      }

      else
      {
        v40 = *(result + 24);
      }

      if (v36 < 0)
      {
        v35 = *(result + 16);
      }

      if (v40 >= v39)
      {
        v41 = v39;
      }

      else
      {
        v41 = v40;
      }

      v42 = result;
      v43 = a2;
      v44 = a3;
      v45 = memcmp(v37, v35, v41);
      a3 = v44;
      a2 = v43;
      v46 = v45;
      result = v42;
      v47 = v46 == 0;
      v48 = v46 < 0;
      if (v47)
      {
        v48 = v39 < v40;
      }

      if (v48)
      {
        goto LABEL_3;
      }
    }

    else if (v7 < v8)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = *a3 >= v3;
    if (*a3 == v3 && (v10 = *(a3 + 8), v11 = a2[1], v9 = v10 >= v11, v10 == v11))
    {
      v49 = a2 + 2;
      v50 = *(a2 + 39);
      v51 = (a3 + 16);
      v52 = *(a3 + 39);
      if (v52 >= 0)
      {
        v53 = *(a3 + 39);
      }

      else
      {
        v53 = *(a3 + 24);
      }

      if (v52 < 0)
      {
        v51 = *(a3 + 16);
      }

      if (v50 >= 0)
      {
        v54 = *(a2 + 39);
      }

      else
      {
        v54 = a2[3];
      }

      if (v50 < 0)
      {
        v49 = a2[2];
      }

      if (v54 >= v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = v54;
      }

      v56 = result;
      v57 = a2;
      v58 = a3;
      v59 = memcmp(v51, v49, v55);
      a3 = v58;
      a2 = v57;
      v60 = v59;
      result = v56;
      v47 = v60 == 0;
      v61 = v60 < 0;
      if (v47)
      {
        v61 = v53 < v54;
      }

      if (!v61)
      {
        return result;
      }
    }

    else if (v9)
    {
      return result;
    }

    v97 = *a2;
    v13 = a2 + 2;
    v12 = a2[2];
    v14 = a2 + 3;
    *&v102 = a2[3];
    *(&v102 + 7) = *(a2 + 31);
    v15 = *(a2 + 39);
    a2[2] = 0;
    a2[4] = 0;
    a2[3] = 0;
    *a2 = *a3;
    v16 = *(a3 + 32);
    *(a2 + 1) = *(a3 + 16);
    a2[4] = v16;
    *a3 = v97;
    *(a3 + 16) = v12;
    *(a3 + 24) = v102;
    *(a3 + 31) = *(&v102 + 7);
    *(a3 + 39) = v15;
    v17 = *a2 >= *result;
    if (*a2 == *result && (v18 = a2[1], v19 = *(result + 8), v17 = v18 >= v19, v18 == v19))
    {
      v75 = (result + 16);
      v76 = *(result + 39);
      v77 = *(a2 + 39);
      if (v77 >= 0)
      {
        v78 = *(a2 + 39);
      }

      else
      {
        v78 = a2[3];
      }

      if (v77 >= 0)
      {
        v79 = a2 + 2;
      }

      else
      {
        v79 = a2[2];
      }

      if (v76 >= 0)
      {
        v80 = *(result + 39);
      }

      else
      {
        v80 = *(result + 24);
      }

      if (v76 < 0)
      {
        v75 = *(result + 16);
      }

      if (v80 >= v78)
      {
        v81 = v78;
      }

      else
      {
        v81 = v80;
      }

      v82 = result;
      v83 = a2;
      v84 = memcmp(v79, v75, v81);
      a2 = v83;
      v85 = v84;
      result = v82;
      v47 = v85 == 0;
      v86 = v85 < 0;
      if (v47)
      {
        v86 = v78 < v80;
      }

      if (!v86)
      {
        return result;
      }
    }

    else if (v17)
    {
      return result;
    }

    v98 = *result;
    v20 = *(result + 16);
    *&v103 = *(result + 24);
    *(&v103 + 7) = *(result + 31);
    v21 = *(result + 39);
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *result = *a2;
    v22 = v13[2];
    *(result + 16) = *v13;
    *(result + 32) = v22;
    *a2 = v98;
    a2[2] = v20;
    *v14 = v103;
    *(v14 + 7) = *(&v103 + 7);
    *(a2 + 39) = v21;
    return result;
  }

  if (*a2 >= *result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*a3 == v3)
  {
    v23 = *(a3 + 8);
    v24 = a2[1];
    if (v23 == v24)
    {
      v62 = a2 + 2;
      v63 = *(a2 + 39);
      v64 = (a3 + 16);
      v65 = *(a3 + 39);
      if (v65 >= 0)
      {
        v66 = *(a3 + 39);
      }

      else
      {
        v66 = *(a3 + 24);
      }

      if (v65 < 0)
      {
        v64 = *(a3 + 16);
      }

      if (v63 >= 0)
      {
        v67 = *(a2 + 39);
      }

      else
      {
        v67 = a2[3];
      }

      if (v63 < 0)
      {
        v62 = a2[2];
      }

      if (v67 >= v66)
      {
        v68 = v66;
      }

      else
      {
        v68 = v67;
      }

      v69 = result;
      v70 = a2;
      v71 = a3;
      v72 = memcmp(v64, v62, v68);
      a3 = v71;
      a2 = v70;
      v73 = v72;
      result = v69;
      v47 = v73 == 0;
      v74 = v73 < 0;
      if (v47)
      {
        v74 = v66 < v67;
      }

      if (v74)
      {
        goto LABEL_5;
      }
    }

    else if (v23 < v24)
    {
      goto LABEL_5;
    }
  }

  else if (*a3 < v3)
  {
LABEL_5:
    v96 = *result;
    v4 = *(result + 16);
    *&v101 = *(result + 24);
    *(&v101 + 7) = *(result + 31);
    v5 = *(result + 39);
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = 0;
    *result = *a3;
    v6 = *(a3 + 32);
    *(result + 16) = *(a3 + 16);
    *(result + 32) = v6;
    *a3 = v96;
    *(a3 + 16) = v4;
    *(a3 + 24) = v101;
    *(a3 + 31) = *(&v101 + 7);
    *(a3 + 39) = v5;
    return result;
  }

  v99 = *result;
  v25 = *(result + 16);
  *&v104 = *(result + 24);
  *(&v104 + 7) = *(result + 31);
  v26 = *(result + 39);
  v27 = v26;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *result = *a2;
  v28 = a2 + 2;
  v29 = a2[4];
  *(result + 16) = *(a2 + 1);
  *(result + 32) = v29;
  *a2 = v99;
  a2[2] = v25;
  a2[3] = v104;
  v30 = a2 + 3;
  *(a2 + 31) = *(&v104 + 7);
  *(a2 + 39) = v26;
  v31 = *a3 >= *a2;
  if (*a3 != *a2 || (v32 = *(a3 + 8), v33 = a2[1], v31 = v32 >= v33, v32 != v33))
  {
    if (v31)
    {
      return result;
    }

    goto LABEL_20;
  }

  v87 = *(a3 + 39);
  if (v87 >= 0)
  {
    v88 = *(a3 + 39);
  }

  else
  {
    v88 = *(a3 + 24);
  }

  if (v87 >= 0)
  {
    v89 = (a3 + 16);
  }

  else
  {
    v89 = *(a3 + 16);
  }

  if ((v26 & 0x80u) == 0)
  {
    v90 = v26;
  }

  else
  {
    v90 = *v30;
  }

  if ((v26 & 0x80u) == 0)
  {
    v91 = a2 + 2;
  }

  else
  {
    v91 = v25;
  }

  if (v90 >= v88)
  {
    v92 = v88;
  }

  else
  {
    v92 = v90;
  }

  v93 = a2;
  v94 = a3;
  result = memcmp(v89, v91, v92);
  a3 = v94;
  a2 = v93;
  v95 = v88 < v90;
  if (result)
  {
    v95 = result < 0;
  }

  if (v95)
  {
LABEL_20:
    v100 = *a2;
    *&v105 = *v30;
    *(&v105 + 7) = *(v30 + 7);
    v28[1] = 0;
    v28[2] = 0;
    *v28 = 0;
    *a2 = *a3;
    v34 = *(a3 + 32);
    *v28 = *(a3 + 16);
    v28[2] = v34;
    *a3 = v100;
    *(a3 + 16) = v25;
    *(a3 + 24) = v105;
    *(a3 + 31) = *(&v105 + 7);
    *(a3 + 39) = v27;
  }

  return result;
}

uint64_t sub_298B95484(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  result = sub_298B94EDC(a1, a2, a3);
  v9 = *a4 >= *a3;
  if (*a4 == *a3 && (v10 = *(a4 + 1), v11 = *(a3 + 1), v9 = v10 >= v11, v10 == v11))
  {
    v27 = *(a3 + 39);
    v28 = *(a4 + 39);
    if (v28 >= 0)
    {
      v29 = *(a4 + 39);
    }

    else
    {
      v29 = *(a4 + 3);
    }

    if (v28 >= 0)
    {
      v30 = a4 + 1;
    }

    else
    {
      v30 = *(a4 + 2);
    }

    if (v27 >= 0)
    {
      v31 = *(a3 + 39);
    }

    else
    {
      v31 = *(a3 + 3);
    }

    if (v27 >= 0)
    {
      v32 = a3 + 1;
    }

    else
    {
      v32 = *(a3 + 2);
    }

    if (v31 >= v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = v31;
    }

    result = memcmp(v30, v32, v33);
    v34 = v29 < v31;
    if (result)
    {
      v34 = result < 0;
    }

    if (!v34)
    {
      return result;
    }
  }

  else if (v9)
  {
    return result;
  }

  v51 = *a3;
  v12 = *(a3 + 2);
  *&v54 = *(a3 + 3);
  *(&v54 + 7) = *(a3 + 31);
  v13 = *(a3 + 39);
  *(a3 + 2) = 0;
  *(a3 + 4) = 0;
  *(a3 + 3) = 0;
  *a3 = *a4;
  v14 = *(a4 + 4);
  a3[1] = a4[1];
  *(a3 + 4) = v14;
  *a4 = v51;
  *(a4 + 2) = v12;
  *(a4 + 3) = v54;
  *(a4 + 31) = *(&v54 + 7);
  *(a4 + 39) = v13;
  v15 = *a3 >= *a2;
  if (*a3 == *a2 && (v16 = *(a3 + 1), v17 = *(a2 + 1), v15 = v16 >= v17, v16 == v17))
  {
    v35 = *(a2 + 39);
    v36 = *(a3 + 39);
    if (v36 >= 0)
    {
      v37 = *(a3 + 39);
    }

    else
    {
      v37 = *(a3 + 3);
    }

    if (v36 >= 0)
    {
      v38 = a3 + 1;
    }

    else
    {
      v38 = *(a3 + 2);
    }

    if (v35 >= 0)
    {
      v39 = *(a2 + 39);
    }

    else
    {
      v39 = *(a2 + 3);
    }

    if (v35 >= 0)
    {
      v40 = a2 + 1;
    }

    else
    {
      v40 = *(a2 + 2);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    result = memcmp(v38, v40, v41);
    v42 = v37 < v39;
    if (result)
    {
      v42 = result < 0;
    }

    if (!v42)
    {
      return result;
    }
  }

  else if (v15)
  {
    return result;
  }

  v52 = *a2;
  v18 = *(a2 + 2);
  *&v55 = *(a2 + 3);
  *(&v55 + 7) = *(a2 + 31);
  v19 = *(a2 + 39);
  *(a2 + 2) = 0;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v20 = *(a3 + 4);
  a2[1] = a3[1];
  *(a2 + 4) = v20;
  *a3 = v52;
  *(a3 + 2) = v18;
  *(a3 + 3) = v55;
  *(a3 + 31) = *(&v55 + 7);
  *(a3 + 39) = v19;
  v21 = *a2 >= *a1;
  if (*a2 != *a1 || (v22 = *(a2 + 1), v23 = *(a1 + 8), v21 = v22 >= v23, v22 != v23))
  {
    if (v21)
    {
      return result;
    }

    goto LABEL_10;
  }

  v43 = *(a1 + 39);
  v44 = *(a2 + 39);
  if (v44 >= 0)
  {
    v45 = *(a2 + 39);
  }

  else
  {
    v45 = *(a2 + 3);
  }

  if (v44 >= 0)
  {
    v46 = a2 + 1;
  }

  else
  {
    v46 = *(a2 + 2);
  }

  if (v43 >= 0)
  {
    v47 = *(a1 + 39);
  }

  else
  {
    v47 = *(a1 + 24);
  }

  if (v43 >= 0)
  {
    v48 = (a1 + 16);
  }

  else
  {
    v48 = *(a1 + 16);
  }

  if (v47 >= v45)
  {
    v49 = v45;
  }

  else
  {
    v49 = v47;
  }

  result = memcmp(v46, v48, v49);
  v50 = v45 < v47;
  if (result)
  {
    v50 = result < 0;
  }

  if (v50)
  {
LABEL_10:
    v53 = *a1;
    v24 = *(a1 + 16);
    *&v56 = *(a1 + 24);
    *(&v56 + 7) = *(a1 + 31);
    v25 = *(a1 + 39);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    v26 = *(a2 + 4);
    *(a1 + 16) = a2[1];
    *(a1 + 32) = v26;
    *a2 = v53;
    *(a2 + 2) = v24;
    *(a2 + 3) = v56;
    *(a2 + 31) = *(&v56 + 7);
    *(a2 + 39) = v25;
  }

  return result;
}

uint64_t sub_298B957D0(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  result = sub_298B95484(a1, a2, a3, a4);
  v11 = *a5 >= *a4;
  if (*a5 == *a4 && (v12 = *(a5 + 1), v13 = *(a4 + 1), v11 = v12 >= v13, v12 == v13))
  {
    v35 = *(a4 + 39);
    v36 = *(a5 + 39);
    if (v36 >= 0)
    {
      v37 = *(a5 + 39);
    }

    else
    {
      v37 = *(a5 + 3);
    }

    if (v36 >= 0)
    {
      v38 = a5 + 1;
    }

    else
    {
      v38 = *(a5 + 2);
    }

    if (v35 >= 0)
    {
      v39 = *(a4 + 39);
    }

    else
    {
      v39 = *(a4 + 3);
    }

    if (v35 >= 0)
    {
      v40 = a4 + 1;
    }

    else
    {
      v40 = *(a4 + 2);
    }

    if (v39 >= v37)
    {
      v41 = v37;
    }

    else
    {
      v41 = v39;
    }

    result = memcmp(v38, v40, v41);
    v42 = v37 < v39;
    if (result)
    {
      v42 = result < 0;
    }

    if (!v42)
    {
      return result;
    }
  }

  else if (v11)
  {
    return result;
  }

  v67 = *a4;
  v14 = *(a4 + 2);
  *&v71 = *(a4 + 3);
  *(&v71 + 7) = *(a4 + 31);
  v15 = *(a4 + 39);
  *(a4 + 2) = 0;
  *(a4 + 4) = 0;
  *(a4 + 3) = 0;
  *a4 = *a5;
  v16 = *(a5 + 4);
  a4[1] = a5[1];
  *(a4 + 4) = v16;
  *a5 = v67;
  *(a5 + 2) = v14;
  *(a5 + 3) = v71;
  *(a5 + 31) = *(&v71 + 7);
  *(a5 + 39) = v15;
  v17 = *a4 >= *a3;
  if (*a4 == *a3 && (v18 = *(a4 + 1), v19 = *(a3 + 1), v17 = v18 >= v19, v18 == v19))
  {
    v43 = *(a3 + 39);
    v44 = *(a4 + 39);
    if (v44 >= 0)
    {
      v45 = *(a4 + 39);
    }

    else
    {
      v45 = *(a4 + 3);
    }

    if (v44 >= 0)
    {
      v46 = a4 + 1;
    }

    else
    {
      v46 = *(a4 + 2);
    }

    if (v43 >= 0)
    {
      v47 = *(a3 + 39);
    }

    else
    {
      v47 = *(a3 + 3);
    }

    if (v43 >= 0)
    {
      v48 = a3 + 1;
    }

    else
    {
      v48 = *(a3 + 2);
    }

    if (v47 >= v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = v47;
    }

    result = memcmp(v46, v48, v49);
    v50 = v45 < v47;
    if (result)
    {
      v50 = result < 0;
    }

    if (!v50)
    {
      return result;
    }
  }

  else if (v17)
  {
    return result;
  }

  v68 = *a3;
  v20 = *(a3 + 2);
  *&v72 = *(a3 + 3);
  *(&v72 + 7) = *(a3 + 31);
  v21 = *(a3 + 39);
  *(a3 + 2) = 0;
  *(a3 + 4) = 0;
  *(a3 + 3) = 0;
  *a3 = *a4;
  v22 = *(a4 + 4);
  a3[1] = a4[1];
  *(a3 + 4) = v22;
  *a4 = v68;
  *(a4 + 2) = v20;
  *(a4 + 3) = v72;
  *(a4 + 31) = *(&v72 + 7);
  *(a4 + 39) = v21;
  v23 = *a3 >= *a2;
  if (*a3 == *a2 && (v24 = *(a3 + 1), v25 = *(a2 + 1), v23 = v24 >= v25, v24 == v25))
  {
    v51 = *(a2 + 39);
    v52 = *(a3 + 39);
    if (v52 >= 0)
    {
      v53 = *(a3 + 39);
    }

    else
    {
      v53 = *(a3 + 3);
    }

    if (v52 >= 0)
    {
      v54 = a3 + 1;
    }

    else
    {
      v54 = *(a3 + 2);
    }

    if (v51 >= 0)
    {
      v55 = *(a2 + 39);
    }

    else
    {
      v55 = *(a2 + 3);
    }

    if (v51 >= 0)
    {
      v56 = a2 + 1;
    }

    else
    {
      v56 = *(a2 + 2);
    }

    if (v55 >= v53)
    {
      v57 = v53;
    }

    else
    {
      v57 = v55;
    }

    result = memcmp(v54, v56, v57);
    v58 = v53 < v55;
    if (result)
    {
      v58 = result < 0;
    }

    if (!v58)
    {
      return result;
    }
  }

  else if (v23)
  {
    return result;
  }

  v69 = *a2;
  v26 = *(a2 + 2);
  *&v73 = *(a2 + 3);
  *(&v73 + 7) = *(a2 + 31);
  v27 = *(a2 + 39);
  *(a2 + 2) = 0;
  *(a2 + 4) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v28 = *(a3 + 4);
  a2[1] = a3[1];
  *(a2 + 4) = v28;
  *a3 = v69;
  *(a3 + 2) = v26;
  *(a3 + 3) = v73;
  *(a3 + 31) = *(&v73 + 7);
  *(a3 + 39) = v27;
  v29 = *a2 >= *a1;
  if (*a2 != *a1 || (v30 = *(a2 + 1), v31 = *(a1 + 1), v29 = v30 >= v31, v30 != v31))
  {
    if (v29)
    {
      return result;
    }

    goto LABEL_13;
  }

  v59 = *(a1 + 39);
  v60 = *(a2 + 39);
  if (v60 >= 0)
  {
    v61 = *(a2 + 39);
  }

  else
  {
    v61 = *(a2 + 3);
  }

  if (v60 >= 0)
  {
    v62 = a2 + 1;
  }

  else
  {
    v62 = *(a2 + 2);
  }

  if (v59 >= 0)
  {
    v63 = *(a1 + 39);
  }

  else
  {
    v63 = *(a1 + 3);
  }

  if (v59 >= 0)
  {
    v64 = a1 + 1;
  }

  else
  {
    v64 = *(a1 + 2);
  }

  if (v63 >= v61)
  {
    v65 = v61;
  }

  else
  {
    v65 = v63;
  }

  result = memcmp(v62, v64, v65);
  v66 = v61 < v63;
  if (result)
  {
    v66 = result < 0;
  }

  if (v66)
  {
LABEL_13:
    v70 = *a1;
    v32 = *(a1 + 2);
    *&v74 = *(a1 + 3);
    *(&v74 + 7) = *(a1 + 31);
    v33 = *(a1 + 39);
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *(a1 + 2) = 0;
    *a1 = *a2;
    v34 = *(a2 + 4);
    a1[1] = a2[1];
    *(a1 + 4) = v34;
    *a2 = v70;
    *(a2 + 2) = v32;
    *(a2 + 3) = v74;
    *(a2 + 31) = *(&v74 + 7);
    *(a2 + 39) = v33;
  }

  return result;
}

BOOL sub_298B95C14(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v64[2] = *MEMORY[0x29EDCA608];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_298B94EDC(a1, (a1 + 40), a2 - 40);
        return 1;
      case 4:
        sub_298B95484(a1, (a1 + 40), (a1 + 80), (a2 - 40));
        return 1;
      case 5:
        sub_298B957D0(a1, (a1 + 40), (a1 + 80), (a1 + 120), (a2 - 40));
        return 1;
    }

    goto LABEL_14;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
LABEL_14:
    v15 = a1 + 80;
    sub_298B94EDC(a1, (a1 + 40), a1 + 80);
    v16 = a1 + 120;
    if (a1 + 120 == v2)
    {
      return 1;
    }

    v17 = 0;
    v18 = 0;
    v57 = v2;
LABEL_19:
    v21 = *v16 >= *v15;
    if (*v16 == *v15 && (v22 = *(v16 + 8), v23 = *(v15 + 8), v21 = v22 >= v23, v22 == v23))
    {
      v39 = *(v15 + 39);
      v40 = *(v16 + 39);
      if (v40 >= 0)
      {
        v41 = *(v16 + 39);
      }

      else
      {
        v41 = *(v16 + 24);
      }

      if (v40 >= 0)
      {
        v42 = (v16 + 16);
      }

      else
      {
        v42 = *(v16 + 16);
      }

      if (v39 >= 0)
      {
        v43 = *(v15 + 39);
      }

      else
      {
        v43 = *(v15 + 24);
      }

      if (v39 >= 0)
      {
        v44 = (v15 + 16);
      }

      else
      {
        v44 = *(v15 + 16);
      }

      if (v43 >= v41)
      {
        v45 = v41;
      }

      else
      {
        v45 = v43;
      }

      v46 = memcmp(v42, v44, v45);
      v47 = v41 < v43;
      if (v46)
      {
        v47 = v46 < 0;
      }

      if (!v47)
      {
        goto LABEL_18;
      }
    }

    else if (v21)
    {
      goto LABEL_18;
    }

    v58 = v18;
    v24 = *(v16 + 16);
    v61 = *v16;
    v25 = *v16;
    v63 = *(v16 + 32);
    v62 = v24;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    *v16 = *v15;
    v19 = v15 + 16;
    *(v16 + 32) = *(v15 + 32);
    *(v16 + 16) = *(v15 + 16);
    *(v15 + 39) = 0;
    *(v15 + 16) = 0;
    v59 = v17;
    while (1)
    {
      v27 = *(a1 + v17 + 40);
      v28 = v25 >= v27;
      if (v25 == v27 && (v29 = *(a1 + v17 + 48), v28 = *(&v61 + 1) >= v29, *(&v61 + 1) == v29))
      {
        v30 = a1 + v17;
        v31 = *(a1 + v17 + 79);
        if (v63 >= 0)
        {
          v32 = HIBYTE(v63);
        }

        else
        {
          v32 = *(&v62 + 1);
        }

        if (v63 >= 0)
        {
          v33 = &v62;
        }

        else
        {
          v33 = v62;
        }

        if (v31 >= 0)
        {
          v34 = *(a1 + v17 + 79);
        }

        else
        {
          v34 = *(a1 + v17 + 64);
        }

        if (v31 >= 0)
        {
          v35 = (a1 + v17 + 56);
        }

        else
        {
          v35 = *(a1 + v17 + 56);
        }

        if (v34 >= v32)
        {
          v36 = v32;
        }

        else
        {
          v36 = v34;
        }

        v37 = memcmp(v33, v35, v36);
        v38 = v32 < v34;
        if (v37)
        {
          v38 = v37 < 0;
        }

        if (!v38)
        {
          v19 = v30 + 96;
          v15 = v30 + 80;
LABEL_17:
          *v15 = v61;
          v17 = v59;
          v20 = v62;
          *(v19 + 16) = v63;
          *v19 = v20;
          v18 = v58 + 1;
          v2 = v57;
          if (v58 == 7)
          {
            return v16 + 40 == v57;
          }

LABEL_18:
          v15 = v16;
          v17 += 40;
          v16 += 40;
          if (v16 != v2)
          {
            goto LABEL_19;
          }

          return 1;
        }
      }

      else if (v28)
      {
        goto LABEL_17;
      }

      v19 = v15 - 24;
      v15 -= 40;
      *(a1 + v17 + 80) = *(a1 + v17 + 40);
      v26 = a1 + v17;
      *(v26 + 96) = *(a1 + v17 + 56);
      *(v26 + 112) = *(a1 + v17 + 72);
      *(v26 + 79) = 0;
      *(v26 + 56) = 0;
      v17 -= 40;
      if (v17 == -80)
      {
        v19 = a1 + 16;
        v15 = a1;
        goto LABEL_17;
      }
    }
  }

  v7 = (a2 - 40);
  v6 = *(a2 - 40);
  v8 = v6 >= *a1;
  if (v6 == *a1 && (v9 = *(a2 - 32), v10 = *(a1 + 8), v8 = v9 >= v10, v9 == v10))
  {
    v48 = *(a1 + 39);
    v49 = *(a2 - 1);
    if (v49 >= 0)
    {
      v50 = *(a2 - 1);
    }

    else
    {
      v50 = *(a2 - 16);
    }

    if (v49 >= 0)
    {
      v51 = (a2 - 24);
    }

    else
    {
      v51 = *(a2 - 24);
    }

    if (v48 >= 0)
    {
      v52 = *(a1 + 39);
    }

    else
    {
      v52 = *(a1 + 24);
    }

    if (v48 >= 0)
    {
      v53 = (a1 + 16);
    }

    else
    {
      v53 = *(a1 + 16);
    }

    if (v52 >= v50)
    {
      v54 = v50;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v51, v53, v54);
    v56 = v50 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      return 1;
    }
  }

  else if (v8)
  {
    return 1;
  }

  v60 = *a1;
  v11 = *(a1 + 16);
  v64[0] = *(a1 + 24);
  *(v64 + 7) = *(a1 + 31);
  v12 = *(a1 + 39);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = *v7;
  v13 = *(v2 - 8);
  *(a1 + 16) = *(v2 - 24);
  *(a1 + 32) = v13;
  *v7 = v60;
  v14 = v64[0];
  *(v2 - 24) = v11;
  *(v2 - 16) = v14;
  *(v2 - 9) = *(v64 + 7);
  result = 1;
  *(v2 - 1) = v12;
  return result;
}

std::recursive_mutex *sub_298B96124(std::recursive_mutex *result)
{
  if (result)
  {
    std::recursive_mutex::~recursive_mutex(result);

    JUMPOUT(0x29C2945F0);
  }

  return result;
}

_BYTE *sub_298B96164(_BYTE *result, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v34 = 0u;
  v35 = 0u;
  if (a5)
  {
    v5 = a5;
    v6 = a4;
    do
    {
      v7 = *v6++;
      *(&v34 + ((v7 >> 3) & 0x18)) |= 1 << v7;
      --v5;
    }

    while (v5);
  }

  if (a2)
  {
    v8 = 0;
    while (((*(&v34 + ((result[v8] >> 3) & 0x18)) >> result[v8]) & 1) != 0)
    {
      if (a2 == ++v8)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = -1;
  }

  v34 = 0u;
  v35 = 0u;
  if (a5)
  {
    v9 = a5;
    v10 = a4;
    do
    {
      v11 = *v10++;
      *(&v34 + ((v11 >> 3) & 0x18)) |= 1 << v11;
      --v9;
    }

    while (v9);
  }

  if (a2 <= v8)
  {
LABEL_16:
    v12 = -1;
  }

  else
  {
    v12 = v8;
    while (((*(&v34 + ((result[v12] >> 3) & 0x18)) >> result[v12]) & 1) == 0)
    {
      if (a2 == ++v12)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= v8)
  {
    v13 = v8;
  }

  else
  {
    v13 = a2;
  }

  if (v13 <= v12)
  {
    v8 = v12;
  }

  if (v8 >= a2)
  {
    v8 = a2;
  }

  v14 = v8 - v13;
  if (v8 != v13)
  {
    v15 = &result[v13];
    if (a2 >= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = a2;
    }

    v17 = &result[v16];
    v18 = a2 - v16;
    v19 = *(a3 + 8);
    v20 = 0uLL;
    do
    {
      if (v19 >= *(a3 + 12))
      {
        v31 = a3;
        v32 = a4;
        v33 = a5;
        result = sub_298B90A44(a3, (a3 + 16), v19 + 1, 16);
        v20 = 0uLL;
        a3 = v31;
        a4 = v32;
        a5 = v33;
        v19 = *(v31 + 8);
      }

      v24 = (*a3 + 16 * v19);
      *v24 = v15;
      v24[1] = v14;
      v19 = *(a3 + 8) + 1;
      *(a3 + 8) = v19;
      v34 = v20;
      v35 = v20;
      if (a5)
      {
        v25 = a5;
        v26 = a4;
        do
        {
          v27 = *v26++;
          *(&v34 + ((v27 >> 3) & 0x18)) |= 1 << v27;
          --v25;
        }

        while (v25);
      }

      if (v18)
      {
        v23 = 0;
        while (((*(&v34 + ((v17[v23] >> 3) & 0x18)) >> v17[v23]) & 1) != 0)
        {
          if (v18 == ++v23)
          {
            goto LABEL_49;
          }
        }
      }

      else
      {
LABEL_49:
        v23 = -1;
      }

      v34 = v20;
      v35 = v20;
      if (a5)
      {
        v28 = a5;
        v29 = a4;
        do
        {
          v30 = *v29++;
          *(&v34 + ((v30 >> 3) & 0x18)) |= 1 << v30;
          --v28;
        }

        while (v28);
      }

      v21 = v23;
      if (v18 <= v23)
      {
LABEL_29:
        v21 = -1;
      }

      else
      {
        while (((*(&v34 + ((v17[v21] >> 3) & 0x18)) >> v17[v21]) & 1) == 0)
        {
          if (v18 == ++v21)
          {
            goto LABEL_29;
          }
        }
      }

      if (v18 >= v23)
      {
        v22 = v23;
      }

      else
      {
        v22 = v18;
      }

      if (v22 <= v21)
      {
        v23 = v21;
      }

      if (v23 >= v18)
      {
        v23 = v18;
      }

      v15 = &v17[v22];
      if (v18 < v21)
      {
        v21 = v18;
      }

      v17 += v21;
      v18 -= v21;
      v14 = v23 - v22;
    }

    while (v23 != v22);
  }

  return result;
}

uint64_t sub_298B96440(uint64_t a1, void *__s1, size_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *a1;
  }

  else
  {
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    v18 = a1;
    v19 = __s1;
    v20 = a4;
    v21 = a3;
    v22 = sub_298B969E8(0x11uLL, 0xCuLL);
    __s1 = v19;
    a3 = v21;
    a4 = v20;
    v5 = v22;
    a1 = v18;
    v5[16] = 2;
    *v18 = v5;
    v4 = 16;
    *(v18 + 8) = 16;
  }

  v6 = v4 - 1;
  v7 = &v5[v4 + 1];
  if (a3)
  {
    v8 = 1;
    v9 = -1;
    v10 = a4;
    while (1)
    {
      v11 = v10 & v6;
      v12 = v5[v11];
      if (!v12)
      {
        break;
      }

      if (v12 == -8)
      {
        v25 = a1;
        v23 = __s1;
        v26 = a3;
        if (v9 == -1)
        {
          v9 = v11;
        }
      }

      else if (*(v7 + 4 * v11) == a4)
      {
        v23 = __s1;
        v24 = a4;
        if (a3 == *v12)
        {
          v25 = a1;
          v26 = a3;
          v27 = memcmp(__s1, v12 + *(a1 + 20), a3);
          a4 = v24;
          if (!v27)
          {
            return v11;
          }
        }

        else
        {
          v25 = a1;
          v26 = a3;
        }
      }

      else
      {
        v25 = a1;
        v23 = __s1;
        v26 = a3;
      }

      v10 = v8 + v11;
      ++v8;
      a3 = v26;
      __s1 = v23;
      a1 = v25;
    }
  }

  else
  {
    v15 = 1;
    v9 = -1;
    v16 = a4;
    while (1)
    {
      v11 = v16 & v6;
      v17 = v5[v11];
      if (!v17)
      {
        break;
      }

      if (v17 == -8)
      {
        if (v9 == -1)
        {
          v9 = v11;
        }
      }

      else if (*(v7 + 4 * v11) == a4 && !*v17)
      {
        return v11;
      }

      v16 = v15 + v11;
      ++v15;
    }
  }

  v13 = v9;
  if (v9 == -1)
  {
    v13 = v11;
    v11 = v11;
  }

  else
  {
    v11 = v9;
  }

  *(v7 + 4 * v13) = a4;
  return v11;
}

uint64_t sub_298B965F8(uint64_t *a1, const void *a2, size_t a3, unsigned int a4)
{
  v4 = *(a1 + 2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = a1;
  v6 = v4 - 1;
  result = (v4 - 1) & a4;
  v8 = *v5;
  v9 = *v5 + 8 * v4 + 8;
  if (a3)
  {
    v10 = 1;
    v11 = *(v8 + 8 * result);
    if (!v11)
    {
      return 0xFFFFFFFFLL;
    }

    while (1)
    {
      if (v11 != -8 && *(v9 + 4 * result) == a4 && a3 == *v11)
      {
        v22 = a2;
        v20 = result;
        v21 = a3;
        v19 = a4;
        v17 = v5;
        v18 = v9;
        v16 = v10;
        v14 = memcmp(a2, v11 + *(v5 + 5), a3);
        v10 = v16;
        v5 = v17;
        v9 = v18;
        a2 = v22;
        a3 = v21;
        v15 = v14;
        a4 = v19;
        result = v20;
        if (!v15)
        {
          break;
        }
      }

      LODWORD(result) = (result + v10++) & v6;
      v11 = *(v8 + 8 * result);
      if (!v11)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    v12 = 1;
    v13 = *(v8 + 8 * result);
    if (!v13)
    {
      return 0xFFFFFFFFLL;
    }

    while (v13 == -8 || *(v9 + 4 * result) != a4 || *v13)
    {
      result = (result + v12++) & v6;
      v13 = *(v8 + 8 * result);
      if (!v13)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

int32x2_t sub_298B9671C(uint64_t *a1, size_t *a2)
{
  v4 = *(a1 + 5);
  v5 = *a2;
  v6 = sub_298BA724C((a2 + v4), *a2);
  v8 = *(a1 + 2);
  if (v8)
  {
    v9 = v8 - 1;
    v10 = (v8 - 1) & v6;
    v11 = *a1;
    v12 = *a1 + 8 * v8 + 8;
    if (v5)
    {
      v13 = 1;
      v14 = *(v11 + 8 * v10);
      if (!v14)
      {
        return result;
      }

      while (1)
      {
        if (v14 != -8 && *(v12 + 4 * v10) == v6 && v5 == *v14)
        {
          v21 = v6;
          v22 = v10;
          v19 = v12;
          v20 = v13;
          v17 = memcmp(a2 + v4, v14 + *(a1 + 5), v5);
          v13 = v20;
          v12 = v19;
          v10 = v22;
          v18 = v17;
          v6 = v21;
          if (!v18)
          {
            break;
          }
        }

        v10 = (v10 + v13++) & v9;
        v14 = *(v11 + 8 * v10);
        if (!v14)
        {
          return result;
        }
      }

LABEL_12:
      *(v11 + 8 * v22) = -8;
      result = vadd_s32(*(a1 + 12), 0x1FFFFFFFFLL);
      *(a1 + 12) = result;
      return result;
    }

    v15 = 1;
    v16 = *(v11 + 8 * v10);
    if (v16)
    {
      while (v16 == -8 || *(v12 + 4 * v10) != v6 || *v16)
      {
        v10 = (v10 + v15++) & v9;
        v16 = *(v11 + 8 * v10);
        if (!v16)
        {
          return result;
        }
      }

      v22 = v10;
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_298B96888(_DWORD *a1, uint64_t a2)
{
  v4 = a1[2];
  v3 = a1[3];
  if (3 * v4 < 4 * v3)
  {
    v6 = a1;
    v4 *= 2;
  }

  else
  {
    if (v4 - (v3 + a1[4]) > v4 >> 3)
    {
      return a2;
    }

    v6 = a1;
  }

  v7 = malloc_type_calloc(v4 + 1, 0xCuLL, 0x17B874E6uLL);
  if (!v7)
  {
    if (v4 != -1)
    {
      sub_298B86A40("Allocation failed");
    }

    v7 = sub_298B90950(1uLL);
  }

  v8 = &v7[v4];
  *v8 = 2;
  v9 = v8 + 1;
  v10 = *v6;
  v11 = v6[2];
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 8 * v11 + 8;
    v14 = v4 - 1;
    v15 = a2;
    do
    {
      v16 = *(*v6 + 8 * v12);
      if (v16)
      {
        v17 = v16 == -8;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        v18 = *(v13 + 4 * v12);
        v19 = v18 & v14;
        if (v7[v19])
        {
          v20 = 1;
          do
          {
            v21 = v19 + v20++;
            v19 = v21 & v14;
          }

          while (v7[v19]);
        }

        v7[v19] = v16;
        *(v9 + v19) = v18;
        if (v12 == v15)
        {
          a2 = v19;
        }

        else
        {
          a2 = a2;
        }
      }

      ++v12;
    }

    while (v12 != v11);
    v22 = v6;
    v10 = *v6;
  }

  else
  {
    v22 = v6;
  }

  free(v10);
  *v22 = v7;
  v22[2] = v4;
  v22[4] = 0;
  return a2;
}

void *sub_298B969E8(size_t a1, size_t a2)
{
  result = malloc_type_calloc(a1, a2, 0x17B874E6uLL);
  if (!result)
  {
    if (a1 && a2)
    {
      sub_298B86A40("Allocation failed");
    }

    return sub_298B90950(1uLL);
  }

  return result;
}

uint64_t sub_298B96A54(uint64_t *a1, char *__s2, size_t __n, unint64_t a4)
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = a1[1];
  v6 = v5 - a4;
  if (v5 < a4)
  {
    return -1;
  }

  v7 = a4;
  if (!__n)
  {
    return v7;
  }

  if (v6 < __n)
  {
    return -1;
  }

  v9 = *a1;
  v10 = (*a1 + a4);
  v11 = __n - 1;
  if (__n == 1)
  {
    v12 = memchr(v10, *__s2, v6);
    if (v12)
    {
      return v12 - v9;
    }

    else
    {
      return -1;
    }
  }

  v14 = &v10[v6 - __n];
  if (__n == 2)
  {
    result = -1;
    while (*(v9 + v7) != *__s2)
    {
      ++v7;
      if (v9 + v7 - 1 >= v14)
      {
        return result;
      }
    }

    return v7;
  }

  if (__n > 0xFF || v6 <= 0xF)
  {
    while (memcmp((v9 + v7), __s2, __n))
    {
      ++v7;
      result = -1;
      if (v9 + v7 - 1 >= v14)
      {
        return result;
      }
    }

    return v7;
  }

  v15 = 0;
  v16 = vdupq_n_s8(__n);
  v17 = v14 + 1;
  v23[14] = v16;
  v23[15] = v16;
  v23[12] = v16;
  v23[13] = v16;
  v23[10] = v16;
  v23[11] = v16;
  v23[8] = v16;
  v23[9] = v16;
  v23[6] = v16;
  v23[7] = v16;
  v23[4] = v16;
  v23[5] = v16;
  v23[2] = v16;
  v23[3] = v16;
  v18 = v11;
  v23[0] = v16;
  v23[1] = v16;
  do
  {
    *(v23 + __s2[v15++]) = v18--;
  }

  while (v11 != v15);
  v19 = __s2[v11];
  while (1)
  {
    v20 = v10[v11];
    if (v20 == v19)
    {
      v21 = v10;
      v22 = memcmp(v10, __s2, v11);
      v10 = v21;
      if (!v22)
      {
        break;
      }
    }

    v10 += *(v23 + v20);
    if (v10 >= v17)
    {
      return -1;
    }
  }

  return &v21[-v9];
}

unint64_t sub_298B96C28(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) == 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

unint64_t sub_298B96CA8(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v7 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  v5 = a1[1];
  if (v5 <= a4)
  {
    return -1;
  }

  while (((*(&v7 + ((*(*a1 + a4) >> 3) & 0x18)) >> *(*a1 + a4)) & 1) != 0)
  {
    if (v5 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

unint64_t sub_298B96D28(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if (v8)
    {
      return v6;
    }
  }

  return -1;
}

unint64_t sub_298B96DB8(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  for (; a3; --a3)
  {
    v4 = *a2++;
    *(&v10 + ((v4 >> 3) & 0x18)) |= 1 << v4;
  }

  if (a1[1] >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a1[1];
  }

  while (v5)
  {
    v6 = v5 - 1;
    v7 = *(*a1 + v5 - 1);
    v8 = *(&v10 + ((v7 >> 3) & 0x18)) >> v7;
    v5 = v6;
    if ((v8 & 1) == 0)
    {
      return v6;
    }
  }

  return -1;
}

_OWORD *sub_298B96E48(_OWORD *result, uint64_t a2, char *__s2, size_t __n, int a5, char a6)
{
  v27 = *result;
  if (a5)
  {
    v8 = a5;
    v11 = *(&v27 + 1);
    if (a6)
    {
      do
      {
        result = sub_298B96A54(&v27, __s2, __n, 0);
        if (result == -1)
        {
          break;
        }

        v12 = v27;
        if (result >= v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = result;
        }

        v14 = *(a2 + 8);
        if (v14 >= *(a2 + 12))
        {
          v17 = result;
          sub_298B90A44(a2, (a2 + 16), v14 + 1, 16);
          result = v17;
          v14 = *(a2 + 8);
        }

        v15 = (*a2 + 16 * v14);
        *v15 = v12;
        v15[1] = v13;
        ++*(a2 + 8);
        v16 = result + __n;
        if (v11 < result + __n)
        {
          v16 = v11;
        }

        v11 -= v16;
        *&v27 = v12 + v16;
        *(&v27 + 1) = v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        result = sub_298B96A54(&v27, __s2, __n, 0);
        if (result == -1)
        {
          break;
        }

        v20 = v27;
        if (result)
        {
          if (result >= v11)
          {
            v21 = v11;
          }

          else
          {
            v21 = result;
          }

          v22 = *(a2 + 8);
          if (v22 >= *(a2 + 12))
          {
            v23 = result;
            sub_298B90A44(a2, (a2 + 16), v22 + 1, 16);
            result = v23;
            v22 = *(a2 + 8);
          }

          v18 = (*a2 + 16 * v22);
          *v18 = v20;
          v18[1] = v21;
          ++*(a2 + 8);
        }

        v19 = result + __n;
        if (v11 < result + __n)
        {
          v19 = v11;
        }

        v11 -= v19;
        *&v27 = v20 + v19;
        *(&v27 + 1) = v11;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    v11 = *(&v27 + 1);
  }

  if ((a6 & 1) != 0 || v11)
  {
    v24 = v27;
    v25 = *(a2 + 8);
    if (v25 >= *(a2 + 12))
    {
      result = sub_298B90A44(a2, (a2 + 16), v25 + 1, 16);
      LODWORD(v25) = *(a2 + 8);
    }

    v26 = (*a2 + 16 * v25);
    *v26 = v24;
    v26[1] = v11;
    ++*(a2 + 8);
  }

  return result;
}

char *sub_298B9702C(char *result, unsigned int *a2, uint64_t __c, int a4, uint64_t a5)
{
  v5 = *result;
  v6 = *(result + 1);
  if (!a4)
  {
LABEL_2:
    if ((a5 & 1) == 0 && !v6)
    {
      return result;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v7 = a5;
    v8 = a2;
    if (!v6)
    {
      break;
    }

    v9 = a4;
    v10 = __c;
    result = memchr(v5, __c, v6);
    if (!result)
    {
      a2 = v8;
      goto LABEL_16;
    }

    v11 = (result - v5);
    a2 = v8;
    if (result - v5 == -1)
    {
      goto LABEL_16;
    }

    a5 = v7;
    v12 = v9;
    __c = v10;
    if (result != v5 || v7)
    {
      if (v11 >= v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = (result - v5);
      }

      v17 = v8[2];
      if (v17 >= v8[3])
      {
        v20 = (result - v5);
        v21 = v16;
        result = sub_298B90A44(v8, v8 + 4, v17 + 1, 16);
        v11 = v20;
        v16 = v21;
        __c = v10;
        v12 = v9;
        a5 = v7;
        a2 = v8;
        v17 = v8[2];
      }

      v18 = (*a2 + 16 * v17);
      *v18 = v5;
      v18[1] = v16;
      ++a2[2];
    }

    if (v6 >= (v11 + 1))
    {
      v13 = (v11 + 1);
    }

    else
    {
      v13 = v6;
    }

    v5 += v13;
    v6 -= v13;
    a4 = v12 - 1;
    if (!a4)
    {
      goto LABEL_2;
    }
  }

  if (a5)
  {
    v6 = 0;
LABEL_16:
    v14 = a2[2];
    if (v14 >= a2[3])
    {
      v19 = a2;
      result = sub_298B90A44(a2, a2 + 4, v14 + 1, 16);
      a2 = v19;
      LODWORD(v14) = *(v19 + 8);
    }

    v15 = (*a2 + 16 * v14);
    *v15 = v5;
    v15[1] = v6;
    ++a2[2];
  }

  return result;
}

uint64_t sub_298B971A4(unsigned __int8 **a1, unsigned int a2, unint64_t *a3)
{
  if (!a2)
  {
    v13 = a1;
    v14 = a3;
    v15 = sub_298B97294(a1);
    a3 = v14;
    a2 = v15;
    a1 = v13;
  }

  v3 = a1[1];
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  v5 = *a1;
  *a3 = 0;
  v6 = v3;
  do
  {
    if (*v5 < 48)
    {
      break;
    }

    v7 = *v5;
    if (v7 >= 0x3A)
    {
      if (v7 < 0x61)
      {
        if (v7 - 65 > 0x19)
        {
          break;
        }

        v8 = -55;
      }

      else
      {
        if (v7 >= 0x7B)
        {
          break;
        }

        v8 = -87;
      }
    }

    else
    {
      v8 = -48;
    }

    v9 = v8 + v7;
    if (v9 >= a2)
    {
      break;
    }

    v10 = v4 * a2 + v9;
    *a3 = v10;
    if (v10 / a2 < v4)
    {
      return 1;
    }

    ++v5;
    v4 = v10;
    --v6;
  }

  while (v6);
  if (v3 == v6)
  {
    return 1;
  }

  v11 = 0;
  *a1 = v5;
  a1[1] = v6;
  return v11;
}

uint64_t sub_298B97294(unsigned __int8 **a1)
{
  if (!a1[1])
  {
    return 10;
  }

  if ((sub_298B974C8(a1, "0x", 2uLL) & 1) == 0)
  {
    v2 = 2;
    if (sub_298B974C8(a1, "0b", 2uLL))
    {
      return v2;
    }

    if (sub_298B8BD60(a1, "0o", 2uLL))
    {
      return 8;
    }

    v4 = *a1;
    if (**a1 == 48)
    {
      v5 = a1[1];
      if (v5 >= 2)
      {
        v7 = v4[1];
        v6 = v4 + 1;
        if ((v7 - 48) <= 9)
        {
          *a1 = v6;
          a1[1] = v5 - 1;
          return 8;
        }
      }
    }

    return 10;
  }

  return 16;
}

BOOL sub_298B97354(unsigned __int8 *a1, uint64_t a2, unsigned int a3, unint64_t *a4)
{
  if (a3)
  {
LABEL_2:
    if (a2)
    {
      goto LABEL_3;
    }

    return 1;
  }

  if (!a2)
  {
    return 1;
  }

  if (a2 == 1)
  {
    goto LABEL_24;
  }

  v12 = *a1;
  if ((v12 - 65) >= 0x1A)
  {
    v13 = *a1;
  }

  else
  {
    v13 = v12 + 32;
  }

  if (v13 == 48)
  {
    v14 = a1[1];
    if ((v14 - 65) < 0x1A)
    {
      v14 += 32;
    }

    if (v14 == 98)
    {
      a1 += 2;
      a2 -= 2;
      a3 = 2;
      goto LABEL_2;
    }

    if (v14 == 120)
    {
      a1 += 2;
      a2 -= 2;
      a3 = 16;
      goto LABEL_2;
    }
  }

  if (*a1 == 28464)
  {
    a1 += 2;
    a2 -= 2;
    a3 = 8;
    goto LABEL_2;
  }

  if (v12 != 48)
  {
LABEL_24:
    a3 = 10;
  }

  else
  {
    v15 = a1[1] - 48;
    if (v15 <= 9)
    {
      a3 = 8;
    }

    else
    {
      a3 = 10;
    }

    if (v15 <= 9)
    {
      ++a1;
      --a2;
    }
  }

LABEL_3:
  v4 = 0;
  *a4 = 0;
  v5 = a2;
  do
  {
    if (*a1 < 48)
    {
      break;
    }

    v6 = *a1;
    if (v6 >= 0x3A)
    {
      if (v6 < 0x61)
      {
        if (v6 - 65 > 0x19)
        {
          break;
        }

        v7 = -55;
      }

      else
      {
        if (v6 >= 0x7B)
        {
          break;
        }

        v7 = -87;
      }
    }

    else
    {
      v7 = -48;
    }

    v8 = v7 + v6;
    if (v8 >= a3)
    {
      break;
    }

    v9 = v4 * a3 + v8;
    *a4 = v9;
    if (v9 / a3 < v4)
    {
      return 1;
    }

    ++a1;
    v4 = v9;
    --v5;
  }

  while (v5);
  if (a2)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 0;
  }

  return !v10;
}

uint64_t sub_298B974C8(unsigned __int8 **a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a3;
  v5 = &v3[-a3];
  if (!v4)
  {
    return 0;
  }

  if (a3)
  {
    v7 = a3;
    v8 = *a1;
    do
    {
      v10 = *v8++;
      v9 = v10;
      v11 = v10 + 32;
      v4 = (v10 - 65) >= 0x1A;
      v13 = *a2++;
      v12 = v13;
      if (!v4)
      {
        v9 = v11;
      }

      if ((v12 - 65) < 0x1A)
      {
        v12 += 32;
      }

      if (v9 != v12)
      {
        return 0;
      }
    }

    while (--v7);
  }

  *a1 += a3;
  a1[1] = v5;
  return 1;
}

unint64_t sub_298B97534(void *a1, uint64_t a2)
{
  v4 = sub_298B97604();
  v5 = a2 - a1;
  if ((a2 - a1) > 0x40)
  {
    v10 = a2 - a1;
    v7 = v5 & 0xFFFFFFFFFFFFFFC0;
    sub_298B97684(a1, v4, v11);
    v8 = v7 - 64;
    if (v8)
    {
      v9 = a1 + 8;
      do
      {
        sub_298B3F664(v11, v9);
        v9 += 8;
        v8 -= 64;
      }

      while (v8);
    }

    if ((v10 & 0x3F) != 0)
    {
      sub_298B3F664(v11, (a2 - 64));
    }

    return sub_298B977AC(v11, v10);
  }

  else
  {

    return sub_298B40118(a1, v5, v4);
  }
}

uint64_t sub_298B97604()
{
  v0 = 0x2A13C2000uLL;
  if ((atomic_load_explicit(&qword_2A13C2B18, memory_order_acquire) & 1) == 0)
  {
    v2 = __cxa_guard_acquire(&qword_2A13C2B18);
    v0 = 0x2A13C2000uLL;
    if (v2)
    {
      v3 = qword_2A13C3658;
      if (!qword_2A13C3658)
      {
        v3 = 0xFF51AFD7ED558CCDLL;
      }

      qword_2A13C2B10 = v3;
      __cxa_guard_release(&qword_2A13C2B18);
      v0 = 0x2A13C2000;
    }
  }

  return *(v0 + 2832);
}

uint64_t sub_298B97684@<X0>(void *a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (a2 ^ 0xB492B66FBE98F273)) ^ ((0x9DDFEA08EB382D69 * (a2 ^ 0xB492B66FBE98F273)) >> 47) ^ 0xB492B66FBE98F273);
  v4 = v3 ^ (v3 >> 47);
  v5 = __ROR8__(a2 ^ 0xB492B66FBE98F273, 49);
  v6 = a2 ^ (a2 >> 47);
  v7 = 0x9DDFEA08EB382D69 * (a2 ^ (((0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a2))) ^ a2) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (0xB492B66FBE98F273 * a2))));
  v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
  v9 = v5 + a2;
  v11 = a1[6];
  v10 = a1[7];
  v12 = v5 - 0x4B6D499041670D8DLL * __ROR8__(v11 + a2 - 0x4B6D499041670D8DLL * a2, 42);
  v13 = a1[1];
  v14 = (0xB492B66FBE98F273 * __ROR8__(v9 + v13, 37)) ^ v8;
  v15 = v6 - 0x622015F714C7D297 * v4;
  v16 = *a1 - 0x6D8ED9027DD26057 * a2;
  v18 = a1[4];
  v17 = a1[5];
  v19 = v12 + v17;
  v20 = 0xB492B66FBE98F273 * __ROR8__(v15, 33);
  v21 = v16 + v6;
  v24 = a1 + 2;
  v22 = a1[2];
  v23 = v24[1];
  v25 = v16 + v13 + v22;
  v26 = v18 + v8 + v20;
  result = __ROR8__(v26 + v22 + v19 + v10, 21);
  v28 = v17 + v11 + v26;
  a3[6] = result + v26 + __ROR8__(v28, 44);
  a3[4] = __ROR8__(v21 + v23 + v14, 21) + v16 + __ROR8__(v25, 44);
  a3[5] = v28 + v10;
  a3[2] = v14;
  a3[3] = v25 + v23;
  *a3 = v20;
  a3[1] = v19;
  return result;
}

unint64_t sub_298B977AC(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * (a1[5] ^ ((0x9DDFEA08EB382D69 * (a1[5] ^ a1[3])) >> 47) ^ (0x9DDFEA08EB382D69 * (a1[5] ^ a1[3])));
  v3 = 0x9DDFEA08EB382D69 * (a1[6] ^ ((0x9DDFEA08EB382D69 * (a1[6] ^ a1[4])) >> 47) ^ (0x9DDFEA08EB382D69 * (a1[6] ^ a1[4])));
  v4 = *a1 - 0x4B6D499041670D8DLL * (a2 ^ (a2 >> 47)) - 0x622015F714C7D297 * (v3 ^ (v3 >> 47));
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (a1[2] - 0x4B6D499041670D8DLL * (a1[1] ^ (a1[1] >> 47)) - 0x622015F714C7D297 * (v2 ^ (v2 >> 47))));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
}

uint64_t sub_298B97844(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  *a1 = &unk_2A1F1DDA8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_298BAE700((a1 + 32));
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 850045863;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1018212795;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1018212795;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 288) = 1;
  *(a1 + 292) = a2;
  *(a1 + 300) = sub_298BB07F4(&v5);
  return a1;
}

_BYTE *sub_298B97910(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x29EDCA608];
  v4 = (a1 + 96);
  do
  {
    v59 = 0;
    v57 = 0;
    __lk.__m_ = v4;
    __lk.__owns_ = 1;
    std::mutex::lock(v4);
    if (*(a1 + 288) == 1)
    {
      if (a2)
      {
        while (!*(a1 + 88))
        {
          if (sub_298B97F1C(a1, a2))
          {
            goto LABEL_11;
          }

          std::condition_variable::wait((a1 + 160), &__lk);
          if ((*(a1 + 288) & 1) == 0)
          {
            goto LABEL_43;
          }
        }
      }

      else
      {
        while (!*(a1 + 88))
        {
          std::condition_variable::wait((a1 + 160), &__lk);
          if ((*(a1 + 288) & 1) == 0)
          {
            goto LABEL_43;
          }
        }
      }
    }

    else
    {
LABEL_43:
      if (!*(a1 + 88))
      {
LABEL_11:
        v5 = 0;
        v6 = 0;
        goto LABEL_12;
      }
    }

    ++*(a1 + 256);
    v29 = *(a1 + 80);
    v30 = *(*(a1 + 56) + 8 * (v29 / 0x66));
    v31 = v59;
    v59 = 0;
    if (v31 == v58)
    {
      (*(*v31 + 32))(v31);
    }

    else if (v31)
    {
      (*(*v31 + 40))(v31);
    }

    v32 = v30 + 40 * (v29 % 0x66);
    v33 = *(v32 + 24);
    if (v33)
    {
      if (v33 == v32)
      {
        v59 = v58;
        (*(**(v32 + 24) + 24))(*(v32 + 24), v58);
      }

      else
      {
        v59 = *(v32 + 24);
        *(v32 + 24) = 0;
      }
    }

    else
    {
      v59 = 0;
    }

    v34 = *(a1 + 80);
    v35 = *(*(a1 + 56) + 8 * (v34 / 0x66));
    v36 = v34 % 0x66;
    v5 = *(v35 + 40 * v36 + 32);
    v57 = v5;
    if (v5)
    {
      v37 = *(a1 + 280);
      if (v37)
      {
        v38 = *(a1 + 264);
        v39 = v37 - 1;
        v40 = v39 & ((v5 >> 4) ^ (v5 >> 9));
        v41 = (v38 + 16 * v40);
        v42 = *v41;
        if (v5 == *v41)
        {
LABEL_53:
          ++*(v41 + 2);
          goto LABEL_54;
        }

        v49 = 0;
        v50 = 1;
        while (v42 != -4096)
        {
          if (v49)
          {
            v52 = 0;
          }

          else
          {
            v52 = v42 == -8192;
          }

          if (v52)
          {
            v49 = v41;
          }

          v53 = v40 + v50++;
          v40 = v53 & v39;
          v41 = (v38 + 16 * v40);
          v42 = *v41;
          if (v5 == *v41)
          {
            goto LABEL_53;
          }
        }

        if (v49)
        {
          v46 = v49;
        }

        else
        {
          v46 = v41;
        }
      }

      else
      {
        v46 = 0;
      }

      v41 = sub_298B995E4(a1 + 264, &v57, v46);
      *v41 = v5;
      *(v41 + 2) = 0;
      v47 = *(a1 + 80);
      v48 = v47 / 0x66;
      v36 = v47 % 0x66;
      v35 = *(*(a1 + 56) + 8 * v48);
      goto LABEL_53;
    }

LABEL_54:
    v43 = v35 + 40 * v36;
    v44 = *(v43 + 24);
    if (v44 == v43)
    {
      (*(*v44 + 32))(v44);
    }

    else if (v44)
    {
      (*(*v44 + 40))(v44);
    }

    v45 = vaddq_s64(*(a1 + 80), xmmword_298D1ABB0);
    *(a1 + 80) = v45;
    if (v45.i64[0] >= 0xCCuLL)
    {
      operator delete(**(a1 + 56));
      *(a1 + 56) += 8;
      *(a1 + 80) -= 102;
    }

    v6 = 1;
LABEL_12:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (v6)
    {
      if (!v59)
      {
        sub_298AE761C();
        goto LABEL_40;
      }

      (*(*v59 + 48))(v59);
      std::mutex::lock(v4);
      v8 = *(a1 + 256) - 1;
      *(a1 + 256) = v8;
      if (!v5)
      {
        if (v8)
        {
          goto LABEL_23;
        }

LABEL_40:
        v27 = *(a1 + 88);
        std::mutex::unlock(v4);
        if (v27)
        {
          goto LABEL_15;
        }

        v28 = (a1 + 208);
LABEL_42:
        std::condition_variable::notify_all(v28);
        goto LABEL_15;
      }

      v9 = *(a1 + 264);
      v10 = *(a1 + 280);
      v11 = v5 >> 4;
      if (v10)
      {
        LODWORD(v12) = (v10 - 1) & (v11 ^ (v5 >> 9));
        v13 = (v9 + 16 * v12);
        v14 = *v13;
        if (*v13 == v5)
        {
LABEL_27:
          v15 = *(v13 + 2) - 1;
          *(v13 + 2) = v15;
          if (!v15)
          {
            *v13 = -8192;
            *(a1 + 272) = vadd_s32(*(a1 + 272), 0x1FFFFFFFFLL);
            v9 = *(a1 + 264);
          }

          if (v10)
          {
            v16 = v10 - 1;
            v17 = v16 & (v11 ^ (v5 >> 9));
            v18 = *(v9 + 16 * v17);
            if (v18 == v5)
            {
LABEL_23:
              std::mutex::unlock(v4);
              goto LABEL_15;
            }

            v19 = 1;
            while (v18 != -4096)
            {
              v54 = v17 + v19++;
              v17 = v54 & v16;
              v18 = *(v9 + 16 * v17);
              if (v18 == v5)
              {
                goto LABEL_23;
              }
            }
          }

          v20 = *(a1 + 56);
          if (*(a1 + 64) != v20)
          {
            v21 = *(a1 + 80);
            v22 = (v20 + 8 * (v21 / 0x66));
            v23 = *v22;
            v24 = *v22 + 40 * (v21 % 0x66);
            v25 = *(v20 + 8 * ((*(a1 + 88) + v21) / 0x66)) + 40 * ((*(a1 + 88) + v21) % 0x66);
            while (v24 != v25)
            {
              if (*(v24 + 32) == v5)
              {
                goto LABEL_23;
              }

              v24 += 40;
              if (v24 - v23 == 4080)
              {
                v26 = v22[1];
                ++v22;
                v23 = v26;
                v24 = v26;
              }
            }
          }

          std::mutex::unlock(v4);
          std::condition_variable::notify_all((a1 + 208));
          v28 = (a1 + 160);
          goto LABEL_42;
        }

        v51 = 1;
        while (v14 != -4096)
        {
          v55 = v12 + v51++;
          v12 = v55 & (v10 - 1);
          v14 = *(v9 + 16 * v12);
          if (v14 == v5)
          {
            v13 = (v9 + 16 * v12);
            goto LABEL_27;
          }
        }
      }

      v13 = (v9 + 16 * v10);
      goto LABEL_27;
    }

LABEL_15:
    result = v59;
    if (v59 == v58)
    {
      result = (*(*v59 + 32))(v59);
    }

    else if (v59)
    {
      result = (*(*v59 + 40))();
    }
  }

  while ((v6 & 1) != 0);
  return result;
}

BOOL sub_298B97F1C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if (!*(a1 + 256))
    {
      return *(a1 + 88) == 0;
    }

    return 0;
  }

  v2 = *(a1 + 280);
  if (v2)
  {
    v3 = *(a1 + 264);
    v4 = v2 - 1;
    v5 = (v2 - 1) & ((a2 >> 4) ^ (a2 >> 9));
    v6 = *(v3 + 16 * v5);
    if (v6 == a2)
    {
      return 0;
    }

    v9 = 1;
    while (v6 != -4096)
    {
      v7 = 0;
      v19 = v5 + v9++;
      v5 = v19 & v4;
      v6 = *(v3 + 16 * v5);
      if (v6 == a2)
      {
        return v7;
      }
    }
  }

  v10 = *(a1 + 56);
  if (*(a1 + 64) == v10)
  {
    return 1;
  }

  v11 = *(a1 + 80);
  v12 = (v10 + 8 * (v11 / 0x66));
  v13 = *v12;
  v14 = *v12 + 40 * (v11 % 0x66);
  v15 = *(v10 + 8 * ((*(a1 + 88) + v11) / 0x66)) + 40 * ((*(a1 + 88) + v11) % 0x66);
  if (v14 == v15)
  {
    return 1;
  }

  do
  {
    v16 = *(v14 + 32);
    v17 = v16 == a2;
    v7 = v16 != a2;
    if (v17)
    {
      break;
    }

    v14 += 40;
    if (v14 - v13 == 4080)
    {
      v18 = v12[1];
      ++v12;
      v13 = v18;
      v14 = v18;
    }
  }

  while (v14 != v15);
  return v7;
}

uint64_t sub_298B9803C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 == result)
  {
    v2 = result;
    (*(*v1 + 32))(*(result + 24));
  }

  else
  {
    if (!v1)
    {
      return result;
    }

    v2 = result;
    (*(*v1 + 40))(*(result + 24));
  }

  return v2;
}

void sub_298B980C8(uint64_t a1)
{
  v2.__m_ = (a1 + 96);
  v2.__owns_ = 1;
  std::mutex::lock((a1 + 96));
  while (*(a1 + 256) || *(a1 + 88))
  {
    std::condition_variable::wait((a1 + 208), &v2);
  }

  if (v2.__owns_)
  {
    std::mutex::unlock(v2.__m_);
  }
}

void sub_298B98138(uint64_t a1, uint64_t a2)
{
  pthread_rwlock_rdlock(*(a1 + 32));
  v4 = pthread_self();
  for (i = *(a1 + 8); i != *(a1 + 16); ++i)
  {
    if (v4 == *i)
    {
      pthread_rwlock_unlock(*(a1 + 32));

      sub_298B97910(a1, a2);
      return;
    }
  }

  pthread_rwlock_unlock(*(a1 + 32));
  v6.__m_ = (a1 + 96);
  v6.__owns_ = 1;
  std::mutex::lock((a1 + 96));
  if (sub_298B97F1C(a1, a2))
  {
    goto LABEL_11;
  }

  do
  {
    std::condition_variable::wait((a1 + 208), &v6);
  }

  while (!sub_298B97F1C(a1, a2));
  if (v6.__owns_)
  {
LABEL_11:
    std::mutex::unlock(v6.__m_);
  }
}

uint64_t sub_298B98218(uint64_t a1)
{
  *a1 = &unk_2A1F1DDA8;
  std::mutex::lock((a1 + 96));
  *(a1 + 288) = 0;
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_all((a1 + 160));
  pthread_rwlock_rdlock(*(a1 + 32));
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  while (v2 != v3)
  {
    sub_298BB0A98(*v2);
    *v2++ = 0;
  }

  pthread_rwlock_unlock(*(a1 + 32));
  MEMORY[0x29C2945E0](*(a1 + 264), 8);
  std::condition_variable::~condition_variable((a1 + 208));
  std::condition_variable::~condition_variable((a1 + 160));
  std::mutex::~mutex((a1 + 96));
  sub_298B98D00((a1 + 48));
  sub_298BAE768((a1 + 32));
  sub_298B98CAC((a1 + 8));
  return a1;
}

void sub_298B982F4(uint64_t a1)
{
  sub_298B98218(a1);

  JUMPOUT(0x29C2945F0);
}

uint64_t sub_298B9832C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      *(result + 24) = result;
      v3 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24), result);
      return v3;
    }

    else
    {
      *(result + 24) = v2;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

uint64_t sub_298B983AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 96));
  v6 = *(a2 + 24);
  if (v6)
  {
    if (v6 == a2)
    {
      v17 = &v16;
      (*(*v6 + 24))(v6, &v16);
    }

    else
    {
      v17 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = a3;
  sub_298B98588((a1 + 48), &v16);
  if (v17 == &v16)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))();
  }

  v7 = *(a1 + 256);
  v8 = *(a1 + 88);
  std::mutex::unlock((a1 + 96));
  std::condition_variable::notify_one((a1 + 160));
  pthread_rwlock_wrlock(*(a1 + 32));
  v9 = *(a1 + 16);
  v10 = v9 - *(a1 + 8);
  v11 = *(a1 + 300);
  if (v11 > v10 >> 3)
  {
    v12 = v11 >= v7 + v8 ? v7 + v8 : *(a1 + 300);
    v13 = v10 >> 3;
    if (v12 > v13)
    {
      *&v16 = a1;
      DWORD2(v16) = v13;
      v14 = (a1 + 8);
      if (v9 < *(a1 + 24))
      {
        sub_298B98F3C(v14, &v16);
      }

      sub_298B98FD8(v14, &v16);
    }
  }

  return pthread_rwlock_unlock(*(a1 + 32));
}

uint64_t sub_298B98588(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = 102 * ((v3 - v2) >> 3) - 1;
  if (v3 == v2)
  {
    v4 = 0;
  }

  if (v4 == a1[5] + a1[4])
  {
    v15 = a1;
    v16 = a2;
    sub_298B98700(a1);
    a2 = v16;
    a1 = v15;
    v2 = v15[1];
    v3 = v15[2];
  }

  if (v3 == v2)
  {
    v6 = 0;
  }

  else
  {
    v5 = a1[5] + a1[4];
    v6 = *(v2 + 8 * (v5 / 0x66)) + 40 * (v5 % 0x66);
  }

  v7 = *(a2 + 24);
  if (v7)
  {
    if (v7 == a2)
    {
      *(v6 + 24) = v6;
      v17 = a1;
      v18 = a2;
      (*(**(a2 + 24) + 24))(*(a2 + 24), v6);
      a2 = v18;
      a1 = v17;
      v2 = v17[1];
      v3 = v17[2];
    }

    else
    {
      *(v6 + 24) = v7;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(v6 + 24) = 0;
  }

  *(v6 + 32) = *(a2 + 32);
  v8 = a1[4];
  v9 = a1[5] + 1;
  a1[5] = v9;
  v10 = v8 + v9;
  v11 = (v2 + 8 * (v10 / 0x66));
  v12 = *v11 + 40 * (v10 % 0x66);
  if (v3 == v2)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  if (v13 == *v11)
  {
    v13 = *(v11 - 1) + 4080;
  }

  return v13 - 40;
}

void sub_298B98700(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] >= v7)
    {
      if (v6 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7 >> 2;
      }

      v10 = a1;
      sub_298AEF838(v8);
    }

    if (v6 != v5)
    {
      operator new();
    }

    operator new();
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_298B98844(a1, &v9);
}

void sub_298B98844(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_298AEF838(v11);
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
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_298B989B8(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_298AEF838(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_298B98B38(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_298AEF838(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_298B98CAC(char **a1)
{
  v2 = *a1;
  if (v2)
  {
    for (i = a1[1]; i != v2; i -= 8)
    {
      if (*(i - 1))
      {
        std::terminate();
      }
    }

    a1[1] = v2;

    operator delete(v2);
  }
}

uint64_t sub_298B98D00(void *a1)
{
  sub_298B98D58(a1);
  v2 = a1[1];
  v3 = a1[2];
  while (v2 != v3)
  {
    v4 = *v2++;
    operator delete(v4);
  }

  return sub_298B98EE0(a1);
}

void sub_298B98D58(void *a1)
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
    v8 = a1[4];
    v9 = &v2[v8 / 0x66];
    v10 = *v9 + 40 * (v8 % 0x66);
    v11 = v2[(a1[5] + v8) / 0x66] + 40 * ((a1[5] + v8) % 0x66);
    if (v10 != v11)
    {
      do
      {
        sub_298B98E80(v10);
        v10 += 40;
        if (v10 - *v9 == 4080)
        {
          v12 = v9[1];
          ++v9;
          v10 = v12;
        }
      }

      while (v10 != v11);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v5 = v3 - v2;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v2);
      v6 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v5 = (v6 - v2) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 51;
  }

  else
  {
    if (v5 != 2)
    {
      return;
    }

    v7 = 102;
  }

  a1[4] = v7;
}

uint64_t sub_298B98E80(uint64_t a1)
{
  result = *(a1 + 24);
  if (result == a1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_298B98EE0(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    *(result + 16) = v1 + ((v2 - v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*result)
  {
    v3 = result;
    operator delete(*result);
    return v3;
  }

  return result;
}

void sub_298B98FD8(void *a1, _OWORD *a2)
{
  v2 = (a1[1] - *a1) >> 3;
  v3 = v2 + 1;
  if (!((v2 + 1) >> 61))
  {
    v4 = a1[2] - *a1;
    if (v4 >> 2 > v3)
    {
      v3 = v4 >> 2;
    }

    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      v5 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = v3;
    }

    if (v5)
    {
      sub_298B9947C(a1, v5);
    }

    sub_298B990A8((8 * v2), a2);
  }

  sub_298ADDDA0();
}

uint64_t sub_298B9914C(uint64_t *a1)
{
  v2 = *a1;
  v4[0] = "llvm-worker-{0}";
  v4[1] = 15;
  v4[2] = &v6;
  v4[3] = 1;
  v5[0] = &unk_2A1F1DDE8;
  v5[1] = a1 + 1;
  v6 = v5;
  v7 = v4;
  v8 = 263;
  sub_298BB0AC8(&v7);
  sub_298B97910(v2, 0);
  MEMORY[0x29C2945F0](a1, 0x1020C403A5D3213);
  return 0;
}

uint64_t sub_298B99218(unsigned int *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v12 = a3;
  v13 = a4;
  v11 = 0;
  if (sub_298B8BC44(&v12, &v11))
  {
    v10 = sub_298B9932C(&v12, v11, 0);
    return sub_298B8F608(a2, *a1, v11, v10, 1);
  }

  if (v13)
  {
    v6 = 0;
    v7 = *v12;
    if (v7 <= 0x63)
    {
      if (v7 != 68)
      {
        if (v7 != 78)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

LABEL_11:
      v6 = 0;
      ++v12;
      goto LABEL_12;
    }

    if (v7 == 100)
    {
      goto LABEL_11;
    }

    if (v7 == 110)
    {
LABEL_10:
      ++v12;
      v6 = 1;
LABEL_12:
      --v13;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_13:
  v14 = 0;
  if (sub_298B971A4(&v12, 0xAu, &v14))
  {
    v8 = 0;
  }

  else
  {
    v8 = v14;
  }

  return sub_298B8F428(a2, *a1, v8, v6);
}

unint64_t sub_298B9932C(char **a1, int a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = 0;
    v5 = *a1;
    v6 = &v3[*a1];
    v7 = a1[1];
    while (*v5 >= 48)
    {
      v8 = *v5;
      if (v8 >= 0x3A)
      {
        if (v8 < 0x61)
        {
          if (v8 - 65 > 0x19)
          {
            break;
          }

          v9 = -55;
        }

        else
        {
          if (v8 >= 0x7B)
          {
            break;
          }

          v9 = -87;
        }
      }

      else
      {
        v9 = -48;
      }

      v10 = v9 + v8;
      if (v10 > 9)
      {
        break;
      }

      v11 = 10 * v4 + v10;
      if (v4 > v11 / 0xA)
      {
        goto LABEL_18;
      }

      ++v5;
      v4 = v11;
      if (!--v7)
      {
        goto LABEL_16;
      }
    }

    v11 = v4;
    v6 = v5;
LABEL_16:
    if (v3 != v7)
    {
      *a1 = v6;
      a1[1] = v7;
      a3 = v11;
    }
  }

LABEL_18:
  if ((a2 & 0xFFFFFFFE) == 2)
  {
    return a3 + 2;
  }

  else
  {
    return a3;
  }
}

uint64_t *sub_298B993F8(uint64_t **a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v8 = (v4 + v5 - v6);
  result = sub_298B994B8(v5, v6, v8);
  a2[1] = v8;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = a1[1];
  a1[1] = a2[2];
  a2[2] = v11;
  v12 = a1[2];
  a1[2] = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

void sub_298B9947C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {

    operator new();
  }

  sub_298ADDDA0();
}

uint64_t *sub_298B994B8(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *v3;
      *v3++ = 0;
      *a3++ = v4;
    }

    while (v3 != a2);
    do
    {
      if (*result)
      {
        std::terminate();
      }

      ++result;
    }

    while (result != a2);
  }

  return result;
}

uint64_t sub_298B99508(uint64_t result)
{
  v1 = *(result + 8);
  for (i = (*(result + 16) - 8); i + 1 != v1; --i)
  {
    *(result + 16) = i;
    if (*i)
    {
      std::terminate();
    }
  }

  if (*result)
  {
    v4 = result;
    operator delete(*result);
    return v4;
  }

  return result;
}

uint64_t sub_298B99564(uint64_t result, int a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a2 - 1;
    v5 = ((a3 >> 4) ^ (a3 >> 9)) & (a2 - 1);
    v6 = (result + 16 * v5);
    v7 = *v6;
    if (*v6 != a3)
    {
      v8 = 0;
      v9 = 1;
      while (v7 != -4096)
      {
        if (v8)
        {
          v10 = 0;
        }

        else
        {
          v10 = v7 == -8192;
        }

        if (v10)
        {
          v8 = v6;
        }

        v11 = v5 + v9++;
        v5 = v11 & v4;
        v6 = (result + 16 * (v11 & v4));
        v7 = *v6;
        if (*v6 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v8)
      {
        v6 = v8;
      }
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_3:
  *a4 = v6;
  return result;
}